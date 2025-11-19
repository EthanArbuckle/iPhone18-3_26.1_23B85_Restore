void sub_1000E375C(uint64_t a1)
{
  sub_1000F11EC(a1);
  if (v2)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v3 = sub_10000B8A8();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1[8];
  sub_10000B204();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 8;

  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (v1[6] + 16 * v13);
    v15 = v14[1];
    v16 = *(v1[7] + 8 * v13);
    *&v36[0] = *v14;
    *(&v36[0] + 1) = v15;

    swift_dynamicCast();
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_100002C4C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_100002C4C(v35, v36);
    v17 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v17) & ~v10[v17 >> 6]) == 0)
    {
      sub_100022250();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (v10[v18] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v8 &= v8 - 1;
    sub_100005890();
    *(v10 + v22) |= v23;
    sub_10000DE3C(v24);
    *v25 = v28;
    v25[1] = v29;
    sub_1000F11AC(v26);
    sub_100002C4C(v36, v27);
    sub_10005EEBC();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = v1[v12 + 8];
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1000E39C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100002C4C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100002C4C(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v7[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v2[6] + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = sub_100002C4C(v34, (v2[7] + 32 * v20));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1000E3C88(uint64_t a1)
{
  sub_1000F11EC(a1);
  if (v2)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v3 = sub_10000B8A8();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1[8];
  sub_10000B204();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = (v3 + 8);

  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(v1[6] + 8 * v13);
    sub_100011BAC(v1[7] + 32 * v13, v37 + 8);
    *&v37[0] = v14;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v36 = v38;
    *&v34[0] = v14;
    swift_dynamicCast();
    sub_100002C4C((v35 + 8), v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100002C4C(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100002C4C(v33, v34);
    v15 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v15) & ~*&v10[8 * (v15 >> 6)]) == 0)
    {
      sub_100022250();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*&v10[8 * v16] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v8 &= v8 - 1;
    sub_100005890();
    *&v10[v20] |= v21;
    sub_10000DE3C(v22);
    *v23 = v26;
    v23[1] = v27;
    sub_1000F11AC(v24);
    sub_100002C4C(v34, v25);
    sub_10005EEBC();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = v1[v12 + 8];
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1000E3EE4(uint64_t a1)
{
  sub_1000F11EC(a1);
  if (v2)
  {
    sub_10007B9A4(&qword_10026C918, &qword_1001EBDF8);
    v5 = sub_10000B8A8();
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  v6 = v1[8];
  sub_10000B204();
  sub_1000163C8();

  v7 = 0;
  while (v3)
  {
    v8 = v7;
LABEL_10:
    sub_1000F1248();
    v10 = (v8 << 10) | (16 * v9);
    v11 = (v1[6] + v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = (v1[7] + v10);
    v28 = *v14;
    v29 = v14[1];

    sub_10007B9A4(&qword_10026C920, &qword_1001EBE00);
    swift_dynamicCast();
    v15 = sub_100012A94();
    v16 = v15;
    if (v17)
    {
      v18 = (v5[6] + 16 * v15);
      v19 = v18[1];
      *v18 = v13;
      v18[1] = v12;

      v20 = v5[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v30;
      swift_unknownObjectRelease();
      v7 = v8;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      sub_1000031B8((v15 >> 3) & 0x1FFFFFFFFFFFFFF8, v27);
      v23 = (v22 + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v5[7] + 8 * v16) = v30;
      v24 = v5[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v5[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v4)
    {

      sub_1000058C8();
      return;
    }

    v3 = v1[v8 + 8];
    ++v7;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_1000E40A0(uint64_t a1)
{
  sub_1000F11EC(a1);
  if (v2)
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v5 = sub_10000B8A8();
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  v6 = v1[8];
  sub_10000B204();
  sub_1000163C8();

  v8 = 0;
  while (v3)
  {
    v9 = v8;
LABEL_10:
    sub_1000F1248();
    v11 = v10 | (v9 << 6);
    v12 = (v1[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1000262E4(v1[7] + 40 * v11, v34);
    *&v33 = v13;
    *(&v33 + 1) = v14;
    v30[2] = v33;
    v31[0] = v34[0];
    v31[1] = v34[1];
    v32 = v35;
    v15 = v33;
    sub_10003B104(v31, v26);

    sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
    swift_dynamicCast();
    sub_100002C4C(&v27, v29);
    sub_100002C4C(v29, v30);
    sub_100002C4C(v30, &v28);
    result = sub_100012A94();
    v16 = result;
    if (v17)
    {
      v18 = v5[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v5[7] + 32 * v16);
      sub_100002C00(v20);
      result = sub_100002C4C(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      sub_1000031B8((result >> 3) & 0x1FFFFFFFFFFFFFF8, v25);
      *(v21 + 16 * v16) = v15;
      result = sub_100002C4C(&v28, (v5[7] + 32 * v16));
      v22 = v5[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v5[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v4)
    {

      return v5;
    }

    v3 = v1[v9 + 8];
    ++v8;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *sub_1000E42D8(uint64_t a1, void *a2, void *a3)
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1000E3340(v6, a3);
  }

  if (a2)
  {
    return sub_10004321C(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4344(unint64_t a1)
{
  v65 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v65 - 8);
  v3 = *(v2 + 8);
  __chkstk_darwin(v65);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v69 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v69);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchQoS();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  __chkstk_darwin(v15);
  v55 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v18 = sub_1000116AC(a1);
  sub_10007B9A4(&qword_10026C870, &qword_1001EBCB8);
  v68 = v18;
  if (!v18)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    return Promise.__allocating_init(value:)();
  }

  v60 = v2;
  v50 = v15;
  v51 = v9;
  v52 = v6;
  v53 = v5;
  v49 = Promise.__allocating_init()();
  v63 = dispatch_group_create();
  v66 = swift_allocObject();
  *(v66 + 16) = _swiftEmptyArrayStorage;
  v19 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v61 = "rk completed with error: ";
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v20 = qword_1002878E8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v62 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
  v62 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = swift_allocObject();
  v69 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (v68 >= 1)
  {
    v61 = v19;
    v22 = 0;
    v59 = v67 & 0xC000000000000001;
    v58 = enum case for DispatchQoS.QoSClass.default(_:);
    v56 = (v60 + 8);
    v57 = (v60 + 104);
    do
    {
      if (v59)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v67 + 8 * v22 + 32);
      }

      ++v22;
      v24 = v63;
      dispatch_group_enter(v63);
      v25 = swift_allocObject();
      v26 = v62;
      v27 = v69;
      v25[2] = v62;
      v25[3] = v27;
      v28 = v65;
      v25[4] = v66;
      v25[5] = v24;
      v29 = v64;
      (*v57)(v64, v58, v28);

      v60 = v26;
      v30 = v24;
      v31 = v61;
      v32 = static OS_dispatch_queue.global(qos:)();
      (*v56)(v29, v28);
      v72 = v31;
      v73 = &protocol witness table for OS_dispatch_queue;
      aBlock[0] = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1000F0714;
      *(v33 + 24) = v25;
      v34 = objc_allocWithZone(NSLock);
      v35 = v32;

      v36 = [v34 init];
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v33;
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v33;
      v39 = v36;
      swift_retain_n();
      v40 = v39;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(aBlock);
    }

    while (v68 != v22);
    v41 = swift_allocObject();
    v42 = v49;
    v41[2] = v66;
    v41[3] = v42;
    v41[4] = v69;
    v73 = sub_10006159C;
    v74 = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v72 = &unk_10024A018;
    v43 = _Block_copy(aBlock);

    v44 = v55;
    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_1000140D0(&qword_10026CD50, &unk_100270490);
    v45 = v51;
    v46 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v60;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v43);

    (*(v52 + 8))(v45, v46);
    (*(v54 + 8))(v44, v50);

    return v42;
  }

  __break(1u);
  return result;
}

id sub_1000E4C6C()
{
  if (qword_100268670 != -1)
  {
    sub_100003198();
  }

  v1 = qword_1002877D0;

  return v1;
}

uint64_t sub_1000E4D2C()
{
  sub_100003D28();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_10002411C();
  v0[27] = v1;
  sub_100004810();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  v4 = [v3 valuePromise];
  v0[28] = v4;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1000E4F00;
  v5 = swift_continuation_init();
  v6 = sub_10007B9A4(&qword_10026BB98, &qword_1001E93A0);
  v0[29] = v6;
  v0[25] = v6;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000E42D8;
  v0[21] = &unk_10024AA40;
  v0[22] = v5;
  [v4 resultWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E4F00()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E5000()
{
  sub_100003D28();
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  v3 = [v1 BOOLValue];

  if (v3)
  {

    sub_100002D8C();

    return v4();
  }

  else
  {
    if (qword_1002685E8 != -1)
    {
      sub_10001BD98();
    }

    v6 = *(v0 + 232);
    v7 = [qword_100287778 flush];
    *(v0 + 248) = v7;
    *(v0 + 80) = v0;
    sub_100017D74();
    sub_10003AEBC();
    *(v0 + 152) = 1107296256;
    sub_100017F64(v8);
    [v7 resultWithCompletion:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_1000E515C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 112);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E525C()
{
  sub_100004768();
  v1 = *(v0 + 248);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000E52C4()
{
  sub_100003D28();
  v1 = v0[30];
  v2 = v0[28];
  swift_willThrow();

  if (qword_1002685E8 != -1)
  {
    sub_10001BD98();
  }

  v3 = v0[29];
  v4 = [qword_100287778 flush];
  v0[31] = v4;
  v0[10] = v0;
  sub_100017D74();
  sub_10003AEBC();
  v0[19] = 1107296256;
  sub_100017F64(v5);
  [v4 resultWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1000E53D8()
{
  sub_100003D28();
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[27];
  swift_willThrow();

  sub_100002D8C();

  return v4();
}

void sub_1000E5458()
{
  sub_100003D74();
  v66 = v1;
  v3 = v2;
  sub_100002DFC();
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v64 = v9 - v8;
  v68 = v0;
  v10 = sub_1000F041C(v0);
  v67 = 0;
  LODWORD(v60) = v3;
  if (!v10)
  {
    v14 = &off_100244588;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v65 = *(v10 + 16);
  v62 = "Using existing engine performer";
  v13 = v10 + 40;
  v14 = _swiftEmptyArrayStorage;
  v61 = xmmword_1001E5F70;
  v63 = v10;
  v59 = v10 + 40;
LABEL_3:
  v15 = (v13 + 16 * v12);
  v69 = v14;
  while (1)
  {
    if (v65 == v12)
    {

LABEL_19:
      v35 = 0;
      v36 = &v66[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
      v37 = *(v14 + 16);
      v59 = 0x80000001001F31B0;
      v38 = 25;
      if (v60)
      {
        v38 = 17;
      }

      v60 = v38;
      v65 = _swiftEmptyArrayStorage;
      p_attr = &stru_100261FF8.attr;
      v40 = &qword_10026A758;
      v41 = &qword_1001EBE80;
      v69 = v14;
      v70 = &v66[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
      v66 = v37;
      while (1)
      {
        if (v37 == v35)
        {

          sub_100005F14();
          return;
        }

        if (v35 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v42 = v35[v14 + 32];
        v43 = [v68 p_attr[475]];
        if (!v43)
        {
          break;
        }

        v44 = v43;
        v45 = *sub_100003CA8(v36, *(v36 + 3));
        sub_10003B834(&v74);
        if (!v74)
        {
          goto LABEL_30;
        }

        v46 = p_attr;
        v85 = v76;
        v86 = v74;
        sub_10008A2E0(&v85, v71, v40, v41);
        sub_10000A0C4(&v86, &qword_10026A6F8);
        v87 = v75;
        sub_10000A0C4(&v87, &unk_10026CD20);
        sub_10000A0C4(&v85, v40);
        p_attr = v41;
        v47 = v40;
        v48 = v85;
        if (v85)
        {
          v14 = &v59;
          v71[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71[1] = v49;
          __chkstk_darwin(v71[0]);
          *(&v59 - 2) = v71;
          v37 = v67;
          v40 = sub_10013D5B0(sub_1000BF450, (&v59 - 4), v48);
          v67 = v37;
          v36 = v47;
          sub_10000A0C4(&v85, v47);

          v41 = p_attr;
          if ((v40 & 1) == 0)
          {
            sub_10005ADD0();
            goto LABEL_30;
          }

          sub_10000F284(v42, 1, &v77);

          v64 = v84;
          v14 = v83;
          v50 = v81;
          *&v61 = v82;
          p_attr = v80;
          v62 = v79;
          v63 = v78;
          v42 = BYTE1(v77);
          v40 = v77;
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = v65[2];
            sub_100004C7C();
            sub_10000F310();
            v65 = v57;
          }

          v37 = v65[2];
          v51 = v65[3];
          if (v37 >= v51 >> 1)
          {
            sub_100005C40(v51);
            sub_10000F310();
            v65 = v58;
          }

          ++v35;
          v52 = v65;
          v65[2] = v37 + 1;
          v53 = &v52[8 * v37];
          *(v53 + 32) = v40;
          *(v53 + 33) = v42;
          v54 = v73;
          *(v53 + 34) = v72;
          *(v53 + 19) = v54;
          v55 = v62;
          v53[5] = v63;
          v53[6] = v55;
          v53[7] = p_attr;
          v53[8] = v50;
          v53[9] = v61;
          *(v53 + 80) = v14;
          LODWORD(v55) = v71[0];
          *(v53 + 21) = *(v71 + 3);
          *(v53 + 81) = v55;
          v53[11] = v64;
          sub_10005ADD0();
        }

        else
        {
          v40 = v47;
          v41 = p_attr;
          p_attr = v46;
LABEL_30:

          ++v35;
        }
      }

      v36 = v40;
      v63 = [objc_opt_self() currentProcess];
      v40 = 0;
      v14 = 2;
      v62 = -1;
      p_attr = 0xD000000000000018;
      v50 = v59;
      *&v61 = v60;
      v64 = 10485760;
      goto LABEL_33;
    }

    if (v12 >= v11[2])
    {
      break;
    }

    v16 = *(v15 - 1);
    v17 = *v15;

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    v19 = _findStringSwitchCase(cases:string:)(&off_100244D78, v18);
    if (v19 < 4)
    {
      v29 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v14 + 16);
        sub_100004C7C();
        sub_1000589D0();
        v14 = v33;
      }

      v13 = v59;
      v31 = *(v14 + 16);
      v30 = *(v14 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_100005C40(v30);
        sub_1000589D0();
        v14 = v34;
      }

      ++v12;
      *(v14 + 16) = v31 + 1;
      *(v14 + v31 + 32) = v29;
      goto LABEL_3;
    }

    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    v70 = qword_100287850;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v20 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v20);
    v22 = *(v21 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = v61;
    v80 = type metadata accessor for EngagementService();
    v77 = v66;
    v23 = v66;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v77);
    v26 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100003B48(v26);
    v80 = &type metadata for String;
    v77 = v16;
    v78 = v17;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v77, &qword_10026D350);
    v27._countAndFlagsBits = 0xD00000000000001FLL;
    v27._object = (v62 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    LogInterpolation.init(stringInterpolation:)();
    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28);

    v15 += 2;
    ++v12;
    v14 = v69;
    v11 = v63;
  }

LABEL_40:
  __break(1u);
}

void sub_1000E5C04(unsigned __int8 *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *sub_100003CA8(&a2[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider], *&a2[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider + 24]);
  sub_10003B834(&v43);
  v7 = v43;
  if (v43)
  {
    v33 = a4;
    v8 = 0;
    v48 = v44;
    *v49 = v45;
    v32 = v47;
    *&v49[16] = v46;
    v50 = v43;
    v37 = *(v43 + 16);
    v9 = (v43 + 56);
    v10 = &_swiftEmptyArrayStorage;
    v34 = v43;
    while (v37 != v8)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(v9 - 2);
      v12 = *(v9 - 8);
      v13 = *v9;
      v14 = *(v9 - 24);
      v38[0] = v14;
      v39 = v11;
      v40 = v12;
      v41 = v13;

      if (sub_1000E5FB8(v38, a3, a2))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009B948(0, v10[2] + 1, 1);
          v10 = v42;
        }

        v17 = v10[2];
        v16 = v10[3];
        v18 = v10;
        if (v17 >= v16 >> 1)
        {
          sub_10009B948(v16 > 1, v17 + 1, 1);
          v18 = v42;
        }

        v18[2] = v17 + 1;
        v19 = &v18[4 * v17];
        *(v19 + 32) = v14;
        v19[5] = v11;
        *(v19 + 48) = v12;
        v19[7] = v13;
        v10 = v18;
      }

      else
      {
      }

      v9 += 4;
      ++v8;
      v7 = v34;
    }

    sub_10000A0C4(&v50, &unk_10026A6F8);
    v51 = *&v49[8];
    sub_10000A0C4(&v51, &unk_10026CD20);
    v52 = v32;
    sub_10000A0C4(&v52, &unk_10026A758);
    v20 = v10;
    v21 = v10[2];
    if (!v21)
    {

      v23 = 0;
      a4 = v33;
      goto LABEL_26;
    }

    a4 = v33;
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v22 = sub_100092378();
    v23 = v22;
    v24 = 0;
    v25 = v20[2];
    v26 = 4;
    v27 = v21;
    while (v25)
    {
      v24 |= LOBYTE(v20[v26]);
      --v25;
      v26 += 4;
      if (!--v27)
      {
        [v22 setAllowsResponse:v24 & 1];
        v28 = 0;
        v29 = v20[2];
        v30 = v20 + 6;
        while (v29)
        {
          if (*v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = *(v30 - 1);
          }

          v28 |= v31;
          --v29;
          v30 += 32;
          if (!--v21)
          {

            [v23 setComponents:v28];
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v23 = 0;
LABEL_26:
    *a4 = v23;
  }
}

uint64_t sub_1000E5FB8(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000E6284(a2, *(a1 + 24));
  if (v3)
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v23 = type metadata accessor for EngagementService();
    v22[0] = a3;
    v13 = a3;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x80000001001F7230;
    v16._countAndFlagsBits = 0xD000000000000023;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    swift_getErrorValue();
    v23 = v21;
    v17 = sub_100017E64(v22);
    (*(*(v21 - 8) + 16))(v17);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(v22, &qword_10026D350);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.info.getter();
    sub_1000036B0(v19);

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000E6284(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10007B9A4(&qword_10026C950, qword_1001EBE98);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v11 = &v46 - v10;
  v12 = *(a2 + 64);
  v47 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v46 = (v13 + 63) >> 6;
  v51 = "event destination: ";
  v48 = (v9 + 8);
  v58 = a2;

  v16 = 0;
  v17 = &type metadata for String;
  v50 = xmmword_1001E5F70;
  v52 = v11;
  while (1)
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
          }

          if (v18 >= v46)
          {
            break;
          }

          v15 = *(v47 + 8 * v18);
          ++v16;
          if (v15)
          {
            v16 = v18;
            goto LABEL_9;
          }
        }

        LOBYTE(v30) = 1;
        goto LABEL_20;
      }

LABEL_9:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (v16 << 10) | (16 * v19);
      v21 = (*(v58 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v58 + 56) + v20);
      v26 = *v24;
      v25 = v24[1];

      v57 = v22;
      v27 = String._bridgeToObjectiveC()();
      *&v62 = 0;
      v28 = [v56 valueForKeyPath:v27 exception:&v62];

      v59 = v62;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v29 = v17;
      if (swift_dynamicCast())
      {
        break;
      }

      v54 = v3;

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v36 = *(type metadata accessor for LogInterpolation() - 8);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v53 = *(v36 + 72);
      *(swift_allocObject() + 16) = v50;
      v38 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for EngagementService();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v39._object = (v51 | 0x8000000000000000);
      v39._countAndFlagsBits = 0xD000000000000035;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
      *(&v63 + 1) = v29;
      *&v62 = v57;
      *(&v62 + 1) = v23;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A0C4(&v62, &qword_10026D350);
      v40._countAndFlagsBits = 0x747065637865202CLL;
      v40._object = 0xED0000203A6E6F69;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
      v17 = v29;
      v41 = v59;
      if (v59)
      {
        *(&v63 + 1) = sub_100002BC0(0, &qword_10026C958, NSException_ptr);
        *&v62 = v41;
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
      }

      v42 = v41;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A0C4(&v62, &qword_10026D350);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
      LogInterpolation.init(stringInterpolation:)();
      v3 = v54;
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v44 = static os_log_type_t.debug.getter();
      sub_1000036B0(v44);
    }

    v30 = v60;
    v31 = v61;
    v32 = v52;
    Regex<A>.init(_:)();
    if (v3)
    {
      break;
    }

    *&v62 = v30;
    *(&v62 + 1) = v31;
    v57 = sub_1000F104C();
    sub_1000140D0(&qword_10026C968, &qword_10026C950);
    v33 = v49;
    v34 = BidirectionalCollection<>.contains<A>(_:)();
    v35 = v33;
    v17 = v29;
    (*v48)(v32, v35);

    if ((v34 & 1) == 0)
    {
      LOBYTE(v30) = 0;
LABEL_20:

      return v30 & 1;
    }
  }

  return v30 & 1;
}

void sub_1000E6878(id *a1, unint64_t *a2)
{
  v27 = *a1;
  v2 = *a2;
  v3 = sub_1000116AC(*a2);

  v4 = 4;
  while (1)
  {
    if (v4 - v3 == 4)
    {

      v18 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100004004(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return;
    }

    v5 = v4 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(v2 + 8 * v4);
    }

    v7 = v6;
    v8 = [v6 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v27 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_17;
    }

    ++v4;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v19 = *a2;
  v20 = *a2 & 0xC000000000000001;
  sub_1000EF534(v4 - 4, v20 == 0, *a2);
  if (!v20)
  {
    v21 = *(v19 + 8 * v4);
    goto LABEL_19;
  }

LABEL_24:
  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
  v22 = v21;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(*a2 + 8 * v4);
  }

  v24 = v23;
  v25 = [v23 components];

  [v22 setComponents:{objc_msgSend(v27, "components") | v25}];
}

uint64_t sub_1000E6AE8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E61B0;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    sub_1000E2000(v7, v6);
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = *(type metadata accessor for LogInterpolation() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for EngagementService();
    v19[0] = v5;
    v11 = v5;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v19, "Force syncing ");
    HIBYTE(v19[1]) = -18;
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v20 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A0C4(v19, &qword_10026D350);
    v17 = static os_log_type_t.default.getter();
    sub_1000036B0(v17);

    sub_1000627E8();
    v20 = type metadata accessor for SyncTaskScheduler();
    v21 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v19);
    SyncTaskScheduler.init()();
    v15 = Promise.map<A>(on:_:)();

    sub_100002C00(v19);
  }

  else
  {
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000F0FF8();
    swift_allocError();
    *v14 = 1;
    return Promise.__allocating_init(error:)();
  }

  return v15;
}

uint64_t sub_1000E6E60(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v32 = *a1;
    v33 = v2;
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *a1;
    v34 = *(a1 + 16);
    v35 = v3;
    v36 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue);
    v31[0] = v5;
    v31[1] = v34;
    v31[2] = v3;
    v31[3] = v4;
    sub_10000F4A4(v31, &v29);
    result = sub_10018AA30();
    v8 = result;
    v9 = (result + 40);
    v28 = -*(result + 16);
    v10 = -1;
    while (1)
    {
      if (v28 + v10 == -1)
      {

        sub_10000A0C4(a1, &unk_10026C940);
        return 0;
      }

      if (++v10 >= *(v8 + 16))
      {
        break;
      }

      v11 = v9 + 2;
      v13 = *(v9 - 1);
      v12 = *v9;
      v14 = 0xE900000000000073;
      v15 = 0x636974796C616E61;
      switch(BYTE1(v32))
      {
        case 1:
          v14 = 0xE800000000000000;
          v15 = 0x6C616E7265746E69;
          break;
        case 2:
          v14 = 0xE800000000000000;
          v15 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v15 = 0x6E656D6D6F636572;
          v14 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      v29 = v15;
      v30 = v14;

      v16._countAndFlagsBits = 46;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v18 = v29;
      v17 = v30;
      v19 = sub_100027970();
      v21 = v20;
      v29 = v18;
      v30 = v17;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      if (v13 == v29 && v12 == v30)
      {

LABEL_18:

        sub_10000A0C4(a1, &unk_10026C940);
        return 1;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = v11;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = *(v1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue);
    v26 = sub_10018AA30()[2];

    return v26 != 0;
  }

  return result;
}

uint64_t sub_1000E70F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v142 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v137 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v137);
  v136 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v139 = v12;
  v140 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v130 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v138 = &v111 - v16;
  Date.init()();
  v17 = AMSLogKey();
  if (!v17)
  {
    v17 = AMSGenerateLogCorrelationKey();
  }

  v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v18;

  if (qword_100268830 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_100011C54(0xD000000000000013, 0x80000001001F61B0);
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v125 = qword_100287850;
  v19 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = *(v20 + 80);
  v22 = (v21 + 32) & ~v21;
  v124 = *(v20 + 72);
  v120 = v21;
  v121 = v19;
  v118 = v22 + 2 * v124;
  v23 = swift_allocObject();
  v117 = xmmword_1001E5F70;
  *(v23 + 16) = xmmword_1001E5F70;
  v119 = v22;
  v116 = type metadata accessor for EngagementService();
  *&v152 = v116;
  v150 = v4;
  v146 = v4;
  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v150);
  LogInterpolation.init(stringLiteral:)();
  v26 = static os_log_type_t.debug.getter();
  sub_1000036B0(v26);

  v161 = _swiftEmptyArrayStorage;
  v160 = _swiftEmptyArrayStorage;
  v150 = a1;

  a1 = 0;
  sub_100027804(&v150);
  v4 = 0;
  v27 = v150;
  v114 = "Scheduling request";
  v115 = OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue;
  v113 = ", allowsResponse: ";
  v127 = v14 + 7;
  v128 = v140 + 16;
  v126 = v140 + 32;
  v132 = enum case for DispatchQoS.QoSClass.default(_:);
  v131 = (v9 + 104);
  v133 = (v9 + 8);
  v28 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptyArrayStorage;
  v129 = v150;
LABEL_9:
  v29 = (v4 << 6) | 0x20;
  while (1)
  {
    v30 = *(v27 + 16);
    if (v4 == v30)
    {
      break;
    }

    if (v4 >= v30)
    {
      __break(1u);
      goto LABEL_38;
    }

    v143 = v29;
    v31 = *(v27 + v29);
    v32 = *(v27 + v29 + 16);
    v33 = *(v27 + v29 + 32);
    v155[3] = *(v27 + v29 + 48);
    v155[1] = v32;
    v155[2] = v33;
    v155[0] = v31;
    v151 = *(v27 + v29);
    v152 = *(v27 + v29 + 16);
    v153 = *(v27 + v29 + 32);
    v154 = *(v27 + v29 + 48);
    v168 = v153;
    v169 = v154;
    v166 = v151;
    v167 = v152;
    v158 = v153;
    v159 = v154;
    v156 = v151;
    v157 = v152;
    v148 = v134;
    v149 = v135;

    sub_10000F4A4(v155, &v150);
    v34._countAndFlagsBits = 95;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v36 = v148;
    v35 = v149;
    v150 = v4;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v150 = v36;
    *&v151 = v35;

    v40._countAndFlagsBits = v37;
    v40._object = v39;
    String.append(_:)(v40);

    v41 = v151;
    v42 = v169;
    v145 = v4;
    v147 = v150;
    if (v169 && v169 != 1)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v170[0] = v156;
    v170[1] = v157;
    v170[2] = v158;
    v170[3] = v159;
    sub_10000F4A4(&v166, &v150);
    v44 = sub_1000E6E60(v170);
    sub_10000FF10(&v166);
    if (v44)
    {
      sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v47 = AMSError();

      v144 = Promise.__allocating_init(error:)();
      v48 = v146;
      goto LABEL_25;
    }

LABEL_19:
    *(swift_allocObject() + 16) = v117;
    *&v152 = v116;
    v150 = v146;
    v49 = v146;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v150);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v50._countAndFlagsBits = 0x6E69756575716E45;
    v50._object = 0xEA00000000002067;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
    v144 = v49;
    if (v42)
    {
      if (v42 == 1)
      {
        v51 = 0x696577746867696CLL;
        v52 = 0xEF636E7953746867;
      }

      else
      {
        v52 = 0xE400000000000000;
        v51 = 1668184435;
      }
    }

    else
    {
      v52 = 0xE700000000000000;
      v51 = 0x65756575716E65;
    }

    *&v152 = &type metadata for String;
    v150 = v51;
    *&v151 = v52;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v53._countAndFlagsBits = 0x7473657571657220;
    v53._object = 0xEF203A7070612820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
    *&v152 = &unk_1002471C0;
    v141 = BYTE1(v166);
    LOBYTE(v150) = BYTE1(v166);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v54._object = (v114 | 0x8000000000000000);
    v54._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
    *&v152 = &type metadata for Bool;
    LOBYTE(v150) = v166;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v55._countAndFlagsBits = 0x69726F697270202CLL;
    v55._object = 0xEC000000203A7974;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v56 = sub_100027970();
    *&v152 = &type metadata for String;
    v150 = v56;
    *&v151 = v57;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v58._countAndFlagsBits = 41;
    v58._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
    LogInterpolation.init(stringInterpolation:)();
    v59 = static os_log_type_t.default.getter();
    sub_1000036B0(v59);

    v48 = v146;
    v60 = *&v146[v115];
    v61 = sub_100027970();
    v63 = v62;
    v64 = swift_allocObject();
    v65 = v144;
    v66 = v147;
    *(v64 + 16) = v144;
    *(v64 + 24) = v66;
    *(v64 + 32) = v41;
    *(v64 + 40) = v42;
    v67 = v167;
    *(v64 + 48) = v166;
    *(v64 + 64) = v67;
    v68 = v169;
    *(v64 + 80) = v168;
    *(v64 + 96) = v68;
    v69 = v123;
    *(v64 + 112) = v122;
    *(v64 + 120) = v69;
    v70 = v65;
    sub_10000F4A4(&v166, &v150);

    sub_100027C4C(v141, v61, v63, v162);
    v144 = sub_1000EDBDC(v162, sub_10002D0B8, v64);
    v165 = *&v162[8];
    sub_100027DE8(&v165);
    v164 = v163;
    sub_100027DE8(&v164);

LABEL_25:
    v71 = v139;
    v72 = v140;
    v73 = v130;
    (*(v140 + 16))(v130, v138, v139);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = (v127 + v74) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    (*(v72 + 32))(v76 + v74, v73, v71);
    *(v76 + v75) = v48;
    v77 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v77 = v147;
    v77[1] = v41;
    v78 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v80 = v136;
    v79 = v137;
    (*v131)(v136, v132, v137);
    v81 = v48;
    v9 = v144;

    v82 = static OS_dispatch_queue.global(qos:)();
    (*v133)(v80, v79);
    *&v152 = v78;
    *(&v152 + 1) = &protocol witness table for OS_dispatch_queue;
    v150 = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_100060194;
    *(v83 + 24) = v76;
    v84 = objc_allocWithZone(NSLock);
    v85 = v82;

    v86 = [v84 init];
    v14 = swift_allocObject();
    *(v14 + 16) = v86;
    *(v14 + 24) = v83;
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v83;
    v88 = v86;
    swift_retain_n();
    v89 = v88;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&v150);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v161;
    v90 = v145;
    v27 = v129;
    if (v166)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v90 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v112 = v160;
      sub_10000FF10(&v166);
      goto LABEL_9;
    }

    sub_10000FF10(&v166);
    v29 = v143 + 64;
    v4 = v90 + 1;
  }

  v91 = v112;
  if (!sub_1000116AC(v112))
  {
    goto LABEL_36;
  }

  if ((v91 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:

    v147 = sub_1000E4344(v93);

    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    v97 = v134;
    v96 = v135;
    v95[2] = v94;
    v95[3] = v97;
    v95[4] = v96;
    v98 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v100 = v136;
    v99 = v137;
    (*v131)(v136, v132, v137);
    v101 = static OS_dispatch_queue.global(qos:)();
    (*v133)(v100, v99);
    *&v152 = v98;
    *(&v152 + 1) = &protocol witness table for OS_dispatch_queue;
    v150 = v101;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1000F0610;
    *(v102 + 24) = v95;
    v103 = objc_allocWithZone(NSLock);
    v104 = v101;

    v105 = [v103 init];
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v102;
    v107 = swift_allocObject();
    *(v107 + 16) = v105;
    *(v107 + 24) = v102;
    v108 = v105;
    swift_retain_n();
    v109 = v108;
    Promise.then(perform:orCatchError:on:)();

    (*(v140 + 8))(v138, v139);

    sub_100002C00(&v150);
    return v28;
  }

  else
  {
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v92 = *(v91 + 32);

      goto LABEL_36;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E808C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000E8174()
{
  sub_100004768();
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  sub_100004810();
  sub_1001AE448(0xD000000000000013, v0);
  sub_100002D8C();

  return v1();
}

void sub_1000E8214(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = a2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for LogInterpolation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v54 = v6;
    memset(v60, 0, sizeof(v60));
    v13 = sub_1000E6E60(v60);
    v14 = &v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken];
    v15 = *&v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken + 8];
    if (v15)
    {
      if (*v14 == v55 && v15 == a3)
      {
        if (v13)
        {
          goto LABEL_8;
        }
      }

      else if (v13 & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        goto LABEL_8;
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v26 = *(v7 + 72);
      v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1001E5F60;
      v55 = v27;
      v59 = type metadata accessor for EngagementService();
      v56 = v12;
      v12 = v12;
      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v56);
      v59 = &type metadata for String;
      v56 = 0xD000000000000018;
      v57 = 0x80000001001F7170;
      static LogInterpolation.safe(_:)();
      sub_10000A0C4(&v56, &qword_10026D350);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686F0 != -1)
      {
        swift_once();
      }

      v35 = qword_100287850;
      v36 = static os_log_type_t.debug.getter();
      v37 = *(v35 + 16);
      if (os_log_type_enabled(v37, v36))
      {
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v56 = 0xD000000000000015;
        v57 = 0x80000001001F71B0;
        if (v14[1])
        {
          v38 = *v14;
          v39 = v14[1];
        }

        else
        {
          v39 = 0xE400000000000000;
          v38 = 1701736302;
        }

        v40._countAndFlagsBits = v38;
        v40._object = v39;
        String.append(_:)(v40);

        v41._countAndFlagsBits = 0xD000000000000013;
        v41._object = 0x80000001001F71D0;
        String.append(_:)(v41);
        v42._countAndFlagsBits = 0x65736C6166;
        v42._object = 0xE500000000000000;
        String.append(_:)(v42);
        v43._countAndFlagsBits = 41;
        v43._object = 0xE100000000000000;
        String.append(_:)(v43);
        v59 = &type metadata for String;
        static LogInterpolation.safe(_:)();
        sub_10000A0C4(&v56, &qword_10026D350);
        v44 = *(v28 + 16);
        if (v44 >= *(v28 + 24) >> 1)
        {
          sub_1000D5C7C();
          v28 = v52;
        }

        *(v28 + 16) = v44 + 1;
        (*(v7 + 32))(v28 + v55 + v44 * v26, v10, v54);
        v37 = *(v35 + 16);
      }

      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v45))
      {
        v46 = static os_log_type_t.default.getter();

        sub_1000036B0(v46);
      }

      v47 = &v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
      v48 = *&v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
      v49 = *&v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 8];
      v50 = *&v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 16];
      v51 = *&v12[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 24];
      *v47 = 0u;
      *(v47 + 1) = 0u;
      sub_10002DA34(v48, v49);
      goto LABEL_32;
    }

LABEL_8:
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v54 = qword_100287850;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = *(v7 + 72);
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E6580;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    v59 = &type metadata for String;
    v56 = 0xD000000000000018;
    v57 = 0x80000001001F7170;
    static LogInterpolation.safe(_:)();
    sub_10000A0C4(&v56, &qword_10026D350);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0xD000000000000015;
    v19._object = 0x80000001001F71B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v20 = v14[1];
    if (v20)
    {
      v21 = *v14;
      v22 = &type metadata for String;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v58 = 0;
    }

    v56 = v21;
    v57 = v20;
    v59 = v22;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v56, &qword_10026D350);
    v31._countAndFlagsBits = 0xD000000000000013;
    v31._object = 0x80000001001F71D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    v59 = &type metadata for Bool;
    LOBYTE(v56) = v13 & 1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v56, &qword_10026D350);
    v32._countAndFlagsBits = 0x3A6E656B6F74202CLL;
    v32._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v59 = &type metadata for String;
    v56 = v55;
    v57 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v56, &qword_10026D350);
    v33._countAndFlagsBits = 41;
    v33._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    LogInterpolation.init(stringInterpolation:)();
    v34 = static os_log_type_t.debug.getter();
    sub_1000036B0(v34);
LABEL_32:

    return;
  }

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v23 = *(v7 + 72);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v25 = static os_log_type_t.default.getter();
  sub_1000036B0(v25);
}

uint64_t sub_1000E8A14()
{
  v1 = [objc_opt_self() buildVersion];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v48 = v0;
  v7 = &v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
  do
  {
    v8 = *(&off_100244588 + v5 + 32);
    v9 = *sub_100003CA8(v7, *(v7 + 3));
    sub_10003B834(v50);
    if (v50[0])
    {
      v11 = v50[4];
      v10 = v50[5];
      v12 = v50[6];
      v51 = v50[0];
      sub_10000A0C4(&v51, &qword_10026A6F8);
      v52 = v12;
      sub_10000A0C4(&v52, &qword_10026A758);
      if (v10)
      {
        if (v11 == v2 && v10 == v4)
        {

          goto LABEL_15;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_15;
        }
      }
    }

    v49[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v6[2];
      v16 = sub_100004C7C();
      sub_10009B9B4(v16, v17, v18);
      v6 = v49[0];
    }

    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      v21 = sub_10000B380(v19);
      sub_10009B9B4(v21, v22, v23);
      v6 = v49[0];
    }

    v6[2] = v20 + 1;
    *(v6 + v20 + 32) = v8;
LABEL_15:
    ++v5;
  }

  while (v5 != 4);

  if (v6[2])
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v24 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v24);
    v26 = *(v25 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v49[3] = type metadata accessor for EngagementService();
    v49[0] = v48;
    v48;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v49);
    LogInterpolation.init(stringLiteral:)();
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    v30 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    v31 = v30;
    v32 = v6[2];
    if (v32)
    {
      v47 = v30;
      v49[0] = _swiftEmptyArrayStorage;
      sub_100027C2C(0, v32, 0);
      v33 = 32;
      v34 = v49[0];
      sub_10001117C();
      sub_1000F129C();
      sub_10005EE9C();
      do
      {
        v38 = 0xE900000000000073;
        v39 = 0x636974796C616E61;
        switch(*(v6 + v33))
        {
          case 1:
            v38 = 0xE800000000000000;
            v39 = v35;
            break;
          case 2:
            v38 = 0xE800000000000000;
            v39 = v36;
            break;
          case 3:
            v39 = 0x6E656D6D6F636572;
            v38 = v37;
            break;
          default:
            break;
        }

        v49[0] = v34;
        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          v43 = sub_10000B380(v40);
          sub_100027C2C(v43, v44, v45);
          sub_10005EE9C();
          sub_1000F129C();
          sub_10001117C();
          v34 = v49[0];
        }

        v34[2] = v41 + 1;
        v42 = &v34[2 * v41];
        v42[4] = v39;
        v42[5] = v38;
        ++v33;
        --v32;
      }

      while (v32);

      v31 = v47;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    sub_1000E2000(v34, v31);
    sub_1000627E8();
  }
}

