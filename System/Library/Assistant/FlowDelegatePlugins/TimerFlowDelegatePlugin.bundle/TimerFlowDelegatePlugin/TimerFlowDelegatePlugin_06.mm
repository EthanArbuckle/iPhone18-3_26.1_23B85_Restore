Swift::Int sub_AA660()
{
  v1 = *v0;
  sub_12626C();
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_AA734()
{
  *v0;
  *v0;
  *v0;
  sub_125BFC();
}

Swift::Int sub_AA7F4()
{
  v1 = *v0;
  sub_12626C();
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_AA8C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_ACF30(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_AA8F4(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEE0073646E6F6365;
  v5 = 0x53736574756E696DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000020;
    v4 = 0x800000000012C180;
  }

  if (*v1)
  {
    v3 = 0x73646E6F636573;
    v2 = 0xE700000000000000;
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

uint64_t sub_AA984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_5AE8(&qword_15F6B0, &unk_129760);
  v36 = a2;
  result = sub_12611C();
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
      v25 = (*(v5 + 56) + 48 * v21);
      if (v36)
      {
        sub_E3AC(v25, v37);
      }

      else
      {
        sub_AD304(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_12626C();
      sub_125BFC();
      result = sub_12628C();
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
      result = sub_E3AC(v37, (*(v8 + 56) + 48 * v16));
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

uint64_t sub_AAC48(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_5AE8(&unk_15F170, &unk_126E00);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6 - 8);
  v40 = v37 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_5AE8(&qword_161B68, &qword_1295B0);
  v39 = a2;
  result = sub_12611C();
  v12 = result;
  if (*(v9 + 16))
  {
    v37[0] = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v37[1] = 0x800000000012C180;
    v19 = result + 64;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v27 = v24 | (v13 << 6);
      v28 = *(*(v9 + 48) + v27);
      v29 = *(v38 + 72);
      v30 = *(v9 + 56) + v29 * v27;
      if (v39)
      {
        sub_96B30(v30, v40);
      }

      else
      {
        sub_E344(v30, v40, &unk_15F170, &unk_126E00);
      }

      v31 = *(v12 + 40);
      sub_12626C();
      sub_125BFC();

      result = sub_12628C();
      v20 = -1 << *(v12 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v19 + 8 * (v21 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v20) >> 6;
        while (++v22 != v33 || (v32 & 1) == 0)
        {
          v34 = v22 == v33;
          if (v22 == v33)
          {
            v22 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v22);
          if (v35 != -1)
          {
            v23 = __clz(__rbit64(~v35)) + (v22 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v19 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v12 + 48) + v23) = v28;
      result = sub_96B30(v40, *(v12 + 56) + v29 * v23);
      ++*(v12 + 16);
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_18;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37[0];
      goto LABEL_37;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37[0];
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_37:
  *v3 = v12;
  return result;
}

uint64_t sub_AB010(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_125F5C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_12626C();

      sub_125BFC();
      v15 = sub_12628C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_AB1CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_125F5C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_12626C();
      sub_125BFC();

      result = sub_12628C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_AB440(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_8C3C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_AB7E0();
      goto LABEL_7;
    }

    sub_AAC48(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_8C3C(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 72) * v10;

    return sub_22A1C(a1, v18);
  }

LABEL_13:

  return sub_AB598(v10, a2, a1, v16);
}

uint64_t sub_AB598(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_5AE8(&unk_15F170, &unk_126E00);
  result = sub_96B30(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

void *sub_AB638()
{
  v1 = v0;
  sub_5AE8(&qword_15F6B0, &unk_129760);
  v2 = *v0;
  v3 = sub_12610C();
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
        sub_AD304(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_E3AC(v25, (*(v4 + 56) + v22));
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

void *sub_AB7E0()
{
  v1 = v0;
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  sub_5AE8(&qword_161B68, &qword_1295B0);
  v6 = *v0;
  v7 = sub_12610C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_E344(*(v6 + 56) + v23, v5, &unk_15F170, &unk_126E00);
        *(*(v8 + 48) + v21) = v22;
        result = sub_96B30(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_ABA04(uint64_t a1, uint64_t a2)
{
  v89 = sub_5AE8(&qword_161B48, &qword_129578);
  v4 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v6 = &v83 - v5;
  v7 = sub_5AE8(&qword_161B50, &qword_129580);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v83 - v9;
  v11 = sub_122FEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5AE8(&qword_161B58, &unk_129588);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v83 - v18;
  v91 = sub_12300C();
  v90 = *(v91 - 8);
  v20 = *(v90 + 64);
  v21 = __chkstk_darwin(v91);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v98 = type metadata accessor for DefaultCircuitBreaker();
  v99 = &off_1592C0;
  v97 = a2;

  v26 = 0;
  if ((sub_ACB04() & 1) != 0 && a1)
  {

    v27 = sub_125A5C();
    if (!v28)
    {
      goto LABEL_53;
    }

    v88 = v28;
    v86 = v27;
    sub_124C7C();
    v26 = sub_124C5C();
    if (v26)
    {
      i = v6;
      v87 = a1;
      sub_124C4C();

      sub_124CDC();

      v29 = v90;
      v30 = v23;
      v31 = v91;
      (*(v90 + 32))(v25, v30, v91);
      sub_122FFC();
      sub_122FDC();
      (*(v12 + 8))(v15, v11);
      v32 = sub_122F9C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v19, 1, v32) == 1)
      {
        (*(v29 + 8))(v25, v31);

        sub_5CA8(v19, &qword_161B58, &unk_129588);
LABEL_54:
        v26 = 0;
        goto LABEL_55;
      }

      v34 = sub_122F8C();
      v36 = v35;
      (*(v33 + 8))(v19, v32);
      if (sub_ACCD0(v25, v34, v36))
      {
        v96 = &_swiftEmptyDictionarySingleton;
        if (v34 == 28261 && v36 == 0xE200000000000000)
        {

          v37 = i;
        }

        else
        {
          v38 = sub_1261BC();

          v37 = i;
          if ((v38 & 1) == 0)
          {
            v39 = v87;
            v43 = v91;
            goto LABEL_23;
          }
        }

        v39 = v87;
        v40 = COERCE_DOUBLE(sub_124D2C()) + 30.0;
        if (v41)
        {
          v40 = 30.0;
        }

        v42 = fmod(v40, 60.0);
        v43 = v91;
        if (v42 == 0.0)
        {
          goto LABEL_21;
        }

        v44 = COERCE_DOUBLE(sub_124D2C()) / 60.0 + 30.0;
        if (v45)
        {
          v44 = 30.0;
        }

        if (fmod(v44, 60.0) == 0.0)
        {
LABEL_21:
          v46 = sub_23B08(&v97, v98);
          v47 = __chkstk_darwin(v46);
          *(&v83 - 2) = &v96;
          *(&v83 - 1) = v39;
          v48 = *v47;
          sub_A9D14();
          v39 = v87;
        }

LABEL_23:
        v49 = COERCE_DOUBLE(sub_124D2C());
        if ((v50 & 1) == 0 && v49 >= 3600.0)
        {
          v51 = sub_23B08(&v97, v98);
          v52 = __chkstk_darwin(v51);
          *(&v83 - 2) = &v96;
          *(&v83 - 1) = v39;
          v53 = *v52;
          sub_A9D14();
          v39 = v87;
        }

        v54 = COERCE_DOUBLE(sub_124D2C());
        if ((v55 & 1) == 0 && v54 >= 60.0)
        {
          v56 = COERCE_DOUBLE(sub_124D2C());
          if ((v57 & 1) != 0 || v56 <= 3600.0)
          {
            v58 = sub_23B08(&v97, v98);
            v59 = __chkstk_darwin(v58);
            *(&v83 - 2) = &v96;
            *(&v83 - 1) = v39;
            v60 = *v59;
            sub_A9D14();
          }
        }

        while (1)
        {
          swift_beginAccess();
          if (!v96[2])
          {
            break;
          }

          v84 = v25;
          sub_124D1C();
          v65 = sub_5AE8(&unk_15F170, &unk_126E00);
          v25 = *(v65 - 8);
          (*(v25 + 7))(v10, 0, 1, v65);
          swift_beginAccess();
          sub_A95BC(v10, 0);
          swift_endAccess();
          v66 = v96;
          v67 = (v96 + 8);
          v68 = 1 << *(v96 + 32);
          v69 = -1;
          if (v68 < 64)
          {
            v69 = ~(-1 << v68);
          }

          v10 = v69 & v96[8];
          v70 = (v68 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v71 = 0;
          v72 = _swiftEmptyArrayStorage;
          for (i = v66; v10; v66 = i)
          {
LABEL_42:
            while (1)
            {
              v74 = __clz(__rbit64(v10)) | (v71 << 6);
              v75 = *(v66[6] + v74);
              sub_E344(v66[7] + *(v25 + 9) * v74, &v37[*(v89 + 48)], &unk_15F170, &unk_126E00);
              *v37 = v75;
              sub_AA0E0(v37, &v93);
              v10 &= v10 - 1;
              sub_5CA8(v37, &qword_161B48, &qword_129578);
              if (v94)
              {
                break;
              }

              sub_5CA8(&v93, &qword_161B60, &qword_129598);
              if (!v10)
              {
                goto LABEL_38;
              }
            }

            sub_2F4EC(&v93, &v95);
            sub_2F4EC(&v95, &v93);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_CDED8(0, v72[2] + 1, 1, v72);
            }

            v77 = v72[2];
            v76 = v72[3];
            if (v77 >= v76 >> 1)
            {
              v72 = sub_CDED8((v76 > 1), v77 + 1, 1, v72);
            }

            v72[2] = (v77 + 1);
            sub_2F4EC(&v93, &v72[5 * v77 + 4]);
          }

LABEL_38:
          while (1)
          {
            v73 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              break;
            }

            if (v73 >= v70)
            {

              v78 = v84;
              sub_122F7C();
              sub_125A2C();

              sub_125A4C();
              sub_23B08(&v93, v94);
              sub_125A3C();

              sub_23B08(v92, v92[3]);
              v80 = sub_125A6C();
              v82 = sub_ACF30(v80, v81);

              sub_5BB0(&v95);
              (*(v90 + 8))(v78, v91);
              sub_5BB0(v92);
              if (v82 == 4)
              {
                v26 = 0;
              }

              else
              {
                v26 = v82;
              }

              sub_5BB0(&v93);

              goto LABEL_55;
            }

            v10 = *&v67[8 * v73];
            ++v71;
            if (v10)
            {
              v71 = v73;
              goto LABEL_42;
            }
          }

          __break(1u);
          swift_once();
          v61 = sub_125ABC();
          sub_5B30(v61, qword_161A60);
          v62 = sub_125AAC();
          v63 = sub_125DEC();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 134217984;
            swift_beginAccess();
            *(v64 + 4) = v96[2];
            _os_log_impl(&dword_0, v62, v63, "Circuit breaker tripped, %ld dialog candidates", v64, 0xCu);
          }

          v43 = v91;
        }

        (*(v90 + 8))(v25, v43);

        goto LABEL_53;
      }

      (*(v90 + 8))(v25, v91);

LABEL_53:

      goto LABEL_54;
    }
  }

LABEL_55:
  sub_5BB0(&v97);
  return v26;
}

uint64_t sub_ACB04()
{
  v0 = sub_124CCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_124C7C();
  sub_124C6C();
  sub_124C3C();

  sub_1254FC();

  sub_124C9C();
  sub_AD09C(&qword_161B78, &type metadata accessor for ResponseMode);
  v8 = sub_125B7C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v10 = [objc_opt_self() sharedPreferences];
  v11 = [v10 siriResponseShouldAlwaysPrint];

  return v11;
}

BOOL sub_ACCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1250BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_161B70, &qword_1295B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  if ((a2 != 28261 || a3 != 0xE200000000000000) && (sub_1261BC() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_122FCC();
  v14 = sub_122FBC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v17 = sub_122FAC();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    if (v17 == 21333 && v19 == 0xE200000000000000)
    {
    }

    else
    {
      v21 = sub_1261BC();

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  sub_5CA8(v13, &qword_161B70, &qword_1295B8);
LABEL_6:
  sub_1250AC();
  v16 = sub_12508C();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_ACF30(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_157F00;
  v6._object = a2;
  v4 = sub_12613C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_AD018()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_AD048()
{
  result = qword_161B80;
  if (!qword_161B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B80);
  }

  return result;
}

uint64_t sub_AD09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TimerNaturalLanguageGeneration.TimerDurationPhrase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNaturalLanguageGeneration.TimerDurationPhrase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_AD258()
{
  result = qword_161B90;
  if (!qword_161B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B90);
  }

  return result;
}

unint64_t sub_AD2B0()
{
  result = qword_161B98;
  if (!qword_161B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B98);
  }

  return result;
}

uint64_t sub_AD304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_AD3C8()
{
  sub_5AE8(&qword_15F180, &unk_126E10);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_129770;
  *(v1 + 32) = 0xD000000000000020;
  *(v1 + 40) = 0x800000000012E1F0;
  *(v1 + 48) = *v0;
  *(v1 + 72) = &type metadata for Bool;
  *(v1 + 80) = 0x6E69577473726966;
  *(v1 + 88) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = &type metadata for Double;
  }

  *(v1 + 96) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = 0x676E6970756F7267;
  *(v1 + 136) = 0xE800000000000000;
  v5 = *(v0 + 24);
  v17 = v5;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v6;
  *(v2 + 176) = 0xD000000000000016;
  *(v2 + 184) = 0x800000000012E280;
  *(v2 + 192) = *(v0 + 32);
  *(v2 + 216) = &type metadata for Bool;
  strcpy((v2 + 224), "isConclusion");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
  *(v2 + 240) = *(v0 + 33);
  *(v2 + 264) = &type metadata for Bool;
  strcpy((v2 + 272), "isFirstWindow");
  *(v2 + 286) = -4864;
  *(v2 + 288) = *(v0 + 34);
  *(v2 + 312) = &type metadata for Bool;
  strcpy((v2 + 320), "isLastWindow");
  *(v2 + 333) = 0;
  *(v2 + 334) = -5120;
  *(v2 + 336) = *(v0 + 35);
  *(v2 + 360) = &type metadata for Bool;
  *(v2 + 368) = 0xD000000000000016;
  *(v2 + 376) = 0x800000000012E240;
  *(v2 + 384) = *(v0 + 36);
  *(v2 + 408) = &type metadata for Bool;
  *(v2 + 416) = 0xD00000000000001ALL;
  *(v2 + 424) = 0x800000000012E2A0;
  *(v2 + 432) = *(v0 + 37);
  *(v2 + 456) = &type metadata for Bool;
  *(v2 + 464) = 0x736D657469;
  *(v2 + 472) = 0xE500000000000000;
  v16 = *(v0 + 40);
  v7 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 480) = v16;
  *(v2 + 504) = v7;
  *(v2 + 512) = 0xD000000000000013;
  *(v2 + 520) = 0x800000000012E260;
  if (*(v0 + 56))
  {
    v8 = 0;
    v9 = 0;
    *(v2 + 536) = 0u;
  }

  else
  {
    v8 = *(v0 + 48);
    v9 = &type metadata for Double;
  }

  *(v2 + 528) = v8;
  *(v2 + 552) = v9;
  *(v2 + 560) = 0x6574496C61746F74;
  *(v2 + 568) = 0xEA0000000000736DLL;
  if (*(v0 + 72))
  {
    v10 = 0;
    v11 = 0;
    *(v2 + 584) = 0u;
  }

  else
  {
    v10 = *(v0 + 64);
    v11 = &type metadata for Double;
  }

  *(v2 + 576) = v10;
  *(v2 + 600) = v11;
  *(v2 + 608) = 0x6953776F646E6977;
  *(v2 + 616) = 0xEA0000000000657ALL;
  if (*(v0 + 88))
  {
    v12 = 0;
    v13 = 0;
    *(v2 + 632) = 0u;
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = &type metadata for Double;
  }

  *(v2 + 624) = v12;
  *(v2 + 648) = v13;
  sub_E344(&v17, v15, &qword_161BF0, &qword_129810);
  sub_E344(&v16, v15, &qword_15F928, &unk_127400);
  return v2;
}

uint64_t sub_AD73C()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v41 - v6;
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_129780;
  *(v10 + 32) = 0xD000000000000020;
  *(v10 + 40) = 0x800000000012E1F0;
  *(v10 + 48) = *v0;
  *(v10 + 72) = &type metadata for Bool;
  *(v10 + 80) = 0x6E69577473726966;
  *(v10 + 88) = 0xEF657A6953776F64;
  v12 = *(v0 + 16);
  v41 = v7;
  if (v12)
  {
    v13 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 8);
    v13 = &type metadata for Double;
  }

  *(v10 + 96) = v14;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0x676E6970756F7267;
  *(v10 + 136) = 0xE800000000000000;
  v15 = *(v0 + 24);
  if (v15)
  {
    v16 = type metadata accessor for TimerTimerGrouping();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v17;
  *(v11 + 168) = v16;
  *(v11 + 176) = 0xD000000000000019;
  *(v11 + 184) = 0x800000000012E220;
  *(v11 + 192) = *(v0 + 32);
  *(v11 + 216) = &type metadata for Bool;
  strcpy((v11 + 224), "isConclusion");
  *(v11 + 237) = 0;
  *(v11 + 238) = -5120;
  *(v11 + 240) = *(v0 + 33);
  *(v11 + 264) = &type metadata for Bool;
  strcpy((v11 + 272), "isFirstWindow");
  *(v11 + 286) = -4864;
  *(v11 + 288) = *(v0 + 34);
  *(v11 + 312) = &type metadata for Bool;
  strcpy((v11 + 320), "isLastWindow");
  *(v11 + 333) = 0;
  *(v11 + 334) = -5120;
  *(v11 + 336) = *(v0 + 35);
  *(v11 + 360) = &type metadata for Bool;
  *(v11 + 368) = 0xD000000000000016;
  *(v11 + 376) = 0x800000000012E240;
  *(v11 + 384) = *(v0 + 36);
  *(v11 + 408) = &type metadata for Bool;
  *(v11 + 416) = 0x736D657469;
  *(v11 + 424) = 0xE500000000000000;
  v18 = *(v0 + 40);
  v19 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v11 + 432) = v18;
  *(v11 + 456) = v19;
  *(v11 + 464) = 0xD000000000000013;
  *(v11 + 472) = 0x800000000012E260;
  if (*(v0 + 56))
  {
    v20 = 0;
    *(v11 + 488) = 0;
    *(v11 + 496) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *(v0 + 48);
    v20 = &type metadata for Double;
  }

  *(v11 + 480) = v21;
  *(v11 + 504) = v20;
  strcpy((v11 + 512), "requestedState");
  *(v11 + 527) = -18;
  v22 = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  sub_E344(v0 + v22[14], v9, &unk_15F170, &unk_126E00);
  v23 = sub_124E4C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v9, 1, v23) == 1)
  {

    sub_5CA8(v9, &unk_15F170, &unk_126E00);
    *(v11 + 528) = 0u;
    *(v11 + 544) = 0u;
  }

  else
  {
    *(v11 + 552) = v23;
    v26 = sub_23B4C((v11 + 528));
    (*(v24 + 32))(v26, v9, v23);
  }

  *(v11 + 560) = 0xD000000000000016;
  *(v11 + 568) = 0x800000000012C830;
  v27 = *(v0 + v22[15]);
  v28 = v41;
  if (v27)
  {
    v29 = sub_124D7C();
    v30 = v27;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v11 + 584) = 0u;
  }

  *(v11 + 576) = v30;
  *(v11 + 600) = v29;
  *(v11 + 608) = 0xD000000000000013;
  *(v11 + 616) = 0x800000000012C810;
  sub_E344(v0 + v22[16], v28, &unk_15F170, &unk_126E00);
  if (v25(v28, 1, v23) == 1)
  {

    sub_5CA8(v28, &unk_15F170, &unk_126E00);
    *(v11 + 624) = 0u;
    *(v11 + 640) = 0u;
  }

  else
  {
    *(v11 + 648) = v23;
    v31 = sub_23B4C((v11 + 624));
    (*(v24 + 32))(v31, v28, v23);
  }

  strcpy((v11 + 656), "requestedType");
  *(v11 + 670) = -4864;
  v32 = v42;
  sub_E344(v0 + v22[17], v42, &unk_15F170, &unk_126E00);
  if (v25(v32, 1, v23) == 1)
  {
    sub_5CA8(v32, &unk_15F170, &unk_126E00);
    *(v11 + 672) = 0u;
    *(v11 + 688) = 0u;
  }

  else
  {
    *(v11 + 696) = v23;
    v33 = sub_23B4C((v11 + 672));
    (*(v24 + 32))(v33, v32, v23);
  }

  *(v11 + 704) = 0x6574496C61746F74;
  *(v11 + 712) = 0xEA0000000000736DLL;
  v34 = (v0 + v22[18]);
  if (v34[1])
  {
    v35 = 0;
    *(v11 + 728) = 0u;
    v36 = 0;
  }

  else
  {
    v36 = *v34;
    v35 = &type metadata for Double;
  }

  *(v11 + 720) = v36;
  *(v11 + 744) = v35;
  *(v11 + 752) = 0x6953776F646E6977;
  *(v11 + 760) = 0xEA0000000000657ALL;
  v37 = (v0 + v22[19]);
  if (v37[1])
  {
    v38 = 0;
    *(v11 + 776) = 0u;
    v39 = 0;
  }

  else
  {
    v39 = *v37;
    v38 = &type metadata for Double;
  }

  *(v11 + 768) = v39;
  *(v11 + 792) = v38;
  return v11;
}

uint64_t sub_ADDF4(__int16 a1, uint64_t a2)
{
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x800000000012E2A0;
  *(v4 + 48) = a1 & 1;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "isSleepTimer");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  *(v4 + 96) = HIBYTE(a1) & 1;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x72656D6974;
  *(v4 + 136) = 0xE500000000000000;
  if (a2)
  {
    v5 = type metadata accessor for TimerTimer(0);
    v6 = a2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v6;
  *(v4 + 168) = v5;

  return v4;
}

uint64_t sub_ADEF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

__n128 sub_AE0C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_AE0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_AE130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AE1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AE27C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AE32C()
{
  sub_AE4FC();
  if (v0 <= 0x3F)
  {
    sub_AE54C(319, &unk_161C68, type metadata accessor for TimerTimerGrouping, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_AE54C(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_AE54C(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_AE54C(319, &qword_15FCF8, &type metadata accessor for DialogDuration, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_AE4FC()
{
  if (!qword_161C60)
  {
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_161C60);
    }
  }
}

void sub_AE54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_AE5C0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161CD0);
  sub_5B30(v0, qword_161CD0);
  return sub_1257AC();
}

uint64_t sub_AE60C(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_123B3C();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = sub_124F4C();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&qword_15F9E0, &unk_127710) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v10 = sub_1250BC();
  v2[45] = v10;
  v11 = *(v10 - 8);
  v2[46] = v11;
  v12 = *(v11 + 64) + 15;
  v2[47] = swift_task_alloc();
  v13 = sub_125ABC();
  v2[48] = v13;
  v14 = *(v13 - 8);
  v2[49] = v14;
  v15 = *(v14 + 64) + 15;
  v2[50] = swift_task_alloc();
  v16 = sub_124FFC();
  v2[51] = v16;
  v17 = *(v16 - 8);
  v2[52] = v17;
  v18 = *(v17 + 64) + 15;
  v2[53] = swift_task_alloc();
  v19 = sub_12501C();
  v2[54] = v19;
  v20 = *(v19 - 8);
  v2[55] = v20;
  v21 = *(v20 + 64) + 15;
  v2[56] = swift_task_alloc();
  v22 = sub_12368C();
  v2[57] = v22;
  v23 = *(v22 - 8);
  v2[58] = v23;
  v24 = *(v23 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v25 = sub_123D1C();
  v2[63] = v25;
  v26 = *(v25 - 8);
  v2[64] = v26;
  v27 = *(v26 + 64) + 15;
  v2[65] = swift_task_alloc();
  v28 = sub_12392C();
  v2[66] = v28;
  v29 = *(v28 - 8);
  v2[67] = v29;
  v30 = *(v29 + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();

  return _swift_task_switch(sub_AEA70, 0, 0);
}

uint64_t sub_AEA70()
{
  if (qword_15EEE0 != -1)
  {
    swift_once();
  }

  *(v0 + 568) = sub_5B30(*(v0 + 384), qword_161CD0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PauseTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v3, 2u);
  }

  v4 = *(v0 + 272);

  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v5 = sub_123A9C();
  v6 = [v5 pausedTimers];

  if (!v6)
  {
    goto LABEL_66;
  }

  sub_1257EC();
  v7 = sub_125C6C();
  *(v0 + 576) = v7;

  v8 = v7 >> 62;
  if (!(v7 >> 62))
  {
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  if (!sub_1260FC())
  {
LABEL_65:

LABEL_66:
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v109 = 3;
    swift_willThrow();
LABEL_67:
    v110 = *(v0 + 560);
    v111 = *(v0 + 552);
    v112 = *(v0 + 544);
    v113 = *(v0 + 520);
    v114 = *(v0 + 488);
    v115 = *(v0 + 496);
    v117 = *(v0 + 472);
    v116 = *(v0 + 480);
    v118 = *(v0 + 448);
    v119 = *(v0 + 424);
    v121 = *(v0 + 400);
    v122 = *(v0 + 376);
    v123 = *(v0 + 352);
    v125 = *(v0 + 344);
    v127 = *(v0 + 336);
    v131 = *(v0 + 328);
    v135 = *(v0 + 304);
    v139 = *(v0 + 296);

    v120 = *(v0 + 8);

    return v120();
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_72:
      swift_once();
      goto LABEL_52;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  *(v0 + 584) = v9;
  v11 = *(v0 + 560);
  sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v10;
  v13 = v10;
  sub_FF26C(inited, v11);
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  v15 = [v13 identifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_125B9C();
    v19 = v18;

    if (v8)
    {
      if (sub_1260FC() != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) != 1)
    {
LABEL_14:

      goto LABEL_17;
    }

    v20 = *(v0 + 560);
    v21 = *(v0 + 520);
    v22 = *(v0 + 504);
    v23 = *(v0 + 512);
    sub_D500(v17, v19, v21);

    sub_12386C();
    (*(v23 + 8))(v21, v22);
  }

LABEL_17:
  v24 = *(v0 + 496);
  *(v0 + 592) = sub_2BE74(v7);
  sub_12361C();
  if (v8)
  {
    v25 = sub_1260FC();
  }

  else
  {
    v25 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 600) = v25;
  if (v25 == 1)
  {
    sub_12573C();
    sub_12572C();
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    sub_23B08((v0 + 216), v26);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v28 = sub_125FFC();
    }

    else
    {
      v28 = *(v7 + 32);
    }

    v70 = v28;
    v71 = [v28 identifier];

    if (v71)
    {
      v72 = sub_125B9C();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0;
    }

    *(v0 + 608) = v74;
    v75 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v76 = swift_task_alloc();
    *(v0 + 616) = v76;
    *v76 = v0;
    v76[1] = sub_AF900;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v72, v74, v26, v27);
  }

  *(v0 + 640) = 0u;
  v132 = *(v0 + 568);
  v136 = *(v0 + 448);
  v30 = *(v0 + 416);
  v29 = *(v0 + 424);
  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v33 = *(v0 + 392);
  v128 = *(v0 + 384);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v34 = *(v0 + 88);
  sub_23B08((v0 + 56), *(v0 + 80));
  sub_1235DC();
  sub_5BB0((v0 + 56));
  (*(v30 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v32);
  (*(v33 + 16))(v31, v132, v128);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v35 = *(v0 + 128);
  sub_23B08((v0 + 96), *(v0 + 120));
  v36 = sub_1235DC();
  sub_5BB0((v0 + 96));
  if (v36)
  {
    v37 = sub_648C8(*(v0 + 576), 13);
    *(v0 + 776) = v37;

    if (v37)
    {
      v38 = objc_opt_self();
      *(v0 + 256) = 0;
      v39 = [v38 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:v0 + 256];
      v40 = *(v0 + 256);
      if (v39)
      {
        v41 = v39;
        v42 = v40;
        v43 = sub_122EFC();
        v45 = v44;

        *(v0 + 784) = v43;
        *(v0 + 792) = v45;
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v46 = *(v0 + 272);
        v47 = swift_task_alloc();
        *(v0 + 800) = v47;
        v47[2] = v43;
        v47[3] = v45;
        v47[4] = v46;
        v48 = swift_task_alloc();
        *(v0 + 808) = v48;
        *v48 = v0;
        v48[1] = sub_B1CA0;
        v49 = *(v0 + 592);

        return sub_11B684(v49, sub_B52E0, v47);
      }

      v102 = *(v0 + 592);
      v103 = *(v0 + 536);
      v134 = *(v0 + 528);
      v138 = *(v0 + 560);
      v130 = *(v0 + 496);
      v104 = *(v0 + 464);
      v124 = *(v0 + 584);
      v126 = *(v0 + 456);
      v105 = *(v0 + 440);
      v106 = *(v0 + 448);
      v107 = *(v0 + 432);
      v108 = v40;

      sub_122E8C();

      swift_willThrow();
      (*(v105 + 8))(v106, v107);
      (*(v104 + 8))(v130, v126);
      (*(v103 + 8))(v138, v134);
    }

    else
    {
      v89 = *(v0 + 592);
      v90 = *(v0 + 568);

      v91 = sub_125AAC();
      v92 = sub_125DFC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "Could not get timer action from timer.", v93, 2u);
      }

      v94 = *(v0 + 584);
      v95 = *(v0 + 536);
      v133 = *(v0 + 528);
      v137 = *(v0 + 560);
      v129 = *(v0 + 496);
      v97 = *(v0 + 456);
      v96 = *(v0 + 464);
      v98 = *(v0 + 440);
      v99 = *(v0 + 448);
      v100 = *(v0 + 432);

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v101 = 1;
      swift_willThrow();

      (*(v98 + 8))(v99, v100);
      (*(v96 + 8))(v129, v97);
      (*(v95 + 8))(v137, v133);
    }

    goto LABEL_67;
  }

  v52 = *(v0 + 368);
  v51 = *(v0 + 376);
  v53 = *(v0 + 360);
  sub_1250AC();
  v54 = sub_12504C();
  (*(v52 + 8))(v51, v53);
  if (v54)
  {
    v55 = *(v0 + 568);
    v56 = sub_125AAC();
    v57 = sub_125DFC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v58, 2u);
    }

    v59 = *(v0 + 600);
    if (v59)
    {
      sub_22A8C(0, v59 & ~(v59 >> 63), 0);
      if (v59 < 0)
      {
        __break(1u);
      }

      v60 = 0;
      v61 = *(v0 + 320);
      v62 = *(v0 + 576) + 32;
      do
      {
        if ((*(v0 + 576) & 0xC000000000000001) != 0)
        {
          v63 = sub_125FFC();
        }

        else
        {
          v63 = *(v62 + 8 * v60);
        }

        v64 = v63;
        sub_1135FC(*(v0 + 328));

        v66 = _swiftEmptyArrayStorage[2];
        v65 = _swiftEmptyArrayStorage[3];
        if (v66 >= v65 >> 1)
        {
          sub_22A8C(v65 > 1, v66 + 1, 1);
        }

        v67 = *(v0 + 600);
        v68 = *(v0 + 328);
        v69 = *(v0 + 312);
        ++v60;
        _swiftEmptyArrayStorage[2] = (v66 + 1);
        (*(v61 + 32))(_swiftEmptyArrayStorage + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v66, v68, v69);
      }

      while (v60 != v67);
    }

    v80 = *(v0 + 352);
    sub_12521C();
    v81 = enum case for SiriTimePluginModel.timerMulti(_:);
    v82 = sub_12503C();
    v83 = *(v82 - 8);
    (*(v83 + 104))(v80, v81, v82);
    (*(v83 + 56))(v80, 0, 1, v82);
    if (qword_15EDD8 != -1)
    {
      swift_once();
    }

    v84 = *(v0 + 592);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v85 = swift_allocObject();
    *(v0 + 656) = v85;
    *(v85 + 16) = xmmword_126CB0;
    strcpy((v85 + 32), "pausedTimers");
    *(v85 + 45) = 0;
    *(v85 + 46) = -5120;
    *(v85 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
    *(v85 + 48) = v84;
    v86 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v87 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
    v88 = swift_task_alloc();
    *(v0 + 664) = v88;
    *v88 = v0;
    v88[1] = sub_B0510;

    return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v87))(0xD000000000000020, 0x800000000012E3D0, v85);
  }

  v77 = *(v0 + 576);

  if (qword_15EDE0 != -1)
  {
    goto LABEL_72;
  }

LABEL_52:
  v78 = swift_task_alloc();
  *(v0 + 736) = v78;
  *v78 = v0;
  v78[1] = sub_B1640;
  v79 = *(v0 + 592);

  return sub_11BA94(v79);
}

uint64_t sub_AF900(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 616);
  v5 = *(*v2 + 608);
  v7 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = a2;

  return _swift_task_switch(sub_AFA50, 0, 0);
}

uint64_t sub_AFA50()
{
  sub_5BB0(v0 + 27);
  v1 = v0[79];
  v2 = v0[78];
  v0[81] = v1;
  v0[80] = v2;
  v101 = v0[71];
  v105 = v0[56];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[49];
  v94 = v0[51];
  v97 = v0[48];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v7 = v0[11];
  sub_23B08(v0 + 7, v0[10]);
  v8 = sub_1235DC() & (v1 != 0);
  sub_5BB0(v0 + 7);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v94);
  (*(v6 + 16))(v5, v101, v97);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v9 = v0[16];
  sub_23B08(v0 + 12, v0[15]);
  v10 = sub_1235DC();
  sub_5BB0(v0 + 12);
  if ((v10 & 1) == 0 || v8)
  {
    v26 = v0[46];
    v25 = v0[47];
    v27 = v0[45];
    sub_1250AC();
    v28 = sub_12504C();
    (*(v26 + 8))(v25, v27);
    if (v28)
    {
      v29 = v0[71];
      v30 = sub_125AAC();
      v31 = sub_125DFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v32, 2u);
      }

      if (v8)
      {
        v33 = v0[44];
        v34 = sub_12503C();
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      }

      else
      {
        v51 = v0[75];
        if (v51)
        {
          sub_22A8C(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
          }

          v52 = 0;
          v53 = v0[40];
          v54 = v0[72] + 32;
          do
          {
            if ((v0[72] & 0xC000000000000001) != 0)
            {
              v55 = sub_125FFC();
            }

            else
            {
              v55 = *(v54 + 8 * v52);
            }

            v56 = v55;
            sub_1135FC(v0[41]);

            v58 = _swiftEmptyArrayStorage[2];
            v57 = _swiftEmptyArrayStorage[3];
            if (v58 >= v57 >> 1)
            {
              sub_22A8C(v57 > 1, v58 + 1, 1);
            }

            v59 = v0[75];
            v60 = v0[41];
            v61 = v0[39];
            ++v52;
            _swiftEmptyArrayStorage[2] = (v58 + 1);
            (*(v53 + 32))(_swiftEmptyArrayStorage + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v58, v60, v61);
          }

          while (v52 != v59);
        }

        v62 = v0[44];
        sub_12521C();
        v63 = enum case for SiriTimePluginModel.timerMulti(_:);
        v64 = sub_12503C();
        v65 = *(v64 - 8);
        (*(v65 + 104))(v62, v63, v64);
        (*(v65 + 56))(v62, 0, 1, v64);
      }

      if (qword_15EDD8 != -1)
      {
        swift_once();
      }

      v66 = v0[74];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v67 = swift_allocObject();
      v0[82] = v67;
      *(v67 + 16) = xmmword_126CB0;
      strcpy((v67 + 32), "pausedTimers");
      *(v67 + 45) = 0;
      *(v67 + 46) = -5120;
      *(v67 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v67 + 48) = v66;
      v68 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v69 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v70 = swift_task_alloc();
      v0[83] = v70;
      *v70 = v0;
      v70[1] = sub_B0510;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v69))(0xD000000000000020, 0x800000000012E3D0, v67);
    }

    else
    {
      v35 = v0[72];

      if (qword_15EDE0 != -1)
      {
        swift_once();
      }

      v36 = swift_task_alloc();
      v0[92] = v36;
      *v36 = v0;
      v36[1] = sub_B1640;
      v37 = v0[74];

      return sub_11BA94(v37);
    }
  }

  else
  {
    v11 = sub_648C8(v0[72], 13);
    v0[97] = v11;

    if (v11)
    {
      v12 = objc_opt_self();
      v0[32] = 0;
      v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v0 + 32];
      v14 = v0[32];
      if (v13)
      {
        v15 = v13;
        v16 = v14;
        v17 = sub_122EFC();
        v19 = v18;

        v0[98] = v17;
        v0[99] = v19;
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v20 = v0[34];
        v21 = swift_task_alloc();
        v0[100] = v21;
        v21[2] = v17;
        v21[3] = v19;
        v21[4] = v20;
        v22 = swift_task_alloc();
        v0[101] = v22;
        *v22 = v0;
        v22[1] = sub_B1CA0;
        v23 = v0[74];

        return sub_11B684(v23, sub_B52E0, v21);
      }

      v71 = v0[74];
      v91 = v0[73];
      v72 = v0[67];
      v103 = v0[66];
      v107 = v0[70];
      v73 = v0[58];
      v95 = v0[57];
      v99 = v0[62];
      v74 = v0[55];
      v75 = v0[56];
      v76 = v0[54];
      v77 = v14;

      sub_122E8C();

      swift_willThrow();
      (*(v74 + 8))(v75, v76);
      (*(v73 + 8))(v99, v95);
      (*(v72 + 8))(v107, v103);
    }

    else
    {
      v38 = v0[74];
      v39 = v0[71];

      v40 = sub_125AAC();
      v41 = sub_125DFC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "Could not get timer action from timer.", v42, 2u);
      }

      v43 = v0[73];
      v44 = v0[67];
      v102 = v0[66];
      v106 = v0[70];
      v98 = v0[62];
      v46 = v0[57];
      v45 = v0[58];
      v47 = v0[55];
      v48 = v0[56];
      v49 = v0[54];

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();

      (*(v47 + 8))(v48, v49);
      (*(v45 + 8))(v98, v46);
      (*(v44 + 8))(v106, v102);
    }

    v78 = v0[70];
    v79 = v0[69];
    v80 = v0[68];
    v81 = v0[65];
    v82 = v0[61];
    v83 = v0[62];
    v85 = v0[59];
    v84 = v0[60];
    v86 = v0[56];
    v87 = v0[53];
    v89 = v0[50];
    v90 = v0[47];
    v92 = v0[44];
    v93 = v0[43];
    v96 = v0[42];
    v100 = v0[41];
    v104 = v0[38];
    v108 = v0[37];

    v88 = v0[1];

    return v88();
  }
}

