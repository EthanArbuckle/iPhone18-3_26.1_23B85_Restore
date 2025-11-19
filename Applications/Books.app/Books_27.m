uint64_t sub_1003D6448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&unk_100AD36E0);
  v35 = a2;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100019288(v22, v36);
      }

      else
      {
        sub_100007484(v22, v36);
        v23 = v21;
      }

      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v24 = sub_1007A3C44();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100019288(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1003D6790(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100AD3658);
  v39 = a2;
  result = sub_1007A3914();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1003DDB28(&qword_100ADAD88, &type metadata accessor for UUID);
      result = sub_1007A2074();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1003D6B54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAD38);
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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
      result = sub_1007A3BF4();
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

    if (v30)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1003D6E1C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1001F1160(a3);
  v36 = a2;
  result = sub_1007A3914();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1003D70E0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_10079A4E4();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A404();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001F1160(&qword_100ADADF0);
  v47 = a2;
  result = sub_1007A3914();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1003DDB28(&qword_100ADADF8, &type metadata accessor for CollectionRecommendationType);
      result = sub_1007A2074();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1003D7588(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100799B44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100AD3628);
  v39 = a2;
  result = sub_1007A3914();
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

      sub_1003DDB28(&qword_100AD3610, &type metadata accessor for Methodology);
      result = sub_1007A2074();
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