uint64_t sub_1000E8E80(uint64_t a1)
{
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000C79C();
  v7 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v1, 1, 1, v7);
  sub_100007A3C();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;

  sub_1000E349C();
}

uint64_t sub_1000E8F7C()
{
  sub_100004768();
  if (qword_100268630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000E9044;
  v2 = *(v0 + 56);

  return sub_1000C27B8(v2);
}

uint64_t sub_1000E9044()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  v13 = v12[9];
  v14 = [objc_opt_self() ams_sharedAccountStore];
  v15 = [v14 ams_activeiTunesAccount];

  v16 = type metadata accessor for SystemEngagementPerformer();
  v17 = swift_allocObject();
  v12[5] = v16;
  v12[6] = &off_1002529B8;
  v12[2] = v17;
  type metadata accessor for SystemEngagementAction();
  v18 = swift_allocObject();
  v19 = sub_100046CB8((v12 + 2), v16);
  v20 = *(v16 - 8);
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  (*(v20 + 16))(v22, v19, v16);
  v23 = *v22;
  v18[6] = v16;
  v18[7] = &off_1002529B8;
  v18[2] = v15;
  v18[3] = v23;
  sub_100002C00(v12 + 2);

  sub_1001AC06C(v13);

  sub_100002D8C();
  sub_10000481C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

id sub_1000E930C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E9418()
{
  sub_100004768();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = type metadata accessor for ContentInfo();
  v0[8] = v7;
  sub_100002CFC(v7);
  v0[9] = v8;
  v10 = *(v9 + 64) + 15;
  v0[10] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000E94D0()
{
  v1 = v0[2];
  v2 = v0[3];

  v67._countAndFlagsBits = sub_100005B9C();
  v3 = sub_1000116D0(v67);
  if (v3 == 4)
  {
    v4 = v0[10];
    v5 = String._bridgeToObjectiveC()();
    sub_100004810();
    v6 = String._bridgeToObjectiveC()();
    sub_100015AEC();
    AMSError();

    swift_willThrow();

    sub_100002D8C();
    sub_100012AFC();

    __asm { BRAA            X1, X16 }
  }

  v9 = v3;
  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  type metadata accessor for ContentManager();
  *(swift_allocObject() + 16) = v9;
  v14 = sub_100006378();
  v16 = sub_1000B7DD0(v14, v15, v11, v10, 4);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_19:

    v57 = v0[10];

    v58 = v0[1];
    sub_100012AFC();

    __asm { BRAA            X2, X16 }
  }

  v19 = v0[8];
  v18 = v0[9];
  v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = _swiftEmptyDictionarySingleton;
  v62 = *(v18 + 72);
  v63 = v19;
  while (1)
  {
    v64 = v20;
    v65 = v17;
    v22 = v0[10];
    v23 = v0[4];
    v24 = v0[5];
    sub_1000B2AD0(v20, v22);
    v25 = [objc_allocWithZone(AMSContentInfo) init];
    sub_100005B9C();
    v26 = String._bridgeToObjectiveC()();
    sub_100018028(v26, "setCacheKey:");

    v27 = v22 + v19[7];
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100018028(isa, "setCreated:");

    v29 = v22 + v19[8];
    v30 = Date._bridgeToObjectiveC()().super.isa;
    sub_100018028(v30, "setExpires:");

    v32 = (v22 + v19[9]);
    if (v32[1])
    {
      v33 = *v32;
      v31 = String._bridgeToObjectiveC()();
      v34 = v31;
    }

    else
    {
      v34 = 0;
    }

    v35 = v0[10];
    sub_100018028(v31, "setPath:");

    v36 = (v35 + v19[12]);
    v37 = *v36;
    v38 = v36[1];
    v39 = String._bridgeToObjectiveC()();
    sub_100018028(v39, "setVersion:");

    v40 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v21;
    result = sub_100012A94();
    v44 = v21[2];
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v47 = result;
    v48 = v43;
    sub_10007B9A4(&qword_10026C938, &qword_1001EBE60);
    result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46);
    v21 = v66;
    if (result)
    {
      result = sub_100012A94();
      if ((v48 & 1) != (v49 & 1))
      {
        sub_100012AFC();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v47 = result;
    }

    if (v48)
    {
      v50 = v66[7];
      v51 = *(v50 + 8 * v47);
      *(v50 + 8 * v47) = v40;

      v40 = v51;
    }

    else
    {
      v66[(v47 >> 6) + 8] |= 1 << v47;
      v52 = (v66[6] + 16 * v47);
      *v52 = v37;
      v52[1] = v38;
      *(v66[7] + 8 * v47) = v40;
      v53 = v66[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_26;
      }

      v66[2] = v55;
    }

    v56 = v0[10];

    sub_1000A0914(v56);
    v19 = v63;
    v20 = v64 + v62;
    v17 = v65 - 1;
    if (v65 == 1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000E99A8(int a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v9;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[6] = v11;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1000E9AD4;

  return sub_1000E9418();
}

uint64_t sub_1000E9AD4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[6];

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_100011624();

    isa = 0;
    v13 = v1;
  }

  else
  {
    sub_100002BC0(0, &qword_10026C930, AMSContentInfo_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v1 = 0;
    v13 = isa;
  }

  v14 = v4[3];
  (v14)[2](v14, isa, v1);

  _Block_release(v14);
  v15 = v10[1];

  return v15();
}

uint64_t sub_1000E9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  v17 = v13[33];

  v19 = v13[34];
  if (v19 == v13[32])
  {
    sub_10001D730();
    v20 = *(v12 + 16);

    v21 = Promise.isResolved.getter();

    if (v21)
    {
LABEL_16:
      v45 = v13[31];

      sub_100002D8C();
      sub_10000481C();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    if (qword_1002686F0 == -1)
    {
LABEL_4:
      sub_10000F3F0();
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v22 = sub_10000C3AC();
      sub_100002CFC(v22);
      v24 = *(v23 + 72);
      sub_1000056F8();
      v25 = sub_100015C9C();
      v13[5] = sub_1000F12D0(v25, xmmword_1001E5F70);
      v13[2] = v16;
      v26 = v16;
      sub_100015A84();
      sub_100002C00(v13 + 2);
      sub_10000DD34();
      v27 = static os_log_type_t.default.getter();
      sub_1000036B0(v27);

      sub_10000602C();
      v28 = *(v14 + 16);
      v29 = v13[26];
      if (v15)
      {
        v30 = *(v14 + 16);
      }

      else
      {
        sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
        v44 = objc_allocWithZone(AMSEngagementEnqueueResult);

        v13[23] = [v44 init];
        Promise.__allocating_init(value:)();
      }

      sub_100019C18();
      sub_100061EDC();

      goto LABEL_16;
    }

LABEL_20:
    sub_100006C90();
    swift_once();
    goto LABEL_4;
  }

  v31 = v13[25];
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = v13[34];
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v19 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v33 = *(v31 + 8 * v19 + 32);
  }

  v13[33] = v33;
  v13[34] = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_1000058A4(&unk_1001EBD18);
  v54 = v34;
  v35 = swift_task_alloc();
  v13[35] = v35;
  *v35 = v13;
  sub_100007FAC();
  sub_10000481C();

  return v36(v36, v37, v38, v39, v40, v41, v42, v43, v54, a10, a11, a12);
}

uint64_t sub_1000E9FD4()
{
  sub_100002D8C();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1000EA00C()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  sub_100061DE4(v2);
  sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  sub_10001CD6C();
  *v0 = v3;
  sub_100017EE4();
  sub_10000522C();
  v4 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
}

uint64_t sub_1000EA0D0()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_1000EA180;
  v4 = *(v0 + 24);
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5);
}