uint64_t sub_B0510(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v8 = *v2;
  v3[84] = a1;
  v3[85] = v1;

  if (v1)
  {
    v5 = sub_B0BD4;
  }

  else
  {
    v6 = v3[82];

    v5 = sub_B0664;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B0664()
{
  v60 = v0;
  v1 = *(v0 + 648);
  if (v1)
  {
    v2 = *(v0 + 576);
    v3 = *(v0 + 568);

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 640);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v59 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v1, &v59);
      _os_log_impl(&dword_0, v4, v5, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);
    v13 = *(v0 + 488);
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    sub_12361C();
    (*(v11 + 16))(v10, v9, v12);
    sub_2AEC8(v14, v15);
    v16 = sub_12503C();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    v19 = *(v0 + 344);
    if (v18 == 1)
    {
      sub_5CA8(*(v0 + 344), &qword_15F9E0, &unk_127710);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    else
    {
      *(v0 + 200) = v16;
      *(v0 + 208) = sub_2AF38();
      v29 = sub_23B4C((v0 + 176));
      (*(v17 + 32))(v29, v19, v16);
    }

    v30 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v31 = swift_task_alloc();
    *(v0 + 688) = v31;
    *v31 = v0;
    v31[1] = sub_B0DFC;
    v32 = *(v0 + 672);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = *(v0 + 552);
    v36 = *(v0 + 488);
    v37 = *(v0 + 448);
    v38 = *(v0 + 264);
    v63 = 2;
    v62 = 0x800000000012D470;
    v39 = v0 + 176;
  }

  else
  {
    v20 = *(v0 + 576);
    v21 = *(v0 + 568);

    v22 = sub_125AAC();
    v23 = sub_125DFC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 576);
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(v0 + 576);
      if (v25 >> 62)
      {
        if (v27 < 0)
        {
          v41 = *(v0 + 576);
        }

        v28 = sub_1260FC();
        v42 = *(v0 + 576);
      }

      else
      {
        v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      }

      *(v26 + 4) = v28;

      _os_log_impl(&dword_0, v22, v23, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer snippet model for %ld timers.", v26, 0xCu);
    }

    else
    {
      v40 = *(v0 + 576);
      swift_bridgeObjectRelease_n();
    }

    v43 = *(v0 + 560);
    v44 = *(v0 + 544);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v47 = *(v0 + 480);
    v48 = *(v0 + 352);
    v49 = *(v0 + 336);
    sub_12361C();
    (*(v45 + 16))(v44, v43, v46);
    sub_2AEC8(v48, v49);
    v50 = sub_12503C();
    v51 = *(v50 - 8);
    v52 = (*(v51 + 48))(v49, 1, v50);
    v53 = *(v0 + 336);
    if (v52 == 1)
    {
      sub_5CA8(*(v0 + 336), &qword_15F9E0, &unk_127710);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    else
    {
      *(v0 + 160) = v50;
      *(v0 + 168) = sub_2AF38();
      v54 = sub_23B4C((v0 + 136));
      (*(v51 + 32))(v54, v53, v50);
    }

    v55 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v56 = swift_task_alloc();
    *(v0 + 712) = v56;
    *v56 = v0;
    v56[1] = sub_B1230;
    v57 = *(v0 + 672);
    v35 = *(v0 + 544);
    v36 = *(v0 + 480);
    v37 = *(v0 + 448);
    v38 = *(v0 + 264);
    v63 = 2;
    v62 = 0x800000000012D470;
    v39 = v0 + 136;
    v34 = 0;
    v33 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v38, v36, v35, v39, v37, v34, v33, 0xD000000000000018);
}

uint64_t sub_B0BD4()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[67];
  v32 = v0[66];
  v34 = v0[70];
  v6 = v0[58];
  v28 = v0[57];
  v30 = v0[62];
  v7 = v0[55];
  v8 = v0[56];
  v9 = v0[54];
  v10 = v0[44];

  sub_5CA8(v10, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v30, v28);
  (*(v5 + 8))(v34, v32);
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[65];
  v15 = v0[61];
  v16 = v0[62];
  v18 = v0[59];
  v17 = v0[60];
  v19 = v0[56];
  v20 = v0[53];
  v23 = v0[85];
  v24 = v0[50];
  v25 = v0[47];
  v26 = v0[44];
  v27 = v0[43];
  v29 = v0[42];
  v31 = v0[41];
  v33 = v0[38];
  v35 = v0[37];

  v21 = v0[1];

  return v21();
}