uint64_t sub_1003D7964(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_1001F1160(&qword_100ADAD60);
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - v6;
  v7 = *v2;
  sub_1001F1160(&qword_100ADAD68);
  v37 = a2;
  result = sub_1007A3914();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1007A3BF4();
      v26 = -1 << *(v9 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1003D7CCC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1001F1160(a3);
  v35 = a2;
  result = sub_1007A3914();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1003D7F6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&unk_100ADAE50);
  v38 = a2;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_100028940(v27, &v39);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1003D823C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&qword_100AE12C8);
  v40 = a2;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(*(v5 + 48) + 8 * v22);
      v25 = v23 + 40 * v22;
      if (v40)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v43 = *(v25 + 32);
        v41 = v26;
        v42 = v27;
      }

      else
      {
        sub_100028940(v25, &v41);
        v28 = v24;
      }

      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v29 = sub_1007A3C44();

      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1003D8524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD3BB0);
  v38 = a2;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1001F36B0(v25, v26, v27);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1003D8804(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for NoteHighlight(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001F1160(&qword_100AD3600);
  v40 = a2;
  result = sub_1007A3914();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1002F900C(v28, v41, type metadata accessor for NoteHighlight);
      }

      else
      {
        sub_1002F8FA4(v28, v41, type metadata accessor for NoteHighlight);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1002F900C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for NoteHighlight);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1003D8B90(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1001F1160(a3);
  v35 = a2;
  result = sub_1007A3914();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1003D8E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAE48);
  v37 = a2;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v39 = *v24;
      v40 = *v22;
      v26 = *(v24 + 16);
      v38 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {
        v27 = v26;
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v39;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1003D9108(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100ADAD80);
  v39 = a2;
  result = sub_1007A3914();
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

      sub_1003DDB28(&qword_100ADAD88, &type metadata accessor for UUID);
      result = sub_1007A2074();
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

uint64_t sub_1003D950C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1001F1160(&qword_100ADAD98);
  v37 = a2;
  result = sub_1007A3914();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1002F900C(v25, v7, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      else
      {
        sub_1002F8FA4(v25, v7, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      result = sub_1007A3BF4();
      v26 = -1 << *(v10 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1002F900C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1003D987C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v48 = a3(0);
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - v9;
  v10 = *v4;
  sub_1001F1160(a4);
  v45 = a2;
  result = sub_1007A3914();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = v4;
    v42 = (v8 + 16);
    v43 = v10;
    v44 = v8;
    v46 = (v8 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 56);
      v27 = (*(v10 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v44 + 72);
      v31 = v26 + v30 * v25;
      if (v45)
      {
        (*v46)(v47, v31, v48);
      }

      else
      {
        (*v42)(v47, v31, v48);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v46)(*(v12 + 56) + v30 * v20, v47, v48);
      ++*(v12 + 16);
      v10 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v6 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v6 = v41;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v6 = v12;
  return result;
}

uint64_t sub_1003D9C50(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100ADADC8);
  v39 = a2;
  result = sub_1007A3914();
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

      sub_1003DDB28(&unk_100ADADD0, &type metadata accessor for Date);
      result = sub_1007A2074();
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

uint64_t sub_1003DA040(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1001F1160(a3);
  v35 = a2;
  result = sub_1007A3914();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1003DA2F4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1001F1160(a3);
  result = sub_1007A3914();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1007A3BF4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1003DA584(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v42 = a3(0);
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v37 - v9;
  v10 = *v4;
  sub_1001F1160(a4);
  v40 = a2;
  result = sub_1007A3914();
  v12 = result;
  if (*(v10 + 16))
  {
    v37 = v6;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v8;
    v19 = (v8 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v8 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = sub_1007A3BF4();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v8 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v6 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v6 = v37;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v6 = v12;
  return result;
}

unint64_t sub_1003DA8D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

_OWORD *sub_1003DA920(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100019288(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1003DA98C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

unint64_t sub_1003DA9D4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
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

unint64_t sub_1003DAA24(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1003DAAB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_1003DAAFC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100019288(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1003DABA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
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

unint64_t sub_1003DAC5C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_1003DACA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100019288(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1003DAD20(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_100796C04();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1003DAE08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10079A404();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10079A4E4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1003DAF14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1001F1160(&qword_100ADAD60);
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

unint64_t sub_1003DAFCC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1003DB024(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1003DB090(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  result = sub_1002F900C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
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

uint64_t sub_1003DB180(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1003DB254(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
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

uint64_t sub_1003DB304(void *a1, char a2, void *a3)
{
  v36 = a1[2];
  if (!v36)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_10000E53C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1003D4D6C(v15, v5 & 1);
    v10 = sub_10000E53C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1007A3B24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1002F15B4();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1007A3744(30);
    v37._object = 0x80000001008D1C40;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1007A23D4(v37);
    sub_1007A3894();
    v38._countAndFlagsBits = 39;
    v38._object = 0xE100000000000000;
    sub_1007A23D4(v38);
    result = sub_1007A38A4();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v24 = *v5;
      v25 = *a3;

      v26 = sub_10000E53C(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1003D4D6C(v30, 1);
        v26 = sub_10000E53C(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v35;
      v5 += 3;
      if (v36 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

void (*sub_1003DB680(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1003DBA38(v7);
  v7[9] = sub_1003DB78C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1003DB72C;
}

void sub_1003DB72C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1003DB78C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10000E53C(a2, a3);
  *(v11 + 40) = v14 & 1;
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1002F18FC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1003DA040(v18, a4 & 1, &qword_100ADAEF0);
    v13 = sub_10000E53C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1003DB8F4;
}

void sub_1003DB8F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1002308AC(*(v13 + 48) + 16 * v12);
      sub_1002F9CFC(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1003DBA38(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1003DBA60;
}

id sub_1003DBA6C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100796F44();
  v66[3] = v4;
  v66[4] = &protocol witness table for FigaroProvider;
  v5 = sub_1002256EC(v66);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v62 = OBJC_IVAR___BKContextMenuProvider_swipeActionItems;
  sub_1001F1160(&qword_100AD1E60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B6A0;
  ThisActionItem = type metadata accessor for ReadThisActionItem();
  v54 = sub_1003DDB28(&qword_100AD1E68, type metadata accessor for ReadThisActionItem);
  *(v6 + 32) = ThisActionItem;
  *(v6 + 40) = v54;
  v59 = type metadata accessor for MarkAsFinishedActionItem();
  v58 = sub_1003DDB28(&qword_100AD1E70, type metadata accessor for MarkAsFinishedActionItem);
  *(v6 + 48) = v59;
  *(v6 + 56) = v58;
  v57 = type metadata accessor for MarkAsStillReadingActionItem();
  v56 = sub_1003DDB28(&qword_100AD1E78, type metadata accessor for MarkAsStillReadingActionItem);
  *(v6 + 64) = v57;
  *(v6 + 72) = v56;
  ActionItem = type metadata accessor for AddToWantToReadActionItem();
  v8 = sub_1003DDB28(&qword_100AD1E80, type metadata accessor for AddToWantToReadActionItem);
  *(v6 + 80) = ActionItem;
  *(v6 + 88) = v8;
  v61 = type metadata accessor for RemoveFromWantToReadActionItem();
  v60 = sub_1003DDB28(&qword_100AD1E88, type metadata accessor for RemoveFromWantToReadActionItem);
  *(v6 + 96) = v61;
  *(v6 + 104) = v60;
  v9 = type metadata accessor for ExplicitDeclineActionItem();
  v10 = sub_1003DDB28(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem);
  *(v6 + 112) = v9;
  *(v6 + 120) = v10;
  v11 = type metadata accessor for AppShareActionItem();
  *(v6 + 128) = v11;
  *(v6 + 136) = &protocol witness table for ShareActionItem;
  v52 = type metadata accessor for ListenSampleActionItem();
  v51 = sub_1003DDB28(&qword_100AD1E98, type metadata accessor for ListenSampleActionItem);
  *(v6 + 144) = v52;
  *(v6 + 152) = v51;
  SampleActionItem = type metadata accessor for ReadSampleActionItem();
  v53 = sub_1003DDB28(&qword_100AD1EA0, type metadata accessor for ReadSampleActionItem);
  *(v6 + 160) = SampleActionItem;
  *(v6 + 168) = v53;
  *&a2[v62] = v6;
  v63 = OBJC_IVAR___BKContextMenuProvider_actionItems;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10080B6B0;
  v14 = type metadata accessor for AddToCollectionActionItem();
  v15 = sub_1003DDB28(&qword_100AD1EA8, type metadata accessor for AddToCollectionActionItem);
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  *(v13 + 48) = ActionItem;
  *(v13 + 56) = v8;
  *(v13 + 64) = v11;
  *(v13 + 72) = &protocol witness table for ShareActionItem;
  v16 = type metadata accessor for CancelDownloadActionItem();
  v17 = sub_1003DDB28(&qword_100AD1EB0, type metadata accessor for CancelDownloadActionItem);
  *(v13 + 80) = v16;
  *(v13 + 88) = v17;
  v18 = sub_1001F194C();
  *(v13 + 96) = &type metadata for CloseAudiobookMiniPlayerActionItem;
  *(v13 + 104) = v18;
  v19 = type metadata accessor for CopyLinkActionItem();
  v20 = sub_1003DDB28(&qword_100AD1EC0, type metadata accessor for CopyLinkActionItem);
  *(v13 + 112) = v19;
  *(v13 + 120) = v20;
  v21 = type metadata accessor for DislikeActionItem();
  v22 = sub_1003DDB28(&qword_100AD1EC8, type metadata accessor for DislikeActionItem);
  *(v13 + 128) = v21;
  *(v13 + 136) = v22;
  v23 = type metadata accessor for DownloadActionItem();
  v24 = sub_1003DDB28(&qword_100AD1ED0, type metadata accessor for DownloadActionItem);
  *(v13 + 144) = v23;
  *(v13 + 152) = v24;
  v25 = type metadata accessor for EditFinishedDateActionItem();
  v26 = sub_1003DDB28(&qword_100AD1ED8, type metadata accessor for EditFinishedDateActionItem);
  *(v13 + 160) = v25;
  *(v13 + 168) = v26;
  v27 = type metadata accessor for GetSampleActionItem();
  v28 = sub_1003DDB28(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem);
  *(v13 + 176) = v27;
  *(v13 + 184) = v28;
  *(v13 + 192) = ThisActionItem;
  *(v13 + 200) = v54;
  *(v13 + 208) = v9;
  *(v13 + 216) = v10;
  v29 = type metadata accessor for GiftActionItem();
  v30 = sub_1003DDB28(&qword_100AD1EE8, type metadata accessor for GiftActionItem);
  *(v13 + 224) = v29;
  *(v13 + 232) = v30;
  v31 = type metadata accessor for MultipleGiftActionItem();
  v32 = sub_1003DDB28(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem);
  *(v13 + 240) = v31;
  *(v13 + 248) = v32;
  *(v13 + 256) = sub_100796F54();
  *(v13 + 264) = &protocol witness table for LikeActionItem;
  *(v13 + 272) = v52;
  *(v13 + 280) = v51;
  *(v13 + 288) = v59;
  *(v13 + 296) = v58;
  *(v13 + 304) = v57;
  *(v13 + 312) = v56;
  v33 = type metadata accessor for OpenProductPageActionItem();
  v34 = sub_1003DDB28(&qword_100AD1EF8, type metadata accessor for OpenProductPageActionItem);
  *(v13 + 320) = v33;
  *(v13 + 328) = v34;
  *(v13 + 336) = sub_100797534();
  *(v13 + 344) = &protocol witness table for RateAndReviewActionItem;
  *(v13 + 352) = SampleActionItem;
  *(v13 + 360) = v53;
  v35 = type metadata accessor for RemoveActionItem();
  v36 = sub_1003DDB28(&qword_100AD1F00, type metadata accessor for RemoveActionItem);
  *(v13 + 368) = v35;
  *(v13 + 376) = v36;
  v37 = type metadata accessor for RemoveFromContinueActionItem();
  v38 = sub_1003DDB28(&qword_100AD1F08, type metadata accessor for RemoveFromContinueActionItem);
  *(v13 + 384) = v37;
  *(v13 + 392) = v38;
  *(v13 + 400) = v61;
  *(v13 + 408) = v60;
  v39 = type metadata accessor for RenameActionItem();
  v40 = sub_1003DDB28(&qword_100AD1F10, type metadata accessor for RenameActionItem);
  *(v13 + 416) = v39;
  *(v13 + 424) = v40;
  v41 = type metadata accessor for ReportAnIssueActionItem();
  v42 = sub_1003DDB28(&qword_100AD1F18, type metadata accessor for ReportAnIssueActionItem);
  *(v13 + 432) = v41;
  *(v13 + 440) = v42;
  v43 = type metadata accessor for ViewSupplementalContentActionItem();
  v44 = sub_1003DDB28(&qword_100AD1F20, type metadata accessor for ViewSupplementalContentActionItem);
  *(v13 + 448) = v43;
  *(v13 + 456) = v44;
  *(v13 + 464) = sub_100797544();
  *(v13 + 472) = &protocol witness table for SharedWithYouActionItem;
  v45 = type metadata accessor for InternalTapToRadarActionItem();
  v46 = sub_1003DDB28(&qword_100AD1F28, type metadata accessor for InternalTapToRadarActionItem);
  *(v13 + 480) = v45;
  *(v13 + 488) = v46;
  v47 = type metadata accessor for InternalEOBExperienceItem();
  v48 = sub_1003DDB28(&qword_100AD1F30, type metadata accessor for InternalEOBExperienceItem);
  *(v13 + 496) = v47;
  *(v13 + 504) = v48;
  *&a2[v63] = v13;
  sub_100009864(v66, &a2[OBJC_IVAR___BKContextMenuProvider_figaroProvider]);
  v65.receiver = a2;
  v65.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v65, "init");
  sub_1000074E0(v66);
  return v49;
}

id sub_1003DC344(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  a4[OBJC_IVAR____TtC5Books17ContextActionData_supportsReportConcernInJS] = 0;
  v7 = OBJC_IVAR____TtC5Books17ContextActionData_dataModel;
  *&a4[OBJC_IVAR____TtC5Books17ContextActionData_dataModel] = a1;
  v8 = a1;
  v9 = sub_1003DC4BC(v8, a2, a3);
  *&a4[OBJC_IVAR____TtC5Books17ContextActionData__assetInfos] = v9;
  if (v9 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_5:

    v12 = sub_100797474();
    (*(*(v12 - 8) + 8))(a3, v12);

    type metadata accessor for ContextActionData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v14.receiver = a4;
  v14.super_class = type metadata accessor for ContextActionData();
  v10 = objc_msgSendSuper2(&v14, "init");

  v11 = sub_100797474();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v10;
}

void *sub_1003DC4BC(uint64_t a1, void *a2, uint64_t a3)
{
  v20[3] = sub_10000A7C4(0, &qword_100AD9BD0);
  v20[4] = &off_100A300A0;
  v20[0] = a2;
  v5 = sub_100797474();
  v19[3] = v5;
  v19[4] = &protocol witness table for MenuCoverImageProvider;
  v6 = sub_1002256EC(v19);
  (*(*(v5 - 8) + 16))(v6, a3, v5);
  v7 = a2;
  v8 = sub_100797444();
  v10 = v8;
  if (v11)
  {
    __chkstk_darwin(v8);
    v18[2] = v20;
    v18[3] = v19;
    v13 = v12;
    v14 = sub_100401368(sub_1003DDB0C, v18, v10);
    sub_1002DB384(v10, v13, 1);
  }

  else
  {

    v15 = sub_1005F9304(v10, v20, v19);
    if (v15)
    {
      v16 = v15;
      sub_1001F1160(&unk_100AD8160);
      v14 = swift_allocObject();
      *(v14 + 1) = xmmword_100811390;
      v14[4] = v16;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }
  }

  sub_1000074E0(v20);
  sub_1000074E0(v19);
  return v14;
}

uint64_t sub_1003DC674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1002256EC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000077C0(&v12, v10 + 40 * a1 + 32);
}

void *sub_1003DC70C(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    v8 = &v16;
    sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v8 = v11;
      v14 = v11;
      sub_1003D3668(&v14, a2, a3, &v15);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_1003DC87C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v29 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_1001F1160(&qword_100AE12D0);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = sub_1003D0AF8(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i, a3, &v26);
      if (v3)
      {
        v22 = v29;

        return v22;
      }

      if (v27)
      {
        break;
      }

      if (v7 == v4)
      {
        return v29;
      }
    }

    v25 = v27;
    v23 = v26;
    v24 = v28;
    v13 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10066B7D4(0, v13[2] + 1, 1, v13);
    }

    v14 = v13;
    v15 = v13[2];
    v16 = v14;
    v17 = v14[3];
    v18 = (v15 + 1);
    v19 = v25;
    if (v15 >= v17 >> 1)
    {
      v29 = (v15 + 1);
      v21 = sub_10066B7D4((v17 > 1), v15 + 1, 1, v16);
      v19 = v25;
      v18 = v29;
      v16 = v21;
    }

    v16[2] = v18;
    v20 = &v16[4 * v15];
    result = v16;
    v20[4] = v23;
    *(v20 + 5) = v19;
    v20[7] = v24;
  }

  while (v7 != v4);
  return result;
}

uint64_t sub_1003DCA6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100797894();
  v2 = sub_100797874();
  v3 = sub_100797844();

  if (v3)
  {
    v4 = [v3 highlightMenu];
    v5 = [v4 children];

    sub_10000A7C4(0, &qword_100AE8DB0);
    sub_1007A25E4();

    sub_1001F1160(&unk_100AF2640);
    sub_1002CD1B4(&qword_100AE12E8, &unk_100AF2640);
    LOBYTE(v4) = sub_1007A28A4();

    if (v4)
    {
      v6 = [v3 highlightMenu];
      v7 = [v6 children];

      v8 = sub_1007A25E4();
      return v8;
    }

    if (qword_100AD1520 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AE1248);
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "highlightMenu empty for highlight", v13, 2u);
    }
  }

  return 0;
}

uint64_t sub_1003DCCC0(uint64_t a1)
{
  v11 = a1;
  type metadata accessor for ContextActionData();
  sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData);
  sub_1007977A4();
  if (v10 == 1)
  {
    sub_1001FF70C(v9);
    return 0;
  }

  else
  {
    sub_1000077C0(v9, v12);
    sub_10000E3E8(v12, v13);
    v2 = sub_1007975F4();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      sub_100797894();
      v5 = sub_100797874();
      sub_10000E3E8(v12, v13);
      sub_100797674();
      v6 = sub_100797834();
      v4 = v7;

      v2 = v6;
    }

    v8 = sub_1003DCA6C(v2, v4);

    sub_1000074E0(v12);
    return v8;
  }
}

uint64_t _s5Books19ContextMenuProviderC022analyticsAssetPropertyD03forSo07BAAssetgD0_pSg11BookStoreUI0B15ActionDataModelC_tF_0(void *a1)
{
  v2 = sub_100797474();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v18[-v7 - 8];
  v9 = objc_opt_self();
  v10 = a1;
  v11 = [v9 defaultManager];
  sub_100797464();
  v12 = objc_allocWithZone(type metadata accessor for ContextActionData());
  (*(v3 + 16))(v5, v8, v2);
  v13 = sub_1003DC344(v10, v11, v5, v12);
  (*(v3 + 8))(v8, v2);
  if (!v13)
  {
    return 0;
  }

  v22 = v13;
  sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData);
  sub_1007977A4();
  if (v21)
  {

    sub_1001FF70C(v20);
    return 0;
  }

  sub_1000077C0(v20, v19);
  sub_100009864(v19, v18);
  v15 = objc_allocWithZone(sub_100797954());
  v16 = sub_100797944();

  sub_1000074E0(v19);
  return v16;
}

uint64_t sub_1003DD0A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  type metadata accessor for AppShareActionItem();
  swift_allocObject();
  sub_1003DD044(a2, v22);
  v21[3] = type metadata accessor for ContextActionData();
  v21[4] = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData);
  v21[0] = a1;
  v20[3] = &type metadata for ContextMenuPresentationContext;
  v20[4] = sub_1003DD65C();
  v20[0] = swift_allocObject();
  sub_1003DDA00(v22, v20[0] + 16);
  sub_100009864(v21, v19);
  sub_100009864(v20, &v18);
  sub_100009864(a4, v17);
  v11 = a3;
  v12 = a1;
  v13 = sub_100796FA4();
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_100009864(v21, v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1000077C0(v19, v15 + 32);
  sub_1003457A0(0, 0, v10, &unk_1008220C0, v15);

  sub_1000074E0(a4);
  sub_1003DD2F0(a2);
  sub_1000074E0(v20);
  sub_1000074E0(v21);
  return v13;
}

id sub_1003DD344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28[3] = type metadata accessor for ContextActionData();
  v28[4] = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData);
  v28[0] = a1;
  v27[3] = &type metadata for ContextMenuPresentationContext;
  v27[4] = sub_1003DD65C();
  v27[0] = swift_allocObject();
  sub_1003DDA00(a2, v27[0] + 16);
  v8 = type metadata accessor for RemoveActionItem();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5Books16RemoveActionItem_attributes] = 2;
  v10 = OBJC_IVAR____TtC5Books16RemoveActionItem_type;
  v11 = enum case for ContextActionType.remove(_:);
  v12 = sub_100797144();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  sub_100009864(v28, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_data]);
  sub_100009864(v27, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_context]);
  *&v9[OBJC_IVAR____TtC5Books16RemoveActionItem_tracker] = a3;
  sub_100009864(a4, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_figaroProvider]);
  v13 = objc_opt_self();
  v14 = a3;
  v15 = [v13 delegate];
  v16 = [v15 serviceCenter];

  v17 = [objc_opt_self() defaultManager];
  v18 = [v13 delegate];
  v19 = [v18 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() defaultHelper];
    v23 = &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_libraryOperationProvider];
    *(v23 + 3) = &type metadata for MenuLibraryOperationProvider;
    *(v23 + 4) = &off_100A266E8;
    v24 = swift_allocObject();
    *v23 = v24;
    v24[2] = v16;
    v24[3] = v17;
    v24[4] = v19;
    v24[5] = v21;
    v24[6] = v22;
    v26.receiver = v9;
    v26.super_class = v8;
    v25 = objc_msgSendSuper2(&v26, "init");
    sub_1000074E0(a4);
    sub_1000074E0(v27);
    sub_1000074E0(v28);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003DD65C()
{
  result = qword_100AE6F70;
  if (!qword_100AE6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6F70);
  }

  return result;
}

uint64_t sub_1003DD6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DD764()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1003D3B74(v2, v3, v5, v4);
}

uint64_t sub_1003DD824()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1003DD874()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1003CFB00(v2, v3, v5, v4);
}

uint64_t sub_1003DD934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10069E6AC(a1, v4, v5, v6);
}

uint64_t sub_1003DDA5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_100260A78(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003DDB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DDBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = a1;
  v5 = [v4 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1007A2254();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v4 image];

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    if (!v9 && !v10)
    {

LABEL_37:
      swift_unknownObjectWeakDestroy();
      result = swift_unknownObjectWeakDestroy();
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      return result;
    }

    v16 = [v4 menu];
    if (!v16)
    {
      v17 = [v4 menuRepresentation];
      if (v17)
      {
        v18 = v17;
        objc_opt_self();
        isa = swift_dynamicCastObjCClass();
        if (isa)
        {
LABEL_27:
          v16 = isa;
          goto LABEL_28;
        }
      }

      v16 = [v4 menuRepresentation];
      if (v16)
      {
        if (v9)
        {
          v20 = v7;
        }

        else
        {
          v20 = 0;
        }

        v40 = v20;
        if (v9)
        {
          v21 = v9;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        sub_10000A7C4(0, &qword_100AD8170);
        sub_1001F1160(&unk_100AD8160);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100811390;
        *(v22 + 32) = v16;

        v23 = v10;
        v56._countAndFlagsBits = v40;
        v56._object = v21;
        v58.value._countAndFlagsBits = 0;
        v58.value._object = 0;
        v55.value.super.isa = v10;
        v55.is_nil = 0;
        v24.value = 1;
        isa = sub_1007A30C4(v56, v58, v55, v24, 0xFFFFFFFFFFFFFFFFLL, v22, v40).super.super.isa;
        goto LABEL_27;
      }
    }

LABEL_28:
    swift_getObjectType();
    sub_1001F1160(&unk_100AE1410);
    sub_1007A22F4();
    v57._countAndFlagsBits = 0x2E49557466697753;
    v57._object = 0xE800000000000000;
    v25 = sub_1007A2474(v57);

    if (v25)
    {
      swift_unknownObjectWeakAssign();
    }

    v41 = 0;
    [v4 width];
    v43 = v26;
    [v4 _minimumWidth];
    v44 = v27;
    [v4 _maximumWidth];
    v45 = v28;
    v50 = 0;
    v52 = 0;
    v53 = v16;
    v13 = [objc_allocWithZone(type metadata accessor for EllipsisButtonAXAttributesProvider()) init];
    v29 = [objc_allocWithZone(TUIAXAttributes) initWithAXAttributes:v13];
    goto LABEL_42;
  }

  v12 = v11;
  v13 = v4;
  v14 = [v12 buttonType];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 0;
      goto LABEL_33;
    }

LABEL_14:

    goto LABEL_37;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    if (v14 == 2)
    {
      v15 = 2;
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  v15 = 1;
LABEL_33:
  v30 = [v12 attributedTitle];
  v31 = v30;
  if (!v9 && !v30 && !v10)
  {

    goto LABEL_37;
  }

  LOBYTE(v41) = v15;
  v33 = [v12 buttonRole];
  if (v33 >= 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  HIBYTE(v41) = v34;
  [v12 buttonWidth];
  v43 = v35;
  [v12 minButtonWidth];
  v44 = v36;
  [v12 maxButtonWidth];
  v45 = v37;
  v50 = v31;
  v52 = [v12 menuModel];
  v53 = 0;
  v29 = [v12 axAttributes];
LABEL_42:
  v38 = v29;

  v54 = v38;
  v42 = [v4 isEnabled];
  v46 = [v4 target];
  v39 = [v4 action];

  v47 = v39;
  v48 = v7;
  v49 = v9;
  v51 = v10;
  sub_1003DEBC4(&v41, a2);
  return sub_1003DEBFC(&v41);
}

id sub_1003DE228()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHasNonDefaultAttributess] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axDisabled] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_isAXElement] = 1;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axTouchContainer] = 0;
  v26 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axLabel];
  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v17 = sub_1007A22D4();
  v19 = v18;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v20 = v26;
  *v26 = v17;
  v20[1] = v19;
  v21 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axValue];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHint];
  *v22 = 0;
  v22[1] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axButton] = 1;
  v23 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axImage] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHeading] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axAdjustable] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axToggle] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axStaticText] = 0;
  v24 = type metadata accessor for EllipsisButtonAXAttributesProvider();
  v27.receiver = v0;
  v27.super_class = v24;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_1003DE598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EllipsisButtonAXAttributesProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003DE680(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1003DE69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003DE6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1003DE728(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1003DE754(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  if (*(a1 + 5))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_100796E94();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 7);
  v10 = *(a2 + 7);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 6) != *(a2 + 6) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1007A3AB4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1;
    v18 = a2;
    sub_10000A7C4(0, &unk_100AE1400);
    v19 = v16;
    v20 = v15;
    v21 = sub_1007A3184();

    a1 = v17;
    a2 = v18;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = *(a1 + 9);
  v23 = *(a2 + 9);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = a1;
    v25 = a2;
    sub_10000A7C4(0, &qword_100ADDB48);
    v26 = v23;
    v27 = v22;
    v28 = sub_1007A3184();

    a1 = v24;
    a2 = v25;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v29 = *(a1 + 11);
  v30 = *(a2 + 11);
  v40 = a1;
  v41 = a2;
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v30)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100AD8170);
  v31 = v30;
  v32 = v29;
  v33 = sub_1007A3184();

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v34 = *(v40 + 12);
  v35 = *(v41 + 12);
  result = (v34 | v35) == 0;
  if (v34)
  {
    if (v35)
    {
      sub_10000A7C4(0, &qword_100AE13F8);
      v37 = v35;
      v38 = v34;
      v39 = sub_1007A3184();

      return v39 & 1;
    }
  }

  return result;
}

