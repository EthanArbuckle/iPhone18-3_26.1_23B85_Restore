id sub_187A8()
{
  v1 = v0;
  sub_2294(&unk_42710, &unk_330F0);
  v2 = *v0;
  v3 = sub_317E0();
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

void *sub_18914()
{
  v1 = v0;
  sub_2294(&unk_42720, &unk_33110);
  v2 = *v0;
  v3 = sub_317E0();
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

void *sub_18A84()
{
  v1 = v0;
  sub_2294(&qword_426E8, &qword_330D0);
  v2 = *v0;
  v3 = sub_317E0();
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

void *sub_18BE0()
{
  v1 = v0;
  sub_2294(&qword_42680, &qword_33018);
  v2 = *v0;
  v3 = sub_317E0();
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

void *sub_18D48()
{
  v1 = v0;
  sub_2294(&qword_42678, &qword_33010);
  v2 = *v0;
  v3 = sub_317E0();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_1B968(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B9C4(v19, *(v4 + 56) + v17);
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

void *sub_18EC4()
{
  sub_2294(&qword_42730, &qword_33138);
  v26 = v0;
  v1 = *v0;
  v27 = sub_317E0();
  v28 = v1;
  if (*(v1 + 16))
  {
    result = (v27 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v27 + 16) = *(v28 + 16);
    v7 = 1 << *(v28 + 32);
    v8 = *(v28 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = *(*(v28 + 48) + 8 * v15);
        v17 = *(v28 + 56) + 48 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        *(*(v27 + 48) + 8 * v15) = v16;
        v24 = *(v27 + 56) + 48 * v15;
        *v24 = v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        v25 = v16;
        result = sub_1BBC8(v18, v19, v20, v21, v22, v23);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v27;
  }

  return result;
}

void *sub_190B0(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2294(a1, a2);
  v5 = *v3;
  v6 = sub_317E0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_B61C(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_19250(void *a1, int64_t a2, char a3)
{
  result = sub_192D0(a1, a2, a3, *v3, &qword_426C0, &qword_330A8, &qword_426B8, &qword_330A0);
  *v3 = result;
  return result;
}

void *sub_19290(void *a1, int64_t a2, char a3)
{
  result = sub_192D0(a1, a2, a3, *v3, &qword_426D0, &qword_330B8, &qword_426B0, &qword_334C0);
  *v3 = result;
  return result;
}

void *sub_192D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2294(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2294(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1941C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_317C0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_317C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B678(&qword_42748, &qword_42740, &qword_33148);
          for (i = 0; i != v6; ++i)
          {
            sub_2294(&qword_42740, &qword_33148);
            v9 = sub_195CC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2294(&qword_42738, &qword_33140);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_195CC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_31700();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1964C;
  }

  __break(1u);
  return result;
}

void sub_19654(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v6 = sub_311B0();
  sub_8BFC(v6, qword_434B0);
  v7 = a1;

  v8 = sub_31190();
  v9 = sub_314C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v7 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = sub_28BCC(v12, v14, &v31);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_2294(&unk_42700, &qword_32CD0);
    v16 = sub_313F0();
    sub_1C65C(500, v16, v17, v18);
    v30 = v9;
    v19 = a3;

    v20 = sub_31360();
    v22 = v21;

    v23 = sub_28BCC(v20, v22, &v31);

    *(v10 + 14) = v23;
    a3 = v19;
    _os_log_impl(&dword_0, v8, v30, "-- Storing Values for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v24 = *(a3 + OBJC_IVAR___BMInternalManager_localStorage);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v7;
  v26[4] = sub_1C634;
  v26[5] = v25;
  v26[6] = a2;
  v27 = *(v24 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v26);
  v28 = v7;

  os_unfair_lock_lock(v27 + 4);
  sub_1CB04(&v31);
  os_unfair_lock_unlock(v27 + 4);
  v29 = v31;
  sub_2C458(v31, sub_1C644, v26);
}

void sub_199D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v6 = sub_311B0();
  sub_8BFC(v6, qword_434B0);
  swift_unknownObjectRetain();

  v7 = sub_31190();
  v8 = sub_314C0();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [a1 eventName];
    v11 = sub_31320();
    v13 = v12;

    v14 = sub_28BCC(v11, v13, &v29);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_2294(&unk_42700, &qword_32CD0);
    v15 = sub_313F0();
    sub_1C65C(500, v15, v16, v17);
    v28 = v8;
    v18 = a3;

    v19 = sub_31360();
    v21 = v20;

    v22 = sub_28BCC(v19, v21, &v29);

    *(v9 + 14) = v22;
    a3 = v18;
    _os_log_impl(&dword_0, v7, v28, "-- Storing Values for %s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(a3 + OBJC_IVAR___BMInternalManager_localStorage);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = a1;
  v25[4] = sub_1CACC;
  v25[5] = v24;
  v25[6] = a2;
  v26 = *(v23 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v25);
  swift_unknownObjectRetain_n();

  os_unfair_lock_lock(v26 + 4);
  sub_1CB04(&v29);
  os_unfair_lock_unlock(v26 + 4);
  v27 = v29;
  sub_2C458(v29, sub_1CABC, v25);
}

uint64_t sub_19D50(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_19E44;

  return v6(v2 + 16);
}

uint64_t sub_19E44()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

void sub_19F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 recordType] == &dword_0 + 1)
  {
    v10 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v11 = [a1 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = v10;
    v16[5] = sub_1CB1C;
    v16[6] = v15;
    v17 = *(v10 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v17 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v17 + 4);
    v18 = v34;
    v19 = sub_1BBB0;
  }

  else if ([a1 recordType])
  {
    if ([a1 recordType] != &dword_0 + 2)
    {
      return;
    }

    v20 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v21 = [a1 eventName];
    v22 = sub_31320();
    v24 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v22;
    v16[3] = v24;
    v16[4] = a2;
    *(v16 + 40) = 0;
    v16[6] = 0;
    v16[7] = v20;
    v16[8] = sub_1BB70;
    v16[9] = v25;
    v26 = *(v20 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v26 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v26 + 4);
    v18 = v34;
    v19 = sub_1BB78;
  }

  else
  {
    v27 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v28 = [a1 eventName];
    v29 = sub_31320();
    v31 = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v29;
    v16[3] = v31;
    v16[4] = v27;
    v16[5] = sub_1BB7C;
    v16[6] = v32;
    v33 = *(v27 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v33 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v33 + 4);
    v18 = v34;
    v19 = sub_1BB98;
  }

  sub_2C458(v18, v19, v16);
}

void sub_1A388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 recordType] == &dword_0 + 1)
  {
    v10 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v11 = [a1 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = v10;
    v16[5] = sub_1CB1C;
    v16[6] = v15;
    v17 = *(v10 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v17 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v17 + 4);
    v18 = v34;
    v19 = sub_1CA9C;
  }

  else if ([a1 recordType])
  {
    if ([a1 recordType] != &dword_0 + 2)
    {
      return;
    }

    v20 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v21 = [a1 eventName];
    v22 = sub_31320();
    v24 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v22;
    v16[3] = v24;
    v16[4] = a2;
    *(v16 + 40) = 0;
    v16[6] = 0;
    v16[7] = v20;
    v16[8] = sub_1CB00;
    v16[9] = v25;
    v26 = *(v20 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v26 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v26 + 4);
    v18 = v34;
    v19 = sub_1CAA8;
  }

  else
  {
    v27 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v28 = [a1 eventName];
    v29 = sub_31320();
    v31 = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v29;
    v16[3] = v31;
    v16[4] = v27;
    v16[5] = sub_1CB1C;
    v16[6] = v32;
    v33 = *(v27 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v33 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v33 + 4);
    v18 = v34;
    v19 = sub_1CA90;
  }

  sub_2C458(v18, v19, v16);
}

_BYTE *sub_1A79C(void *a1)
{
  v37 = a1;
  v2 = sub_310D0();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_31580();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_31530();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_31240();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v1[OBJC_IVAR___BMInternalManager_shouldScheduleUpdates] = 0;
  v35 = OBJC_IVAR___BMInternalManager_managerQueue;
  v13 = sub_1B8B4();
  v34[1] = "tor.ManagerConfiguration";
  v34[2] = v13;
  sub_31230();
  v42 = &_swiftEmptyArrayStorage;
  sub_1C938(&qword_42750, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2294(&qword_42940, &unk_33150);
  sub_B678(&unk_42760, &qword_42940, &unk_33150);
  sub_31690();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  v14 = v37;
  *&v1[v35] = sub_315A0();
  *&v1[OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem] = 0;
  type metadata accessor for Collector();
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000010;
  v15[3] = 0x8000000000034CE0;
  v15[4] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___BMInternalManager_collector] = v15;
  *&v1[OBJC_IVAR___BMInternalManager_configuration] = v14;
  v16 = v38;
  (*(v39 + 16))(v38, v14 + OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory, v40);
  v17 = type metadata accessor for LocalStorage();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v14;
  *&v1[OBJC_IVAR___BMInternalManager_localStorage] = sub_2B744(v16);
  v21 = type metadata accessor for Manager();
  v41.receiver = v1;
  v41.super_class = v21;
  v22 = objc_msgSendSuper2(&v41, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultCenter];
  [v25 addObserver:v24 selector:"onDidReceiveAppDidBackground:" name:UIApplicationWillResignActiveNotification object:0];

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v26 = sub_311B0();
  sub_8BFC(v26, qword_434B0);
  v27 = v20;
  v28 = sub_31190();
  v29 = sub_314B0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v14;
    v32 = v27;
    _os_log_impl(&dword_0, v28, v29, "Manager initiated with configuration %@", v30, 0xCu);
    sub_B5AC(v31, &qword_42790, &unk_334A0);
  }

  if (*(v27 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule) == 1)
  {
    v24[OBJC_IVAR___BMInternalManager_shouldScheduleUpdates] = 1;
    sub_11DD0();
  }

  return v24;
}

uint64_t sub_1AD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CAC8;

  return sub_27764(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AE50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AE88()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1AEE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AF20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF84(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1151C(a1, v1[2]);
}

uint64_t sub_1AF90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B06C;

  return sub_27764(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B06C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B18C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1CAC8;

  return sub_134B0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1B294(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_31850() & 1;
  }
}

uint64_t sub_1B348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3B8()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);

  v7 = sub_31180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v4, 1, v7))
  {
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (!v9(v0 + v5, 1, v7))
  {
    (*(v8 + 8))(v0 + v5, v7);
  }

  v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

void sub_1B558()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);

  sub_2DBA0(v8, v0 + v4, v0 + v5, v10, v11, v12, v13);
}

uint64_t sub_1B638()
{
  result = sub_310D0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B4()
{
  result = qword_42930;
  if (!qword_42930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_42930);
  }

  return result;
}

uint64_t sub_1B900()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA20()
{
  v0 = *(*(sub_2294(&unk_42690, &unk_33028) - 8) + 80);

  return sub_15A9C();
}

uint64_t sub_1BA9C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BAF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BB30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1BB58(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1BB64(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BC3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1BC8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CAC8;

  return sub_14C64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAC8;

  return sub_19D50(a1, v5);
}

uint64_t sub_1BE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_1470C(a1, v4, v5, v7, v6);
}

uint64_t sub_1BEE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B06C;

  return sub_19D50(a1, v5);
}

uint64_t sub_1BFA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_143C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0C0()
{
  v1 = sub_2294(&qword_426C8, &qword_330B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C16C(uint64_t a1)
{
  v3 = *(sub_2294(&qword_426C8, &qword_330B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_14B68(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C230(uint64_t a1, char a2)
{
  v4 = *(*(sub_2294(&qword_426C8, &qword_330B0) - 8) + 80);

  return sub_15158(a1, a2 & 1);
}

uint64_t sub_1C2BC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1C3C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1C430()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1C48C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_2294(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C55C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C59C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C5A8()
{
  result = qword_429B0;
  if (!qword_429B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_429B0);
  }

  return result;
}

uint64_t sub_1C5FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C65C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_31380();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1C6F8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1C704(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C710()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_106AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1C818()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1C880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAC8;

  return sub_16E64(a1, v5);
}

uint64_t sub_1C938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C994()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C9D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1CB2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dataType];
  v4 = sub_31320();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1CB84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rawHistoryToken];
  if (v3)
  {
    v4 = v3;
    v5 = sub_310F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1CBEC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = sub_310E0().super.isa;
  }

  v5 = isa;
  [v2 setRawHistoryToken:?];
}

id sub_1CD10()
{
  result = [v0 rawHistoryToken];
  if (result)
  {
    v2 = result;
    v3 = sub_310F0();
    v5 = v4;

    sub_B304(0, &qword_42770, NSKeyedUnarchiver_ptr);
    sub_B304(0, &qword_42778, NSPersistentHistoryToken_ptr);
    result = sub_314F0();
    if (result)
    {
      v6 = result;
      sub_B558(v3, v5);
      return v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CFB8(void *a1)
{
  v2 = v1;
  if (!a1)
  {
LABEL_9:
    v11.super.isa = 0;
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_10;
  }

  v4 = objc_opt_self();
  v23 = 0;
  v5 = a1;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
  v7 = v23;
  if (!v6)
  {
    v12 = v7;
    v13 = sub_31070();

    swift_willThrow();
    v23 = v13;
    sub_2294(&unk_42780, &qword_32CC0);
    sub_B304(0, &qword_424A8, NSError_ptr);
    swift_dynamicCast();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v14 = sub_311B0();
    sub_8BFC(v14, qword_434B0);
    v15 = v22;
    v16 = sub_31190();
    v17 = sub_314D0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_0, v16, v17, "Failed to create rawHistoryToken from data error: %@", v18, 0xCu);
      sub_1E8C0(v19);

      v15 = v16;
      v16 = v20;
    }

    goto LABEL_9;
  }

  v8 = sub_310F0();
  v10 = v9;

  v11.super.isa = sub_310E0().super.isa;
LABEL_10:
  [v2 setRawHistoryToken:v11.super.isa];

  return sub_B544(v8, v10);
}

void (*sub_1D264(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1CD10();
  return sub_1D2AC;
}

void sub_1D2AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_1CFB8(v2);
  }

  else
  {
    sub_1CFB8(*a1);
  }
}

id CDCloudSyncVersions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CDCloudSyncVersions();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

uint64_t sub_1D3E8()
{
  v1 = [*v0 dataType];
  v2 = sub_31320();

  return v2;
}

uint64_t sub_1D4A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D510()
{
  v1 = (v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1D568(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_1D628(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D688()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D6D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D78C()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D880()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D8C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D974()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DA68()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DBC8()
{
  v1 = v0;
  sub_316D0(103);
  v17._countAndFlagsBits = 0x6570795461746164;
  v17._object = 0xEA0000000000203ALL;
  sub_31390(v17);
  v2 = (v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  v18._countAndFlagsBits = v3;
  v18._object = v4;
  sub_31390(v18);

  v19._object = 0x8000000000034D30;
  v19._countAndFlagsBits = 0xD000000000000010;
  sub_31390(v19);
  v5 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  v16 = *(v1 + v5);
  v20._countAndFlagsBits = sub_31820();
  sub_31390(v20);

  v21._object = 0x8000000000034D50;
  v21._countAndFlagsBits = 0xD000000000000010;
  sub_31390(v21);
  v6 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  v15 = *(v1 + v6);
  v22._countAndFlagsBits = sub_31820();
  sub_31390(v22);

  v23._countAndFlagsBits = 0x6556636E7973202CLL;
  v23._object = 0xEF203A6E6F697372;
  sub_31390(v23);
  v7 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  v14 = *(v1 + v7);
  v24._countAndFlagsBits = sub_31820();
  sub_31390(v24);

  v25._countAndFlagsBits = 0x79726F7473696820;
  v25._object = 0xEE003A6E656B6F54;
  sub_31390(v25);
  v8 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_2294(&qword_427C8, &qword_33170);
  v26._countAndFlagsBits = sub_31340();
  sub_31390(v26);

  v27._countAndFlagsBits = 0xD000000000000014;
  v27._object = 0x8000000000034D70;
  sub_31390(v27);
  v10 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  v13 = *(v1 + v10);
  v28._countAndFlagsBits = sub_31820();
  sub_31390(v28);

  v11 = sub_31330();

  return v11;
}

void sub_1DEE0(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_31300();

  v7 = sub_31300();
  [a1 encodeObject:v6 forKey:v7];

  v8 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_31300();
  [a1 encodeInt64:v9 forKey:v10];

  v11 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = sub_31300();
  [a1 encodeInt64:v12 forKey:v13];

  v14 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = sub_31300();
  [a1 encodeInt64:v15 forKey:v16];

  v17 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = sub_31300();
  [a1 encodeObject:v18 forKey:v19];

  v20 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = sub_31300();
  [a1 encodeInt64:v21 forKey:v22];
}

uint64_t CDMutableCloudSyncVersions.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken) = 0;
  sub_B304(0, &qword_427D0, NSString_ptr);
  v5 = sub_31650();
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v6 = v5;
    sub_31310();
  }

  type metadata accessor for CDMutableCloudSyncVersions();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1E534(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1E5BC()
{
  v1 = (*v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void *sub_1E618()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E668()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E6B0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E6F8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E740()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

id sub_1E788(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken] = 0;
  v5 = [a1 dataType];
  v6 = sub_31320();
  v8 = v7;

  v9 = &a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType];
  *v9 = v6;
  v9[1] = v8;
  v10 = [a1 cloudVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion] = v10;
  v11 = [a1 localVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion] = v11;
  v12 = [a1 syncVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion] = v12;
  v13 = sub_1CD10();
  swift_beginAccess();
  v14 = *&a2[v4];
  *&a2[v4] = v13;

  v15 = [a1 historyTokenOffset];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset] = v15;
  v17.receiver = a2;
  v17.super_class = type metadata accessor for CDMutableCloudSyncVersions();
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1E8C0(uint64_t a1)
{
  v2 = sub_2294(&qword_42790, &unk_334A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E95C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_31300();
  [v4 setDataType:v5];
}

id sub_1E9E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historyTokenOffset];
  *a2 = result;
  return result;
}

id sub_1EA34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cloudVersion];
  *a2 = result;
  return result;
}

id sub_1EA88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 localVersion];
  *a2 = result;
  return result;
}

id sub_1EADC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 syncVersion];
  *a2 = result;
  return result;
}

id sub_1EB24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CD10();
  *a2 = result;
  return result;
}

uint64_t sub_1EB50(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_1CFB8(v2);
}

uint64_t sub_1EB80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1EBDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1EC9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1ECFC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

Swift::Void __swiftcall LocalStorage.purgeAllIfNeeded()()
{
  v1 = sub_31180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_20650(&v15 - v7);
  sub_31140();
  v9 = sub_31130();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  if (v9)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = sub_208E8;
    v12[4] = v11;
    v13 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v12);
    *(&v15 - 2) = sub_1AE18;
    *(&v15 - 1) = v0;
    swift_retain_n();

    os_unfair_lock_lock(v13 + 4);
    sub_209F0(&v16);
    os_unfair_lock_unlock(v13 + 4);
    v14 = v16;
    sub_2C458(v16, sub_1B16C, v12);
  }
}