uint64_t sub_1000EA180()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 16);
    sub_100002D8C();

    return v13();
  }
}

uint64_t sub_1000EA2AC()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_1000615C0;
  v4 = *(v0 + 24);
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5);
}

uint64_t sub_1000EA370()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  sub_100061DE4(v2);
  sub_10007B9A4(&qword_10026C8C8, &qword_1001EBD88);
  sub_10001CD6C();
  *v0 = v3;
  sub_100017EE4();
  sub_10000522C();
  v4 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
}

uint64_t sub_1000EA468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = *(type metadata accessor for LogInterpolation() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v23[3] = type metadata accessor for EngagementService();
  v23[0] = a2;
  v15 = a2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v23);
  LogInterpolation.init(stringLiteral:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = sub_1000EA628(a6, a7, a8, a9, (a10 + 16));
  swift_beginAccess();
  v18 = *(a5 + 16);
  *(a5 + 16) = v17;
}

uint64_t sub_1000EA628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    swift_beginAccess();
    v6 = *a5;

    v7 = sub_1000288B0(0x2065756575716E45, 0xEF74756F656D6974, &unk_10024A618, &unk_10024A640, sub_1000F117C, &unk_10024A658);
  }

  else
  {
    sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
    [objc_allocWithZone(AMSEngagementEnqueueResult) init];
    return Promise.__allocating_init(value:)();
  }

  return v7;
}

uint64_t sub_1000EA730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  swift_errorRetain();
  [a2 lock];
  sub_1000EA7A8(&v8, (a3 + 16), (a4 + 16));
  [a2 unlock];
  return swift_willThrow();
}

uint64_t sub_1000EA7A8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  swift_errorRetain();
  v7 = _convertErrorToNSError(_:)();

  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v9 = *a2;
  *(inited + 96) = sub_10007B9A4(&qword_10026C890, &unk_1001EBCF8);
  *(inited + 72) = v9;

  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v11 = *a3;
  v10 = a3[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v11;
  *(inited + 152) = v10;

  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v7 ams_errorByAddingUserInfo:{isa, 0x74616E6974736564, 0xEB000000006E6F69}];

  v14 = *a1;
  *a1 = v13;
}

uint64_t sub_1000EA994()
{

  sub_1000ED448(sub_10006270C, v0);

  sub_1000ED294();
}

uint64_t sub_1000EAA68()
{
  sub_10001B228();
  sub_1000ED448(j___s9JetEngine7PromiseC7resolveyyxF, v0);

  sub_1000ED294();
}

uint64_t sub_1000EAB30()
{
  sub_10001B228();
  sub_1000ED448(sub_1000F0AD4, v0);

  sub_1000ED294();
}

uint64_t sub_1000EABF8()
{
  sub_10001B228();
  sub_1000ED448(sub_10006270C, v0);

  sub_1000ED294();
}

uint64_t sub_1000EACC0()
{
  sub_10001B228();
  sub_1000ED448(sub_100062700, v0);

  sub_1000ED294();
}

uint64_t sub_1000EAD88()
{
  sub_10001B228();
  sub_1000ED448(sub_100062700, v0);

  sub_1000ED294();
}