uint64_t sub_1003DEA40(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 != 1)
        {
          return 0;
        }

LABEL_21:
        sub_10000A7C4(0, &qword_100ADAF70);
        return sub_1007A3184() & 1;
      }

      if (a6 == 2)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (a6)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {

      return sub_1007A3AB4();
    }

    return 1;
  }

  if (a3 == 3)
  {
    if (a6 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 4)
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 5 || a4 != 2 || a5)
          {
            return 0;
          }
        }

        else if (a6 != 5 || a4 != 1 || a5)
        {
          return 0;
        }
      }

      else if (a6 != 5 || a5 | a4)
      {
        return 0;
      }

      return 1;
    }

    if (a6 != 4)
    {
      return 0;
    }
  }

  return sub_1004A0F04(a1, a4);
}

uint64_t sub_1003DEC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1003DEC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1003DED2C()
{
  result = qword_100AE1420;
  if (!qword_100AE1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1420);
  }

  return result;
}

unint64_t sub_1003DED84()
{
  result = qword_100AE1428;
  if (!qword_100AE1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1428);
  }

  return result;
}

id sub_1003DEDD8(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView;
  type metadata accessor for AudiobookTOCHeaderView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView;
  v6 = [objc_allocWithZone(UITableView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v5] = v6;
  v7 = &v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex];
  *v7 = 0;
  v7[8] = 1;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop] = 2;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AudiobookTOCViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  sub_10000A7C4(0, &qword_100AE15B0);
  v10 = v9;
  sub_1007A2E04();
  sub_1007A2C44();

  swift_unknownObjectRelease();

  return v10;
}

id sub_1003DEFA0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudiobookTOCViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003DF128()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = type metadata accessor for AudiobookTOCViewController();
  objc_msgSendSuper2(&v84, "viewDidLoad");
  v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v2 configureWithTransparentBackground];
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"didSelectDismissButton"];
  v4 = sub_1007A2214();
  [v3 setAccessibilityIdentifier:v4];

  v5 = [v1 navigationItem];
  [v5 setRightBarButtonItem:v3];

  v6 = [v1 navigationItem];
  [v6 setStandardAppearance:v2];

  v7 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v8 = &v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title];
  *v8 = v82;
  *(v8 + 1) = v83;

  v9 = *&v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel];

  v10 = sub_1007A2214();

  [v9 setText:v10];

  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v11 = &v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author];
  *v11 = v82;
  *(v11 + 1) = v83;

  v12 = *&v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel];

  v13 = sub_1007A2214();

  [v12 setText:v13];

  sub_10042CFD8();
  v14 = sub_1004C1DB0(0);
  v15 = &v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
  *v15 = v14;
  v15[1] = v16;

  v17 = *&v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

  v18 = sub_1007A2214();

  [v17 setText:v18];

  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v19 = v82[2];

  *&v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount] = v19;
  sub_10042C840();
  *&v7[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_delegate + 8] = &off_100A19FA0;
  swift_unknownObjectWeakAssign();
  v20 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];
  v21 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v20 edge:1 style:0];
  [v7 addInteraction:v21];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_1003E24C4(v82);

  [v20 setRowHeight:UITableViewAutomaticDimension];
  [v20 setContentInsetAdjustmentBehavior:2];
  [v20 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [v20 setEstimatedRowHeight:57.0];
  [v20 setDataSource:v1];
  [v20 setDelegate:v1];
  type metadata accessor for AudiobookTOCCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = sub_1007A2214();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v23];

  v24 = [objc_allocWithZone(UIView) init];
  [v20 setTableHeaderView:v24];

  v25 = [objc_allocWithZone(UIView) init];
  [v20 setTableFooterView:v25];

  [v20 directionalLayoutMargins];
  [v20 setDirectionalLayoutMargins:?];
  v26 = [v1 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  v28 = [objc_opt_self() bc_booksBackground];
  [v27 setBackgroundColor:v28];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v30 = v29;
  [v29 addSubview:v20];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  v80 = v3;
  v81 = v2;
  [v31 addSubview:v7];

  [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v34 = v33;
  v35 = [v7 heightAnchor];
  v36 = [v35 constraintEqualToConstant:v34];

  v37 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint];
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint] = v36;
  v38 = v36;

  sub_1001F1160(&unk_100AD8160);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100813130;
  v40 = [v7 topAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v39 + 32) = v44;
  v45 = [v7 leadingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v39 + 40) = v49;
  v50 = [v7 trailingAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v52 = v51;
  v53 = [v51 trailingAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v39 + 48) = v54;
  *(v39 + 56) = v38;
  v55 = v38;
  v56 = [v20 topAnchor];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v56 constraintEqualToAnchor:v59];
  *(v39 + 64) = v60;
  v61 = [v20 leadingAnchor];
  v62 = [v1 view];
  if (!v62)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(v39 + 72) = v65;
  v66 = [v20 trailingAnchor];
  v67 = [v1 view];
  if (!v67)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v68 = v67;
  v69 = [v67 trailingAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(v39 + 80) = v70;
  v71 = [v20 bottomAnchor];
  v72 = [v1 view];
  if (v72)
  {
    v73 = v72;
    v74 = objc_opt_self();
    v75 = [v73 bottomAnchor];

    v76 = [v71 constraintEqualToAnchor:v75];
    *(v39 + 88) = v76;
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v74 activateConstraints:isa];

    [v20 verticalScrollIndicatorInsets];
    [v20 setVerticalScrollIndicatorInsets:v34];
    [v20 setContentInset:{v34, 0.0, 0.0, 0.0}];
    v78 = [objc_opt_self() defaultCenter];
    v79 = [objc_opt_self() sharedApplication];
    [v78 addObserver:v1 selector:"onAppWillEnterForegroundWithNotification:" name:UIApplicationWillEnterForegroundNotification object:v79];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1003DFD80(char a1)
{
  v2 = v1;
  v4 = sub_100796E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AudiobookTOCViewController();
  v35.receiver = v2;
  v35.super_class = v13;
  objc_msgSendSuper2(&v35, "viewWillAppear:", a1 & 1);
  v14 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v15 = &v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex];
  *v15 = v34;
  v15[8] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v16 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v34 >> 62)
  {
    v17 = sub_1007A38D4();
  }

  else
  {
    v17 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];
    sub_100796E24();
    isa = sub_100796DF4().super.isa;
    v32 = v5;
    v20 = v5 + 8;
    (*(v5 + 8))(v12, v4);
    v31 = v18;
    [v18 scrollToRowAtIndexPath:isa atScrollPosition:1 animated:0];

    sub_1001F1160(&qword_100AE1508);
    v21 = *(v5 + 72);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10080B690;
    sub_100796E24();
    if (v16 < 1)
    {
      goto LABEL_7;
    }

    sub_100796E24();
    v20 = *(v23 + 16);
    v24 = *(v23 + 24);
    KeyPath = v20 + 1;
    if (v20 >= v24 >> 1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      *(v23 + 16) = KeyPath;
      (*(v32 + 32))(v23 + v22 + v20 * v21, v9, v4);
LABEL_7:
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      sub_10079B9A4();

      if (v34 >> 62)
      {
        v20 = v34;
        v9 = sub_1007A38D4();
      }

      else
      {
        v9 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = (v9 - 1);
      if (!__OFSUB__(v9, 1))
      {
        break;
      }

      __break(1u);
LABEL_19:
      v23 = sub_10066B92C(v24 > 1, KeyPath, 1, v23);
    }

    if (v16 < v24)
    {
      v26 = v33;
      sub_100796E24();
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        v23 = sub_10066B92C(v27 > 1, v28 + 1, 1, v23);
      }

      *(v23 + 16) = v28 + 1;
      (*(v32 + 32))(v23 + v22 + v28 * v21, v26, v4);
    }

    v29 = sub_1007A25D4().super.isa;

    [v31 reloadRowsAtIndexPaths:v29 withRowAnimation:5];
  }

  sub_1003E0244();
  return sub_1003E05F0(v14);
}

id sub_1003E0244()
{
  v1 = sub_100796E74();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v6 = *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView);
  result = [v6 indexPathsForVisibleRows];
  if (result)
  {
    v8 = result;
    v9 = sub_1007A25E4();

    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      v14 = *(v2 + 16);
      v13 = v2 + 16;
      v12 = v14;
      v27[1] = v10;
      v27[2] = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      v31 = (v13 - 8);
      v32 = v16;
      v28 = v14;
      v29 = v1;
      v14(v5, v15, v1);
      while (1)
      {
        isa = sub_100796DF4().super.isa;
        v18 = [v6 cellForRowAtIndexPath:isa];

        if (!v18)
        {
          goto LABEL_6;
        }

        type metadata accessor for AudiobookTOCCell();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          goto LABEL_5;
        }

        v20 = v19;
        v21 = v6;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        v22 = v34;
        if (v22 == sub_100796E34())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4();

          v23 = (v33 & 1) == 0;
        }

        else
        {
          v23 = 2;
        }

        v6 = v21;
        if (v23 != *(v20 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState))
        {
          break;
        }

        v1 = v29;
        (*v31)(v5, v29);

        v12 = v28;