uint64_t sub_B0DFC()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 648);
  v4 = *(*v0 + 552);
  v5 = *(*v0 + 536);
  v6 = *(*v0 + 528);
  v7 = *(*v0 + 488);
  v8 = *(*v0 + 464);
  v9 = *(*v0 + 456);
  v12 = *v0;

  (*(v5 + 8))(v4, v6);
  v10 = *(v8 + 8);
  *(v1 + 696) = v10;
  *(v1 + 704) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_B1030, 0, 0);
}

uint64_t sub_B1030()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 584);
  v4 = *(v0 + 496);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 352);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v8 + 8))(v6, v7);
  v2(v4, v5);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  v12 = *(v0 + 520);
  v14 = *(v0 + 488);
  v13 = *(v0 + 496);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);
  v17 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 352);
  v24 = *(v0 + 344);
  v25 = *(v0 + 336);
  v26 = *(v0 + 328);
  v27 = *(v0 + 304);
  v28 = *(v0 + 296);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_B1230()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v3 = *(*v0 + 544);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 528);
  v6 = *(*v0 + 480);
  v7 = *(*v0 + 464);
  v8 = *(*v0 + 456);
  v11 = *v0;

  (*(v4 + 8))(v3, v5);
  v9 = *(v7 + 8);
  *(v1 + 720) = v9;
  *(v1 + 728) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_B1440, 0, 0);
}

uint64_t sub_B1440()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 584);
  v4 = *(v0 + 496);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 352);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v8 + 8))(v6, v7);
  v2(v4, v5);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  v12 = *(v0 + 520);
  v14 = *(v0 + 488);
  v13 = *(v0 + 496);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);
  v17 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 352);
  v24 = *(v0 + 344);
  v25 = *(v0 + 336);
  v26 = *(v0 + 328);
  v27 = *(v0 + 304);
  v28 = *(v0 + 296);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_B1640(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  v10 = *v2;
  v3[93] = a1;
  v3[94] = v1;

  if (v1)
  {
    v5 = v3[81];
    v6 = v3[74];

    v7 = sub_B2348;
  }

  else
  {
    v8 = v3[74];

    v7 = sub_B17A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B17A8()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[70];
  v4 = v0[38];
  (*(v0[58] + 16))(v0[59], v0[62], v0[57]);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  sub_123B0C();

  v6 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v7 = swift_task_alloc();
  v0[95] = v7;
  *v7 = v0;
  v7[1] = sub_B1908;
  v8 = v0[93];
  v9 = v0[56];
  v10 = v0[38];
  v11 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v11, v10, v9);
}

uint64_t sub_B1908()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = v2[93];
  (*(v2[36] + 8))(v2[38], v2[35]);

  if (v0)
  {
    v6 = sub_B2534;
  }

  else
  {
    v6 = sub_B1ABC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B1ABC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 432);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 520);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v13 = *(v0 + 472);
  v12 = *(v0 + 480);
  v14 = *(v0 + 448);
  v17 = *(v0 + 424);
  v18 = *(v0 + 400);
  v19 = *(v0 + 376);
  v20 = *(v0 + 352);
  v21 = *(v0 + 344);
  v22 = *(v0 + 336);
  v23 = *(v0 + 328);
  v24 = *(v0 + 304);
  v25 = *(v0 + 296);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_B1CA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 808);
  v6 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  v7 = v3[100];
  if (v1)
  {
    v8 = v4[81];
    v9 = v4[74];

    v10 = sub_B2720;
  }

  else
  {
    v11 = v4[74];

    v10 = sub_B1E3C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_B1E3C()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[70];
  v4 = v0[37];
  (*(v0[58] + 16))(v0[59], v0[62], v0[57]);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  sub_123B0C();

  v6 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v7 = swift_task_alloc();
  v0[104] = v7;
  *v7 = v0;
  v7[1] = sub_B1F9C;
  v8 = v0[102];
  v9 = v0[56];
  v10 = v0[37];
  v11 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v11, v10, v9);
}

uint64_t sub_B1F9C()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;
  *(*v1 + 840) = v0;

  v5 = v2[102];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v6 = sub_B2920;
  }

  else
  {
    v6 = sub_B2150;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B2150()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[62];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[65];
  v13 = v0[61];
  v12 = v0[62];
  v15 = v0[59];
  v14 = v0[60];
  v16 = v0[56];
  v19 = v0[53];
  v20 = v0[50];
  v21 = v0[47];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[42];
  v25 = v0[41];
  v26 = v0[38];
  v27 = v0[37];
  (*(v0[67] + 8))(v0[70], v0[66]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_B2348()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 520);
  v14 = *(v0 + 488);
  v15 = *(v0 + 496);
  v17 = *(v0 + 472);
  v16 = *(v0 + 480);
  v18 = *(v0 + 448);
  v19 = *(v0 + 424);
  v22 = *(v0 + 752);
  v23 = *(v0 + 400);
  v24 = *(v0 + 376);
  v25 = *(v0 + 352);
  v26 = *(v0 + 344);
  v27 = *(v0 + 336);
  v28 = *(v0 + 328);
  v29 = *(v0 + 304);
  v30 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_B2534()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 520);
  v14 = *(v0 + 488);
  v15 = *(v0 + 496);
  v17 = *(v0 + 472);
  v16 = *(v0 + 480);
  v18 = *(v0 + 448);
  v19 = *(v0 + 424);
  v22 = *(v0 + 768);
  v23 = *(v0 + 400);
  v24 = *(v0 + 376);
  v25 = *(v0 + 352);
  v26 = *(v0 + 344);
  v27 = *(v0 + 336);
  v28 = *(v0 + 328);
  v29 = *(v0 + 304);
  v30 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_B2720()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[67];
  v29 = v0[66];
  v31 = v0[70];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v8 = v0[56];
  v9 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v31, v29);
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[65];
  v14 = v0[61];
  v15 = v0[62];
  v17 = v0[59];
  v16 = v0[60];
  v18 = v0[56];
  v19 = v0[53];
  v22 = v0[103];
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[41];
  v30 = v0[38];
  v32 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_B2920()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[67];
  v29 = v0[66];
  v31 = v0[70];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v8 = v0[56];
  v9 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v31, v29);
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[65];
  v14 = v0[61];
  v15 = v0[62];
  v17 = v0[59];
  v16 = v0[60];
  v18 = v0[56];
  v19 = v0[53];
  v22 = v0[105];
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[41];
  v30 = v0[38];
  v32 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_B2B20(uint64_t *a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_122EEC(0);
  sub_124E1C();
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  sub_22A1C(v5, a1 + *(v7 + 24));
  sub_124DEC();
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  sub_123AAC();
  v8 = sub_124DDC();
  v9 = *a1;

  *a1 = v8;
  return result;
}

uint64_t sub_B2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;

  sub_123B2C();
  v9 = sub_12392C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a4, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return sub_123B1C();
}

uint64_t sub_B2D74(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_125ABC();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_124FFC();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_12501C();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v14 = sub_12392C();
  v3[33] = v14;
  v15 = *(v14 - 8);
  v3[34] = v15;
  v16 = *(v15 + 64) + 15;
  v3[35] = swift_task_alloc();
  v17 = sub_12368C();
  v3[36] = v17;
  v18 = *(v17 - 8);
  v3[37] = v18;
  v19 = *(v18 + 64) + 15;
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_B2FD4, 0, 0);
}

uint64_t sub_B2FD4()
{
  if (qword_15EEE0 != -1)
  {
    swift_once();
  }

  v38 = sub_5B30(v0[23], qword_161CD0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PauseTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[27];
  v8 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v35 = v0[23];
  v36 = v0[31];
  v37 = v0[21];

  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[39] = sub_124DBC();
  (*(v7 + 104))(v8, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v9);
  (*(v11 + 16))(v10, v38, v35);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v12 = sub_123A9C();
  v13 = sub_12553C();

  if (v13 <= 101)
  {
    if (v13 == 100)
    {
      v31 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v32 = swift_task_alloc();
      v0[43] = v32;
      *v32 = v0;
      v32[1] = sub_B37E8;
      v17 = 0x800000000012C5A0;
      v16 = 0xD000000000000012;
      goto LABEL_25;
    }

    if (v13 != 101)
    {
LABEL_24:
      v33 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v34 = swift_task_alloc();
      v0[52] = v34;
      *v34 = v0;
      v34[1] = sub_B42C8;
      v17 = 0xEF726F7272652365;
      v16 = 0x73614272656D6974;
      goto LABEL_25;
    }

    v18 = v0[21];
    v19 = swift_task_alloc();
    v0[40] = v19;
    *(v19 + 16) = v18;
    v20 = swift_task_alloc();
    v0[41] = v20;
    *v20 = v0;
    v20[1] = sub_B35F0;

    return sub_104D80(sub_B52B8, v19);
  }

  else
  {
    if (v13 != 102)
    {
      if (v13 == 103)
      {
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v29 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v30 = swift_task_alloc();
        v0[48] = v30;
        *v30 = v0;
        v30[1] = sub_B3CD8;
        v16 = 0xD000000000000020;
        v17 = 0x800000000012E330;
        goto LABEL_25;
      }

      if (v13 == 104)
      {
        v14 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v15 = swift_task_alloc();
        v0[50] = v15;
        *v15 = v0;
        v15[1] = sub_B3FD0;
        v16 = 0xD000000000000025;
        v17 = 0x800000000012D8A0;
LABEL_25:

        return v39(v16, v17, _swiftEmptyArrayStorage);
      }

      goto LABEL_24;
    }

    if (qword_15EDE0 != -1)
    {
      swift_once();
    }

    v23 = v0[21];
    v22 = v0[22];
    v24 = v22[3];
    v25 = v22[4];
    sub_23B08(v22, v24);
    v26 = sub_11CC78(v24, v25);
    v27 = swift_task_alloc();
    v0[45] = v27;
    *(v27 + 16) = v23;
    v28 = swift_task_alloc();
    v0[46] = v28;
    *v28 = v0;
    v28[1] = sub_B3AE0;

    return sub_11BC00(v26 & 1, sub_B52B0, v27);
  }
}

uint64_t sub_B35F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[41];
  v6 = v3[40];
  v9 = *v2;
  v4[42] = v1;

  if (v1)
  {
    v7 = sub_B4814;
  }

  else
  {
    v7 = sub_B3728;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B3728()
{
  v1 = v0[3];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B37E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[43];
  v8 = *v2;
  v4[44] = v1;

  if (v1)
  {
    v6 = sub_B39C4;
  }

  else
  {
    v6 = sub_B3904;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B3904()
{
  v1 = v0[6];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B39C4()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[44];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B3AE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[46];
  v6 = v3[45];
  v9 = *v2;
  v4[47] = v1;

  if (v1)
  {
    v7 = sub_B4930;
  }

  else
  {
    v7 = sub_B3C18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B3C18()
{
  v1 = v0[9];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B3CD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[48];
  v8 = *v2;
  v4[49] = v1;

  if (v1)
  {
    v6 = sub_B3EB4;
  }

  else
  {
    v6 = sub_B3DF4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B3DF4()
{
  v1 = v0[12];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B3EB4()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[49];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B3FD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[50];
  v8 = *v2;
  v4[51] = v1;

  if (v1)
  {
    v6 = sub_B41AC;
  }

  else
  {
    v6 = sub_B40EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B40EC()
{
  v1 = v0[15];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B41AC()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[51];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B42C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[52];
  v8 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_B44A4;
  }

  else
  {
    v6 = sub_B43E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B43E4()
{
  v1 = v0[18];
  v0[54] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_B45C0;
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B44A4()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[53];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B45C0()
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 432);
  v6 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_B4A4C;
  }

  else
  {
    v4 = sub_B46EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B46EC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v12 = *(v0 + 288);
  v13 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 232);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_B4814()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[42];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B4930()
{
  v1 = v0[39];

  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v12 = v0[25];
  v13 = v0[47];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B4A4C()
{
  v1 = *(v0 + 312);

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);
  v9 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 448);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

void sub_B4B74(uint64_t a1)
{
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v4 = sub_123ABC();
  sub_12555C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_B4BF8(uint64_t a1)
{
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v2 = sub_123ABC();
  v3 = [v2 targetTimer];

  if (v3)
  {
    v4 = sub_124D6C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_124D5C();
    v7 = [v3 remainingTime];
    v8 = v7;
    if (v7)
    {
      [v7 doubleValue];
    }

    sub_124D4C();

    v9 = sub_124D3C();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8);

  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_B4D08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_B4DB0;

  return sub_AE60C(a1, a2);
}

uint64_t sub_B4DB0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B4EE4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_B4EE4()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_B4FB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_B5058;

  return sub_B2D74(a1, a2);
}

uint64_t sub_B5058()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B518C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_B518C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_B525C()
{
  result = qword_161CE8;
  if (!qword_161CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161CE8);
  }

  return result;
}

uint64_t sub_B52E0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_B2B20(a1);
}

uint64_t sub_B5350()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1270B0;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_124DEC();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  strcpy((v5 + 80), "resumedTimers");
  *(v5 + 94) = -4864;
  v9 = v0[1];
  v10 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v5 + 96) = v9;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x6174614477656976;
  *(v5 + 136) = 0xE800000000000000;
  v11 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v11 + 24), v4, &unk_15F170, &unk_126E00);
  v12 = sub_124E4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {

    sub_5CA8(v4, &unk_15F170, &unk_126E00);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v12;
    v14 = sub_23B4C((v5 + 144));
    (*(v13 + 32))(v14, v4, v12);
  }

  return v5;
}

uint64_t sub_B5584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_B561C, 0, 0);
}

uint64_t sub_B561C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 24);
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *v1 = 0;
  *(v1 + 1) = v4;

  v3(v1);
  v7 = sub_B5350();
  v0[8] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_B5764;
  v10 = v0[5];

  return v12(0xD00000000000001ALL, 0x800000000012D430, v7);
}