uint64_t sub_1000EAE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10009B7C0(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E5F60;
      *(inited + 32) = 0x656372756F73;
      *(inited + 40) = 0xE600000000000000;
      strcpy((inited + 48), "amsengagementd");
      *(inited + 63) = -18;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x707954746E657665;
      *(inited + 88) = 0xE900000000000065;
      *(inited + 96) = 0xD000000000000013;
      *(inited + 104) = 0x80000001001F7050;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x696669746E656469;
      *(inited + 168) = &type metadata for String;
      *(inited + 136) = 0xEA00000000007265;
      *(inited + 144) = v5;
      *(inited + 152) = v4;

      v7 = Dictionary.init(dictionaryLiteral:)();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_100005C40(v8);
        sub_10009B7C0(v10, v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v7;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  v11 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  sub_100007A3C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E8AB0;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  sub_1000058B4();
  *(v12 + 32) = sub_100092378();
  sub_1000F43B4(v12, v11);
  v13 = sub_10012E0C0(_swiftEmptyArrayStorage);

  sub_1000F4334(v13, v11);
  if (qword_100268670 != -1)
  {
    sub_100003198();
  }

  sub_100004454();
}

void sub_1000EB164(void *a1, uint64_t a2, char *a3)
{
  sub_10000C7B8(a1);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  if ([objc_opt_self() isBuddyRunning])
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v20 = AMSError();

    Promise.reject(_:)();
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = Dictionary.init(dictionaryLiteral:)();
    v10 = [objc_allocWithZone(NSLock) init];
    v11 = *&a3[OBJC_IVAR____TtC14amsengagementd17EngagementService_syncCoordinator];
    v12 = sub_1000F12E8() & 1;
    sub_1000E5458();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = v10;
    *(v15 + 32) = v9;
    *(v15 + 40) = v12;
    *(v15 + 48) = a1;
    v16 = a3;
    v20 = v10;

    v17 = a1;
    sub_1000E70F4(v14, sub_1000F04FC, v15);
    v19 = v18;

    if (!v19)
    {
      v21[3] = type metadata accessor for SyncTaskScheduler();
      v21[4] = &protocol witness table for SyncTaskScheduler;
      sub_100017E64(v21);
      SyncTaskScheduler.init()();
      sub_100002BC0(0, &qword_10026C868, AMSEngagementSyncResult_ptr);
      Promise.map<A>(on:_:)();
      sub_100002C00(v21);
      sub_1000EA994();

      return;
    }

    sub_1000EA994();
  }
}

id sub_1000EC148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v90 = a8;
  v85 = a7;
  v89 = a6;
  v86 = type metadata accessor for OSSignpostError();
  v88 = *(v86 - 8);
  v15 = *(v88 + 64);
  v16 = __chkstk_darwin(v86);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v84 - v19;
  *&v94 = type metadata accessor for OSSignpostID();
  v93 = *(v94 - 8);
  v20 = *(v93 + 64);
  v21 = __chkstk_darwin(v94);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v84 - v24;
  v92 = type metadata accessor for OSSignposter();
  v91 = *(v92 - 8);
  v26 = *(v91 + 64);
  v27 = __chkstk_darwin(v92);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v84 - v30;
  [a3 lock];
  swift_beginAccess();
  v95 = a4;
  sub_10000E42C(0xD000000000000018, 0x80000001001F6DD0, a5, v89);
  swift_endAccess();
  v96 = a3;
  [a3 unlock];
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v32 = a9;
    v33 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v34 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v35 = static os_signpost_type_t.end.getter();
    v36 = OS_os_log.signpostsEnabled.getter();
    v37 = v87;
    if (v36)
    {
      v89 = a9;

      checkForErrorAndConsumeState(state:)();

      v38 = v88;
      v39 = v86;
      if ((*(v88 + 88))(v37, v86) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(v38 + 8))(v37, v39);
        v40 = "Failed";
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v52, "Sync", v40, v51, 2u);

      v32 = v89;
    }

    (*(v93 + 8))(v25, v94);
    (*(v91 + 8))(v31, v92);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = objc_allocWithZone(AMSMetricsLoggingEvent);
    swift_errorRetain();
    v54 = sub_1000EF494();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v55 = String._bridgeToObjectiveC()();

    [v54 setErrorMessage:v55];

    v56 = v96;
    [v96 lock];
    v57 = v95;
    swift_beginAccess();
    v58 = *(v57 + 16);

    sub_1000E3C88(v59);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 setBreadcrumbs:isa];

    [v56 unlock];
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v61 = swift_allocObject();
    v94 = xmmword_1001E61B0;
    *(v61 + 16) = xmmword_1001E61B0;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 32) = v32;
    *(v61 + 40) = a10;

    v62 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setEventDestinations:v62];

    v63 = objc_opt_self();
    v64 = sub_1000617E0(v63, &selRef_jsVersionMap);
    if (!v64)
    {
      v64 = Dictionary.init(dictionaryLiteral:)();
    }

    v65 = v64;
    v66 = sub_10003A3C0(v32, a10, v64);
    if (v67)
    {
      v68 = v66;
      v69 = v67;

      sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
      inited = swift_initStackObject();
      *(inited + 16) = v94;
      aBlock = v32;
      v98 = a10;

      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v68;
      *(inited + 80) = v69;
      Dictionary.init(dictionaryLiteral:)();
    }

    else
    {
      sub_1000E39C4(v65);
    }

    v71 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 setJsVersions:v71];

    v72 = objc_opt_self();
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v73 = sub_10002411C();
    v74 = [v72 shouldSampleErrorsWithBag:v73];

    v75 = swift_allocObject();
    *(v75 + 16) = v54;
    v101 = sub_1000F075C;
    v102 = v75;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_100005E50;
    v100 = &unk_10024A1F8;
    v76 = _Block_copy(&aBlock);
    v77 = v54;

    [v74 addSuccessBlock:v76];
    _Block_release(v76);
  }

  else
  {
    v41 = v18;
    v42 = *(v85 + OBJC_IVAR____TtC14amsengagementd17EngagementService_syncCoordinator);
    sub_1000F1BB0(a11);
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v43 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v44 = OSSignposter.logHandle.getter();
    v45 = v23;
    OSSignpostIntervalState.signpostID.getter();
    v46 = static os_signpost_type_t.end.getter();
    v47 = OS_os_log.signpostsEnabled.getter();
    v48 = v88;
    if (v47)
    {

      checkForErrorAndConsumeState(state:)();

      v49 = v86;
      if ((*(v48 + 88))(v41, v86) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v48 + 8))(v41, v49);
        v50 = "Succeeded";
      }

      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v46, v79, "Sync", v50, v78, 2u);
    }

    (*(v93 + 8))(v45, v94);
    (*(v91 + 8))(v29, v92);
    sub_100185EF0(*(a11 + 1));
    v57 = v95;
  }

  v80 = v96;
  [v96 lock];
  v81 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  v82 = *(v57 + 16);
  *(v57 + 16) = v81;

  return [v80 unlock];
}

void sub_1000ECCC0(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v3 = sub_10002411C();
  v4 = [v2 internalInstanceUsingBag:v3];

  [v4 enqueueEvent:a1];
}

id sub_1000ECD98@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000116AC(*a1);
  if (!result)
  {
    result = [objc_allocWithZone(AMSEngagementSyncResult) init];
    goto LABEL_6;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ECE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002DFC();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = sub_100002CC4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_10001C064();
  sub_1000627E8();
  sub_100002FB8();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v11 = sub_100008758();
  v12(v11);

  v13 = static OS_dispatch_queue.global(qos:)();
  v14 = sub_1000F11DC();
  v15(v14);
  v25[3] = v10;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v13;
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100062B28;
  *(v16 + 24) = v9;
  v17 = objc_allocWithZone(NSLock);
  v18 = v13;
  sub_100011624();

  v19 = [v17 init];
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  sub_100002FB8();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v16;
  v22 = v19;
  swift_retain_n();
  v23 = v22;
  sub_1000F11F8();

  return sub_100002C00(v25);
}

void sub_1000ED094()
{
  if (qword_1002687B0 != -1)
  {
    sub_1000293DC();
  }

  sub_10016E024();
}

uint64_t sub_1000ED16C(char a1, uint64_t (*a2)(void))
{
  if (qword_1002687B0 != -1)
  {
    sub_1000293DC();
  }

  return a2(a1 & 1);
}

void sub_1000ED294()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  sub_100002FB8();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  v14 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v4);

  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v12, v4);
  v16[3] = v14;
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v15;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v16);
  sub_100005F14();
}

uint64_t sub_1000ED448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = sub_100002CC4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_10001C064();
  sub_100002FB8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v10 = sub_100008758();
  v11(v10);

  v12 = static OS_dispatch_queue.global(qos:)();
  v13 = sub_1000F11DC();
  v14(v13);
  v16[3] = v9;
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v12;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v16);
}

void sub_1000ED5B8()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100002CC4(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  sub_100012F6C();
  v30 = type metadata accessor for DispatchQoS();
  v12 = sub_100002CC4(v30);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  v17 = Promise.__allocating_init()();
  v29 = *(v0 + 72);
  v18 = *(v7 + 8);
  v33 = *(v7 + 24);
  v34 = v18;
  v19 = swift_allocObject();
  v20 = *(v7 + 16);
  *(v19 + 24) = *v7;
  *(v19 + 16) = v0;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(v7 + 32);
  *(v19 + 64) = v5;
  *(v19 + 72) = v3;
  *(v19 + 80) = v17;
  v32[4] = sub_1000F0B78;
  v32[5] = v19;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  sub_100007A28();
  v32[2] = v21;
  v32[3] = &unk_10024AE28;
  v22 = _Block_copy(v32);

  sub_100027D8C(&v34, v31);
  sub_100027D8C(&v33, v31);

  static DispatchQoS.unspecified.getter();
  v31[0] = _swiftEmptyArrayStorage;
  sub_10000B890();
  sub_100005DC0(v23, v24);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v25, v26);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  v27 = sub_10000A19C();
  v28(v27);
  (*(v14 + 8))(v1, v30);

  sub_100005F14();
}

uint64_t sub_1000ED88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v22);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v15 = Promise.__allocating_init()();
  v21[1] = *(v3 + 72);
  v16 = *(a1 + 8);
  v26 = *(a1 + 24);
  v27 = v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = v3;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = v15;
  aBlock[4] = sub_1000290B4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024A928;
  v19 = _Block_copy(aBlock);

  sub_100027D8C(&v27, v24);
  sub_100027D8C(&v26, v24);

  static DispatchQoS.unspecified.getter();
  v24[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_1000140D0(&qword_10026CD50, &unk_100270490);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);

  return v15;
}

uint64_t sub_1000EDBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v22);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
  v15 = Promise.__allocating_init()();
  v21[1] = *(v3 + 72);
  v16 = *(a1 + 8);
  v26 = *(a1 + 24);
  v27 = v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = v3;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = v15;
  aBlock[4] = sub_10004EE74;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024A0B8;
  v19 = _Block_copy(aBlock);

  sub_100027D8C(&v27, v24);
  sub_100027D8C(&v26, v24);

  static DispatchQoS.unspecified.getter();
  v24[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_1000140D0(&qword_10026CD50, &unk_100270490);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);

  return v15;
}

uint64_t sub_1000EDF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_100268710 != -1)
  {
    swift_once();
  }

  v6 = qword_100287870;

  sub_1000600AC(v6, a2);
  v7 = Promise.resolve(_:)();
  return a4(v7);
}

uint64_t sub_1000EDFD4()
{
  sub_1000F1284();
  if (qword_100268710 != -1)
  {
    sub_1000063EC();
  }

  v1 = sub_100006378();
  sub_10014A3DC(v1, v2);
  v3 = Promise.reject(_:)();
  return v0(v3);
}

void sub_1000EE080()
{
  sub_1000067E4();
  v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC();
  }
}

uint64_t sub_1000EE0F4()
{
  sub_1000067E4();
  v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC();
    return sub_100002C00(v3);
  }
}

id sub_1000EE194(void *a1, uint64_t a2)
{
  [a1 lock];
  sub_10000E6D0();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_10004EEF0();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = [a1 unlock];
  if (v4)
  {
    v9[0] = 0;

    v4(v9, 0);
    v7 = sub_100005B9C();
    sub_100014A10(v7);
    v8 = sub_100005B9C();
    return sub_100014A10(v8);
  }

  return result;
}

void sub_1000EE22C()
{
  sub_10000C530();
  v5 = v4;
  [v3 lock];
  sub_10000E6D0();
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_10004EEF0();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  [v3 unlock];
  if (v7)
  {
    v12 = v5;
    v8 = sub_10000A144();
    v1(v8);
    v9 = v5;
    v7(&v12, 0);
    v10 = sub_10000A144();
    v0(v10);
    v11 = sub_10000A144();
    v0(v11);
  }
}

id sub_1000EE2F0()
{
  sub_10000C530();
  v5 = v4;
  [v3 lock];
  sub_10000E6D0();
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_10004EEF0();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = [v3 unlock];
  if (v7)
  {
    v12[0] = v5;
    v9 = sub_100008BF8();
    v1(v9);

    v7(v12, 0);
    v10 = sub_100008BF8();
    v0(v10);
    v11 = sub_100008BF8();
    v0(v11);
  }

  return result;
}

id sub_1000EE3B8()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  sub_10000602C();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_10000DDEC();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v4)
  {
    sub_1000F0DD0(v3, v9);

    v4(v9, 0);
    v7 = sub_100005B9C();
    sub_100014A10(v7);
    v8 = sub_100005B9C();
    sub_100014A10(v8);
    return sub_10000A0C4(v9, &unk_10026C928);
  }

  return result;
}

id sub_1000EE494()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  sub_10000E6D0();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_10004EEF0();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v5)
  {
    v9[0] = 1;

    v5(v9, v3);
    v7 = sub_10000A144();
    sub_100014A10(v7);
    v8 = sub_10000A144();
    return sub_100014A10(v8);
  }

  return result;
}

id sub_1000EE53C(uint64_t a1, id a2, uint64_t a3, void (*a4)(uint64_t))
{
  [a2 lock];
  sub_10000E6D0();
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  sub_10004EEF0();
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = [a2 unlock];
  if (v8)
  {
    v13[0] = 0;

    v8(v13, a1);
    v11 = sub_100007F3C();
    a4(v11);
    v12 = sub_100007F3C();
    return (a4)(v12);
  }

  return result;
}

id sub_1000EE5F4()
{
  sub_10000A920();
  v3 = v2;
  [v1 lock];
  sub_10000602C();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_10000DDEC();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [v1 unlock];
  if (v5)
  {
    memset(v9, 0, 32);

    v5(v9, v3);
    v7 = sub_10000A144();
    sub_100014A10(v7);
    v8 = sub_10000A144();
    sub_100014A10(v8);
    return sub_10000A0C4(v9, &unk_10026C928);
  }

  return result;
}

void sub_1000EE6DC()
{
  sub_1000F1290();
  sub_10000602C();
  if (swift_weakLoadStrong())
  {
    String._bridgeToObjectiveC()();
    sub_100011624();
    v1 = String._bridgeToObjectiveC()();
    v2 = AMSError();

    Promise.invalidate(_:)();
  }
}

uint64_t sub_1000EE79C()
{
  swift_getErrorValue();
  sub_1000F4C40(v1);
  return swift_willThrow();
}

uint64_t sub_1000EE7E8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C908, &qword_1001EBDE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_1000EEAD8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8E8, &qword_1001EBDB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_1000EEDC8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8F8, &qword_1001EBDD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_1000EF0B8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8D0, &qword_1001EBD90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_1000EF440()
{
  sub_1000F1284();
  swift_errorRetain();
  v0 = sub_100008FE8();
  sub_10007B9A4(v0, v1);
  return CheckedContinuation.resume(throwing:)();
}

id sub_1000EF494()
{
  sub_10000A920();
  v2 = String._bridgeToObjectiveC()();

  String._bridgeToObjectiveC()();
  sub_100011624();

  v3 = _convertErrorToNSError(_:)();
  v4 = [v0 initWithSubsystem:v2 category:v1 error:v3];

  return v4;
}