Swift::Void __swiftcall LocalStorage.forcePurgeAll()()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  v2[2] = v0;
  v2[3] = sub_1B160;
  v2[4] = v1;
  v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_retain_n();

  os_unfair_lock_lock(v3 + 4);
  sub_21F5C(&v5);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v5;
  sub_2C458(v5, sub_1CB28, v2);
}

void sub_1F5F0(unint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v10 = sub_317C0();
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  swift_beginAccess();
  if (!v10)
  {
LABEL_18:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_21DAC();
    }

    return;
  }

  v11 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_31700();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_getObjectType();
      sub_2137C(v12, v15);
    }

    swift_unknownObjectRelease();
    ++v11;
    if (v13 == v10)
    {
      goto LABEL_18;
    }
  }

  if (v11 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(a1 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_3:
  v3 = sub_311B0();
  sub_8BFC(v3, qword_434B0);
  swift_errorRetain();
  oslog = sub_31190();
  v4 = sub_314D0();
  sub_21DA0(a1, 1);
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_318A0();
    v9 = sub_28BCC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v4, "Something wrong happened while fetching all configuration: %s", v5, 0xCu);
    sub_9170(v6);
  }

  else
  {
  }
}

void sub_1F8B8(unint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v10 = sub_317C0();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      return;
    }
  }

  v11 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_31700();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_12:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1FB40(v12);
    }

    swift_unknownObjectRelease();
    ++v11;
    if (v13 == v10)
    {
      return;
    }
  }

  if (v11 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(a1 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_3:
  v3 = sub_311B0();
  sub_8BFC(v3, qword_434B0);
  swift_errorRetain();
  oslog = sub_31190();
  v4 = sub_314D0();
  sub_21DA0(a1, 1);
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_318A0();
    v9 = sub_28BCC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v4, "Something wrong happened while fetching all configuration: %s", v5, 0xCu);
    sub_9170(v6);
  }

  else
  {
LABEL_17:
  }
}

void sub_1FB40(void *a1)
{
  v2 = a1;
  v3 = [a1 eventName];
  v4 = sub_31320();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v7 + 4);
  sub_21F5C(&v39);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v39;
  v9 = sub_AA04(v4, v6);

  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    for (i = v2; v11; i = v2)
    {
      v12 = 0;
      v38 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v38)
        {
          v13 = sub_31700();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_13;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        __chkstk_darwin(v13);
        v2 = v11;
        v16 = v9;
        v17 = v10;
        os_unfair_lock_lock(v7 + 4);
        sub_21F5C(&v39);
        os_unfair_lock_unlock(v7 + 4);
        v18 = v39;
        [v39 deleteObject:v14];

        v10 = v17;
        v9 = v16;
        v11 = v2;
        ++v12;
        if (v15 == v2)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v11 = sub_317C0();
    }

LABEL_15:

    __chkstk_darwin(v19);
    os_unfair_lock_lock(v7 + 4);
    sub_21F5C(&v39);
    os_unfair_lock_unlock(v7 + 4);
    v20 = v39;
    v39 = 0;
    v21 = [v20 save:&v39];

    v22 = v39;
    if (v21)
    {

      v23 = v22;
    }

    else
    {
      v24 = v39;
      sub_31070();

      swift_willThrow();
      if (qword_42220 != -1)
      {
        swift_once();
      }

      v25 = sub_311B0();
      sub_8BFC(v25, qword_434B0);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v26 = sub_31190();
      v27 = sub_314D0();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = [i eventName];
        v30 = sub_31320();
        v32 = v31;

        v33 = sub_28BCC(v30, v32, &v39);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        swift_getErrorValue();
        v34 = sub_318A0();
        v36 = sub_28BCC(v34, v35, &v39);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_0, v26, v27, "Something wrong happened while deleting properties from the local storage %s: %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall LocalStorage.purge(propertyName:)(Swift::String propertyName)
{
  object = propertyName._object;
  countAndFlagsBits = propertyName._countAndFlagsBits;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  v6[2] = countAndFlagsBits;
  v6[3] = object;
  v6[4] = v1;
  v6[5] = sub_20A70;
  v6[6] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_bridgeObjectRetain_n();

  os_unfair_lock_lock(v7 + 4);
  sub_21F5C(&v9);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v9;
  sub_2C458(v9, sub_20AC8, v6);
}

void sub_20188(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v8 = sub_311B0();
    sub_8BFC(v8, qword_434B0);
    sub_1BB58(a1, 1);

    oslog = sub_31190();
    v9 = sub_314D0();

    sub_1BB64(a1, 1);
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_28BCC(a4, a5, v16);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, v16);

      *(v10 + 14) = v13;
      _os_log_impl(&dword_0, oslog, v9, "No configuration found to purge %s: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_20AD8(a1, Strong);
      sub_1BB64(a1, 0);
    }
  }
}

uint64_t sub_203CC(id *a1)
{
  v2 = sub_31180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = [*a1 createdAt];
  if (v10)
  {
    v11 = v10;
    sub_31160();

    (*(v3 + 32))(v9, v7, v2);
    sub_21D48();
    v12 = sub_312F0();
    (*(v3 + 8))(v9, v2);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_2053C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_317C0();
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_31700();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_20650@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2294(&qword_42490, &qword_32CB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_31300();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    sub_31680();
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
    v9 = sub_31180();
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v5, 1, v9) != 1)
    {
      return (*(v11 + 32))(a1, v5, v9);
    }
  }

  else
  {
    sub_B5AC(v16, &qword_42260, &qword_32880);
    v13 = sub_31180();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_B5AC(v5, &qword_42490, &qword_32CB0);
  return sub_31150();
}

uint64_t sub_208B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2090C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_317C0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_31710();
  *v1 = result;
  return result;
}

