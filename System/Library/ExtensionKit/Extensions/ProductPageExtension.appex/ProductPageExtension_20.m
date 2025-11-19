uint64_t sub_100248B84(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10076C45C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_100948BA0);
  v39 = a2;
  result = sub_1007715BC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10024E518(&qword_10094D268, &type metadata accessor for BadgeType);
      result = sub_10076FEAC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100248F60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100761D3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_10094E840);
  v39 = a2;
  result = sub_1007715BC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10024E518(&qword_10094D270, &type metadata accessor for AdPlacementType);
      result = sub_10076FEAC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v44;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100249340(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_10094E838);
  v34 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      result = sub_1007717AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002495E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948CC8);
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_10077174C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10024984C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_100948CC0);
  v45 = a2;
  result = sub_1007715BC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    v48 = v16;
    v49 = v8;
    v20 = v6;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v28 = v25 | (v12 << 6);
      v29 = *(v9 + 48);
      v47 = *(v20 + 72);
      v30 = v29 + v47 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v48);
      }

      else
      {
        (*v43)(v49, v30, v48);
      }

      v31 = (*(v9 + 56) + 16 * v28);
      v33 = *v31;
      v32 = v31[1];
      sub_10024E518(&qword_10094E860, &type metadata accessor for IndexPath);
      result = sub_10076FEAC();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v22 = v44;
        v23 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v22 = v44;
      v23 = v49;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v46)(*(v11 + 48) + v47 * v21, v23, v48);
      v24 = (*(v11 + 56) + 16 * v21);
      *v24 = v33;
      v24[1] = v32;
      ++*(v11 + 16);
      v20 = v22;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100249C2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948B40);
  v33 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v33 & 1) == 0)
      {

        v23 = v22;
      }

      sub_10076C02C();
      sub_10024E518(&qword_10094E848, &type metadata accessor for Artwork);
      result = sub_10076FEAC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v32;
      v12 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100249F0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948D18);
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_10077174C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_10024A170(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_100610120(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_100246C88(v18, a4 & 1);
      result = sub_100610120(a2, a3, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_10024BE78();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v24 = v23[6] + 24 * result;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v24 + 16) = a5;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

_OWORD *sub_10024A2F4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006113DC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10024BFEC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100246F60(v13, a3 & 1);
    v8 = sub_1006113DC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1007716DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000CD74(v19);

    return sub_10000CD64(a1, v19);
  }

  else
  {
    sub_10024B674(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_10024A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100561E0C(a3, a4);
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
      sub_1002475F0(v18, a5 & 1);
      v13 = sub_100561E0C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10024C3F0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10024A5D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10060FEFC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100247B50(v13, a3 & 1);
      v18 = sub_10060FEFC(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_10024C6D0();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_10008C3EC(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_10024A768(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100561E0C(a1, a2);
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
      sub_1002480CC(v16, a3 & 1);
      result = sub_100561E0C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10024CA1C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10024A8C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10060FF40(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10024CB84();
      goto LABEL_7;
    }

    sub_100248370(v13, a3 & 1);
    v24 = sub_10060FF40(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10076F7FC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10024B770(v10, a2, a1, v16);
}

unint64_t sub_10024AA40(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_10060FF40(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1002486BC(v16, a3 & 1, a4);
      result = sub_10060FF40(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1007716DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10024CF58(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_10024ABC4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_10060FF40(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_8:
    v21 = *v6;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_10024D0B8(a4);
    result = v19;
    goto LABEL_8;
  }

  sub_100248924(v16, a3 & 1, a4);
  result = sub_10060FF40(a2);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1007716DC();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_10024AD30(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100561E0C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10024C878();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100247E14(v16, a4 & 1);
    v11 = sub_100561E0C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1007716DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000CD74(v22);

    return sub_10000CD64(a1, v22);
  }

  else
  {
    sub_10024B81C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10024AE80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076C45C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1006108B4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10024D204();
      goto LABEL_7;
    }

    sub_100248B84(v17, a3 & 1);
    v22 = sub_1006108B4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10024B888(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10024B04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_100761D3C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_100610988(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10024D484();
      goto LABEL_9;
    }

    sub_100248F60(v18, a4 & 1);
    v21 = sub_100610988(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_10024B940(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_10024B230(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076B96C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1006101C8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_10024C16C();
    goto LABEL_7;
  }

  sub_100247230(result, a3 & 1);
  result = sub_1006101C8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10024BA00(v14, v11, a1 & 1, v20);
}

uint64_t sub_10024B3D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1006103E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100249C2C(v14, a3 & 1);
      v9 = sub_1006103E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10076C02C();
        v9 = sub_1007716DC();
        __break(1u);
        return _objc_release_x1(v9, v21);
      }
    }

    else
    {
      v17 = v9;
      sub_10024DC48();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return _objc_release_x1(v9, v21);
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

unint64_t sub_10024B540(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10060FF40(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_10024DDA8();
    result = v19;
    goto LABEL_8;
  }

  sub_100249F0C(v16, a2 & 1);
  result = sub_10060FF40(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

_OWORD *sub_10024B674(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000CD64(a3, (a4[7] + 32 * a1));
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

unint64_t sub_10024B6DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_10024B72C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10024B770(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_10076F7FC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_10024B81C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000CD64(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10024B888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10076C45C();
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

uint64_t sub_10024B940(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_100761D3C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_10024BA00(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10076B96C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

unint64_t sub_10024BAB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_10024BB00()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E870);
  v2 = *v0;
  v3 = sub_1007715AC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_10024BC64()
{
  v1 = v0;
  v2 = type metadata accessor for Accessory();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_10094E880);
  v5 = *v0;
  v6 = sub_1007715AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_10024DFF0(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1000366F4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
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

        v1 = v23;
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

void *sub_10024BE78()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E850);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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

id sub_10024BFEC()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E800);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        sub_10000CD08(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000CD64(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_10024C16C()
{
  v1 = v0;
  v31 = sub_10076B96C();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E818);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10024C3F0()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094E810);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024C568()
{
  v1 = v0;
  sub_10000A5D4(&unk_100948B30);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024C6D0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B50);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        sub_10008C3EC(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

void *sub_10024C878()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948BC8);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        sub_10000CD08(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000CD64(v25, (*(v4 + 56) + v22));
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

void *sub_10024CA1C()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E8A0);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024CB84()
{
  v1 = v0;
  v29 = sub_10076F7FC();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E830);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10024CDEC()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B60);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024CF58(uint64_t *a1)
{
  v2 = v1;
  sub_10000A5D4(a1);
  v3 = *v1;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_10024D0B8(uint64_t *a1)
{
  v2 = v1;
  sub_10000A5D4(a1);
  v3 = *v1;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

char *sub_10024D204()
{
  v1 = v0;
  v33 = sub_10076C45C();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100948BA0);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10024D484()
{
  v1 = v0;
  v28 = sub_100761D3C();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E840);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v30;
        v20 = *(v30 + 72) * v18;
        v21 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v20, v28);
        v18 *= 16;
        v23 = v29;
        v24 = *(v29 + 48);
        v25 = *(v19 + 32);
        v32 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v32;

        v13 = v31;
      }

      while (v31);
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

        v1 = v26[0];
        v5 = v29;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10024D714()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094E838);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024D884()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948CC8);
  v2 = *v0;
  v3 = sub_1007715AC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10024D9D0()
{
  v1 = v0;
  v30 = sub_10075E11C();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100948CC0);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; *(*(v22 + 56) + v17) = v33)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      result = v24(v23 + v19, v20, v21);
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10024DC48()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B40);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void *sub_10024DDA8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948D18);
  v2 = *v0;
  v3 = sub_1007715AC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10024DEF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024DF30()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10024DFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10024DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10024E054(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_10077043C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DB7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_10077044C();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_100016F40(0, &qword_1009641D0);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = sub_100770F1C();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t sub_10024E394()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024E3CC()
{
  v1 = sub_10075DB7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10024E470(uint64_t a1)
{
  v3 = *(sub_10075DB7C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100245648(a1, v4);
}

uint64_t sub_10024E518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CappedSizeDynamicTypeButton()
{
  result = qword_10094E8B8;
  if (!qword_10094E8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024E618(void *a1)
{
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_10094E8B0];
  *&v1[qword_10094E8B0] = a1;
  v21 = v10;
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19 = a1;
    goto LABEL_14;
  }

  v11 = sub_10076FF9C();
  v13 = v12;
  if (v11 != sub_10076FF9C() || v13 != v14)
  {
    v16 = sub_10077167C();
    v17 = a1;

    if (v16)
    {

      v18 = v21;

      return;
    }

LABEL_14:
    sub_10076310C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1000276DC(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1007630FC();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v9, v6);
    }

    return;
  }
}

uint64_t sub_10024E8CC()
{
  v1 = *(v0 + qword_10094E8B0);
  if (v1)
  {
    sub_10076313C();
    v2 = sub_10076314C();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_10077085C();
    if (v4)
    {
      sub_10000A5D4(&unk_100942870);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100785D70;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10017FF5C();
      isa = sub_1007701AC().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_10076313C();
  v11 = sub_10076314C();

  return v11();
}

id sub_10024EA74(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10094E8B0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10024EB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10024EB54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = sub_10076F7FC();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_10088E228;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  sub_1007708FC();
  v40 = sub_10076FF6C();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    sub_10076F96C();
    sub_10000CFBC(v46, &unk_1009434C0);
    sub_100770B9C();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_10000A5D4(&unk_100945BF0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100784500;
    *(v44 + 32) = sub_10076E59C();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = sub_10076E88C();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10024F120()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = sub_1007706FC();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_10024F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_10075E11C();
    v9 = v8;
    isa = sub_1007701AC().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_10075E11C();
  v12 = v11;
  v13 = sub_1007701AC().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_10024F498(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10024F4F4();
    }
  }
}

void sub_10024F4F4()
{
  if (*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_100251FD8;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_10009AEDC;
    v9 = &unk_10088E328;
    v4 = _Block_copy(&v6);

    v10 = sub_100251FE0;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_1000513F0;
    v9 = &unk_10088E350;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_10024F6EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10024F77C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout);

    v2[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout);

    [v5 invalidateLayout];
  }
}

void sub_10024F848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_10076F7FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1002508C8(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_100016E2C(a3, v9, &qword_1009492E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10000CFBC(v9, &qword_1009492E0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    sub_1007660EC();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10076AEDC();
  swift_allocObject();
  v18 = v17;
  v19 = sub_10076AE7C();
  v20 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    sub_10076AEAC();

    if (*&v4[v20])
    {

      sub_10076AE9C();
    }
  }

  sub_10076813C();
  swift_allocObject();

  v21 = sub_10076814C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24.super.super.super.isa = v23;
      isa = v24.super.super.super.isa;
      sub_10076811C(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView()
{
  result = qword_10094E980;
  if (!qword_10094E980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024FC8C()
{
  sub_10024FD5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10024FD5C()
{
  if (!qword_10094E990)
  {
    sub_10076F7FC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094E990);
    }
  }
}

id sub_10024FF24(void *a1)
{
  type metadata accessor for GuidedSearchTokenCell();
  sub_1007708FC();
  v2 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:isa];

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v4 = v4;
    sub_10025004C(v13);
    v7 = v14;
    if (v14)
    {
      v9 = v13[1];
      v8 = v13[2];
      v10 = v13[0];
      v11 = v15;

      sub_100660BD0(v10, v9, v8, v7, v11 & 1);

      return v6;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_10025004C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens;
  v4 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens) + 16);
  result = sub_10075E07C();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (result < 0 || result >= v4)
  {
    goto LABEL_6;
  }

  result = sub_10075E07C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + v3);
    if (result < *(v11 + 16))
    {
      v12 = v11 + 40 * result;
      v7 = *(v12 + 32);
      v8 = *(v12 + 40);
      v9 = *(v12 + 48);
      v10 = *(v12 + 56);
      v6 = *(v12 + 64);

LABEL_6:
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10025062C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100250674(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1002506C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v4 = 0;
LABEL_2:
  v5 = 40 * v4;
  while (1)
  {
    if (v2 == v4)
    {

      v15 = _swiftEmptyArrayStorage[2];

      return v15;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = v5 + 40;
    v7 = *(v1 + v5 + 64);
    v5 += 40;
    if (v7)
    {
      v9 = *(v1 + v6 - 8);
      v8 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v10 = *(v1 + v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1004BBC68(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1004BBC68((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      *(v14 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100250818(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_10077167C() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

uint64_t sub_1002508C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100250938(uint64_t a1, void *a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1006620E4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, v10);
  v32 = *(a1 + 32);
  sub_10005312C();
  v14 = qword_100941458;
  v28 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A3190);
  sub_100770B2C();
  v16 = sub_10076C04C();
  v30 = v16;
  v31 = sub_10004C7BC();
  v17 = sub_10000DB7C(v29);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_10076C90C();
  sub_10000CD74(v29);
  sub_10076993C();
  sub_10076994C();
  (*(v9 + 8))(v12, v8);
  sub_10000CF78(v29, v30);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100770AAC();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  v20 = [a2 traitCollection];
  v21 = sub_1006623E4();

  if (v32 == 1)
  {
    [v21 size];
    v23 = v22;

    v24 = v23 + 5.0;
  }

  else
  {

    v24 = 0.0;
  }

  v25 = v19 + v24;
  sub_10000CD74(v29);
  return v25;
}

id sub_100250D04(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_100250D60(int64_t a1, unsigned __int8 *a2)
{
  v68 = sub_10000A5D4(&qword_10094E9A8);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v64 - v4;
  v74 = sub_10075E11C();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v64 - v7;
  __chkstk_darwin(v8);
  v78 = &v64 - v9;
  v10 = sub_10000A5D4(&qword_10094E9B0);
  __chkstk_darwin(v10);
  v81 = &v64 - v11;
  v75 = sub_10000A5D4(&qword_10094E9B8);
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v64 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v80 = v13;
  v76 = a1;
  v77 = a2;
  if (v13)
  {
    v86[0] = _swiftEmptyArrayStorage;
    sub_1004BBB24(0, v13, 0);
    v14 = v86[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v86[0] = v14;
      v19 = v14[2];
      v18 = v14[3];

      if (v19 >= v18 >> 1)
      {
        sub_1004BBB24((v18 > 1), v19 + 1, 1);
        v14 = v86[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v77;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v64 = v21;
  if (v21)
  {
    v86[0] = _swiftEmptyArrayStorage;
    sub_1004BBB24(0, v21, 0);
    v22 = v86[0];
    v23 = (a2 + 56);
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v86[0] = v22;
      v28 = v22[2];
      v27 = v22[3];

      if (v28 >= v27 >> 1)
      {
        sub_1004BBB24((v27 > 1), v28 + 1, 1);
        v22 = v86[0];
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v26;
      v29[5] = v25;
      v23 += 5;
      --v24;
    }

    while (v24);
  }

  v86[0] = v22;
  v86[4] = v14;
  sub_10000A5D4(&unk_10094BB60);
  sub_100071820(&qword_100943480, &unk_10094BB60);
  v30 = v69;
  sub_10076FEEC();

  v31 = v81;
  (*(v70 + 16))(v81, v30, v75);
  v32 = *(v10 + 36);
  sub_100071820(&qword_10094E9C0, &qword_10094E9B8);
  sub_1007703DC();
  sub_10077040C();
  if (*(v31 + v32) == v86[0])
  {
    v72 = _swiftEmptyArrayStorage;
    v85 = _swiftEmptyArrayStorage;
  }

  else
  {
    v79 = (v82 + 32);
    v85 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = sub_10077042C();
        v56 = *(v55 + 33);
        v83 = *(v55 + 16);
        DebugMenuPage.debugSettingsProviders.getter();
        v54(v86, 0);
        sub_10077041C();
        if (v56 == 1)
        {
          break;
        }

        sub_10075E08C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_10049DE8C(0, v85[2] + 1, 1, v85);
        }

        v58 = v85[2];
        v57 = v85[3];
        if (v58 >= v57 >> 1)
        {
          v85 = sub_10049DE8C(v57 > 1, v58 + 1, 1, v85);
        }

        sub_100251FF0();
        v59 = v84;
        v60 = v85;
        v85[2] = v58 + 1;
        (*(v82 + 32))(v60 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v58, v59, v74);
        v31 = v81;
        sub_10077040C();
        if (*(v31 + v32) == v86[0])
        {
          goto LABEL_14;
        }
      }

      sub_10075E08C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_10049DE8C(0, v72[2] + 1, 1, v72);
      }

      v62 = v72[2];
      v61 = v72[3];
      if (v62 >= v61 >> 1)
      {
        v72 = sub_10049DE8C(v61 > 1, v62 + 1, 1, v72);
      }

      sub_100251FF0();
      v63 = v72;
      v72[2] = v62 + 1;
      (*(v82 + 32))(v63 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, v78, v74);
      v31 = v81;
      sub_10077040C();
    }

    while (*(v31 + v32) != v86[0]);
  }

LABEL_14:
  result = sub_10000CFBC(v31, &qword_10094E9B0);
  v34 = v80;
  if (!v80)
  {
    v73 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v70 + 8))(v69, v75);
    return v72;
  }

  v35 = 0;
  v78 = (v76 + 32);
  v65 = (v82 + 32);
  v77 += 64;
  v73 = _swiftEmptyArrayStorage;
  v76 = v64 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v84 = v35 + 1;
      v36 = v77;
      v79 = v35;
      v37 = &v78[40 * v35];
      v38 = *(v37 + 1);
      v81 = *v37;
      v83 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v82) = v37[32];
      v41 = v76;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = sub_10077167C();
        if (result)
        {
          v49 = v83;
          if (v83)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v83;
      if (!v83)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v81;
      if (v81 == v42 && v49 == v43 || (result = sub_10077167C(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = sub_10077167C(), (result & 1) != 0))
        {
          if (v82 == v46)
          {
LABEL_17:
            v35 = v84;
            v34 = v80;
            if (v84 == v80)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      sub_10075E08C();
      v50 = v71 + *(v68 + 48);
      (*v65)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_10049DE68(0, v73[2] + 1, 1, v73);
      }

      v34 = v80;
      v35 = v84;
      v52 = v73[2];
      v51 = v73[3];
      if (v52 >= v51 >> 1)
      {
        v73 = sub_10049DE68(v51 > 1, v52 + 1, 1, v73);
      }

      v53 = v73;
      v73[2] = v52 + 1;
      result = sub_100023AD0(v71, v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52, &qword_10094E9A8);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_1002517E4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094E9A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v54 - v12;
  v65 = v2;

  v13 = sub_100250D60(v55, a1);
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = a1;
    v62 = (v5 + 32);
    v63 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
    v58 = (v5 + 8);

    v18 = 0;
    v60 = v10;
    v61 = v16;
    v59 = v17;
    while (1)
    {
      v19 = v64;
      if (v18 == v17)
      {
        v20 = sub_10000A5D4(&qword_10094E9A8);
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v66 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v21 = v4;
        v22 = v16;
        v23 = v18;
        v24 = sub_10000A5D4(&qword_10094E9A8);
        v25 = *(v24 - 8);
        sub_100016E2C(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v10, &qword_10094E9A8);
        v66 = v23 + 1;
        v16 = v22;
        v4 = v21;
        (*(v25 + 56))(v10, 0, 1, v24);
      }

      sub_100023AD0(v10, v19, &qword_10094E9A0);
      v26 = sub_10000A5D4(&qword_10094E9A8);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {

        a1 = v54;
        break;
      }

      v27 = v19 + *(v26 + 48);
      v28 = *v27;
      v29 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = v19;
      v34 = v4;
      (*v62)(v7, v33, v4);
      v35 = *&v65[v63];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = v35;
      isa = sub_10075E02C().super.isa;
      v38 = [v36 cellForItemAtIndexPath:isa];

      if (v38)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_100660BD0(v28, v29, v31, v30, v32);
        }

        v4 = v34;
        (*v58)(v7, v34);
      }

      else
      {
        v4 = v34;
        (*v58)(v7, v34);
      }

      v10 = v60;
      v16 = v61;
      v17 = v59;
      v18 = v66;
    }
  }

  v39 = *(v57 + 16);
  if (v39)
  {
    v40 = *&v65[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
    if (!v40)
    {
      goto LABEL_26;
    }

    v41 = v40;
    [v41 contentOffset];
    [v41 setContentOffset:0 animated:?];

    *(*&v65[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v42 = *&v65[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = v39 != 0;
  v44 = v42;

  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v65;
  v45[3] = a1;
  v47 = v56;
  v45[4] = v57;
  v45[5] = v16;
  v45[6] = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_100251F24;
  *(v48 + 24) = v45;
  v71 = sub_1000349FC;
  v72 = v48;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1001C5148;
  v70 = &unk_10088E288;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v51;
  v71 = sub_100251FCC;
  v72 = v52;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000513F0;
  v70 = &unk_10088E300;
  v53 = _Block_copy(&aBlock);

  [v44 performBatchUpdates:v49 completion:v53];
  _Block_release(v53);
  _Block_release(v49);
}

uint64_t sub_100251ECC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100251F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100251F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100251F94()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100251FF8()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = sub_10076F7FC();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002520F8(void *a1)
{
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_10076F7FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_100016E2C(v1 + v10, v5, &qword_1009492E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_10000CFBC(v5, &qword_1009492E0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v1 + v12))
    {
      swift_endAccess();

      [a1 frame];
      sub_10076613C();

      result = (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      result = swift_endAccess();
    }
  }

  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    sub_10076AEBC();
  }

  return result;
}

uint64_t sub_100252388()
{
  v0 = sub_10076D65C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13[-1] - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-1] - v8;
  sub_10076D63C();
  sub_10076D63C();

  sub_10076D64C();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v13[3] = v0;
  v13[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v13);
  sub_10076D64C();
  v10(v6, v0);

  sub_10076D64C();

  v10(v9, v0);
  return sub_10000CD74(v13);
}

uint64_t sub_100252594(uint64_t a1, uint64_t a2)
{
  sub_100181E98(a2 + 16, v4);
  sub_10003F19C(v4, v3);
  return sub_10076D5BC();
}

uint64_t sub_1002525DC()
{
  sub_100181F4C(v0 + 16);
  sub_10000CD74(v0 + 64);
  sub_10000CD74(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_100252648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100252690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100252720(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_100252798(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_100252828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1002528F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100252994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v3, ObjectType, v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100252A64()
{
  v1 = v0;
  v2 = sub_100764E9C();
  if (*(v2 + 16) && (v3 = sub_100610638(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions) = v5;

  sub_100254E0C(v7, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    sub_100252C34();
  }
}

void (*sub_100252B30(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10025567C;
}

void sub_100252C34()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094EAF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  sub_10076E79C();

  v17[0] = 0xD000000000000030;
  v17[1] = 0x80000001007CD030;
  v9._rawValue = sub_10076E5DC();
  sub_10076E5BC(v9);

  v10 = *&v1[v6];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_10076E76C();

  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset + 16])
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentOffset:{v14, v13}];

    (*(v3 + 8))(v5, v2);
    *v12 = 0.0;
    v12[1] = 0.0;
    *(v12 + 16) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100252E24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000A5D4(&qword_10094EAF8);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  v37 = sub_10000A5D4(&qword_10094EB00);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v35 - v9;
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewDidLoad", v8);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  [v12 setBackgroundColor:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v13 systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_100945920);
  sub_10075F8BC();
  sub_10077058C();
  if (![v0 collectionView])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v36;
  v18 = v37;
  (*(v5 + 16))(v36, v10, v37);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, v19, v18);
  v22 = objc_allocWithZone(sub_10000A5D4(&qword_10094EB08));
  v23 = sub_10076E72C();
  (*(v5 + 8))(v10, v18);
  v24 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource] = v23;

  sub_10025587C(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option);
  sub_10076E62C();
  v26._rawValue = &off_100883170;
  v27 = v38;
  sub_10076E5CC(v26);
  sub_10075F8CC();
  aBlock = 0;
  v40 = 0;
  sub_10076E5AC();

  v28 = *&v1[v24];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  sub_10076E76C();

  (*(v35 + 8))(v4, v27);
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v43 = sub_1002533E4;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1002BAFEC;
    v42 = &unk_10088E4C0;
    v33 = _Block_copy(&aBlock);
    v34 = [v32 initWithSectionProvider:v33];
    _Block_release(v33);

    [v31 setCollectionViewLayout:v34];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1002533E4()
{
  v0 = sub_10076E81C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E87C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0, v6);
  sub_10076E84C();
  sub_100016F40(0, &unk_1009632E0);
  v9 = sub_10077097C();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_100253588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v5 - 8);
  v27 = v26 - v6;
  v7 = sub_10076E26C();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E23C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076E58C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076E55C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v26[2] = a1;
    sub_10075F8AC();
    sub_10076E56C();
    v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions];

    v21 = sub_10069315C(a3, v20);

    if (v21)
    {
      sub_10000A5D4(&qword_100945930);
      v22 = *(sub_10076E32C() - 8);
      v26[1] = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
      v23 = sub_10076E24C();
      (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
      sub_10076E25C();
      sub_10076E31C();
      (*(v28 + 8))(v9, v29);
      (*(v11 + 8))(v13, v10);
    }

    sub_10077093C();
  }

  v30[3] = v14;
  v30[4] = &protocol witness table for UIListContentConfiguration;
  v24 = sub_10000DB7C(v30);
  (*(v15 + 16))(v24, v17, v14);
  sub_1007707FC();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1002539C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_100946838);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10075F8BC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100016F40(0, &qword_100945920);
  v9 = sub_1007705AC();
  sub_1002556A0(v6);
  return v9;
}

void sub_100253B08(void *a1, uint64_t a2)
{
  v124 = a1;
  v4 = sub_10076F08C();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v119 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_10076F0CC();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_10075E11C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v7;
  v112 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_10076F0EC();
  v116 = *(v125 - 8);
  __chkstk_darwin(v125);
  v110 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v115 = &v91[-v10];
  v11 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v11 - 8);
  v97 = &v91[-v12];
  v99 = sub_10076E26C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_10076E23C();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10075F7DC();
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v105 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v106 = &v91[-v18];
  __chkstk_darwin(v19);
  v123 = &v91[-v20];
  __chkstk_darwin(v21);
  v126 = &v91[-v22];
  __chkstk_darwin(v23);
  v25 = &v91[-v24];
  __chkstk_darwin(v26);
  v28 = &v91[-v27];
  v29 = sub_10000A5D4(&qword_100946838);
  __chkstk_darwin(v29 - 8);
  v31 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v91[-v33];
  v35 = sub_10075F8BC();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v127 = &v91[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource);
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v2;
  v40 = v38;
  v109 = a2;
  sub_10076E74C();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1002556A0(v34);
    return;
  }

  v107 = v36;
  v41 = *(v36 + 32);
  v108 = v35;
  v41(v127, v34, v35);
  v103 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet;
  sub_10075F7EC();
  v42 = *(v128 + 104);
  v92 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v102 = v128 + 104;
  v101 = v42;
  v42(v25);
  v43 = sub_10025587C(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_10077018C();
  v100 = v43;
  sub_10077018C();
  if (aBlock == v135 && v130 == v136)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_10077167C();
  }

  v45 = v128 + 8;
  v46 = *(v128 + 8);
  v46(v25, v15);
  v128 = v45;
  v104 = v46;
  v46(v28, v15);

  if ((v44 & 1) != 0 || (v47 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions), , v48 = sub_10069315C(v127, v47), , (v48 & 1) == 0))
  {
    v50 = v124;
    [v124 contentOffset];
    v52 = v39 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset;
    *v52 = v53;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    v55 = v107;
    v56 = v108;
    (*(v107 + 16))(v31, v127, v108);
    v57 = *(v55 + 56);
    v49 = 1;
    v57(v31, 0, 1, v56);
    sub_100764F0C();
    sub_1002556A0(v31);
    v51 = v123;
  }

  else
  {
    v49 = 0;
    v51 = v123;
    v50 = v124;
  }

  sub_10075F7EC();
  v101(v51, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v15);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v135 && v130 == v136)
  {
    v58 = v51;
    v59 = v104;
    v104(v58, v15);
    v60 = v126;
LABEL_15:
    v59(v60, v15);

    goto LABEL_17;
  }

  v61 = sub_10077167C();
  v62 = v104;
  v104(v51, v15);
  v62(v126, v15);

  if (v61)
  {
    goto LABEL_17;
  }

  v67 = v106;
  sub_10075F7EC();
  v68 = v105;
  v101(v105, v92, v15);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v135 && v130 == v136)
  {
    v69 = v68;
    v59 = v104;
    v104(v69, v15);
    v60 = v67;
    goto LABEL_15;
  }

  v70 = sub_10077167C();
  v71 = v104;
  v104(v68, v15);
  v71(v67, v15);

  if (v70)
  {
LABEL_17:
    v63 = v109;
    if (v49)
    {
      isa = sub_10075E02C().super.isa;
      v65 = [v50 cellForItemAtIndexPath:isa];

      if (v65)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v66 = *(sub_10077092C() + 16);

          if (!v66)
          {
            sub_10000A5D4(&qword_100945930);
            v72 = *(sub_10076E32C() - 8);
            v128 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            *(swift_allocObject() + 16) = xmmword_100783DD0;
            v73 = v94;
            v74 = v93;
            v75 = v96;
            (*(v94 + 104))(v93, enum case for UICellAccessory.DisplayedState.always(_:), v96);
            v76 = sub_10076E24C();
            (*(*(v76 - 8) + 56))(v97, 1, 1, v76);
            v77 = v95;
            sub_10076E25C();
            sub_10076E31C();
            (*(v98 + 8))(v77, v99);
            (*(v73 + 8))(v74, v75);
          }

          sub_10077093C();
        }
      }
    }

    sub_100016F40(0, &qword_1009471F0);
    v78 = sub_10077068C();
    v79 = v110;
    sub_10076F0DC();
    v80 = v115;
    sub_10076F15C();
    v128 = *(v116 + 8);
    (v128)(v79, v125);
    v81 = v113;
    v82 = v112;
    v83 = v114;
    (*(v113 + 16))(v112, v63, v114);
    v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v50;
    (*(v81 + 32))(v85 + v84, v82, v83);
    v133 = sub_1002557CC;
    v134 = v85;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_10009AEDC;
    v132 = &unk_10088E470;
    v86 = _Block_copy(&aBlock);
    v87 = v50;

    v88 = v117;
    sub_10076F0AC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10025587C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    v89 = v119;
    v90 = v122;
    sub_1007712CC();
    sub_10077064C();
    _Block_release(v86);

    (*(v121 + 8))(v89, v90);
    (*(v118 + 8))(v88, v120);
    (v128)(v80, v125);
  }

  (*(v107 + 8))(v127, v108);
}

uint64_t type metadata accessor for PageFacetOptionsViewController()
{
  result = qword_10094EAE8;
  if (!qword_10094EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254D44()
{
  result = sub_10075F8DC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100254E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075F8BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_10025587C(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option);
        v26 = sub_10076FEAC();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_10025587C(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option);
          v31 = sub_10076FF1C();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_1002551BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&qword_100964180);
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource] = 0;
  v12 = &v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet;
  v14 = sub_10075F8DC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facetsPresenter] = a2;

  v16 = sub_100764ECC();
  if (*(v16 + 16) && (v17 = sub_100610638(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions] = v19;
  v20 = [objc_allocWithZone(UICollectionViewLayout) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCollectionViewLayout:", v20, ObjectType);

  if (a3)
  {
    v22 = [v21 navigationItem];
    sub_100016F40(0, &qword_100958FF0);
    sub_100016F40(0, &qword_1009641D0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32.value.super.super.isa = sub_100770F1C();
    v32.is_nil = 0;
    isa = sub_10077054C(UIBarButtonSystemItemDone, v32, v33).super.super.isa;
    [v22 setRightBarButtonItem:isa];
  }

  v24 = [v21 navigationItem];
  sub_10075F86C();
  v25 = sub_10076FF6C();

  [v24 setTitle:v25];

  sub_100764EEC();
  sub_10000A5D4(&unk_10094F4A0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0);
  sub_10076F45C();
  sub_10076F46C();

  (*(v15 + 8))(a1, v14);
  sub_10000CD74(v30);
  (*(v28 + 8))(v11, v29);
  return v21;
}

uint64_t sub_100255604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100255644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002556A0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100946838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100255708()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002557CC()
{
  sub_10075E11C();
  v1 = *(v0 + 16);
  isa = sub_10075E02C().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_100255864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10025587C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002558CC()
{
  v1 = sub_10000A5D4(&qword_10094EB00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100255960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A5D4(&qword_10094EB00);

  return sub_1002539C0(a1, a2, a3);
}

uint64_t sub_1002559FC()
{
  v0 = sub_10000A5D4(&unk_10094CE80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094EB28);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  sub_10076F42C();

  if (qword_10093FBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_10094EB10);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  sub_10076F72C();
  sub_10076F41C();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  sub_10076F30C();
  sub_1000258C0(&v8);
  sub_10076FBCC();
}

uint64_t sub_100255CE8()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10094EB10);
  sub_10000A61C(v4, qword_10094EB10);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_100255E3C()
{
  v0 = sub_10000A5D4(&unk_10094CE80);
  sub_10000DB18(v0, qword_10094EB28);
  sub_10000A61C(v0, qword_10094EB28);
  return sub_10076F54C();
}

uint64_t sub_100255EB4()
{
  if (sub_1007690BC())
  {
    if (qword_10093FBD0 == -1)
    {
LABEL_3:
      v0 = sub_10076FD4C();
      sub_10000A61C(v0, qword_10094EB10);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v1 = sub_10000A5D4(&unk_10094CE80);
  sub_10000A61C(v1, qword_10094EB28);
  sub_10076F41C();

  if (v11 != 1 && v10 > 0 || (sub_10076134C() & 1) == 0)
  {
    if (qword_10093FBD0 != -1)
    {
      swift_once();
    }

    v5 = sub_10076FD4C();
    sub_10000A61C(v5, qword_10094EB10);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    sub_10076F72C();
    sub_10076F41C();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    sub_10076F30C();
    sub_1000258C0(&v10);
    sub_10076FBCC();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_10093FBD0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_10093FBD0 != -1)
      {
        swift_once();
      }

      v8 = sub_10076FD4C();
      sub_10000A61C(v8, qword_10094EB10);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = sub_1007612CC() & 1;
      sub_10076F30C();
      sub_1000258C0(&v10);
      sub_10076FBCC();

      v4 = sub_1007612CC();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_10093FBD0 == -1)
        {
LABEL_31:
          v9 = sub_10076FD4C();
          sub_10000A61C(v9, qword_10094EB10);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBCC();

          sub_1002559FC();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_10093FBD0 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_10093FBD0 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

Swift::Int sub_100256858()
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_1002568B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FA5C();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1002568FC()
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_100256950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FA5C();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1002569A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002569EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100256A4C()
{
  result = qword_10094EB40;
  if (!qword_10094EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB40);
  }

  return result;
}

unint64_t sub_100256AA4()
{
  result = qword_10094EB48;
  if (!qword_10094EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB48);
  }

  return result;
}

uint64_t sub_100256B08(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016F40(0, &qword_1009453B0);
  v4 = v3;
  sub_10000A5D4(&qword_1009435B8);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000CF78(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000CD74(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000CFBC(&v9, &unk_1009435C0);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100256C0C(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016F40(0, &qword_1009453B0);
  v4 = v3;
  sub_10000A5D4(&qword_1009435A8);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000CF78(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000CD74(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000CFBC(&v9, &qword_1009435B0);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100256D18(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_100766EDC();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v26 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;

  sub_10076B87C();
  sub_10012062C(a1, v32, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10000CFBC(v12, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v12, v19);
  }

  sub_10005C684(v19, v16);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10005DB58(v19, type metadata accessor for FlowDestination);
    v21 = 1;
  }

  else
  {
    sub_10075F5BC();
    sub_10075F5AC();
    sub_1001489F0(v29);
    v23 = v27;
    v22 = v28;
    (*(v28 + 104))(v27, enum case for FlowPresentationContext.select(_:), v3);
    sub_100258A60();
    sub_10077018C();
    sub_10077018C();
    if (v32[0] == v30 && v32[1] == v31)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_10077167C();
    }

    v24 = *(v22 + 8);
    v24(v23, v3);
    v24(v29, v3);
    sub_10005DB58(v9, type metadata accessor for FlowPresentationHints);
    sub_10005DB58(v19, type metadata accessor for FlowDestination);
  }

  sub_10005DB58(v16, type metadata accessor for FlowDestination);
  return v21 & 1;
}

void sub_100257164(void *a1)
{
  v2 = sub_10000A5D4(&qword_10095D440);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_100760EFC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 tabBar];
  v17 = [v16 items];

  if (!v17)
  {
    return;
  }

  v26 = v4;
  sub_100016F40(0, &unk_100960200);
  v18 = sub_1007701BC();

  if ((sub_1007701EC() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == sub_10075D75C()))
  {

    return;
  }

  v20 = [a1 selectedIndex];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = sub_10077149C();
  v21 = v9;
LABEL_11:

  [v22 tag];

  sub_100760ECC();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &qword_10094B168);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    sub_100761FAC();
    sub_100761F8C();
    sub_100760EAC();
    sub_100761EFC();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    sub_10075F2CC();
    sub_10072EB44(v24);

    sub_10075F45C();
    sub_10076F63C();
    v25 = v27;
    if (v27)
    {
      sub_10075F43C();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_100257584(uint64_t a1, void *a2, uint64_t a3)
{
  v140 = sub_10000A5D4(&qword_10094EB50);
  __chkstk_darwin(v140);
  v143 = &v125 - v6;
  v142 = sub_100765F6C();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v138 = &v125 - v9;
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v12 - 8);
  v130 = &v125 - v13;
  v131 = sub_100760EFC();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v126 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v125 - v16;
  v17 = sub_10076F50C();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v146 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v19 - 8);
  v128 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v125 - v22;
  v23 = sub_100766EDC();
  v149 = *(v23 - 8);
  __chkstk_darwin(v23);
  v154 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v25);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v28 - 8);
  v136 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v125 - v31;
  v153 = type metadata accessor for FlowDestination();
  v33 = *(v153 - 8);
  __chkstk_darwin(v153);
  v137 = (&v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = (&v125 - v36);
  __chkstk_darwin(v38);
  v40 = &v125 - v39;
  objc_opt_self();
  v155 = swift_dynamicCastObjCClass();
  v152 = a2;
  if (v155)
  {
    v41 = a2;
  }

  else
  {
    v155 = [a2 tabBarController];
    if (!v155)
    {
      sub_10000A5D4(&qword_100942C70);
      sub_1002589CC();
      swift_allocError();
      return sub_10076FC7C();
    }
  }

  v144 = a3;
  sub_10000A5D4(&qword_100942C70);
  v145 = sub_10076FCEC();

  sub_10076B87C();
  sub_10012062C(a1, v157, v32);
  v42 = *(v33 + 48);
  v43 = v153;
  v44 = v42(v32, 1, v153);
  v135 = v33 + 48;
  v134 = v42;
  if (v44 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v45 = v42(v32, 1, v43);
    v46 = v23;
    if (v45 != 1)
    {
      sub_10000CFBC(v32, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v32, v40);
    v46 = v23;
  }

  sub_10075F5BC();
  sub_10075F5AC();
  v47 = [v152 traitCollection];
  sub_1001489F0(v154);

  v48 = [v155 viewControllers];
  v49 = v150;
  v151 = v46;
  if (v48)
  {
    v50 = v48;
    v51 = v27;
    sub_100016F40(0, &qword_1009453B0);
    v52 = sub_1007701BC();

    __chkstk_darwin(v53);
    *(&v125 - 2) = v40;
    v54 = sub_100244374(sub_100258A40, (&v125 - 4), v52);

    if (v54)
    {
      v55 = v155;
      [v155 setTransientViewController:0 animated:0];
      [v55 setSelectedViewController:v54];
      v56 = v144;
      sub_100257164(v55);
      v57 = v40;
      sub_10005C684(v40, v37);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = v51;
        v59 = v145;
        if (*v37)
        {
          v60 = sub_10000A5D4(&unk_1009428E0);

          v61 = v132;
          sub_10076F5AC();
          v62 = *(v60 - 8);
          v63 = (*(v62 + 48))(v61, 1, v60);
          v64 = v151;
          if (v63 == 1)
          {

            (*(v149 + 8))(v154, v64);
            sub_10005DB58(v58, type metadata accessor for FlowPresentationHints);
            sub_10000CFBC(v61, &unk_100943200);
LABEL_32:
            v84 = v57;
LABEL_56:
            sub_10005DB58(v84, type metadata accessor for FlowDestination);
            return v59;
          }

          sub_100263FFC(v85, 1, v56, v61);

          (*(v62 + 8))(v61, v60);
          sub_10076FC4C();

          (*(v149 + 8))(v154, v64);
LABEL_31:
          sub_10005DB58(v58, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_10005DB58(v37, type metadata accessor for FlowDestination);
        v58 = v51;
        v59 = v145;
      }

      v82 = v146;
      v81 = v147;
      v83 = v148;
      (*(v147 + 104))(v146, enum case for ActionOutcome.performed(_:), v148);
      sub_10076FCBC();

      (*(v81 + 8))(v82, v83);
      (*(v149 + 8))(v154, v151);
      goto LABEL_31;
    }

    v27 = v51;
    v46 = v151;
  }

  v65 = [v155 viewControllers];
  v129 = v40;
  if (!v65)
  {
    goto LABEL_40;
  }

  v66 = v65;
  sub_100016F40(0, &qword_1009453B0);
  v67 = sub_1007701BC();

  __chkstk_darwin(v68);
  *(&v125 - 2) = v40;
  v69 = sub_100244374(sub_100258A20, (&v125 - 4), v67);

  if (!v69)
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    goto LABEL_40;
  }

  v71 = [v70 viewControllers];
  v72 = sub_1007701BC();

  if (v72 >> 62)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v133;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = sub_10077149C();
LABEL_25:
    v76 = v75;

    type metadata accessor for TabPlaceholderViewController();
    if (swift_dynamicCastClass())
    {
      v77 = sub_1006FC188();
      if (v77)
      {
        v133 = v76;
        v78 = v77;
        [v77 tag];
        v79 = v130;
        sub_100760ECC();

        v80 = v131;
        if ((v74[6])(v79, 1, v131) != 1)
        {
          (v74)[4](v49, v79, v80);
          (v74)[2](v126, v49, v80);
          sub_10000A5D4(&unk_100942870);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_1007841E0;
          *(v116 + 32) = a1;

          sub_10076F4DC();
          sub_10076225C();
          swift_allocObject();
          sub_10076221C();
          v117 = sub_10000A5D4(&unk_1009428E0);
          v118 = v128;
          v119 = v144;
          sub_10076F5AC();
          v120 = v74;
          v121 = *(v117 - 8);
          if ((*(v121 + 48))(v118, 1, v117) == 1)
          {

            (v120[1])(v49, v131);
            (*(v149 + 8))(v154, v46);
            sub_10005DB58(v27, type metadata accessor for FlowPresentationHints);
            sub_10000CFBC(v118, &unk_100943200);
            v84 = v129;
            v59 = v145;
            goto LABEL_56;
          }

          sub_1002640CC(v122, 1, v119, v118);

          (*(v121 + 8))(v118, v117);
          v123 = v145;
          sub_10076FC4C();

          (v120[1])(v49, v131);
          v124 = v46;
          v59 = v123;
          (*(v149 + 8))(v154, v124);
          sub_10005DB58(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v79 = v130;
        (v74[7])(v130, 1, 1, v131);
      }

      sub_10000CFBC(v79, &qword_10094B168);
    }

    else
    {
    }

LABEL_40:
    v86 = v152;
    v87 = sub_100376418(v152);
    if (!v87 || (v156 = v87, sub_100016F40(0, &qword_100944C68), sub_10000A5D4(&qword_100944C70), (swift_dynamicCast() & 1) == 0))
    {
      v158 = 0;
      memset(v157, 0, sizeof(v157));
    }

    v88 = [v86 traitCollection];

    sub_10076B87C();
    v89 = v136;
    sub_10012062C(a1, &v156, v136);
    v90 = v153;
    v91 = v134;
    if (v134(v89, 1, v153) == 1)
    {
      v92 = v137;
      swift_storeEnumTagMultiPayload();
      if (v91(v89, 1, v90) != 1)
      {
        sub_10000CFBC(v89, &unk_10094A890);
      }
    }

    else
    {
      v92 = v137;
      sub_10005DAD8(v89, v137);
    }

    v93 = sub_10075F57C();
    v95 = v94;
    v96 = v138;
    sub_10075F59C();
    v97 = sub_10048B0C0(v92, v88, v93, v95, v96, v157, v144, 1);

    sub_10000CFBC(v96, &unk_100958150);
    sub_10005DB58(v92, type metadata accessor for FlowDestination);
    v98 = v139;
    sub_10075F5AC();
    v99 = *(v140 + 48);
    v100 = v141;
    v101 = v143;
    v102 = v142;
    (*(v141 + 32))(v143, v98, v142);
    v103 = v149;
    v104 = v151;
    (*(v149 + 16))(v101 + v99, v154, v151);
    v105 = (*(v100 + 88))(v101, v102);
    v106 = v27;
    if (v105 == enum case for FlowAnimationBehavior.infer(_:))
    {
      v107 = (*(v103 + 88))(v101 + v99, v104);
      v108 = v145;
      if (v107 != enum case for FlowPresentationContext.presentModal(_:))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v108 = v145;
      if (v105 != enum case for FlowAnimationBehavior.always(_:))
      {
LABEL_53:
        v109 = v104;
        sub_10000CFBC(v101, &qword_10094EB50);
        v110 = 0;
        goto LABEL_54;
      }

      (*(v103 + 8))(v101 + v99, v104);
    }

    v109 = v104;
    (*(v100 + 8))(v101, v102);
    v110 = 1;
LABEL_54:
    v111 = v155;
    [v155 setTransientViewController:v97 animated:v110];
    v113 = v146;
    v112 = v147;
    v114 = v148;
    (*(v147 + 104))(v146, enum case for ActionOutcome.performed(_:), v148);
    sub_10076FCBC();

    v115 = v113;
    v59 = v108;
    (*(v112 + 8))(v115, v114);
    (*(v103 + 8))(v154, v109);
    sub_10005DB58(v106, type metadata accessor for FlowPresentationHints);
    sub_10000CFBC(v157, &unk_10094A8A0);
LABEL_55:
    v84 = v129;
    goto LABEL_56;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002589CC()
{
  result = qword_10094EB58;
  if (!qword_10094EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB58);
  }

  return result;
}

unint64_t sub_100258A60()
{
  result = qword_10094A530;
  if (!qword_10094A530)
  {
    sub_100766EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A530);
  }

  return result;
}

unint64_t sub_100258ACC()
{
  result = qword_10094EB60;
  if (!qword_10094EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB60);
  }

  return result;
}

unint64_t sub_100258B20(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
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
}

char *sub_100258D44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

uint64_t sub_100259064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_10076341C();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C3BC();
  sub_100259F00(&qword_10094EBE8, &type metadata accessor for PageTabs);
  v39 = a1;
  result = sub_10076332C();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = sub_10076C3AC();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = sub_10077149C();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_100259F48();
        v14 = sub_10076C06C();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = sub_100770F1C();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_100259428(v25, v39);
  }

  return result;
}

uint64_t sub_100259428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_10000A5D4(&qword_10094EBF0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000A5D4(&qword_10094EBF8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10025A188();
  sub_10076335C();
  v38 = v14;
  sub_10076FD8C();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = sub_10076C3AC();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = sub_10077158C();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = sub_10076C05C();
      v22 = v21;
      if (v20 == sub_10076C39C() && v22 == v23)
      {
        break;
      }

      v24 = sub_10077167C();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    sub_10076336C();
    v26 = v31;
    v27 = sub_10076F87C();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    sub_10076F83C();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_10025981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&qword_10094EBF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_10000A5D4(&unk_1009428E0);
        sub_10076F5AC();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10000CFBC(v15, &unk_100943200);
        }

        else
        {
          v22 = sub_10076C07C();
          v24 = sub_1002641D0(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        sub_10076336C();
        v23 = sub_10076F87C();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_10025A188();
        sub_10076F83C();

        (*(v25 + 8))(v12, v9);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for SegmentedControlCollectionViewCell()
{
  result = qword_10094EBC8;
  if (!qword_10094EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100259C58()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100259D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100259F00(&qword_10094EBE0, type metadata accessor for SegmentedControlCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100259DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100259E38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100259F00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100259F48()
{
  result = qword_1009641D0;
  if (!qword_1009641D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009641D0);
  }

  return result;
}

uint64_t sub_100259F94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100259FCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025A004()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10025A0E4(uint64_t a1)
{
  v3 = *(sub_10076341C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10025981C(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_10025A188()
{
  result = qword_10094EC00;
  if (!qword_10094EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC00);
  }

  return result;
}

uint64_t sub_10025A1DC(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

uint64_t sub_10025A1F0(uint64_t a1)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C3BC();
  sub_100259F00(&qword_10094EBE8, &type metadata accessor for PageTabs);
  result = sub_10076332C();
  v7 = v30;
  if (!v30)
  {
    return result;
  }

  v8 = sub_10076C3AC();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_10077158C();
    v29 = v5;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:

    v12 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v19 = v29;
    sub_10076338C();

    sub_10076C2FC();
    v21 = v20;
    v23 = v22;
    (*(v3 + 8))(v19, v2);
    swift_getKeyPath();
    sub_10076338C();

    v24 = v30;
    sub_1000E3E30(v12, v21, v23);
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = v5;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v30 = _swiftEmptyArrayStorage;
  result = sub_1004BBB24(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = v7;
    v26 = v3;
    v27 = v2;
    v28 = a1;
    v11 = 0;
    v12 = v30;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      v13 = sub_10076C06C();
      v15 = v14;

      v30 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_1004BBB24((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      ++v11;
      v12[2] = v17 + 1;
      v18 = &v12[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v10 != v11);

    v2 = v27;
    v3 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10025A51C()
{
  result = qword_10094EC08;
  if (!qword_10094EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC08);
  }

  return result;
}

unint64_t sub_10025A574()
{
  result = qword_10094EC10;
  if (!qword_10094EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC10);
  }

  return result;
}

double sub_10025A62C()
{
  v0 = sub_10076A1BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076710C();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v0);
  sub_1002299DC(v3, v6);
  (*(v1 + 8))(v3, v0);
  sub_10076462C();
  sub_10076712C();
  sub_10025A8FC(&unk_10094DF40, &type metadata accessor for LargeHeroBreakoutLayout);
  sub_10076DBDC();
  v12 = v11;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v15);
  return v12;
}

uint64_t sub_10025A8FC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10025A990(void *a1)
{
  v3 = sub_10076642C();
  v107 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076640C();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = v88 - v9;
  __chkstk_darwin(v10);
  v110 = v88 - v11;
  v103 = sub_10076997C();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076C38C();
  v99 = *(v100 - 1);
  __chkstk_darwin(v100);
  v98 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100765AAC();
  v97 = *(v14 - 8);
  __chkstk_darwin(v14);
  v96 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v109 = (v88 - v17);
  v18 = sub_10000A5D4(&qword_10094EC28);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v88 - v20;
  sub_1007622BC();
  sub_10025B9F0(&unk_10094EC30, &type metadata accessor for TitledParagraph);
  sub_10076332C();
  v22 = aBlock;
  if (!aBlock)
  {
    return 0.0;
  }

  v92 = v5;
  v93 = v6;
  v94 = v3;
  sub_100166CB4();
  sub_10076335C();
  sub_10076FD8C();
  (*(v19 + 8))(v21, v18);
  LODWORD(v90) = aBlock;
  v23 = sub_10076229C();
  swift_getKeyPath();
  v91 = a1;
  sub_10076338C();

  v24 = v115[0];
  v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];
  v26 = [v23 length];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *(v27 + 40) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000275EC;
  *(v28 + 24) = v27;
  v122 = sub_1000ACB04;
  v123 = v28;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100026610;
  v121 = &unk_10088E7A0;
  v29 = _Block_copy(&aBlock);
  v30 = v24;
  v108 = v25;

  [v23 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1007622AC();
    v32 = v97;
    v33 = v96;
    (v97[13])(v96, enum case for TitledParagraphStyle.detail(_:), v14);
    sub_10025B9F0(&qword_10094EC40, &type metadata accessor for TitledParagraphStyle);
    sub_10077018C();
    sub_10077018C();
    v34 = v22;
    if (aBlock == v115[0] && v119 == v115[1])
    {
      v89 = 1;
    }

    else
    {
      v89 = sub_10077167C();
    }

    v36 = v100;
    v37 = v90;
    v38 = v32[1];
    v38(v33, v14);
    v38(v109, v14);

    if (v37)
    {
      if (qword_1009401F8 != -1)
      {
        swift_once();
      }

      v39 = sub_10000A5D4(&unk_10094C370);
      sub_10000A61C(v39, qword_10099F1E8);
      v115[0] = sub_100630CB4();
      sub_10075FDCC();
      swift_unknownObjectRelease();
      v96 = aBlock;
    }

    else
    {
      v96 = 0;
    }

    sub_10076227C();
    v97 = v34;
    v90 = sub_10076228C();
    v88[1] = v40;
    v91 = v108;
    v41 = sub_100630CB4();
    swift_getKeyPath();
    v42 = v98;
    sub_10076338C();

    sub_10076C2FC();
    v1 = v43;
    (*(v99 + 8))(v42, v36);
    v109 = v41;
    isEscapingClosureAtFileLocation = [v41 traitCollection];
    sub_10005312C();
    if (qword_100940B60 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v44 = sub_10076D3DC();
  sub_10000A61C(v44, qword_1009A1018);
  v100 = isEscapingClosureAtFileLocation;
  v45 = sub_100770B3C();
  v46 = sub_10076C04C();
  v121 = v46;
  v47 = sub_10025B9F0(&qword_100943230, &type metadata accessor for Feature);
  v122 = v47;
  v48 = sub_10000DB7C(&aBlock);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 1) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  v51 = v45;
  sub_10076C90C();
  sub_10000CD74(&aBlock);
  v52 = v101;
  sub_10076996C();
  sub_10076994C();
  v53 = v102[1];
  v54 = v103;
  v53(v52, v103);
  v116 = v46;
  v117 = v47;
  v55 = sub_10000DB7C(v115);
  v50(v55, v49, v46);
  v56 = v51;
  sub_10076C90C();
  sub_10000CD74(v115);
  v102 = v56;
  sub_10076996C();
  sub_10076994C();
  v53(v52, v54);
  v57 = 0;
  v58 = v89;
  if ((v89 & 1) == 0)
  {
    v57 = sub_1007663BC();
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v57 & 1;
  v60 = v109;
  *(v59 + 24) = v104;
  *(v59 + 32) = v60;
  v61 = v96;
  *(v59 + 40) = v108;
  *(v59 + 48) = v61;
  v62 = sub_10076DDDC();
  swift_allocObject();
  v63 = v91;
  swift_unknownObjectRetain();
  v64 = sub_10076DD9C();
  v114[3] = v62;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  v114[0] = v64;
  v65 = v107;
  v66 = v93;
  v67 = v92;
  v68 = v110;
  v108 = v63;
  if (v57)
  {
    v69 = v106;
    if (qword_100940208 != -1)
    {
      swift_once();
    }

    v70 = sub_10000A61C(v66, qword_10099F218);
    v71 = *(v69 + 16);
    v71(v68, v70, v66);
    sub_100397DE4(v60, v1);
    sub_1007663DC();
    [v60 pageMarginInsets];
    sub_1007663EC();
  }

  else
  {
    v69 = v106;
    if (v58)
    {
      if (qword_100940210 != -1)
      {
        swift_once();
      }

      v72 = qword_10099F230;
    }

    else
    {
      if (qword_100940200 != -1)
      {
        swift_once();
      }

      v72 = qword_10099F200;
    }

    v73 = sub_10000A61C(v66, v72);
    v71 = *(v69 + 16);
    v74 = v95;
    v71(v95, v73, v66);
    (*(v69 + 32))(v68, v74, v66);
  }

  v71(v105, v68, v66);
  v75 = v69;
  v76 = v121;
  v77 = v122;
  v78 = sub_10000CF78(&aBlock, v121);
  v113[3] = v76;
  v113[4] = *(v77 + 1);
  v79 = sub_10000DB7C(v113);
  (*(*(v76 - 1) + 16))(v79, v78, v76);
  v80 = v116;
  v81 = v117;
  v82 = sub_10000CF78(v115, v116);
  v112[3] = v80;
  v112[4] = *(v81 + 8);
  v83 = sub_10000DB7C(v112);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_10000A570(v114, v111);
  sub_10076641C();
  sub_10025B9F0(&unk_100959F60, &type metadata accessor for TitledParagraphLayout);
  v84 = v94;
  sub_10076D2AC();
  v35 = v85;

  v86 = v108;
  swift_unknownObjectRelease();

  (*(v65 + 8))(v67, v84);
  (*(v75 + 8))(v110, v66);
  sub_10000CD74(v114);
  sub_10000CD74(v115);
  sub_10000CD74(&aBlock);
  return v35;
}

uint64_t sub_10025B92C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10025B984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10025B9A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10025B9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025BA38(void *a1)
{
  if (*v1 == *a1 && (sub_1007713EC() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (sub_10077167C() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (sub_10077167C() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10025BB38()
{
  sub_1007713FC();
  sub_10077008C();
  sub_10077008C();
  sub_10077177C(*(v0 + 88));
}

uint64_t sub_10025BB90()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_10025BC1C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10000A5D4(&unk_100945BF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783DD0;
  *(v18 + 32) = sub_10076E3EC();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v16;
}

void sub_10025BFB8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

double sub_10025C084()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_10025C0FC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_10025C1FC(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_10025C254;
}

void sub_10025C254(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_10025C0FC(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_10025C36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10025C43C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10025C4E0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10025C538(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10025C5F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10025C644(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10025C6FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_10025C730(void *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10025C1FC(v2);
  return sub_100019FCC;
}

double sub_10025C7A0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_1007709FC();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_10025C9E4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_10025CB38(char *a1)
{
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

char *sub_10025CB8C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = 0;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins] = 0;
  type metadata accessor for TodayCardLockupView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView];
  v16 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending;
  v15[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending] = 0;
  v17 = v15;
  v18 = [v17 layer];
  [v18 setAllowsGroupBlending:v15[v16]];

  v19 = [*&v17[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] layer];
  [v19 setAllowsGroupBlending:v15[v16]];

  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v12 addSubview:*&v12[v14]];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v20 setDelegate:v12];
  [v20 addTarget:v12 action:"handleTap"];

  [v12 addGestureRecognizer:v20];
  v21 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = v20;
  v22 = v20;

  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  return v12;
}

void sub_10025CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v118 = a6;
  v132 = a2;
  v136 = a1;
  v10 = a5;
  v11 = sub_10076BF6C();
  __chkstk_darwin(v11 - 8);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076BEDC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v14 - 8);
  v131 = &v113 - v15;
  v16 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v16 - 8);
  v130 = &v113 - v17;
  v18 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v18 - 8);
  v129 = &v113 - v19;
  v20 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v20 - 8);
  v128 = &v113 - v21;
  v22 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v22 - 8);
  v121 = &v113 - v23;
  v120 = sub_10076A3AC();
  v24 = *(v120 - 8);
  __chkstk_darwin(v120);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v27 - 8);
  v122 = &v113 - v28;
  v137 = sub_10076C7EC();
  v29 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v113 - v33;
  v35 = v6[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory];
  v6[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory] = a5;
  v36 = v10;
  if (v10 == 7)
  {
    if (v35 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v6 setNeedsLayout];
    goto LABEL_6;
  }

  if (v35 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v35 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v35 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v35 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v35 - 7) > 0xFFFFFFFC || v35 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v37 = [v6 traitCollection];
  v38 = v36;
  if (v36 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v37 layoutDirection];
  sub_1007708DC();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v6 setLayoutMargins:{v40, v42, v44, v46}];
  v47 = sub_100312114(a4);
  [v7 setBackgroundColor:v47];

  v48 = *(v29 + 104);
  v126 = enum case for TodayCard.Style.white(_:);
  v127 = v29 + 104;
  v125 = v48;
  v48(v34);
  v49 = sub_10025F04C(&qword_100944B98, &type metadata accessor for TodayCard.Style);
  sub_10077018C();
  v124 = v49;
  sub_10077018C();
  v135 = a4;
  if (v142 == v138 && v143 == v139)
  {
    v50 = 1;
  }

  else if (sub_10077167C())
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  v51 = *(v29 + 8);
  v134 = v29 + 8;
  v123 = v51;
  v51(v34, v137);

  [v7 setOverrideUserInterfaceStyle:v50];
  v52 = [v7 layer];
  [v52 setCornerRadius:20.0];

  v53 = [v7 layer];
  v54 = v53;
  v55 = 12;
  if (v38 == 6)
  {
    v55 = 15;
  }

  if (v7[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded])
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v53 setMaskedCorners:v56];

  v57 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v58 = *&v7[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView];
  v119 = sub_100766D6C();
  v59 = *(v24 + 104);
  v60 = v120;
  v59(v26, enum case for OfferButtonPresenterViewAlignment.right(_:), v120);
  v61 = v121;
  v59(v121, enum case for OfferButtonPresenterViewAlignment.left(_:), v60);
  (*(v24 + 56))(v61, 0, 1, v60);
  sub_10025F04C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v62 = v122;
  sub_10076759C();
  v63 = sub_10000A5D4(&qword_100945590);
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = sub_100766D5C();
  v65 = sub_10075F78C();
  v66 = v128;
  (*(*(v65 - 8) + 56))(v128, 1, 1, v65);
  v67 = sub_1007628DC();
  v68 = v129;
  (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
  v69 = sub_10076C54C();
  v70 = v130;
  (*(*(v69 - 8) + 56))(v130, 1, 1, v69);
  v71 = sub_10000A5D4(&unk_100946750);
  v72 = v131;
  (*(*(v71 - 8) + 56))(v131, 1, 1, v71);
  sub_1004D0A60(v119, v58, v62, v132, (v64 & 1) == 0, 0, v66, v68, v70, v72);
  v58[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1006582B8();
  [v58 setNeedsLayout];
  sub_1006582B8();

  sub_10000CFBC(v72, &qword_10094F730);
  sub_10000CFBC(v70, &unk_100949290);
  sub_10000CFBC(v68, &unk_1009492A0);
  sub_10000CFBC(v66, &unk_10094D210);
  sub_10000CFBC(v62, &unk_100946760);
  v73 = *&v7[v57];
  sub_100016F40(0, &qword_100942F10);
  v74 = v73;
  v75 = sub_100770CFC();
  v76 = v75;
  v77 = *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor];
  *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor] = v75;
  if (!v77)
  {
    v82 = v75;
    v79 = 0;
    v81 = v133;
    goto LABEL_23;
  }

  v78 = v75;
  v79 = v77;
  v80 = sub_100770EEC();

  v81 = v133;
  if ((v80 & 1) == 0)
  {
LABEL_23:
    sub_1003EB8BC();
    v78 = v76;
  }

  v83 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v84 = sub_100770D1C();
  [v83 setTextColor:v84];

  v85 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v86 = sub_100770D1C();
  [v85 setTextColor:v86];

  v87 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v88 = sub_100770D1C();
  [v87 setTextColor:v88];

  v89 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v90 = sub_100770D1C();
  [v89 setTextColor:v90];

  v91 = *&v7[v57];
  v92 = v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts];
  v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 1;
  if ((v92 & 1) == 0)
  {
    v93 = &v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics];
    swift_beginAccess();
    v93[337] = 1;
    [v91 setNeedsLayout];
  }

  v125(v81, v126, v137);
  sub_10077018C();
  sub_10077018C();
  if (v138 == v140 && v139 == v141)
  {
    v123(v81, v137);

LABEL_30:
    v95 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    v96 = sub_100770E1C();
    goto LABEL_32;
  }

  v94 = sub_10077167C();
  v123(v81, v137);

  if (v94)
  {
    goto LABEL_30;
  }

  v97 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v98 = objc_opt_self();
  v95 = v97;
  v96 = [v98 whiteColor];
LABEL_32:
  v99 = v96;
  [v95 setTintColor:v96];

  v100 = *&v7[v57];
  v101 = *(v100 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v101)
  {
    v102 = v101;
    v103 = sub_100770D1C();
    [v102 setTextColor:v103];

    v100 = *&v7[v57];
  }

  v104 = *(v100 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v104)
  {
    v105 = v104;
    v106 = sub_100770D1C();
    [v105 setTextColor:v106];

    v107 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v107)
    {
      [v107 setAccessibilityIgnoresInvertColors:1];
    }
  }

  sub_10025DF98();
  sub_100766D6C();
  v108 = sub_10076BB5C();

  if (v108)
  {
    v109 = v114;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v115 + 8))(v109, v116);
    swift_beginAccess();
    sub_10076BFCC();
    v110 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v110 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100770D5C();
    }

    sub_10075FB8C();

    v111 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FD2C();
    sub_10025F04C(&qword_100941820, &type metadata accessor for ArtworkView);
    v112 = v111;
    sub_100760B8C();
  }

  else
  {
    v112 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FCAC();
  }
}

void sub_10025DF98()
{
  [v0 overrideUserInterfaceStyle];
  sub_10076FF9C();
  v1 = sub_10076FF6C();

  v2 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = *&v0[v2];
  v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setCompositingFilter:v1];

    v5 = *&v0[v2];
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v8 setCompositingFilter:v1];

  v9 = [*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) layer];
  [v9 setCompositingFilter:v1];
}

uint64_t sub_10025E160()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  [v0 layoutMargins];
  sub_100770A3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] sizeThatFits:{v5, v7}];
  v11 = v10;
  v12 = *&v0[v9];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  v14 = CGRectGetMidY(v21) + v11 * -0.5;
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  [v12 setFrame:{MinX, v14, CGRectGetWidth(v22), v11}];

  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v17 = *v15;
  if (*v15)
  {

    v17(v18);
    return sub_1000167E0(v17);
  }

  return result;
}

double sub_10025E34C(double a1)
{
  v3 = [v1 traitCollection];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_100587DD0(v3, &xmmword_1009A2D20, 1);
  sub_10077071C();
  sub_1007704EC();
  sub_10077071C();
  sub_1007704EC();

  return a1;
}

void sub_10025E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_100766D7C();
        if (swift_dynamicCastClass())
        {
          sub_100766D6C();
          sub_10076BACC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000CFBC(v6, &qword_1009492E0);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10025EB24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4);
}

void sub_10025EB44()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10025F04C(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

void sub_10025EC04()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();
}

uint64_t sub_10025EC70()
{
  sub_10000A5D4(&unk_1009434B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView);
  *(v1 + 56) = type metadata accessor for TodayCardLockupView();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

uint64_t sub_10025ED28()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10025ED88(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_10025EE20()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_10025EE7C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_10025EF3C(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10025F14C;
}

uint64_t sub_10025F04C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025F094()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F0CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F104()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10025F158()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins) = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_10025F21C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded] != 1 || ([v2 bounds], v13.x = v4, v13.y = v6, !CGRectContainsPoint(v14, v13)))
  {

    return 0;
  }

  if (v7)
  {
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      return 0;
    }
  }

  return *&v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler] != 0;
}

uint64_t sub_10025F35C()
{
  sub_10000CC8C(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_10025F3C4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (sub_10077090C())
  {

    sub_1007708FC();
    *(a1 + 24) = sub_10000A5D4(&qword_10094EF98);
    *(a1 + 32) = sub_10025F498();
    sub_10000DB7C(a1);
    sub_10076A3BC();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_10025F498()
{
  result = qword_10094EFA0;
  if (!qword_10094EFA0)
  {
    sub_10000CE78(&qword_10094EF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EFA0);
  }

  return result;
}

id sub_10025F4FC()
{
  v35[1] = *v0;
  v1 = sub_10076C38C();
  v36 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v35[0] = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_1000D3158(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_10076340C();
    v17 = sub_10075E03C();
    v18 = *(v8 + 8);
    v18(v10, v7);
    if (v17)
    {
      v15 = sub_1000D35A8(v16);
      swift_unknownObjectRelease();

      v18(v13, v7);
      goto LABEL_9;
    }

    v18(v13, v7);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10000CFBC(v6, &unk_10094DE60);
LABEL_9:
  v1 = v35[0];
LABEL_10:
  v19 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v15}];
  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension:1.0];
  v22 = [v20 fractionalHeightDimension:1.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v24 = v23;
  sub_10077091C();
  v25 = v19;
  v26 = sub_10076FF6C();

  v27 = [objc_opt_self() supplementaryItemWithLayoutSize:v24 elementKind:v26 containerAnchor:v25];

  sub_10075EEBC();
  sub_10025FD44();
  sub_10076332C();
  if (v37)
  {
    v28 = sub_10047B894();

    v29 = v28 + -10.0;
  }

  else
  {
    v29 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C2EC();
  v31 = v30;
  v33 = v32;
  (*(v36 + 8))(v3, v1);
  [v27 setContentInsets:{v29, v31 + -10.0, -10.0, v33 + -10.0}];
  [v27 setZIndex:-1];

  return v27;
}