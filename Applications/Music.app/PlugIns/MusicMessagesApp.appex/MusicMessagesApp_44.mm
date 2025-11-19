unint64_t sub_100443084()
{
  result = qword_100648138;
  if (!qword_100648138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648138);
  }

  return result;
}

unint64_t sub_1004430DC()
{
  result = qword_100648140;
  if (!qword_100648140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648140);
  }

  return result;
}

__n128 sub_100443130(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100443154(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004431A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100443220(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1, v4);
  *a2 = *v4;
  return result;
}

uint64_t sub_1004432EC(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.init(string:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100004CB8(&qword_100647868);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (!a1)
  {
    goto LABEL_4;
  }

  sub_1004D805C();

  v7 = sub_1004D809C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_10001074C(v6, &qword_100647868);
LABEL_4:
    v9 = sub_1004D809C();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  (*(v8 + 32))(a2, v6, v7);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t URL.parametrize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004CB8(&qword_100647868);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v68 = sub_1004D7BBC();
  v66 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v67 = &v50 - v11;
  __chkstk_darwin(v10);
  v62 = &v50 - v12;
  v13 = sub_100004CB8(&qword_1006481B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_1004D7C7C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004D809C();
  v21 = *(v20 - 8);
  result = (*(v21 + 16))(a2, v2, v20);
  if (*(a1 + 16))
  {
    sub_1004D7BEC();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return sub_10001074C(v15, &qword_1006481B0);
    }

    else
    {
      v53 = v21;
      v55 = v20;
      v56 = v7;
      v52 = v17;
      v23 = *(v17 + 32);
      v54 = v16;
      v23(v19, v15, v16);
      v51 = v19;
      v24 = sub_1004D7BCC();
      v25 = _swiftEmptyArrayStorage;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = *(a1 + 16);
      if (v27)
      {
        v25 = sub_100444064(*(a1 + 16), 0);
        v28 = sub_100444110(v69, v25 + 4, v27, a1);
        v65 = v69[4];

        sub_100010458();
        if (v28 != v27)
        {
          __break(1u);
        }
      }

      v69[0] = v25;
      sub_100445704(v69);
      v29 = v69[0];
      v61 = v69[0][2];
      if (v61)
      {
        v50 = a2;
        v30 = 0;
        v59 = v69[0];
        v60 = v69[0] + 4;
        v65 = (v66 + 16);
        v31 = (v66 + 8);
        v57 = (v66 + 40);
        v58 = v66 + 32;
        while (1)
        {
          if (v30 >= v29[2])
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v64 = v30;
          v34 = &v60[4 * v30];
          v35 = *v34;
          v36 = v34[1];

          sub_1004D7B8C();

          v37 = *(v26 + 2);
          if (v37)
          {
            break;
          }

LABEL_22:

          v43 = v62;
          (*v65)(v63, v62, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_10041448C(0, *(v26 + 2) + 1, 1, v26);
          }

          v45 = *(v26 + 2);
          v44 = *(v26 + 3);
          if (v45 >= v44 >> 1)
          {
            v26 = sub_10041448C(v44 > 1, v45 + 1, 1, v26);
          }

          v32 = v66;
          v33 = v68;
          (*(v66 + 8))(v43, v68);
          *(v26 + 2) = v45 + 1;
          (*(v32 + 32))(&v26[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v45], v63, v33);
LABEL_13:
          v30 = v64 + 1;
          v29 = v59;
          if (v64 + 1 == v61)
          {

            a2 = v50;
            goto LABEL_33;
          }
        }

        v38 = 0;
        while (1)
        {
          if (v38 >= *(v26 + 2))
          {
            __break(1u);
            goto LABEL_38;
          }

          v39 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v40 = *(v66 + 72) * v38;
          (*(v66 + 16))(v67, &v26[v39 + v40], v68);
          if (sub_1004D7B9C() == v35 && v41 == v36)
          {
            break;
          }

          v42 = sub_1004DF08C();

          (*v31)(v67, v68);
          if (v42)
          {
            goto LABEL_27;
          }

          if (v37 == ++v38)
          {
            goto LABEL_22;
          }
        }

        (*v31)(v67, v68);
LABEL_27:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1004440E8(v26);
        }

        if (v38 < *(v26 + 2))
        {
          (*v57)(&v26[v39 + v40], v62, v68);
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);

        __break(1u);
      }

      else
      {

LABEL_33:
        v46 = v51;
        sub_1004D7BDC();
        v47 = v56;
        sub_1004D7BFC();
        (*(v52 + 8))(v46, v54);
        v48 = v53;
        v49 = v55;
        if ((*(v53 + 48))(v47, 1, v55) == 1)
        {
          return sub_10001074C(v47, &qword_100647868);
        }

        else
        {
          (*(v48 + 8))(a2, v49);
          return (*(v48 + 32))(a2, v47, v49);
        }
      }
    }
  }

  return result;
}

uint64_t URLComponents.queryItemsDictionary.getter()
{
  v0 = sub_1004D7BBC();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004D7BCC();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v36 = *(v3 + 16);
  if (!v36)
  {

    return 0;
  }

  v5 = sub_10040518C(_swiftEmptyArrayStorage);
  v6 = 0;
  v35 = v4 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v33 = (v37 + 8);
  v34 = v37 + 16;
  v31 = v4;
  v32 = v2;
  while (v6 < *(v4 + 16))
  {
    (*(v37 + 16))(v2, v35 + *(v37 + 72) * v6, v0);
    v7 = sub_1004D7BAC();
    if (v8)
    {
      v9 = v8;
      v38 = v7;
      v10 = v0;
      sub_1004D7B9C();
      v11 = sub_1004DD4FC();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v5;
      v16 = sub_10041CA54(v11, v13);
      v17 = v5[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_25;
      }

      v20 = v15;
      if (v5[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v0 = v10;
          if ((v15 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_100445294();
          v0 = v10;
          if ((v20 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_100444798(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_10041CA54(v11, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_27;
        }

        v16 = v21;
        v0 = v10;
        if ((v20 & 1) == 0)
        {
LABEL_17:
          v5 = v39;
          v39[(v16 >> 6) + 8] |= 1 << v16;
          v24 = (v5[6] + 16 * v16);
          *v24 = v11;
          v24[1] = v13;
          v25 = (v5[7] + 16 * v16);
          *v25 = v38;
          v25[1] = v9;
          v2 = v32;
          (*v33)(v32, v0);
          v26 = v5[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v5[2] = v28;
          goto LABEL_19;
        }
      }

      v5 = v39;
      v23 = (v39[7] + 16 * v16);
      *v23 = v38;
      v23[1] = v9;

      v2 = v32;
      (*v33)(v32, v0);
LABEL_19:
      v4 = v31;
      goto LABEL_5;
    }

    (*v33)(v2, v0);
LABEL_5:
    if (v36 == ++v6)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

void *sub_100443FF0(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_1006481C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_100444064(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_1006481C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_100444110(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100444294(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100646EE0);
  result = sub_1004DED9C();
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
      result = sub_1004DF25C();
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

uint64_t sub_1004444F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100646EE8);
  v34 = a2;
  result = sub_1004DED9C();
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

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
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

uint64_t sub_100444798(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100646ED0);
  v37 = a2;
  result = sub_1004DED9C();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_100444A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100646EC8);
  v36 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v26 = v24;
      }

      sub_1004DF26C();
      if (v23)
      {
        sub_1004DF27C(1uLL);
        sub_1004DD55C();
      }

      else
      {
        sub_1004DF27C(0);
      }

      result = sub_1004DF2BC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_100444D38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100646F08);
  v34 = a2;
  result = sub_1004DED9C();
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

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
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

void *sub_100444FE0()
{
  v1 = v0;
  sub_100004CB8(&qword_100646EE0);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

void *sub_10044512C()
{
  v1 = v0;
  sub_100004CB8(&qword_100646EE8);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

void *sub_100445294()
{
  v1 = v0;
  sub_100004CB8(&qword_100646ED0);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

void *sub_10044540C()
{
  v1 = v0;
  sub_100004CB8(&qword_100646EC8);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        v23 = v20;
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

void *sub_100445594()
{
  v1 = v0;
  sub_100004CB8(&qword_100646F08);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

Swift::Int sub_100445704(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100446320(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100445770(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100445770(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004DEF7C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004CB8(&qword_1006481B8);
        v5 = sub_1004DD8EC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100445948(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100445878(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100445878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = sub_1004DF08C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100445948(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1004461E0(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_100445F2C((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      result = *v10;
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_1004DF08C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          result = *(v13 - 1);
          if (result == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1004DF08C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100413EF4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100413EF4((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_100445F2C((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1004461E0(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_100446154(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (result = sub_1004DF08C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_100445F2C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
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

      v17 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v17 && (sub_1004DF08C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = *(v6 - 4) == v20 && *(v6 - 3) == v21;
      if (!v22 && (sub_1004DF08C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_100446154(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004461E0(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1004461F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100647818);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

__n128 sub_100446340(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v9 = *(a6 - 8);
  __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v13 = v12 - 8;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  v15 = __chkstk_darwin(v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v38 = &v36 - v17;
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  (*(v9 + 16))(v11, a1, a6);
  v20 = sub_1004DD6DC();
  v22 = v21;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = &v19[*(v13 + 28)];
  *v23 = v39;
  *(v23 + 1) = a3;
  v24 = &v19[*(v13 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_100646D78;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1006481D0;
  v27 = *(qword_1006481D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v42;
  sub_100448FBC(v26, v19, v40, v41);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_10044BEE0(v19, _s20KeyValueRegistrationC10IdentifierVMa);
  }

  v30 = v38;
  sub_10044BE78(v19, v38, _s20KeyValueRegistrationC10IdentifierVMa);
  v31 = v37;
  sub_10044BFE4(v19, v37, _s20KeyValueRegistrationC10IdentifierVMa);
  v32 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v33 = swift_allocObject();
  sub_10044BFE4(v31, v33 + v32, _s20KeyValueRegistrationC10IdentifierVMa);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v34 = swift_allocObject();
  sub_10044BFE4(v30, v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);
  result = v34;
  v35 = (v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v35 = sub_1004081EC;
  v35[1] = v33;
  return result;
}

uint64_t sub_1004466B4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1004467A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a3 + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(*(a3 + 56) + 8 * v11);
      v22[0] = *v12;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v16;

      v17 = v15;

      v18 = v23;
      v19 = a1(v22);
      if (v18)
      {

        return v14;
      }

      v23 = 0;
      if (v19)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t UserDefault.init(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a2;
  v9 = type metadata accessor for UserDefault();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 44)], a3, a4);
  v10 = *(v9 + 48);
  v11 = sub_1004DE7CC();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a1, v11);
}

uint64_t UserDefault.init<A>(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v21 = a2;
  v22 = a6;
  v20 = a7;
  __chkstk_darwin(a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DE7CC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - v16;
  (*(v14 + 16))(&v19 - v16, a1, v13, v15);
  sub_1004DD81C();
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(v14 + 8))(a1, v13);
  return UserDefault.init(wrappedValue:defaults:key:)(v17, v21, v12, a4, v20);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  NSUserDefaults.subscript.getter(v2 + *(a1 + 44), v14);
  sub_100004CB8(&qword_100648130);
  v10 = swift_dynamicCast();
  v11 = *(*(v5 - 8) + 56);
  if (v10)
  {
    v12 = *(v5 - 8);
    v11(v9, 0, 1, v5);
    (*(v12 + 32))(a2, v9, v5);
    return (v11)(a2, 0, 1, v5);
  }

  else
  {
    v11(v9, 1, 1, v5);
    return (*(v7 + 16))(a2, v2 + *(a1 + 48), v6);
  }
}

double NSUserDefaults.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004DD6DC();
  v6 = sub_1004DD3FC();

  v7 = [v2 objectForKey:v6];

  if (v7)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_10044A8D4(a1, a2);
  v3 = sub_1004DE7CC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004431A4(v9, &v16);
  if (v17)
  {
    sub_100006F5C(&v16, &v18);
    sub_100008C70(&v18, v19);
    v12 = sub_1004DF06C();
    (*(v8 + 16))(v11, a2, a3);
    sub_1004DD6DC();
    v13 = sub_1004DD3FC();

    [v4 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    (*(v8 + 8))(a2, a3);
    sub_10040D174(a1);
    return sub_100008D24(&v18);
  }

  else
  {
    sub_10040D174(&v16);
    (*(v8 + 16))(v11, a2, a3);
    sub_1004DD6DC();
    v15 = sub_1004DD3FC();

    [v4 removeObjectForKey:v15];

    (*(v8 + 8))(a2, a3);
    return sub_10040D174(a1);
  }
}

{
  sub_10044AB00(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_1004DE7CC();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_1004472A0;
}

void sub_1004472A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_10044A8D4(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_10044A8D4((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1004DE7CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1004DF08C();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1004DF27C(1uLL);

    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  if (a2)
  {
    sub_1004DF27C(1uLL);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }

  return sub_1004DF2BC();
}

Swift::Int sub_100447520()
{
  v1 = *(v0 + 8);
  sub_1004DF26C();
  if (v1)
  {
    sub_1004DF27C(1uLL);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }

  return sub_1004DF2BC();
}

void sub_100447590()
{
  if (*(v0 + 8))
  {
    sub_1004DF27C(1uLL);

    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }
}

Swift::Int sub_100447608()
{
  v1 = *(v0 + 8);
  sub_1004DF26C();
  if (v1)
  {
    sub_1004DF27C(1uLL);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }

  return sub_1004DF2BC();
}

uint64_t sub_100447674(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1004DF08C();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1004DD3FC();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = v4;
  v9[8] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[11] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[12] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v10[13] = v14;
  (*(v12 + 16))();
  NSUserDefaults.subscript.getter(a2, v10);
  return sub_1004478B0;
}

void sub_1004478B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = v2[11];
    v6 = v2[8];
    sub_1004431A4(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v6);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v6);
    sub_10040D174(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v8 - v4;
  sub_1004DD81C();
  v6 = NSUserDefaults.subscript.getter(v5, a1);
  return (*(v3 + 8))(v5, AssociatedTypeWitness, v6);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return sub_100447C38;
}

void sub_100447C38(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[8];
    sub_1004431A4(*a1, (v2 + 4));
    sub_10044AB00((v2 + 4));
    (*(v4 + 8))(v3, v5);
    sub_10040D174(v2);
  }

  else
  {
    v6 = v2[12];
    v3 = v2[13];
    v7 = v2[8];
    sub_10044AB00(*a1);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NSUserDefaults.Migrator();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 44);

  return v8(v9, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a3 - 8);
  __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD81C();
  (*(*(a4 - 8) + 8))(a2, a4);
  *a5 = a1;
  v13 = type metadata accessor for NSUserDefaults.Migrator();
  return (*(v10 + 32))(&a5[*(v13 + 44)], v12, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v61 = a2;
  v9 = v8;
  v56 = a7;
  v54 = a4;
  v60 = a3;
  v50 = a1;
  v57 = a8;
  v55 = a6;
  v49 = *(a6 - 8);
  __chkstk_darwin(a1);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v59 = *(v13 - 8);
  __chkstk_darwin(v14);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v16;
  v52 = sub_1004DE7CC();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v47 - v19;
  v20 = *(a5 + 24);
  v68 = sub_1004DE7CC();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v47 - v21;
  v23 = *v9;
  v24 = *(a5 + 44);
  NSUserDefaults.subscript.getter(v9 + v24, v67);
  sub_1004431A4(v67, &v65);
  sub_100004CB8(&qword_100648130);
  v25 = swift_dynamicCast();
  v26 = *(v20 - 8);
  (*(v26 + 56))(v22, v25 ^ 1u, 1, v20);
  sub_1004431A4(v67, &v65);
  v27 = *(&v66 + 1);
  sub_10040D174(&v65);
  if (v27 && (*(v26 + 48))(v22, 1, v20) == 1)
  {
    _s8MigratorV5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    (*(v59 + 16))(v28, v9 + v24, v13);
    swift_willThrow();
LABEL_5:
    sub_10040D174(v67);
    return (*(v64 + 8))(v22, v68);
  }

  v29 = v62;
  v30 = v63;
  v61(v22);
  if (v29)
  {
    goto LABEL_5;
  }

  v31 = v47;
  (*(v59 + 16))(v47, v9 + v24, v13);
  v65 = 0u;
  v66 = 0u;
  NSUserDefaults.subscript.setter(&v65, v31, v13);
  v32 = v54;
  if (v54)
  {
    v62 = v54;
  }

  else
  {
    v62 = v23;
  }

  v33 = v53;
  v34 = v52;
  v35 = v51;
  v36 = v55;
  (*(v49 + 16))(v58, v50, v55);
  v37 = v48;
  (*(v35 + 16))(v48, v30, v34);
  v38 = v35;
  v39 = *(v33 - 8);
  if ((*(v39 + 48))(v37, 1, v33) == 1)
  {
    v40 = *(v38 + 8);
    v41 = v32;
    v40(v37, v34);
    v65 = 0u;
    v66 = 0u;
  }

  else
  {
    *(&v66 + 1) = v33;
    v42 = sub_1000357EC(&v65);
    (*(v39 + 32))(v42, v37, v33);
    v43 = v32;
  }

  v44 = v34;
  v45 = v62;
  NSUserDefaults.subscript.setter(&v65, v58, v36);

  sub_10040D174(v67);
  (*(v38 + 32))(v57, v63, v44);
  return (*(v64 + 8))(v22, v68);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v19 = a5;
  v17 = a3;
  v18 = a4;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v15 - v12;
  sub_1004DD81C();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v13, a1, a2, v17, v18, AssociatedTypeWitness, v16, a6);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, sub_10040637C, v13, a2, a3, a4, a5, a6);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v12 - v9;
  sub_1004DD81C();
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v10, a1, a2, AssociatedTypeWitness, v12, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSUserDefaults.Migrator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, a3, v14);
  *v16 = v5;
  (*(v9 + 32))(&v16[*(v12 + 44)], v11, a3);
  v17 = v5;
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v20, v12, a3, a4, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v10 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1004DD81C();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v8, a1, AssociatedTypeWitness, v10, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_10044BEE0(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_10044BEE0(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return swift_deallocClassInstance();
}

void sub_100448CEC(uint64_t a1)
{
  if (qword_100646D78 != -1)
  {
    swift_once();
  }

  v2 = qword_1006481D0;
  v3 = *(qword_1006481D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1004495F4(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a5;
  v17[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = v17 - v13;
  sub_1004DD81C();
  v15 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v14, a2, a3, a4, v17[0], AssociatedTypeWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

id sub_100448EEC()
{
  result = [objc_allocWithZone(_s9_ObserverCMa()) init];
  qword_1006481D0 = result;
  return result;
}

uint64_t sub_100448FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = _s9_ObserverC18HandlerAssociationVMa(0);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v57 = a2;

  v10 = sub_1004467A0(sub_10044BF70, v56, v9);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v50 = v4;
  }

  else
  {
    sub_100006F10(0, qword_100648280);
    v15 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
    v10 = *v15;
    v12 = v15[1];

    v16 = NSUserDefaults.init(suite:)(v10, v12);
    if (!v16)
    {
      sub_10044BF90();
      swift_allocError();
      *v47 = v10;
      v47[1] = v12;
      swift_willThrow();
    }

    v14 = v16;
    v50 = v4;
  }

  v17 = *(a1 + v8);
  v18 = *(v17 + 16);

  v19 = v14;
  if (v18)
  {

    v20 = sub_10041CBAC(v10, v12, v19);
    if (v21)
    {
      v48 = *(*(v17 + 56) + 8 * v20);

      goto LABEL_10;
    }
  }

  v48 = sub_100404A00(_swiftEmptyArrayStorage);
LABEL_10:
  v22 = *(a1 + v8);
  v23 = *(v22 + 16);
  v49 = v10;
  if (!v23)
  {
LABEL_17:
    v33 = _swiftEmptyArrayStorage;
LABEL_18:
    v34 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v29 = *v34;
    v30 = v34[1];
    v35 = sub_1004DD3FC();
    [v19 addObserver:a1 forKeyPath:v35 options:0 context:0];

    goto LABEL_19;
  }

  v24 = sub_10041CBAC(v10, v12, v19);
  if ((v25 & 1) == 0 || (v26 = *(*(v22 + 56) + 8 * v24), , , v27 = _s20KeyValueRegistrationC10IdentifierVMa(0), !*(v26 + 16)) || (v28 = (a2 + *(v27 + 24)), v29 = *v28, v30 = v28[1], v31 = sub_10041CA54(*v28, v30), (v32 & 1) == 0))
  {

    goto LABEL_17;
  }

  v33 = *(*(v26 + 56) + 8 * v31);

  if (!v33[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v36 = sub_1004D82AC();
  v37 = v55;
  (*(*(v36 - 8) + 16))(v55, a2, v36);
  v38 = (v37 + *(v51 + 20));
  v39 = v53;
  *v38 = v52;
  v38[1] = v39;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1004144B4(0, v33[2] + 1, 1, v33);
  }

  v41 = v33[2];
  v40 = v33[3];
  if (v41 >= v40 >> 1)
  {
    v33 = sub_1004144B4(v40 > 1, v41 + 1, 1, v33);
  }

  v33[2] = v41 + 1;
  sub_10044BFE4(v55, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, _s9_ObserverC18HandlerAssociationVMa);

  v42 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v42;
  sub_100430A5C(v33, v29, v30, isUniquelyReferenced_nonNull_native);

  v44 = v58;
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1004308B4(v44, v49, v12, v19, v45);

  *(a1 + v8) = v59;
  swift_endAccess();
}

uint64_t sub_1004494C0()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004D82AC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1004495F4(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v43 = a2;

  v9 = sub_1004467A0(sub_10044C05C, v42, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v41 = v9;
    v17 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v15 + 16);

    if (v20 && (v40 = v18, v21 = sub_10041CA54(v18, v19), (v22 & 1) != 0))
    {
      v39 = v19;
      v23 = *(*(v15 + 56) + 8 * v21);

      v47 = v23;
      __chkstk_darwin(v24);
      *(&v36 - 2) = a2;

      v38 = sub_1004466B4(sub_10044BF40, (&v36 - 4), v23);
      v26 = v25;

      if (v26)
      {
      }

      else
      {

        v27 = v13;
        sub_10043CA94(v38, v6);
        sub_10044BEE0(v6, _s9_ObserverC18HandlerAssociationVMa);
        v38 = v47;
        v28 = v39;
        if (!*(v47 + 16))
        {
          v29 = v27;
          v30 = sub_1004DD3FC();
          [v29 removeObserver:a1 forKeyPath:v30];
        }

        v31 = v27;
        v37 = sub_10044A108();
        v33 = sub_10042AAB8(v45, v41, v11, v31);
        if (*v32)
        {
          v34 = v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *v34;
          *v34 = 0x8000000000000000;
          sub_100430A5C(v38, v40, v28, isUniquelyReferenced_nonNull_native);

          *v34 = v44;
        }

        else
        {
        }

        (v33)(v45, 0);

        (v37)(v46, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

BOOL sub_100449984(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return sub_1004DF08C() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

void sub_100449A0C(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v10 = _s9_ObserverC18HandlerAssociationVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (!a2)
  {
LABEL_12:
    sub_1004431A4(a3, &v41);
    v27 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v28 = sub_100008C70(&v41, *(&v42 + 1));
      v29 = *(v27 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = sub_1004DF06C();
      (*(v29 + 8))(v32, v27);
      sub_100008D24(&v41);
      if (a4)
      {
LABEL_14:
        _s3__C19NSKeyValueChangeKeyVMa_0(0);
        sub_10044BE20();
        v34.super.isa = sub_1004DD1FC().super.isa;
LABEL_17:
        v35 = _s9_ObserverCMa();
        v40.receiver = v5;
        v40.super_class = v35;
        objc_msgSendSuper2(&v40, "observeValueForKeyPath:ofObject:change:context:", a2, v33, v34.super.isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v33 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v34.super.isa = 0;
    goto LABEL_17;
  }

  v15 = v12;
  sub_1004431A4(a3, &v41);
  if (!*(&v42 + 1))
  {
    sub_10040D174(&v41);
    goto LABEL_11;
  }

  sub_100006F10(0, qword_100648280);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = sub_1004DD3FC();
    goto LABEL_12;
  }

  v16 = v39;
  v17 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = v16;
  sub_100449E04(v5, v16, v38, v37, &v41);
  os_unfair_lock_unlock(*(v17 + 16));
  v19 = *(v41 + 16);
  if (v19)
  {
    v20 = &v14[*(v15 + 20)];
    v21 = *(v11 + 80);
    v36[1] = v41;
    v22 = v41 + ((v21 + 32) & ~v21);
    v23 = *(v11 + 72);
    do
    {
      sub_10044BE78(v22, v14, _s9_ObserverC18HandlerAssociationVMa);
      v24 = *v20;
      v25 = sub_1004DD3FC();
      v26 = [v18 valueForKey:v25];

      if (v26)
      {
        sub_1004DE8DC();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v24(&v41);
      sub_10040D174(&v41);
      sub_10044BEE0(v14, _s9_ObserverC18HandlerAssociationVMa);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {
  }
}

uint64_t sub_100449E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  result = swift_beginAccess();
  v12 = 0;
  v13 = *(a1 + v10);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = _swiftEmptyArrayStorage;
  while (v16)
  {
    v18 = v12;
LABEL_10:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    if (*(*(v13 + 48) + 24 * v20 + 16) == a2)
    {
      v21 = *(*(v13 + 56) + 8 * v20);
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
LABEL_19:
        v28 = __clz(__rbit64(v24)) | (v26 << 6);
        v29 = (*(v21 + 48) + 16 * v28);
        v17 = *(*(v21 + 56) + 8 * v28);
        if (*v29 != a3 || v29[1] != a4)
        {
          v24 &= v24 - 1;
          result = sub_1004DF08C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_29;
        }

        if (v27 >= v25)
        {
          v17 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= ((v14 + 63) >> 6))
    {
LABEL_27:
      *a5 = v17;
      return result;
    }

    v16 = *(v13 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10044A168(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1004DF08C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_100006F10(0, &unk_1006480F0);
    return sub_1004DE5FC() & 1;
  }

  return 0;
}

id sub_10044A1F4()
{
  v2.receiver = v0;
  v2.super_class = _s9_ObserverCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1)
{
  v2 = v1;
  sub_100008C70(a1, a1[3]);
  sub_1004D7ADC();
  swift_allocObject();
  sub_1004D7ACC();
  v3 = sub_1004D7ABC();
  v5 = v4;

  isa = sub_1004D80FC().super.isa;
  v7 = sub_1004DD3FC();
  [v2 setValue:isa forKey:v7];

  return sub_100010598(v3, v5);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = sub_1004DD3FC();
  v6 = [v2 valueForKey:v5];

  if (v6)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_10040D174(v13);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
  }

  sub_1004D7AAC();
  swift_allocObject();
  sub_1004D7A9C();
  sub_1004D7A8C();
  sub_100010598(v9, v10);

  v7 = 0;
  return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
}

uint64_t sub_10044A854()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006481D8);
  sub_100035430(v0, qword_1006481D8);
  return sub_1004D965C();
}

uint64_t sub_10044A8D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a2 + 16);
  __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v11);
  (*(v7 + 16))(v10, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    v16 = sub_1000357EC(&v18);
    (*(v15 + 32))(v16, v10, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v11);
}

uint64_t sub_10044AB00(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v6[-v3];
  sub_1004DD81C();
  sub_1004431A4(a1, v6);
  NSUserDefaults.subscript.setter(v6, v4, AssociatedTypeWitness);
  return sub_10040D174(a1);
}

unint64_t sub_10044AC30()
{
  result = qword_1006481F8[0];
  if (!qword_1006481F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006481F8);
  }

  return result;
}

uint64_t sub_10044AC84()
{
  result = sub_100006F10(319, qword_100648280);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1004DE7CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10044AD38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_10044AF9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t sub_10044B2D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10044B324()
{
  result = sub_100006F10(319, qword_100648280);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10044B3BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10044B540(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_10044B798()
{
  result = _s20KeyValueRegistrationC10IdentifierVMa(319);
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

uint64_t sub_10044B86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10044B93C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D82AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_10044BA14()
{
  result = sub_1004D82AC();
  if (v1 <= 0x3F)
  {
    result = sub_10044BA98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10044BA98()
{
  result = qword_1006484E0;
  if (!qword_1006484E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1006484E0);
  }

  return result;
}

uint64_t sub_10044BAF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_10044BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10044BC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D82AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10044BD44()
{
  result = sub_1004D82AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10044BDCC()
{
  result = qword_100648628;
  if (!qword_100648628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648628);
  }

  return result;
}

unint64_t sub_10044BE20()
{
  result = qword_100646F48;
  if (!qword_100646F48)
  {
    _s3__C19NSKeyValueChangeKeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646F48);
  }

  return result;
}

uint64_t sub_10044BE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044BEE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10044BF90()
{
  result = qword_100648630;
  if (!qword_100648630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648630);
  }

  return result;
}

uint64_t sub_10044BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044C07C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1004DD6BC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10044C0C4()
{
  result = sub_10041F618(&off_1005FAFD0);
  qword_100674230 = &off_1005FB030;
  return result;
}

uint64_t sub_10044C110()
{
  v0 = 10;
  sub_10044CD00(0, 10, 0);
  v1 = &unk_1005FB058;
  do
  {
    v6 = *(v1 - 1);
    v7 = *v1;
    swift_bridgeObjectRetain_n();
    v8._countAndFlagsBits = 115;
    v8._object = 0xE100000000000000;
    sub_1004DD5FC(v8);

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_10044CD00((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    v4 = &_swiftEmptyArrayStorage[2 * v3];
    v4[4] = v6;
    v4[5] = v7;
    v1 += 2;
    --v0;
  }

  while (v0);
  result = sub_10041F618(&off_1005FB000);
  qword_100674238 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004CB8(&qword_1006481B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_1004D7C7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004D7BEC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001074C(v4, &qword_1006481B0);
LABEL_9:
    v15 = sub_1004D809C();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = sub_1004D7C3C();
  if (!v10)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  if (qword_100646D90 != -1)
  {
    v9 = swift_once();
  }

  v20 = v11;
  v21 = v12;
  __chkstk_darwin(v9);
  *&v19[-16] = &v20;
  v14 = sub_100101CB8(sub_10044D354, &v19[-32], v13);
  if (v14)
  {
  }

  else
  {
    if (qword_100646D88 != -1)
    {
      v14 = swift_once();
    }

    v20 = v11;
    v21 = v12;
    __chkstk_darwin(v14);
    *&v19[-16] = &v20;
    v18 = sub_100101CB8(sub_10044D380, &v19[-32], v17);

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1004D7C4C();
LABEL_14:
  sub_1004D7BFC();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1004D7C2C();
  v5 = sub_10044C688(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = sub_1004D7C1C();
      v15._countAndFlagsBits = countAndFlagsBits;
      v15._object = object;
      sub_1004DD5FC(v15);
      v9(v14, 0);
      return;
    }

    v8 = sub_1004DF08C();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v10 = sub_10044C708(countAndFlagsBits, object);
  v12 = v11;
  v13 = sub_1004D7C1C();
  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_1004DD5FC(v16);

  v13(v14, 0);
}

uint64_t sub_10044C688(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1004DD5AC();
  return sub_1004DD6BC();
}

uint64_t sub_10044C708(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_10044C07C(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = sub_1004DF08C();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v8._countAndFlagsBits = v3;
    v8._object = a2;
    sub_1004DD5FC(v8);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (sub_1004D7BCC())
  {

    sub_10041FA20(v1);
  }

  else
  {
  }

  sub_1004D7BDC();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = sub_1004D7BBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_100648638);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_100004CB8(&qword_1006481B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1004D7C7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7BEC();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    result = sub_1004D7BCC();
    if (!result)
    {
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    v15 = result;
    v25 = v13;
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v30 = *(result + 16);
    if (!v30)
    {
LABEL_18:

      (*(v26 + 8))(v25, v27);
      v24 = v28;
      (*(v1 + 56))(v28, 1, 1, v0);
      sub_10001074C(v24, &qword_100648638);
      return 0;
    }

    v16 = 0;
    v17 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v29 = 0x80000001004FA890;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v17 + *(v1 + 72) * v16, v0);
      if (sub_1004D7B9C() == 0x6E6F69746361 && v19 == 0xE600000000000000)
      {
      }

      else
      {
        v20 = sub_1004DF08C();

        if ((v20 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v21 = sub_1004D7BAC();
      if (v22)
      {
        if (v21 == 0xD000000000000016 && v22 == v29)
        {

LABEL_17:
          (*(v26 + 8))(v25, v27);

          v23 = v28;
          (*(v1 + 32))(v28, v3, v0);
          (*(v1 + 56))(v23, 0, 1, v0);
          sub_10001074C(v23, &qword_100648638);
          return 1;
        }

        v18 = sub_1004DF08C();

        if (v18)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v16;
      result = (*(v1 + 8))(v3, v0);
      if (v30 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  sub_10001074C(v9, &qword_1006481B0);
  return 0;
}

size_t sub_10044CCE0(size_t a1, int64_t a2, char a3)
{
  result = sub_10044CE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10044CD00(char *a1, int64_t a2, char a3)
{
  result = sub_10044D120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10044CD20(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006481C8);
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

size_t sub_10044CE14(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100004CB8(&qword_100647370);
  v10 = *(sub_1004D85FC() - 8);
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
  v15 = *(sub_1004D85FC() - 8);
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

void *sub_10044CFEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_1006481C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_1006481B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10044D120(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100647848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10044D22C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1004DEB2C();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1004DED5C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const char *sub_10044D410()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
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

unint64_t sub_10044D4F4()
{
  result = qword_100648640;
  if (!qword_100648640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648640);
  }

  return result;
}

unint64_t sub_10044D54C()
{
  result = qword_100648648;
  if (!qword_100648648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648648);
  }

  return result;
}

unint64_t sub_10044D5A4()
{
  result = qword_100648650;
  if (!qword_100648650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648650);
  }

  return result;
}

unint64_t sub_10044D5FC()
{
  result = qword_100648658;
  if (!qword_100648658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648658);
  }

  return result;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10044D844()
{
  result = qword_100648660;
  if (!qword_100648660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648660);
  }

  return result;
}

uint64_t _s5MusicOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5MusicOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  v4 = sub_1000357EC(v6);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LOBYTE(v3) = sub_1004D878C();
  sub_100008D24(v6);
  return v3 & 1;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_10040CAEC;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_10044DBCC()
{

  return swift_deallocObject();
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10044DD40()
{
  result = swift_slowAlloc();
  qword_100648668 = result;
  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100646D98 != -1)
  {
    swift_once();
  }

  v8 = qword_100648668;
  if (objc_getAssociatedObject(v4, qword_100648668))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_100004CB8(&qword_100648670);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10040D174(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_10044E014, v10, a3);

  sub_1004DD84C();
  if (*((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  isa = sub_1004DD85C().super.isa;

  objc_setAssociatedObject(v12, v8, isa, 1);

  return v11;
}

uint64_t sub_10044DFB0(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return sub_100008D24(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100646D98 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = qword_100648668;
  if (objc_getAssociatedObject(v2, qword_100648668))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_100004CB8(&qword_100648670);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10040D174(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = sub_1004DED5C();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_1004DEB2C();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_1004DEB9C();
          sub_1004DEBDC();
          sub_1004DEBEC();
          sub_1004DEBAC();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = sub_1004DD85C().super.isa;

  objc_setAssociatedObject(v2, v4, isa, 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10044F430(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100012680;
    v12 = &unk_1005FD818;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100016298;
      v12 = &unk_1005FD840;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100012680;
    v10[3] = &unk_1005FD868;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = sub_10044F930;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100012680;
    v12[3] = &unk_1005FD8B8;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  sub_10044FBF0(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = sub_10044FDA0(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10044EE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  sub_1004DEBCC();
  v6 = v4 + 56;
  v7 = sub_1004DE93C();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = sub_10044FF08;
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    sub_1004DEB9C();
    sub_1004DEBDC();
    sub_1004DEBEC();
    result = sub_1004DEBAC();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = sub_1004DE95C();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10044F30C(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1004D7B7C();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  result = sub_10044F430(v10, v14);
  if (v15 != 2)
  {
    v16[3] = v14[3];
    v16[4] = v14[4];
    v16[1] = v14[1];
    v16[2] = v14[2];
    v16[0] = v14[0];
    v17 = v15;
    return a2(a4, v16);
  }

  return result;
}

uint64_t sub_10044F430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004D7B6C();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v45 = sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_100028F3C(v50);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000904C(*(v5 + 56) + 32 * v6, v51);
  sub_1000105EC(v50);
  sub_100006F10(0, &qword_100646DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v43 = v9;
  v44 = v8;
  v41 = v10;
  v42 = v11;

  v46 = sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_100028F3C(v50);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000904C(*(v5 + 56) + 32 * v12, v51);
  sub_1000105EC(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 CGRectValue];
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v38 = v17;

  v47 = sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_100028F3C(v50);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000904C(*(v5 + 56) + 32 * v18, v51);
  sub_1000105EC(v50);
  sub_100006F10(0, &qword_1006478D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v47 floatValue];
  v21 = v20;

  v48 = sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_100028F3C(v50);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10000904C(*(v5 + 56) + 32 * v22, v51);
  sub_1000105EC(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v36 = sub_1004D7B7C();
    (*(*(v36 - 8) + 8))(a1, v36);

    goto LABEL_20;
  }

  v24 = [v48 integerValue];

  v49 = sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v5 + 16) || (v25 = sub_100028F3C(v50), (v26 & 1) == 0))
  {
LABEL_18:

    sub_1000105EC(v50);
    goto LABEL_19;
  }

  sub_10000904C(*(v5 + 56) + 32 * v25, v51);
  sub_1000105EC(v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v35 = sub_1004D7B7C();
    result = (*(*(v35 - 8) + 8))(a1, v35);
LABEL_20:
    v24 = 0;
    v31 = 0uLL;
    v27 = 2;
    v30 = 0.0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v49 BOOLValue];

  v28 = sub_1004D7B7C();
  result = (*(*(v28 - 8) + 8))(a1, v28);
  v30 = v21;
  *&v31 = v44;
  *(&v31 + 1) = v41;
  *&v32 = v43;
  *(&v32 + 1) = v42;
  *&v33 = v40;
  *(&v33 + 1) = v37;
  *&v34 = v39;
  *(&v34 + 1) = v38;
LABEL_21:
  *a2 = v31;
  *(a2 + 16) = v32;
  *(a2 + 32) = v33;
  *(a2 + 48) = v34;
  *(a2 + 64) = v30;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  return result;
}

uint64_t sub_10044F8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10044F8F8()
{

  return swift_deallocObject();
}

void sub_10044F930()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  sub_10044F980(v1);
}

void sub_10044F980(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100006F10(0, &qword_100648108);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = sub_1004DE5FC();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void sub_10044FBF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double sub_10044FDA0(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

uint64_t sub_10044FED0()
{

  return swift_deallocObject();
}

unint64_t sub_10044FF18()
{
  result = qword_100648740;
  if (!qword_100648740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648740);
  }

  return result;
}

__n128 sub_10044FF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10044FF90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10044FFE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004D95AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost() + 20));

  return v1;
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_1006487A8;
  if (!qword_1006487A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v27 = a1;
  v28 = a2;
  v26 = a5;
  v6 = sub_100004CB8(&qword_100648748);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1004D95AC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = a4;
  swift_unknownObjectRetain();
  sub_1004D956C();
  (*(v13 + 16))(v11, v18, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_10045068C(v11, v9);
  v20 = *(v13 + 48);
  if (v20(v9, 1, v12) == 1)
  {
    v21 = v19;
    sub_1004D957C();
    swift_unknownObjectRelease();
    sub_1004506FC(v11);
    (*(v13 + 8))(v18, v12);
    if (v20(v9, 1, v12) != 1)
    {
      sub_1004506FC(v9);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1004506FC(v11);
    (*(v13 + 8))(v18, v12);
    (*(v13 + 32))(v16, v9, v12);
  }

  v22 = v26;
  (*(v13 + 32))(v26, v16, v12);
  result = type metadata accessor for Signpost();
  *(v22 + *(result + 20)) = v19;
  v24 = v22 + *(result + 24);
  v25 = v28;
  *v24 = v27;
  *(v24 + 8) = v25;
  *(v24 + 16) = v29;
  return result;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a3;
  v22 = a2;
  v10 = sub_100004CB8(&qword_100648748);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_1004D95AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045068C(a4, v12);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    v18 = a5;
    sub_1004D957C();
    sub_1004506FC(a4);
    if (v17(v12, 1, v13) != 1)
    {
      sub_1004506FC(v12);
    }
  }

  else
  {
    sub_1004506FC(a4);
    (*(v14 + 32))(v16, v12, v13);
  }

  (*(v14 + 32))(a6, v16, v13);
  result = type metadata accessor for Signpost();
  *(a6 + *(result + 20)) = a5;
  v20 = a6 + *(result + 24);
  v21 = v22;
  *v20 = a1;
  *(v20 + 8) = v21;
  *(v20 + 16) = v23;
  return result;
}

uint64_t sub_10045068C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004506FC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100648748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004507DC(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for Signpost();

  return sub_1004D955C();
}

uint64_t sub_100450860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6();
  type metadata accessor for Signpost();
  return sub_1004D954C();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v39 = a4;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v36 = a7;
  v7 = sub_1004D95AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100648748);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for Signpost();
  __chkstk_darwin(v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v32 - v22;
  (*(v8 + 56))(v16, 1, 1, v7, v21);
  sub_10045068C(v16, v13);
  v24 = *(v8 + 48);
  if (v24(v13, 1, v7) == 1)
  {
    v25 = v39;
    sub_1004D957C();
    sub_1004506FC(v16);
    if (v24(v13, 1, v7) != 1)
    {
      sub_1004506FC(v13);
    }
  }

  else
  {
    sub_1004506FC(v16);
    (*(v8 + 32))(v10, v13, v7);
  }

  (*(v8 + 32))(v19, v10, v7);
  v26 = v39;
  *&v19[*(v17 + 20)] = v39;
  v27 = &v19[*(v17 + 24)];
  v28 = v34;
  *v27 = v33;
  *(v27 + 1) = v28;
  v27[16] = v35;
  sub_10011EB54(v19, v23);
  v29 = v26;
  sub_1004DE22C();
  v30 = sub_1004D955C();
  v38(v30);
  sub_1004DE21C();
  sub_1004D955C();
  return sub_10011E9A4(v23);
}

uint64_t sub_100450C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D95AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100450D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D95AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100450DC8()
{
  result = sub_1004D95AC();
  if (v1 <= 0x3F)
  {
    result = sub_100450E54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100450E54()
{
  result = qword_1006487B8;
  if (!qword_1006487B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006487B8);
  }

  return result;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.endIndex.getter()
{
  type metadata accessor for WeakArray.WeakBox();

  return sub_1004DD96C();
}

uint64_t WeakArray.subscript.getter()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  sub_1004DD99C();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox();
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDCEC();
  sub_100004CB8(&qword_100647898);
  v0 = sub_1004DDE6C();
  result = 0;
  if (v0)
  {
    return WeakArray.subscript.getter();
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v8[5] = a1;
  v8[2] = a2;
  v2 = sub_1004DD98C();
  v3 = type metadata accessor for WeakArray.WeakBox();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_10041716C(sub_1004512C8, v8, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  return v6;
}

uint64_t sub_1004512C8()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox();
  sub_1004DD98C();
  return sub_1004DD93C();
}

uint64_t WeakArray.remove(at:)()
{
  v0 = type metadata accessor for WeakArray.WeakBox();
  sub_1004DD98C();
  sub_1004DD95C();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

uint64_t WeakArray.remove(_:)()
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox();
  sub_1004DD98C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1004DDE4C();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox();
  sub_1004DD98C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DDE4C();
}

uint64_t sub_1004515B8()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == v1;
  }

  return result;
}

BOOL sub_100451600()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t WeakArray.allElements.getter()
{
  type metadata accessor for WeakArray();
  swift_getWitnessTable();
  return sub_1004DD71C();
}

uint64_t sub_100451768@<X0>(uint64_t *a1@<X8>)
{
  result = WeakArray.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_10045179C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_100451874(v2);
  v3[4] = v5;
  v3[5] = v4;
  return sub_10045182C;
}

void sub_10045182C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

void *sub_100451974@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_10045198C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1004519CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100451A20()
{
  swift_getWitnessTable();
  v0 = sub_100451BC0();

  return v0;
}

uint64_t sub_100451A7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100451AB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100451AF4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1004DD33C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1004DDE7C();
  result = sub_1004DD33C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100451BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1004DD33C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_100404D6C();
  swift_getTupleTypeMetadata2();
  v4 = sub_1004DD8DC();
  v5 = sub_10041D108(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter()
{
  swift_beginAccess();
  sub_100404D6C();

  sub_1004DD27C();

  if (v4[0])
  {
    if ([v4[0] weakObjectValue])
    {
      sub_1004DE8DC();

      swift_unknownObjectRelease();
    }

    else
    {

      v2 = 0u;
      v3 = 0u;
    }

    *v4 = v2;
    v5 = v3;
    if (*(&v3 + 1))
    {
      if (swift_dynamicCast())
      {
        return v1;
      }
    }

    else
    {
      sub_10040D174(v4);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(a1);
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = sub_1004DF06C();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    sub_100404D6C();
    sub_1004DD25C();
    sub_1004DD28C();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    sub_100404D6C();
    sub_1004DD25C();
    sub_1004DD23C();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v5 = *(*v1 + 80);
  v3[2] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[3] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[4] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[5] = v9;
  (*(v7 + 16))();
  *v4 = WeakValuesDictionary.subscript.getter();
  return sub_100452294;
}

void sub_100452294(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = sub_100404D6C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_1004DE7CC();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = sub_1004DD8DC();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_1004DEC8C();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (sub_1004DECBC())
      {
        v40 = v39;
        v41 = v69;
        sub_1004DF04C();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      sub_10040D174(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      sub_1004DD98C();
      sub_1004DD93C();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  sub_100010458();
  v46 = v78;
  v47 = sub_1004DD96C();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    v51 = sub_1004DD8FC();
    sub_1004DD8AC();
    if (v51)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = sub_1004DEB1C();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      sub_1004DD25C();
      sub_1004DD23C();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == sub_1004DD96C())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

void sub_100453008(id a1)
{
  v1 = objc_alloc_init(MusicMonogramArtworkDataSource);
  v2 = qword_10066F930;
  qword_10066F930 = v1;
}

void sub_100453088(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.apple.Music.MusicMonogramArtworkDataSource.loadingQueue", v3);
  v2 = qword_10066F940;
  qword_10066F940 = v1;
}

void sub_1004531E4(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  [*(a1 + 32) fittingSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) destinationScale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004532E0;
  v10[3] = &unk_1005FDC78;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v12 = *(a1 + 48);
  [v9 _monogramImageForToken:v2 fittingSize:v10 scale:v4 completionHandler:{v6, v8}];
}

void sub_1004532E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 visualIdenticalityIdentifier];
  v6 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:v4 image:*(a1 + 48), *(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1004537D0()
{
  result = sub_1004537F0();
  qword_100674240 = result;
  return result;
}

uint64_t sub_1004537F0()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100004CB8(&qword_100648D28) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_100455434(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_100648D30);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100511A40;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_1004D802C();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_100455164(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_1004D802C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_100455164(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_1004D802C();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10045FA18(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_1004551D4(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_100455244(v6);
        v36 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_1004551D4(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_100455244(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_100455244(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_100453F24()
{
  result = qword_10064AC60;
  if (!qword_10064AC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10064AC60);
  }

  return result;
}

id sub_10045402C(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE2D0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE320;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE370;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE3C0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE410;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_1004549E4(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1003BB590;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE4B0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_100454CCC@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_100454DC8()
{

  return swift_deallocObject();
}

uint64_t sub_100454E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_100454F08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_100454F94(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_100454FD8()
{
  sub_10045533C(&qword_10064AC70);
  sub_10045533C(&qword_100648D60);

  return sub_1004DEE0C();
}

__n128 sub_100455094(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1004550B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1004550D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100455164(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004551D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100455244(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100648D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045533C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100455434(uint64_t a1)
{
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100648D28);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100463948(0, v9, 0);
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
        sub_100463948(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100455164(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_100455668(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1004639A8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10046DD7C(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1004639A8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      v12 = sub_1000357EC(&v14);
      sub_10046DD7C(v5, v12, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_100035850(&v14, &v7[5 * v11 + 4]);
      sub_10046DDE4(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_100455914()
{
  v0 = sub_10048F8C8(&off_1005FDDA8);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_100648B98 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_100455A68()
{
  v0 = sub_100468AD8(&off_1005FDDE8);
  sub_100004CB8(&qword_100649548);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_100648BA0 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    sub_1004DF2AC(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_1004DF26C();
  if (a2)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_1004DF2AC(v4);
  }

  return sub_1004DF2BC();
}

void sub_100455CA8()
{
  if (*(v0 + 8))
  {
    sub_1004DF27C(0);
  }

  else
  {
    v1 = *v0;
    sub_1004DF27C(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_1004DF2AC(v2);
  }
}

Swift::Int sub_100455CF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004DF26C();
  if (v2)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_1004DF2AC(v3);
  }

  return sub_1004DF2BC();
}

BOOL sub_100455D64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_100455DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = sub_1004DF08C();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1004DF2AC(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1004DF2AC(*&v5);
  sub_1004DD55C();
  sub_10046894C(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_1004DF27C(0);
  }

  else
  {
    v6 = *(v2 + 40);
    sub_1004DF27C(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    sub_1004DF2AC(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100455F78()
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t sub_100455FB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF2AC(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  sub_1004DD55C();
  v3 = *(v0 + 40);
  sub_1004DF27C(*(v0 + 32));
  sub_1004DF27C(v3);
  sub_1004DF27C(*(v0 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.Syllable.hash(into:)();
  return sub_1004DF2BC();
}

Swift::Int sub_1004560E4()
{
  sub_1004DF26C();
  Lyrics.Syllable.hash(into:)();
  return sub_1004DF2BC();
}

BOOL sub_100456120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_10001074C(v4, &qword_100648D80);
  return v2;
}

uint64_t Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  sub_1004DEAAC(54);
  v3._object = 0x80000001004FABC0;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v3);
  v4._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v5);
  sub_1004DDBAC();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v6);
  sub_1004DDBAC();
  v7._countAndFlagsBits = 0x3D7478657420;
  v7._object = 0xE600000000000000;
  sub_1004DD5FC(v7);
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v8._countAndFlagsBits = (*(v0 + *(v1 + 64)))();
  sub_1004DD5FC(v8);

  return 0;
}