void *sub_209AC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_20A20(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_20A80()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_20AD8(void *a1, char *a2)
{
  v79 = a2;
  p_type = sub_31180();
  v77 = *(p_type - 8);
  v4 = *(v77 + 64);
  __chkstk_darwin(p_type);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 ageToExpire];
  v78 = a1;
  v8 = [a1 countLimit];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v10 = v8;
  v11 = [v78 eventName];
  v12 = sub_31320();
  v14 = v13;

  v15 = *&v79[OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock];
  __chkstk_darwin(v16);
  *(&v74 - 2) = sub_1CAE4;
  *(&v74 - 1) = v17;
  os_unfair_lock_lock(v15 + 4);
  sub_21F5C(&v81);
  os_unfair_lock_unlock(v15 + 4);
  v18 = v81;
  v19 = sub_AA04(v12, v14);

  if (!v19)
  {
    return;
  }

  v81 = _swiftEmptyArrayStorage;
  v20 = v19 >> 62;
  if (v19 >> 62)
  {
    goto LABEL_63;
  }

  v21 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (v10 < v21)
  {
LABEL_8:
    v22 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v10;
      if (!__OFADD__(v22, 1))
      {
        v76 = v21;
        if (v20)
        {
          if (sub_317C0() < 0)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          v24 = sub_317C0();
          v21 = v76;
        }

        else
        {
          v24 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        }

        if (v24 >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v75 = v20;
              type metadata accessor for CDProperty();

              v25 = 0;
              do
              {
                v26 = v25 + 1;
                sub_316F0(v25);
                v25 = v26;
              }

              while (v10 != v26);
              v20 = v75;
              v21 = v76;
              if (v75)
              {

                v30 = sub_317D0();
LABEL_24:
                sub_21C44(v30, v27, v28, v29);
                swift_unknownObjectRelease();
                goto LABEL_25;
              }
            }

            else
            {
            }

            v28 = 0;
            v30 = v19 & 0xFFFFFFFFFFFFFF8;
            v27 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
            v29 = (2 * v23) | 1;
            goto LABEL_24;
          }

          goto LABEL_72;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
LABEL_58:
        v61 = sub_311B0();
        sub_8BFC(v61, qword_434B0);
        v62 = v78;
        swift_errorRetain();
        v63 = sub_31190();
        v64 = sub_314D0();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v65 = 136315394;
          v66 = [v62 eventName];
          v67 = sub_31320();
          v69 = v68;

          v70 = sub_28BCC(v67, v69, &v81);

          *(v65 + 4) = v70;
          *(v65 + 12) = 2080;
          swift_getErrorValue();
          v71 = sub_318A0();
          v73 = sub_28BCC(v71, v72, &v81);

          *(v65 + 14) = v73;
          _os_log_impl(&dword_0, v63, v64, "Something wrong happened while deleting properties from the local storage %s: %s", v65, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
LABEL_25:
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_48;
    }

    if (__OFSUB__(0, v7))
    {
      goto LABEL_70;
    }

    v32 = sub_31140();
    __chkstk_darwin(v32);
    *(&v74 - 2) = v6;
    sub_2053C(sub_21C24, (&v74 - 4), v19);
    if (v34)
    {
      v35 = v21;
    }

    else
    {
      v35 = v33;
    }

    if (v35 > 0 && v21 >= v35)
    {
      if (v20)
      {
        if (sub_317C0() < 0)
        {
          goto LABEL_76;
        }

        v36 = sub_317C0();
      }

      else
      {
        v36 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      if (v36 < v35)
      {
        goto LABEL_75;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        type metadata accessor for CDProperty();

        v37 = 0;
        do
        {
          v38 = v37 + 1;
          sub_316F0(v37);
          v37 = v38;
        }

        while (v35 != v38);
        if (v20)
        {

          v39 = sub_317D0();
          v41 = v40;
          v43 = v42;
          v45 = v44;

          v46 = v45;
          v47 = v41;
          v48 = v43;
LABEL_46:
          sub_21C44(v39, v47, v48, v46);
          swift_unknownObjectRelease();
          goto LABEL_47;
        }
      }

      else
      {
      }

      v48 = 0;
      v39 = v19 & 0xFFFFFFFFFFFFFF8;
      v47 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
      v46 = (2 * v35) | 1;
      goto LABEL_46;
    }

LABEL_47:
    v31 = (*(v77 + 8))(v6, p_type);
LABEL_48:
    v49 = v81;
    if (!(v81 >> 62))
    {
      v6 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
      v77 = v81;
      if (!v6)
      {
        break;
      }

      goto LABEL_50;
    }

    v31 = sub_317C0();
    v6 = v31;
    v77 = v49;
    if (!v31)
    {
      break;
    }

LABEL_50:
    v7 = 0;
    v20 = v49 & 0xFFFFFFFFFFFFFF8;
    v10 = v49 + 32;
    p_type = &stru_40FF0.type;
    while (v7 < *(v20 + 16))
    {
      v50 = *(v10 + 8 * v7);
      __chkstk_darwin(v31);
      v51 = v79;
      *(&v74 - 2) = sub_1CAE4;
      *(&v74 - 1) = v51;
      v19 = v52;
      os_unfair_lock_lock(v15 + 4);
      sub_21F5C(v80);
      ++v7;
      os_unfair_lock_unlock(v15 + 4);
      v53 = v80[0];
      [v80[0] deleteObject:v19];

      if (v6 == v7)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_63:
    v21 = sub_317C0();
    if (v10 < v21)
    {
      goto LABEL_8;
    }
  }

LABEL_53:

  __chkstk_darwin(v54);
  v55 = v79;
  *(&v74 - 2) = sub_1CAE4;
  *(&v74 - 1) = v55;
  os_unfair_lock_lock(v15 + 4);
  sub_21F5C(v80);
  os_unfair_lock_unlock(v15 + 4);
  v56 = v80[0];
  v80[0] = 0;
  v57 = [v56 save:v80];

  v58 = v80[0];
  if ((v57 & 1) == 0)
  {
    v79 = v80[0];
    v60 = v80[0];
    sub_31070();

    swift_willThrow();
    if (qword_42220 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  v59 = v58;
}

void sub_2137C(void *a1, char *a2)
{
  v79 = a2;
  p_type = sub_31180();
  v78 = *(p_type - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(p_type);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 ageToExpire];
  v8 = [a1 countLimit];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v10 = v8;
  v77 = a1;
  v11 = [a1 eventName];
  v12 = sub_31320();
  v14 = v13;

  v15 = *&v79[OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock];
  __chkstk_darwin(v16);
  *(&v74 - 2) = sub_1CAE4;
  *(&v74 - 1) = v17;
  os_unfair_lock_lock(v15 + 4);
  sub_21F5C(&v81);
  os_unfair_lock_unlock(v15 + 4);
  v18 = v81;
  v19 = sub_AA04(v12, v14);

  if (!v19)
  {
    return;
  }

  v81 = &_swiftEmptyArrayStorage;
  v20 = v19 >> 62;
  if (v19 >> 62)
  {
    goto LABEL_63;
  }

  v21 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (v10 < v21)
  {
LABEL_8:
    v22 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v10;
      if (!__OFADD__(v22, 1))
      {
        v76 = v21;
        if (v20)
        {
          if (sub_317C0() < 0)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          v24 = sub_317C0();
          v21 = v76;
        }

        else
        {
          v24 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        }

        if (v24 >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v75 = v20;
              type metadata accessor for CDProperty();

              v25 = 0;
              do
              {
                v26 = v25 + 1;
                sub_316F0(v25);
                v25 = v26;
              }

              while (v10 != v26);
              v20 = v75;
              v21 = v76;
              if (v75)
              {

                v30 = sub_317D0();
LABEL_24:
                sub_21C44(v30, v27, v28, v29);
                swift_unknownObjectRelease();
                goto LABEL_25;
              }
            }

            else
            {
            }

            v28 = 0;
            v30 = v19 & 0xFFFFFFFFFFFFFF8;
            v27 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
            v29 = (2 * v23) | 1;
            goto LABEL_24;
          }

          goto LABEL_72;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
LABEL_58:
        v61 = sub_311B0();
        sub_8BFC(v61, qword_434B0);
        v62 = v77;
        swift_unknownObjectRetain();
        swift_errorRetain();
        v63 = sub_31190();
        v64 = sub_314D0();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v65 = 136315394;
          v66 = [v62 eventName];
          v67 = sub_31320();
          v69 = v68;

          v70 = sub_28BCC(v67, v69, &v81);

          *(v65 + 4) = v70;
          *(v65 + 12) = 2080;
          swift_getErrorValue();
          v71 = sub_318A0();
          v73 = sub_28BCC(v71, v72, &v81);

          *(v65 + 14) = v73;
          _os_log_impl(&dword_0, v63, v64, "Something wrong happened while deleting properties from the local storage %s: %s", v65, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
LABEL_25:
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_48;
    }

    if (__OFSUB__(0, v7))
    {
      goto LABEL_70;
    }

    v32 = sub_31140();
    __chkstk_darwin(v32);
    *(&v74 - 2) = v6;
    sub_2053C(sub_21F78, (&v74 - 4), v19);
    if (v34)
    {
      v35 = v21;
    }

    else
    {
      v35 = v33;
    }

    if (v35 > 0 && v21 >= v35)
    {
      if (v20)
      {
        if (sub_317C0() < 0)
        {
          goto LABEL_76;
        }

        v36 = sub_317C0();
      }

      else
      {
        v36 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      if (v36 < v35)
      {
        goto LABEL_75;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        type metadata accessor for CDProperty();

        v37 = 0;
        do
        {
          v38 = v37 + 1;
          sub_316F0(v37);
          v37 = v38;
        }

        while (v35 != v38);
        if (v20)
        {

          v39 = sub_317D0();
          v41 = v40;
          v43 = v42;
          v45 = v44;

          v46 = v45;
          v47 = v41;
          v48 = v43;
LABEL_46:
          sub_21C44(v39, v47, v48, v46);
          swift_unknownObjectRelease();
          goto LABEL_47;
        }
      }

      else
      {
      }

      v48 = 0;
      v39 = v19 & 0xFFFFFFFFFFFFFF8;
      v47 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
      v46 = (2 * v35) | 1;
      goto LABEL_46;
    }

LABEL_47:
    v31 = (*(v78 + 8))(v6, p_type);
LABEL_48:
    v49 = v81;
    if (!(v81 >> 62))
    {
      v6 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
      v78 = v81;
      if (!v6)
      {
        break;
      }

      goto LABEL_50;
    }

    v31 = sub_317C0();
    v6 = v31;
    v78 = v49;
    if (!v31)
    {
      break;
    }

LABEL_50:
    v7 = 0;
    v20 = v49 & 0xFFFFFFFFFFFFFF8;
    v10 = v49 + 32;
    p_type = &stru_40FF0.type;
    while (v7 < *(v20 + 16))
    {
      v50 = *(v10 + 8 * v7);
      __chkstk_darwin(v31);
      v51 = v79;
      *(&v74 - 2) = sub_1CAE4;
      *(&v74 - 1) = v51;
      v19 = v52;
      os_unfair_lock_lock(v15 + 4);
      sub_21F5C(v80);
      ++v7;
      os_unfair_lock_unlock(v15 + 4);
      v53 = v80[0];
      [v80[0] deleteObject:v19];

      if (v6 == v7)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_63:
    v21 = sub_317C0();
    if (v10 < v21)
    {
      goto LABEL_8;
    }
  }

LABEL_53:

  __chkstk_darwin(v54);
  v55 = v79;
  *(&v74 - 2) = sub_1CAE4;
  *(&v74 - 1) = v55;
  os_unfair_lock_lock(v15 + 4);
  sub_21F5C(v80);
  os_unfair_lock_unlock(v15 + 4);
  v56 = v80[0];
  v80[0] = 0;
  v57 = [v56 save:v80];

  v58 = v80[0];
  if (!v57)
  {
    v79 = v80[0];
    v60 = v80[0];
    sub_31070();

    swift_willThrow();
    if (qword_42220 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  v59 = v58;
}

uint64_t sub_21C44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_317C0();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_2090C(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1) - *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for CDProperty();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_21D48()
{
  result = qword_428F0;
  if (!qword_428F0)
  {
    sub_31180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_428F0);
  }

  return result;
}

uint64_t sub_21DA0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21DAC()
{
  v0 = sub_31180();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  sub_31170();
  isa = sub_31120().super.isa;
  (*(v1 + 8))(v4, v0);
  v8 = sub_31300();
  [v6 setObject:isa forKey:v8];

  v9 = [v5 standardUserDefaults];
  [v9 synchronize];
}

void *sub_21F18@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_21F94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a2;
  v10[6] = a1;
  v11 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  swift_unknownObjectRetain();

  os_unfair_lock_lock(v11 + 4);
  sub_1CB04(&v20);
  os_unfair_lock_unlock(v11 + 4);
  v12 = v20;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = sub_23A34;
  v13[4] = v10;

  v14 = [a2 eventName];
  v15 = sub_31320();
  v17 = v16;

  swift_unknownObjectRetain();
  v18 = v12;

  sub_C390(v15, v17, v18, v18, a2, sub_23A88);

  swift_unknownObjectRelease();
}

void sub_2214C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, char **a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    a3(a1, 1);
  }

  else
  {
    v11 = *(a7 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(a1);
    v13 = v12;
    os_unfair_lock_lock(v11 + 4);
    sub_1CB04(&v15);
    os_unfair_lock_unlock(v11 + 4);
    v14 = v15;

    sub_9D94(a5, a6, v14, v13, a3, a4);
  }
}

uint64_t sub_22254(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v6 = sub_311B0();
    sub_8BFC(v6, qword_434B0);
    swift_errorRetain();
    v7 = sub_31190();
    v8 = sub_314D0();
    sub_1C704(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Error while inserting property objects to Core Data: %s", v9, 0xCu);
      sub_9170(v10);
    }

    v14 = a1;
    v15 = 1;
  }

  else
  {
    v16 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);
    sub_2294(&qword_42900, qword_33228);
    sub_23A98();
    sub_311D0();
    v14 = 0;
    v15 = 0;
  }

  return a4(v14, v15);
}

void sub_22430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1CB04(&v11);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v11;
  sub_7B3C(a1, a2, v11, a4, a5);
}

void sub_224DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1CB04(&v11);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v11;
  sub_612C(a1, a2, v11, a4, a5);
}

uint64_t sub_22588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, uint64_t))
{
  v13 = *(a6 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v20);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v20;
  sub_2294(&qword_42440, &unk_32AB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_32A60;
  *(v15 + 32) = 7955819;
  *(v15 + 40) = 0xE300000000000000;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = a1;
  *(v15 + 72) = a2;
  swift_retain_n();

  v16 = sub_31300();
  isa = sub_313D0().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  sub_6144(v18, 0, 0, a3, a4, a5, v14, a7);
}

void sub_22740(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t), uint64_t a7)
{
  v13 = *(a5 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v15);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v15;
  _s19EngagementCollector10CDPropertyC21fetchCollectionValues22propertyConfigurations8assetIDs15sortByCreatedAt5limit7context10completionySayAA21PropertyConfiguration_pG_ShySSGSgSbSiSo22NSManagedObjectContextCys6ResultOySayAaK_p_AA0R5ValueOtGs5Error_pGctFZ_0(a1, a2, a3, a4, v15, a6, a7);
}

void sub_22804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2294(&qword_428F8, &qword_33220);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  (*(v7 + 16))(&v15[-v9], a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v16 = sub_1AE18;
  v17 = a2;

  os_unfair_lock_lock(v13 + 4);
  sub_1AE34(&v18);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v18;
  sub_2C458(v18, sub_23974, v12);
}