uint64_t sub_B5764(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_B5924;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_B58B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_B58B0()
{
  sub_B5E68(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_B5924()
{
  sub_B5E68(v0[7]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_B5994(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B59B4, 0, 0);
}

uint64_t sub_B59B4()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "resumedTimers");
  *(v2 + 46) = -4864;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;
  v5 = v0[3];

  return v7(0xD000000000000019, 0x800000000012D410, v2);
}

uint64_t sub_B5B04(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

uint64_t sub_B5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B5D98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B5E68(uint64_t a1)
{
  v2 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B5F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_B6000()
{
  sub_59A04(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for TimerNLv4Constants.TimerVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv4Constants.TimerVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B6200()
{
  result = qword_161E70;
  if (!qword_161E70)
  {
    sub_5B68(&qword_161E78, qword_129AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161E70);
  }

  return result;
}

uint64_t sub_B6264(char a1)
{
  result = 0x6978456B63656863;
  switch(a1)
  {
    case 1:
      result = 0x657461657263;
      break;
    case 2:
      result = 0x6574656C6564;
      break;
    case 3:
      result = 0x656C6261736964;
      break;
    case 4:
      result = 0x656C62616E65;
      break;
    case 5:
      result = 0x6573756170;
      break;
    case 6:
      result = 0x74736575716572;
      break;
    case 7:
      result = 0x7465736572;
      break;
    case 8:
      result = 0x656D75736572;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 10:
      result = 1886352499;
      break;
    case 11:
      result = 0x736972616D6D7573;
      break;
    case 12:
      result = 0x657461647075;
      break;
    case 13:
      result = 0x6E776F6E6B6E75;
      break;
    case 14:
      result = 0x627265566F6ELL;
      break;
    case 15:
      result = 1852141679;
      break;
    case 16:
      result = 1684104562;
      break;
    case 17:
      result = 0x746165706572;
      break;
    case 18:
      result = 0x74726174736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B646C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B6264(*a1);
  v5 = v4;
  if (v3 == sub_B6264(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1261BC();
  }

  return v8 & 1;
}

Swift::Int sub_B64F4()
{
  v1 = *v0;
  sub_12626C();
  sub_B6264(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_B6558()
{
  sub_B6264(*v0);
  sub_125BFC();
}

Swift::Int sub_B65AC()
{
  v1 = *v0;
  sub_12626C();
  sub_B6264(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_B660C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_B66D0();
  *a2 = result;
  return result;
}

uint64_t sub_B663C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_B667C()
{
  result = qword_161E80;
  if (!qword_161E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161E80);
  }

  return result;
}

uint64_t sub_B66D0()
{
  v0 = sub_1261DC();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_B678C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

uint64_t sub_B6840()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161E90);
  sub_5B30(v0, qword_161E90);
  return sub_1257AC();
}

uint64_t sub_B688C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_15EEF8 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_161E90);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "CreateTimer.ConfirmIntentStrategy.actionForInput() called.", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_346FC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_B6B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_123CDC();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_1252AC();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = sub_123D1C();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v13 = sub_123E4C();
  v3[30] = v13;
  v14 = *(v13 - 8);
  v3[31] = v14;
  v15 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v16 = sub_123DAC();
  v3[36] = v16;
  v17 = *(v16 - 8);
  v3[37] = v17;
  v18 = *(v17 + 64) + 15;
  v3[38] = swift_task_alloc();
  v19 = sub_123D6C();
  v3[39] = v19;
  v20 = *(v19 - 8);
  v3[40] = v20;
  v21 = *(v20 + 64) + 15;
  v3[41] = swift_task_alloc();
  v22 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v23 = sub_123A1C();
  v3[49] = v23;
  v24 = *(v23 - 8);
  v3[50] = v24;
  v25 = *(v24 + 64) + 15;
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v26 = type metadata accessor for TimerNLv3Intent();
  v3[55] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v28 = sub_123D3C();
  v3[58] = v28;
  v29 = *(v28 - 8);
  v3[59] = v29;
  v30 = *(v29 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v31 = sub_124BCC();
  v3[62] = v31;
  v32 = *(v31 - 8);
  v3[63] = v32;
  v33 = *(v32 + 64) + 15;
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_B6FF8, 0, 0);
}

uint64_t sub_B6FF8()
{
  v343 = v0;
  v1 = v0;
  if (qword_15EEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_161E90);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "CreateTimer.ConfirmIntentStrategy.parseConfirmationResponse() called", v5, 2u);
  }

  object = v0[30]._object;
  countAndFlagsBits = v0[29]._countAndFlagsBits;
  v7 = v0[29]._object;
  v10 = v1[8]._countAndFlagsBits;
  v9 = v1[8]._object;

  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v11 = sub_123ABC();
  sub_123CCC();
  v12 = v7[11](object, countAndFlagsBits);
  if (v12 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v1[29]._object + 12))(v1[30]._object, v1[29]._countAndFlagsBits);
LABEL_9:
    v15 = v1[32]._countAndFlagsBits;
    v16 = v1[31]._countAndFlagsBits;
    v18 = v1[28]._countAndFlagsBits;
    v17 = v1[28]._object;
    v19 = *(v1[31]._object + 4);
    v19(v15, v1[30]._object, v16);
    v19(v17, v15, v16);
    sub_9848(v17, v18);
    v20 = sub_125AAC();
    v21 = sub_125DFC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[28]._countAndFlagsBits;
    v24 = v1;
    if (v22)
    {
      v25 = v1[27]._object;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v342[0] = v27;
      *v26 = 136315138;
      sub_98AC(&qword_161ED0);
      v28 = sub_12618C();
      v30 = v29;
      sub_97EC(v23);
      v31 = sub_8530(v28, v30, v342);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v20, v21, "timerNLIntent: %s", v26, 0xCu);
      sub_5BB0(v27);
    }

    else
    {

      sub_97EC(v23);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    v32 = v24;
    v33 = v24[28]._object;
    v34 = v24[27]._countAndFlagsBits;
    v35 = v24[27]._object;
    v36 = v24[25]._countAndFlagsBits;
    v38 = v32[24]._countAndFlagsBits;
    v37 = v32[24]._object;
    v39 = v32[7]._object;
    sub_98AC(&qword_15FFA0);
    v1 = v32;
    sub_12428C();
    v40 = &enum case for ConfirmationResponse.confirmed(_:);
    if (BYTE4(v32[32]._object))
    {
      v40 = &enum case for ConfirmationResponse.rejected(_:);
    }

    (*(v36 + 104))(v34, *v40, v37);
    (*(v36 + 16))(v38, v34, v37);
    (*(v36 + 56))(v38, 0, 1, v37);
    sub_1255EC();
    sub_1239CC();
    (*(v36 + 8))(v34, v37);
    sub_97EC(v33);
    goto LABEL_17;
  }

  if (v12 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v13 = v1[30]._object;
    (*(v1[29]._object + 12))(v13, v1[29]._countAndFlagsBits);
    v14 = *&v13[*(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48)];

    goto LABEL_9;
  }

  v54 = v1;
  if (v12 == enum case for Parse.directInvocation(_:))
  {
    v55 = v1[30]._object;
    v57 = v1[24]._object;
    v56 = v1[25]._countAndFlagsBits;
    v58 = v1[21]._object;
    v59 = v1[14]._object;
    v61 = v1[12]._object;
    v60 = v1[13]._countAndFlagsBits;
    (*(v1[29]._object + 12))(v55, v1[29]._countAndFlagsBits);
    (*(v60 + 32))(v59, v55, v61);
    sub_12527C();
    if ((*(v56 + 48))(v58, 1, v57) != 1)
    {
      v120 = v1[25]._countAndFlagsBits;
      v121 = v1[25]._object;
      v123 = v1[24]._countAndFlagsBits;
      v122 = v1[24]._object;
      v124 = v1[14]._object;
      v126 = v1[12]._object;
      v125 = v1[13]._countAndFlagsBits;
      v127 = v1[7]._object;
      (*(v120 + 32))(v121, v1[21]._object, v122);
      (*(v120 + 16))(v123, v121, v122);
      (*(v120 + 56))(v123, 0, 1, v122);
      sub_1255EC();
      sub_1239CC();
      (*(v120 + 8))(v121, v122);
LABEL_52:
      (*(v125 + 8))(v124, v126);
LABEL_17:
      v41 = v1[32]._countAndFlagsBits;
      v42 = v1[30]._countAndFlagsBits;
      v43 = v1[30]._object;
      v45 = v1[28]._countAndFlagsBits;
      v44 = v1[28]._object;
      v47 = v1[26]._object;
      v46 = v1[27]._countAndFlagsBits;
      v49 = v1[25]._object;
      v48 = v1[26]._countAndFlagsBits;
      v50 = v1;
      v51 = v1[24]._countAndFlagsBits;
      v294 = v50[23]._object;
      v296 = v50[23]._countAndFlagsBits;
      v298 = v50[22]._object;
      v300 = v50[22]._countAndFlagsBits;
      v302 = v50[21]._object;
      v304 = v50[21]._countAndFlagsBits;
      v306 = v50[20]._object;
      v308 = v50[19]._countAndFlagsBits;
      v310 = v50[17]._object;
      v312 = v50[17]._countAndFlagsBits;
      v314 = v50[16]._object;
      v316 = v50[16]._countAndFlagsBits;
      v318 = v50[14]._object;
      v320 = v50[14]._countAndFlagsBits;
      v323 = v50[13]._object;
      v328 = v50[12]._countAndFlagsBits;
      v333 = v50[11]._object;
      v338 = v50[10]._countAndFlagsBits;

      v52 = v50->_object;
      goto LABEL_18;
    }

    v334 = v11;
    v62 = v1[14]._object;
    sub_5CA8(v1[21]._object, &unk_161EC0, &unk_126E20);
    v63 = sub_123D0C();
    if (!v63)
    {
      goto LABEL_105;
    }

    v64 = v63;
    v65 = v1[12]._countAndFlagsBits;
    v66 = v1;
    v67 = v1[11]._countAndFlagsBits;
    v68 = v66[10]._object;
    v69 = *(v67 + 104);
    v69(v65, enum case for DirectInvocationUtils.Timer.UserInfoKey.buttonPressed(_:), v68);
    v70 = sub_12529C();
    v72 = v71;
    v73 = *(v67 + 8);
    v73(v65, v68);
    if (*(v64 + 16))
    {
      v74 = sub_8AD8(v70, v72);
      v76 = v75;

      if ((v76 & 1) == 0)
      {
        goto LABEL_104;
      }

      sub_8B50(*(v64 + 56) + 32 * v74, &v54[1]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_104;
      }

      v77._rawValue = &off_157950;
      v78 = sub_12613C(v77, v54[5]);

      if (v78)
      {
        if (v78 != 1)
        {
LABEL_104:

          v1 = v54;
LABEL_105:
          v246 = v1;
          v247 = *(v1[13]._countAndFlagsBits + 16);
          v247(v1[14]._countAndFlagsBits, v1[14]._object, v1[12]._object);
          v248 = sub_125AAC();
          v249 = sub_125DEC();
          v250 = os_log_type_enabled(v248, v249);
          v251 = v1[14]._countAndFlagsBits;
          if (v250)
          {
            v341 = v249;
            v252 = v1[13]._countAndFlagsBits;
            v253 = v1[13]._object;
            v254 = v1[12]._object;
            v255 = swift_slowAlloc();
            v331 = swift_slowAlloc();
            v342[0] = v331;
            *v255 = 136315138;
            v247(v253, v251, v254);
            v256 = sub_125BAC();
            v258 = v257;
            v259 = *(v252 + 8);
            v259(v251, v254);
            v260 = sub_8530(v256, v258, v342);

            *(v255 + 4) = v260;
            _os_log_impl(&dword_0, v248, v341, "Received unsupported directInvocation for confirmation: %s", v255, 0xCu);
            sub_5BB0(v331);
          }

          else
          {
            v262 = v1[12]._object;
            v261 = v1[13]._countAndFlagsBits;

            v259 = *(v261 + 8);
            v259(v251, v262);
          }

          v1 = v246;
          v263 = v246[14]._object;
          v264 = v246[12]._object;
          BYTE1(v246[32]._object) = 0;
          sub_5AE8(&unk_15F1A0, &unk_126ED0);
          sub_84CC();
          swift_allocError();
          sub_1251BC();
          swift_willThrow();

          v259(v263, v264);
          goto LABEL_109;
        }

        v329 = 1;
      }

      else
      {
        v329 = 0;
      }

      v234 = v54[11]._object;
      v235 = v54[10]._object;
      v69(v234, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v235);
      v236 = sub_12529C();
      v238 = v237;
      v73(v234, v235);
      if (*(v64 + 16))
      {
        v239 = sub_8AD8(v236, v238);
        v241 = v240;

        if (v241)
        {
          v1 = v54;
          sub_8B50(*(v64 + 56) + 32 * v239, &v54[3]);

          if (swift_dynamicCast())
          {
            v242 = v54[6]._countAndFlagsBits;
            v243 = v54[6]._object;
            v244 = sub_B66D0();
            if (v244 != 19)
            {
              if (sub_B6264(v244) == 0x657461657263 && v245 == 0xE600000000000000)
              {

LABEL_115:
                v327 = *(v1[25]._countAndFlagsBits + 56);
                v327(v1[21]._countAndFlagsBits, 1, 1, v1[24]._object);
                v278 = sub_125AAC();
                v279 = sub_125DFC();
                if (os_log_type_enabled(v278, v279))
                {
                  v280 = swift_slowAlloc();
                  v281 = swift_slowAlloc();
                  v342[0] = v281;
                  *v280 = 136315138;
                  if (v329)
                  {
                    v282 = 0x6C65636E6163;
                  }

                  else
                  {
                    v282 = 7562617;
                  }

                  if (v329)
                  {
                    v283 = 0xE600000000000000;
                  }

                  else
                  {
                    v283 = 0xE300000000000000;
                  }

                  v284 = sub_8530(v282, v283, v342);

                  *(v280 + 4) = v284;
                  _os_log_impl(&dword_0, v278, v279, "Received confirmation directionInvocation, buttonPressed: %s", v280, 0xCu);
                  sub_5BB0(v281);
                }

                v285 = v54[21]._countAndFlagsBits;
                if (v329)
                {
                  v286 = sub_1261BC();

                  sub_5CA8(v285, &unk_161EC0, &unk_126E20);
                  v287 = &enum case for ConfirmationResponse.rejected(_:);
                  if (v286)
                  {
                    v287 = &enum case for ConfirmationResponse.confirmed(_:);
                  }
                }

                else
                {

                  sub_5CA8(v285, &unk_161EC0, &unk_126E20);
                  v287 = &enum case for ConfirmationResponse.confirmed(_:);
                }

                v1 = v54;
                v289 = v54[24]._object;
                v288 = v54[25]._countAndFlagsBits;
                v290 = v54[24]._countAndFlagsBits;
                v291 = v1[21]._countAndFlagsBits;
                v124 = v1[14]._object;
                v126 = v1[12]._object;
                v125 = v1[13]._countAndFlagsBits;
                v292 = v1[7]._object;
                (*(v288 + 104))(v291, *v287, v289);
                v327(v291, 0, 1, v289);
                sub_BA424(v291, v290);
                sub_1255EC();
                sub_1239CC();
                sub_5CA8(v291, &unk_161EC0, &unk_126E20);
                goto LABEL_52;
              }

LABEL_114:
              v277 = sub_1261BC();

              if (v277)
              {
                goto LABEL_115;
              }
            }
          }

          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    goto LABEL_104;
  }

  if (v12 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v79 = v1[30]._object;
    v81 = v1[24]._object;
    v80 = v1[25]._countAndFlagsBits;
    v335 = v1;
    v82 = v1[23]._object;
    (*(v1[29]._object + 12))(v79, v1[29]._countAndFlagsBits);
    v83 = *v79;
    v84 = *(v80 + 56);
    v84(v82, 1, 1, v81);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v85 = sub_125AAC();
      v86 = sub_125DFC();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "Received UserDialogAct - UserAccepted", v87, 2u);
      }

      v89 = v1[24]._object;
      v88 = v1[25]._countAndFlagsBits;
      v90 = v1[23]._object;

      sub_5CA8(v90, &unk_161EC0, &unk_126E20);
      (*(v88 + 104))(v90, enum case for ConfirmationResponse.confirmed(_:), v89);
      v84(v90, 0, 1, v89);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v91 = sub_125AAC();
      v92 = sub_125DEC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "Received UserDialogAct - UserWantedToProceed (Unexpected!)", v93, 2u);
      }

      v95 = v1[24]._object;
      v94 = v1[25]._countAndFlagsBits;
      v96 = v1[23]._object;

      sub_5CA8(v96, &unk_161EC0, &unk_126E20);
      (*(v94 + 104))(v96, enum case for ConfirmationResponse.confirmed(_:), v95);
      v84(v96, 0, 1, v95);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v97 = sub_125AAC();
      v98 = sub_125DFC();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_0, v97, v98, "Received UserDialogAct - UserRejected", v99, 2u);
      }

      v101 = v1[24]._object;
      v100 = v1[25]._countAndFlagsBits;
      v102 = v1[23]._object;

      sub_5CA8(v102, &unk_161EC0, &unk_126E20);
      (*(v100 + 104))(v102, enum case for ConfirmationResponse.rejected(_:), v101);
      v84(v102, 0, 1, v101);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v103 = sub_125AAC();
      v104 = sub_125DFC();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v103, v104, "Received UserDialogAct - UserCancelled", v105, 2u);
      }

      v107 = v1[24]._object;
      v106 = v1[25]._countAndFlagsBits;
      v108 = v1[23]._object;

      sub_5CA8(v108, &unk_161EC0, &unk_126E20);
      (*(v106 + 104))(v108, enum case for ConfirmationResponse.rejected(_:), v107);
      v84(v108, 0, 1, v107);
    }

    v110 = v1[24]._object;
    v109 = v1[25]._countAndFlagsBits;
    v111 = v1[23]._countAndFlagsBits;
    sub_BA424(v1[23]._object, v111);
    if ((*(v109 + 48))(v111, 1, v110) != 1)
    {
      v198 = v1[26]._object;
      v200 = v1[24]._object;
      v199 = v1[25]._countAndFlagsBits;
      v201 = v1[24]._countAndFlagsBits;
      v339 = v1[23]._object;
      v202 = v1[7]._object;
      (*(v199 + 32))(v198, v1[23]._countAndFlagsBits, v200);
      (*(v199 + 16))(v201, v198, v200);
      v84(v201, 0, 1, v200);
      sub_1255EC();
      sub_1239CC();
      swift_unknownObjectRelease();
      (*(v199 + 8))(v198, v200);
      sub_5CA8(v339, &unk_161EC0, &unk_126E20);
      goto LABEL_17;
    }

    sub_5CA8(v1[23]._countAndFlagsBits, &unk_161EC0, &unk_126E20);
    swift_unknownObjectRetain();
    v112 = sub_125AAC();
    v113 = sub_125DEC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v342[0] = v115;
      *v114 = 136315138;
      v1[7]._countAndFlagsBits = v83;
      swift_unknownObjectRetain();
      sub_5AE8(&unk_160610, &unk_129CC0);
      v116 = sub_125BAC();
      v118 = sub_8530(v116, v117, v342);

      *(v114 + 4) = v118;
      v1 = v335;
      _os_log_impl(&dword_0, v112, v113, "Received unsupported userDialogAct for confirmation: %s", v114, 0xCu);
      sub_5BB0(v115);
    }

    v119 = v1[23]._object;
    BYTE3(v1[32]._object) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_5CA8(v119, &unk_161EC0, &unk_126E20);
  }

  else
  {
    if (v12 == enum case for Parse.uso(_:))
    {
      v128 = v1[30]._object;
      v129 = v1[29]._countAndFlagsBits;
      v130 = v1[29]._object;
      v131 = v1[25]._countAndFlagsBits;
      v330 = v1[24]._object;
      v334 = v11;
      v324 = v1[22]._object;
      v132 = v1[20]._countAndFlagsBits;
      v133 = v1[20]._object;
      v134 = v1;
      v137 = v1 + 19;
      v136 = v1[19]._countAndFlagsBits;
      v135 = v137->_object;
      v139 = v134[18]._countAndFlagsBits;
      v138 = v134[18]._object;
      v140 = v134[15]._object;
      v130[12](v128, v129);
      (*(v132 + 32))(v133, v128, v135);
      sub_123D5C();
      v141 = sub_123D9C();
      v138[1](v136, v139);
      v142 = v324;
      v143 = v330;
      v329 = v131 + 56;
      v325 = *(v131 + 56);
      v325(v142, 1, 1, v143);
      v144 = 0;
      v145 = *(v141 + 16);
      v1 = (v140 + 16);
      while (v145 != v144)
      {
        if (v144 >= *(v141 + 16))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v146 = v54[17]._object;
        v147 = v54[15]._countAndFlagsBits;
        (*(v140 + 2))(v146, v141 + ((v140[80] + 32) & ~v140[80]) + *(v140 + 9) * v144++, v147);
        v148 = sub_123DDC();
        (*(v140 + 1))(v146, v147);
        if (v148)
        {
          v149 = sub_125AAC();
          v150 = sub_125DFC();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            *v151 = 0;
            _os_log_impl(&dword_0, v149, v150, "USO parse userDialogActs contains hasAccepted; response is .confirmed.", v151, 2u);
          }

          v153 = v54[24]._object;
          v152 = v54[25]._countAndFlagsBits;
          v154 = v54[22]._object;

          sub_5CA8(v154, &unk_161EC0, &unk_126E20);
          (*(v152 + 104))(v154, enum case for ConfirmationResponse.confirmed(_:), v153);
          v325(v154, 0, 1, v153);
          break;
        }
      }

      v155 = 0;
      while (v145 != v155)
      {
        if (v155 >= *(v141 + 16))
        {
          goto LABEL_111;
        }

        v156 = v54[17]._countAndFlagsBits;
        v157 = v54[15]._countAndFlagsBits;
        (*(v140 + 2))(v156, v141 + ((v140[80] + 32) & ~v140[80]) + *(v140 + 9) * v155++, v157);
        v158 = sub_123E2C();
        (*(v140 + 1))(v156, v157);
        if (v158)
        {
          v159 = sub_125AAC();
          v160 = sub_125DFC();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&dword_0, v159, v160, "USO parse userDialogActs contains hasWantedToProceed; response is .confirmed (unexpected!)", v161, 2u);
          }

          v163 = v54[24]._object;
          v162 = v54[25]._countAndFlagsBits;
          v164 = v54[22]._object;

          sub_5CA8(v164, &unk_161EC0, &unk_126E20);
          (*(v162 + 104))(v164, enum case for ConfirmationResponse.confirmed(_:), v163);
          v325(v164, 0, 1, v163);
          break;
        }
      }

      v165 = 0;
      while (v145 != v165)
      {
        if (v165 >= *(v141 + 16))
        {
          goto LABEL_112;
        }

        v166 = v54[16]._object;
        v167 = v54[15]._countAndFlagsBits;
        (*(v140 + 2))(v166, v141 + ((v140[80] + 32) & ~v140[80]) + *(v140 + 9) * v165++, v167);
        v168 = sub_123DEC();
        (*(v140 + 1))(v166, v167);
        if (v168)
        {
          v169 = sub_125AAC();
          v170 = sub_125DFC();
          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            *v171 = 0;
            _os_log_impl(&dword_0, v169, v170, "USO parse userDialogActs contains hasRejected; response is .rejected.", v171, 2u);
          }

          v173 = v54[24]._object;
          v172 = v54[25]._countAndFlagsBits;
          v174 = v54[22]._object;

          sub_5CA8(v174, &unk_161EC0, &unk_126E20);
          (*(v172 + 104))(v174, enum case for ConfirmationResponse.rejected(_:), v173);
          v325(v174, 0, 1, v173);
          break;
        }
      }

      v175 = 0;
      while (v145 != v175)
      {
        if (v175 >= *(v141 + 16))
        {
          goto LABEL_113;
        }

        v176 = v54[16]._countAndFlagsBits;
        v177 = v54[15]._countAndFlagsBits;
        (*(v140 + 2))(v176, v141 + ((v140[80] + 32) & ~v140[80]) + *(v140 + 9) * v175++, v177);
        v178 = sub_123DFC();
        (*(v140 + 1))(v176, v177);
        if (v178)
        {
          v179 = sub_125AAC();
          v180 = sub_125DFC();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            *v181 = 0;
            _os_log_impl(&dword_0, v179, v180, "USO parse userDialogActs contains hasCancelled; response is .rejected.", v181, 2u);
          }

          v183 = v54[24]._object;
          v182 = v54[25]._countAndFlagsBits;
          v184 = v54[22]._object;

          sub_5CA8(v184, &unk_161EC0, &unk_126E20);
          (*(v182 + 104))(v184, enum case for ConfirmationResponse.rejected(_:), v183);
          v325(v184, 0, 1, v183);
          break;
        }
      }

      v1 = v54;
      v185 = v54[24]._object;
      v186 = v54[25]._countAndFlagsBits;
      v187 = v54[22]._countAndFlagsBits;
      sub_BA424(v54[22]._object, v187);
      if ((*(v186 + 48))(v187, 1, v185) != 1)
      {
        v224 = v54[26]._countAndFlagsBits;
        v226 = v54[24]._object;
        v225 = v54[25]._countAndFlagsBits;
        v227 = v54[24]._countAndFlagsBits;
        v228 = v54[22]._object;
        v229 = v54[22]._countAndFlagsBits;
        v230 = v54[20]._countAndFlagsBits;
        v340 = v54[20]._object;
        v321 = v54[19]._object;
        v231 = v54[7]._object;

        (*(v225 + 32))(v224, v229, v226);
        (*(v225 + 16))(v227, v224, v226);
        v325(v227, 0, 1, v226);
        sub_1255EC();
        sub_1239CC();
        (*(v225 + 8))(v224, v226);
        v232 = v228;
        v1 = v54;
        sub_5CA8(v232, &unk_161EC0, &unk_126E20);
        (*(v230 + 8))(v340, v321);
        goto LABEL_17;
      }

      sub_5CA8(v54[22]._countAndFlagsBits, &unk_161EC0, &unk_126E20);

      v188 = sub_125AAC();
      v189 = sub_125DEC();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = v1[15]._countAndFlagsBits;
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v342[0] = v192;
        *v191 = 136315138;
        v193 = sub_125C7C();
        v194 = v1;
        v196 = v195;

        v197 = sub_8530(v193, v196, v342);
        v1 = v194;

        *(v191 + 4) = v197;
        _os_log_impl(&dword_0, v188, v189, "Received unsupported userDialogActs for confirmation: %s", v191, 0xCu);
        sub_5BB0(v192);
      }

      else
      {
      }

      v233 = v1[22]._object;
      v222 = v1[20]._countAndFlagsBits;
      v221 = v1[20]._object;
      v223 = v1[19]._object;
      BYTE2(v1[32]._object) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      sub_5CA8(v233, &unk_161EC0, &unk_126E20);
    }

    else
    {
      (*(v1[9]._object + 2))(v1[10]._countAndFlagsBits, v1[8]._countAndFlagsBits, v1[9]._countAndFlagsBits);
      v203 = sub_125AAC();
      v204 = sub_125DEC();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = v1[30]._countAndFlagsBits;
        v206 = v1;
        v207 = v1[29]._countAndFlagsBits;
        v209 = v206[9]._object;
        v208 = v206[10]._countAndFlagsBits;
        v336 = v11;
        v210 = v54[9]._countAndFlagsBits;
        v211 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v342[0] = v212;
        *v211 = 136315138;
        sub_123CCC();
        v213 = sub_125BAC();
        v215 = v214;
        v216 = v210;
        v11 = v336;
        v209[1](v208, v216);
        v217 = sub_8530(v213, v215, v342);
        v1 = v54;

        *(v211 + 4) = v217;
        _os_log_impl(&dword_0, v203, v204, "Received an unsupported input: %s", v211, 0xCu);
        sub_5BB0(v212);
      }

      else
      {
        v219 = v1[9]._object;
        v218 = v1[10]._countAndFlagsBits;
        v220 = v1[9]._countAndFlagsBits;

        v219[1](v218, v220);
      }

      v221 = v1[30]._object;
      v223 = v1[29]._countAndFlagsBits;
      v222 = v1[29]._object;
      LOBYTE(v1[32]._object) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();
    }

    (*(v222 + 8))(v221, v223);
  }

