int main(int argc, const char **argv, const char **envp)
{
  qword_10000CA70 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_10000CA78 = [objc_opt_self() serviceListener];
  [qword_10000CA78 setDelegate:qword_10000CA70];
  [qword_10000CA78 resume];
  return 0;
}

id sub_1000015C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000015F8()
{
  v0 = sub_1000063C0();
  sub_1000060A8(v0, qword_10000C980);
  sub_100005E74(v0, qword_10000C980);
  return sub_1000063B0();
}

uint64_t sub_10000182C(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v9 = sub_100006370();
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[6] = v12;
  v5[7] = _Block_copy(a4);
  sub_100006360();
  v13 = sub_1000063F0();
  v15 = v14;
  v5[8] = v14;
  v16 = a2;
  v17 = a5;
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1000019A0;

  return sub_100004494(v12, a2, v13, v15);
}

uint64_t sub_1000019A0(void *a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 72);
  v8 = *v2;

  v9 = v5[8];
  v10 = v5[7];
  v11 = v5[3];
  v12 = v5[2];
  (*(v5[5] + 8))(v5[6], v5[4]);

  if (v3)
  {
    v13 = sub_100006330();

    (v10)[2](v10, 0, v13);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v14 = v6[6];

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_100001D70(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v9 = sub_100006370();
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[6] = v12;
  v5[7] = _Block_copy(a4);
  sub_100006360();
  v13 = sub_1000063F0();
  v15 = v14;
  v5[8] = v14;
  v16 = a2;
  v17 = a5;
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1000019A0;

  return (sub_100004FC8)(v12, v16, v13, v15);
}

id sub_100001F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPSBundleService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001F80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000632C;

  return sub_100001D70(v2, v3, v4, v5, v6);
}

uint64_t sub_100002094(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000632C;

  return v7();
}

uint64_t sub_10000217C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000632C;

  return sub_100002094(v2, v3, v5);
}

uint64_t sub_10000223C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002324;

  return v8();
}

uint64_t sub_100002324()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000241C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000632C;

  return sub_10000223C(a1, v4, v5, v7);
}

uint64_t sub_1000024E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001F80(&qword_10000C9C0, &qword_100007268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100005FE0(a3, v24 - v10, &qword_10000C9C0, &qword_100007268);
  v12 = sub_1000064A0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000027B4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100006490();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100006480();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_100006400() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000027B4(a3);

    return v22;
  }

LABEL_8:
  sub_1000027B4(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000027B4(uint64_t a1)
{
  v2 = sub_100001F80(&qword_10000C9C0, &qword_100007268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000281C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002914;

  return v7(a1);
}

uint64_t sub_100002914()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002A0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000632C;

  return sub_10000281C(a1, v5);
}

uint64_t sub_100002AFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002324;

  return sub_10000281C(a1, v5);
}

uint64_t sub_100002BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C80(v11, 0, 0, 1, a1, a2);
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
    sub_100006048(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005F00(v11);
  return v7;
}

unint64_t sub_100002C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D8C(a5, a6);
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
    result = sub_100006500();
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