LABEL_7:
        v15 += v32;
        if (!--v11)
        {
        }

        v12(v5, v15, v1);
      }

      *(v20 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = v23;
      v24 = *(v20 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator);
      v12 = v28;
      v1 = v29;
      if (v23)
      {
        [v24 setHidden:v23 != 1];
        v26 = *&v24[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
        *&v24[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
        if (v26 == 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
        [v24 setHidden:0];
        v25 = *&v24[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
        *&v24[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 1;
        if (v25 == 1)
        {
          goto LABEL_5;
        }
      }

      sub_100394C64();
LABEL_5:

LABEL_6:
      (*v31)(v5, v1);
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1003E05F0(uint64_t a1)
{
  v91 = sub_1001F1160(&unk_100AE1510);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v69 - v2;
  v3 = sub_1001F1160(&qword_100AD81E0);
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin(v3);
  v90 = &v69 - v5;
  v85 = sub_1001F1160(&unk_100AE1520);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v69 - v6;
  v87 = sub_1001F1160(&qword_100AD8220);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v69 - v7;
  v79 = sub_1001F1160(&unk_100AE1530);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v69 - v8;
  v81 = sub_1001F1160(&qword_100AD8200);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v69 - v9;
  v97 = sub_1001F1160(&qword_100AE1540);
  v101 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v69 - v10;
  v98 = sub_1001F1160(&unk_100AE1548);
  v102 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v69 - v11;
  v73 = sub_1001F1160(&qword_100AD81B0);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v69 - v12;
  v75 = sub_1001F1160(&qword_100AE1558);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v69 - v13;
  v14 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v69 - v15;
  v17 = sub_1001F1160(&unk_100AD8250);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - v19;
  v108 = sub_1001F1160(&qword_100AE1560);
  v21 = *(v108 - 8);
  __chkstk_darwin(v108);
  v23 = &v69 - v22;
  v103 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260);
  sub_10079B974();
  swift_endAccess();
  v24 = sub_10000A7C4(0, &qword_100AD1E10);
  v25 = sub_1007A2D74();
  v110 = v25;
  v100 = sub_1007A2D24();
  v26 = *(v100 - 8);
  v104 = *(v26 + 56);
  v109 = v26 + 56;
  v104(v16, 1, 1, v100);
  v107 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250);
  v106 = sub_100017E1C();
  sub_10079BAB4();
  sub_100201E64(v16);

  (*(v18 + 8))(v20, v17);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560);
  v27 = v108;
  sub_10079BB04();

  (*(v21 + 8))(v23, v27);
  v108 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120);
  v28 = v71;
  sub_10079B974();
  swift_endAccess();
  v99 = v24;
  v29 = sub_1007A2D74();
  v110 = v29;
  v30 = v16;
  v70 = v16;
  v31 = v16;
  v32 = v100;
  v33 = v104;
  v104(v31, 1, 1, v100);
  sub_100005920(&unk_100AD8320, &qword_100AD81B0);
  v34 = v72;
  v35 = v73;
  sub_10079BAB4();
  sub_100201E64(v30);

  v74[1](v28, v35);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AE1568, &qword_100AE1558);
  v36 = v75;
  sub_10079BB04();

  (*(v76 + 8))(v34, v36);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v76 = sub_1001F1160(&unk_100AE1570);
  v37 = v96;
  sub_10079B974();
  swift_endAccess();
  v38 = sub_1007A2D74();
  v110 = v38;
  v39 = v70;
  v33(v70, 1, 1, v32);
  v75 = sub_100005920(&qword_100AF2950, &qword_100AE1540);
  v40 = v95;
  v41 = v39;
  v42 = v97;
  sub_10079BAB4();
  sub_100201E64(v41);

  v43 = *(v101 + 8);
  v101 += 8;
  v74 = v43;
  (v43)(v37, v42);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = sub_100005920(&unk_100AE1580, &unk_100AE1548);
  v44 = v98;
  sub_10079BB04();

  v45 = *(v102 + 8);
  v102 += 8;
  v72 = v45;
  (v45)(v40, v44);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0);
  v46 = v77;
  sub_10079B974();
  swift_endAccess();
  v47 = sub_1007A2D74();
  v110 = v47;
  v48 = v100;
  v49 = v104;
  v104(v41, 1, 1, v100);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v50 = v78;
  v51 = v79;
  sub_10079BAB4();
  sub_100201E64(v41);

  (*(v80 + 8))(v46, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AD82D8, &qword_100AD8200);
  v52 = v81;
  sub_10079BB04();

  (*(v82 + 8))(v50, v52);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5120);
  v53 = v83;
  sub_10079B974();
  swift_endAccess();
  v54 = sub_1007A2D74();
  v110 = v54;
  v49(v41, 1, 1, v48);
  sub_100005920(&qword_100AD82B0, &unk_100AE1520);
  v55 = v84;
  v56 = v85;
  sub_10079BAB4();
  sub_100201E64(v41);

  (*(v86 + 8))(v53, v56);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AE1590, &qword_100AD8220);
  v57 = v87;
  sub_10079BB04();

  (*(v88 + 8))(v55, v57);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD50D0);
  v58 = v89;
  sub_10079B974();
  swift_endAccess();
  v59 = sub_1007A2D74();
  v110 = v59;
  v104(v41, 1, 1, v48);
  sub_100005920(&unk_100AE15A0, &unk_100AE1510);
  v60 = v90;
  v61 = v91;
  sub_10079BAB4();
  sub_100201E64(v41);

  (*(v92 + 8))(v58, v61);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AD8300, &qword_100AD81E0);
  v62 = v93;
  sub_10079BB04();

  (*(v94 + 8))(v60, v62);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v63 = v96;
  sub_10079B974();
  swift_endAccess();
  v64 = sub_1007A2D74();
  v110 = v64;
  v104(v41, 1, 1, v100);
  v65 = v95;
  v66 = v97;
  sub_10079BAB4();
  sub_100201E64(v41);

  (v74)(v63, v66);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = v98;
  sub_10079BB04();

  (v72)(v65, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

uint64_t sub_1003E1ADC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables;
  swift_beginAccess();
  v19 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_1000228F4(&qword_100AE1500, &type metadata accessor for AnyCancellable);
    result = sub_1007A2864();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
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

    v9 = v12 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v3;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_18:
      sub_10004DC54();

      *(v1 + v19) = &_swiftEmptySetSingleton;
    }

    while (1)
    {
      sub_10079B874();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1003E1E08(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint];
  if (v2)
  {
    v3 = v2;
    [v3 setActive:0];
    [*&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    [v3 setConstant:v4];
    [v3 setActive:1];
    [a1 updateViewConstraints];
  }

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass] == 1 || objc_msgSend(v5, "verticalSizeClass") == 1;
  v7 = *&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  *(v7 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_compactMode) = v6;
  v8 = *(v7 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton);
  v8[OBJC_IVAR____TtC5Books25SupplementalContentButton_compactMode] = v6;
  [v8 setNeedsLayout];
  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_1003E24C4(v9);
}

void sub_1003E1FC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
  v2 = sub_1004C1DB0(0);
  v3 = (v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining);
  *v3 = v2;
  v3[1] = v4;

  v5 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel);

  v6 = sub_1007A2214();

  [v5 setText:v6];

  sub_10042CFD8();
}

id sub_1003E2158()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    if ([objc_opt_self() isMainThread])
    {
      v12 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];

      return [v12 reloadData];
    }

    else
    {
      sub_10000A7C4(0, &qword_100AD1E10);
      v18 = v3;
      v17 = sub_1007A2D74();
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      aBlock[4] = sub_1003E3AE0;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A19FD8;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000228F4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
      sub_1007A3594();
      v16 = v17;
      sub_1007A2D94();
      _Block_release(v14);

      (*(v18 + 8))(v5, v2);
      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_1003E24C4(void *a1)
{
  v3 = a1;
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v3 = v11;
  }

  v4 = a1;
  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    v7 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
    if (!v3)
    {
      goto LABEL_8;
    }

    v8 = [v3 imageWithTint:v7];

    v3 = v8;
  }

  if (!v3)
  {
    return;
  }

  v9 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  v10 = *(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage);
  *(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage) = v3;
  v7 = v3;

  [*(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView) setImage:v7];
LABEL_8:
}

id sub_1003E2770(void *a1)
{
  v4 = sub_100796E34();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v33 >> 62)
  {
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 >= v5)
  {
    return [objc_allocWithZone(UITableViewCell) init];
  }

  v6 = sub_1007A2214();
  v7 = [a1 dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    return [objc_allocWithZone(UITableViewCell) init];
  }

  type metadata accessor for AudiobookTOCCell();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    return [objc_allocWithZone(UITableViewCell) init];
  }

  v9 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((v33 & 0xC000000000000001) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
    }

    else if (v4 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v33 + 8 * v4 + 32);

      goto LABEL_10;
    }

    __break(1u);
LABEL_34:
    swift_once();
LABEL_17:
    v25 = [qword_100B22FF0 stringFromTimeInterval:v2];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1007A2254();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = (v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime);
    *v30 = v27;
    v30[1] = v29;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (v33 == v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v31 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState;
      if (v33 == 1)
      {
        *(v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = 0;
LABEL_29:
        sub_1004FBDC8();
        *(v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden) = *(v1 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex + 8) & 1 | (v4 != *(v1 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex));
        [*(v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView) setHidden:?];

        return v9;
      }

      v32 = 1;
    }

    else
    {
      v31 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState;
      v32 = 2;
    }

    *(v9 + v31) = v32;
    goto LABEL_29;
  }

  v10 = sub_1007A3784();
LABEL_10:

  v11 = *(v10 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v12 = v11 / *&v33;
  if (*&v33 <= 0.0)
  {
    v12 = v11;
  }

  v13 = *(v10 + 24);
  v14 = (v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle);
  if (v12 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v12;
  }

  *v14 = *(v10 + 16);
  v14[1] = v13;

  v15 = *(v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel);

  v16 = sub_1007A2214();
  [v15 setText:v16];

  result = [objc_opt_self() stringWithDuration:v2];
  if (result)
  {
    v18 = result;
    v19 = sub_1007A2254();
    v21 = v20;

    v22 = (v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime);
    *v22 = v19;
    v22[1] = v21;

    v23 = *(v9 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel);

    v24 = sub_1007A2214();

    [v23 setText:v24];

    if (qword_100AD13F0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1003E2EB0(void *a1)
{
  v2 = [a1 panGestureRecognizer];
  v3 = [v1 view];
  [v2 velocityInView:v3];
  v5 = v4;
  v6 = v4;

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = fabs(v5);
  if (v7 >= 1.84467441e19)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1003E2FC4(void *a1)
{
  [a1 contentOffset];
  v4 = v3;
  [a1 contentInset];
  v6 = 15.0 - v5;
  v7 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop;
  v8 = *(v1 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop);
  if (v8 == 2 || (((v4 < 15.0 - v5) ^ v8) & 1) != 0)
  {
    v9 = _UISolariumEnabled();
    if (v4 < v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    sub_1003E2EB0(a1);
    sub_10042A38C(v10, v11);
    *(v1 + v7) = v4 < v6;
  }
}

void sub_1003E30E8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003E24C4(v1);
  }
}

void sub_1003E3144()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel);
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
    v4 = v1;
    v5 = sub_1004C1DB0(0);
    v7 = v6;

    v8 = &v3[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
    *v8 = v5;
    v8[1] = v7;

    v9 = *&v3[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

    v10 = sub_1007A2214();

    [v9 setText:v10];

    sub_10042CFD8();
    sub_1003E2158();
  }
}

void sub_1003E3254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003E0244();
  }
}

void sub_1003E32A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView);
    v3 = [v2 window];
    if (v3)
    {

      sub_1001F1160(&qword_100AE1508);
      sub_100796E74();
      *(swift_allocObject() + 16) = xmmword_10080B690;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      sub_100796E24();
      isa = sub_1007A25D4().super.isa;

      [v2 reloadRowsAtIndexPaths:isa withRowAnimation:5];
    }
  }
}

void sub_1003E346C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel);
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
    v4 = v1;
    v5 = sub_1004C1DB0(0);
    v7 = v6;

    v8 = &v3[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
    *v8 = v5;
    v8[1] = v7;

    v9 = *&v3[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

    v10 = sub_1007A2214();

    [v9 setText:v10];

    sub_10042CFD8();
  }
}

void sub_1003E3574(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex;
    if ((*(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex + 8) & 1) != 0 || v1 != *v4)
    {
      *v4 = v1;
      *(v4 + 8) = 0;
      sub_1003E2158();
      v3[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop] = 2;
    }
  }
}

void sub_1003E360C()
{
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView;
  type metadata accessor for AudiobookTOCHeaderView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView;
  v4 = [objc_allocWithZone(UITableView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop) = 2;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_1003E3740()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1003E3B04;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A028;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228F4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1003E3A34()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) goToChapterIndex:sub_100796E34()];
    [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC) dismissViewControllerAnimated:1 completion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

id static OS_os_log.carPlay.getter()
{
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE15E0;

  return v1;
}

uint64_t sub_1003E3C04()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AE15E0 = result;
  return result;
}

id sub_1003E3C68(float a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
    v2 = *(v1 + 16);
    swift_getKeyPath();
    sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel);
    sub_100797A14();

    LODWORD(v3) = *(v1 + 32);
    return [v2 setPlaybackRateTo:v3];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel);
    sub_100797A04();
  }
}

float sub_1003E3E08()
{
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel);
  sub_100797A14();

  return *(v0 + 32);
}

float sub_1003E3EA8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel);
  sub_100797A14();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

id sub_1003E3F50(uint64_t a1, float a2)
{
  *(a1 + 32) = a2;
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel);
  sub_100797A14();

  LODWORD(v4) = *(a1 + 32);
  return [v3 setPlaybackRateTo:v4];
}

uint64_t sub_1003E4010()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC5Books23NarrationSpeedViewModel___observationRegistrar;
  v2 = sub_100797A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003E40F4()
{
  result = sub_100797A54();
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

double sub_1003E4218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AE17E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  *v8 = sub_10079CB24();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_1001F1160(&qword_100AE17E8);
  sub_1003E43C0(a1, a2, &v8[*(v9 + 44)]);
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  v11 = sub_10079D2A4();
  *(inited + 32) = v11;
  v12 = sub_10079D284();
  *(inited + 33) = v12;
  v13 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v11)
  {
    v13 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v12)
  {
    v13 = sub_10079D2D4();
  }

  sub_1000379AC(v8, a3);
  v14 = a3 + *(sub_1001F1160(&qword_100AE17F8) + 36);
  *v14 = v13;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  return result;
}

