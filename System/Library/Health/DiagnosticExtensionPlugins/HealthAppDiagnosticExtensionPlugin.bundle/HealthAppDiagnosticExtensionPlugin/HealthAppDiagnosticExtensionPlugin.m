uint64_t sub_12D0()
{
  v29 = sub_1B40();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v29, v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1B70();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v28, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v27 - v12;
  v14 = dispatch_semaphore_create(0);
  sub_18B0();
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  v16 = (v15 + 32);
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v17 = [objc_allocWithZone(sub_1B30()) init];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;

  v19 = v14;
  v27 = v17;
  sub_1B20();

  sub_1B60();
  *v4 = 10;
  v20 = v29;
  (*(v0 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v29);
  sub_1B80();
  (*(v0 + 8))(v4, v20);
  v21 = *(v5 + 8);
  v22 = v28;
  v21(v10, v28);
  sub_1BD0();
  v21(v13, v22);
  if (sub_1B50())
  {
    v23 = sub_1B90();
  }

  else
  {
    os_unfair_lock_lock(v16);
    v24 = *(v15 + 16);
    v25 = *(v15 + 24);

    os_unfair_lock_unlock(v16);
    v23 = sub_1B90();
  }

  [v30 appendString:v23];
}

Swift::Int sub_1604(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    __chkstk_darwin(a1, a2);
    v5 = (a4 + 32);
    os_unfair_lock_lock((a4 + 32));
    sub_19CC((a4 + 16));
  }

  else
  {
    __chkstk_darwin(a1, a2);
    v5 = (a4 + 32);
    os_unfair_lock_lock((a4 + 32));
    sub_1984((a4 + 16));
  }

  os_unfair_lock_unlock(v5);
  return sub_1BE0();
}

uint64_t sub_16D8(unint64_t *a1)
{
  v2 = a1[1];

  sub_1BF0(40);

  v10 = 0xD000000000000026;
  v11 = 0x8000000000001FD0;
  ErrorValue = swift_getErrorValue();
  v4 = *(*(v9[1] - 8) + 64);
  __chkstk_darwin(ErrorValue, v9[0]);
  (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12._countAndFlagsBits = sub_1BA0();
  sub_1BB0(v12);

  v8 = v11;
  *a1 = v10;
  a1[1] = v8;
  return result;
}

id sub_1854()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_18B0()
{
  if (!qword_8318)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C00();
    if (!v1)
    {
      atomic_store(v0, &qword_8318);
    }
  }
}

uint64_t sub_1938()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1984(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
}

void sub_19F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A48()
{
  result = qword_8328;
  if (!qword_8328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8328);
  }

  return result;
}

uint64_t sub_1AA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}