uint64_t sub_229B4(unint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = &_swiftEmptyDictionarySingleton;
LABEL_16:
    v26 = v4;
    sub_2294(&qword_428F8, &qword_33220);
    return sub_31440();
  }

  v24 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v3 = (a1 + 40);
  v4 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(a2 + v24);
    __chkstk_darwin(a1);

    os_unfair_lock_lock(v8 + 4);
    sub_1CB04(&v26);
    os_unfair_lock_unlock(v8 + 4);
    v9 = v26;
    v10 = sub_AEE8(v7, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v4;
    a1 = sub_17054(v7, v6);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_17E2C(v16, isUniquelyReferenced_nonNull_native);
      a1 = sub_17054(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = a1;
    sub_18BE0();
    a1 = v22;
    if (v17)
    {
LABEL_3:
      v5 = a1;

      v4 = v26;
      *(v26[7] + 8 * v5) = v10;
      goto LABEL_4;
    }

LABEL_11:
    v4 = v26;
    v26[(a1 >> 6) + 8] |= 1 << a1;
    v19 = (v4[6] + 16 * a1);
    *v19 = v7;
    v19[1] = v6;
    *(v4[7] + 8 * a1) = v10;
    v20 = v4[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_18;
    }

    v4[2] = v21;
LABEL_4:
    v3 += 2;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_31890();
  __break(1u);
  return result;
}

uint64_t sub_22BF8(unint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t *, char *), uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v116 = a7;
  v114 = a5;
  v122 = a4;
  v126 = a3;
  v118 = sub_31180();
  v12 = *(v118 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v118);
  v119 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v117 = &v107 - v17;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_67:
      swift_once();
    }

    v18 = sub_311B0();
    sub_8BFC(v18, qword_434B0);
    swift_errorRetain();
    v19 = sub_31190();
    v20 = sub_314D0();
    sub_21DA0(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v128[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_318A0();
      v25 = sub_28BCC(v23, v24, v128);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "Error while querying properties from Core Data: %s", v21, 0xCu);
      sub_9170(v22);
    }

    return v116();
  }

  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v115 = a6;
  if (a1 >> 62)
  {
    v27 = sub_317C0();
    if (v27)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
LABEL_8:
      v28 = 0;
      v125 = a1 & 0xC000000000000001;
      v110 = (v12 + 16);
      v111 = (v12 + 8);
      *&v16 = 138412290;
      v120 = v16;
      *&v16 = 136315138;
      v107 = v16;
      v112 = a8;
      v124 = a1;
      v121 = a1 & 0xFFFFFFFFFFFFFF8;
      v123 = v27;
      do
      {
        if (v125)
        {
          v29 = sub_31700();
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_66;
          }

          v29 = *(a1 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v127 = 0;
        v32 = [v126 existingObjectWithID:v29 error:&v127];
        v33 = v127;
        if (!v32)
        {
          v101 = v127;
          sub_31070();

          swift_willThrow();
          if (qword_42220 != -1)
          {
            swift_once();
          }

          v102 = sub_311B0();
          sub_8BFC(v102, qword_434B0);
          v103 = sub_31190();
          v104 = sub_314D0();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&dword_0, v103, v104, "Error while querying properties from Core Data", v105, 2u);
          }

          return v116();
        }

        v34 = v32;
        type metadata accessor for CDProperty();
        v35 = swift_dynamicCastClass();
        v36 = v33;
        if (!v35)
        {
          goto LABEL_28;
        }

        v37 = [v35 key];
        if (v37)
        {
          v38 = v37;
          v39 = sub_31320();
          v41 = v40;
        }

        else
        {
          v39 = 0;
          v41 = 0xE000000000000000;
        }

        if (!*(v122 + 16))
        {

          v26 = v121;
LABEL_28:

          if (qword_42220 != -1)
          {
            swift_once();
          }

          v57 = sub_311B0();
          sub_8BFC(v57, qword_434B0);
          v58 = v30;
          v59 = sub_31190();
          v60 = sub_314D0();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = v120;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&dword_0, v59, v60, "Cast failed or bad data querying property with objectID %@", v61, 0xCu);
            sub_1E8C0(v62);
          }

          else
          {
          }

          a1 = v124;
          goto LABEL_34;
        }

        v42 = sub_17054(v39, v41);
        v44 = v43;

        v26 = v121;
        if ((v44 & 1) == 0)
        {
          goto LABEL_28;
        }

        v45 = *(*(v122 + 56) + 8 * v42);
        swift_unknownObjectRetain();
        v46 = [v35 createdAt];
        if (!v46)
        {
          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        v47 = v117;
        v48 = v46;
        sub_31160();

        v49 = [v45 recordType];
        (*v110)(v119, v47, v118);
        v113 = v30;
        if (v49 == &dword_0 + 2)
        {
          swift_unknownObjectRetain();

          v64 = sub_53D8();
          if (!v64)
          {
LABEL_41:
            v108 = v45;
            if (qword_42220 != -1)
            {
              swift_once();
            }

            v76 = sub_311B0();
            sub_8BFC(v76, qword_434B0);
            v77 = sub_31190();
            v78 = sub_314D0();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *v79 = v120;
              sub_8C34();
              swift_allocError();
              *v81 = 1;
              v82 = _swift_stdlib_bridgeErrorToNSError();
              *(v79 + 4) = v82;
              *v80 = v82;
              _os_log_impl(&dword_0, v77, v78, "Could not fetch. %@", v79, 0xCu);
              sub_1E8C0(v80);
            }

            sub_8C34();
            swift_allocError();
            *v83 = 1;
            swift_errorRetain();
            v84 = sub_31190();
            v85 = sub_314D0();

            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v127 = v87;
              *v86 = v107;
              swift_getErrorValue();
              v88 = sub_318A0();
              v90 = sub_28BCC(v88, v89, &v127);

              *(v86 + 4) = v90;
              _os_log_impl(&dword_0, v84, v85, "Error while querying properties from Core Data: %s", v86, 0xCu);
              sub_9170(v87);

              v26 = v121;

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            a1 = v124;
            v91 = v119;
            goto LABEL_57;
          }

          v65 = v64;
          v66 = v45;
          v67 = [v35 identifier];
          if (v67)
          {
            v68 = v67;
            v69 = sub_31320();
            v49 = v70;
          }

          else
          {
            v69 = 0;
            v49 = 0;
          }

          v92 = [v35 assetID];
          v109 = v28 + 1;
          if (v92)
          {
            v93 = v92;
            v71 = sub_31320();
            v108 = v94;
          }

          else
          {
            v71 = 0;
            v108 = 0;
          }

          v55 = v69;
          v74 = sub_56D8(v65);

          v75 = 2;
          v73 = v66;
          v72 = v108;
        }

        else if (v49 == &dword_0 + 1)
        {
          swift_unknownObjectRetain();

          v50 = sub_53D8();
          if (!v50)
          {
            goto LABEL_41;
          }

          v51 = v50;
          v52 = v45;
          v53 = [v35 identifier];
          v109 = v28 + 1;
          if (v53)
          {
            v54 = v53;
            v55 = sub_31320();
            v49 = v56;
          }

          else
          {
            v55 = 0;
            v49 = 0;
          }

          v71 = sub_56D8(v51);

          v72 = 0;
          v74 = 0;
          v75 = 1;
          v73 = v52;
        }

        else
        {
          v109 = v28 + 1;
          if (v49)
          {
            (*v111)(v119, v118);
            v127 = v49;
            result = sub_31880();
            __break(1u);
            return result;
          }

          swift_unknownObjectRetain();

          v55 = [v35 count];
          v71 = 0;
          v72 = 0;
          v73 = v45;
          v74 = 0;
          v75 = 0;
        }

        v108 = v74;
        v128[0] = v55;
        v128[1] = v49;
        v128[2] = v71;
        v128[3] = v72;
        v128[4] = v74;
        v129 = v75;
        v95 = v71;
        v96 = v49;
        v97 = v55;
        v91 = v119;
        v98 = v75;
        v114(v73, v128, v119);
        sub_8C88(v97, v96, v95, v72, v108, v98);
        swift_unknownObjectRelease();

        a1 = v124;
        v26 = v121;
        v31 = v109;
LABEL_57:
        v99 = *v111;
        v100 = v118;
        (*v111)(v91, v118);

        swift_unknownObjectRelease();
        v99(v117, v100);
LABEL_34:
        ++v28;
      }

      while (v31 != v123);
    }
  }

  return v116();
}

uint64_t sub_2389C()
{
  v1 = sub_2294(&qword_428F8, &qword_33220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23974()
{
  v1 = *(*(sub_2294(&qword_428F8, &qword_33220) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_229B4(v2, v3);
}

uint64_t sub_239E4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_23A48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_23A98()
{
  result = qword_42908;
  if (!qword_42908)
  {
    sub_B440(&qword_42900, qword_33228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42908);
  }

  return result;
}

uint64_t sub_23AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_259F0(a1);
    v5 = *v2;
    v6 = sub_17138(a2);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_18D48();
        v12 = v16;
      }

      sub_1B9C4(*(v12 + 56) + 8 * v9, &v18);
      sub_2ED7C(v9, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v8 & 1) == 0;
    return sub_259F0(&v18);
  }

  else
  {
    sub_1B9C4(a1, &v18);
    v13 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    result = sub_25A58(&v18, a2, v14);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_23BEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23CAC()
{
  v1 = (v0 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23D70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23DD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23F20()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23FDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id BaseDonor.init(type:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = sub_31530();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_31580();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_31240();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  *&v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations] = &_swiftEmptyDictionarySingleton;
  v19 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue;
  v18[1] = sub_1B8B4();
  sub_31220();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  v23 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42750, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2294(&qword_42940, &unk_33150);
  sub_24AD8(&unk_42760, &qword_42940, &unk_33150);
  sub_31690();
  v12 = sub_315A0();
  v13 = v20;
  *&v2[v19] = v12;
  v14 = &v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type];
  v15 = v21;
  *v14 = v13;
  *(v14 + 1) = v15;
  *&v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for BaseDonor();
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t sub_24508(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_31200();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_31240();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24A6C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DD78;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v17 = a2;
  sub_31230();
  v22 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v16);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_24818()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations;
    v7 = result;
    swift_beginAccess();
    v21 = v7;
    v8 = *&v7[v6];
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = (v14 << 9) | (8 * v17);
      v19 = *(*(v8 + 48) + v18);
      sub_1B968(*(v8 + 56) + v18, v22);
      v23 = v19;
      sub_1B9C4(v22, &v24);
      v16 = v14;
LABEL_16:
      sub_25C1C(&v23, &v25);
      if (!v25)
      {
      }

      sub_1B9C4(&v26, &v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong propertyDidChange:a2 propertyConfiguration:{a3, v21}];
        swift_unknownObjectRelease();
      }

      result = sub_25C8C(&v23);
      v13 = v16;
    }

    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v23 = 0;
        v24 = 0;
        goto LABEL_16;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_24A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B440(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id BaseDonor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDonor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BaseDonor.add(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31200();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_31240();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a1;
  aBlock[4] = sub_250A0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DDC8;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_31230();
  v19 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void sub_24FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectWeakInit();
    v5[8] = 0;
    swift_beginAccess();
    sub_23AFC(v5, a2);
    swift_endAccess();
  }
}

uint64_t sub_25060()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t BaseDonor.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31200();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_31240();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_25490;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DE18;
  v14 = _Block_copy(aBlock);

  sub_31230();
  v19 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void sub_253C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_25498(a2, v5);
    sub_259F0(v5);
    swift_endAccess();
  }
}

uint64_t sub_25458()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_25498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_17138(a1);
  v8 = v7;
  if (v7)
  {
    v9 = result;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18D48();
      v12 = v13;
    }

    sub_1B9C4(*(v12 + 56) + 8 * v9, a2);
    result = sub_2ED7C(v9, v12);
    *v3 = v12;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v8 & 1) == 0;
  return result;
}

void sub_25558(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t BaseDonor.isObserved(by:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    if (*(*(v6 + 48) + ((v11 << 9) | (8 * v12))) == a1)
    {
      return 1;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return 0;
    }

    v9 = *(v6 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_256B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_259B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_259F0(uint64_t a1)
{
  v2 = sub_2294(&qword_42970, &qword_332A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_17138(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_18D48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_180CC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_17138(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_31890();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_25BE4(a1, v21);
  }

  else
  {

    return sub_25B78(v9, a2, a1, v20);
  }
}

uint64_t sub_25B78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B9C4(a3, a4[7] + 8 * a1);
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

uint64_t sub_25C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42978, &qword_332A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25CCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_25CEC, 0, 0);
}

uint64_t sub_25CEC()
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v1 = sub_311B0();
  sub_8BFC(v1, qword_434B0);
  v2 = sub_31190();
  v3 = sub_314B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  v9 = v0[1];

  v5 = swift_task_alloc();
  v0[2].i64[0] = v5;
  v5[1] = vextq_s8(v9, v9, 8uLL);
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[2].i64[1] = v7;
  *v7 = v0;
  v7[1] = sub_25EA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000020, 0x80000000000350C0, sub_26E1C, v5, &type metadata for () + 8);
}

uint64_t sub_25EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_25FE0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25FBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_25FE0()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[6] != 0;
  v4 = v0[1];

  return v4(v1, v3);
}

void LocalStorage.fetchAllConfigurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v6 + 4);
  sub_1AE34(&v8);
  os_unfair_lock_unlock(v6 + 4);
  v7 = v8;
  sub_2C458(v8, sub_1B16C, v5);
}

void LocalStorage.fetchConfiguration(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v9[5] = a3;
  v9[6] = a4;
  v10 = *(v4 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v10 + 4);
  sub_1CB04(&v12);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v12;
  sub_2C458(v12, sub_20AC8, v9);
}