LABEL_109:
  v265 = v1[32]._countAndFlagsBits;
  v266 = v1[30]._countAndFlagsBits;
  v267 = v1[30]._object;
  v269 = v1[28]._countAndFlagsBits;
  v268 = v1[28]._object;
  v271 = v1[26]._object;
  v270 = v1[27]._countAndFlagsBits;
  v272 = v1;
  p_object = &v1[25]._object;
  v274 = v1[25]._object;
  v273 = p_object[1];
  v276 = v272[24]._countAndFlagsBits;
  v293 = v272[23]._object;
  v295 = v272[23]._countAndFlagsBits;
  v297 = v272[22]._object;
  v299 = v272[22]._countAndFlagsBits;
  v301 = v272[21]._object;
  v303 = v272[21]._countAndFlagsBits;
  v305 = v272[20]._object;
  v307 = v272[19]._countAndFlagsBits;
  v309 = v272[17]._object;
  v311 = v272[17]._countAndFlagsBits;
  v313 = v272[16]._object;
  v315 = v272[16]._countAndFlagsBits;
  v317 = v272[14]._object;
  v319 = v272[14]._countAndFlagsBits;
  v322 = v272[13]._object;
  v326 = v272[12]._countAndFlagsBits;
  v332 = v272[11]._object;
  v337 = v272[10]._countAndFlagsBits;

  v52 = v272->_object;
LABEL_18:

  return v52();
}

uint64_t sub_B9138(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_12501C();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_B92E8, 0, 0);
}

uint64_t sub_B92E8()
{
  v1 = *(v0 + 24);
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v2 = sub_123A9C();
  *(v0 + 112) = v2;
  v3 = [v2 createdTimer];
  *(v0 + 120) = v3;
  if (v3)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = sub_113D6C(0, 0);
    *(v0 + 128) = v7;
    (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
    if (qword_15EEF8 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v13 = sub_5B30(v12, qword_161E90);
    (*(v11 + 16))(v10, v13, v12);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EE10 != -1)
    {
      swift_once();
    }

    sub_5AE8(&qword_15F180, &unk_126E10);
    v14 = swift_allocObject();
    *(v0 + 136) = v14;
    *(v14 + 16) = xmmword_126CB0;
    *(v14 + 32) = 0x72656D6974;
    *(v14 + 40) = 0xE500000000000000;
    *(v14 + 72) = type metadata accessor for TimerTimer(0);
    *(v14 + 48) = v7;
    v15 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v26 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_B9704;

    return v26(0xD000000000000024, 0x800000000012E4B0, v14);
  }

  else
  {
    if (qword_15EEF8 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 40), qword_161E90);
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "timer to confirm is not found!", v20, 2u);
    }

    *(v0 + 184) = 3;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v21 = *(v0 + 104);
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_B9704(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v9 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_B9A6C;
  }

  else
  {
    v7 = v3[16];
    v6 = v3[17];

    v5 = sub_B9828;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B9828()
{
  v1 = v0[4];
  v2 = sub_12392C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_B9910;
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[4];
  v7 = v0[2];

  return sub_F2BE4(v7, 1, v6, v5);
}

uint64_t sub_B9910()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  sub_5CA8(*(v2 + 32), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_B9C18;
  }

  else
  {
    v6 = sub_B9B44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B9A6C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  v8 = v0[20];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_B9B44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);

  (*(v5 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_B9C18()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v2, v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_B9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_B6B20(a1, a2, a3);
}

uint64_t sub_B9D98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_B9138(a1, a2);
}

uint64_t sub_B9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_B9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_B9FC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_12368C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_BA0DC, 0, 0);
}

uint64_t sub_BA0DC()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_12367C();
  sub_12391C();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1CFDC;
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[2];

  return sub_2F7D4(v6, v4, v5);
}

uint64_t sub_BA18C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_12368C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_BA2A8, 0, 0);
}

uint64_t sub_BA2A8()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_12367C();
  sub_12391C();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D494;
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[2];

  return sub_2F7D4(v6, v4, v5);
}

uint64_t sub_BA358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_503C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_BA424(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_161EC0, &unk_126E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA494()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161ED8);
  sub_5B30(v0, qword_161ED8);
  return sub_1257AC();
}

uint64_t sub_BA4E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5AE8(&qword_15F6A8, &unk_129D30);
    v2 = sub_12612C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_8B50(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_99B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_99B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_99B0(v31, v32);
    result = sub_125F9C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_99B0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void (*sub_BA7CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_125FFC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_BA84C;
  }

  __break(1u);
  return result;
}

void sub_BA854(unint64_t a1)
{
  v2 = [objc_allocWithZone(SAUIAddViews) init];
  v3 = [objc_allocWithZone(SADialog) init];
  v4 = [objc_allocWithZone(SADialogText) init];
  v5 = sub_125B8C();
  [v4 setText:v5];

  [v3 setContent:v4];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v6 = &_s11SiriKitFlow013ConfirmIntentC13StrategyAsyncPAAE17makeErrorResponse5error17confirmParametersAA6Output_ps0I0_p_AA0E16ResolutionRecordVy0E4TypeQz0ejQ0QzGtYaKFTu_ptr;
  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_125FFC();
      }

      else
      {
        if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_38;
        }

        v7 = *(a1 + 32);
      }

      v8 = v7;
      v9 = v6[88];
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = [objc_allocWithZone(v6[88]) init];
      [v12 setDialog:v3];
      v13 = v12;
      v14 = [v11 title];
      [v13 setTitle:v14];

      v15 = [v11 speakableText];
      [v13 setSpeakableText:v15];

      v16 = [v11 timers];
      if (!v16)
      {
        goto LABEL_41;
      }

      a1 = v16;
      v37 = v8;
      v38 = v4;
      v39 = v3;
      sub_30B8C(0, &qword_161FA0, SATimerObject_ptr);
      v4 = sub_125C6C();

      v40 = _swiftEmptyArrayStorage;
      if (v4 >> 62)
      {
        v17 = sub_1260FC();
        if (!v17)
        {
LABEL_40:

          isa = sub_125C4C().super.isa;

          [v13 setTimers:isa];

          v4 = v38;
          v3 = v39;
          v8 = v37;
LABEL_41:
          sub_5AE8(&qword_160810, &unk_127420);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_126EB0;
          *(v34 + 32) = v13;
          sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
          v32.super.isa = sub_125C4C().super.isa;

          [v2 setViews:v32.super.isa];

          goto LABEL_42;
        }
      }

      else
      {
        v17 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
        if (!v17)
        {
          goto LABEL_40;
        }
      }

      v36 = v2;
      v18 = 0;
      v2 = (v4 & 0xC000000000000001);
      while (1)
      {
        if (v2)
        {
          v19 = sub_125FFC();
        }

        else
        {
          if (v18 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_33;
          }

          v19 = *(v4 + 8 * v18 + 32);
        }

        a1 = v19;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v3 = [objc_allocWithZone(SATimerObject) init];
        v21 = [a1 timerValue];
        [v3 setTimerValue:v21];

        sub_125C3C();
        if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_125C9C();
        }

        a1 = &v40;
        sub_125CCC();
        ++v18;
        if (v20 == v17)
        {
          v2 = v36;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v6 = &_s11SiriKitFlow013ConfirmIntentC13StrategyAsyncPAAE17makeErrorResponse5error17confirmParametersAA6Output_ps0I0_p_AA0E16ResolutionRecordVy0E4TypeQz0ejQ0QzGtYaKFTu_ptr;
      if (!sub_1260FC())
      {
        goto LABEL_27;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v22 = *(a1 + 32);
    }

    v23 = v22;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v13 = v23;
      [v25 setDialog:v3];
      sub_5AE8(&qword_160810, &unk_127420);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_126EB0;
      *(v26 + 32) = v25;
      goto LABEL_31;
    }
  }

LABEL_27:
  if (qword_15EF00 != -1)
  {
LABEL_38:
    swift_once();
  }

  v27 = sub_125ABC();
  sub_5B30(v27, qword_161ED8);
  v28 = sub_125AAC();
  v29 = sub_125DFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Snippet did not contain a timer snippet. Only logging dialog.", v30, 2u);
  }

  v13 = [objc_allocWithZone(v6[88]) init];
  [v13 setDialog:v3];
  sub_5AE8(&qword_160810, &unk_127420);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_126EB0;
  *(v31 + 32) = v13;
LABEL_31:
  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  v32.super.isa = sub_125C4C().super.isa;

  [v2 setViews:v32.super.isa];
LABEL_42:

  sub_12366C();
  v35 = sub_125B8C();

  [v2 setDialogPhase:v35];
}