uint64_t sub_1003E43C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v67 = sub_10079C404();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1001F1160(&qword_100AE1800);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v6;
  v59 = sub_1001F1160(&qword_100AE1808);
  __chkstk_darwin(v59);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v53 - v10;
  v55 = sub_1001F1160(&qword_100AE1810);
  __chkstk_darwin(v55);
  v12 = &v53 - v11;
  v62 = sub_1001F1160(&qword_100AE1818);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v53 - v15;
  sub_1001F1160(&qword_100AE1820);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080EFF0;
  v17 = sub_10079D254();
  *(v16 + 32) = v17;
  v18 = sub_10079D274();
  *(v16 + 33) = v18;
  v19 = sub_10079D264();
  sub_10079D264();
  if (sub_10079D264() != v17)
  {
    v19 = sub_10079D264();
  }

  sub_10079D264();
  if (sub_10079D264() != v18)
  {
    v19 = sub_10079D264();
  }

  sub_1003E4CAC(&v86);
  v82 = v90;
  v83[0] = v91[0];
  *(v83 + 9) = *(v91 + 9);
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v90;
  v85[0] = v91[0];
  *(v85 + 9) = *(v91 + 9);
  sub_1000077D8(&v78, v77, &qword_100AE1828);
  sub_100007840(v84, &qword_100AE1828);
  *&v93[55] = v81;
  *&v93[71] = v82;
  *&v93[87] = v83[0];
  *&v93[96] = *(v83 + 9);
  *&v93[7] = v78;
  *&v93[23] = v79;
  *&v93[39] = v80;
  v20 = sub_10079D354();
  KeyPath = swift_getKeyPath();
  v22 = sub_10079CE74();
  *(&v77[3] + 1) = *&v93[48];
  *(&v77[4] + 1) = *&v93[64];
  *(&v77[5] + 1) = *&v93[80];
  *(&v77[6] + 1) = *&v93[96];
  *(v77 + 1) = *v93;
  *(&v77[1] + 1) = *&v93[16];
  LOBYTE(v77[0]) = v19;
  *(&v77[2] + 1) = *&v93[32];
  *(&v77[7] + 1) = KeyPath;
  *&v77[8] = v20;
  DWORD2(v77[8]) = v22;
  v23 = enum case for DynamicTypeSize.accessibility1(_:);
  v24 = sub_10079C0E4();
  (*(*(v24 - 8) + 104))(v12, v23, v24);
  sub_1003E5804(&qword_100AE1830, &type metadata accessor for DynamicTypeSize);
  result = sub_1007A2124();
  if (result)
  {
    sub_1001F1160(&qword_100AE1838);
    sub_1003E5590();
    v54 = v8;
    sub_100005920(&qword_100ADBBF8, &qword_100AE1810);
    sub_10079D7E4();
    sub_100007840(v12, &qword_100AE1810);
    v91[1] = v77[6];
    v92[0] = v77[7];
    *(v92 + 12) = *(&v77[7] + 12);
    v88 = v77[2];
    v89 = v77[3];
    v90 = v77[4];
    v91[0] = v77[5];
    v86 = v77[0];
    v87 = v77[1];
    sub_100007840(&v86, &qword_100AE1838);
    *&v77[0] = a1;
    *(&v77[0] + 1) = a2;
    sub_1001F1160(&qword_100AE1880);
    sub_10079DFF4();
    v27 = *(v72 + 40);
    v26 = *(v72 + 48);

    v75 = v27;
    v76 = v26;
    v72 = a1;
    v73 = a2;
    sub_10079E014();
    v28 = v77[0];
    v29 = *&v77[1];
    swift_getKeyPath();
    v77[0] = v28;
    *&v77[1] = v29;
    sub_1001F1160(&qword_100AE1888);
    sub_10079E1E4();

    v30 = v72;
    v31 = v73;
    v32 = v74;

    v69 = v30;
    v70 = v31;
    v71 = v32;
    __chkstk_darwin(v33);
    sub_1001F1160(&qword_100AE1890);
    sub_1003E5734();
    sub_100206ECC();
    v34 = v58;
    sub_10079E114();
    v35 = v64;
    sub_10079C3F4();
    sub_100005920(&qword_100AE18A8, &qword_100AE1800);
    v37 = v66;
    v36 = v67;
    v38 = v63;
    sub_10079D704();
    (*(v65 + 8))(v35, v36);
    (*(v61 + 8))(v34, v38);
    LOBYTE(v30) = sub_10079D2A4();
    sub_10079BBA4();
    v39 = v60;
    v40 = v37 + *(v59 + 36);
    *v40 = v30;
    *(v40 + 8) = v41;
    *(v40 + 16) = v42;
    *(v40 + 24) = v43;
    *(v40 + 32) = v44;
    *(v40 + 40) = 0;
    v45 = *(v39 + 16);
    v46 = v57;
    v47 = v68;
    v48 = v62;
    v45(v57, v68, v62);
    v49 = v54;
    sub_100037A50(v37, v54);
    v50 = v56;
    v45(v56, v46, v48);
    v51 = sub_1001F1160(&qword_100AE18B0);
    sub_100037A50(v49, &v50[*(v51 + 48)]);
    sub_100037AC0(v37);
    v52 = *(v39 + 8);
    v52(v47, v48);
    sub_100037AC0(v49);
    return (v52)(v46, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E4CAC@<X0>(uint64_t a1@<X8>)
{
  sub_1001F1160(&qword_100AE1880);
  sub_10079DFF4();

  sub_100206ECC();
  v23 = sub_10079D5D4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v8 = v5 & 1;
  v22 = v5 & 1;
  LOBYTE(v31[0]) = 0;
  sub_10079DFF4();

  v9 = sub_10079D5D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_getKeyPath();
  *&v25 = v23;
  *(&v25 + 1) = v3;
  LOBYTE(v26) = v8;
  *(&v26 + 1) = v7;
  *v27 = KeyPath;
  *&v27[8] = 1;
  v27[16] = 0;
  *&v27[17] = 257;
  v28 = v25;
  v29 = v26;
  *v30 = *v27;
  *&v30[15] = *&v27[15];
  v17 = v25;
  v18 = *v30;
  v19 = *&v30[16];
  *(a1 + 16) = v26;
  *(a1 + 32) = v18;
  *a1 = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13 & 1;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = 2;
  *(a1 + 104) = 0;
  sub_1000077D8(&v25, v31, &qword_100AE18E8);
  sub_1001F1894(v9, v11, v13 & 1);

  sub_10020B430(v9, v11, v13 & 1);

  v31[0] = v23;
  v31[1] = v3;
  v32 = v22;
  *v33 = *v24;
  *&v33[3] = *&v24[3];
  v34 = v7;
  v35 = KeyPath;
  v36 = 1;
  v37 = 0;
  v38 = 257;
  return sub_100007840(v31, &qword_100AE18E8);
}

uint64_t sub_1003E4F20()
{
  sub_1001F1160(&qword_100AE1880);
  sub_10079DFF4();

  swift_getKeyPath();
  sub_1001F1160(&qword_100AE18B8);
  sub_100005920(&qword_100AE18C0, &qword_100AE18B8);
  return sub_10079E264();
}

uint64_t sub_1003E503C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796CF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001F1160(&qword_100AE18C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_10079C974();
  __chkstk_darwin(v9 - 8);
  v10 = *a1;
  sub_10079C964();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10079C954(v18);
  v17[3] = v10;
  sub_100796C74();
  sub_1003E57B0();
  sub_100796844();
  sub_100005920(&qword_100AE18D8, &qword_100AE18C8);
  sub_10079C944();
  (*(v6 + 8))(v8, v5);
  v19._countAndFlagsBits = 38851;
  v19._object = 0xA200000000000000;
  sub_10079C954(v19);
  sub_10079C994();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_10079D5B4();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

id sub_1003E52F4(uint64_t a1, void *a2)
{
  type metadata accessor for NarrationSpeedViewModel(0);
  swift_allocObject();
  sub_1003E586C(a1);
  sub_10079DFE4();
  v4 = sub_10079CBC4();
  [v4 setModalPresentationStyle:7];
  [v4 setOverrideUserInterfaceStyle:2];
  [v4 setPreferredContentSize:{250.0, 225.0}];
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = [v4 popoverPresentationController];
    if (v8)
    {
      [v8 setSourceView:a2];
      [v8 setDelegate:v4];
    }

    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003E5590()
{
  result = qword_100AE1840;
  if (!qword_100AE1840)
  {
    sub_1001F1234(&qword_100AE1838);
    sub_1003E5648();
    sub_100005920(&qword_100AE1868, &unk_100AE1870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1840);
  }

  return result;
}

unint64_t sub_1003E5648()
{
  result = qword_100AE1848;
  if (!qword_100AE1848)
  {
    sub_1001F1234(&qword_100AE1850);
    sub_100005920(&qword_100AE1858, &qword_100AE1860);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1848);
  }

  return result;
}

unint64_t sub_1003E5734()
{
  result = qword_100AE1898;
  if (!qword_100AE1898)
  {
    sub_1001F1234(&qword_100AE1890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1898);
  }

  return result;
}

unint64_t sub_1003E57B0()
{
  result = qword_100AE18D0;
  if (!qword_100AE18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE18D0);
  }

  return result;
}

uint64_t sub_1003E5804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E586C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_1007A21D4();
  v40 = v8;
  v43 = *(v8 - 8);
  v9 = v43;
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_1007A2154();
  sub_100796C94();
  v44 = *(v9 + 16);
  v44(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = ObjCClassFromMetadata;
  v41 = objc_opt_self();
  v16 = [v41 bundleForClass:ObjCClassFromMetadata];
  v39 = *(v2 + 16);
  v35 = v1;
  v36 = v4;
  v39(v4, v7, v1);
  v17 = sub_1007A22D4();
  v19 = v18;
  v20 = *(v2 + 8);
  v37 = v2 + 8;
  v38 = v20;
  v20(v7, v1);
  v43 = *(v43 + 8);
  v21 = v40;
  (v43)(v14, v40);
  v22 = v45;
  *(v45 + 40) = v17;
  *(v22 + 48) = v19;
  v23 = v22;
  sub_1007A2154();
  sub_100796C94();
  v44(v11, v14, v21);
  v24 = [v41 bundleForClass:v42];
  v25 = v35;
  v39(v36, v7, v35);
  v26 = sub_1007A22D4();
  v28 = v27;
  v38(v7, v25);
  (v43)(v14, v21);
  *(v23 + 56) = v26;
  *(v23 + 64) = v28;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  *(v23 + 16) = v46;
  v29 = swift_unknownObjectRetain();
  [v29 playbackRate];
  *(v23 + 32) = v30;
  v31 = [v29 playbackRates];
  v32 = sub_1007A25E4();

  *(v23 + 24) = v32;
  return v23;
}

unint64_t sub_1003E5C64()
{
  result = qword_100AE18F0;
  if (!qword_100AE18F0)
  {
    sub_1001F1234(&qword_100AE17F8);
    sub_100005920(&qword_100AE18F8, &qword_100AE17E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE18F0);
  }

  return result;
}

uint64_t WidgetService.setupService(libraryManager:onWidgetConfigurationChangeCallback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001F1160(&qword_100AF4290);
  __chkstk_darwin(v8 - 8);
  v57 = &v47 - v9;
  v48 = sub_1007A3354();
  v56 = *(v48 - 8);
  __chkstk_darwin(v48);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A2E74();
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AE19C0);
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v49 = sub_1001F1160(&unk_100AE19C8);
  v58 = *(v49 - 8);
  __chkstk_darwin(v49);
  v17 = &v47 - v16;
  v52 = *&v3[OBJC_IVAR___BKWidgetService__setupState];
  sub_100798B74();
  v18 = *&v3[OBJC_IVAR___BKWidgetService_libraryManager];
  *&v4[OBJC_IVAR___BKWidgetService_libraryManager] = a1;
  v19 = a1;

  v20 = &v4[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback];
  v21 = *&v4[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback];
  *v20 = a2;
  *(v20 + 1) = a3;

  sub_100007020(v21);
  v22 = [objc_allocWithZone(BDSBookWidgetInfoManager) init];
  v23 = OBJC_IVAR___BKWidgetService_widgetInfoManager;
  v24 = *&v4[OBJC_IVAR___BKWidgetService_widgetInfoManager];
  *&v4[OBJC_IVAR___BKWidgetService_widgetInfoManager] = v22;

  v25 = sub_1007A29D4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v26 = sub_1007A33D4();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136315138;
    v59 = *&v4[v23];
    v60[0] = v28;
    v29 = v59;
    sub_1001F1160(&qword_100AE1A08);
    v30 = sub_1007A22E4();
    v32 = sub_1000070F4(v30, v31, v60);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v25, "WidgetService: set widgetInfoManager %s", v27, 0xCu);
    sub_1000074E0(v28);
  }

  v33 = [objc_opt_self() shared];
  [v33 addObserver:v4];

  v34 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  v35 = v53;
  sub_1007A3344();
  v36 = [objc_opt_self() mainRunLoop];
  v60[0] = v36;
  v37 = sub_1007A3324();
  v38 = v57;
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  sub_10000A7C4(0, &qword_100AE19D8);
  sub_100005B5C();
  sub_1003E6568();
  v39 = v47;
  v40 = v51;
  sub_10079BAC4();
  sub_100007840(v38, &qword_100AF4290);

  (*(v56 + 8))(v35, v48);
  (*(v50 + 8))(v13, v40);
  sub_1001F1160(&qword_100AE19F0);
  sub_100005920(&qword_100AE19F8, &qword_100AE19C0);
  v41 = v55;
  sub_10079BA24();
  (*(v54 + 8))(v39, v41);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AE1A00, &unk_100AE19C8);
  v42 = v49;
  sub_10079BB04();

  (*(v58 + 8))(v17, v42);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v43 = swift_allocObject();
  *(v43 + 16) = v4;
  sub_1007A2004();
  v44 = v4;
  sub_1007A1FF4();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1003E68CC;
  *(v45 + 24) = v43;

  sub_1007A1FE4();

  return sub_100798B74();
}