void sub_26220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2294(&unk_42980, &qword_332B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  (*(v7 + 16))(&v15[-v9], a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v16 = sub_1CAE4;
  v17 = a2;

  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v18;
  sub_2C458(v18, sub_26EFC, v12);
}

uint64_t sub_263D0(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v4 + 4);
  sub_1CB04(&v20);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v20;
  v6 = sub_D7BC(a1, v20);

  if (v6)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v8 = sub_311B0();
    sub_8BFC(v8, qword_434B0);
    swift_errorRetain();
    v9 = sub_31190();
    v10 = sub_314D0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_318A0();
      v15 = sub_28BCC(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "Error while batch-updating configurations in Core data: %s", v11, 0xCu);
      sub_9170(v12);
    }

    v20 = v6;
    sub_2294(&unk_42980, &qword_332B8);
    return sub_31430();
  }

  else
  {
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v4 + 4);
    sub_1CB04(&v20);
    os_unfair_lock_unlock(v4 + 4);
    v17 = v20;
    v18 = [v20 hasChanges];

    if (v18)
    {
      v19 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);
      sub_2294(&qword_42900, qword_33228);
      sub_23A98();
      sub_311D0();
    }

    sub_2294(&unk_42980, &qword_332B8);
    return sub_31440();
  }
}

uint64_t sub_26698(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v6 = sub_311B0();
    sub_8BFC(v6, qword_434B0);
    swift_errorRetain();
    v7 = sub_31190();
    v8 = sub_314D0();
    sub_1BB64(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Error while inserting configuration object to Core Data: %s", v9, 0xCu);
      sub_9170(v10);
    }

    v14 = a1;
    v15 = 1;
  }

  else
  {
    v16 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);
    sub_2294(&qword_42900, qword_33228);
    sub_23A98();
    sub_311D0();
    v14 = 0;
    v15 = 0;
  }

  return a4(v14, v15);
}

uint64_t sub_26874(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v3 + 4);
  sub_1CB04(&v6);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v6;

  sub_D050(v4, a2);
}

uint64_t sub_26918(unint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_30:
      swift_once();
    }

    v5 = sub_311B0();
    sub_8BFC(v5, qword_434B0);
    swift_errorRetain();
    v6 = sub_31190();
    v7 = sub_314D0();
    sub_21DA0(v4, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_318A0();
      v12 = sub_28BCC(v10, v11, &v27);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Error while fetching all configurations from Core data: %s", v8, 0xCu);
      sub_9170(v9);
    }

    return a3(v4, 1);
  }

  else
  {
    if (a1 >> 62)
    {
      v14 = sub_317C0();
    }

    else
    {
      v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v15 = &_swiftEmptyArrayStorage;
    if (v14)
    {
      v27 = &_swiftEmptyArrayStorage;
      result = sub_31760();
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_31700();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        sub_C098();

        sub_31740();
        v19 = *(v27 + 16);
        sub_31770();
        sub_31780();
        sub_31750();
      }

      while (v14 != v16);
      v4 = v27;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v20 = 0;
    v27 = &_swiftEmptyArrayStorage;
    v21 = *(v4 + 16);
    while (v21 != v20)
    {
      if (v20 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v4 + 8 * v20++ + 32);
      if (v22)
      {
        v23 = v22;
        sub_313C0();
        if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v24 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
          sub_31400();
        }

        sub_31410();
        v15 = v27;
      }
    }

    if (v15 >> 62)
    {
      sub_2294(&qword_426E0, &qword_330C8);
      v26 = sub_317B0();
      swift_bridgeObjectRelease_n();
      v25 = v26;
    }

    else
    {
      sub_31860();

      v25 = v15;
    }

    a3(v25, 0);
  }
}

uint64_t sub_26CD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v7 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v7 + 4);
  sub_1CB04(&v10);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v10;

  sub_CA08(a1, a2, v8, a4);
}

uint64_t sub_26D94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_26DD4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_26E24()
{
  v1 = sub_2294(&unk_42980, &qword_332B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EFC()
{
  v1 = *(*(sub_2294(&unk_42980, &qword_332B8) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_263D0(v2, v3);
}

Swift::Int CollectorError.hashValue.getter()
{
  sub_31900();
  sub_31910(0);
  return sub_31920();
}

Swift::Int sub_26FD8()
{
  sub_31900();
  sub_31910(0);
  return sub_31920();
}

uint64_t sub_27018()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    swift_beginAccess();
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return v3;
  }
}

uint64_t sub_270AC(uint64_t a1, uint64_t a2)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(a1, a2);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v2 + 24);
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t (*sub_27158(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_27018();
  a1[1] = v3;
  return sub_271A0;
}

uint64_t sub_271A0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_270AC(*a1, v2);
  }

  v5 = a1[1];

  sub_270AC(v3, v2);
}

uint64_t sub_27214(void *a1)
{
  v2 = v1;
  if (qword_42220 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = sub_311B0();
  sub_8BFC(v4, qword_434B0);
  swift_unknownObjectRetain();
  v5 = sub_31190();
  v6 = sub_314C0();
  swift_unknownObjectRelease();
  p_type = &stru_40FF0.type;
  v30 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    v10 = [a1 type];
    v11 = sub_31320();
    v13 = v12;

    v14 = sub_28BCC(v11, v13, &v34);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Collector registering new donor: %s", v8, 0xCu);
    sub_9170(v9);

    v2 = v30;
  }

  swift_beginAccess();
  v15 = *(v2 + 32);
  v32 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v35 = sub_317C0();
  }

  else
  {
    v35 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = v15 & 0xC000000000000001;

  v16 = 0;
  v31 = v15;
  while (v35 != v16)
  {
    if (v33)
    {
      v18 = sub_31700();
      if (__OFADD__(v16, 1))
      {
LABEL_17:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v16 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v18 = *(v15 + 8 * v16 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v16, 1))
      {
        goto LABEL_17;
      }
    }

    v19 = [v18 p_type[137]];
    v20 = sub_31320();
    v22 = v21;

    v23 = p_type;
    v24 = a1;
    v25 = [a1 p_type[137]];
    v2 = sub_31320();
    v27 = v26;

    if (v20 == v2 && v22 == v27)
    {

      swift_unknownObjectRelease();

LABEL_21:

      sub_1C5A8();
      swift_allocError();
      return swift_willThrow();
    }

    v17 = sub_31850();
    swift_unknownObjectRelease();

    ++v16;
    a1 = v24;
    p_type = v23;
    v15 = v31;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_313C0();
  if (*(&dword_10 + (*(v30 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v30 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v29 = *(&dword_10 + (*(v30 + 32) & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  return swift_endAccess();
}

uint64_t sub_27604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2294(&qword_42590, &unk_32ED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  swift_beginAccess();
  v13 = *(v4 + 32);

  v15 = sub_E3E0(v14);
  v16 = sub_31480();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_10C5C(0, 0, v12, &unk_32EE0, v17);
}

uint64_t sub_27764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_2778C, 0, 0);
}

uint64_t sub_2778C()
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v1 = sub_311B0();
  sub_8BFC(v1, qword_434B0);
  v2 = sub_31190();
  v3 = sub_314C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Start collecting data", v4, 2u);
  }

  v5 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = *(v0 + 40);

  v6 = sub_2294(&qword_42AB8, &qword_333F0);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v5;
  *(v7 + 40) = v12;
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_2795C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, v6, &type metadata for () + 8, 0, 0, &unk_33400, v7, v6);
}

uint64_t sub_2795C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_27A74, 0, 0);
}

uint64_t sub_27A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v8 = *(*(sub_2294(&qword_42590, &unk_32ED0) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v9 = sub_2294(&qword_42AC0, &qword_33408);
  v7[25] = v9;
  v10 = *(v9 - 8);
  v7[26] = v10;
  v11 = *(v10 + 64) + 15;
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_27BA0, 0, 0);
}

uint64_t sub_27BA0()
{
  v63 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_317C0())
  {
    v3 = 0;
    v52 = v0 + 9;
    v53 = v0[20];
    v50 = v1 & 0xC000000000000001;
    v47 = v0[18] + 32;
    v48 = v1 & 0xFFFFFFFFFFFFFF8;
    v49 = i;
    while (v50)
    {
      v4 = v0[18];
      v5 = sub_31700();
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        goto LABEL_34;
      }

LABEL_11:
      v1 = [v5 eventConfigurations];
      type metadata accessor for BasePropertyConfiguration();
      v8 = sub_313E0();

      v51 = v7;
      if (v8 >> 62)
      {
        v9 = sub_317C0();
        if (!v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!v9)
        {
          goto LABEL_4;
        }
      }

      if (v9 < 1)
      {
        goto LABEL_35;
      }

      v10 = 0;
      v54 = v8 & 0xC000000000000001;
      v55 = *v0[17];
      v56 = v9;
      v57 = v8;
      do
      {
        if (v54)
        {
          v12 = sub_31700();
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v59 = v12;
        if (qword_42220 != -1)
        {
          swift_once();
        }

        v13 = sub_311B0();
        sub_8BFC(v13, qword_434B0);
        swift_unknownObjectRetain();
        v14 = sub_31190();
        v15 = sub_314C0();
        swift_unknownObjectRelease();
        v60 = v10;
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v62 = v17;
          *v16 = 136315138;
          v18 = [v5 type];
          v19 = sub_31320();
          v20 = v5;
          v22 = v21;

          v23 = sub_28BCC(v19, v22, &v62);

          *(v16 + 4) = v23;
          _os_log_impl(&dword_0, v14, v15, "Getting data from donor: %s", v16, 0xCu);
          sub_9170(v17);
        }

        else
        {

          v20 = v5;
        }

        v25 = v61[23];
        v24 = v61[24];
        v26 = v61[19];
        v58 = v61[20];
        v27 = sub_31480();
        v28 = *(v27 - 8);
        (*(v28 + 56))(v24, 1, 1, v27);
        v29 = swift_allocObject();
        *(v29 + 16) = 0u;
        v30 = (v29 + 16);
        *(v29 + 32) = v20;
        v5 = v20;
        *(v29 + 40) = v59;
        *(v29 + 48) = v26;
        *(v29 + 56) = v58;
        sub_29830(v24, v25);
        LODWORD(v25) = (*(v28 + 48))(v25, 1, v27);
        swift_unknownObjectRetain();
        v31 = v59;

        v32 = v61[23];
        if (v25 == 1)
        {
          sub_298A0(v61[23]);
        }

        else
        {
          sub_31470();
          (*(v28 + 8))(v32, v27);
        }

        v0 = v61;
        if (*v30)
        {
          v33 = *(v29 + 24);
          v34 = *v30;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v35 = sub_31420();
          v37 = v36;
          swift_unknownObjectRelease();
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        v38 = swift_allocObject();
        *(v38 + 16) = &unk_33420;
        *(v38 + 24) = v29;

        sub_2294(&qword_42AB8, &qword_333F0);
        v39 = (v37 | v35);
        if (v37 | v35)
        {
          v39 = v52;
          *v52 = 0;
          v52[1] = 0;
          v61[11] = v35;
          v61[12] = v37;
        }

        v10 = v60 + 1;
        v11 = v61[24];
        v61[13] = 1;
        v61[14] = v39;
        v61[15] = v55;
        v1 = swift_task_create();

        sub_298A0(v11);
        v8 = v57;
      }

      while (v56 != v60 + 1);
LABEL_4:

      swift_unknownObjectRelease();
      v3 = v51;
      if (v51 == v49)
      {
        goto LABEL_38;
      }
    }

    if (v3 >= *(v48 + 16))
    {
      goto LABEL_36;
    }

    v5 = *(v47 + 8 * v3);
    swift_unknownObjectRetain();
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:
  v40 = v0[27];
  v41 = *v0[17];
  sub_2294(&qword_42AB8, &qword_333F0);
  sub_31450();
  v0[28] = &_swiftEmptyDictionarySingleton;
  v42 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v43 = swift_task_alloc();
  v0[29] = v43;
  *v43 = v0;
  v43[1] = sub_281E0;
  v44 = v0[27];
  v45 = v0[25];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, 0, 0, v45);
}

uint64_t sub_281E0()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_282DC, 0, 0);
}

uint64_t sub_282DC()
{
  v44 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    if (v3 == 255)
    {

      goto LABEL_21;
    }

    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 40);
    v40 = *(v0 + 48);
    v41 = *(v0 + 56);
    v7 = *(v0 + 224);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 128) = v7;
    v9 = sub_1717C(v2);
    v13 = *(v7 + 16);
    v14 = (v10 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(*(v0 + 224) + 24) < v16)
      {
        sub_1834C(v16, isUniquelyReferenced_nonNull_native);
        v17 = *(v0 + 128);
        v9 = sub_1717C(v2);
        if ((v1 & 1) != (v10 & 1))
        {
          type metadata accessor for BasePropertyConfiguration();

          return sub_31890();
        }

LABEL_14:
        v25 = *(v0 + 128);
        if (v1)
        {
LABEL_15:
          v26 = v25[7] + 48 * v9;
          v27 = *v26;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          v30 = *(v26 + 24);
          v31 = *(v26 + 32);
          *v26 = v5;
          *(v26 + 8) = v4;
          *(v26 + 16) = v6;
          *(v26 + 24) = v40;
          *(v26 + 32) = v41;
          v32 = *(v26 + 40);
          *(v26 + 40) = v3;
          sub_8C88(v27, v28, v29, v30, v31, v32);

LABEL_20:
          *(v0 + 224) = v25;
LABEL_21:
          v37 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
          v38 = swift_task_alloc();
          *(v0 + 232) = v38;
          *v38 = v0;
          v38[1] = sub_281E0;
          v39 = *(v0 + 216);
          v12 = *(v0 + 200);
          v9 = v0 + 16;
          v10 = 0;
          v11 = 0;

          return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
        }

LABEL_18:
        v25[(v9 >> 6) + 8] |= 1 << v9;
        *(v25[6] + 8 * v9) = v2;
        v34 = v25[7] + 48 * v9;
        *v34 = v5;
        *(v34 + 8) = v4;
        *(v34 + 16) = v6;
        *(v34 + 24) = v40;
        *(v34 + 32) = v41;
        *(v34 + 40) = v3;
        v35 = v25[2];
        v15 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v15)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
        }

        v25[2] = v36;
        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v33 = v9;
    sub_18EC4();
    v9 = v33;
    v25 = *(v0 + 128);
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v19 = *(v0 + 224);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v42 = v19;
  v43 = 0;
  v23(&v42);
  sub_1C59C(v42, v43);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_285D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  return _swift_task_switch(sub_28600, 0, 0);
}