unint64_t sub_1000EF534(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000EF5E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000EF6D4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_1000EF71C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007B9A4(&qword_10026C880, &qword_1001EBCE0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_1000EF810(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = _swiftEmptyArrayStorage;
LABEL_105:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v141;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v149 = i;
      v127 = (i + 16);
      for (i = *(i + 16); i >= 2; *v127 = i)
      {
        if (!*a3)
        {
          goto LABEL_142;
        }

        v128 = (v149 + 16 * i);
        v129 = *v128;
        v130 = &v127[2 * i];
        v131 = v130[1];
        sub_1000EFFB4((*a3 + (*v128 << 6)), (*a3 + (*v130 << 6)), (*a3 + (v131 << 6)), v6);
        if (v4)
        {
          break;
        }

        if (v131 < v129)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v127)
        {
          goto LABEL_131;
        }

        *v128 = v129;
        v128[1] = v131;
        v132 = *v127 - i;
        if (*v127 < i)
        {
          goto LABEL_132;
        }

        i = *v127 - 1;
        memmove(v130, v130 + 2, 16 * v132);
      }

LABEL_103:

      return;
    }

LABEL_139:
    i = sub_1000F02B4(i);
    goto LABEL_107;
  }

  v6 = 0;
  i = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = (*a3 + (v6 << 6));
      v11 = v10[3];
      v13 = *v10;
      v12 = v10[1];
      v148[2] = v10[2];
      v148[3] = v11;
      v148[0] = v13;
      v148[1] = v12;
      v14 = (v9 + (v8 << 6));
      v15 = v14[3];
      v17 = *v14;
      v16 = v14[1];
      v147[2] = v14[2];
      v147[3] = v15;
      v147[0] = v17;
      v147[1] = v16;
      sub_10000F4A4(v148, v142);
      sub_10000F4A4(v147, v142);
      v18 = sub_100027970();
      v20 = v19;
      v21 = sub_100027970();
      v4 = v22;
      v23 = v18 == v21 && v20 == v22;
      v149 = i;
      if (v23)
      {
        v137 = 0;
      }

      else
      {
        v137 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000FF10(v147);
      sub_10000FF10(v148);
      v24 = v8 + 2;
      v134 = v8;
      v25 = v8 << 6;
      v26 = v14 + 8;
      v27 = (v8 << 6) + 64;
      v28 = v5;
      do
      {
        i = v24;
        v29 = v6;
        v30 = v27;
        if (v24 >= v28)
        {
          break;
        }

        v31 = *v26;
        v32 = v26[1];
        v33 = v26[3];
        v146[2] = v26[2];
        v146[3] = v33;
        v146[0] = v31;
        v146[1] = v32;
        v34 = *(v26 - 4);
        v35 = *(v26 - 3);
        v36 = *(v26 - 1);
        v145[2] = *(v26 - 2);
        v145[3] = v36;
        v145[0] = v34;
        v145[1] = v35;
        sub_10000F4A4(v146, v142);
        sub_10000F4A4(v145, v142);
        v37 = sub_100027970();
        v39 = v38;
        v40 = sub_100027970();
        v4 = v41;
        v42 = v37 == v40 && v39 == v41;
        v43 = v42 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000FF10(v145);
        sub_10000FF10(v146);
        v44 = v137 ^ v43;
        v24 = i + 1;
        v26 += 4;
        v6 = v29 + 1;
        v27 = v30 + 64;
      }

      while ((v44 & 1) == 0);
      if (v137)
      {
        v45 = v134;
        if (i < v134)
        {
          goto LABEL_136;
        }

        if (v134 >= i)
        {
          v6 = i;
          i = v149;
          v8 = v134;
          goto LABEL_28;
        }

        do
        {
          if (v45 != v29)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v47 = (v46 + v25);
            v48 = (v46 + v30);
            v50 = v47[2];
            v49 = v47[3];
            v52 = *v47;
            v51 = v47[1];
            v53 = v48[3];
            v55 = *v48;
            v54 = v48[1];
            v47[2] = v48[2];
            v47[3] = v53;
            *v47 = v55;
            v47[1] = v54;
            *v48 = v52;
            v48[1] = v51;
            v48[2] = v50;
            v48[3] = v49;
          }

          ++v45;
          v30 -= 64;
          v25 += 64;
        }

        while (v45 < v29--);
      }

      v6 = i;
      i = v149;
      v8 = v134;
    }

LABEL_28:
    v57 = a3[1];
    if (v6 < v57)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v6 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = *(i + 16);
      sub_1000D4E00();
      i = v125;
    }

    v85 = *(i + 16);
    v86 = v85 + 1;
    if (v85 >= *(i + 24) >> 1)
    {
      sub_1000D4E00();
      i = v126;
    }

    *(i + 16) = v86;
    v87 = i + 32;
    v88 = (i + 32 + 16 * v85);
    *v88 = v8;
    v88[1] = v6;
    v139 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v85)
    {
      v149 = i;
      while (1)
      {
        v89 = v86 - 1;
        v90 = (v87 + 16 * (v86 - 1));
        v91 = (i + 16 * v86);
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(i + 32);
          v93 = *(i + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_72:
          if (v95)
          {
            goto LABEL_121;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_124;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_129;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v86 < 2)
        {
          goto LABEL_123;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_87:
        if (v110)
        {
          goto LABEL_126;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_128;
        }

        if (v117 < v109)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v89 - 1 >= v86)
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v121 = (v87 + 16 * (v89 - 1));
        i = *v121;
        v122 = (v87 + 16 * v89);
        v123 = v122[1];
        sub_1000EFFB4((*a3 + (*v121 << 6)), (*a3 + (*v122 << 6)), (*a3 + (v123 << 6)), v139);
        if (v141)
        {
          goto LABEL_103;
        }

        if (v123 < i)
        {
          goto LABEL_116;
        }

        v4 = *(v149 + 16);
        if (v89 > v4)
        {
          goto LABEL_117;
        }

        *v121 = i;
        v121[1] = v123;
        if (v89 >= v4)
        {
          goto LABEL_118;
        }

        v86 = v4 - 1;
        memmove((v87 + 16 * v89), v122 + 2, 16 * (v4 - 1 - v89));
        i = v149;
        *(v149 + 16) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v96 = v87 + 16 * v86;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_119;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_120;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_122;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_125;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_133;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 >= v57)
  {
    v58 = a3[1];
  }

  else
  {
    v58 = (v8 + a4);
  }

  if (v58 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v58)
  {
    goto LABEL_51;
  }

  v149 = i;
  v59 = *a3;
  v60 = (*a3 + (v6 << 6));
  v135 = v8;
  v61 = v8 - v6;
  v138 = v58;
LABEL_38:
  v62 = v61;
  v63 = v60;
  while (1)
  {
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[3];
    v144[2] = v63[2];
    v144[3] = v66;
    v144[0] = v64;
    v144[1] = v65;
    v67 = *(v63 - 4);
    v68 = *(v63 - 3);
    v69 = *(v63 - 1);
    v143[2] = *(v63 - 2);
    v143[3] = v69;
    v143[0] = v67;
    v143[1] = v68;
    sub_10000F4A4(v144, v142);
    sub_10000F4A4(v143, v142);
    v70 = sub_100027970();
    v72 = v71;
    v73 = sub_100027970();
    v4 = v74;
    if (v70 == v73 && v72 == v74)
    {

      sub_10000FF10(v143);
      sub_10000FF10(v144);
LABEL_49:
      v60 += 4;
      --v61;
      if (++v6 == v138)
      {
        v6 = v138;
        i = v149;
        v8 = v135;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10000FF10(v143);
    sub_10000FF10(v144);
    if ((v76 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v59)
    {
      break;
    }

    v77 = v63 - 4;
    v79 = v63[2];
    v78 = v63[3];
    v81 = *v63;
    v80 = v63[1];
    v82 = *(v63 - 3);
    *v63 = *(v63 - 4);
    v63[1] = v82;
    v83 = *(v63 - 1);
    v63[2] = *(v63 - 2);
    v63[3] = v83;
    *v77 = v81;
    v77[1] = v80;
    v63 -= 4;
    v77[2] = v79;
    v77[3] = v78;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1000EFFB4(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 64;
  v10 = (a3 - a2) / 64;
  if (v9 < v10)
  {
    sub_1000D6878(a1, (a2 - a1) / 64, a4);
    v11 = &v5[64 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_39;
      }

      v13 = *v7;
      v14 = *(v7 + 1);
      v15 = *(v7 + 3);
      v58 = *(v7 + 2);
      v59 = v15;
      v56 = v13;
      v57 = v14;
      v16 = *v5;
      v17 = *(v5 + 1);
      v18 = *(v5 + 3);
      v54 = *(v5 + 2);
      v55 = v18;
      v52 = v16;
      v53 = v17;
      sub_10000F4A4(&v56, v51);
      sub_10000F4A4(&v52, v51);
      v19 = sub_100027970();
      v21 = v20;
      v23 = v19 == sub_100027970() && v21 == v22;
      if (v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000FF10(&v52);
      sub_10000FF10(&v56);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      v25 = v7;
      v23 = v8 == v7;
      v7 += 64;
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_18:
      v8 += 64;
    }

    sub_10000FF10(&v52);
    sub_10000FF10(&v56);
LABEL_16:
    v25 = v5;
    v23 = v8 == v5;
    v5 += 64;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_17:
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 3);
    *(v8 + 2) = *(v25 + 2);
    *(v8 + 3) = v28;
    *v8 = v26;
    *(v8 + 1) = v27;
    goto LABEL_18;
  }

  v60 = v4;
  sub_1000D6878(a2, (a3 - a2) / 64, a4);
  v11 = &v5[64 * v10];
LABEL_20:
  v29 = v7 - 64;
  for (v6 -= 64; v11 > v5 && v7 > v8; v6 -= 64)
  {
    v31 = *(v11 - 4);
    v32 = *(v11 - 3);
    v33 = *(v11 - 1);
    v58 = *(v11 - 2);
    v59 = v33;
    v56 = v31;
    v57 = v32;
    v34 = *(v7 - 3);
    v52 = *v29;
    v53 = v34;
    v35 = *(v7 - 1);
    v54 = *(v7 - 2);
    v55 = v35;
    sub_10000F4A4(&v56, v51);
    sub_10000F4A4(&v52, v51);
    v36 = sub_100027970();
    v38 = v37;
    if (v36 == sub_100027970() && v38 == v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000FF10(&v52);
    sub_10000FF10(&v56);
    if (v41)
    {
      v23 = v6 + 64 == v7;
      v7 -= 64;
      if (!v23)
      {
        v45 = *v29;
        v46 = *(v29 + 1);
        v47 = *(v29 + 3);
        *(v6 + 2) = *(v29 + 2);
        *(v6 + 3) = v47;
        *v6 = v45;
        *(v6 + 1) = v46;
        v7 = v29;
      }

      goto LABEL_20;
    }

    if (v11 != v6 + 64)
    {
      v42 = *(v11 - 4);
      v43 = *(v11 - 3);
      v44 = *(v11 - 1);
      *(v6 + 2) = *(v11 - 2);
      *(v6 + 3) = v44;
      *v6 = v42;
      *(v6 + 1) = v43;
    }

    v11 -= 64;
  }

LABEL_39:
  v48 = (v11 - v5) / 64;
  if (v7 != v5 || v7 >= &v5[64 * v48])
  {
    memmove(v7, v5, v48 << 6);
  }

  return 1;
}

char *sub_1000F02C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1000F02F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007B9A4(&qword_10026BEE0, &qword_1001EBCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000F041C(void *a1)
{
  v1 = [a1 apps];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000F04DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000EE080();
}

void sub_1000F0610(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1000F05A8(a1);
}

id sub_1000F061C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000F055C(a1);
}

uint64_t sub_1000F0624()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v4[1] = sub_100009BE8;
  v6 = sub_100005F88();

  return v7(v6);
}

uint64_t sub_1000F0790()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000F07FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100007A3C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000F0838()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1000083D8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000F0884()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_100007A3C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000F08C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = sub_100008FD8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000F09D8()
{
  sub_1000F1290();
  v2 = sub_10000C504(v0, v1);
  v4 = sub_10007B9A4(v2, v3);
  sub_100003D10(v4);
  v6 = *(v5 + 80);
  sub_1000F11BC();
  return sub_1000EF440();
}

uint64_t sub_1000F0AC4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100069F88(a1);
}

uint64_t sub_1000F0B20()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000F0B98()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_1000083D8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000F0C48()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  sub_1000083D8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000F0C8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1000EDFD4();
}

uint64_t sub_1000F0D20(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10007B9A4(a1, a2);
  sub_100002DDC(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_1000F0DB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000EE6DC();
}

uint64_t sub_1000F0E34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000F0E5C()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000F0E94()
{
  sub_100003D28();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009CC8;

  return sub_1000E99A8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000F0F58()
{
  sub_1000061B4();
  sub_1000F11CC();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100005C78(v1);

  return sub_1000E8F5C(v3, v4, v5, v6);
}

unint64_t sub_1000F0FF8()
{
  result = qword_10026C948;
  if (!qword_10026C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C948);
  }

  return result;
}

unint64_t sub_1000F104C()
{
  result = qword_10026C960;
  if (!qword_10026C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C960);
  }

  return result;
}

uint64_t sub_1000F1180()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_1000F11CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1000F11F8()
{

  return Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_1000F121C()
{

  return Promise.reject(_:)();
}

void sub_1000F1234()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

__n128 sub_1000F1270()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t sub_1000F12B0()
{

  return swift_allocObject();
}

uint64_t sub_1000F12D0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for EngagementService();
}

uint64_t sub_1000F12E8()
{
  v1 = *sub_100003CA8((v0 + 56), *(v0 + 80));
  v2 = sub_1000C248C(10);
  v4 = v3;
  v5 = [objc_opt_self() buildVersion];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v4)
  {
    if (v2 == v6 && v4 == v8)
    {

      v11 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v10 ^ 1;
    }
  }

  else
  {

    v11 = 1;
  }

  return v11 & 1;
}

BOOL sub_1000F13D4(uint64_t a1)
{
  sub_100003F74();
  v42 = v3;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = type metadata accessor for Date();
  v9 = sub_100002CC4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  sub_100059478((v1 + 56), &v41 - v17);
  v19 = sub_100003CA8((v1 + 56), *(v1 + 80));
  v20 = sub_1000F3320(*v19, a1);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v45 = *(v11 + 8);
  v46 = v8;
  v45(v16, v8);
  if (qword_1002686F0 != -1)
  {
    sub_100006B94();
  }

  v44 = qword_100287850;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v23 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v23);
  v25 = *(v24 + 72);
  sub_10000BF6C();
  v43 = v26;
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v48 = v42;
  v47[0] = *&v1;

  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v29 = dbl_1001EBEC0[v20 == 3];
  if (v20 == 2)
  {
    v29 = 600.0;
  }

  if (v20 <= 1)
  {
    v30 = 60.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = v22 - v30;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v47);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v32._object = 0x80000001001F7430;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  v33 = *(a1 + 1);
  v48 = &unk_1002471C0;
  LOBYTE(v47[0]) = v33;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v34 = sub_10000B8C4();
  sub_10000640C(", attemptIteration: ", v34);
  v48 = &type metadata for Int;
  v47[0] = *&v20;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v35 = sub_10000B8C4();
  sub_10000640C(", effectiveBackoff: ", v35);
  v48 = &type metadata for Double;
  v47[0] = v30;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v36._countAndFlagsBits = 0x61426E497369202CLL;
  v36._object = 0xEF203A66666F6B63;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
  v48 = &type metadata for Bool;
  LOBYTE(v47[0]) = v31 < 0.0;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v37._countAndFlagsBits = 0xD000000000000011;
  v37._object = 0x80000001001F7490;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  v48 = &type metadata for Double;
  v47[0] = v31;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000B8C4();
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
  LogInterpolation.init(stringInterpolation:)();
  v39 = static os_log_type_t.debug.getter();
  sub_1000036B0(v39);

  v45(v18, v46);
  return v31 < 0.0;
}

uint64_t sub_1000F1840(uint64_t a1)
{
  sub_100003F74();
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  static Date.now.getter();
  v15 = type metadata accessor for Date();
  sub_10000A7C0(v14, 0, 1, v15);
  v16 = sub_1000083E4();
  sub_1000F34BC(v14, *v16, a1);
  sub_10000A064(v14, &unk_100271EA0, &qword_1001E77F0);
  v17 = sub_1000083E4();
  v18 = sub_1000F3320(*v17, a1);
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = sub_1000083E4();
    sub_1000F3168(v19, *v20, a1);
    if (qword_1002686F0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_100006B94();
LABEL_3:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v21);
  v23 = *(v22 + 72);
  sub_10000BF6C();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v35 = v4;
  v34[0] = v1;

  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v34);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x80000001001F73F0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *(a1 + 1);
  v35 = &unk_1002471C0;
  LOBYTE(v34[0]) = v27;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v34, &qword_10026D350, &qword_1001E6050);
  v28._object = 0x80000001001F7410;
  v28._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v29 = sub_1000083E4();
  v30 = sub_1000F3320(*v29, a1);
  v35 = &type metadata for Int;
  v34[0] = v30;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v34, &qword_10026D350, &qword_1001E6050);
  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
  LogInterpolation.init(stringInterpolation:)();
  v32 = static os_log_type_t.debug.getter();
  sub_1000036B0(v32);
}