void sub_BAF10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1237EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1239AC();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_12397C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF00 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_161ED8);
  v19 = *(v14 + 16);
  v53 = a2;
  v19(v17, a2, v13);
  v20 = sub_125AAC();
  v21 = sub_125DFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v46 = v7;
    v25 = v24;
    *&v54 = v24;
    *v23 = 136315138;
    v26 = sub_12395C();
    v47 = v6;
    v27 = a1;
    v29 = v28;
    (*(v14 + 8))(v17, v13);
    v30 = sub_8530(v26, v29, &v54);
    a1 = v27;
    v6 = v47;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v20, v21, "logTimerSnippetAndDialog called for intent: %s", v23, 0xCu);
    sub_5BB0(v25);
    v7 = v46;
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v31 = sub_12396C();
  if (*(v31 + 16))
  {
    v32 = v49;
    v33 = v50;
    v34 = v51;
    (*(v50 + 16))(v49, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v51);

    v35 = v52;
    sub_12399C();
    (*(v33 + 8))(v32, v34);
    sub_1237DC();
    (*(v7 + 8))(v35, v6);
  }

  else
  {
  }

  sub_BA854(a1);
  v37 = v36;

  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126CB0;
  strcpy((inited + 32), "ClientFlowView");
  *(inited + 47) = -18;
  v39 = [v37 dictionary];
  if (v39)
  {
    v40 = v39;
    v55 = sub_30B8C(0, &qword_161F98, NSMutableDictionary_ptr);
    *&v54 = v40;
    sub_99B0(&v54, (inited + 48));
  }

  else
  {
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 7104878;
    *(inited + 56) = 0xE300000000000000;
  }

  v41 = sub_DBD0(inited);
  swift_setDeallocating();
  sub_BB4C4(inited + 32);
  v42 = [objc_opt_self() sharedAnalytics];
  if (v42)
  {
    v43 = v42;
    sub_BA4E0(v41);

    isa = sub_125B5C().super.isa;

    [v43 logEventWithType:3700 context:isa];
  }

  else
  {
  }
}

uint64_t sub_BB4C4(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F688, &qword_1270D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BB53C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FA8);
  sub_5B30(v0, qword_161FA8);
  return sub_1257AC();
}

uint64_t sub_BB588(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = sub_125ABC();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = sub_124FFC();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = sub_12501C();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = sub_5AE8(&qword_161FC0, &qword_129DE0);
  v3[21] = v14;
  v15 = *(v14 - 8);
  v3[22] = v15;
  v16 = *(v15 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v17 = sub_12392C();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = sub_12368C();
  v3[28] = v20;
  v21 = *(v20 - 8);
  v3[29] = v21;
  v22 = *(v21 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_BB874, 0, 0);
}

uint64_t sub_BB874()
{
  v56 = v0;
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[9];
  v5 = sub_123B5C();
  v6 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
  v7 = [v5 unsupportedReason];

  sub_12361C();
  sub_12391C();
  if (qword_15EF08 != -1)
  {
    swift_once();
  }

  v8 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[9];
  v12 = sub_5B30(v0[12], qword_161FA8);
  v13 = *(v9 + 16);
  v13(v8, v11, v10);
  v54 = v12;
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[24];
  if (v16)
  {
    v53 = v7;
    v18 = v0[22];
    v19 = v0[23];
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v21 = 136315138;
    v13(v19, v17, v20);
    v22 = sub_125BAC();
    v24 = v23;
    v25 = v20;
    v6 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
    (*(v18 + 8))(v17, v25);
    v26 = v22;
    v7 = v53;
    v27 = sub_8530(v26, v24, &v55);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_0, v14, v15, "[SetTimerAttribute.UnsupportedValueStrategy.makeUnsupportedValueOutput] Called with resolveRecord: %s", v21, 0xCu);
    sub_5BB0(v52);
  }

  else
  {
    v28 = v0[21];
    v29 = v0[22];

    (*(v29 + 8))(v17, v28);
  }

  v31 = v0[20];
  v30 = v0[21];
  v32 = v0[14];
  v33 = v0[12];
  v34 = v0[13];
  v35 = v0[9];
  (*(v0[16] + 104))(v0[17], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[15]);
  (*(v34 + 16))(v32, v54, v33);
  mach_absolute_time();
  sub_12502C();
  v36 = sub_123B5C();
  v37 = [v36 v6[45]];

  if (v37 == &dword_4 + 3)
  {
    v38 = v0[31];
    v39 = v0[32];
    v40 = v0[28];
    v41 = v0[29];
    v42 = v0[11];
    v43 = v0[9];
    sub_12364C();
    v44 = *(v41 + 8);
    v0[33] = v44;
    v0[34] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v39, v40);
    (*(v41 + 32))(v39, v38, v40);
    type metadata accessor for TimerBaseCATPatternsExecutor(0);
    sub_124ECC();
    v0[35] = sub_124DBC();
    v45 = swift_task_alloc();
    v0[36] = v45;
    *(v45 + 16) = v43;
    v46 = swift_task_alloc();
    v0[37] = v46;
    *v46 = v0;
    v46[1] = sub_BBCD4;

    return sub_104D80(sub_BDA30, v45);
  }

  else
  {
    v48 = swift_task_alloc();
    v0[39] = v48;
    *v48 = v0;
    v48[1] = sub_BBEF4;
    v49 = v0[30];
    v50 = v0[9];
    v51 = v0[10];

    return sub_BC780(v49, v7, 0, v50);
  }
}

uint64_t sub_BBCD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[37];
  v6 = v3[36];
  v7 = v3[35];
  v10 = *v2;
  v4[38] = v1;

  if (v1)
  {
    v8 = sub_BC3A8;
  }

  else
  {
    v8 = sub_BBE30;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_BBE30()
{
  v1 = v0[3];
  v0[41] = v0[33];
  v0[42] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_BC124;
  v4 = v0[32];
  v5 = v0[27];
  v6 = v0[20];
  v7 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_BBEF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[39];
  v8 = *v2;
  v4[40] = v1;

  if (v1)
  {
    v6 = sub_BC4E0;
  }

  else
  {
    v6 = sub_BC010;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BC010()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = *(v3 + 8);
  v5(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v6 = v0[6];
  v0[41] = v5;
  v0[42] = v6;
  v7 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v6;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_BC124;
  v9 = v0[32];
  v10 = v0[27];
  v11 = v0[20];
  v12 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v9, v10, v11, 0);
}

uint64_t sub_BC124()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_BC628;
  }

  else
  {
    v4 = sub_BC250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BC250()
{
  v1 = *(v0 + 256);
  v12 = *(v0 + 328);
  v13 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v14 = *(v0 + 240);
  v15 = *(v0 + 192);
  v16 = *(v0 + 184);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v17 = *(v0 + 136);
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v12(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_BC3A8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v16 = *(v0 + 304);
  (*(v0 + 264))(*(v0 + 256), *(v0 + 224));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_BC4E0()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v2, v4);
  v5 = v0[31];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[20];
  v11 = v0[17];
  v15 = v0[14];
  v12 = v0[11];
  v16 = v0[40];
  (*(v1 + 8))(v0[32], v0[28]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_BC628()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 248);
  v9 = *(v0 + 240);
  v10 = *(v0 + 216);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v19 = *(v0 + 352);
  (*(v0 + 328))(*(v0 + 256), *(v0 + 224));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_BC780(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = a4;
  *(v4 + 248) = a3;
  *(v4 + 112) = a1;
  v5 = sub_12368C();
  *(v4 + 136) = v5;
  v6 = *(v5 - 8);
  *(v4 + 144) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v8 = *(*(sub_124EDC() - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_BC874, 0, 0);
}

uint64_t sub_BC874()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 248);
  v3 = *(v0 + 112);
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  *(v0 + 168) = sub_124DBC();
  sub_12361C();
  if (v2)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 120);
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v28 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v6 = swift_task_alloc();
      *(v0 + 176) = v6;
      *v6 = v0;
      v6[1] = sub_BCC5C;
      v7 = 0x800000000012C5A0;
      v8 = 0xD000000000000012;
LABEL_10:

      return v28(v8, v7, _swiftEmptyArrayStorage);
    }

LABEL_5:
    v9 = *(v0 + 128);
    sub_5AE8(&qword_161FC0, &qword_129DE0);
    v10 = sub_123B4C();
    v11 = [v10 toLabel];

    if (v11)
    {

      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v12 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v28 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v13 = swift_task_alloc();
      *(v0 + 216) = v13;
      *v13 = v0;
      v13[1] = sub_BD068;
      v8 = 0xD00000000000001ELL;
      v7 = 0x800000000012CB20;
    }

    else
    {
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 136);
      v17 = *(v0 + 112);
      sub_12364C();
      (*(v15 + 8))(v17, v16);
      (*(v15 + 32))(v17, v14, v16);
      v18 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v28 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v19 = swift_task_alloc();
      *(v0 + 232) = v19;
      *v19 = v0;
      v19[1] = sub_BD2B4;
      v7 = 0xEF726F7272652365;
      v8 = 0x73614272656D6974;
    }

    goto LABEL_10;
  }

  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 112);
  sub_12364C();
  (*(v22 + 8))(v25, v23);
  (*(v22 + 32))(v25, v21, v23);
  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *(v26 + 16) = v24;
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_BCEA8;

  return sub_104D80(sub_BDA4C, v26);
}

uint64_t sub_BCC5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v8 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = sub_BCE00;
  }

  else
  {
    v6 = sub_BCD78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BCD78()
{
  v1 = v0[3];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_BCE00()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];

  (*(v5 + 8))(v7, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BCEA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[25];
  v6 = v3[24];
  v9 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v7 = sub_BD500;
  }

  else
  {
    v7 = sub_BCFE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_BCFE0()
{
  v1 = v0[6];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_BD068(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[27];
  v8 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = sub_BD20C;
  }

  else
  {
    v6 = sub_BD184;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BD184()
{
  v1 = v0[9];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_BD20C()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];

  (*(v5 + 8))(v7, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BD2B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[29];
  v8 = *v2;
  v4[30] = v1;

  if (v1)
  {
    v6 = sub_BD458;
  }

  else
  {
    v6 = sub_BD3D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BD3D0()
{
  v1 = v0[12];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_BD458()
{
  v1 = v0[30];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];

  (*(v5 + 8))(v7, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BD500()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];

  (*(v5 + 8))(v7, v6);

  v8 = v0[1];

  return v8();
}

void sub_BD5A8(uint64_t a1)
{
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v4 = sub_123B4C();
  sub_12550C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_BD62C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_BD6D4;

  return sub_BB588(a1, a2);
}

uint64_t sub_BD6D4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BD808, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_BD808()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_BD8F4()
{
  v1 = *(v0 + 16);
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v2 = sub_123B4C();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_BD96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_503C;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_BDA50()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FC8);
  sub_5B30(v0, qword_161FC8);
  return sub_12578C();
}

uint64_t sub_BDA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_125B9C();

    sub_12373C();
    v5 = 0;
  }

  else
  {
    if (qword_15EF10 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_161FC8);
    v7 = v1;
    v8 = sub_125AAC();
    v9 = sub_125DEC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_125B9C();
      v16 = v15;

      v17 = sub_8530(v14, v16, &v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Error making descriptive hint for timer. Missing identifier: %s", v10, 0xCu);
      sub_5BB0(v11);
    }

    v5 = 1;
  }

  v18 = sub_12374C();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v5, 1, v18);
}

uint64_t sub_BDD04()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161FE0);
  sub_5B30(v0, qword_161FE0);
  return sub_1257AC();
}

uint64_t sub_BDD50(uint64_t a1, uint64_t a2)
{
  v2[73] = a2;
  v2[72] = a1;
  v3 = sub_123B3C();
  v2[74] = v3;
  v4 = *(v3 - 8);
  v2[75] = v4;
  v5 = *(v4 + 64) + 15;
  v2[76] = swift_task_alloc();
  TimerHandledParameters = type metadata accessor for CreateTimerHandledParameters(0);
  v2[77] = TimerHandledParameters;
  v7 = *(*(TimerHandledParameters - 8) + 64) + 15;
  v2[78] = swift_task_alloc();
  v8 = sub_12503C();
  v2[79] = v8;
  v9 = *(v8 - 8);
  v2[80] = v9;
  v10 = *(v9 + 64) + 15;
  v2[81] = swift_task_alloc();
  v11 = sub_1260DC();
  v2[82] = v11;
  v12 = *(v11 - 8);
  v2[83] = v12;
  v13 = *(v12 + 64) + 15;
  v2[84] = swift_task_alloc();
  v14 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v15 = sub_1250BC();
  v2[88] = v15;
  v16 = *(v15 - 8);
  v2[89] = v16;
  v17 = *(v16 + 64) + 15;
  v2[90] = swift_task_alloc();
  v18 = sub_125ABC();
  v2[91] = v18;
  v19 = *(v18 - 8);
  v2[92] = v19;
  v20 = *(v19 + 64) + 15;
  v2[93] = swift_task_alloc();
  v21 = sub_124FFC();
  v2[94] = v21;
  v22 = *(v21 - 8);
  v2[95] = v22;
  v23 = *(v22 + 64) + 15;
  v2[96] = swift_task_alloc();
  v24 = sub_12501C();
  v2[97] = v24;
  v25 = *(v24 - 8);
  v2[98] = v25;
  v26 = *(v25 + 64) + 15;
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v27 = sub_124F2C();
  v2[101] = v27;
  v28 = *(v27 - 8);
  v2[102] = v28;
  v29 = *(v28 + 64) + 15;
  v2[103] = swift_task_alloc();
  v30 = sub_124F1C();
  v2[104] = v30;
  v31 = *(v30 - 8);
  v2[105] = v31;
  v32 = *(v31 + 64) + 15;
  v2[106] = swift_task_alloc();
  v33 = sub_123D1C();
  v2[107] = v33;
  v34 = *(v33 - 8);
  v2[108] = v34;
  v35 = *(v34 + 64) + 15;
  v2[109] = swift_task_alloc();
  v36 = sub_12392C();
  v2[110] = v36;
  v37 = *(v36 - 8);
  v2[111] = v37;
  v38 = *(v37 + 64) + 15;
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v39 = sub_12368C();
  v2[114] = v39;
  v40 = *(v39 - 8);
  v2[115] = v40;
  v41 = *(v40 + 64) + 15;
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();

  return _swift_task_switch(sub_BE2E4, 0, 0);
}

uint64_t sub_BE2E4()
{
  v77 = v0;
  if (qword_15EF18 != -1)
  {
    swift_once();
  }

  v0[119] = sub_5B30(v0[91], qword_161FE0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "CreateTimer.HandleIntentStrategy.makeIntentHandledResponse() called.", v3, 2u);
  }

  v4 = v0[73];

  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v5 = sub_123A9C();
  v6 = [v5 createdTimer];
  v0[120] = v6;

  if (v6)
  {
    v7 = v0[118];
    v8 = v0[113];
    sub_12361C();
    v0[121] = sub_5AE8(&qword_160810, &unk_127420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_126EB0;
    *(inited + 32) = v6;
    v10 = v6;
    sub_FF26C(inited, v8);
    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    v12 = v10;
    v13 = [v12 identifier];
    if (v13)
    {
      v14 = v0[113];
      v15 = v0[109];
      v16 = v0[108];
      v17 = v0[107];
      v18 = v13;
      v19 = sub_125B9C();
      v21 = v20;

      sub_D4F0(v19, v21, v15);

      sub_12386C();
      (*(v16 + 8))(v15, v17);
    }

    v22 = v0[106];
    v23 = v0[105];
    v24 = v0[104];
    v25 = v0[103];
    v26 = v0[102];
    v27 = v0[101];
    (*(v23 + 104))(v22, enum case for TipKitSiriTimeSource.timerPlugin(_:), v24);
    (*(v26 + 104))(v25, enum case for TipKitSiriTimeContext.timerCreatedWithSiri(_:), v27);
    sub_12537C();
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    v28 = v12;
    v29 = sub_125AAC();
    v30 = sub_125DFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136315138;
      v33 = [v28 identifier];
      if (v33)
      {
        v34 = v33;
        v35 = sub_125B9C();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v0[69] = v35;
      v0[70] = v37;
      sub_5AE8(&qword_162000, &qword_129F18);
      v54 = sub_125BAC();
      v56 = sub_8530(v54, v55, &v76);

      *(v31 + 4) = v56;
      _os_log_impl(&dword_0, v29, v30, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Created timer has ID %s", v31, 0xCu);
      sub_5BB0(v32);
    }

    v57 = [v28 identifier];
    if (v57)
    {
      v58 = v57;
      v59 = sub_125B9C();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v0[122] = v61;
    sub_12573C();
    sub_12572C();
    v62 = v0[10];
    v63 = v0[11];
    sub_23B08(v0 + 7, v62);
    v64 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v65 = swift_task_alloc();
    v0[123] = v65;
    *v65 = v0;
    v65[1] = sub_BEA08;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v59, v61, v62, v63);
  }

  else
  {
    v38 = sub_125AAC();
    v39 = sub_125DEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Can NOT retrieve intentResponse.createdTimer.", v40, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    v42 = v0[118];
    v43 = v0[117];
    v44 = v0[116];
    v45 = v0[113];
    v46 = v0[112];
    v47 = v0[109];
    v48 = v0[106];
    v49 = v0[103];
    v50 = v0[100];
    v51 = v0[99];
    v66 = v0[96];
    v67 = v0[93];
    v68 = v0[90];
    v69 = v0[87];
    v70 = v0[86];
    v71 = v0[85];
    v72 = v0[84];
    v73 = v0[81];
    v74 = v0[78];
    v75 = v0[76];

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_BEA08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 984);
  v5 = *(*v2 + 976);
  v7 = *v2;
  *(v3 + 992) = a1;
  *(v3 + 1000) = a2;

  return _swift_task_switch(sub_BEB58, 0, 0);
}

uint64_t sub_BEB58()
{
  v185 = *(v0 + 952);
  v191 = *(v0 + 800);
  v196 = *(v0 + 960);
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  sub_5BB0((v0 + 56));
  *(v0 + 1008) = sub_12524C();
  sub_12523C();
  sub_12522C();

  v7 = *(v0 + 128);
  sub_23B08((v0 + 96), *(v0 + 120));
  *(v0 + 1232) = sub_1235DC() & 1;
  sub_5BB0((v0 + 96));
  v8 = v3;
  v9 = v0;
  v177 = *(v2 + 104);
  v177(v1, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v8);
  v10 = *(v5 + 16);
  v10(v4, v185, v6);
  mach_absolute_time();
  sub_12502C();
  sub_124D9C();
  v11 = sub_124D8C();
  *(v0 + 1016) = sub_113D6C(0, v11);

  sub_12357C();
  v12 = *(v0 + 168);
  sub_23B08((v0 + 136), *(v0 + 160));
  v13 = sub_123A7C();
  *(v0 + 1024) = v14;
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = *(v0 + 952);
    v18 = *(v0 + 792);
    v19 = *(v0 + 768);
    v20 = *(v0 + 752);
    v21 = *(v0 + 744);
    v22 = *(v0 + 728);
    sub_5BB0((v0 + 136));
    v177(v19, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v20);
    v10(v21, v17, v22);
    mach_absolute_time();
    sub_12502C();
    v23 = swift_task_alloc();
    *(v0 + 1032) = v23;
    *v23 = v0;
    v23[1] = sub_BFFB0;
    v24 = *(v0 + 584);

    return sub_C4D14(v15, v16, v24);
  }

  sub_5BB0((v0 + 136));
  v26 = *(v0 + 1008);
  if (*(v0 + 1000))
  {
    v27 = *(v0 + 1232);
  }

  else
  {
    v27 = 0;
  }

  sub_12523C();
  sub_12522C();

  v28 = v9[26];
  sub_23B08(v9 + 22, v9[25]);
  v29 = sub_1235DC();
  sub_5BB0(v9 + 22);
  if ((v29 & 1) != 0 && !v27)
  {
    v30 = v9[121];
    v31 = v9[120];

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_126EB0;
    *(v32 + 32) = v31;
    v33 = v31;
    v34 = sub_648C8(v32, 13);
    v9[145] = v34;

    if (v34)
    {
      v35 = objc_opt_self();
      v9[71] = 0;
      v36 = [v35 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:v9 + 71];
      v37 = v9[71];
      if (v36)
      {
        v38 = v36;
        v39 = v37;
        v40 = sub_122EFC();
        v42 = v41;

        v9[146] = v40;
        v9[147] = v42;
        if (qword_15EE18 != -1)
        {
          swift_once();
        }

        v43 = v9[127];
        v44 = v9[73];
        v45 = swift_task_alloc();
        v9[148] = v45;
        v45[2] = v40;
        v45[3] = v42;
        v45[4] = v43;
        v45[5] = v44;
        v46 = swift_task_alloc();
        v9[149] = v46;
        *v46 = v9;
        v46[1] = sub_C3020;

        return sub_3183C(sub_C4D08, v45);
      }

      v129 = v9[127];
      v130 = v9[125];
      v131 = v9[115];
      v179 = v9[120];
      v183 = v9[114];
      v198 = v9[113];
      v92 = v9[111];
      v189 = v9[118];
      v193 = v9[110];
      v175 = v9[100];
      v132 = v9[98];
      v133 = v9[97];
      v134 = v37;

      sub_122E8C();

      swift_willThrow();

      (*(v132 + 8))(v175, v133);
      (*(v131 + 8))(v189, v183);
      goto LABEL_43;
    }

    v84 = v9[125];
    v85 = v9[119];

    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v88, 2u);
    }

    v89 = v9[127];
    v90 = v9[120];
    v91 = v9[115];
    v181 = v9[114];
    v187 = v9[118];
    v92 = v9[111];
    v193 = v9[110];
    v198 = v9[113];
    v93 = v9[100];
    v94 = v9[98];
    v95 = v9[97];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v96 = 1;