uint64_t sub_28600()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  v6 = sub_2294(&qword_42AC8, &qword_33430);
  *v5 = v0;
  v5[1] = sub_28710;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x8000000000035130, sub_299F8, v3, v6);
}

uint64_t sub_28710()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_28828, 0, 0);
}

uint64_t sub_28828()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *v2 = v1;
  *(v2 + 8) = v5;
  *(v2 + 24) = v6;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v9 = *(v0 + 8);
  v7 = v1;

  return v9();
}

void sub_288B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSString a5)
{
  v9 = sub_2294(&unk_42AD0, &qword_33438);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  if (a5)
  {
    a5 = sub_31300();
  }

  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_29A98;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11248;
  aBlock[3] = &unk_3E098;
  v16 = _Block_copy(aBlock);

  [a2 donateWithConfiguration:a3 context:a5 donationCompleteBlock:v16];
  _Block_release(v16);
}

uint64_t sub_28A98(uint64_t a1)
{
  if (a1)
  {
    sub_1BBC8(*(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 8), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 16), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 24), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 32), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 40));
  }

  sub_2294(&unk_42AD0, &qword_33438);
  return sub_31440();
}

uint64_t Collector.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Collector.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_28BCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_28C98(v11, 0, 0, 1, a1, a2);
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
    sub_B61C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_9170(v11);
  return v7;
}

unint64_t sub_28C98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_28DA4(a5, a6);
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
    result = sub_31720();
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

char *sub_28DA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_28DF0(a1, a2);
  sub_28F20(&off_3CD70);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_28DF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2900C(v5, 0);
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

  result = sub_31720();
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
        v10 = sub_313A0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2900C(v10, 0);
        result = sub_316C0();
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

uint64_t sub_28F20(uint64_t result)
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

  result = sub_29080(result, v12, 1, v3);
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

void *sub_2900C(uint64_t a1, uint64_t a2)
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

  sub_2294(&qword_42AB0, &qword_333E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29080(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_42AB0, &qword_333E8);
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

uint64_t sub_29174()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_291C8()
{
  result = qword_429C0;
  if (!qword_429C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_429C0);
  }

  return result;
}

uint64_t sub_2921C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_293E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1CAC8;

  return sub_27A88(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_294BC(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_295B0;

  return v6(v2 + 16);
}

uint64_t sub_295B0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v7;
  *(v3 + 24) = v8;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_2970C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2975C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CAC8;

  return sub_285D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29830(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_298A0(uint64_t a1)
{
  v2 = sub_2294(&qword_42590, &unk_32ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29940(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B06C;

  return sub_294BC(a1, v5);
}

uint64_t sub_29A04()
{
  v1 = sub_2294(&unk_42AD0, &qword_33438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_29A98(uint64_t a1)
{
  v2 = *(*(sub_2294(&unk_42AD0, &qword_33438) - 8) + 80);

  return sub_28A98(a1);
}

uint64_t sub_29B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29B2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1AE34(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

id sub_29B9C@<X0>(void *a1@<X8>)
{
  result = sub_29C08();
  *a1 = result;
  return result;
}

id sub_29BD8@<X0>(void *a1@<X8>)
{
  result = sub_29C08();
  *a1 = result;
  return result;
}

id sub_29C08()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context);
  }

  else
  {
    v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    v5 = sub_29D90();
    v6 = [v5 persistentStoreCoordinator];

    [v4 setPersistentStoreCoordinator:v6];
    [v4 setMergePolicy:NSErrorMergePolicy];
    [v4 setAutomaticallyMergesChangesFromParent:1];
    v7 = sub_31300();
    [v4 setName:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_29D30()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model);
  }

  else
  {
    v4 = sub_2F9BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D90()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  }

  else
  {
    v4 = sub_2FC68();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v23 = a3;
  v11 = sub_310D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = [a1 container];
  if (v14)
  {
    v22 = v14;
    v15 = a6;
    v16 = [v14 newBackgroundContext];
    (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v11);
    v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v18 = swift_allocObject();
    v19 = v23;
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    v20 = v24;
    *(v18 + 4) = a4;
    *(v18 + 5) = v20;
    *(v18 + 6) = v15;
    (*(v12 + 32))(&v18[v17], &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v21 = v16;

    sub_2AAD0();
  }
}

void sub_29FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v76 = a6;
  v87 = a2;
  v79 = sub_310D0();
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(NSFetchRequest);
  v14 = sub_31300();
  v15 = [v13 initWithEntityName:v14];

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v16 = sub_314A0();
  [v15 setPredicate:v16];

  sub_B304(0, &qword_42CD8, NSManagedObject_ptr);
  v81 = v15;
  v80 = a1;
  v17 = sub_31620();
  if (v6)
  {
LABEL_2:
    a3 = v79;
    v18 = v78;
    v15 = v77;
    if (qword_42220 == -1)
    {
LABEL_3:
      v19 = sub_311B0();
      sub_8BFC(v19, qword_434B0);
      (*(v18 + 16))(v15, v76, a3);
      swift_errorRetain();
      v20 = sub_31190();
      v21 = v15;
      v22 = sub_314D0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v92 = v87;
        *v23 = 136446466;
        v24 = sub_310C0();
        v86 = v7;
        v25 = v24;
        v27 = v26;
        (*(v18 + 8))(v21, a3);
        v28 = sub_28BCC(v25, v27, &v92);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        swift_getErrorValue();
        v29 = sub_318A0();
        v31 = sub_28BCC(v29, v30, &v92);

        *(v23 + 14) = v31;
        _os_log_impl(&dword_0, v20, v22, "Error migrating %{public}s: %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v18 + 8))(v21, a3);
      }

      v61 = v80;
      goto LABEL_56;
    }

LABEL_44:
    swift_once();
    goto LABEL_3;
  }

  v32 = v17;
  v75 = 0;
  v73 = v17 >> 62;
  if (v17 >> 62)
  {
    v33 = sub_317C0();
    if (v33)
    {
LABEL_7:
      v18 = 0;
      v74 = 0;
      v85 = v33;
      v86 = v32 & 0xC000000000000001;
      v84 = v32 & 0xFFFFFFFFFFFFFF8;
      v82 = v32;
      v72 = a4;
      v83 = a3;
      while (1)
      {
        if (v86)
        {
          v34 = sub_31700();
        }

        else
        {
          if (v18 >= *(v84 + 16))
          {
            goto LABEL_43;
          }

          v34 = *(v32 + 8 * v18 + 32);
        }

        v15 = v34;
        v7 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v35 = sub_31300();
        v36 = [v15 valueForKey:v35];

        if (v36)
        {
          sub_31680();
          swift_unknownObjectRelease();
        }

        else
        {
          v90 = 0u;
          v91 = 0u;
        }

        v92 = v90;
        v93 = v91;
        if (*(&v91 + 1))
        {
          if (swift_dynamicCast())
          {
            v37 = v88;
            v38 = v89;
            v39 = objc_opt_self();
            isa = sub_310E0().super.isa;
            *&v92 = 0;
            v41 = [v39 JSONObjectWithData:isa options:0 error:&v92];

            if (!v41)
            {
              v62 = v92;

              v7 = sub_31070();

              swift_willThrow();
              sub_B558(v37, v38);

              goto LABEL_2;
            }

            v42 = v92;
            sub_31680();
            swift_unknownObjectRelease();
            sub_2294(&qword_424E8, &qword_32CF0);
            if (swift_dynamicCast())
            {
              v43 = v90;
              if (*(v90 + 16) && (v44 = sub_17054(0x44497465737361, 0xE700000000000000), (v45 & 1) != 0) && (sub_B61C(*(v43 + 56) + 32 * v44, &v92), (swift_dynamicCast() & 1) != 0))
              {
                v71 = sub_31300();

                v70 = sub_31300();
                v46 = v71;
                [v15 setValue:v71 forKey:v70];

                v47 = sub_17054(0x44497465737361, 0xE700000000000000);
                if (v48)
                {
                  v49 = v47;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v90 = v43;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_19088();
                    v43 = v90;
                  }

                  v51 = *(*(v43 + 48) + 16 * v49 + 8);

                  sub_B6C8((*(v43 + 56) + 32 * v49), &v92);
                  sub_2EF0C(v49, v43);
                }

                else
                {
                  v92 = 0u;
                  v93 = 0u;
                }

                sub_B5AC(&v92, &qword_42260, &qword_32880);
                v52 = sub_312C0().super.isa;

                *&v92 = 0;
                v53 = [v39 dataWithJSONObject:v52 options:1 error:&v92];

                v54 = v92;
                if (v53)
                {
                  v71 = sub_310F0();
                  v56 = v55;

                  v57 = sub_310E0().super.isa;
                  v58 = sub_31300();
                  [v15 setValue:v57 forKey:v58];
                  sub_B558(v37, v38);
                  sub_B558(v71, v56);

                  if (__OFADD__(v74++, 1))
                  {
                    __break(1u);
                  }
                }

                else
                {
                  v60 = v54;
                  sub_31070();

                  swift_willThrow();
                  sub_B558(v37, v38);

                  v75 = 0;
                }
              }

              else
              {

                sub_B558(v37, v38);
              }
            }

            else
            {
              sub_B558(v37, v38);
            }

            v32 = v82;
            a3 = v83;
          }

          else
          {
          }
        }

        else
        {

          sub_B5AC(&v92, &qword_42260, &qword_32880);
        }

        ++v18;
        if (v7 == v85)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {
    v33 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v33)
    {
      goto LABEL_7;
    }
  }

  v74 = 0;
LABEL_47:
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v63 = sub_311B0();
  sub_8BFC(v63, qword_434B0);

  v64 = sub_31190();
  v65 = sub_314D0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134218240;
    *(v66 + 4) = v74;
    *(v66 + 12) = 2048;
    if (v73)
    {
      v67 = sub_317C0();
    }

    else
    {
      v67 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    }

    *(v66 + 14) = v67;

    _os_log_impl(&dword_0, v64, v65, "Completed migrating assetID of %ld of %ld records", v66, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v61 = v80;
LABEL_56:
  if ([v61 hasChanges])
  {
    *&v92 = 0;
    if ([v61 save:&v92])
    {
      v68 = v92;
    }

    else
    {
      v69 = v92;
      sub_31070();

      swift_willThrow();
    }
  }
}

id sub_2AAD0()
{
  v1 = sub_2E528();
  v3 = v2;
  result = sub_31600();
  if (v0)
  {
    if (v3)
    {
      return result;
    }

    result = [objc_opt_self() backgroundTaskDelegate];
    if (!result)
    {
      return result;
    }

LABEL_7:
    [result ec_endBackgroundTask:v1];
    return swift_unknownObjectRelease();
  }

  if ((v3 & 1) == 0)
  {
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

Swift::Int sub_2ABD8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, void *a5, void *a6)
{
  v67 = a5;
  v10 = sub_31520();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_310D0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v64 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  __chkstk_darwin(v20);
  v24 = v55 - v23;
  if (!a2)
  {
    return sub_315D0();
  }

  v58 = v11;
  v59 = v10;
  v61 = v22;
  v62 = v21;
  v63 = a6;
  swift_errorRetain();
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v25 = sub_311B0();
  v26 = sub_8BFC(v25, qword_434B0);
  v27 = v16[2];
  v69 = a3;
  v60 = v16 + 2;
  v68 = v27;
  v27(v24, a3, v15);
  swift_errorRetain();
  v57 = v26;
  v28 = sub_31190();
  v29 = sub_314D0();

  v30 = os_log_type_enabled(v28, v29);
  v65 = v16;
  v66 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v55[1] = a2;
    aBlock[0] = v32;
    *v31 = 136446466;
    v33 = sub_310C0();
    v35 = v34;
    v56 = v16[1];
    v56(v24, v15);
    v36 = sub_28BCC(v33, v35, aBlock);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    swift_getErrorValue();
    v37 = sub_318A0();
    v39 = sub_28BCC(v37, v38, aBlock);
    a4 = v66;

    *(v31 + 14) = v39;
    _os_log_impl(&dword_0, v28, v29, "Error adding LocalStorage persistent store at %{public}s: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = v16[1];
    v56(v24, v15);
  }

  v41 = [a4 persistentStoreCoordinator];
  v42 = v67;
  v43 = [v67 type];
  sub_31320();

  sub_31510();
  v44 = [v42 options];
  sub_B304(0, &qword_42488, NSObject_ptr);
  v45 = sub_312D0();

  sub_5C60(v45);

  v46 = v69;
  sub_31640();
  (*(v58 + 8))(v14, v59);

  v47 = v65;
  v48 = v62;
  v68(v62, v46, v15);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v61 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (v47[4])(v51 + v49, v48, v15);
  v52 = v63;
  *(v51 + v50) = v63;
  aBlock[4] = sub_307F8;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B6B8;
  aBlock[3] = &unk_3E188;
  v53 = _Block_copy(aBlock);
  v54 = v52;

  [v66 loadPersistentStoresWithCompletionHandler:v53];
  _Block_release(v53);
}

Swift::Int sub_2B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_310D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v12 = sub_311B0();
    sub_8BFC(v12, qword_434B0);
    (*(v8 + 16))(v11, a3, v7);
    swift_errorRetain();
    v13 = sub_31190();
    v14 = sub_314D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a4;
      v16 = v15;
      v26 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_310C0();
      v19 = v18;
      (*(v8 + 8))(v11, v7);
      v20 = sub_28BCC(v17, v19, &v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_318A0();
      v23 = sub_28BCC(v21, v22, &v26);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_0, v13, v14, "Still unable to load LocalStorage persistent store at %{public}s: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  return sub_315D0();
}

void sub_2B6B8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_2B744(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_2294(&qword_42CF0, &qword_334D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44 = v37 - v5;
  v6 = sub_31570();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2294(&qword_42CF8, &qword_334D8);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v43 = v37 - v12;
  v13 = sub_31580();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  __chkstk_darwin(v13);
  v38 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_31530();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = sub_31240();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  sub_2294(&qword_42D00, &qword_334E0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v2 + v20) = v21;
  v22 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher;
  v42 = sub_2294(&qword_42900, qword_33228);
  v23 = *(v42 + 48);
  v24 = *(v42 + 52);
  swift_allocObject();
  *(v2 + v22) = sub_311C0();
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription) = 0;
  v37[0] = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveQueue;
  v37[1] = sub_B304(0, &qword_42930, OS_dispatch_queue_ptr);
  sub_31230();
  v51 = &_swiftEmptyArrayStorage;
  sub_30F08();
  sub_2294(&qword_42940, &unk_33150);
  sub_B678(&unk_42760, &qword_42940, &unk_33150);
  sub_31690();
  (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *(v2 + v37[0]) = sub_315A0();
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context) = 0;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model) = 0;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer) = 0;
  v25 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL;
  v40 = sub_310D0();
  v26 = *(v40 - 8);
  (*(v26 + 16))(v2 + v25, v49, v40);
  sub_2C5D0();
  v51 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);

  v27 = v41;
  sub_31560();
  v50 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveQueue);
  v28 = v50;
  v29 = sub_31550();
  v30 = v44;
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  sub_B678(&qword_42D08, &qword_42900, qword_33228);
  sub_30F60();
  v31 = v28;
  v32 = v43;
  sub_311E0();
  sub_B5AC(v30, &qword_42CF0, &qword_334D0);

  (*(v45 + 8))(v27, v46);

  swift_allocObject();
  swift_weakInit();
  sub_B678(&qword_42D18, &qword_42CF8, &qword_334D8);
  v33 = v47;
  v34 = sub_311F0();

  (*(v26 + 8))(v49, v40);
  (*(v48 + 8))(v32, v33);
  v35 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription);
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription) = v34;

  return v2;
}

void sub_2BDE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(Strong);
    os_unfair_lock_lock(v1 + 4);
    sub_1CB04(&v9);
    os_unfair_lock_unlock(v1 + 4);
    v2 = v9;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    sub_2C458(v4, sub_31008, v3);
  }

  else
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v5 = sub_311B0();
    sub_8BFC(v5, qword_434B0);
    v6 = sub_31190();
    v7 = sub_314B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "No context available", v8, 2u);
    }
  }
}