unint64_t sub_1003E6568()
{
  result = qword_100AE19E8;
  if (!qword_100AE19E8)
  {
    sub_10000A7C4(255, &qword_100AE19D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE19E8);
  }

  return result;
}

uint64_t sub_1003E65D0@<X0>(void *a1@<X8>)
{
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_1007A2254();
  sub_1007A36B4();
  if (!*(v3 + 16) || (v4 = sub_10000E2A4(v7), (v5 & 1) == 0))
  {

    sub_10002899C(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100007484(*(v3 + 56) + 32 * v4, &v8);
  sub_10002899C(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    result = sub_100007840(&v8, &unk_100AD5B40);
    goto LABEL_10;
  }

  sub_1001F1160(&qword_100AE19F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *a1 = 0;
  }

  return result;
}

void sub_1003E66E4(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003E68D8(v1);
  }
}

void sub_1003E6748(char a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    if (qword_100AD1538 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = qword_100AE1960;
    v6 = *algn_100AE1968;
    v7 = byte_100AE1970;
    v8 = qword_100AE1978;

    v9 = v8;
    LODWORD(v5) = sub_100026244(v5, v6, v7, v9) & 1;

    if (v5 != (a1 & 1))
    {
      swift_beginAccess();
      v10 = qword_100AE1978;
      v11 = sub_1007A3B04();
      v12 = sub_1007A2214();
      [v10 setObject:v11 forKey:v12];
      swift_endAccess();
      swift_unknownObjectRelease();

      v13 = *(a3 + OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback);
      if (v13)
      {

        v13(v14);
        sub_100007020(v13);
      }
    }
  }
}

uint64_t sub_1003E68D8(unint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v110 = &v106 - v3;
  v4 = sub_100796DA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v117 = &v106 - v9;
  v10 = sub_100796BB4();
  v115 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v106 - v14;
  v16 = sub_1001F1160(&qword_100ADD650);
  __chkstk_darwin(v16 - 8);
  v123 = &v106 - v17;
  v18 = sub_1001F1160(&qword_100AE1A50);
  __chkstk_darwin(v18 - 8);
  v122 = (&v106 - v19);
  v20 = sub_100796674();
  v120 = *(v20 - 8);
  v121 = v20;
  __chkstk_darwin(v20);
  v124 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1007A29D4();
  v23 = sub_10000A7C4(0, &qword_100AD20A0);
  v24 = sub_1007A33D4();
  v113 = v22;
  v25 = os_log_type_enabled(v24, v22);
  v111 = v23;
  v116 = v7;
  v114 = v12;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = swift_slowAlloc();
  v108 = swift_slowAlloc();
  v127[0] = v108;
  v109 = v26;
  *v26 = 136315138;
  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    if (i)
    {
      v126[0] = _swiftEmptyArrayStorage;
      v28 = v126;
      sub_1003BD4C8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_90;
      }

      v106 = v5;
      v118 = v4;
      v119 = v15;
      v107 = v10;
      v29 = 0;
      v30 = v126[0];
      v31 = a1 & 0xC000000000000001;
      v32 = a1;
      do
      {
        if (v31)
        {
          v33 = sub_1007A3784();
        }

        else
        {
          v33 = *(a1 + 8 * v29 + 32);
        }

        v34 = v33;
        v35 = v24;
        v36 = [v33 title];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1007A2254();
          v40 = v39;
        }

        else
        {

          v38 = 0;
          v40 = 0;
        }

        v126[0] = v30;
        v42 = v30[2];
        v41 = v30[3];
        if (v42 >= v41 >> 1)
        {
          sub_1003BD4C8((v41 > 1), v42 + 1, 1);
          v30 = v126[0];
        }

        ++v29;
        v30[2] = v42 + 1;
        v43 = &v30[2 * v42];
        v43[4] = v38;
        v43[5] = v40;
        v24 = v35;
        a1 = v32;
      }

      while (i != v29);
      v10 = v107;
      v4 = v118;
      v15 = v119;
      v5 = v106;
    }

    sub_1001F1160(&qword_100AD4F30);
    v44 = sub_1007A25F4();
    v46 = v45;

    v47 = sub_1000070F4(v44, v46, v127);

    v48 = v109;
    *(v109 + 1) = v47;
    _os_log_impl(&_mh_execute_header, v24, v113, "WidgetService: handleRecentBooksChange %s", v48, 0xCu);
    sub_1000074E0(v108);

LABEL_18:

    v49 = v5;
    (*(v5 + 56))(v122, 1, 1, v4);
    v50 = sub_100796DE4();
    (*(*(v50 - 8) + 56))(v123, 1, 1, v50);
    v105 = 1;
    v104 = 0;
    v103 = 1;
    v102 = 0;
    v51 = v124;
    sub_100796664();
    v127[0] = a1;
    sub_1001F1160(&qword_100AE19F0);
    sub_100005920(&qword_100AE1A58, &qword_100AE19F0);
    if ((sub_1007A28A4() & 1) == 0)
    {
      return (*(v120 + 8))(v51, v121);
    }

    v119 = v15;
    v52 = v10;
    v53 = v116;
    sub_100796D64();
    v118 = v4;
    v4 = v114;
    sub_100796BA4();
    v54 = v117;
    sub_100796D54();
    v55 = v115;
    v56 = (v115 + 8);
    v28 = *(v115 + 8);
    (v28)(v4, v52);
    v57 = v53;
    v22 = v52;
    (*(v49 + 8))(v57, v118);
    if ((*(v55 + 48))(v54, 1, v52) == 1)
    {
      (*(v120 + 8))(v51, v121);
      return sub_100007840(v54, &unk_100ADB5C0);
    }

    v123 = v56;
    v59 = *(v55 + 32);
    v10 = (v55 + 32);
    v15 = v119;
    v60 = v59(v119, v54, v22);
    v127[0] = _swiftEmptyArrayStorage;
    if (!(a1 >> 62))
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_90:
    v60 = sub_1007A38D4();
    v5 = v60;
LABEL_24:
    v122 = v28;
    v24 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      break;
    }

    v107 = v22;
    v61 = 0;
    v15 = (a1 & 0xC000000000000001);
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
    while (1)
    {
      if (v15)
      {
        v62 = sub_1007A3784();
      }

      else
      {
        if (v61 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v62 = *(a1 + 8 * v61 + 32);
      }

      v63 = v62;
      v22 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if ([v62 isSupplementalContent])
      {
      }

      else
      {
        sub_1007A37D4();
        v10 = *(v127[0] + 16);
        sub_1007A3804();
        sub_1007A3814();
        v60 = sub_1007A37E4();
      }

      ++v61;
      if (v22 == v5)
      {
        v64 = v127[0];
        v22 = v107;
        v15 = v119;
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_37:
  __chkstk_darwin(v60);
  v104 = v15;
  swift_retain_n();
  a1 = 0;
  v65 = sub_1003CD774(sub_1003EA7F0, &v102, v64);
  v5 = v65;
  v66 = v65 >> 62;
  if (v65 >> 62)
  {
    v69 = sub_1007A38D4();
    if (sub_1007A38D4() < 0)
    {
      __break(1u);
LABEL_93:
      v5 = sub_1007A38D4();
      if ((sub_1007A38D4() & 0x8000000000000000) == 0)
      {
        v74 = sub_1007A38D4();
        goto LABEL_57;
      }

      goto LABEL_96;
    }

    while (1)
    {
      if (v69 >= 3)
      {
        v101 = 3;
      }

      else
      {
        v101 = v69;
      }

      if (v69 >= 0)
      {
        v67 = v101;
      }

      else
      {
        v67 = 3;
      }

      result = sub_1007A38D4();
      if (result < v67)
      {
        goto LABEL_104;
      }

LABEL_42:
      if ((v5 & 0xC000000000000001) != 0 && v67)
      {
        sub_10000A7C4(0, &unk_100ADE530);

        sub_1007A3774(0);
        if (v67 != 1)
        {
          sub_1007A3774(1);
          if (v67 != 2)
          {
            sub_1007A3774(2);
          }
        }
      }

      else
      {
      }

      if (v66)
      {
        v69 = sub_1007A38E4();
        v66 = v71;
        v68 = v72;
        v70 = v73;

        if (v68 != v70 >> 1)
        {
LABEL_50:

          goto LABEL_69;
        }
      }

      else
      {
        v68 = 0;
        v69 = v5 & 0xFFFFFFFFFFFFFF8;
        v66 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v70 = 2 * v67;
        if (v70 >> 1)
        {
          goto LABEL_50;
        }
      }

      LODWORD(v15) = v64 < 0 || (v64 & 0x4000000000000000) != 0;
      v4 = v22;
      if (v15 == 1)
      {
        goto LABEL_93;
      }

      v5 = *(v64 + 16);
      v74 = v5;
LABEL_57:
      v75 = v5 != 0;
      if (v74 >= v75)
      {
        break;
      }

      __break(1u);
LABEL_96:
      __break(1u);
    }

    if ((v64 & 0xC000000000000001) != 0 && v5)
    {
      sub_10000A7C4(0, &unk_100ADE530);

      v76 = 0;
      do
      {
        v77 = v76 + 1;
        sub_1007A3774(v76);
        v76 = v77;
      }

      while (v75 != v77);
      if (v15)
      {
        goto LABEL_63;
      }
    }

    else
    {

      if (v15)
      {
LABEL_63:

        v5 = sub_1007A38E4();
        v66 = v78;
        v68 = v79;
        v70 = v80;
        swift_unknownObjectRelease();

LABEL_68:
        v24 = _swiftEmptyArrayStorage;
        v22 = v4;
LABEL_69:
        if (*&v112[OBJC_IVAR___BKWidgetService_widgetInfoManager])
        {
          v127[0] = _swiftEmptyArrayStorage;
          v81 = v70 >> 1;
          v15 = ((v70 >> 1) - v68);
          if (v15)
          {
            if (v68 > v81)
            {
              v81 = v68;
            }

            v4 = v81 - v68;
            v10 = (v66 + 8 * v68);
            v24 = _swiftEmptyArrayStorage;
            while (v4)
            {
              v126[0] = *v10;
              sub_1003E7930(v126, &v125);
              v5 = v125;
              if (v125)
              {
                sub_1007A25C4();
                if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1007A2614();
                }

                sub_1007A2644();
                v24 = v127[0];
              }

              --v4;
              ++v10;
              if (!--v15)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_87;
          }

LABEL_71:

          v82 = sub_1007A29D4();
          v83 = sub_1007A33D4();
          if (os_log_type_enabled(v83, v82))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v127[0] = v85;
            *v84 = 136315138;
            sub_10000A7C4(0, &unk_100AE1A40);
            v86 = sub_1007A25F4();
            v88 = sub_1000070F4(v86, v87, v127);

            *(v84 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v83, v82, "WidgetService: Saving %s", v84, 0xCu);
            sub_1000074E0(v85);
          }

          v89 = v110;
          v90 = v119;
          v91 = v120;
          v92 = v121;
          v93 = v24;
          v94 = v124;
          v95 = sub_1007A2744();
          (*(*(v95 - 8) + 56))(v89, 1, 1, v95);
          v96 = swift_allocObject();
          v96[2] = 0;
          v96[3] = 0;
          v97 = v112;
          v96[4] = v112;
          v96[5] = v93;
          v98 = v97;
          sub_1003457A0(0, 0, v89, &unk_100822A70, v96);
          swift_unknownObjectRelease();

          (*(v91 + 8))(v94, v92);
          v99 = v90;
        }

        else
        {

          sub_1007A29B4();
          v100 = sub_1007A33D4();
          sub_10079AB44();
          swift_unknownObjectRelease();

          (*(v120 + 8))(v124, v121);
          v99 = v119;
        }

        return (v122)(v99, v22);
      }
    }

    swift_unknownObjectRelease();

    v68 = 0;
    v66 = v64 + 32;
    if (v5)
    {
      v70 = 3;
    }

    else
    {
      v70 = 1;
    }

    goto LABEL_68;
  }

  result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = result;
  }

  if (result >= v67)
  {
    goto LABEL_42;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1003E77D0(id *a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = v14 - v8;
  v10 = [*a1 lastEngagedDate];
  if (v10)
  {
    v11 = v10;
    sub_100796B64();

    (*(v3 + 32))(v9, v5, v2);
    v12 = sub_100796B04();
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1003E7930(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 assetID];
  if (v4)
  {
    v5 = v4;
    v45 = a2;
    v6 = [v3 cloudAssetType];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1007A2254();
      v10 = v9;
      if (v8 == sub_1007A2254() && v10 == v11)
      {
        goto LABEL_17;
      }

      v13 = sub_1007A3AB4();

      if (v13)
      {
        goto LABEL_18;
      }
    }

    v14 = [v3 cloudAssetType];
    if (!v14)
    {
      goto LABEL_14;
    }

    v7 = v14;
    v15 = sub_1007A2254();
    v17 = v16;
    if (v15 != sub_1007A2254() || v17 != v18)
    {
      v20 = sub_1007A3AB4();

      if ((v20 & 1) == 0)
      {
LABEL_14:
        v21 = [v3 coverURL];
        if (!v21)
        {
LABEL_15:
          v22 = 0;
          v23 = [v3 title];
          goto LABEL_20;
        }

LABEL_19:
        v25 = v21;
        v44 = sub_1007A2254();
        v22 = v26;

        v23 = [v3 title];
LABEL_20:
        v27 = v23;
        if (v27)
        {
          v28 = v27;
          sub_1007A2254();
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v3 pageProgressionDirection];
        if (v31)
        {
          v32 = v31;
          sub_1007A2254();
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = [v3 cloudAssetType];
        v36 = [v3 contentType];
        if (v36 && (v37 = v36, v38 = sub_1007A2874(), v37, (v38 - 1) <= 5))
        {
          v39 = *(&off_100A1A200 + v38 - 1);
        }

        else
        {
          v39 = &BDSLibraryContentAssetTypeUnknown;
        }

        v40 = *v39;
        if (v30)
        {
          v41 = sub_1007A2214();

          if (v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v41 = 0;
          if (v22)
          {
LABEL_32:
            v42 = sub_1007A2214();

            if (v34)
            {
LABEL_33:
              v43 = sub_1007A2214();

LABEL_37:
              v24 = [objc_allocWithZone(BDSBookWidgetInfo) initWithAssetID:v5 title:v41 coverURL:v42 pageProgressionDirection:v43 cloudAssetType:v35 libraryContentAssetType:v40];

              a2 = v45;
              goto LABEL_38;
            }

LABEL_36:
            v43 = 0;
            goto LABEL_37;
          }
        }

        v42 = 0;
        if (v34)
        {
          goto LABEL_33;
        }

        goto LABEL_36;
      }

LABEL_18:
      v21 = [v3 fileURL];
      if (!v21)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

  v24 = 0;
LABEL_38:
  *a2 = v24;
}

uint64_t sub_1003E7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1003E7D74;

  return sub_1003E8A80(a5);
}

uint64_t sub_1003E7D74()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1003E7ECC;
  v4 = *(v1 + 24);

  return sub_1003E81B0(v4);
}

uint64_t sub_1003E7ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1003E7FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 assetID];
  v10 = sub_1007A2254();
  v12 = v11;

  v13 = [v2 cloudAssetType];
  v14 = [v2 libraryContentAssetType];
  if (!v14)
  {
    v14 = BDSLibraryContentAssetTypeUnknown;
  }

  v15 = [v2 coverURL];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1007A2254();
    v25 = v18;
    v26 = v17;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  result = [v2 pageProgressionDirection];
  if (result)
  {
    v20 = result;
    v21 = sub_1007A2254();
    v23 = v22;

    if (v21 == 7107698 && v23 == 0xE300000000000000)
    {

      v24 = 1;
    }

    else
    {
      v24 = sub_1007A3AB4();
    }
  }

  else
  {
    v24 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v26;
  *(a1 + 72) = v25;
  *(a1 + 80) = v24 & 1;
  return result;
}

uint64_t sub_1003E81B0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1003E81D0, 0, 0);
}

char *sub_1003E81D0()
{
  v36 = v0;
  v1 = v0;
  v2 = *(v0[9] + OBJC_IVAR___BKWidgetService_widgetInfoManager);
  if (v2)
  {
    v3 = v1[8];
    if (v3 >> 62)
    {
      v4 = sub_1007A38D4();
      v33 = v2;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v2;
      if (v4)
      {
LABEL_4:
        v35 = _swiftEmptyArrayStorage;
        v5 = v2;
        result = sub_1003BD0CC(0, v4 & ~(v4 >> 63), 0);
        if (v4 < 0)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = v1;
        v9 = v35;
        v10 = v3 & 0xC000000000000001;
        v34 = v1[8] + 32;
        do
        {
          if (v10)
          {
            v11 = sub_1007A3784();
          }

          else
          {
            v11 = *(v34 + 8 * v7);
          }

          v12 = v11;
          v13 = [v11 assetID];
          v14 = sub_1007A2254();
          v16 = v15;

          v35 = v9;
          v18 = v9[2];
          v17 = v9[3];
          if (v18 >= v17 >> 1)
          {
            sub_1003BD0CC((v17 > 1), v18 + 1, 1);
            v9 = v35;
          }

          ++v7;
          v9[2] = v18 + 1;
          v19 = &v9[2 * v18];
          v19[4] = v14;
          v19[5] = v16;
        }

        while (v4 != v7);
        v1 = v8;
        goto LABEL_16;
      }
    }

    v21 = v2;
LABEL_16:
    v22 = sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0);
    v23 = sub_1007A33D4();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v26 = sub_1007A25F4();
      v28 = v27;

      v29 = sub_1000070F4(v26, v28, &v35);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v22, "WidgetService: trying to setBookWidgetInfo %s", v24, 0xCu);
      sub_1000074E0(v25);
    }

    else
    {
    }

    sub_10000A7C4(0, &unk_100AE1A40);
    isa = sub_1007A25D4().super.isa;
    v1[6] = sub_1003E85BC;
    v1[7] = 0;
    v1[2] = _NSConcreteStackBlock;
    v1[3] = 1107296256;
    v1[4] = sub_100641374;
    v1[5] = &unk_100A1A188;
    v31 = _Block_copy(v1 + 2);
    v20 = v33;
    [v33 setBookWidgetInfo:isa completion:v31];
    _Block_release(v31);

    goto LABEL_20;
  }

  sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v20 = sub_1007A33D4();
  sub_10079AB44();