void sub_1000F1BB0(uint64_t a1)
{
  sub_100003F74();
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  if (qword_1002686F0 != -1)
  {
    sub_100006B94();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  sub_10000BF6C();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v20 = v4;
  v19[0] = v1;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001001F73D0;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v15 = *(a1 + 1);
  v20 = &unk_1002471C0;
  LOBYTE(v19[0]) = v15;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.debug.getter();
  sub_1000036B0(v17);

  v18 = sub_1000083E4();
  sub_1000F3168(0, *v18, a1);
}

uint64_t sub_1000F1E08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v15 = type metadata accessor for EngagementSyncCoordinator();
  v14[0] = a2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v15 = &type metadata for String;
  v14[0] = a3;
  v14[1] = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(v14, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F2010(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v18 = v6;
  v16 = v3;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v16 = 0x676E69766F6D6552;
  v17 = 0xE900000000000020;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x7571206D6F726620;
  v13._object = 0xEB00000000657565;
  String.append(_:)(v13);
  v18 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.debug.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  sub_100193C7C(a1, a2);
  swift_endAccess();
}

uint64_t sub_1000F22A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  v18 = type metadata accessor for EngagementSyncCoordinator();
  v16 = a2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  swift_getErrorValue();
  v12 = Error.localizedDescription.getter();
  v18 = &type metadata for String;
  v16 = v12;
  v17 = v13;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v16 = a3;
  v17 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14);

  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F24F8()
{
  sub_100027C2C(0, 4, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE900000000000073;
    v3 = 0x636974796C616E61;
    switch(*(&off_100244588 + v0 + 32))
    {
      case 1:
        v2 = 0xE800000000000000;
        v3 = 0x6C616E7265746E69;
        break;
      case 2:
        v2 = 0xE800000000000000;
        v3 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v3 = 0x6E656D6D6F636572;
        v2 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v8 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      sub_100027C2C((v4 > 1), v5 + 1, 1);
      v1 = v8;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 4);

  return sub_100062640(v1);
}

uint64_t sub_1000F2690(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v24 = type metadata accessor for EngagementSyncCoordinator();
  v21 = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v21);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v26 = v21;
  v27 = v22;
  v11._object = 0x80000001001F75C0;
  v11._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v11);
  v21 = v5;
  v22 = v4;
  v23 = v19;
  v24 = v20;
  sub_10007B9A4(&qword_10026CA30, &qword_1001EBF20);
  _print_unlocked<A, B>(_:_:)();
  v24 = &type metadata for String;
  v21 = v26;
  v22 = v27;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v21, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  a3(v5, v4);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v5;
  v13[4] = v4;
  v13[5] = v19;
  v13[6] = v20;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v5;
  v14[4] = v4;
  v14[5] = v19;
  v14[6] = v20;
  v15 = *(a2 + 96);
  v24 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v25 = &protocol witness table for OS_dispatch_queue;
  v21 = v15;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = v15;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(&v21);
}

uint64_t sub_1000F29F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  v20 = type metadata accessor for EngagementSyncCoordinator();
  v18 = a2;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v18);
  LogInterpolation.init(stringLiteral:)();
  v20 = &type metadata for String;
  v18 = a3;
  v19 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v18, &qword_10026D350, &qword_1001E6050);
  v20 = &type metadata for String;
  v18 = a5;
  v19 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v18, &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  sub_1000F2C60();
  return sub_1000F2010(a3, a4);
}

uint64_t sub_1000F2C60()
{
  sub_100057298();

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000ABF90();
  sub_1000F2F9C();
}

uint64_t sub_1000F2D04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v22 = type metadata accessor for EngagementSyncCoordinator();
  v20 = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v20);
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v22 = &type metadata for String;
  v20 = v13;
  v21 = v14;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v20, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v22 = &type metadata for String;
  v20 = a3;
  v21 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v20, &qword_10026D350, &qword_1001E6050);
  v22 = &type metadata for String;
  v20 = a5;
  v21 = a6;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v20, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.error.getter();
  sub_1000036B0(v15);

  return sub_1000F2010(a3, a4);
}

void sub_1000F2F9C()
{
  v1 = sub_100003CA8((v0 + 56), *(v0 + 80));
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = *v1;
  sub_1000C2474(isa, 3);
}

uint64_t sub_1000F3014()
{
  sub_100002C00((v0 + 16));
  sub_100002C00((v0 + 56));

  v1 = *(v0 + 104);

  return v0;
}

uint64_t sub_1000F304C()
{
  sub_1000F3014();

  return swift_deallocClassInstance();
}

void *sub_1000F3080(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v12 = sub_100057630(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void sub_1000F3168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_100057280(9) || (sub_10007B9A4(&qword_10026CA28, &unk_1001EBF10), (swift_dynamicCast() & 1) == 0))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v4 = *(a3 + 1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000AC528();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000C2474(isa, 9);
}

uint64_t sub_1000F3320(void *a1, uint64_t a2)
{
  v17 = type metadata accessor for Defaults();
  v18 = &off_100248840;
  v16[0] = a1;
  v4 = *sub_100003CA8(v16, v17);
  v5 = a1;
  if (sub_100057280(9) && (sub_10007B9A4(&qword_10026CA28, &unk_1001EBF10), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v15;
  }

  else
  {
    v6 = Dictionary.init(dictionaryLiteral:)();
  }

  v7 = *(a2 + 1);
  v8 = 0xE900000000000073;
  v9 = 0x636974796C616E61;
  switch(v7)
  {
    case 1:
      v8 = 0xE800000000000000;
      v9 = 0x6C616E7265746E69;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v9 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v8 = 0xEF736E6F69746164;
      v9 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v10 = sub_10001B0E4(v9, v8, v6);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  sub_100002C00(v16);
  return v13;
}

uint64_t sub_1000F34BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v48 = type metadata accessor for Defaults();
  v49 = &off_100248840;
  v47[0] = a2;
  v20 = *sub_100003CA8(v47, v48);
  v21 = a2;
  v22 = sub_100057280(8);
  if (v22 && (v46 = v22, sub_10007B9A4(&qword_10026A0A0, &qword_1001E77F8), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v45;
  }

  else
  {
    v23 = Dictionary.init(dictionaryLiteral:)();
  }

  v24 = 0xE900000000000073;
  v25 = 0x636974796C616E61;
  sub_1000652F0(a1, v11);
  if (sub_100009F34(v11, 1, v12) == 1)
  {
    sub_10000A064(v11, &unk_100271EA0, &qword_1001E77F0);
    *(a3 + 1);
    v26 = sub_100012A94();
    if (v27)
    {
      v28 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v23;
      v30 = *(v23 + 24);
      sub_10007B9A4(&unk_10026AE80, &unk_1001E8630);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
      v31 = v46;
      v32 = *(v46[6] + 16 * v28 + 8);

      v33 = v44;
      (*(v13 + 32))(v44, v31[7] + *(v13 + 72) * v28, v12);
      _NativeDictionary._delete(at:)();
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v44;
    }

    sub_10000A7C0(v33, v34, 1, v12);

    sub_10000A064(v33, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    switch(*(a3 + 1))
    {
      case 1:
        v24 = 0xE800000000000000;
        v25 = 0x6C616E7265746E69;
        break;
      case 2:
        v24 = 0xE800000000000000;
        v25 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v25 = 0x6E656D6D6F636572;
        v24 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    (*(v13 + 16))(v17, v19, v12);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v23;
    sub_1000AC5EC(v17, v25, v24, v35, v36, v37, v38, v39, v44, v45);

    (*(v13 + 8))(v19, v12);
  }

  v40 = sub_100003CA8(v47, v48);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = *v40;
  sub_1000C2474(isa, 8);

  return sub_100002C00(v47);
}

uint64_t sub_1000F39E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F3A40(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for ScheduleInfo(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v54 = 0;
  }

  v21 = AMSGenerateLogCorrelationKey();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v22;

  v56 = 0x73746E657665;
  v57 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v58, a1, &v61);
  sub_10000E1E8(&v58);
  if (v62)
  {
    sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (sub_100005264())
    {
      v23 = v56;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000A064(&v61, &qword_10026D350, &qword_1001E6050);
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_9:
  sub_10000A7C0(v18, 1, 1, v5);
  v56 = 0x656C756465686373;
  v57 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v58, a1, &v61);
  sub_10000E1E8(&v58);
  if (v62)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_100005264())
    {
      v24 = v56;
      v25 = *(v53 + 1);

      sub_1001910E0(v25, 0, v23, v24);
      sub_10000A064(v18, &qword_100269F90, &qword_1001E8720);
      sub_1000F449C(v16, v18);
    }
  }

  else
  {
    sub_10000A064(&v61, &qword_10026D350, &qword_1001E6050);
  }

  sub_1000A94A8(v18, v13);
  if (sub_100009F34(v13, 1, v5) == 1)
  {
    sub_10000A064(v13, &qword_100269F90, &qword_1001E8720);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for EnqueueAction();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0xD000000000000021;
    v29._object = 0x80000001001F7630;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v60 = &type metadata for String;
    v30 = v52;
    v31 = v55;
    v58 = v52;
    v59 = v55;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v33 = static os_log_type_t.default.getter();
    sub_1000036B0(v33);

    v34 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
    sub_1000F4334(v23, v34);
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001E8AB0;
    v36 = v35;
    *(v53 + 1);
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    *(v36 + 32) = sub_100092378();
    sub_1000F43B4(v36, v34);
    v47 = [objc_opt_self() currentProcess];
    [v34 setClientInfo:v47];

    sub_1000F4438(v30, v31, v34);
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v48 = sub_10002411C();
    v49 = [objc_allocWithZone(AMSEngagement) initWithBag:v48];

    v50 = [v49 _enqueue:v34];
  }

  else
  {

    sub_1000A1B18(v13, v8);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v37 = *(type metadata accessor for LogInterpolation() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for EnqueueAction();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._object = 0x80000001001F7660;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
    v41 = *(v5 + 20);
    v42 = &v8[v41 + *(type metadata accessor for ScheduleInfo.Metadata(0) + 44)];
    v44 = *v42;
    v43 = *(v42 + 1);
    v60 = &type metadata for String;
    v58 = v44;
    v59 = v43;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v46 = static os_log_type_t.default.getter();
    sub_1000036B0(v46);

    sub_10009B1A0(v8);
    sub_1000A1B7C(v8);
  }

  return sub_10000A064(v18, &qword_100269F90, &qword_1001E8720);
}

void sub_1000F4334(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setEvents:isa];
}

void sub_1000F43B4(uint64_t a1, void *a2)
{
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDestinations:isa];
}

void sub_1000F4438(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setLogKey:v4];
}

uint64_t sub_1000F449C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000F450C(uint64_t a1, void *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v17, a1, &v18);
  sub_10000E1E8(v17);
  if (!v19)
  {
    goto LABEL_8;
  }

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v17, 0x746E756F636361, &v18);

  sub_10000E1E8(v17);
  if (!v19)
  {
LABEL_8:
    sub_100002C5C(&v18);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v4 = 4;
    v17[0] = 1684632420;
    v17[1] = 0;
    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = *v9 - 48;
      if (v10 > 9)
      {
        break;
      }

      v11 = 10 * v8;
      if ((v8 * 10) >> 64 != (10 * v8) >> 63)
      {
        break;
      }

      v8 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        break;
      }

      ++v9;
      if (!--v4)
      {
        goto LABEL_17;
      }
    }

    v8 = 0;
    LOBYTE(v4) = 1;
LABEL_17:
    LOBYTE(v18) = v4;
    v12 = v4;

    if ((v12 & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = [a2 clientInfo];
      v15 = [v13 ams_sharedAccountStoreForClient:v14];

      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
      v6 = [v15 ams_iTunesAccountWithDSID:v16];

      goto LABEL_10;
    }
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  sub_1000F4A00();

  return sub_1000991BC(v7, 0, v6, 0);
}

unint64_t sub_1000F4A00()
{
  result = qword_10026CAD8;
  if (!qword_10026CAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CAD8);
  }

  return result;
}

id sub_1000F4A44()
{
  v0 = String._bridgeToObjectiveC()();
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  v1 = [qword_10026A070 integerForKey:v0];
  v2 = [v1 valuePromise];

  v8 = 0;
  v3 = [v2 resultWithError:&v8];

  v4 = v8;
  if (v3)
  {
    v8 = 0;
    v9 = 1;
    v5 = v4;
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();

    return v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

void sub_1000F4BC0(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActions:isa];
}

id sub_1000F4C40(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 ams_sanitizedForSecureCoding];

  return v9;
}

unint64_t sub_1000F4DD8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1000F4DE8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4DD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F4E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9498();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000F4E74(uint64_t a1)
{
  v2 = sub_1000F9444();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000F4EB0(uint64_t a1)
{
  v2 = sub_1000F9444();
  v3 = sub_1000F9498();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

BOOL sub_1000F4F0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244EA0, v2);

  return v3 != 0;
}

BOOL sub_1000F4F7C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4F0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F4FB0@<X0>(void *a1@<X8>)
{
  result = sub_1000F4F54();
  *a1 = 0xD000000000000022;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000F4FE0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100002CC4(v1);
  v22 = v3;
  v23 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_1000052A4();
  v21 = v6;
  sub_100003D1C();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100002DEC();
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = sub_100002CC4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v19 = v18 - v17;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v19, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v19, v11);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000F892C();
  return v0;
}

_OWORD *sub_1000F52E4(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v5 = *(v2 + 16);
  v6 = sub_100049574(v5);

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v3 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v2 = a2;
    v9 = [v8 bundleIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == v37 && v12 == v2)
    {

LABEL_19:

      if (qword_1002686E0 != -1)
      {
LABEL_27:
        sub_10000B8E0();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v22 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v22);
      v24 = *(v23 + 72);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v36 = type metadata accessor for ExtensionLoader();
      v34 = v33;

      v27 = AMSLogKey();
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v34);
      LogInterpolation.init(stringLiteral:)();
      v36 = &type metadata for String;
      v34 = v37;
      v35 = v2;

      static LogInterpolation.safe(_:)();
      sub_10000A064(&v34, &qword_10026D350, &qword_1001E6050);
      v29 = static os_log_type_t.default.getter();
      sub_1000036B0(v29);

      return v3;
    }

    a2 = v2;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_19;
    }
  }

  if (qword_1002686E0 != -1)
  {
    sub_10000B8E0();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v3 = swift_allocObject();
  v3[1] = xmmword_1001E5F60;
  v36 = type metadata accessor for ExtensionLoader();
  v34 = v33;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v34);
  LogInterpolation.init(stringLiteral:)();
  v36 = &type metadata for String;
  v34 = v37;
  v35 = a2;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v34, &qword_10026D350, &qword_1001E6050);
  v30 = static os_log_type_t.error.getter();
  sub_1000036B0(v30);

  sub_1000F90A8();
  swift_allocError();
  *v31 = 1;
  swift_willThrow();
  return v3;
}