char *sub_100002D8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002DD8(a1, a2);
  sub_100002F08(&off_100008460);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002DD8(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100002FF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100006500();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100006420();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002FF4(v10, 0);
        result = sub_1000064D0();
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

uint64_t sub_100002F08(uint64_t result)
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

  result = sub_100003068(result, v12, 1, v3);
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

void *sub_100002FF4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001F80(&qword_10000CA00, &qword_1000072D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F80(&qword_10000CA00, &qword_1000072D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000315C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100006390();
  sub_100005F98(&qword_10000C9E8, &type metadata accessor for UUID);
  v5 = sub_1000063D0();

  return sub_1000031F4(a1, v5);
}

unint64_t sub_1000031F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100006390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
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
      sub_100005F98(&qword_10000C9F0, &type metadata accessor for UUID);
      v16 = sub_1000063E0();
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

uint64_t sub_1000033B4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100006390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
  v43 = a2;
  result = sub_100006530();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100005F98(&qword_10000C9E8, &type metadata accessor for UUID);
      result = sub_1000063D0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

char *sub_100003790()
{
  v1 = v0;
  v32 = sub_100006390();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin();
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
  v4 = *v0;
  v5 = sub_100006520();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_100003A04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(NSBundle);
  sub_100006350(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8];

  if (v10)
  {
    v61 = 0;
    if (![v10 loadAndReturnError:&v61])
    {
      v28 = v61;
      sub_100006340();

LABEL_27:
      swift_willThrow();

      return v3;
    }

    v11 = v61;
    if ([v10 principalClass])
    {
      swift_getObjCClassMetadata();
      if (!swift_dynamicCastTypeToObjCProtocolConditional())
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1000064E0(93);
        v66._object = 0x8000000100007040;
        v66._countAndFlagsBits = 0xD000000000000010;
        sub_100006410(v66);
        v31 = [swift_getObjCClassFromMetadata() description];
        v32 = sub_1000063F0();
        v34 = v33;

        v67._countAndFlagsBits = v32;
        v67._object = v34;
        sub_100006410(v67);

        v68._countAndFlagsBits = 0x646E7562206E6920;
        v68._object = 0xEB0000000020656CLL;
        sub_100006410(v68);
        v3 = sub_100006370();
        sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
        v69._countAndFlagsBits = sub_100006550();
        sub_100006410(v69);

        v35._countAndFlagsBits = 0xD00000000000003CLL;
        v35._object = 0x8000000100007060;
LABEL_22:
        sub_100006410(v35);
        v72._countAndFlagsBits = a2;
        v72._object = a3;
        sub_100006410(v72);
        v40 = v61;
        v41 = v62;
        if (qword_10000C830 != -1)
        {
          swift_once();
        }

        v42 = sub_1000063C0();
        sub_100005E74(v42, qword_10000C980);

        v43 = sub_1000063A0();
        v44 = sub_1000064B0();

        if (os_log_type_enabled(v43, v44))
        {
          v3 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v61 = v45;
          *v3 = 136315138;
          *(v3 + 4) = sub_100002BB4(v40, v41, &v61);
          _os_log_impl(&_mh_execute_header, v43, v44, "%s", v3, 0xCu);
          sub_100005F00(v45);
        }

        sub_100005EAC();
        swift_allocError();
        *v46 = v40;
        v46[1] = v41;
        goto LABEL_27;
      }

      v12 = [swift_getObjCClassFromMetadata() hostConfigurationProvider];
      if (v12)
      {
        v3 = v12;
        v13 = [v12 role];
        v14 = a2;
        v15 = a3;
        v16 = sub_1000063F0();
        v18 = v17;

        v19 = v16;
        v20 = v15;
        v21 = v19 == v14 && v18 == v15;
        if (v21 || (v22 = v14, (sub_100006560() & 1) != 0))
        {
        }

        else
        {
          v61 = 0;
          v62 = 0xE000000000000000;
          v60 = v19;
          sub_1000064E0(67);
          v73._object = 0x8000000100007040;
          v73._countAndFlagsBits = 0xD000000000000010;
          sub_100006410(v73);
          v48 = [swift_getObjCClassFromMetadata() description];
          v49 = sub_1000063F0();
          v51 = v50;

          v74._countAndFlagsBits = v49;
          v74._object = v51;
          sub_100006410(v74);

          v75._countAndFlagsBits = 0xD000000000000015;
          v75._object = 0x80000001000070E0;
          sub_100006410(v75);
          v76._countAndFlagsBits = v60;
          v76._object = v18;
          sub_100006410(v76);

          v77._countAndFlagsBits = 0x6E7562206E692027;
          v77._object = 0xEC00000020656C64;
          sub_100006410(v77);
          sub_100006370();
          sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
          v78._countAndFlagsBits = sub_100006550();
          sub_100006410(v78);

          v79._countAndFlagsBits = 0x6C6F7220726F6620;
          v79._object = 0xEA00000000002065;
          sub_100006410(v79);
          v80._countAndFlagsBits = v22;
          v80._object = v20;
          sub_100006410(v80);
          v52 = v61;
          v53 = v62;
          if (qword_10000C830 != -1)
          {
            swift_once();
          }

          v54 = sub_1000063C0();
          sub_100005E74(v54, qword_10000C980);

          v55 = sub_1000063A0();
          v56 = sub_1000064B0();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v61 = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_100002BB4(v52, v53, &v61);
            _os_log_impl(&_mh_execute_header, v55, v56, "%s", v57, 0xCu);
            sub_100005F00(v58);
          }

          sub_100005EAC();
          swift_allocError();
          *v59 = v52;
          v59[1] = v53;
          swift_willThrow();

          swift_unknownObjectRelease();
        }

        return v3;
      }

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1000064E0(50);

      v61 = 0xD000000000000010;
      v62 = 0x80000001000070A0;
      v36 = [swift_getObjCClassFromMetadata() description];
      v37 = sub_1000063F0();
      v39 = v38;

      v70._countAndFlagsBits = v37;
      v70._object = v39;
      sub_100006410(v70);

      v29 = "Initializer for ";
      v30._countAndFlagsBits = 0xD000000000000012;
    }

    else
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1000064E0(57);
      v29 = "Failed to load bundle ";
      v30._countAndFlagsBits = 0xD00000000000002BLL;
    }

    v30._object = (v29 | 0x8000000000000000);
    sub_100006410(v30);
    v3 = sub_100006370();
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
    v71._countAndFlagsBits = sub_100006550();
    sub_100006410(v71);

    v35._countAndFlagsBits = 0x6C6F7220726F6620;
    v35._object = 0xEA00000000002065;
    goto LABEL_22;
  }

  sub_1000064E0(36);

  v61 = 0xD000000000000016;
  v62 = 0x8000000100006FF0;
  sub_100006370();
  sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
  v63._countAndFlagsBits = sub_100006550();
  sub_100006410(v63);

  v64._countAndFlagsBits = 0x6C6F7220726F6620;
  v64._object = 0xEA00000000002065;
  sub_100006410(v64);
  v65._countAndFlagsBits = a2;
  v65._object = a3;
  sub_100006410(v65);
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v23 = sub_1000063C0();
  sub_100005E74(v23, qword_10000C980);

  v24 = sub_1000063A0();
  v25 = sub_1000064B0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v61 = v3;
    *v26 = 136315138;
    *(v26 + 4) = sub_100002BB4(0xD000000000000016, 0x8000000100006FF0, &v61);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s", v26, 0xCu);
    sub_100005F00(v3);
  }

  sub_100005EAC();
  swift_allocError();
  *v27 = 0xD000000000000016;
  v27[1] = 0x8000000100006FF0;
  swift_willThrow();
  return v3;
}