LABEL_20:

  v32 = v1[1];

  return v32();
}

void sub_1003E85BC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0);
    log = sub_1007A33D4();
    if (os_log_type_enabled(log, v1))
    {
      v2 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v8 = v3;
      *v2 = 136315138;
      swift_getErrorValue();
      v4 = sub_1007A3B84();
      v6 = sub_1000070F4(v4, v5, &v8);

      *(v2 + 4) = v6;
      _os_log_impl(&_mh_execute_header, log, v1, "WidgetService: setBookWidgetInfo %s", v2, 0xCu);
      sub_1000074E0(v3);

      return;
    }
  }

  else
  {
    sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0);
    log = sub_1007A33D4();
    sub_10079AB44();
  }
}

id WidgetService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E88B4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0);
    v6 = sub_1007A33D4();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_1007A3B84();
      v11 = sub_1000070F4(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "WidgetService: error in getCurrentConfigurations %s", v7, 0xCu);
      sub_1000074E0(v8);
    }

    v12 = a1;
    v13 = 1;
  }

  else
  {
    v15 = a1;
    sub_1001F1160(&qword_100AE1AD0);
    sub_100005920(&qword_100AE1AD8, &qword_100AE1AD0);
    v12 = sub_1007A28A4() & 1;
    v13 = 0;
  }

  return a3(v12, v13);
}

uint64_t sub_1003E8AA0(__n128 a1)
{
  v29 = v1;
  v2 = v1[32];
  if (v2 >> 62)
  {
    v3 = sub_1007A38D4();
    v1[33] = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v25 = v1[1];

    return v25();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1[33] = v3;
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    a1.n128_u64[0] = 136315138;
    v27 = a1;
    while (1)
    {
      v1[34] = v4;
      v12 = v1[32];
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_1007A3784();
      }

      else
      {
        v13 = *(v12 + 8 * v4 + 32);
      }

      v14 = v13;
      v1[35] = v13;
      v15 = [v13 v5[467]];
      if (!v15)
      {
        sub_1007A2254();
        v15 = sub_1007A2214();
      }

      v16 = sub_1007A2254();
      v18 = v17;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v16, v18, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v16, v18, 1) & 1) == 0)
      {
        break;
      }

      v19 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0);
      v20 = sub_1007A33D4();
      if (os_log_type_enabled(v20, v19))
      {
        v7 = p_inst_props;
        v8 = v5;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v28 = v10;
        *v9 = v27.n128_u32[0];
        v11 = sub_1000070F4(v16, v18, &v28);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v20, v19, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v9, 0xCu);
        sub_1000074E0(v10);

        v5 = v8;
        p_inst_props = v7;
      }

      else
      {
      }

      v4 = v1[34] + 1;
      if (v4 == v1[33])
      {
        goto LABEL_22;
      }
    }

    v21 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v15];
    v1[36] = v21;

    [v21 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v21 setImageSize:?];
    [v21 setPriority:4];
    v22 = [objc_opt_self() defaultCacheManager];
    v1[37] = v22;
    v1[2] = v1;
    v1[7] = v1 + 29;
    v1[3] = sub_1003E8F1C;
    v23 = swift_continuation_init();
    v1[28] = sub_1001F1160(&unk_100AE1AC0);
    v1[21] = _NSConcreteStackBlock;
    v1[22] = 1107296256;
    v1[23] = sub_10022B374;
    v1[24] = &unk_100A1A1D8;
    v1[25] = v23;
    v24 = v21;
    [v22 fetchCGImageFor:v24 forRequest:v24 completion:v1 + 21];
    v3 = (v1 + 2);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1003E8F1C()
{

  return _swift_task_switch(sub_1003E8FFC, 0, 0);
}

uint64_t sub_1003E8FFC()
{
  v43 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  *(v0 + 304) = v1;

  if (v1)
  {
    if (([swift_unknownObjectRetain() isGeneric] & 1) == 0)
    {
      v5 = [v1 image];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 CGImage];
        *(v0 + 312) = v7;

        if (v7)
        {
          v8 = v0 + 80;
          swift_unknownObjectRelease();
          v9 = qword_100AD1490;
          v10 = v7;
          if (v9 != -1)
          {
            swift_once();
          }

          v11 = [objc_allocWithZone(UIImage) initWithCGImage:v10 scale:0 orientation:*&qword_100B23158];
          *(v0 + 320) = v11;

          sub_1003E7FC0(v8);
          v12 = swift_task_alloc();
          *(v0 + 328) = v12;
          *v12 = v0;
          v12[1] = sub_1003E9758;

          return sub_1003808BC(v11, 0, v8);
        }
      }
    }

    v39 = v0 + 232;
    v40 = *(v0 + 280);
    sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0);
    v14 = sub_1007A33D4();
    sub_10079AB44();

    swift_unknownObjectRelease_n();
  }

  else
  {
    v39 = v0 + 232;
    v40 = *(v0 + 280);
    sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0);
    v4 = sub_1007A33D4();
    sub_10079AB44();
  }

  v15 = *(v0 + 272) + 1;
  if (v15 == *(v0 + 264))
  {
LABEL_14:
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v17 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    v19 = qword_100B23130;
    v41 = v0;
    while (1)
    {
      *(v0 + 272) = v15;
      v26 = *(v0 + 256);
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = sub_1007A3784();
      }

      else
      {
        v27 = *(v26 + 8 * v15 + 32);
      }

      v28 = v27;
      *(v0 + 280) = v27;
      v29 = [v27 v17[467]];
      if (!v29)
      {
        sub_1007A2254();
        v29 = sub_1007A2214();
      }

      v30 = sub_1007A2254();
      v32 = v31;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(v19, v19[3]);
      if ((sub_1005490C0(v30, v32, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(v19, v19[3]);
      if ((sub_1005490C0(v30, v32, 1) & 1) == 0)
      {
        break;
      }

      v33 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0);
      v34 = sub_1007A33D4();
      if (os_log_type_enabled(v34, v33))
      {
        v20 = v19;
        v21 = p_inst_props;
        v22 = v17;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42 = v24;
        *v23 = 136315138;
        v25 = sub_1000070F4(v30, v32, &v42);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v34, v33, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v23, 0xCu);
        sub_1000074E0(v24);

        v17 = v22;
        p_inst_props = v21;
        v19 = v20;
        v0 = v41;
      }

      else
      {
      }

      v15 = *(v0 + 272) + 1;
      if (v15 == *(v0 + 264))
      {
        goto LABEL_14;
      }
    }

    v35 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v29];
    *(v0 + 288) = v35;

    [v35 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v35 setImageSize:?];
    [v35 setPriority:4];
    v36 = [objc_opt_self() defaultCacheManager];
    *(v0 + 296) = v36;
    *(v0 + 16) = v0;
    *(v0 + 56) = v39;
    *(v0 + 24) = sub_1003E8F1C;
    v37 = swift_continuation_init();
    *(v0 + 224) = sub_1001F1160(&unk_100AE1AC0);
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10022B374;
    *(v0 + 192) = &unk_100A1A1D8;
    *(v0 + 200) = v37;
    v38 = v35;
    [v36 fetchCGImageFor:v38 forRequest:v38 completion:v0 + 168];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1003E9758()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E98E8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[43] = v3;
    *v3 = v2;
    v3[1] = sub_1003E9AD0;
    v4 = v2[40];

    return sub_1003815D4(v4, (v2 + 10));
  }
}