LABEL_34:
    swift_willThrow();

    (*(v94 + 8))(v93, v95);
    (*(v91 + 8))(v187, v181);
LABEL_43:
    (*(v92 + 8))(v198, v193);
    v135 = v9[118];
    v136 = v9[117];
    v137 = v9[116];
    v138 = v9[113];
    v139 = v9[112];
    v140 = v9[109];
    v141 = v9[106];
    v142 = v9[103];
    v143 = v9[100];
    v144 = v9[99];
    v167 = v9[96];
    v169 = v9[93];
    v171 = v9[90];
    v173 = v9[87];
    v176 = v9[86];
    v180 = v9[85];
    v184 = v9[84];
    v190 = v9[81];
    v195 = v9[78];
    v199 = v9[76];

    v145 = v9[1];

    return v145();
  }

  v47 = [v9[120] type];
  if (v47 >= 2)
  {
    if (v47 == &dword_0 + 2)
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v75 = v9[127];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v76 = swift_allocObject();
      v9[138] = v76;
      *(v76 + 16) = xmmword_126CB0;
      strcpy((v76 + 32), "createdTimer");
      *(v76 + 45) = 0;
      *(v76 + 46) = -5120;
      *(v76 + 72) = type metadata accessor for TimerTimer(0);
      *(v76 + 48) = v75;
      v77 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v78 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      v79 = swift_task_alloc();
      v9[139] = v79;
      *v79 = v9;
      v79[1] = sub_C25C4;
      v80 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v78);
      v81 = 0xD000000000000018;
      v82 = 0x800000000012CEE0;
      v83 = v76;
    }

    else
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v122 = v9[126];
      v123 = sub_124EAC();
      sub_12523C();
      sub_12522C();

      v124 = sub_124E9C();
      v9[141] = v124;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v125 = swift_allocObject();
      v9[142] = v125;
      *(v125 + 16) = xmmword_126CB0;
      *(v125 + 32) = 0x656369766564;
      *(v125 + 40) = 0xE600000000000000;
      *(v125 + 72) = v123;
      *(v125 + 48) = v124;
      v126 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v127 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

      v128 = swift_task_alloc();
      v9[143] = v128;
      *v128 = v9;
      v128[1] = sub_C2AF0;
      v80 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v127);
      v82 = 0x800000000012C010;
      v81 = 0xD000000000000011;
      v83 = v125;
    }

    goto LABEL_54;
  }

  v48 = v9[90];
  v49 = v9[89];
  v50 = v9[88];
  sub_1250AC();
  v51 = sub_12504C();
  (*(v49 + 8))(v48, v50);
  if (!v51)
  {

    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v97 = v9[127];
    v98 = v9[78];
    v99 = v9[77];
    *v98 = 0;
    v100 = *(v99 + 20);
    v101 = sub_124E4C();
    v102 = *(v101 - 8);
    v103 = *(v102 + 56);
    v103(&v98[v100], 1, 1, v101);
    *v98 = v97;
    v104 = *(v97 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v105 = v9[127];
    if (v104)
    {
      v106 = v9[84];
      v174 = v9[86];
      v178 = v103;
      v107 = v9[83];
      v188 = v102;
      v108 = v9[82];
      v172 = v104;
      swift_retain_n();
      v170 = v106;
      sub_1260CC();
      v9[35] = v108;
      v9[36] = &off_1592B0;
      v109 = sub_23B4C(v9 + 32);
      (*(v107 + 16))(v109, v106, v108);
      v168 = type metadata accessor for DefaultCircuitBreaker();
      v194 = v101;
      v110 = v9;
      v111 = swift_allocObject();
      v182 = v98;
      v112 = v100;
      v113 = v110[35];
      v114 = sub_23C74((v110 + 32), v113);
      v115 = *(v113 - 8);
      v116 = *(v115 + 64) + 15;
      v117 = swift_task_alloc();
      v118 = v113;
      v100 = v112;
      v98 = v182;
      (*(v115 + 16))(v117, v114, v118);
      *(v111 + 56) = v108;
      *(v111 + 64) = &off_1592B0;
      v119 = sub_23B4C((v111 + 32));
      (*(v107 + 32))(v119, v117, v108);
      *(v111 + 72) = sub_1262EC();
      *(v111 + 80) = v120;
      *(v111 + 16) = xmmword_129E00;
      sub_5BB0(v110 + 32);

      v121 = v108;
      v102 = v188;
      (*(v107 + 8))(v170, v121);
      v110[30] = v168;
      v110[31] = &off_1592C0;
      v110[27] = v111;
      v9 = v110;
      v101 = v194;
      sub_A983C(v172, v9 + 27, v174);
      sub_5BB0(v9 + 27);
      v178(v174, 0, 1, v194);
    }

    else
    {
      v103(v9[86], 1, 1, v101);
      swift_retain_n();
    }

    v153 = v9[127];
    v154 = v9[85];
    sub_22A1C(v9[86], &v98[v100]);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v155 = swift_allocObject();
    v9[135] = v155;
    *(v155 + 16) = xmmword_1270C0;
    strcpy((v155 + 32), "createdTimer");
    *(v155 + 45) = 0;
    *(v155 + 46) = -5120;
    v156 = type metadata accessor for TimerTimer(0);
    *(v155 + 48) = v153;
    *(v155 + 72) = v156;
    *(v155 + 80) = 0xD000000000000016;
    *(v155 + 88) = 0x800000000012CEA0;
    sub_E344(&v98[v100], v154, &unk_15F170, &unk_126E00);
    v157 = (*(v102 + 48))(v154, 1, v101);
    v158 = v9[85];
    if (v157 == 1)
    {
      sub_5CA8(v9[85], &unk_15F170, &unk_126E00);
      *(v155 + 96) = 0u;
      *(v155 + 112) = 0u;
    }

    else
    {
      *(v155 + 120) = v101;
      v159 = sub_23B4C((v155 + 96));
      (*(v102 + 32))(v159, v158, v101);
    }

    v160 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v161 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v162 = swift_task_alloc();
    v9[136] = v162;
    *v162 = v9;
    v162[1] = sub_C206C;
    v80 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v161);
    v81 = 0xD000000000000013;
    v82 = 0x800000000012CEC0;
    v83 = v155;
LABEL_54:

    return v80(v81, v82, v83);
  }

  v52 = v9[119];
  v53 = sub_125AAC();
  v54 = sub_125DFC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Using RF 2.0 multi-timer path", v55, 2u);
  }

  v56 = v9[120];

  v57 = [v56 identifier];
  if (!v57)
  {
    v146 = v9[125];
    v147 = v9[119];

    v148 = sub_125AAC();
    v149 = sub_125DEC();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_0, v148, v149, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Invalid Timer ID! Cannot continue.", v150, 2u);
    }

    v151 = v9[127];
    v90 = v9[120];
    v91 = v9[115];
    v181 = v9[114];
    v187 = v9[118];
    v92 = v9[111];
    v193 = v9[110];
    v198 = v9[113];
    v93 = v9[100];
    v94 = v9[98];
    v95 = v9[97];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v152 = 0;
    goto LABEL_34;
  }

  if (qword_15EE10 != -1)
  {
    swift_once();
  }

  v58 = v9[127];
  v59 = v9[87];
  if (*(v58 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration))
  {
    v60 = v9[84];
    v192 = *(v58 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v197 = v9[87];
    v61 = v9[83];
    v62 = v9[82];

    sub_1260CC();
    v9[55] = v62;
    v9[56] = &off_1592B0;
    v63 = sub_23B4C(v9 + 52);
    (*(v61 + 16))(v63, v60, v62);
    v186 = type metadata accessor for DefaultCircuitBreaker();
    v64 = swift_allocObject();
    v65 = v9;
    v66 = v9[55];
    v67 = sub_23C74((v65 + 52), v66);
    v68 = *(v66 - 8);
    v69 = *(v68 + 64) + 15;
    v70 = swift_task_alloc();
    v71 = v66;
    v9 = v65;
    (*(v68 + 16))(v70, v67, v71);
    *(v64 + 56) = v62;
    *(v64 + 64) = &off_1592B0;
    v72 = sub_23B4C((v64 + 32));
    (*(v61 + 32))(v72, v70, v62);
    *(v64 + 72) = sub_1262EC();
    *(v64 + 80) = v73;
    *(v64 + 16) = xmmword_129E00;
    sub_5BB0(v65 + 52);

    (*(v61 + 8))(v60, v62);
    v65[50] = v186;
    v65[51] = &off_1592C0;
    v65[47] = v64;
    sub_A983C(v192, v65 + 47, v197);
    sub_5BB0(v65 + 47);
    v74 = sub_124E4C();
    (*(*(v74 - 8) + 56))(v197, 0, 1, v74);
  }

  else
  {
    v163 = sub_124E4C();
    (*(*(v163 - 8) + 56))(v59, 1, 1, v163);
  }

  v164 = v9[127];
  v165 = swift_task_alloc();
  v9[130] = v165;
  *v165 = v9;
  v165[1] = sub_C12FC;
  v166 = v9[87];

  return sub_8ED04(v164, v166);
}

uint64_t sub_BFFB0()
{
  v1 = *(*v0 + 1032);
  v2 = *(*v0 + 1024);
  v4 = *v0;

  return _swift_task_switch(sub_C00F4, 0, 0);
}

uint64_t sub_C00F4()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  sub_12500C();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1008);
  if (*(v0 + 1000))
  {
    v5 = *(v0 + 1232);
  }

  else
  {
    v5 = 0;
  }

  sub_12523C();
  sub_12522C();

  v6 = *(v0 + 208);
  sub_23B08((v0 + 176), *(v0 + 200));
  v7 = sub_1235DC();
  sub_5BB0((v0 + 176));
  if ((v7 & 1) != 0 && !v5)
  {
    v8 = *(v0 + 968);
    v9 = *(v0 + 960);

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_126EB0;
    *(v10 + 32) = v9;
    v11 = v9;
    v12 = sub_648C8(v10, 13);
    *(v0 + 1160) = v12;

    if (v12)
    {
      v13 = objc_opt_self();
      *(v0 + 568) = 0;
      v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v0 + 568];
      v15 = *(v0 + 568);
      if (v14)
      {
        v16 = v14;
        v17 = v15;
        v18 = sub_122EFC();
        v20 = v19;

        *(v0 + 1168) = v18;
        *(v0 + 1176) = v20;
        if (qword_15EE18 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 1016);
        v22 = *(v0 + 584);
        v23 = swift_task_alloc();
        *(v0 + 1184) = v23;
        v23[2] = v18;
        v23[3] = v20;
        v23[4] = v21;
        v23[5] = v22;
        v24 = swift_task_alloc();
        *(v0 + 1192) = v24;
        *v24 = v0;
        v24[1] = sub_C3020;

        return sub_3183C(sub_C4D08, v23);
      }

      v106 = *(v0 + 1016);
      v107 = *(v0 + 1000);
      v108 = *(v0 + 920);
      v156 = *(v0 + 960);
      v160 = *(v0 + 912);
      v173 = *(v0 + 904);
      v109 = *(v0 + 888);
      v165 = *(v0 + 944);
      v170 = *(v0 + 880);
      v153 = *(v0 + 800);
      v110 = *(v0 + 784);
      v111 = *(v0 + 776);
      v112 = v15;

      sub_122E8C();

      swift_willThrow();

      (*(v110 + 8))(v153, v111);
      (*(v108 + 8))(v165, v160);
      (*(v109 + 8))(v173, v170);
      goto LABEL_39;
    }

    v62 = *(v0 + 1000);
    v63 = *(v0 + 952);

    v64 = sub_125AAC();
    v65 = sub_125DEC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v66, 2u);
    }

    v67 = *(v0 + 1016);
    v68 = *(v0 + 960);
    v69 = *(v0 + 920);
    v158 = *(v0 + 912);
    v163 = *(v0 + 944);
    v70 = *(v0 + 888);
    v168 = *(v0 + 880);
    v172 = *(v0 + 904);
    v71 = *(v0 + 800);
    v72 = *(v0 + 784);
    v73 = *(v0 + 776);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v74 = 1;
LABEL_30:
    swift_willThrow();

    (*(v72 + 8))(v71, v73);
    (*(v69 + 8))(v163, v158);
    (*(v70 + 8))(v172, v168);
LABEL_39:
    v113 = *(v0 + 944);
    v114 = *(v0 + 936);
    v115 = *(v0 + 928);
    v116 = *(v0 + 904);
    v117 = *(v0 + 896);
    v118 = *(v0 + 872);
    v119 = *(v0 + 848);
    v120 = *(v0 + 824);
    v121 = *(v0 + 800);
    v122 = *(v0 + 792);
    v145 = *(v0 + 768);
    v147 = *(v0 + 744);
    v149 = *(v0 + 720);
    v151 = *(v0 + 696);
    v154 = *(v0 + 688);
    v157 = *(v0 + 680);
    v161 = *(v0 + 672);
    v166 = *(v0 + 648);
    v171 = *(v0 + 624);
    v174 = *(v0 + 608);

    v123 = *(v0 + 8);

    return v123();
  }

  v26 = [*(v0 + 960) type];
  if (v26 >= 2)
  {
    if (v26 == &dword_0 + 2)
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 1016);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v54 = swift_allocObject();
      *(v0 + 1104) = v54;
      *(v54 + 16) = xmmword_126CB0;
      strcpy((v54 + 32), "createdTimer");
      *(v54 + 45) = 0;
      *(v54 + 46) = -5120;
      *(v54 + 72) = type metadata accessor for TimerTimer(0);
      *(v54 + 48) = v53;
      v55 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v56 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      v57 = swift_task_alloc();
      *(v0 + 1112) = v57;
      *v57 = v0;
      v57[1] = sub_C25C4;
      v58 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v56);
      v59 = 0xD000000000000018;
      v60 = 0x800000000012CEE0;
      v61 = v54;
    }

    else
    {

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v99 = *(v0 + 1008);
      v100 = sub_124EAC();
      sub_12523C();
      sub_12522C();

      v101 = sub_124E9C();
      *(v0 + 1128) = v101;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v102 = swift_allocObject();
      *(v0 + 1136) = v102;
      *(v102 + 16) = xmmword_126CB0;
      *(v102 + 32) = 0x656369766564;
      *(v102 + 40) = 0xE600000000000000;
      *(v102 + 72) = v100;
      *(v102 + 48) = v101;
      v103 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v104 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

      v105 = swift_task_alloc();
      *(v0 + 1144) = v105;
      *v105 = v0;
      v105[1] = sub_C2AF0;
      v58 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v104);
      v60 = 0x800000000012C010;
      v59 = 0xD000000000000011;
      v61 = v102;
    }

    goto LABEL_50;
  }

  v27 = *(v0 + 720);
  v28 = *(v0 + 712);
  v29 = *(v0 + 704);
  sub_1250AC();
  v30 = sub_12504C();
  (*(v28 + 8))(v27, v29);
  if (!v30)
  {

    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 1016);
    v76 = *(v0 + 624);
    v77 = *(v0 + 616);
    *v76 = 0;
    v78 = *(v77 + 20);
    v79 = sub_124E4C();
    v80 = *(v79 - 8);
    v81 = *(v80 + 56);
    v81(&v76[v78], 1, 1, v79);
    *v76 = v75;
    v82 = *(v75 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v83 = *(v0 + 1016);
    if (v82)
    {
      v84 = *(v0 + 672);
      v152 = *(v0 + 688);
      v155 = v81;
      v85 = *(v0 + 664);
      v169 = v79;
      v86 = *(v0 + 656);
      v150 = v82;
      swift_retain_n();
      v148 = v84;
      sub_1260CC();
      *(v0 + 280) = v86;
      *(v0 + 288) = &off_1592B0;
      v87 = sub_23B4C((v0 + 256));
      (*(v85 + 16))(v87, v84, v86);
      v146 = type metadata accessor for DefaultCircuitBreaker();
      v159 = v76;
      v164 = v80;
      v88 = swift_allocObject();
      v89 = v78;
      v90 = *(v0 + 280);
      v91 = sub_23C74(v0 + 256, v90);
      v92 = *(v90 - 8);
      v93 = *(v92 + 64) + 15;
      v94 = swift_task_alloc();
      v95 = v90;
      v78 = v89;
      v76 = v159;
      (*(v92 + 16))(v94, v91, v95);
      *(v88 + 56) = v86;
      *(v88 + 64) = &off_1592B0;
      v96 = sub_23B4C((v88 + 32));
      (*(v85 + 32))(v96, v94, v86);
      *(v88 + 72) = sub_1262EC();
      *(v88 + 80) = v97;
      *(v88 + 16) = xmmword_129E00;
      sub_5BB0((v0 + 256));

      v98 = v86;
      v79 = v169;
      (*(v85 + 8))(v148, v98);
      *(v0 + 240) = v146;
      *(v0 + 248) = &off_1592C0;
      *(v0 + 216) = v88;
      v80 = v164;
      sub_A983C(v150, (v0 + 216), v152);
      sub_5BB0((v0 + 216));
      v155(v152, 0, 1, v169);
    }

    else
    {
      v81(*(v0 + 688), 1, 1, v79);
      swift_retain_n();
    }

    v131 = *(v0 + 1016);
    v132 = *(v0 + 680);
    sub_22A1C(*(v0 + 688), &v76[v78]);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v133 = swift_allocObject();
    *(v0 + 1080) = v133;
    *(v133 + 16) = xmmword_1270C0;
    strcpy((v133 + 32), "createdTimer");
    *(v133 + 45) = 0;
    *(v133 + 46) = -5120;
    v134 = type metadata accessor for TimerTimer(0);
    *(v133 + 48) = v131;
    *(v133 + 72) = v134;
    *(v133 + 80) = 0xD000000000000016;
    *(v133 + 88) = 0x800000000012CEA0;
    sub_E344(&v76[v78], v132, &unk_15F170, &unk_126E00);
    v135 = (*(v80 + 48))(v132, 1, v79);
    v136 = *(v0 + 680);
    if (v135 == 1)
    {
      sub_5CA8(*(v0 + 680), &unk_15F170, &unk_126E00);
      *(v133 + 96) = 0u;
      *(v133 + 112) = 0u;
    }

    else
    {
      *(v133 + 120) = v79;
      v137 = sub_23B4C((v133 + 96));
      (*(v80 + 32))(v137, v136, v79);
    }

    v138 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v139 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v140 = swift_task_alloc();
    *(v0 + 1088) = v140;
    *v140 = v0;
    v140[1] = sub_C206C;
    v58 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v139);
    v59 = 0xD000000000000013;
    v60 = 0x800000000012CEC0;
    v61 = v133;