uint64_t sub_100004494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100006370();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100004564, 0, 0);
}

uint64_t sub_100004564()
{
  v78 = v0;
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = sub_1000063C0();
  sub_100005E74(v6, qword_10000C980);
  v73 = *(v3 + 16);
  v73(v1, v5, v2);

  v7 = sub_1000063A0();
  v8 = sub_1000064C0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v9)
  {
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100002BB4(v14, v13, &v76);
    *(v15 + 12) = 2080;
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
    v16 = sub_100006550();
    v18 = v17;
    v75 = *(v11 + 8);
    v75(v10, v12);
    v19 = sub_100002BB4(v16, v18, &v76);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Loading host configuration for role %s from %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v75 = *(v11 + 8);
    v75(v10, v12);
  }

  v20 = sub_100003A04(*(v0 + 16), *(v0 + 32), *(v0 + 40));
  v21 = *(v0 + 24);
  v72 = v20;
  if (v21)
  {
    v22 = [v20 respondsToSelector:"updatedHostConfigurationForCurrentConfiguration:"];
    v23 = v21;
    if (v22)
    {
      v24 = [v72 updatedHostConfigurationForCurrentConfiguration:v23];
      if (v24)
      {
        v25 = v24;

LABEL_14:
        v35 = [v25 entries];
        sub_100005F4C();
        v36 = sub_100006450();

        if (v36 >> 62)
        {
          v71 = sub_100006510();
        }

        else
        {
          v71 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = *(v0 + 64);
        v39 = *(v0 + 40);
        v38 = *(v0 + 48);
        v40 = *(v0 + 16);

        v73(v37, v40, v38);

        v41 = sub_1000063A0();
        v42 = sub_1000064C0();

        v43 = os_log_type_enabled(v41, v42);
        v45 = *(v0 + 56);
        v44 = *(v0 + 64);
        v46 = *(v0 + 48);
        if (v43)
        {
          v47 = *(v0 + 32);
          v70 = *(v0 + 40);
          v48 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v48 = 134218498;
          *(v48 + 4) = v71;
          v74 = v25;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_100002BB4(v47, v70, &v76);
          *(v48 + 22) = 2080;
          sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
          v49 = sub_100006550();
          v51 = v50;
          v75(v44, v46);
          v52 = v49;
          v25 = v74;
          v53 = sub_100002BB4(v52, v51, &v76);

          *(v48 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v41, v42, "Loaded %ld default configurations for role %s from %s", v48, 0x20u);
          swift_arrayDestroy();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v75(v44, v46);
        }

        v55 = *(v0 + 64);
        v54 = *(v0 + 72);

        v56 = *(v0 + 8);

        return v56(v25);
      }
    }

    v27 = *(v0 + 32);
    v26 = *(v0 + 40);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1000064E0(41);

    v76 = 0xD000000000000027;
    v77 = 0x8000000100007170;
    v80._countAndFlagsBits = v27;
    v80._object = v26;
    sub_100006410(v80);
    v29 = v76;
    v28 = v77;

    v30 = sub_1000063A0();
    v31 = sub_1000064B0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100002BB4(v29, v28, &v76);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s", v32, 0xCu);
      sub_100005F00(v33);
    }

    sub_100005EAC();
    swift_allocError();
    *v34 = v29;
    v34[1] = v28;
    swift_willThrow();
  }

  else
  {
    v25 = [v20 hostConfiguration];
    if (v25)
    {
      goto LABEL_14;
    }

    v59 = *(v0 + 32);
    v58 = *(v0 + 40);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1000064E0(57);
    v81._countAndFlagsBits = 0xD000000000000037;
    v81._object = 0x8000000100007130;
    sub_100006410(v81);
    v82._countAndFlagsBits = v59;
    v82._object = v58;
    sub_100006410(v82);
    v61 = v76;
    v60 = v77;

    v62 = sub_1000063A0();
    v63 = sub_1000064B0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_100002BB4(v61, v60, &v76);
      _os_log_impl(&_mh_execute_header, v62, v63, "%s", v64, 0xCu);
      sub_100005F00(v65);
    }

    sub_100005EAC();
    swift_allocError();
    *v66 = v61;
    v66[1] = v60;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v68 = *(v0 + 64);
  v67 = *(v0 + 72);

  v69 = *(v0 + 8);

  return v69();
}