uint64_t sub_1003E98E8()
{
  v13 = v0;
  v1 = sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v2 = sub_1007A33D4();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[42];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[31] = v3;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    v6 = sub_1007A22E4();
    v8 = sub_1000070F4(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to generate untreated cover thumbnail and cache the image. error: %s.", v4, 0xCu);
    sub_1000074E0(v5);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_1003E9AD0;
  v10 = v0[40];

  return sub_1003815D4(v10, (v0 + 10));
}

uint64_t sub_1003E9AD0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1003EA058;
  }

  else
  {
    v2 = sub_1003E9BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E9BE4()
{
  v30 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);

  sub_1003EA8E8(v0 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 272) + 1;
  if (v5 == *(v0 + 264))
  {
LABEL_2:
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    *&v4 = 136315138;
    v28 = v4;
    while (1)
    {
      *(v0 + 272) = v5;
      v15 = *(v0 + 256);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        v16 = *(v15 + 8 * v5 + 32);
      }

      v17 = v16;
      *(v0 + 280) = v16;
      v18 = [v16 v8[467]];
      if (!v18)
      {
        sub_1007A2254();
        v18 = sub_1007A2214();
      }

      v19 = sub_1007A2254();
      v21 = v20;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v19, v21, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v19, v21, 1) & 1) == 0)
      {
        break;
      }

      v22 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0);
      v23 = sub_1007A33D4();
      if (os_log_type_enabled(v23, v22))
      {
        v10 = p_inst_props;
        v11 = v8;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v29 = v13;
        *v12 = v28;
        v14 = sub_1000070F4(v19, v21, &v29);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v23, v22, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v12, 0xCu);
        sub_1000074E0(v13);

        v8 = v11;
        p_inst_props = v10;
      }

      else
      {
      }

      v5 = *(v0 + 272) + 1;
      if (v5 == *(v0 + 264))
      {
        goto LABEL_2;
      }
    }

    v24 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v18];
    *(v0 + 288) = v24;

    [v24 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v24 setImageSize:?];
    [v24 setPriority:4];
    v25 = [objc_opt_self() defaultCacheManager];
    *(v0 + 296) = v25;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1003E8F1C;
    v26 = swift_continuation_init();
    *(v0 + 224) = sub_1001F1160(&unk_100AE1AC0);
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10022B374;
    *(v0 + 192) = &unk_100A1A1D8;
    *(v0 + 200) = v26;
    v27 = v24;
    [v25 fetchCGImageFor:v27 forRequest:v27 completion:v0 + 168];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1003EA058()
{
  v43 = v0;
  v1 = sub_1007A29B4();
  v2 = sub_10000A7C4(0, &qword_100AD20A0);
  v3 = sub_1007A33D4();
  if (os_log_type_enabled(v3, v1))
  {
    v4 = *(v0 + 352);
    v40 = *(v0 + 320);
    v5 = *(v0 + 288);
    v38 = *(v0 + 312);
    v39 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    *(v0 + 240) = v4;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    v8 = sub_1007A22E4();
    v10 = sub_1000070F4(v8, v9, &v42);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v1, "Failed to generate backdrop and cache the image. error: %s.", v6, 0xCu);
    sub_1000074E0(v7);

    sub_1003EA8E8(v0 + 80);

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 280);

    sub_1003EA8E8(v0 + 80);
    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 272) + 1;
  if (v14 == *(v0 + 264))
  {
LABEL_5:
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    v41 = v0;
    while (1)
    {
      *(v0 + 272) = v14;
      v25 = *(v0 + 256);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = sub_1007A3784();
      }

      else
      {
        v26 = *(v25 + 8 * v14 + 32);
      }

      v27 = v26;
      *(v0 + 280) = v26;
      v28 = [v26 v17[467]];
      if (!v28)
      {
        sub_1007A2254();
        v28 = sub_1007A2214();
      }

      v29 = sub_1007A2254();
      v31 = v30;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v29, v31, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v29, v31, 1) & 1) == 0)
      {
        break;
      }

      v32 = sub_1007A29D4();
      v33 = sub_1007A33D4();
      if (os_log_type_enabled(v33, v32))
      {
        v19 = swift_slowAlloc();
        v20 = p_inst_props;
        v21 = v2;
        v22 = v17;
        v23 = swift_slowAlloc();
        v42 = v23;
        *v19 = 136315138;
        v24 = sub_1000070F4(v29, v31, &v42);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v33, v32, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v19, 0xCu);
        sub_1000074E0(v23);
        v17 = v22;
        v2 = v21;
        p_inst_props = v20;
        v0 = v41;
      }

      else
      {
      }

      v14 = *(v0 + 272) + 1;
      if (v14 == *(v0 + 264))
      {
        goto LABEL_5;
      }
    }

    v34 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v28];
    *(v0 + 288) = v34;

    [v34 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v34 setImageSize:?];
    [v34 setPriority:4];
    v35 = [objc_opt_self() defaultCacheManager];
    *(v0 + 296) = v35;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1003E8F1C;
    v36 = swift_continuation_init();
    *(v0 + 224) = sub_1001F1160(&unk_100AE1AC0);
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10022B374;
    *(v0 + 192) = &unk_100A1A1D8;
    *(v0 + 200) = v36;
    v37 = v34;
    [v35 fetchCGImageFor:v37 forRequest:v37 completion:v0 + 168];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t _s5Books13WidgetServiceC6player_18stateDidChangeFrom2toySo19BKAudiobookControls_p_So0J11PlayerStateVAItF_0()
{
  v0 = objc_opt_self();
  v1 = [v0 shared];
  v2 = [v1 currentAudiobook];

  if (v2)
  {
    v3 = [v2 assetID];
    swift_unknownObjectRelease();
    sub_1007A2254();

    v4 = [v0 shared];
    LOBYTE(v3) = [v4 isPlaying];

    if ((v3 & 1) == 0)
    {
    }
  }

  v5 = [objc_opt_self() books];
  v6 = [v5 userDefaults];

  v7 = sub_1007A2214();

  v8 = sub_1007A2214();
  [v6 setValue:v7 forKey:v8];

  sub_1007A2004();
  sub_1007A1FF4();
  sub_1007A1FD4();
}

uint64_t sub_1003EA810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1003E7CDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1003EA93C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE1AE0);
  sub_100008B98(v0, qword_100AE1AE0);
  return sub_10079ACD4();
}

uint64_t sub_1003EA9BC()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10079ACE4();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1007965C4();
  v8 = *(v59 - 8);
  v9 = __chkstk_darwin(v59);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v51 - v11;
  v12 = sub_1001F1160(&qword_100AE1B88);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_100796614();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v1;
  sub_1007965E4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100007840(v14, &qword_100AE1B88);
LABEL_23:
    v32 = v63;
    goto LABEL_24;
  }

  v55 = v2;
  v56 = v3;
  (*(v16 + 32))(v18, v14, v15);
  v19 = sub_100796604();
  v21 = v59;
  if (!v20)
  {
    goto LABEL_22;
  }

  if (v19 == 0x6F6F626F69647561 && v20 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v22 = sub_1007A3AB4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v23 = sub_1007965F4();
  if (!v24)
  {
    goto LABEL_22;
  }

  if (v23 == 0x62696C616964656DLL && v24 == 0xEC00000079726172)
  {

    goto LABEL_13;
  }

  v25 = sub_1007A3AB4();

  if ((v25 & 1) == 0)
  {
LABEL_22:
    (*(v16 + 8))(v18, v15);
    v2 = v55;
    v3 = v56;
    goto LABEL_23;
  }

LABEL_13:
  result = sub_1007965D4();
  if (!result)
  {
    goto LABEL_22;
  }

  v27 = result;
  v52 = v5;
  if (!*(result + 16))
  {
LABEL_21:
    (*(v16 + 8))(v18, v15);

    v32 = v63;
    v2 = v55;
    v3 = v56;
    v5 = v52;
LABEL_24:
    if (qword_100AD1540 != -1)
    {
      swift_once();
    }

    v33 = sub_100008B98(v32, qword_100AE1AE0);
    v34 = v62;
    (*(v6 + 16))(v62, v33, v32);
    (*(v3 + 16))(v5, v61, v2);
    v35 = sub_10079ACC4();
    v36 = v5;
    v37 = v2;
    v38 = sub_1007A29B4();
    if (os_log_type_enabled(v35, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v6;
      v41 = v40;
      v64 = v40;
      *v39 = 136315138;
      v42 = sub_1007968F4();
      v44 = v43;
      (*(v3 + 8))(v36, v37);
      v45 = sub_1000070F4(v42, v44, &v64);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v38, "Invalid media library URL %s", v39, 0xCu);
      sub_1000074E0(v41);

      (*(v58 + 8))(v34, v63);
    }

    else
    {

      (*(v3 + 8))(v36, v37);
      (*(v6 + 8))(v34, v32);
    }

    return 0;
  }

  v28 = *(result + 16);
  v29 = 0;
  v53 = v8 + 16;
  v54 = (v8 + 8);
  v58 = v6;
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v8 + 16))(v60, v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v21);
    if (sub_1007965A4() == 0x7469546D75626C61 && v30 == 0xEA0000000000656CLL)
    {
      break;
    }

    v31 = sub_1007A3AB4();

    if (v31)
    {
      goto LABEL_31;
    }

    ++v29;
    result = (*v54)(v60, v21);
    v6 = v58;
    if (v28 == v29)
    {
      goto LABEL_21;
    }
  }

LABEL_31:

  v46 = v57;
  (*(v8 + 32))(v57, v60, v21);
  v47 = sub_1007965B4();
  v49 = v48;
  (*(v8 + 8))(v46, v21);
  (*(v16 + 8))(v18, v15);
  v50 = v49;
  v32 = v63;
  v6 = v58;
  v2 = v55;
  v3 = v56;
  v5 = v52;
  if (!v50)
  {
    goto LABEL_24;
  }

  return v47;
}

uint64_t sub_1003EB16C()
{
  v1 = v0;
  v68 = sub_1007969B4();
  v2 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007965C4();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v56 - v12;
  v13 = sub_1001F1160(&qword_100AE1B88);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_100796614();
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  v20 = v19;
  sub_1007965E4();
  v67 = v20;
  if ((*(v20 + 6))(v15, 1, v16) == 1)
  {
    sub_100007840(v15, &qword_100AE1B88);
    goto LABEL_24;
  }

  v61 = v5;
  (*(v67 + 4))(v18, v15, v16);
  v21 = sub_100796604();
  if (!v22)
  {
    goto LABEL_22;
  }

  if (v21 == 0x6F6F626F69647561 && v22 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v23 = sub_1007A3AB4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v24 = sub_1007965F4();
  if (!v25)
  {
    goto LABEL_22;
  }

  if (v24 == 0x62696C616964656DLL && v25 == 0xEC00000079726172)
  {

    goto LABEL_13;
  }

  v26 = sub_1007A3AB4();

  if ((v26 & 1) == 0)
  {
LABEL_22:
    (*(v67 + 1))(v18, v16);
    goto LABEL_23;
  }

LABEL_13:
  result = sub_1007965D4();
  if (!result)
  {
    goto LABEL_22;
  }

  v28 = result;
  v29 = *(result + 16);
  v57 = v4;
  v58 = v29;
  if (!v29)
  {
LABEL_21:
    (*(v67 + 1))(v18, v16);

    v4 = v57;
LABEL_23:
    v5 = v61;
    goto LABEL_24;
  }

  v30 = 0;
  v31 = 0x4964756F6C437369;
  v59 = v63 + 16;
  v60 = (v63 + 8);
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v63 + 16))(v11, v28 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v30, v64);
    if (sub_1007965A4() == v31 && v32 == 0xEB000000006D6574)
    {
      break;
    }

    v33 = v31;
    v34 = sub_1007A3AB4();

    if (v34)
    {
      goto LABEL_31;
    }

    ++v30;
    result = (*v60)(v11, v64);
    v31 = v33;
    if (v58 == v30)
    {
      goto LABEL_21;
    }
  }

LABEL_31:

  v47 = v62;
  v48 = v63 + 32;
  v49 = v64;
  (*(v63 + 32))(v62, v11, v64);
  sub_1007965B4();
  v51 = v50;
  (*(v48 - 24))(v47, v49);
  v4 = v57;
  v5 = v61;
  if (v51)
  {
    v52 = objc_allocWithZone(NSString);
    v53 = sub_1007A2214();

    v54 = [v52 initWithString:v53];

    v55 = [v54 BOOLValue];
    (*(v67 + 1))(v18, v16);
    return v55;
  }

  (*(v67 + 1))(v18, v16);
LABEL_24:
  v35 = v66;
  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v36 = sub_100008B98(v4, qword_100AE1AE0);
  (*(v5 + 16))(v7, v36, v4);
  (*(v2 + 16))(v35, v65, v68);
  v37 = sub_10079ACC4();
  v38 = sub_1007A29B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v35;
    v67 = v7;
    v42 = v40;
    v69 = v40;
    *v39 = 136315138;
    v43 = sub_1007968F4();
    v45 = v44;
    (*(v2 + 8))(v41, v68);
    v46 = sub_1000070F4(v43, v45, &v69);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Invalid media library URL  %s", v39, 0xCu);
    sub_1000074E0(v42);

    (*(v5 + 8))(v67, v4);
  }

  else
  {

    (*(v2 + 8))(v35, v68);
    (*(v5 + 8))(v7, v4);
  }

  return 2;
}