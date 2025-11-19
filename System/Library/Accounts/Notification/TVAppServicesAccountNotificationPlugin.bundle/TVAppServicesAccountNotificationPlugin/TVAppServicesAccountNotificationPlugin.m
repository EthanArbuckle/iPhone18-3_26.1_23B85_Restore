id sub_12D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountNotificationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_132C()
{
  v0 = sub_28C4();
  sub_27D8(v0, qword_8478);
  sub_2754(v0, qword_8478);
  return sub_28B4();
}

uint64_t sub_13B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2964();
  sub_28E4();
  v7 = sub_2974();
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
    if (v12 || (sub_2944() & 1) != 0)
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

uint64_t sub_14B0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2964();
  sub_28E4();
  v9 = sub_2974();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2944() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1860(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1600(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_283C(&qword_8408, qword_2DF8);
  result = sub_2934();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2964();
      sub_28E4();
      result = sub_2974();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1860(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1600(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_19E0();
      goto LABEL_16;
    }

    sub_1B3C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2964();
  sub_28E4();
  result = sub_2974();
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

      result = sub_2944();
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
  result = sub_2954();
  __break(1u);
  return result;
}

void *sub_19E0()
{
  v1 = v0;
  sub_283C(&qword_8408, qword_2DF8);
  v2 = *v0;
  v3 = sub_2924();
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

uint64_t sub_1B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_283C(&qword_8408, qword_2DF8);
  result = sub_2934();
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
      sub_2964();

      sub_28E4();
      result = sub_2974();
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

void sub_1D74(void *a1, void *a2)
{
  v2 = a1;
  v3 = AMSAccountMediaTypeProduction;
  v21 = a2;
  if (a1)
  {
    v4 = a1;
    v5 = [v4 ams_isActiveForMediaType:v3];
    a2 = v21;
    if ((v5 & 1) == 0)
    {

      a2 = v21;
      v2 = 0;
    }
  }

  if (a2)
  {
    v6 = v21;
    v7 = [v6 ams_isActiveForMediaType:v3];
    a2 = v21;
    if ((v7 & 1) == 0)
    {

      a2 = 0;
    }
  }

  v22 = a2;
  if (!v2)
  {
    if (!a2)
    {
      return;
    }

    v15 = qword_8470;
    v9 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_28C4();
    sub_2754(v16, qword_8478);
    v11 = sub_28A4();
    v12 = sub_2904();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "New account is inactive. Old account is active";
    goto LABEL_18;
  }

  if (!a2)
  {
    v8 = qword_8470;
    v9 = v2;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_28C4();
    sub_2754(v10, qword_8478);
    v11 = sub_28A4();
    v12 = sub_2904();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "New account is active. Old account is inactive";
LABEL_18:
    _os_log_impl(&dword_0, v11, v12, v14, v13, 2u);

LABEL_19:

    if (qword_8470 != -1)
    {
      swift_once();
    }

    v17 = sub_28C4();
    sub_2754(v17, qword_8478);
    v18 = sub_28A4();
    v19 = sub_2904();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Received account change event -> requesting cache reset for sports favorites", v20, 2u);
    }

    [objc_opt_self() accountDidChange];
  }
}

uint64_t sub_207C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_28F4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_14B0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2114(void *a1, void *a2)
{
  sub_283C(&qword_8400, &qword_2DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D90;
  *(inited + 32) = sub_28D4();
  *(inited + 40) = v5;
  *(inited + 48) = sub_28D4();
  *(inited + 56) = v6;
  v7 = sub_207C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!a2)
  {
    goto LABEL_6;
  }

  v8 = a2;
  v9 = [v8 accountType];
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 identifier];

  if (!v11)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = sub_28D4();
  v14 = v13;

  LOBYTE(v12) = sub_13B8(v12, v14, v7);

  if (v12)
  {
LABEL_5:

    return;
  }

LABEL_6:
  if (!a1)
  {
    goto LABEL_5;
  }

  v15 = a1;
  v16 = [v15 accountType];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 identifier];

  if (v18)
  {
    v19 = sub_28D4();
    v21 = v20;

    sub_13B8(v19, v21, v7);

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_2310(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2)
    {
      if (qword_8470 != -1)
      {
        swift_once();
      }

      v7 = sub_28C4();
      sub_2754(v7, qword_8478);
      v8 = sub_28A4();
      v9 = sub_2904();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "AccountNotificationPlugin:: user logged in - will notify";
      goto LABEL_24;
    }

    return 0;
  }

  if (!a2)
  {
    if (qword_8470 != -1)
    {
      swift_once();
    }

    v12 = sub_28C4();
    sub_2754(v12, qword_8478);
    v8 = sub_28A4();
    v9 = sub_2904();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_25;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "AccountNotificationPlugin:: user logged out - will notify";
    goto LABEL_24;
  }

  v3 = [a1 identifier];
  v4 = [a2 identifier];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_278C();
      v6 = sub_2914();

      if ((v6 & 1) == 0)
      {
        goto LABEL_20;
      }

      return 0;
    }

    v5 = v3;
  }

  else if (!v4)
  {
    return 0;
  }

LABEL_20:
  if (qword_8470 != -1)
  {
    swift_once();
  }

  v14 = sub_28C4();
  sub_2754(v14, qword_8478);
  v8 = sub_28A4();
  v9 = sub_2904();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_25;
  }

  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = "AccountNotificationPlugin:: account changed - will notify";
LABEL_24:
  _os_log_impl(&dword_0, v8, v9, v11, v10, 2u);

LABEL_25:

  return 1;
}

void sub_2594(void *a1, void *a2)
{
  sub_2114(a2, a1);
  if ((v4 & 1) == 0)
  {
    if (qword_8470 != -1)
    {
      swift_once();
    }

    v5 = sub_28C4();
    sub_2754(v5, qword_8478);
    oslog = sub_28A4();
    v6 = sub_2904();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "AccountNotificationPlugin:: will not handle account update";
    goto LABEL_12;
  }

  if (sub_2310(a2, a1))
  {
    sub_2894();
    sub_2884();
    return;
  }

  if (qword_8470 != -1)
  {
    swift_once();
  }

  v9 = sub_28C4();
  sub_2754(v9, qword_8478);
  oslog = sub_28A4();
  v6 = sub_2904();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "AccountNotificationPlugin:: will not notify account update";
LABEL_12:
    _os_log_impl(&dword_0, oslog, v6, v8, v7, 2u);
  }

LABEL_13:
}

uint64_t sub_2754(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_278C()
{
  result = qword_83F8;
  if (!qword_83F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_83F8);
  }

  return result;
}

uint64_t *sub_27D8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_283C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}