unint64_t sub_100004DE0(uint64_t a1)
{
  v2 = sub_100001F80(&qword_10000C9F8, &qword_1000072C8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
    v8 = sub_100006540();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005FE0(v10, v6, &qword_10000C9F8, &qword_1000072C8);
      result = sub_10000315C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100006390();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_100004FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100006390();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_100006370();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000510C, 0, 0);
}

uint64_t sub_10000510C()
{
  v142 = v0;
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = sub_1000063C0();
  sub_100005E74(v6, qword_10000C980);
  v137 = *(v3 + 16);
  v137(v1, v5, v2);

  v7 = sub_1000063A0();
  v8 = sub_1000064C0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  if (v9)
  {
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100002BB4(v14, v13, &v140);
    *(v15 + 12) = 2080;
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
    v16 = sub_100006550();
    v18 = v17;
    v139 = *(v11 + 8);
    v139(v10, v12);
    v19 = sub_100002BB4(v16, v18, &v140);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating Switcher configuration for role %s from %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v139 = *(v11 + 8);
    v139(v10, v12);
  }

  v20 = sub_100003A04(*(v0 + 16), *(v0 + 32), *(v0 + 40));
  if ([v20 respondsToSelector:"switcherConfigurationForCurrentConfiguration:"])
  {
    v21 = [v20 switcherConfigurationForCurrentConfiguration:*(v0 + 24)];
    if (v21)
    {
      goto LABEL_54;
    }
  }

  if (([v20 respondsToSelector:"updatedPosterConfigurationsForCurrentConfiguration:"] & 1) == 0 || (v22 = objc_msgSend(v20, "updatedPosterConfigurationsForCurrentConfiguration:", *(v0 + 24))) == 0)
  {
    v34 = *(v0 + 32);
    v33 = *(v0 + 40);
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_1000064E0(45);

    v140 = 0xD00000000000002BLL;
    v141 = 0x8000000100006FC0;
    v144._countAndFlagsBits = v34;
    v144._object = v33;
    sub_100006410(v144);
    v36 = v140;
    v35 = v141;

    v37 = sub_1000063A0();
    v38 = sub_1000064B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v140 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100002BB4(v36, v35, &v140);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s", v39, 0xCu);
      sub_100005F00(v40);
    }

    sub_100005EAC();
    swift_allocError();
    *v41 = v36;
    v41[1] = v35;
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v45 = *(v0 + 72);
    v44 = *(v0 + 80);
    v46 = *(v0 + 64);

    v47 = *(v0 + 8);

    return v47();
  }

  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v25 = v22;
  v26 = sub_100006450();

  v27 = sub_1000063A0();
  v28 = sub_1000064C0();

  v130 = v26;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = *(v0 + 32);
    v29 = *(v0 + 40);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v140 = v32;
    *v31 = 134218242;
    *(v31 + 4) = *(v26 + 16);

    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100002BB4(v30, v29, &v140);
    _os_log_impl(&_mh_execute_header, v27, v28, "Got %ld UUIDs from host configuration provider for role %s", v31, 0x16u);
    sub_100005F00(v32);
  }

  else
  {
  }

  v49 = [*(v0 + 24) entries];
  sub_100005F4C();
  v50 = sub_100006450();

  v51 = sub_100004DE0(&_swiftEmptyArrayStorage);
  if (v50 >> 62)
  {
    v120 = v51;
    v52 = sub_100006510();
    v51 = v120;
  }

  else
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = *(v0 + 56);
  v133 = (v53 + 16);
  v134 = v51;
  v131 = v53;
  v54 = (v53 + 8);
  if (!v52)
  {
LABEL_42:

    v140 = &_swiftEmptyArrayStorage;
    v80 = *(v130 + 16);
    if (v80)
    {
      v81 = *(*(v0 + 56) + 80);
      v82 = v130 + ((v81 + 32) & ~v81);
      v83 = v131[9];
      v85 = v134;
      v132 = v131[2];
      v84 = v132;
      v132(*(v0 + 64), v82, *(v0 + 48));
      while (v85[2])
      {
        v87 = sub_10000315C(*(v0 + 64));
        v86 = *v54;
        if ((v88 & 1) == 0)
        {
          goto LABEL_45;
        }

        v89 = v83;
        v90 = *(v0 + 64);
        v91 = *(v0 + 48);
        v92 = *(v85[7] + 8 * v87);
        v86(v90, v91);
        sub_100006430();
        if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v93 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100006460();
        }

        sub_100006470();
        v85 = v134;
        v83 = v89;
        v84 = v132;
LABEL_46:
        v82 += v83;
        if (!--v80)
        {
          goto LABEL_53;
        }

        v84(*(v0 + 64), v82, *(v0 + 48));
      }

      v86 = *v54;
LABEL_45:
      v86(*(v0 + 64), *(v0 + 48));
      goto LABEL_46;
    }