uint64_t sub_1000F57B0(uint64_t a1, void *a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t), void (*a6)(void, void))
{
  v229 = a5;
  v230 = a6;
  LODWORD(v231) = a4;
  v243 = a3;
  v256 = a1;
  v246 = *v6;
  v8 = type metadata accessor for OSSignpostError();
  v9 = sub_100002CC4(v8);
  v221 = v10;
  v222 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_1000052A4();
  v228 = v13;
  sub_100003D1C();
  v239 = type metadata accessor for DispatchWorkItemFlags();
  v14 = sub_100002CC4(v239);
  v245 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000052A4();
  v238 = v18;
  sub_100003D1C();
  v237 = type metadata accessor for DispatchQoS();
  v19 = sub_100002CC4(v237);
  v244 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_1000052A4();
  v236 = v23;
  sub_100003D1C();
  v24 = type metadata accessor for DispatchTimeInterval();
  v25 = sub_100002CC4(v24);
  v225 = v26;
  v226 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000052A4();
  v224 = v29;
  sub_100003D1C();
  v235 = type metadata accessor for DispatchTime();
  v30 = sub_100002CC4(v235);
  v227 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_100005C2C();
  v223 = v34;
  __chkstk_darwin(v35);
  v234 = &v220 - v36;
  sub_100003D1C();
  v37 = type metadata accessor for LogInterpolation.StringInterpolation();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  sub_1000052A4();
  *&v252 = v39;
  sub_100003D1C();
  v40 = type metadata accessor for OSSignposter();
  v41 = sub_100002CC4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41);
  sub_100005C2C();
  v242 = v46;
  v48 = __chkstk_darwin(v47);
  v50 = &v220 - v49;
  __chkstk_darwin(v48);
  v52 = &v220 - v51;
  v53 = type metadata accessor for OSSignpostID();
  v54 = sub_100002CC4(v53);
  v261 = v55;
  v262 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_100005C2C();
  v232 = v58;
  v60 = __chkstk_darwin(v59);
  v62 = &v220 - v61;
  __chkstk_darwin(v60);
  v64 = &v220 - v63;
  v247 = a2;
  v65 = [a2 bundleIdentifier];
  v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  if (qword_1002686E0 != -1)
  {
    sub_10000B8E0();
  }

  v68 = qword_100287840;
  v69 = *(qword_100287840 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v70 = *(v43 + 8);
  v254 = v43 + 8;
  v255 = v40;
  v253 = v70;
  v70(v52, v40);
  v263 = v68;
  v71 = *(v68 + 16);
  OSSignposter.init(logHandle:)();

  v72 = OSSignposter.logHandle.getter();
  v73 = static os_signpost_type_t.begin.getter();

  v74 = OS_os_log.signpostsEnabled.getter();
  v260 = v64;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v271 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_1000127B4();
    v77 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, v73, v77, "ExtensionLoader", "Request to %s", v75, 0xCu);
    sub_100002C00(v76);
    v64 = v260;
  }

  v78 = v265;
  (*(v261 + 16))(v62, v64, v262);
  v79 = type metadata accessor for OSSignpostIntervalState();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v258 = OSSignpostIntervalState.init(id:isOpen:)();
  (v253)(v50, v255);
  v82 = swift_allocObject();
  sub_100191E50(&v277);
  v83 = v278;
  v280 = v278;
  *(v82 + 16) = v277;
  *(v82 + 32) = v83;
  *(v82 + 48) = v279;
  v84 = v264;
  *(v82 + 32) = v264;
  *(v82 + 40) = v67;

  sub_10000A064(&v280, &unk_10026CD20, &unk_1001E7CC0);
  [*(v82 + 56) lock];
  sub_10000E42C(0x6E69726170657250, 0xE900000000000067, 0x74736575716572, 0xE700000000000000);
  [*(v82 + 56) unlock];
  v85 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v86 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v86);
  v89 = *(v88 + 80);
  v90 = (v89 + 32) & ~v89;
  v259 = *(v87 + 72);
  v248 = v89;
  v250 = v85;
  v241 = v90 + 2 * v259;
  v91 = swift_allocObject();
  v240 = xmmword_1001E5F70;
  *(v91 + 16) = xmmword_1001E5F70;
  v251 = v90;
  v249 = type metadata accessor for ExtensionLoader();
  v274 = v249;
  v271 = v78;

  v92 = AMSLogKey();
  v257 = v82;
  if (v92)
  {
    v93 = v92;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004C88();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v271);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v94._countAndFlagsBits = v82 | 3;
  v94._object = 0x80000001001F7990;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v94);
  sub_100011BAC(v256, &v271);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_100023D70();
  v95._countAndFlagsBits = 544175136;
  v95._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v95);
  v274 = &type metadata for String;
  v271 = v84;
  v272 = v67;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023D70();
  v96._countAndFlagsBits = 41;
  v96._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v96);
  v97 = v259;
  LogInterpolation.init(stringInterpolation:)();
  v98 = static os_log_type_t.default.getter();
  sub_10000C3C4(v98);

  v271 = 0;
  v99 = [v247 makeXPCConnectionWithError:&v271];
  v100 = v271;
  if (v99)
  {
    v101 = v99;
    v102 = objc_opt_self();
    v103 = v100;
    v104 = v101;
    v105 = [v102 interfaceWithProtocol:&OBJC_PROTOCOL___AMSEngagementExtensionRemoteContextProtocol];
    [v104 setRemoteObjectInterface:v105];

    [v104 resume];
    v106 = swift_allocObject();
    v107 = v265;
    v106[2] = v265;
    v106[3] = v84;
    v106[4] = v67;
    v275 = sub_1000F91AC;
    v276 = v106;
    v271 = _NSConcreteStackBlock;
    v272 = 1107296256;
    v273 = sub_1000266E0;
    v274 = &unk_10024B5D0;
    v108 = _Block_copy(&v271);

    v109 = [v104 synchronousRemoteObjectProxyWithErrorHandler:v108];

    _Block_release(v108);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100011BAC(v270, &v271);
    sub_10007B9A4(&qword_10026CD38, &unk_1001EC0C0);
    if (swift_dynamicCast())
    {
      v110 = *&v269[0];
      v111 = v104;
      sub_1000F8A74(v111, v111);
      v112 = swift_allocObject();
      *(v112 + 16) = 0;
      v113 = swift_allocObject();
      v114 = v230;
      v113[2] = v229;
      v113[3] = v114;
      v115 = objc_allocWithZone(NSLock);

      v116 = [v115 init];
      sub_100004C9C();
      v117 = swift_allocObject();
      v117[2] = v112;
      v117[3] = v116;
      v117[4] = v111;
      v117[5] = v113;
      v118 = v258;
      v117[6] = v257;
      v117[7] = v118;
      v254 = v117;
      v117[8] = v246;
      v119 = *(v243 + *(type metadata accessor for ExtensionLoader.RequestOptions() + 20)) * 1000.0;
      if (COERCE__INT64(fabs(v119)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v119 > -9.22337204e18)
      {
        if (v119 < 9.22337204e18)
        {
          v232 = v111;
          v242 = v110;
          v120 = v119;
          v230 = v107[3];

          v231 = v116;
          v247 = v113;

          v121 = v223;
          static DispatchTime.now()();
          v122 = v112;
          v124 = v224;
          v123 = v225;
          v222 = v120;
          *v224 = v120;
          v125 = v226;
          (*(v123 + 104))(v124, enum case for DispatchTimeInterval.milliseconds(_:), v226);
          + infix(_:_:)();
          (*(v123 + 8))(v124, v125);
          v226 = *(v227 + 8);
          v226(v121, v235);
          v126 = swift_allocObject();
          swift_weakInit();
          sub_100004C9C();
          v127 = swift_allocObject();
          v127[2] = v122;
          v127[3] = v126;
          v127[4] = v264;
          v127[5] = v67;
          v128 = v254;
          v127[6] = sub_1000F91B8;
          v127[7] = v128;
          v127[8] = v246;
          v275 = sub_1000F9238;
          v276 = v127;
          v271 = _NSConcreteStackBlock;
          v272 = 1107296256;
          v273 = sub_100005E50;
          v274 = &unk_10024B6C0;
          v129 = _Block_copy(&v271);
          v255 = v67;

          v253 = v122;

          v130 = v236;
          static DispatchQoS.unspecified.getter();
          *&v269[0] = _swiftEmptyArrayStorage;
          v131 = sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
          v132 = sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
          v133 = sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
          v134 = v238;
          v227 = v133;
          v228 = v132;
          v135 = v239;
          v246 = v131;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v136 = v234;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v129);
          v137 = *(v245 + 8);
          v245 += 8;
          v230 = v137;
          v137(v134, v135);
          v138 = *(v244 + 8);
          v244 += 8;
          v229 = v138;
          v138(v130, v237);
          v226(v136, v235);

          sub_10000ABEC();
          v139 = swift_allocObject();
          sub_100012C7C(v139);
          v274 = v249;
          v271 = v265;

          v140 = AMSLogKey();
          if (v140)
          {
            v141 = v140;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_100004C88();
          static LogInterpolation.prefix(_:_:)();

          sub_100002C00(&v271);
          LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v183._countAndFlagsBits = v130 + 6;
          v183._object = 0x80000001001F7AC0;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v183);
          v274 = &type metadata for String;
          v184 = v264;
          v185 = v255;
          v271 = v264;
          v272 = v255;

          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_100023D70();
          v186._countAndFlagsBits = 0x756F656D69742820;
          v186._object = 0xEB00000000203A74;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v186);
          v274 = &type metadata for Int;
          v271 = v222;
          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_100023D70();
          v187._countAndFlagsBits = 695430432;
          v187._object = 0xE400000000000000;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v187);
          LogInterpolation.init(stringInterpolation:)();
          v188 = static os_log_type_t.default.getter();
          sub_10000C3C4(v188);

          v189 = v257;
          swift_beginAccess();
          [*(v189 + 56) lock];
          sub_100007508(v130 + 2, 0x80000001001F7AE0);
          [*(v189 + 56) unlock];
          swift_endAccess();
          sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
          v263 = static OS_dispatch_queue.global(qos:)();
          sub_100011BAC(v256, v269);
          v190 = swift_allocObject();
          *(v190 + 16) = v242;
          sub_100002C4C(v269, (v190 + 24));
          *(v190 + 56) = v265;
          *(v190 + 64) = v184;
          *(v190 + 72) = v185;
          *(v190 + 80) = sub_1000F91B8;
          *(v190 + 88) = v254;
          v275 = sub_1000F924C;
          v276 = v190;
          v271 = _NSConcreteStackBlock;
          v272 = 1107296256;
          v273 = sub_100005E50;
          v274 = &unk_10024B710;
          v191 = _Block_copy(&v271);

          swift_unknownObjectRetain();
          v192 = v236;
          static DispatchQoS.unspecified.getter();
          v266 = _swiftEmptyArrayStorage;
          v194 = v238;
          v193 = v239;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v195 = v263;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v191);

          swift_unknownObjectRelease();

          v230(v194, v193);
          v229(v192, v237);
          sub_100002C00(v270);
          v196 = sub_100007A68();
          v197(v196);
        }

LABEL_42:
        __break(1u);
      }

      __break(1u);
      goto LABEL_42;
    }

    sub_10000ABEC();
    v147 = swift_allocObject();
    sub_100012C7C(v147);
    v150 = v148 + v149;
    v274 = v249;
    v271 = v107;

    v151 = AMSLogKey();
    v152 = v257;
    if (v151)
    {
      v153 = v151;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v174 = v228;
    sub_100019C30();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v271);
    sub_10000A3EC();
    LogInterpolation.init(stringLiteral:)();
    v175 = static os_log_type_t.error.getter();
    sub_10000C3C4(v175);

    v176 = *(v150 + 16);
    OSSignposter.init(logHandle:)();
    v177 = OSSignposter.logHandle.getter();
    v178 = v232;
    OSSignpostIntervalState.signpostID.getter();
    v179 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v181 = v221;
      v180 = v222;
      if ((*(v221 + 88))(v174, v222) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v182 = "[Error] Interval already ended";
      }

      else
      {
        (*(v181 + 8))(v174, v180);
        v182 = "Proxy Object does not conform to protocol";
      }

      v202 = swift_slowAlloc();
      *v202 = 0;
      v203 = v232;
      v204 = OSSignpostID.rawValue.getter();
      v205 = v182;
      v178 = v203;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v177, v179, v204, "ExtensionLoader", v205, v202, 2u);
    }

    v206 = v262;
    v265 = *(v261 + 8);
    (v265)(v178, v262);
    (v253)(v242, v255);
    [*(v152 + 56) lock];
    sub_100007508(0xD000000000000026, 0x80000001001F7A90);
    [*(v152 + 56) unlock];
    sub_1000F90A8();
    v207 = sub_10000642C();
    *v208 = 0;
    [*(v152 + 56) lock];
    v209 = *(v152 + 24);
    *(v152 + 24) = v207;

    [*(v152 + 56) unlock];
    v210 = *(v152 + 32);
    v281[0] = *(v152 + 16);
    v281[1] = v210;
    v281[2] = *(v152 + 48);
    sub_1000F90FC(v281, &v271);
    sub_100191EDC();
    sub_1000F9158(v281);
    sub_10000642C();
    *v211 = 0;
    swift_willThrow();

    sub_100002C00(v270);
    (v265)(v260, v206);
  }

  v254 = 2 * v97;
  v255 = v67;
  v142 = v271;
  v143 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10000ABEC();
  v144 = swift_allocObject();
  sub_10000BF8C(v144, xmmword_1001E61C0);
  v145 = AMSLogKey();
  if (v145)
  {
    v146 = v145;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100019C30();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v271);
  LogInterpolation.init(stringLiteral:)();
  v274 = &type metadata for String;
  v271 = v264;
  v272 = v255;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v271, &qword_10026D350, &qword_1001E6050);
  v253 = 3 * v97;
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v154 = v267;
  v155 = v268;
  v274 = v268;
  v156 = sub_100017E64(&v271);
  (*(*(v155 - 1) + 16))(v156, v154, v155);
  sub_100019C30();
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v271, &qword_10026D350, &qword_1001E6050);
  v157 = static os_log_type_t.error.getter();
  sub_10000C3C4(v157);

  if (v231)
  {

    v158 = v257;
    [*(v257 + 56) lock];
    sub_100007508(0xD000000000000011, 0x80000001001F7A40);
    [*(v158 + 56) unlock];
    sub_1000F90A8();
    v159 = sub_10000642C();
    *v160 = 0;
    [*(v158 + 56) lock];
    v161 = *(v158 + 24);
    *(v158 + 24) = v159;

    [*(v158 + 56) unlock];
    v162 = *(v158 + 32);
    v282[0] = *(v158 + 16);
    v282[1] = v162;
    v282[2] = *(v158 + 48);
    sub_1000F90FC(v282, &v271);
    sub_100191EDC();
    sub_1000F9158(v282);
    sub_10000642C();
    *v163 = 0;
    swift_willThrow();
    sub_1000F7374();

    v164 = sub_100007A68();
    v165(v164);
  }

  v166 = _convertErrorToNSError(_:)();
  v167 = [v166 domain];
  v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v170 = v169;

  if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v170 == v171)
  {
  }

  else
  {
    v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v173 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ([v166 code] != 5)
  {
LABEL_34:

    swift_willThrow();

    sub_1000F7374();

    v216 = sub_100007A68();
    v217(v216);
  }

  v233 = v143;
  sub_10000ABEC();
  v199 = swift_allocObject();
  v252 = xmmword_1001E5F60;
  sub_10000BF8C(v199, xmmword_1001E5F60);
  v200 = AMSLogKey();
  if (v200)
  {
    v201 = v200;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100019C30();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v271);
  sub_10000A3EC();
  LogInterpolation.init(stringLiteral:)();
  v274 = &type metadata for String;
  v212 = v264;
  v213 = v255;
  v271 = v264;
  v272 = v255;

  static LogInterpolation.safe(_:)();
  sub_10000A064(&v271, &qword_10026D350, &qword_1001E6050);
  v214 = static os_log_type_t.default.getter();
  sub_1000036B0(v214);

  sub_1000F892C();
  v215 = sub_1000F52E4(v212, v213);
  sub_1000F57B0(v256, v215, v243, 1, v229, v230);

  sub_1000F7374();

  v218 = sub_100007A68();
  v219(v218);
}

uint64_t sub_1000F7374()
{
  v0 = type metadata accessor for OSSignpostError();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OSSignpostID();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSSignposter();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  v12 = *(qword_100287840 + 16);
  OSSignposter.init(logHandle:)();
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v15 = v21;
    if ((*(v21 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 8))(v3, v0);
      v16 = "Failed to make XPC connection";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v18, "ExtensionLoader", v16, v17, 2u);
  }

  (*(v4 + 8))(v7, v23);
  return (*(v8 + 8))(v11, v22);
}

uint64_t sub_1000F769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v15 = type metadata accessor for ExtensionLoader();
  v14[0] = a2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v15 = &type metadata for String;
  v14[0] = a3;
  v14[1] = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A064(v14, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12);
}

id sub_1000F7894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v45 = type metadata accessor for OSSignpostError();
  v46 = *(v45 - 8);
  v15 = *(v46 + 64);
  __chkstk_darwin(v45);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OSSignpostID();
  v50 = *(v51 - 8);
  v18 = *(v50 + 64);
  __chkstk_darwin(v51);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for OSSignposter();
  v48 = *(v49 - 8);
  v21 = *(v48 + 64);
  __chkstk_darwin(v49);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    v44 = a4;
    [a4 lock];
    [a5 invalidate];
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    v25 = *(a6 + 16);
    if (v25)
    {
      v26 = *(a6 + 24);

      v25(a1, a2);
      sub_100014A10(v25);
    }

    swift_beginAccess();
    v27 = *(a6 + 16);
    v28 = *(a6 + 24);
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    sub_100014A10(v27);
    if (a2)
    {
      swift_beginAccess();
      v29 = *(a7 + 56);
      swift_errorRetain();
      swift_errorRetain();
      [v29 lock];
      v30 = *(a7 + 24);
      *(a7 + 24) = a2;

      [v29 unlock];
      [*(a7 + 56) lock];
      sub_10000E42C(0x64656873696E6946, 0xE800000000000000, 0x74736575716572, 0xE700000000000000);
      [*(a7 + 56) unlock];
      swift_endAccess();
      swift_beginAccess();
      v31 = *(a7 + 32);
      v54[0] = *(a7 + 16);
      v54[1] = v31;
      v54[2] = *(a7 + 48);
      sub_1000F90FC(v54, v52);
      sub_100191EDC();
      sub_1000F9158(v54);
    }

    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    v32 = *(qword_100287840 + 16);
    OSSignposter.init(logHandle:)();
    sub_100003C38(a1, v52);
    v33 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v34 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v35 = v46;
      v36 = v45;
      if ((*(v46 + 88))(v17, v45) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v37 = 0;
        v38 = 0;
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v17, v36);
        v39 = "%s";
        v38 = 2;
        v37 = 1;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = v41;
      *v40 = v38;
      *(v40 + 1) = v37;
      *(v40 + 2) = 2080;
      sub_10000A064(v52, &qword_10026D350, &qword_1001E6050);
      v42 = sub_1000127B4();

      *(v40 + 4) = v42;
      v43 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v43, "ExtensionLoader", v39, v40, 0xCu);
      sub_100002C00(v41);

      (*(v50 + 8))(v20, v51);
      (*(v48 + 8))(v23, v49);
    }

    else
    {

      (*(v50 + 8))(v20, v51);
      (*(v48 + 8))(v23, v49);
      sub_10000A064(v52, &qword_10026D350, &qword_1001E6050);
    }

    return [v44 unlock];
  }

  return result;
}

