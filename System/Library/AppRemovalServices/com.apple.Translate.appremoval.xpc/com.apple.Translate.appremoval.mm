int main(int argc, const char **argv, const char **envp)
{
  qword_100008610 = [objc_allocWithZone(type metadata accessor for TranslateAppRemovalServiceListenerDelegate()) init];
  qword_100008618 = [objc_opt_self() serviceListener];
  [qword_100008618 setDelegate:qword_100008610];
  [qword_100008618 resume];
  return 0;
}

id sub_1000013B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslateAppRemovalServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000013E4()
{
  v0 = sub_100002810();
  sub_100002774(v0, qword_100008620);
  sub_100002490(v0, qword_100008620);
  return sub_100002800();
}

void sub_100001458(uint64_t a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
    if (qword_100008470 != -1)
    {
      swift_once();
    }

    v10 = sub_100002810();
    sub_100002490(v10, qword_100008620);
    v5 = sub_1000027F0();
    v11 = sub_100002860();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v11, "Successfully completed deletion of assets", v12, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100008470 != -1)
  {
    swift_once();
  }

  v4 = sub_100002810();
  sub_100002490(v4, qword_100008620);
  swift_errorRetain();
  v5 = sub_1000027F0();
  v6 = sub_100002850();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = sub_1000027E0();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to purge assets: %@", v7, 0xCu);
    sub_100002578(v8);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v13 = sub_100002830();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v16[4] = sub_100002570;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100001924;
  v16[3] = &unk_100004330;
  v15 = _Block_copy(v16);
  swift_errorRetain();

  AnalyticsSendEventLazy();
  _Block_release(v15);

  if (a2)
  {
    a2(a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_10000175C(uint64_t a1)
{
  v2 = sub_100002628(&_swiftEmptyArrayStorage);
  if (!a1)
  {
    sub_10000272C(0, &qword_1000085F8, NSNumber_ptr);
    isa = sub_100002870(0).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v2;
    sub_100001EF0(isa, 0x726F727245736168, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    return v13;
  }

  v3 = sub_1000027E0();
  result = [v3 domain];
  if (result)
  {
    v5 = result;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_100001EF0(v5, 0x6D6F44726F727265, 0xEB000000006E6961, v6);
    sub_10000272C(0, &qword_1000085F8, NSNumber_ptr);
    v7 = sub_100002880([v3 code]).super.super.isa;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_100001EF0(v7, 0x646F43726F727265, 0xE900000000000065, v8);
    v9 = sub_100002870(1).super.super.isa;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v2;
    sub_100001EF0(v9, 0x726F727245736168, 0xE800000000000000, v10);

    return v13;
  }

  __break(1u);
  return result;
}

Class sub_100001924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000272C(0, &qword_1000085F0, NSObject_ptr);
    v5.super.isa = sub_100002820().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_1000019C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100001AD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000027E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_100001B7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslateAppDeletionService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100001BD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000028E0();
  sub_100002840();
  v6 = sub_1000028F0();

  return sub_100002068(a1, a2, v6);
}

uint64_t sub_100001C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000025E0(&unk_100008600, &qword_100002DA8);
  v39 = a2;
  result = sub_1000028A0();
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
      sub_1000028E0();
      sub_100002840();
      result = sub_1000028F0();
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

uint64_t sub_100001EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100001BD4(a2, a3);
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
      sub_100001C4C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100001BD4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000028D0();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100002120();
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

unint64_t sub_100002068(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000028C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_100002120()
{
  v1 = v0;
  sub_1000025E0(&unk_100008600, &qword_100002DA8);
  v2 = *v0;
  v3 = sub_100002890();
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

void sub_10000228C(uint64_t a1, uint64_t a2)
{
  if (qword_100008470 != -1)
  {
    swift_once();
  }

  v4 = sub_100002810();
  sub_100002490(v4, qword_100008620);
  v5 = sub_1000027F0();
  v6 = sub_100002860();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting app removal service", v7, 2u);
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_100002508;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000019C0;
  v11[3] = &unk_1000042E0;
  v10 = _Block_copy(v11);
  sub_100002528(a1);

  [v8 _purgeAllAssetsExcludingConfig:1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_100002440(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002450()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002490(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000024C8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002538()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002578(uint64_t a1)
{
  v2 = sub_1000025E0(&qword_1000085E8, &qword_100002DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000025E0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025E0(&unk_100008600, &qword_100002DA8);
    v3 = sub_1000028B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100001BD4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_10000272C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *sub_100002774(uint64_t a1, uint64_t *a2)
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