LABEL_53:

    v94 = objc_allocWithZone(PRSHostConfiguration);
    isa = sub_100006440().super.isa;

    v21 = [v94 initWithConfigurationEntries:isa];

LABEL_54:
    v96 = [v21 entries];
    sub_100005F4C();
    v97 = sub_100006450();

    if (v97 >> 62)
    {
      v135 = sub_100006510();
    }

    else
    {
      v135 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v136 = v21;
    v98 = *(v0 + 104);
    v99 = *(v0 + 88);
    v100 = *(v0 + 40);
    v101 = *(v0 + 16);

    v137(v98, v101, v99);

    v102 = sub_1000063A0();
    v103 = sub_1000064C0();

    v104 = os_log_type_enabled(v102, v103);
    v106 = *(v0 + 96);
    v105 = *(v0 + 104);
    v107 = *(v0 + 88);
    if (v104)
    {
      v108 = *(v0 + 32);
      v138 = *(v0 + 40);
      v109 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v109 = 134218498;
      *(v109 + 4) = v135;
      *(v109 + 12) = 2080;
      *(v109 + 14) = sub_100002BB4(v108, v138, &v140);
      *(v109 + 22) = 2080;
      sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL);
      v110 = sub_100006550();
      v112 = v111;
      v139(v105, v107);
      v113 = sub_100002BB4(v110, v112, &v140);

      *(v109 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v102, v103, "Updated Switcher configuration with %ld default configurations for role %s from %s", v109, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v139(v105, v107);
    }

    v115 = *(v0 + 104);
    v114 = *(v0 + 112);
    v117 = *(v0 + 72);
    v116 = *(v0 + 80);
    v118 = *(v0 + 64);

    v119 = *(v0 + 8);

    return v119(v136);
  }

  v55 = 0;
  while (1)
  {
    v56 = v55;
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v57 = sub_1000064F0();
      }

      else
      {
        if (v56 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v57 = *(v50 + 8 * v56 + 32);
      }

      v58 = v57;
      v55 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v59 = [v57 posterUUID];
      if (v59)
      {
        break;
      }

      ++v56;
      if (v55 == v52)
      {
        goto LABEL_42;
      }
    }

    v60 = *(v0 + 72);
    v125 = *(v0 + 80);
    v127 = *(v0 + 48);
    v61 = v59;
    sub_100006380();

    v121 = *v133;
    (*v133)(v60, v125, v127);
    v126 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v134;
    v63 = sub_10000315C(v60);
    v64 = v134[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    if (v134[3] < v66)
    {
      v67 = *(v0 + 72);
      v122 = v62;
      sub_1000033B4(v66, isUniquelyReferenced_nonNull_native);
      v134 = v140;
      v68 = sub_10000315C(v67);
      v70 = v69 & 1;
      v62 = v122;
      if ((v122 & 1) == v70)
      {
        v63 = v68;
        goto LABEL_37;
      }

LABEL_64:
      v66 = *(v0 + 48);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v66);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v124 = v62;
      sub_100003790();
      v62 = v124;
      v134 = v140;
    }