void sub_2BFB8(void *a1)
{
  v26 = 0;
  if ([a1 save:&v26])
  {

    _objc_retain_x1();
  }

  else
  {
    v1 = v26;
    v2 = sub_31070();

    swift_willThrow();
    v26 = v2;
    swift_errorRetain();
    sub_2294(&unk_42780, &qword_32CC0);
    sub_B304(0, &qword_424A8, NSError_ptr);
    if (swift_dynamicCast())
    {

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v3 = sub_311B0();
      sub_8BFC(v3, qword_434B0);
      v4 = v24;
      v5 = sub_31190();
      v6 = sub_314D0();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v25 = v9;
        *v7 = 138412546;
        *(v7 + 4) = v4;
        *v8 = v4;
        *(v7 + 12) = 2080;
        v23 = v4;
        v10 = [v23 userInfo];
        sub_312D0();

        v11 = sub_312E0();
        v13 = v12;

        v14 = sub_28BCC(v11, v13, &v25);

        *(v7 + 14) = v14;
        _os_log_impl(&dword_0, v5, v6, "Could not save. %@, %s", v7, 0x16u);
        sub_B5AC(v8, &qword_42790, &unk_334A0);

        sub_9170(v9);
      }

      else
      {
      }
    }

    else
    {

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v15 = sub_311B0();
      sub_8BFC(v15, qword_434B0);
      swift_errorRetain();
      v16 = sub_31190();
      v17 = sub_314D0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_318A0();
        v22 = sub_28BCC(v20, v21, &v26);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_0, v16, v17, "Could not save. %s", v18, 0xCu);
        sub_9170(v19);

        return;
      }
    }
  }
}

uint64_t sub_2C458(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = sub_2E528();
  v13 = v6 & 1;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = &v12;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_30ED4;
  *(v8 + 24) = v7;
  v11[4] = sub_30EE0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_2E888;
  v11[3] = &unk_3E368;
  v9 = _Block_copy(v11);

  [a1 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_2C5D0()
{
  v0 = [objc_opt_self() defaultManager];
  sub_31080(OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL);
  v2 = v1;
  v13 = 0;
  v3 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v13];

  v4 = v13;
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v13;
    sub_31070();

    swift_willThrow();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v7 = sub_311B0();
    sub_8BFC(v7, qword_434B0);
    swift_errorRetain();
    v8 = sub_31190();
    v9 = sub_314B0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Failed to create directory error: %@", v10, 0xCu);
      sub_B5AC(v11, &qword_42790, &unk_334A0);
    }

    else
    {
    }
  }
}

void sub_2C838(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1CB04(&v7);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v7;
  sub_2C458(v7, a1, a2);
}

void sub_2C8CC(uint64_t a1, void (*a2)(void), uint64_t a3, os_unfair_lock_s *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_8C34();
    swift_allocError();
    *v29 = 1;
    a2();
LABEL_14:

    return;
  }

  v9 = Strong;
  v36 = type metadata accessor for CDCloudSyncVersions();
  sub_2294(&qword_42CE8, &qword_334C8);
  sub_31340();
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_31300();
  v12 = [v10 initWithEntityName:v11];

  [v12 setReturnsObjectsAsFaults:0];
  [v12 setFetchLimit:1];
  sub_2294(&qword_42440, &unk_32AB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_32E20;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;

  v14 = sub_31300();
  isa = sub_313D0().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v12 setPredicate:v16];
  v35 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v17 = *(v9 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 4);
  sub_1CB04(&v36);
  os_unfair_lock_unlock(v17 + 4);
  v19 = v36;
  v30 = sub_31620();

  v31 = v30;
  if (v30 >> 62)
  {
    v31 = v30;
    if (sub_317C0())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:

    v20 = sub_31300();

    v22 = *(v9 + v35);
    __chkstk_darwin(v21);
    os_unfair_lock_lock(v22 + 4);
    sub_1CB04(&v36);
    v23 = objc_opt_self();
    os_unfair_lock_unlock(v22 + 4);
    v24 = v36;
    v25 = [v23 insertNewObjectForEntityForName:v20 inManagedObjectContext:v36];

    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = sub_31300();
      [v27 setDataType:v28];

LABEL_12:
      v33 = v27;
      (a2)(v27, 0);

      return;
    }

    sub_8C34();
    swift_allocError();
    *v34 = 1;
    a2();

    goto LABEL_14;
  }

LABEL_8:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = sub_31700();
    goto LABEL_11;
  }

  if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
  {
    v32 = *(v31 + 32);
LABEL_11:
    v27 = v32;

    goto LABEL_12;
  }

  __break(1u);
  os_unfair_lock_unlock(a4 + 4);
  __break(1u);
}

uint64_t sub_2CF28()
{
  v1 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1CB04(aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = aBlock[0];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();

  *(v4 + 16) = sub_2E528();
  *(v4 + 24) = v5 & 1;
  v6 = swift_allocObject();
  v6[2] = sub_30CE0;
  v6[3] = v3;
  v6[4] = v4;
  aBlock[4] = sub_30D28;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3E2A0;
  v7 = _Block_copy(aBlock);

  [v2 performBlock:v7];
  _Block_release(v7);
}

void sub_2D0D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v46 = type metadata accessor for CDCloudSyncVersions();
  sub_2294(&qword_42CE8, &qword_334C8);
  sub_31340();
  v3 = v2;
  v4 = objc_allocWithZone(NSFetchRequest);
  v41[1] = v3;
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  v7 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v8 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v9);
  os_unfair_lock_lock(v8 + 4);
  v10 = 0;
  sub_1CB04(&v46);
  os_unfair_lock_unlock(v8 + 4);
  v11 = v46;
  v19 = sub_31620();

  if (v19 >> 62)
  {
    v20 = sub_317C0();
  }

  else
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  }

  v43 = v7;
  v44 = v1;
  v41[0] = v6;
  if (v20)
  {
    v21 = 0;
    v42 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v42)
      {
        v22 = sub_31700();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v6 = v41;
      v25 = *(v44 + v43);
      __chkstk_darwin(v22);
      v26 = v20;
      os_unfair_lock_lock(v25 + 4);
      sub_1CB04(&v46);
      os_unfair_lock_unlock(v25 + 4);
      v27 = v46;
      [v46 deleteObject:v23];

      v20 = v26;
      ++v21;
      if (v24 == v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:

  v29 = v43;
  v30 = v44;
  v31 = *(v44 + v43);
  __chkstk_darwin(v28);
  os_unfair_lock_lock(v31 + 4);
  sub_1CB04(&v46);
  os_unfair_lock_unlock(v31 + 4);
  v32 = v46;
  v33 = [v46 hasChanges];

  if (!v33)
  {
LABEL_20:

    return;
  }

  v35 = *(v30 + v29);
  __chkstk_darwin(v34);
  os_unfair_lock_lock(v35 + 4);
  sub_1CB04(&v46);
  os_unfair_lock_unlock(v35 + 4);
  v36 = v46;
  v46 = 0;
  v37 = [v36 save:&v46];

  if (v37)
  {
    v38 = v46;
    goto LABEL_20;
  }

  v39 = v46;
  v40 = sub_31070();

  swift_willThrow();
  v6 = v41[0];
  v46 = v40;
  sub_2294(&unk_42780, &qword_32CC0);
  sub_B304(0, &qword_424A8, NSError_ptr);
  swift_dynamicCast();

  v10 = v45;
  if (qword_42220 != -1)
  {
LABEL_27:
    swift_once();
  }

  v12 = sub_311B0();
  sub_8BFC(v12, qword_434B0);
  v13 = v10;
  v14 = sub_31190();
  v15 = sub_314D0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_0, v14, v15, "Failed to delete cloudSyncVersions error: %@", v16, 0xCu);
    sub_B5AC(v17, &qword_42790, &unk_334A0);

    v14 = v18;
  }

  else
  {
  }
}