LABEL_50:

    return v58(v59, v60, v61);
  }

  v31 = *(v0 + 952);
  v32 = sub_125AAC();
  v33 = sub_125DFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Using RF 2.0 multi-timer path", v34, 2u);
  }

  v35 = *(v0 + 960);

  v36 = [v35 identifier];
  if (!v36)
  {
    v124 = *(v0 + 1000);
    v125 = *(v0 + 952);

    v126 = sub_125AAC();
    v127 = sub_125DEC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_0, v126, v127, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] Invalid Timer ID! Cannot continue.", v128, 2u);
    }

    v129 = *(v0 + 1016);
    v68 = *(v0 + 960);
    v69 = *(v0 + 920);
    v158 = *(v0 + 912);
    v163 = *(v0 + 944);
    v70 = *(v0 + 888);
    v168 = *(v0 + 880);
    v172 = *(v0 + 904);
    v71 = *(v0 + 800);
    v72 = *(v0 + 784);
    v73 = *(v0 + 776);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v130 = 0;
    goto LABEL_30;
  }

  if (qword_15EE10 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 1016);
  v38 = *(v0 + 696);
  if (*(v37 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration))
  {
    v39 = *(v0 + 672);
    v167 = *(v37 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v40 = *(v0 + 664);
    v41 = *(v0 + 656);

    sub_1260CC();
    *(v0 + 440) = v41;
    *(v0 + 448) = &off_1592B0;
    v42 = sub_23B4C((v0 + 416));
    (*(v40 + 16))(v42, v39, v41);
    v162 = type metadata accessor for DefaultCircuitBreaker();
    v43 = swift_allocObject();
    v44 = *(v0 + 440);
    v45 = sub_23C74(v0 + 416, v44);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64) + 15;
    v48 = v38;
    v49 = swift_task_alloc();
    (*(v46 + 16))(v49, v45, v44);
    *(v43 + 56) = v41;
    *(v43 + 64) = &off_1592B0;
    v50 = sub_23B4C((v43 + 32));
    (*(v40 + 32))(v50, v49, v41);
    *(v43 + 72) = sub_1262EC();
    *(v43 + 80) = v51;
    *(v43 + 16) = xmmword_129E00;
    sub_5BB0((v0 + 416));

    (*(v40 + 8))(v39, v41);
    *(v0 + 400) = v162;
    *(v0 + 408) = &off_1592C0;
    *(v0 + 376) = v43;
    sub_A983C(v167, (v0 + 376), v48);
    sub_5BB0((v0 + 376));
    v52 = sub_124E4C();
    (*(*(v52 - 8) + 56))(v48, 0, 1, v52);
  }

  else
  {
    v141 = sub_124E4C();
    (*(*(v141 - 8) + 56))(v38, 1, 1, v141);
  }

  v142 = *(v0 + 1016);
  v143 = swift_task_alloc();
  *(v0 + 1040) = v143;
  *v143 = v0;
  v143[1] = sub_C12FC;
  v144 = *(v0 + 696);

  return sub_8ED04(v142, v144);
}

uint64_t sub_C12FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[130];
  v6 = *v2;
  v4[131] = a1;
  v4[132] = v1;

  v7 = v3[127];
  if (v1)
  {
    v8 = v4[125];
    sub_5CA8(v4[87], &unk_15F170, &unk_126E00);

    v9 = sub_C371C;
  }

  else
  {
    sub_5CA8(v4[87], &unk_15F170, &unk_126E00);

    v9 = sub_C14B8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_C14B8()
{
  v53 = v0;
  v1 = *(v0 + 1000);
  if (v1)
  {
    v2 = *(v0 + 952);
    v3 = *(v0 + 1000);

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 992);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v52 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v1, &v52);
      _os_log_impl(&dword_0, v4, v5, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = *(v0 + 1232);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 936);
    v12 = *(v0 + 904);
    v13 = *(v0 + 896);
    v14 = *(v0 + 888);
    v15 = *(v0 + 880);
    sub_12361C();
    (*(v14 + 16))(v13, v12, v15);
    if (v9 == 1 && v10)
    {
      *(v0 + 368) = 0;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
    }

    else
    {
      v39 = *(v0 + 960);
      v40 = *(v0 + 648);
      v41 = *(v0 + 640);
      v42 = *(v0 + 632);
      sub_5AE8(&qword_15F940, &unk_127410);
      v43 = *(sub_124F4C() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_126CB0;
      sub_1135FC(v46 + v45);
      sub_12521C();
      (*(v41 + 104))(v40, enum case for SiriTimePluginModel.timerMulti(_:), v42);
      *(v0 + 360) = v42;
      *(v0 + 368) = sub_C5B0C(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
      v47 = sub_23B4C((v0 + 336));
      (*(v41 + 32))(v47, v40, v42);
    }

    v48 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v49 = swift_task_alloc();
    *(v0 + 1064) = v49;
    *v49 = v0;
    v49[1] = sub_C1A70;
    v50 = *(v0 + 1048);
    v38 = *(v0 + 1000);
    v37 = *(v0 + 992);
    v32 = *(v0 + 936);
    v33 = *(v0 + 896);
    v34 = *(v0 + 800);
    v35 = *(v0 + 576);
    v56 = 2;
    v55 = 0x800000000012CEC0;
    v36 = v0 + 336;
  }

  else
  {
    v16 = *(v0 + 952);
    v17 = sub_125AAC();
    v18 = sub_125DFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "[CreateTimer.HandleIntentStrategy.makeIntentHandledResponse] No live activity - use snippet model.", v19, 2u);
    }

    v20 = *(v0 + 960);
    v21 = *(v0 + 928);
    v22 = *(v0 + 640);
    v23 = *(v0 + 632);

    sub_12361C();
    *(v0 + 320) = v23;
    *(v0 + 328) = sub_C5B0C(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
    v24 = sub_23B4C((v0 + 296));
    sub_5AE8(&qword_15F940, &unk_127410);
    v25 = *(sub_124F4C() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_126CB0;
    sub_1135FC(v28 + v27);
    sub_12521C();
    (*(v22 + 104))(v24, enum case for SiriTimePluginModel.timerMulti(_:), v23);
    v29 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v30 = swift_task_alloc();
    *(v0 + 1072) = v30;
    *v30 = v0;
    v30[1] = sub_C1C94;
    v31 = *(v0 + 1048);
    v32 = *(v0 + 928);
    v33 = *(v0 + 904);
    v34 = *(v0 + 800);
    v35 = *(v0 + 576);
    v56 = 2;
    v55 = 0x800000000012CEC0;
    v36 = v0 + 296;
    v37 = 0;
    v38 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v35, v32, v33, v36, v34, v37, v38, 0xD000000000000013);
}

uint64_t sub_C1A70()
{
  v1 = *v0;
  v2 = *(*v0 + 1064);
  v3 = *(*v0 + 1000);
  v4 = *(*v0 + 936);
  v5 = *(*v0 + 920);
  v6 = *(*v0 + 912);
  v7 = *(*v0 + 896);
  v8 = *(*v0 + 888);
  v9 = *(*v0 + 880);
  v11 = *v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_5CA8(v1 + 336, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_C5B5C, 0, 0);
}

uint64_t sub_C1C94()
{
  v1 = *v0;
  v2 = *(*v0 + 1072);
  v3 = *(*v0 + 928);
  v4 = *(*v0 + 920);
  v5 = *(*v0 + 912);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 296, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_C1E38, 0, 0);
}

uint64_t sub_C1E38()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 960);

  v3 = *(v0 + 944);
  v14 = *(v0 + 936);
  v15 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  v16 = *(v0 + 896);
  v17 = *(v0 + 872);
  v18 = *(v0 + 848);
  v19 = *(v0 + 824);
  v9 = *(v0 + 800);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v20 = *(v0 + 792);
  v21 = *(v0 + 768);
  v22 = *(v0 + 744);
  v23 = *(v0 + 720);
  v24 = *(v0 + 696);
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 672);
  v28 = *(v0 + 648);
  v29 = *(v0 + 624);
  v30 = *(v0 + 608);

  (*(v10 + 8))(v9, v11);
  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_C206C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[57] = v2;
  v4[58] = a1;
  v4[59] = v1;
  v5 = v3[136];
  v6 = *v2;
  v4[137] = v1;

  v7 = v3[135];
  if (v1)
  {
    v8 = v4[125];

    v9 = sub_C2378;
  }

  else
  {

    v9 = sub_C21EC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_C21EC()
{
  sub_C5A60(v0[78], type metadata accessor for CreateTimerHandledParameters);
  v1 = v0[58];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  v9 = v0[76];
  v0[151] = v1;
  (*(v6 + 16))(v5, v4, v7);
  v10 = swift_task_alloc();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;
  v1;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[152] = v12;
  *v12 = v0;
  v12[1] = sub_C3334;
  v13 = v0[100];
  v14 = v0[76];
  v15 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_C2378()
{
  v1 = v0[127];
  v2 = v0[120];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[111];
  v31 = v0[110];
  v33 = v0[113];
  v7 = v0[100];
  v8 = v0[98];
  v9 = v0[97];
  sub_C5A60(v0[78], type metadata accessor for CreateTimerHandledParameters);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v33, v31);
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[116];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[109];
  v16 = v0[106];
  v17 = v0[103];
  v18 = v0[100];
  v19 = v0[99];
  v22 = v0[137];
  v23 = v0[96];
  v24 = v0[93];
  v25 = v0[90];
  v26 = v0[87];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[81];
  v32 = v0[78];
  v34 = v0[76];

  v20 = v0[1];

  return v20();
}

uint64_t sub_C25C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[60] = v2;
  v4[61] = a1;
  v4[62] = v1;
  v5 = v3[139];
  v6 = *v2;
  v4[140] = v1;

  v7 = v3[138];
  if (v1)
  {
    v8 = v4[125];

    v9 = sub_C28BC;
  }

  else
  {

    v9 = sub_C2744;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_C2744()
{
  v1 = v0[127];

  v2 = v0[61];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[118];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[76];
  v0[151] = v2;
  (*(v7 + 16))(v6, v5, v8);
  v11 = swift_task_alloc();
  v11[2] = v4;
  v11[3] = v3;
  v11[4] = v9;
  v2;
  sub_123B0C();

  v12 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v13 = swift_task_alloc();
  v0[152] = v13;
  *v13 = v0;
  v13[1] = sub_C3334;
  v14 = v0[100];
  v15 = v0[76];
  v16 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v16, v15, v14);
}

uint64_t sub_C28BC()
{
  v1 = v0[127];
  v2 = v0[120];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[114];
  v33 = v0[113];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[100];
  v9 = v0[98];
  v10 = v0[97];

  (*(v9 + 8))(v8, v10);
  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v33, v7);
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[103];
  v19 = v0[100];
  v20 = v0[99];
  v23 = v0[140];
  v24 = v0[96];
  v25 = v0[93];
  v26 = v0[90];
  v27 = v0[87];
  v28 = v0[86];
  v29 = v0[85];
  v30 = v0[84];
  v31 = v0[81];
  v32 = v0[78];
  v34 = v0[76];

  v21 = v0[1];

  return v21();
}

uint64_t sub_C2AF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[63] = v2;
  v4[64] = a1;
  v4[65] = v1;
  v5 = v3[143];
  v6 = *v2;
  v4[144] = v1;

  v7 = v3[142];
  if (v1)
  {
    v8 = v4[125];

    v9 = sub_C2DE8;
  }

  else
  {

    v9 = sub_C2C70;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_C2C70()
{
  v1 = v0[141];

  v2 = v0[64];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[118];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[76];
  v0[151] = v2;
  (*(v7 + 16))(v6, v5, v8);
  v11 = swift_task_alloc();
  v11[2] = v4;
  v11[3] = v3;
  v11[4] = v9;
  v2;
  sub_123B0C();

  v12 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v13 = swift_task_alloc();
  v0[152] = v13;
  *v13 = v0;
  v13[1] = sub_C3334;
  v14 = v0[100];
  v15 = v0[76];
  v16 = v0[72];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v16, v15, v14);
}

uint64_t sub_C2DE8()
{
  v1 = v0[141];
  v2 = v0[127];
  v3 = v0[120];
  v4 = v0[118];
  v5 = v0[115];
  v6 = v0[114];
  v7 = v0[111];
  v32 = v0[110];
  v34 = v0[113];
  v8 = v0[100];
  v9 = v0[98];
  v10 = v0[97];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v4, v6);
  (*(v7 + 8))(v34, v32);
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[103];
  v19 = v0[100];
  v20 = v0[99];
  v23 = v0[144];
  v24 = v0[96];
  v25 = v0[93];
  v26 = v0[90];
  v27 = v0[87];
  v28 = v0[86];
  v29 = v0[85];
  v30 = v0[84];
  v31 = v0[81];
  v33 = v0[78];
  v35 = v0[76];

  v21 = v0[1];

  return v21();
}

uint64_t sub_C3020(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[66] = v2;
  v4[67] = a1;
  v4[68] = v1;
  v5 = v3[149];
  v6 = *v2;
  v4[150] = v1;

  v7 = v3[148];
  if (v1)
  {
    v8 = v4[125];

    v9 = sub_C394C;
  }

  else
  {

    v9 = sub_C31A8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_C31A8()
{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);

  sub_E498(v2, v1);
  v3 = *(v0 + 536);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 944);
  v7 = *(v0 + 928);
  v8 = *(v0 + 920);
  v9 = *(v0 + 912);
  v10 = *(v0 + 904);
  v11 = *(v0 + 608);
  *(v0 + 1208) = v3;
  (*(v8 + 16))(v7, v6, v9);
  v12 = swift_task_alloc();
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = v10;
  v3;
  sub_123B0C();

  v13 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v14 = swift_task_alloc();
  *(v0 + 1216) = v14;
  *v14 = v0;
  v14[1] = sub_C3334;
  v15 = *(v0 + 800);
  v16 = *(v0 + 608);
  v17 = *(v0 + 576);

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v17, v16, v15);
}

uint64_t sub_C3334()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v4 = *v1;
  *(*v1 + 1224) = v0;

  v5 = v2[151];
  (*(v2[75] + 8))(v2[76], v2[74]);

  if (v0)
  {
    v6 = sub_C3B94;
  }

  else
  {
    v6 = sub_C34E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_C34E8()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 960);

  v3 = *(v0 + 944);
  v14 = *(v0 + 936);
  v15 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  v16 = *(v0 + 896);
  v17 = *(v0 + 872);
  v18 = *(v0 + 848);
  v19 = *(v0 + 824);
  v9 = *(v0 + 800);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v20 = *(v0 + 792);
  v21 = *(v0 + 768);
  v22 = *(v0 + 744);
  v23 = *(v0 + 720);
  v24 = *(v0 + 696);
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 672);
  v28 = *(v0 + 648);
  v29 = *(v0 + 624);
  v30 = *(v0 + 608);

  (*(v10 + 8))(v9, v11);
  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_C371C()
{
  v1 = v0[127];
  v2 = v0[120];
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[114];
  v33 = v0[113];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[100];
  v9 = v0[98];
  v10 = v0[97];

  (*(v9 + 8))(v8, v10);
  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v33, v7);
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[103];
  v19 = v0[100];
  v20 = v0[99];
  v23 = v0[132];
  v24 = v0[96];
  v25 = v0[93];
  v26 = v0[90];
  v27 = v0[87];
  v28 = v0[86];
  v29 = v0[85];
  v30 = v0[84];
  v31 = v0[81];
  v32 = v0[78];
  v34 = v0[76];

  v21 = v0[1];

  return v21();
}

uint64_t sub_C394C()
{
  v1 = v0[145];
  v2 = v0[127];
  v3 = v0[120];
  v4 = v0[115];
  v5 = v0[114];
  v34 = v0[113];
  v6 = v0[111];
  v30 = v0[118];
  v32 = v0[110];
  v7 = v0[100];
  v8 = v0[98];
  v9 = v0[97];
  sub_E498(v0[146], v0[147]);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v30, v5);
  (*(v6 + 8))(v34, v32);
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[116];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[109];
  v16 = v0[106];
  v17 = v0[103];
  v18 = v0[100];
  v19 = v0[99];
  v22 = v0[150];
  v23 = v0[96];
  v24 = v0[93];
  v25 = v0[90];
  v26 = v0[87];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v31 = v0[81];
  v33 = v0[78];
  v35 = v0[76];

  v20 = v0[1];

  return v20();
}