uint64_t sub_1000F7F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t), uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v37 = type metadata accessor for ExtensionLoader();
      *&v36 = v18;
      sub_100002C4C(&v36, &v38);
    }

    else
    {
      *(&v39 + 1) = swift_getMetatypeMetadata();
      *&v38 = a7;
    }

    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v38);
    LogInterpolation.init(stringLiteral:)();
    v28 = static os_log_type_t.debug.getter();
    sub_1000036B0(v28);
  }

  else
  {
    v35 = a5;
    if (qword_1002686E0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v37 = type metadata accessor for ExtensionLoader();
      *&v36 = v23;
      sub_100002C4C(&v36, &v38);
    }

    else
    {
      *(&v39 + 1) = swift_getMetatypeMetadata();
      *&v38 = a7;
    }

    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0x2074736575716552;
    v30._object = 0xEB00000000206F74;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    *(&v39 + 1) = &type metadata for String;
    *&v38 = a3;
    *(&v38 + 1) = a4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v38, &qword_10026D350, &qword_1001E6050);
    v31._object = 0x80000001001F7B40;
    v31._countAndFlagsBits = 0xD00000000000001DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    LogInterpolation.init(stringInterpolation:)();
    v32 = static os_log_type_t.default.getter();
    sub_1000036B0(v32);

    sub_1000F90A8();
    v38 = 0u;
    v39 = 0u;
    v33 = swift_allocError();
    *v34 = 2;
    v35(&v38, v33);

    return sub_10000A064(&v38, &qword_10026D350, &qword_1001E6050);
  }
}

uint64_t sub_1000F83F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100003CA8(a2, a2[3]);
  v13 = _bridgeAnythingToObjectiveC<A>(_:)();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v17[4] = sub_1000F9264;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000F887C;
  v17[3] = &unk_10024B760;
  v15 = _Block_copy(v17);

  [a1 performRequestWithObject:v13 completion:v15];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000F8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = *(type metadata accessor for LogInterpolation() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(&v28 + 1) = type metadata accessor for ExtensionLoader();
  *&v27 = a3;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v27);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001001F7B20;
  v17._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  *(&v28 + 1) = &type metadata for String;
  *&v27 = a4;
  *(&v27 + 1) = a5;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0x6C75736572202D20;
  v18._object = 0xEB00000000203A74;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v19._countAndFlagsBits = 0x726F727265202D20;
  v19._object = 0xEA0000000000203ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  if (a2)
  {
    swift_getErrorValue();
    *(&v28 + 1) = v26;
    v20 = sub_100017E64(&v27);
    (*(*(v26 - 8) + 16))(v20);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22);

  return a6(a1, a2);
}

uint64_t sub_1000F887C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_100002C4C(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_10000A064(v11, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_1000F892C()
{
  v1 = v0;
  sub_100002BC0(0, &qword_10026CD10, _EXQuery_ptr);
  v2 = sub_1000F8A00();
  v3 = [objc_opt_self() executeQuery:v2];
  sub_100002BC0(0, &qword_10026CD18, _EXExtensionIdentity_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v1 + 16);
  *(v1 + 16) = v4;
}

id sub_1000F8A00()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithExtensionPointIdentifier:v1];

  return v2;
}

void sub_1000F8A74(uint64_t a1, void *a2)
{
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100005E50;
  v9 = &unk_10024B530;
  v4 = _Block_copy(&v6);

  [a2 setInvalidationHandler:v4];
  _Block_release(v4);
  v10 = sub_1000F90A0;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100005E50;
  v9 = &unk_10024B558;
  v5 = _Block_copy(&v6);

  [a2 setInterruptionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_1000F8BCC(uint64_t a1)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for ExtensionLoader();
  v9[0] = a1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.debug.getter();
  sub_1000036B0(v7);
}

uint64_t sub_1000F8D70(uint64_t a1)
{
  if (qword_1002686E0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for ExtensionLoader();
  v9[0] = a1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7);
}

uint64_t sub_1000F8F14()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1000F8F3C()
{
  sub_1000F8F14();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ExtensionLoader.ExtensionPoint(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000F9044()
{
  result = qword_10026CCE0;
  if (!qword_10026CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CCE0);
  }

  return result;
}

unint64_t sub_1000F90A8()
{
  result = qword_10026CD30;
  if (!qword_10026CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD30);
  }

  return result;
}

uint64_t type metadata accessor for ExtensionLoader.RequestOptions()
{
  result = qword_10026CDB0;
  if (!qword_10026CDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtensionLoaderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000F9378()
{
  result = type metadata accessor for DispatchQoS.QoSClass();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000F93F0()
{
  result = qword_10026CDE8;
  if (!qword_10026CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDE8);
  }

  return result;
}

unint64_t sub_1000F9444()
{
  result = qword_10026CDF0;
  if (!qword_10026CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDF0);
  }

  return result;
}

unint64_t sub_1000F9498()
{
  result = qword_10026CDF8;
  if (!qword_10026CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CDF8);
  }

  return result;
}

uint64_t sub_1000F9598()
{
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  strcpy((inited + 72), "FamilyChanged");
  *(inited + 86) = -4864;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_1000F9670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000F96CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F9704()
{
  type metadata accessor for FamilyObserver();
  swift_allocObject();
  result = sub_1000F9790();
  qword_1002877D8 = result;
  return result;
}

uint64_t sub_1000F9740()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_10026CE10);
  sub_100048CD0(v0, qword_10026CE10);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1000F9790()
{
  v1 = v0;
  v2 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v23 - v4;
  v6 = sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = PassthroughSubject.init()();
  *(v0 + 16) = v13;
  *(v0 + 24) = 0;
  v27 = v13;
  v14 = qword_100268680;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v23[1] = sub_100048CD0(v15, qword_10026CE10);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1002878E8;
  v26 = qword_1002878E8;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000A7C0(v5, 1, 1, v17);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  sub_100006070(&qword_10026B700, &unk_10026F890, &unk_1001E74C0);
  sub_100048F10();
  v18 = v16;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000C0868(v5);

  swift_allocObject();
  swift_weakInit();
  sub_100006070(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0);
  v19 = v25;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v9, v19);
  v21 = *(v1 + 24);
  *(v1 + 24) = v20;

  return v1;
}

uint64_t sub_1000F9AD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F9D24();
  }

  return result;
}

uint64_t sub_1000F9B28()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = *(type metadata accessor for LogInterpolation() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for FamilyObserver();
  v9[0] = v0;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v6 = static os_log_type_t.info.getter();
  sub_1000036B0(v6);

  v7 = *(v0 + 16);

  sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  sub_100006070(&qword_100269F80, &unk_10026F890, &unk_1001E74C0);
  Subject<>.send()();
}

void sub_1000F9D24()
{
  v1 = v0;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12[3] = type metadata accessor for FamilyObserver();
  v12[0] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v7 = static os_log_type_t.info.getter();
  sub_1000036B0(v7);

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v8 = sub_10002411C();
  v9 = objc_allocWithZone(AMSEngagement);
  v10 = [v9 initWithBag:{v8, v12[0]}];

  v11 = [objc_allocWithZone(type metadata accessor for FamilyObserver.EngagementFamilyChangedEvent()) init];
}

uint64_t sub_1000F9F64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1000F9F8C()
{
  sub_1000F9F64();

  return swift_deallocClassInstance();
}

id sub_1000FA020@<X0>(uint64_t a1@<X0>, char a2@<W1>, Class isa@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = URL.path.getter();
  LOBYTE(a5) = (*(a5 + 24))(v15);

  if (a5)
  {
    v16 = type metadata accessor for URL();
    sub_1000047A4(v16);
    (*(v17 + 16))(a6, a1, v16);

    return sub_10000A7C0(a6, 0, 1, v16);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v43 = ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 2 * *(v19 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v48 = a4;
    sub_100017E64(v47);
    sub_1000047A4(a4);
    v44 = v6;
    v42 = *(v20 + 16);
    v42();
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v47);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._object = 0x80000001001F7D60;
    v23._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    v24 = type metadata accessor for URL();
    v48 = v24;
    sub_100017E64(v47);
    sub_1000047A4(v24);
    v41 = *(v25 + 16);
    v41();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v47);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v27 = static os_log_type_t.debug.getter();
    sub_1000036B0(v27);

    v28 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    if (isa)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1000FA840();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v47[0] = 0;
    v32 = [v28 createDirectoryAtURL:v31 withIntermediateDirectories:a2 & 1 attributes:isa error:v47];

    v45 = v47[0];
    if (v32)
    {
      (v41)(a6, a1, v24);
      sub_10000A7C0(a6, 0, 1, v24);

      return v45;
    }

    else
    {
      v33 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v48 = a4;
      v34 = sub_100017E64(v47);
      (v42)(v34, v44, a4);
      v35 = AMSLogKey();
      if (v35)
      {
        v36 = v35;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v47);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v37._countAndFlagsBits = 0xD00000000000001CLL;
      v37._object = 0x80000001001F7D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
      swift_getErrorValue();
      v48 = v46;
      sub_100017E64(v47);
      sub_1000047A4(v46);
      (*(v38 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(v47);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
      LogInterpolation.init(stringInterpolation:)();
      v40 = static os_log_type_t.error.getter();
      sub_1000036B0(v40);

      return sub_10000A7C0(a6, 1, 1, v24);
    }
  }
}

uint64_t sub_1000FA784()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 contentsAtPath:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000FA840()
{
  result = qword_100269188;
  if (!qword_100269188)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMSFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FA978()
{
  result = qword_10026CFE8;
  if (!qword_10026CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CFE8);
  }

  return result;
}

void sub_1000FA9CC(uint64_t a1)
{
  *&v51 = 0x696669746E656469;
  *(&v51 + 1) = 0xEA00000000007265;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v53, a1, &v55);
  sub_10000E1E8(&v53);
  if (v56)
  {
    if (swift_dynamicCast())
    {
      v2 = v51;
      *&v51 = 1635017060;
      *(&v51 + 1) = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v53, a1, &v55);
      sub_10000E1E8(&v53);
      if (v56)
      {
        v3 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          v4 = v51;
          sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1001E5F60;
          v53 = 49;
          v54 = 0xE100000000000000;
          sub_1000058E4();
          *(inited + 96) = &type metadata for Int;
          *(inited + 72) = 25;
          v53 = 50;
          v54 = 0xE100000000000000;
          sub_1000058E4();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v2;
          v53 = 7565409;
          v54 = 0xE300000000000000;
          sub_1000058E4();
          *(inited + 240) = v3;
          *(inited + 216) = v4;

          v6 = Dictionary.init(dictionaryLiteral:)();
          *&v55 = 0x44746E756F636361;
          *(&v55 + 1) = 0xEB00000000444953;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v53, v4, &v51);

          sub_10000E1E8(&v53);
          if (!*(&v52 + 1))
          {
            sub_100002C5C(&v51);
LABEL_91:
            if (qword_1002685F8 != -1)
            {
              swift_once();
            }

            v42 = qword_10026A070;
            v43 = [objc_allocWithZone(AMSPushConfiguration) init];
            sub_1000FB2EC();
            swift_getObjectType();
            v44 = v43;
            swift_unknownObjectRetain();
            v45 = sub_1000FBC7C(v43, v42);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;
            v47 = [v45 shouldHandleNotification:isa];

            if (v47)
            {
              v48 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v45 handleNotification:v48];
            }

            else
            {
            }

            return;
          }

          sub_100002C4C(&v51, &v55);
          *&v51 = 48;
          *(&v51 + 1) = 0xE100000000000000;
          AnyHashable.init<A>(_:)();
          sub_100011BAC(&v55, &v51);
          v7 = String.init<A>(describing:)();
          v9 = HIBYTE(v8) & 0xF;
          v10 = v7 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0x2000000000000000) != 0)
          {
            v11 = HIBYTE(v8) & 0xF;
          }

          else
          {
            v11 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (!v11)
          {

            goto LABEL_83;
          }

          if ((v8 & 0x1000000000000000) != 0)
          {
            LOBYTE(v50[0]) = 0;
            v14 = sub_1000FB330(v7, v8, 10);
            v41 = v40;

            if (v41)
            {
              goto LABEL_83;
            }

            goto LABEL_89;
          }

          if ((v8 & 0x2000000000000000) != 0)
          {
            *&v51 = v7;
            *(&v51 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
            if (v7 == 43)
            {
              if (v9)
              {
                if (v9 != 1)
                {
                  sub_100023D8C();
                  while (1)
                  {
                    sub_1000031D0();
                    if (!v16 & v15)
                    {
                      break;
                    }

                    sub_100006CD8();
                    if (!v16)
                    {
                      break;
                    }

                    v14 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      break;
                    }

                    sub_100006448();
                    if (v16)
                    {
                      goto LABEL_82;
                    }
                  }
                }

                goto LABEL_81;
              }

LABEL_101:
              __break(1u);
              return;
            }

            if (v7 != 45)
            {
              if (v9)
              {
                v29 = &v51;
                while (*v29 - 48 <= 9)
                {
                  sub_100006CD8();
                  if (!v16)
                  {
                    break;
                  }

                  v14 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    break;
                  }

                  v29 = (v30 + 1);
                  if (v31 == 1)
                  {
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_81;
            }

            if (v9)
            {
              if (v9 != 1)
              {
                sub_100023D8C();
                while (1)
                {
                  sub_1000031D0();
                  if (!v16 & v15)
                  {
                    break;
                  }

                  sub_100006CD8();
                  if (!v16)
                  {
                    break;
                  }

                  v14 = v22 - v21;
                  if (__OFSUB__(v22, v21))
                  {
                    break;
                  }

                  sub_100006448();
                  if (v16)
                  {
                    goto LABEL_82;
                  }
                }
              }

              goto LABEL_81;
            }
          }

          else
          {
            if ((v7 & 0x1000000000000000) != 0)
            {
              v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = _StringObject.sharedUTF8.getter();
              v10 = v49;
            }

            v13 = *v12;
            if (v13 == 43)
            {
              if (v10 >= 1)
              {
                if (v10 != 1)
                {
                  v14 = 0;
                  if (v12)
                  {
                    while (1)
                    {
                      sub_1000031D0();
                      if (!v16 & v15)
                      {
                        goto LABEL_81;
                      }

                      sub_100006CD8();
                      if (!v16)
                      {
                        goto LABEL_81;
                      }

                      v14 = v24 + v23;
                      if (__OFADD__(v24, v23))
                      {
                        goto LABEL_81;
                      }

                      sub_100006448();
                      if (v16)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

                  goto LABEL_80;
                }

                goto LABEL_81;
              }

              goto LABEL_100;
            }

            if (v13 != 45)
            {
              if (v10)
              {
                v14 = 0;
                if (v12)
                {
                  while (1)
                  {
                    v27 = *v12 - 48;
                    if (v27 > 9)
                    {
                      goto LABEL_81;
                    }

                    v28 = 10 * v14;
                    if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                    {
                      goto LABEL_81;
                    }

                    v14 = v28 + v27;
                    if (__OFADD__(v28, v27))
                    {
                      goto LABEL_81;
                    }

                    ++v12;
                    if (!--v10)
                    {
                      goto LABEL_82;
                    }
                  }
                }

                goto LABEL_80;
              }

LABEL_81:
              v14 = 0;
              LOBYTE(v10) = 1;
LABEL_82:
              LOBYTE(v50[0]) = v10;
              v34 = v10;

              if (v34)
              {
LABEL_83:
                v35 = sub_10000C818(&v53);
                if (v36)
                {
                  v37 = v35;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v50[0] = v6;
                  v39 = v6[3];
                  sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
                  sub_10000E1E8(v6[6] + 40 * v37);
                  sub_100002C4C((v6[7] + 32 * v37), &v51);
                  _NativeDictionary._delete(at:)();
                }

                else
                {
                  v51 = 0u;
                  v52 = 0u;
                }

                sub_10000E1E8(&v53);
                sub_100002C5C(&v51);
                goto LABEL_90;
              }

LABEL_89:
              *(&v52 + 1) = &type metadata for Int;
              *&v51 = v14;
              sub_100002C4C(&v51, v50);
              swift_isUniquelyReferenced_nonNull_native();
              sub_1000AC178(v50, &v53);
              sub_10000E1E8(&v53);
LABEL_90:
              sub_100002C00(&v55);
              goto LABEL_91;
            }

            if (v10 >= 1)
            {
              if (v10 != 1)
              {
                v14 = 0;
                if (v12)
                {
                  while (1)
                  {
                    sub_1000031D0();
                    if (!v16 & v15)
                    {
                      goto LABEL_81;
                    }

                    sub_100006CD8();
                    if (!v16)
                    {
                      goto LABEL_81;
                    }

                    v14 = v18 - v17;
                    if (__OFSUB__(v18, v17))
                    {
                      goto LABEL_81;
                    }

                    sub_100006448();
                    if (v16)
                    {
                      goto LABEL_82;
                    }
                  }
                }

LABEL_80:
                LOBYTE(v10) = 0;
                goto LABEL_82;
              }

              goto LABEL_81;
            }

            __break(1u);
          }

          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      else
      {

        sub_100002C5C(&v55);
      }
    }
  }

  else
  {
    sub_100002C5C(&v55);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
  *(sub_10000BFB4() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  sub_10000B900();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v20 = static os_log_type_t.error.getter();
  sub_1000036B0(v20);
}