uint64_t sub_2D674(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_30D34(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  sub_30D78(a1, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_30E1C(v19, v12 + 32);
  v13 = *(v3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v18;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_30E34;
  v16[4] = v12;
  v16[5] = v9;
  v16[6] = v11;

  sub_2C458(v14, sub_30E8C, v16);
}

void sub_2D824(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    a3(a1, 1);
  }

  else
  {
    v7 = a5[3];
    v8 = a5[4];
    sub_30D34(a5, v7);
    v10 = *(v8 + 32);
    v11 = a1;
    [v11 setCloudVersion:{v10(v7, v8)}];
    v12 = a5[3];
    v13 = a5[4];
    sub_30D34(a5, v12);
    v14 = (*(v13 + 16))(v12, v13);
    sub_1CFB8(v14);
    v15 = a5[3];
    v16 = a5[4];
    sub_30D34(a5, v15);
    [v11 setHistoryTokenOffset:{(*(v16 + 24))(v15, v16)}];
    a3(a1, 0);

    sub_1BB64(a1, 0);
  }
}

void sub_2D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a3;
  v30 = a5;
  v12 = sub_2294(&qword_42490, &qword_32CB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  sub_2F0BC(a1, &v29 - v17);
  sub_2F0BC(a2, v16);
  v19 = *(v13 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v14 + v19 + v20) & ~v19;
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  sub_1B348(v18, v23 + v20);
  sub_1B348(v16, v23 + v21);
  v24 = (v23 + v22);
  v25 = v30;
  *v24 = v29;
  v24[1] = a4;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v25;
  v26[1] = a6;
  v27 = *(v7 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v31 = sub_31020;
  v32 = v7;

  os_unfair_lock_lock(v27 + 4);
  sub_1CB04(&v33);
  os_unfair_lock_unlock(v27 + 4);
  v28 = v33;
  sub_2C458(v33, sub_1B558, v23);
}

void sub_2DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v10 = sub_2294(&qword_42490, &qword_32CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v32 = sub_31020;
  v33 = a1;
  os_unfair_lock_lock(v17 + 4);
  sub_1CB04(&v34);
  os_unfair_lock_unlock(v17 + 4);
  v18 = v34;
  sub_2F0BC(a2, v16);
  sub_2F0BC(a3, v14);
  v19 = *(v11 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v12 + v19 + v20) & ~v19;
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  sub_1B348(v16, v23 + v20);
  sub_1B348(v14, v23 + v21);
  v24 = (v23 + v22);
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v31;
  *v26 = v30;
  v26[1] = v27;

  sub_D3A8(v18, sub_30BC8);
}

uint64_t sub_2DDAC(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *, char *), uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  isUniquelyReferenced_nonNull_native = a1;
  v11 = a9;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_56:
      swift_once();
    }

    v12 = sub_311B0();
    sub_8BFC(v12, qword_434B0);
    swift_errorRetain();
    v13 = sub_31190();
    v14 = sub_314D0();
    sub_21DA0(isUniquelyReferenced_nonNull_native, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_0, v13, v14, "Failed to fetch configurations error: %@", v15, 0xCu);
      sub_B5AC(v16, &qword_42790, &unk_334A0);
    }

    return a8();
  }

  v23 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(a1);
  os_unfair_lock_lock(v23 + 4);
  v69 = isUniquelyReferenced_nonNull_native;
  sub_1CB04(&v72);
  os_unfair_lock_unlock(v23 + 4);
  v62 = v72;
  v68 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    v24 = sub_317C0();
  }

  else
  {
    v24 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
  }

  v70 = v24;
  v66 = a7;
  v67 = a8;
  v64 = a5;
  v65 = a6;
  v63 = a4;
  if (v24)
  {
    if (v24 < 1)
    {
      __break(1u);
LABEL_59:
      result = sub_31890();
      __break(1u);
      return result;
    }

    v25 = 0;
    v71 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v26 = &_swiftEmptyDictionarySingleton;
    p_type = (&stru_40FF0 + 16);
    while (1)
    {
      if (v71)
      {
        v28 = sub_31700();
      }

      else
      {
        v28 = *(isUniquelyReferenced_nonNull_native + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = [v28 p_type[50]];
      if (!v30)
      {

        goto LABEL_13;
      }

      v31 = v30;
      v32 = sub_31320();
      v34 = v33;

      v35 = sub_C098();
      if (v35)
      {
        v36 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v26;
        v38 = sub_17054(v32, v34);
        v39 = v26[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        a8 = v37;
        if (v26[3] >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v69;
            if ((v37 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_18610();
            isUniquelyReferenced_nonNull_native = v69;
            if ((a8 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_173A8(v41, isUniquelyReferenced_nonNull_native);
          v42 = sub_17054(v32, v34);
          if ((a8 & 1) != (v43 & 1))
          {
            goto LABEL_59;
          }

          v38 = v42;
          isUniquelyReferenced_nonNull_native = v69;
          if ((a8 & 1) == 0)
          {
LABEL_29:
            v26 = v72;
            v72[(v38 >> 6) + 8] |= 1 << v38;
            v46 = (v26[6] + 16 * v38);
            *v46 = v32;
            v46[1] = v34;
            *(v26[7] + 8 * v38) = v36;

            v47 = v26[2];
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            if (v48)
            {
              goto LABEL_55;
            }

            v26[2] = v49;
            goto LABEL_12;
          }
        }

        v26 = v72;
        v44 = v72[7];
        v45 = *(v44 + 8 * v38);
        *(v44 + 8 * v38) = v36;

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_12:
      v24 = v70;
      p_type = &stru_40FF0.type;
LABEL_13:
      if (v24 == ++v25)
      {
        v11 = a9;
        if (!v24)
        {
          goto LABEL_50;
        }

        v50 = 0;
        v51 = _swiftEmptyArrayStorage;
        do
        {
          v52 = v50;
          while (1)
          {
            if (v71)
            {
              v53 = sub_31700();
              v50 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v52 >= *(v68 + 16))
              {
                goto LABEL_53;
              }

              v53 = *(isUniquelyReferenced_nonNull_native + 8 * v52 + 32);
              v50 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }
            }

            a8 = v53;
            v54 = [a8 p_type[50]];
            if (v54)
            {
              break;
            }

            ++v52;
            if (v50 == v24)
            {
              goto LABEL_51;
            }
          }

          v55 = v54;
          v56 = sub_31320();
          v58 = v57;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_2E9F0(0, *(v51 + 2) + 1, 1, v51);
          }

          a8 = *(v51 + 2);
          v59 = *(v51 + 3);
          if (a8 >= v59 >> 1)
          {
            v51 = sub_2E9F0((v59 > 1), a8 + 1, 1, v51);
          }

          *(v51 + 2) = a8 + 1;
          v60 = &v51[16 * a8];
          *(v60 + 4) = v56;
          *(v60 + 5) = v58;
          isUniquelyReferenced_nonNull_native = v69;
          v24 = v70;
        }

        while (v50 != v70);
        goto LABEL_51;
      }
    }
  }

  v26 = &_swiftEmptyDictionarySingleton;
LABEL_50:
  v51 = _swiftEmptyArrayStorage;
LABEL_51:
  v61 = v62;

  sub_91BC(v63, v64, v51, v61, v61, v26, v65, v66, v67, v11);

  swift_bridgeObjectRelease_n();
}

void sub_2E3B8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer) = a1;
  v2 = a1;
}

uint64_t LocalStorage.deinit()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL;
  v2 = sub_310D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  v4 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);

  v5 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription);

  return v0;
}

uint64_t LocalStorage.__deallocating_deinit()
{
  LocalStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_2E528()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = [objc_opt_self() backgroundTaskDelegate];
  if (v1)
  {
    v2 = sub_31300();
    v6[4] = sub_30A20;
    v6[5] = v0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_23BEC;
    v6[3] = &unk_3E200;
    v3 = _Block_copy(v6);

    v4 = [v1 ec_beginBackgroundTaskWithName:v2 expirationHandler:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v0 + 16) = v4;
  *(v0 + 24) = v1 == 0;

  return v4;
}

id sub_2E6B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      [result ec_endBackgroundTask:v3];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2E740(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  if ((*(a3 + 24) & 1) == 0)
  {
    v4 = *(a3 + 16);
    v5 = [objc_opt_self() backgroundTaskDelegate];
    if (v5)
    {
      [v5 ec_endBackgroundTask:v4];
      swift_unknownObjectRelease();
    }
  }

  result = swift_beginAccess();
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

id sub_2E7FC(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3)
{
  result = a1();
  if ((a3[1] & 1) == 0)
  {
    v5 = *a3;
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      [result ec_endBackgroundTask:v5];
      result = swift_unknownObjectRelease();
    }
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

char *sub_2E8B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_426A0, &qword_33038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E9F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_42CE0, &unk_334B0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_2EB20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2294(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2294(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2EC6C(uint64_t a1, uint64_t a2)
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

  sub_2294(&qword_42CE0, &unk_334B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2ECF0(uint64_t a1, uint64_t a2)
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

  sub_2294(&qword_42498, &qword_32CB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2ED7C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_316A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_318F0();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      result = v17 + 8 * v3;
      if (v3 < v6 || result >= v17 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2EF0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_316A0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_31900();

      sub_31370();
      v14 = sub_31920();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2F0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LocalStorage()
{
  result = qword_42B48;
  if (!qword_42B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F184()
{
  result = sub_310D0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2F300()
{
  v0 = sub_31520();
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_310D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v38 = 0;
  v12 = [objc_opt_self() defaultManager];
  sub_310B0(0);
  v13 = sub_31300();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v38];

  if (v14)
  {
    v15 = sub_31300();
    v16 = [objc_opt_self() bundleWithIdentifier:v15];

    if (v16)
    {
      v36 = v5;
      v17 = sub_31300();
      v18 = sub_31300();
      v19 = [v16 URLForResource:v17 withExtension:v18];

      if (v19)
      {
        sub_310A0();

        v20 = objc_allocWithZone(NSManagedObjectModel);
        sub_31080(v21);
        v23 = v22;
        v24 = [v20 initWithContentsOfURL:v22];

        if (v24)
        {
          v35 = v16;
          v25 = objc_allocWithZone(NSPersistentContainer);
          v26 = v24;
          v27 = sub_31300();
          v28 = [v25 initWithName:v27 managedObjectModel:v26];

          v29 = [v28 persistentStoreCoordinator];
          sub_31090();
          sub_31500();
          sub_31640();

          (*(v37 + 8))(v3, v0);
          v34 = *(v36 + 8);
          v34(v9, v4);
          v34(v11, v4);
          return;
        }

        (*(v36 + 8))(v11, v4);
      }
    }

    if (qword_42220 != -1)
    {
      swift_once();
    }

    v30 = sub_311B0();
    sub_8BFC(v30, qword_434B0);
    v31 = sub_31190();
    v32 = sub_314D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Failed to destroy persistent store", v33, 2u);
    }
  }
}

uint64_t sub_2F9BC()
{
  v0 = sub_310D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_31300();
  v9 = [objc_opt_self() bundleWithIdentifier:v8];

  if (v9)
  {
    v10 = sub_31300();
    v11 = sub_31300();
    v12 = [v9 URLForResource:v10 withExtension:v11];

    if (v12)
    {
      sub_310A0();

      (*(v1 + 32))(v7, v5, v0);
      v13 = objc_allocWithZone(NSManagedObjectModel);
      sub_31080(v14);
      v16 = v15;
      v17 = [v13 initWithContentsOfURL:v15];

      if (v17)
      {
        (*(v1 + 8))(v7, v0);

        return v17;
      }
    }

    else
    {
    }
  }

  result = sub_317A0();
  __break(1u);
  return result;
}

id sub_2FC68()
{
  v0 = sub_31270();
  v71 = *(v0 - 8);
  v72 = v0;
  v1 = *(v71 + 64);
  __chkstk_darwin(v0);
  v70 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_310D0();
  v75 = *(v3 - 8);
  v76 = v3;
  v73 = *(v75 + 64);
  v4 = __chkstk_darwin(v3);
  v68 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v58 - v6;
  v8 = sub_29D30();
  v74 = v7;
  sub_31090();
  v9 = objc_allocWithZone(NSPersistentContainer);
  v10 = v8;
  v69 = v10;
  v11 = sub_31300();
  v12 = [v9 initWithName:v11 managedObjectModel:v10];
  v67 = v12;

  v13 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_31080(v14);
  v16 = v15;
  v17 = [v13 initWithURL:v15];

  [v17 setShouldMigrateStoreAutomatically:1];
  [v17 setShouldInferMappingModelAutomatically:1];
  [v17 setReadOnly:0];
  v65 = sub_2294(&qword_42498, &qword_32CB8);
  v18 = swift_allocObject();
  v64 = xmmword_32A70;
  *(v18 + 16) = xmmword_32A70;
  *(v18 + 32) = v17;
  sub_B304(0, &qword_42CC0, NSPersistentStoreDescription_ptr);
  v66 = v17;
  isa = sub_313D0().super.isa;

  [v12 setPersistentStoreDescriptions:isa];

  v20 = sub_31300();
  v21 = [objc_opt_self() bundleWithIdentifier:v20];

  v22 = objc_allocWithZone(NSManagedObjectModelReference);
  v23 = v21;
  v24 = sub_31300();
  v25 = sub_31300();
  v26 = [v22 initWithName:v24 inBundle:v23 versionChecksum:v25];

  v27 = objc_allocWithZone(NSManagedObjectModelReference);
  v28 = v23;
  v63 = v28;
  v29 = sub_31300();
  v30 = sub_31300();
  v31 = [v27 initWithName:v29 inBundle:v28 versionChecksum:v30];

  sub_B304(0, &qword_42CC8, NSCustomMigrationStage_ptr);
  v32 = v26;
  v61 = v32;
  v33.super.isa = v31;
  v62 = v33.super.isa;
  v34.super.isa = v32;
  v35 = sub_315E0(v34, v33).super.super.isa;
  v36 = sub_31300();
  [(objc_class *)v35 setLabel:v36];

  v37 = v75;
  v60 = *(v75 + 16);
  v38 = v68;
  v39 = v74;
  v40 = v76;
  v60(v68, v74, v76);
  v41 = *(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = 1635017060;
  *(v42 + 3) = 0xE400000000000000;
  *(v42 + 4) = 0x44497465737361;
  *(v42 + 5) = 0xE700000000000000;
  v59 = *(v37 + 32);
  v59(&v42[(v41 + 48) & ~v41], v38, v40);
  sub_315F0();
  v43 = swift_allocObject();
  *(v43 + 16) = v64;
  *(v43 + 32) = v35;
  sub_B304(0, &qword_42CD0, NSStagedMigrationManager_ptr);
  v65 = v35;
  v44._rawValue = v43;
  *&v64 = sub_31630(v44);
  v45 = v66;
  [v66 setOption:v64 forKey:NSPersistentStoreStagedMigrationManagerOptionKey];
  v58 = dispatch_semaphore_create(0);
  v60(v38, v39, v40);
  v46 = (v41 + 16) & ~v41;
  v47 = (v73 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v59((v49 + v46), v38, v40);
  v50 = v67;
  *(v49 + v47) = v67;
  *(v49 + v48) = v45;
  v51 = v58;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  aBlock[4] = sub_30680;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B6B8;
  aBlock[3] = &unk_3E138;
  v52 = _Block_copy(aBlock);
  v53 = v45;
  v54 = v50;
  v55 = v51;

  [v54 loadPersistentStoresWithCompletionHandler:v52];
  _Block_release(v52);
  v56 = v70;
  sub_31250();
  sub_315C0();

  (*(v71 + 8))(v56, v72);
  (*(v75 + 8))(v74, v76);
  return v54;
}

uint64_t sub_3046C()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_305BC()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

Swift::Int sub_30680(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_310D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2ABD8(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t sub_30744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3075C()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

Swift::Int sub_307F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_310D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2B3F0(a1, a2, v2 + v6, v7);
}

uint64_t sub_308A4()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_309E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_30A28()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);

  v7 = sub_31180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v4, 1, v7))
  {
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (!v9(v0 + v5, 1, v7))
  {
    (*(v8 + 8))(v0 + v5, v7);
  }

  v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_30BC8(unint64_t a1, char a2)
{
  v5 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2DDAC(a1, a2 & 1, *(v2 + 16), v2 + v7, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_30CA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_30CE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_30D34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_30D78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_30DDC()
{
  v1 = *(v0 + 24);

  sub_9170((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_30E1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_30E44()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_30E9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_30F08()
{
  result = qword_42750;
  if (!qword_42750)
  {
    sub_31530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42750);
  }

  return result;
}

unint64_t sub_30F60()
{
  result = qword_42D10;
  if (!qword_42D10)
  {
    sub_B304(255, &qword_42930, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42D10);
  }

  return result;
}

uint64_t sub_30FD0()
{

  return _swift_deallocObject(v0, 24, 7);
}