LABEL_37:
    v71 = *(v0 + 72);
    v129 = *(v0 + 80);
    v72 = *(v0 + 48);
    v123 = v71;
    if (v62)
    {
      v73 = v134[7];
      v74 = *(v73 + 8 * v63);
      *(v73 + 8 * v63) = v126;

      v75 = *v54;
      (*v54)(v123, v72);
      v75(v129, v72);
      if (v55 == v52)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v134[(v63 >> 6) + 8] |= 1 << v63;
      v121(v134[6] + v131[9] * v63, v71, v72);
      *(v134[7] + 8 * v63) = v126;

      v76 = v131[1];
      v76(v123, v72);
      v66 = (v76)(v129, v72);
      v77 = v134[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_70;
      }

      v134[2] = v79;
      if (v55 == v52)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v66);
}

uint64_t sub_100005E74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005EAC()
{
  result = qword_10000C9C8;
  if (!qword_10000C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9C8);
  }

  return result;
}

uint64_t sub_100005F00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100005F4C()
{
  result = qword_10000C9D0;
  if (!qword_10000C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C9D0);
  }

  return result;
}

uint64_t sub_100005F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005FE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000060A8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000610C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100002324;

  return sub_10000182C(v2, v3, v4, v5, v6);
}

uint64_t sub_10000622C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_10000626C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000062C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}