int64_t sub_1000130DC(id a1, NSArray *a2, NSArray *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] firstObject];
  v5 = [v8 firstObject];
  v7 = [v6 compare:?];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

uint64_t sub_100021030(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022C78(&qword_1000324C8, &unk_1000272A0);
    v2 = sub_100024428();
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
    sub_100022C1C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100023398(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100023398(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100023398(v31, v32);
    result = sub_1000243D8(v2[5]);
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
    result = sub_100023398(v32, (v2[7] + 32 * v10));
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

uint64_t sub_1000212F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100021384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to PFLTaskRunner.resolveTask(for:taskPreferences:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100021450;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100021450()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100021544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.ensureDataAvailability(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000215F4;

  return PFLTaskRunner.ensureDataAvailability(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_1000215F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000216E8()
{
  v1 = sub_100024208();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100021748()
{
  v1 = sub_100024218();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1000217A8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100021858;

  return (sub_100022F28)(a1);
}

uint64_t sub_100021858(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100021978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000233A8;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100021A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000233AC;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100021AD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021BA4(v11, 0, 0, 1, a1, a2);
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
    sub_100022C1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100022D6C(v11);
  return v7;
}

unint64_t sub_100021BA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100021CB0(a5, a6);
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
    result = sub_100024418();
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

char *sub_100021CB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100021CFC(a1, a2);
  sub_100021E2C(&off_10002C7C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100021CFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100021F18(v5, 0);
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

  result = sub_100024418();
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
        v10 = sub_100024398();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100021F18(v10, 0);
        result = sub_100024408();
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

uint64_t sub_100021E2C(uint64_t result)
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

  result = sub_100021F8C(result, v12, 1, v3);
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

void *sub_100021F18(uint64_t a1, uint64_t a2)
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

  sub_100022C78(&qword_1000324B0, &qword_100027280);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100021F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022C78(&qword_1000324B0, &qword_100027280);
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

unint64_t sub_100022080(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100024448();
  sub_100024378();
  v6 = sub_100024458();

  return sub_10002213C(a1, a2, v6);
}

unint64_t sub_1000220F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000243D8(*(v2 + 40));

  return sub_1000221F4(a1, v4);
}

unint64_t sub_10002213C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100024438())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000221F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100022DBC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000243E8();
      sub_100022D18(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000222BC()
{
  v0 = sub_100024318();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v57 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v57 - v10;
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v14 = AMD_DOMAIN_APPS;
  v15 = objc_allocWithZone(AMDClientRequestEvent);
  v16 = v14;
  v17 = sub_100024348();
  v18 = [v15 initWithFeatureName:v17 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v16 withCustomDescriptor:0 andSchemaVersion:0];

  if (!v18)
  {
    sub_1000241C8();
    v28 = sub_100024308();
    v29 = sub_1000243B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create AMDClientRequestEvent", v30, 2u);
    }

    (*(v1 + 8))(v5, v0);
    goto LABEL_16;
  }

  v19 = [objc_allocWithZone(AMDClient) init];
  v20 = [v19 getFeature:v18];

  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = sub_100024338();

  v58 = sub_100024358();
  v59 = v22;
  sub_1000243F8();
  if (!*(v21 + 16) || (v23 = sub_1000220F8(v60), (v24 & 1) == 0))
  {

    sub_100022D18(v60);
LABEL_13:
    sub_1000241C8();
    v31 = sub_100024308();
    v32 = sub_1000243B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get feature contains_arcade_plays from AMDClient", v33, 2u);
    }

    (*(v1 + 8))(v8, v0);
    goto LABEL_16;
  }

  sub_100022C1C(*(v21 + 56) + 32 * v23, v61);
  sub_100022D18(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v26 = v58;
  v25 = v59;
  if (v26 != sub_100024358() || v25 != v27)
  {
    v36 = sub_100024438();

    if (v36)
    {
      goto LABEL_20;
    }

    v58 = sub_100024358();
    v59 = v47;
    sub_1000243F8();
    if (*(v21 + 16) && (v48 = sub_1000220F8(v60), (v49 & 1) != 0))
    {
      sub_100022C1C(*(v21 + 56) + 32 * v48, v61);
      sub_100022D18(v60);

      if (swift_dynamicCast())
      {
        v51 = v58;
        v50 = v59;
LABEL_36:
        sub_1000241C8();

        v52 = sub_100024308();
        v53 = sub_1000243B8();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v60[0] = v55;
          *v54 = 136315138;
          v56 = sub_100021AD8(v51, v50, v60);

          *(v54 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to get feature contains_arcade_plays from AMDClient with error %s", v54, 0xCu);
          sub_100022D6C(v55);
        }

        else
        {
        }

        (*(v1 + 8))(v11, v0);
LABEL_16:
        v34 = 0;
        return v34 & 1;
      }
    }

    else
    {

      sub_100022D18(v60);
    }

    v50 = 0xE700000000000000;
    v51 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

LABEL_20:
  v58 = sub_100024358();
  v59 = v37;
  sub_1000243F8();
  if (!*(v21 + 16) || (v38 = sub_1000220F8(v60), (v39 & 1) == 0))
  {

    sub_100022D18(v60);
    goto LABEL_27;
  }

  sub_100022C1C(*(v21 + 56) + 32 * v38, v61);
  sub_100022D18(v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    sub_1000241C8();
    v40 = sub_100024308();
    v41 = sub_1000243B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136315138;
      v44 = sub_100024358();
      v46 = sub_100021AD8(v44, v45, v60);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "No %s returned from AMDClient", v42, 0xCu);
      sub_100022D6C(v43);
    }

    (*(v1 + 8))(v13, v0);
    goto LABEL_16;
  }

  if (v58 == 1702195828 && v59 == 0xE400000000000000)
  {

    v34 = 1;
  }

  else
  {
    v34 = sub_100024438();
  }

  return v34 & 1;
}

uint64_t sub_100022A64()
{
  v0 = sub_1000242C8();
  if (!*(v0 + 16))
  {
  }

  v1 = sub_100022080(0xD000000000000010, 0x8000000100029EC0);
  if ((v2 & 1) == 0)
  {
  }

  sub_100022C1C(*(v0 + 56) + 32 * v1, v9);

  sub_100022C78(&qword_1000324A0, &qword_100027278);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (!*(v8 + 16))
  {
  }

  v4 = sub_100022080(0xD000000000000015, 0x8000000100029EE0);
  if ((v5 & 1) == 0)
  {
  }

  sub_100022C1C(*(v8 + 56) + 32 * v4, v9);

  result = swift_dynamicCast();
  if (result && (v8 & 1) != 0)
  {
    v6 = sub_1000242D8();
    sub_100022CC0();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PFLError.dataNotAvailable(_:), v6);
    if (sub_1000222BC())
    {
    }

    else
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100022C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022C78(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100022CC0()
{
  result = qword_1000324A8;
  if (!qword_1000324A8)
  {
    sub_1000242D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324A8);
  }

  return result;
}

uint64_t sub_100022D6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100022E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022C78(&qword_1000324B8, &qword_100027290);
    v3 = sub_100024428();
    v4 = a1 + 32;

    while (1)
    {
      sub_100023328(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100022080(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100023398(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100022F28(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100022FB8, 0, 0);
}

uint64_t sub_100022FB8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = objc_allocWithZone(AMDDODMLTask);
  v6 = sub_100024348();
  v7 = [v5 initWithErrorDomain:v6];

  v8 = sub_1000242C8();
  sub_100021030(v8);

  v9 = objc_allocWithZone(MLRTaskParameters);
  isa = sub_100024328().super.isa;

  v11 = [v9 initWithParametersDict:isa];

  sub_1000242B8();
  v12 = objc_allocWithZone(MLRTaskAttachments);
  sub_100024148();
  v13 = sub_1000243A8().super.isa;

  v14 = [v12 initWithURLs:v13];

  v15 = [objc_allocWithZone(MLRTask) initWithParameters:v11 attachments:v14];
  v0[2] = 0;
  v16 = [v7 performTask:v15 error:v0 + 2];
  v17 = v0[2];
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v20 = [v18 JSONResult];
    if (v20)
    {
      v21 = v20;
      sub_100024338();
    }

    else
    {
      sub_100022E18(&_swiftEmptyArrayStorage);
    }

    v25 = [v18 vector];
    if (v25)
    {
      v26 = v25;
      sub_100024158();
    }

    v27 = sub_1000241E8();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1000241D8();

    v31 = v0[1];

    return v31(v30);
  }

  else
  {
    v22 = v17;
    sub_100024138();

    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100023328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022C78(&qword_1000324C0, &qword_100027298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100023398(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000233B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100024134;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100023460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100023508;

  return sub_100023998(a1);
}

uint64_t sub_100023508(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100023604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000236E8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000236E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000237DC(uint64_t a1)
{
  v2 = sub_100023944();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100023888();
  sub_100024168();
  return 0;
}

unint64_t sub_100023888()
{
  result = qword_1000324D0;
  if (!qword_1000324D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324D0);
  }

  return result;
}

unint64_t sub_100023944()
{
  result = qword_1000324D8;
  if (!qword_1000324D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324D8);
  }

  return result;
}

uint64_t sub_100023998(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_100024278();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_1000242A8();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100023AB4, 0, 0);
}

uint64_t sub_100023AB4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v29 = v0[10];
    v8 = sub_100024358();
    v10 = v9;

    v0[7] = &type metadata for PFLASLExperimental;
    sub_100022C78(&qword_1000324E0, &qword_100027378);
    sub_100024368();
    sub_100022C78(&qword_1000324E8, &qword_100027380);
    v11 = *(v4 + 72);
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000272B0;

    sub_100024298();
    sub_100024288();
    v0[8] = v13;
    sub_1000240A0(&qword_1000324F0, &type metadata accessor for PFLPluginConsent);
    sub_100022C78(&qword_1000324F8, &qword_100027388);
    sub_100023FF4();
    sub_1000243C8();
    (*(v7 + 104))(v6, enum case for PFLTaskSource.CKProd(_:), v29);
    v14 = sub_1000242F8();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v0[16] = sub_1000242E8();
    v32._countAndFlagsBits = 0x6F44726F7272452ELL;
    v32._object = 0xEC0000006E69616DLL;
    sub_100024388(v32);
    v17 = type metadata accessor for PFLAMDODMLTaskRunner();
    v18 = swift_allocObject();
    v0[17] = v18;
    *(v18 + 16) = v8;
    *(v18 + 24) = v10;
    v0[5] = v17;
    v19 = sub_1000240A0(&qword_100032508, type metadata accessor for PFLAMDODMLTaskRunner);
    v0[2] = v18;
    v0[6] = v19;
    v20 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
    v30 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_100023E68;
    v22 = v0[9];

    return (v30)(v22, v0 + 2);
  }

  else
  {
    v24 = objc_allocWithZone(sub_100024188());
    v25 = sub_100024178();
    v26 = v0[15];
    v27 = v0[12];

    v28 = v0[1];

    return v28(v25);
  }
}

uint64_t sub_100023E68(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(v2 + 152) = a1;

  sub_1000240E8((v2 + 16));

  return _swift_task_switch(sub_100023F70, 0, 0);
}

uint64_t sub_100023F70()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];

  v6 = v0[1];

  return v6(v3);
}

unint64_t sub_100023FF4()
{
  result = qword_100032500;
  if (!qword_100032500)
  {
    sub_100024058(&qword_1000324F8, &qword_100027388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032500);
  }

  return result;
}

uint64_t sub_100024058(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000240A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000240E8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}