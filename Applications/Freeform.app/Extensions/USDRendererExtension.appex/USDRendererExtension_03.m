uint64_t sub_100058A5C(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_10008ACE8();
  v1[5] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_100058AF8, v3, v2);
}

uint64_t sub_100058AF8()
{
  [*(v0 + 24) frame];
  if (CGRectIsEmpty(v13))
  {
    v1 = [*(v0 + 24) superview];
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 24);
      [v1 setNeedsLayout];
      [v2 layoutIfNeeded];
      [v3 frame];
      if (CGRectIsEmpty(v14))
      {
        [*(v0 + 24) setFrame:{0.0, 0.0, 300.0, 300.0}];
      }
    }
  }

  [*(v0 + 24) frame];
  if (v4 != v5)
  {
    if (v4 <= v5)
    {
      v4 = v5;
    }

    [*(v0 + 24) setFrame:{0.0, 0.0, v4, v4}];
  }

  v6 = *(v0 + 24);
  v7 = sub_10008ACD8();
  *(v0 + 64) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = sub_10002A958(&qword_1000D7CC8);
  *v9 = v0;
  v9[1] = sub_100058CDC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v7, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001000A3260, sub_1000592D0, v8, v10);
}

uint64_t sub_100058CDC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100058E3C, v3, v2);
}

uint64_t sub_100058E3C()
{

  v1 = *(v0 + 16);
  v2 = [v1 CGImage];

  v3 = *(v0 + 8);

  return v3(v2, 0, 1);
}

uint64_t sub_100058ED0()
{
  v1[2] = v0;
  sub_10008ACE8();
  v1[3] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100058F68, v3, v2);
}

uint64_t sub_100058F68()
{
  v1 = v0[2];
  if (*(v1 + 72) >> 62 == 1)
  {
    v2 = *(v1 + 56);
    v0[6] = v2;
    v3 = *(v2 + 88);
    v0[7] = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_100059098;

    return sub_100058A5C(v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0, 1);
  }
}

uint64_t sub_100059098(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_100059258;
  }

  else
  {

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1000591DC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000591DC()
{

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 8);
  v4 = *(v0 + 96) & 1;

  return v3(v1, v2, v4);
}

uint64_t sub_100059258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000592D8()
{
  v1 = sub_10002A958(&qword_1000D7CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000593B0(uint64_t a1)
{
  v4 = *(sub_10002A958(&qword_1000D7CD0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F13C;

  return sub_10005749C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000594B4()
{
  v1 = sub_10002A958(&qword_1000D7CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100059548(void *a1)
{
  sub_10002A958(&qword_1000D7CD0);

  return sub_1000576D8(a1);
}

uint64_t sub_100059630(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D7990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000596A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000596E0()
{
  result = qword_1000D7CE8;
  if (!qword_1000D7CE8)
  {
    sub_10002AD9C(&qword_1000D7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7CE8);
  }

  return result;
}

uint64_t sub_100059744()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10002C7DC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_100059834(uint64_t a1)
{
  v4 = *(sub_100089DA8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027728;

  return sub_1000296CC(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_100059960(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 == 2)
    {

      return sub_10002C83C(result, a2, a3);
    }
  }

  else if (v5)
  {
  }

  else
  {
  }

  return result;
}

void *sub_1000599E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005CF60(0, v1, 0);
  v3 = a1 + 64;
  result = sub_10008AE98();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 56) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10005CF60((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[4 * v11];
    v13[4] = 0x617453656B617761;
    v13[5] = 0xEA00000000006574;
    v13[6] = v22;
    v13[7] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10005E820(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10005E820(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_100059C48()
{
  *&result = 1060439283;
  xmmword_1000D7D00 = xmmword_1000A9FE0;
  return result;
}

uint64_t sub_100059C5C(char a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 112) = a1;
  *(v3 + 64) = a2;
  sub_10008ACE8();
  *(v3 + 80) = sub_10008ACD8();
  v5 = sub_10008AC88();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return _swift_task_switch(sub_100059CFC, v5, v4);
}

unint64_t sub_100059CFC()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v40 = v2;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v36 = v3 + 64;
  v37 = v3;
  v35 = v8;
  v38 = v1;
  v39 = v0;
  while (v7)
  {
LABEL_12:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v16 = (*(v3 + 48) + v15);
    v17 = v16[1];
    v41 = *v16;
    v18 = (*(v3 + 56) + v15);
    v19 = *v18;
    if (!v18[1])
    {

      goto LABEL_19;
    }

    swift_retain_n();

    if ((sub_10008A2F8() & 1) == 0)
    {

LABEL_19:
      sub_10008A168();
      v20 = sub_10008A578();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v1 + v40);
      *(v1 + v40) = 0x8000000000000000;
      result = sub_10003F9EC(v41, v17);
      v23 = v42[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v27 = v22;
      if (v42[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v33 = result;
        sub_10006778C();
        result = v33;
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_25:
        v12 = v42;
        v42[(result >> 6) + 8] |= 1 << result;
        v29 = (v42[6] + 16 * result);
        *v29 = v41;
        v29[1] = v17;
        v30 = (v42[7] + 16 * result);
        *v30 = v19;
        v30[1] = v20;
        v31 = v42[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_37;
        }

        v42[2] = v32;
      }

      else
      {
        sub_100065D48(v26, isUniquelyReferenced_nonNull_native);
        result = sub_10003F9EC(v41, v17);
        if ((v27 & 1) != (v28 & 1))
        {

          return sub_10008B1A8();
        }

LABEL_24:
        if ((v27 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_4:
        v11 = result;

        v12 = v42;
        v13 = (v42[7] + 16 * v11);
        *v13 = v19;
        v13[1] = v20;
      }

      v1 = v38;
      v0 = v39;
      *(v38 + v40) = v12;
      swift_endAccess();

      v4 = v36;
      v3 = v37;
      v8 = v35;
      goto LABEL_6;
    }

    if (sub_10008A378())
    {
      sub_10008A368();
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_10005A10C;

  return sub_10005B9DC();
}

uint64_t sub_10005A10C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10005A22C, v3, v2);
}

uint64_t sub_10005A22C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005A28C()
{
  v1[5] = v0;
  sub_10008ACE8();
  v1[6] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10005A324, v3, v2);
}

uint64_t sub_10005A324()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (sub_10008A2F8())
      {
        sub_10008A358();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_10005A4C0;

  return sub_10005B9DC();
}

uint64_t sub_10005A4C0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10005A5E0, v3, v2);
}

uint64_t sub_10005A5E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005A640()
{
  v1[5] = v0;
  sub_10008ACE8();
  v1[6] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10005A6D8, v3, v2);
}

uint64_t sub_10005A6D8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (sub_10008A2F8())
      {
        sub_10008A368();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_10005A874;

  return sub_10005B9DC();
}

uint64_t sub_10005A874()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10005E838, v3, v2);
}

uint64_t sub_10005A994()
{
  v1[8] = v0;
  sub_10008ACE8();
  v1[9] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_10005AA2C, v3, v2);
}

unint64_t sub_10005AA2C()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v39 = v2;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v38 = v3;

  v10 = 0;
  v36 = v4;
  v37 = v0;
  while (v7)
  {
LABEL_11:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v16 = (*(v38 + 48) + v15);
    v17 = v16[1];
    v40 = *v16;
    v18 = (*(v38 + 56) + v15);
    v19 = *v18;
    if (v18[1])
    {
      swift_retain_n();

      if (sub_10008A2F8())
      {
        sub_10008A348();
      }
    }

    else
    {
    }

    swift_beginAccess();
    v20 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v1 + v39);
    v22 = v1;
    *(v1 + v39) = 0x8000000000000000;
    result = sub_10003F9EC(v40, v17);
    v24 = v41[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v28 = v23;
    if (v41[3] < v27)
    {
      sub_100065D48(v27, isUniquelyReferenced_nonNull_native);
      result = sub_10003F9EC(v40, v17);
      if ((v28 & 1) != (v29 & 1))
      {

        return sub_10008B1A8();
      }

LABEL_21:
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v34 = result;
    sub_10006778C();
    result = v34;
    if (v28)
    {
LABEL_4:
      v11 = result;

      v12 = v41;
      v13 = (v41[7] + 16 * v11);
      *v13 = v20;
      v13[1] = 0;

      goto LABEL_5;
    }

LABEL_22:
    v12 = v41;
    v41[(result >> 6) + 8] |= 1 << result;
    v30 = (v41[6] + 16 * result);
    *v30 = v40;
    v30[1] = v17;
    v31 = (v41[7] + 16 * result);
    *v31 = v20;
    v31[1] = 0;
    v32 = v41[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_34;
    }

    v41[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    *(v22 + v39) = v12;
    v1 = v22;
    v0 = v37;
    swift_endAccess();

    v4 = v36;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  v35 = swift_task_alloc();
  *(v0 + 96) = v35;
  *v35 = v0;
  v35[1] = sub_10005ADB4;

  return sub_10005B9DC();
}

uint64_t sub_10005ADB4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10005AED4, v3, v2);
}

uint64_t sub_10005AED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005AF34()
{
  v1[5] = v0;
  sub_10008ACE8();
  v1[6] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10005AFCC, v3, v2);
}

uint64_t sub_10005AFCC()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (sub_10008A2F8())
      {
        sub_10008A2D8();
        sub_10008A358();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_10005A874;

  return sub_10005B9DC();
}

uint64_t sub_10005B170(float a1)
{
  *(v2 + 40) = v1;
  *(v2 + 36) = a1;
  *(v2 + 48) = sub_10008ACE8();
  *(v2 + 56) = sub_10008ACD8();
  v4 = sub_10008AC88();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return _swift_task_switch(sub_10005B210, v4, v3);
}

uint64_t sub_10005B210()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 36);
  v3 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 48) * v2;
  v4 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 56) * v2;
  v5 = sub_10008ACD8();
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_10002A958(&unk_1000D66C0);
  *v7 = v0;
  v7[1] = sub_10005B354;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v5, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001000A1D20, sub_10005E82C, v6, v8);
}

uint64_t sub_10005B354()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10005B4E4;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10005B478;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005B478()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_10005B4E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005B55C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (qword_1000D6250 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  result = sub_10006081C(a2, a1, a3, a4);
  if ((result & 1) == 0)
  {
    sub_10002ACC4();
    swift_allocError();
    *v7 = 0xD000000000000018;
    *(v7 + 8) = 0x80000001000A3450;
    *(v7 + 16) = 5;
    sub_10002A958(&qword_1000D8000);
    return sub_10008AC98();
  }

  return result;
}

uint64_t sub_10005B658@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  v44 = a1;
  if (Strong && (v4 = *(Strong + 32), v5 = v4, , v4))
  {
    v43 = v5[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame];
  }

  else
  {
    v43 = 1;
  }

  v41 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
  v42 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  v6 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_10002A958(&unk_1000D7FE0);
  v8 = sub_10008AFA8();
  v9 = v8;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = v8 + 64;
  v50 = v7;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v19 = v16 | (v15 << 6);
      v20 = (*(v50 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      if (*(*(v50 + 56) + 16 * v19 + 8))
      {
        v49 = *v20;

        v48 = sub_10008A378();
        v47 = sub_10008A338();
        v46 = sub_10008A318();
        v23 = sub_10008A328();
        sub_10008A2E8();
        v25 = v24;

        v22 = v49;

        v26 = 256;
        if ((v47 & 1) == 0)
        {
          v26 = 0;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL | v48 & 1;
        v28 = 0x10000;
        if ((v46 & 1) == 0)
        {
          v28 = 0;
        }

        v29 = 0x1000000;
        if ((v23 & 1) == 0)
        {
          v29 = 0;
        }

        v30 = v27 | v28 | v29 | (v25 << 32);
      }

      else
      {

        v30 = 2;
      }

      *(v45 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v31 = (v9[6] + 16 * v19);
      *v31 = v22;
      v31[1] = v21;
      *(v9[7] + 8 * v19) = v30;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v9[2] = v34;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v15 >= v14)
      {
        break;
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    v36 = sub_1000599E4(v35);

    if (v36[2])
    {
      sub_10002A958(&unk_1000D85F0);
      v37 = sub_10008AFC8();
    }

    else
    {
      v37 = &_swiftEmptyDictionarySingleton;
    }

    v51 = v37;

    sub_10005D34C(v38, 1, &v51);

    v40 = v51;
    *v44 = v42;
    *(v44 + 16) = v41;
    *(v44 + 32) = v9;
    *(v44 + 40) = v43;
    *(v44 + 48) = v40;
  }

  return result;
}

uint64_t sub_10005B9DC()
{
  v1[9] = v0;
  v1[10] = sub_10008ACE8();
  v1[11] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_10005BA78, v3, v2);
}

uint64_t sub_10005BA78()
{
  v1 = *(v0 + 72);
  sub_10005B658(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  v5 = *(v0 + 64);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 48) = v5;
  *(v2 + 32) = v3;

  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = sub_10008ACD8();
    v8 = sub_10008AC88();
    *(v0 + 128) = v8;
    *(v0 + 136) = v7;

    return _swift_task_switch(sub_10005BB90, v8, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10005BB90()
{
  v1 = v0[14];
  v2 = v1[6];
  v0[18] = v2;
  v0[19] = v1[7];
  v0[20] = v1[8];
  v3 = v1[9];
  v0[21] = v3;
  v0[22] = v1[10];
  v0[23] = v1[11];
  v0[24] = v1[12];
  v0[25] = v1[13];
  v0[26] = v1[14];
  v0[27] = v1[15];
  v0[28] = v1[16];
  if (v3 >> 62 == 1 && v0[9] == v2)
  {

    v6 = swift_task_alloc();
    v0[29] = v6;
    *v6 = v0;
    v6[1] = sub_10005BCE0;

    return sub_10004DA78();
  }

  else
  {

    v4 = v0[12];
    v5 = v0[13];

    return _swift_task_switch(sub_10005BEDC, v4, v5);
  }
}

uint64_t sub_10005BCE0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10005BE00, v3, v2);
}

uint64_t sub_10005BE00()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_10005350C(v4, v3, v2, v1);

  v5 = v0[12];
  v6 = v0[13];

  return _swift_task_switch(sub_10005BEDC, v5, v6);
}

uint64_t sub_10005BEDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005BF3C()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
  sub_100089DD8();
  v3 = v2;
  v4 = ((v1 * 0.5) * 3.1416) / 180.0;
  if (v1 <= 0.0)
  {
    v4 = 0.0087266;
  }

  v5 = v3 / sinf(v4);
  sub_10002A958(&qword_1000D7CD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64A0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  sub_10005DAC8(inited);
  swift_setDeallocating();
  sub_100089EA8();
  sub_100089F58();
  sub_10008A198();
  v7 = sub_10008A218();
  sub_10008A288();
  v7(v9, 0);
  sub_100089F18();
  sub_10005DAC8(&off_1000C3C78);
  return sub_100089F58();
}

uint64_t sub_10005C0E0()
{
  v1 = sub_10008A8D8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10002A958(&qword_1000D7FD8);
  __chkstk_darwin(v5 - 8);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_lighting);
  v9 = (v2 + 104);
  if (v8)
  {
    *v4 = v8;
    (*v9)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1);
    swift_retain_n();
    sub_10008A8F8();
    v10 = sub_10008A908();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = sub_10008A558();
    sub_10008A568();
    v11(v15, 0);
  }

  else
  {
    sub_10008A208();
    *v4 = sub_10008A1F8();
    (*v9)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1);
    sub_10008A8E8();
    v13 = sub_10008A908();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    v14 = sub_10008A558();
    sub_10008A568();
    return v14(v15, 0);
  }
}

uint64_t sub_10005C3BC()
{
  v1 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + ((v8 << 10) | (16 * v10)) + 8))
    {

      if (sub_10008A2F8())
      {
        v11 = sub_10008A318();

        if (v11)
        {
          v12 = 1;
LABEL_15:

          return v12;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10005C4EC()
{
  sub_10008B2D8();
  v1 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = (*(v2 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    v12 = v10[1];

    sub_10008AB98();

    sub_10008B278(v11);
    if (v12)
    {
      sub_10008B288(1u);
      sub_10008B278(v12);
      v13 = sub_10008A2F8();
      sub_10008B288(v13 & 1);
      v14 = sub_10008A318();
      sub_10008B288(v14 & 1);
      v15 = sub_10008A378();
      sub_10008B288(v15 & 1);
      v16 = sub_10008A328();
      sub_10008B288(v16 & 1);
      sub_10008A2E8();
      if (v17 == 0.0)
      {
        v17 = 0.0;
      }

      sub_10008B298(LODWORD(v17));
      sub_10008A2C8();
      if (v18 == 0.0)
      {
        v18 = 0.0;
      }

      sub_10008B2A8(*&v18);
      sub_10008A2B8();
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      sub_10008B298(LODWORD(v19));
      sub_10008A308();
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      sub_10008B2A8(*&v20);
    }

    else
    {
      sub_10008B288(0);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return sub_10008B2B8();
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10005C760()
{
  sub_10008B268();
  sub_10008AB98();
  return sub_10008B2C8();
}

Swift::Int sub_10005C7D4()
{
  sub_10008B268();
  sub_10008AB98();
  return sub_10008B2C8();
}

uint64_t sub_10005C828@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000C3D08;
  v7._object = v3;
  v5 = sub_10008AFE8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10005C89C(uint64_t a1)
{
  v3 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_metadata);
  *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_metadata) = a1;

  v8 = sub_10003CCE0(v7, v6);

  if ((v8 & 1) == 0)
  {
    v10 = sub_10008AD08();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_10008ACE8();

    v11 = v1;
    v12 = sub_10008ACD8();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10004BA04(0, 0, v5, &unk_1000AA2A8, v13);
  }

  return result;
}

uint64_t sub_10005CA08()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v2 = sub_100089DA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10005CB30()
{
  sub_10005CA08();

  return swift_deallocClassInstance();
}

uint64_t _s11ClientSceneCMa()
{
  result = qword_1000D7D40;
  if (!qword_1000D7D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CBDC()
{
  result = sub_100089DA8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10005CCF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10005CD0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10005CD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10005CDD0()
{
  result = qword_1000D7F90;
  if (!qword_1000D7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7F90);
  }

  return result;
}

Swift::Int sub_10005CE24()
{
  v1 = *v0;
  sub_10008B268();
  sub_10008B278(v1);
  return sub_10008B2C8();
}

Swift::Int sub_10005CE98()
{
  sub_10008B268();
  sub_10008B278(*v0);
  return sub_10008B2C8();
}

void *sub_10005CF20(void *a1, int64_t a2, char a3)
{
  result = sub_10005D114(a1, a2, a3, *v3, &qword_1000D8008, &unk_1000AA2E8, qword_1000D8010);
  *v3 = result;
  return result;
}

void *sub_10005CF60(void *a1, int64_t a2, char a3)
{
  result = sub_10005CFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10005CF80(void *a1, int64_t a2, char a3)
{
  result = sub_10005D114(a1, a2, a3, *v3, &qword_1000D7FB0, &unk_1000AA280, &qword_1000D7FB8);
  *v3 = result;
  return result;
}

char *sub_10005CFC0(char *a1, int64_t a2, char a3)
{
  result = sub_10005D248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10005CFE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002A958(&qword_1000D7FF0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10002A958(&qword_1000D7FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10005D114(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10002A958(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002A958(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10005D248(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002A958(&qword_1000D7CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10005D34C(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10003F9EC(v6, v5);
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
    sub_100065A88(v15, v4 & 1);
    v10 = sub_10003F9EC(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_10008B1A8();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100067614();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10002A958(&qword_1000D7998);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_10008AEB8(30);
    v40._object = 0x80000001000A3340;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10008ABB8(v40);
    sub_10008AF78();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    sub_10008ABB8(v41);
    result = sub_10008AF88();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v38 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10003F9EC(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_100065A88(v31, 1);
        v27 = sub_10003F9EC(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v38 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10005D6FC(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v11 = sub_10003F9EC(v5, v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10006778C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10002A958(&qword_1000D7998);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

  sub_100065D48(v14, a2 & 1);
  v16 = sub_10003F9EC(v5, v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    sub_10008B1A8();
    __break(1u);
LABEL_28:
    sub_10008AEB8(30);
    v46._object = 0x80000001000A3340;
    v46._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10008ABB8(v46);
    sub_10008AF78();
    v47._countAndFlagsBits = 39;
    v47._object = 0xE100000000000000;
    sub_10008ABB8(v47);
    result = sub_10008AF88();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v5;
  v20[1] = v6;
  v21 = (v19[7] + 16 * v11);
  *v21 = v7;
  v21[1] = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v44 != 1)
  {
    v25 = a1 + 11;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 3);
      v27 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *a3;

      v32 = sub_10003F9EC(v28, v27);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v23 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v23)
      {
        goto LABEL_24;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_100065D48(v36, 1);
        v32 = sub_10003F9EC(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v39[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v39[2] = v43;
      v25 += 4;
      if (v44 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

uint64_t sub_10005DAC8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

double sub_10005DB14()
{
  v0 = sub_10002A958(&qword_1000D7FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_10008A1C8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  sub_10008A618();
  sub_100089F08();
  v17 = v10;
  sub_10008A3E8();
  v11 = sub_10008A1D8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v2, 1, v11) == 1)
  {
    sub_10005E608(v2);
  }

  else if ((*(v12 + 88))(v2, v11) == enum case for __REAnchoringType.surface(_:))
  {
    (*(v12 + 96))(v2, v11);
    v13 = *(sub_10002A958(&qword_1000D7FC8) + 48);
    (*(v4 + 32))(v9, v2, v3);
    v14 = sub_10008A1A8();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
    sub_10008A1B8();
    sub_10005E670(&qword_1000D7FD0, &type metadata accessor for __REAnchoringType.Alignment);
    sub_10008ABE8();
    sub_10008ABE8();
    v15 = *(v4 + 8);
    v15(v7, v3);
    if (v19 == v18)
    {
      if (qword_1000D6248 != -1)
      {
        swift_once();
      }

      v17 = xmmword_1000D7D00;
    }

    v15(v9, v3);
  }

  else
  {
    (*(v12 + 8))(v2, v11);
  }

  return *&v17;
}

uint64_t sub_10005DE7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  *&v61 = sub_10008A408();
  *&v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v15 = v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_compression;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_loadReceipt) = 0;
  v16 = v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_lighting;
  *v16 = 0;
  *(v16 + 8) = 0;
  v17 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_metadata;
  *(v7 + v17) = sub_100042050(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v19 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v20 = sub_100089DA8();
  (*(*(v20 - 8) + 16))(v7 + v19, a1 + v18, v20);
  v55[1] = a1;
  swift_weakAssign();
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_scene) = a2;
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_objectEntity) = a3;
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  v21 = v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration;
  v22 = *(a6 + 48);
  *(v21 + 32) = *(a6 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a6 + 64);
  v23 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v23;
  sub_100089EA8();
  sub_10005DAC8(&off_1000C3CA8);
  v58 = v24;

  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelAnchor) = sub_100089E88();
  sub_10008A618();
  sub_100089F28();
  v25 = (v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  *v25 = v26;
  v25[1] = v27;
  sub_100089DF8();
  sub_100089F58();

  sub_100089EC8();

  sub_10008A198();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_cameraEntity) = sub_10008A188();
  sub_10005DAC8(&off_1000C3CD8);
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_cameraAnchor) = sub_100089E88();

  sub_100089EC8();

  sub_10008A458();

  sub_10008A458();

  *v28.i64 = sub_10005DB14();
  v58 = v28;
  sub_100089F08();
  if ((vminv_u16(vmovn_s32(vceqq_f32(v58, v29))) & 1) == 0)
  {
    sub_100089F18();
  }

  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_environmentEntity) = sub_10008A608();

  sub_10008A5E8();

  sub_10008A588();

  v30 = v59;
  sub_10008A438();

  sub_10008A3F8();

  (*(v60 + 8))(v30, v61);
  v31 = sub_10008A5D8();
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = a2;
    v57 = v7;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_23:

    v35 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_24:
      v45 = &_swiftEmptyDictionarySingleton;
      goto LABEL_25;
    }

LABEL_19:
    sub_10002A958(&unk_1000D7FA0);
    v45 = sub_10008AFC8();
LABEL_25:
    *&v64[0] = v45;
    sub_10005D6FC(v35, 1, v64);
    v47 = v57;
    *(v57 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_animations) = *&v64[0];
    v48 = *(v47 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
    v60 = *(v47 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
    v61 = v48;
    v49 = sub_1000410CC(_swiftEmptyArrayStorage);
    v50 = sub_1000411C8(_swiftEmptyArrayStorage);
    v51 = v47 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v52 = v60;
    *v51 = v61;
    *(v51 + 16) = v52;
    *(v51 + 32) = v49;
    *(v51 + 40) = 0;
    *(v51 + 48) = v50;
    sub_10005BF3C();
    sub_10005C0E0();
    sub_10005B658(v64);

    v53 = v64[1];
    *v51 = v64[0];
    *(v51 + 16) = v53;
    *(v51 + 32) = v64[2];
    *(v51 + 48) = v65;

    return v47;
  }

LABEL_22:
  v46 = v31;
  v32 = sub_10008AF98();
  v31 = v46;
  v56 = a2;
  v57 = v7;
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_5:
  v33 = v31;
  v63 = _swiftEmptyArrayStorage;
  v31 = sub_10005CF80(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v58.i64[0] = a3;
    v34 = 0;
    v35 = v63;
    v36 = v33;
    *&v61 = v33 & 0xC000000000000001;
    v59 = (v33 & 0xFFFFFFFFFFFFFF8);
    *&v60 = v33;
    v37 = v32;
    do
    {
      a3 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v61)
      {
        v38 = sub_10008AED8();
      }

      else
      {
        if (v34 >= *(v59 + 2))
        {
          goto LABEL_21;
        }

        v38 = *(v36 + 8 * v34 + 32);
      }

      v62 = sub_10008AAE8();
      *&v64[0] = sub_10008B138();
      *(&v64[0] + 1) = v39;
      v66._countAndFlagsBits = 47;
      v66._object = 0xE100000000000000;
      sub_10008ABB8(v66);
      v40._countAndFlagsBits = sub_10008A158();
      if (v40._object)
      {
        object = v40._object;
      }

      else
      {
        v40._countAndFlagsBits = 0x64656D616E6E75;
        object = 0xE700000000000000;
      }

      v40._object = object;
      sub_10008ABB8(v40);

      v7 = *(&v64[0] + 1);
      v42 = *&v64[0];
      v63 = v35;
      a2 = v35[2];
      v43 = v35[3];
      if (a2 >= v43 >> 1)
      {
        v31 = sub_10005CF80((v43 > 1), a2 + 1, 1);
        v35 = v63;
      }

      v35[2] = a2 + 1;
      v44 = &v35[4 * a2];
      v44[4] = v42;
      v44[5] = v7;
      v44[6] = v38;
      v44[7] = 0;
      ++v34;
      v36 = v60;
    }

    while (a3 != v37);

    if (!v35[2])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10005E608(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D7FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005E670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E6B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10005E72C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E76C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027728;

  return sub_10004C70C();
}

uint64_t sub_10005E820(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CRLAsyncStreamProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_10005F094(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t CRLAsyncStreamProperty.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_10005F094(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_10005E934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008AD58();
  v5 = sub_10008AE68();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

char *CRLAsyncStreamProperty.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_10008AD58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = *(v2 + 104);
  (*(v5 + 16))(&v13 - v6, &v1[v8], v4);
  sub_10008AD48();
  v9 = *(v5 + 8);
  v9(v7, v4);
  (*(*(v3 - 8) + 8))(&v1[*(*v1 + 88)], v3);
  v10 = *(*v1 + 96);
  v11 = sub_10008AD68();
  (*(*(v11 - 8) + 8))(&v1[v10], v11);
  v9(&v1[v8], v4);

  return v1;
}

uint64_t CRLAsyncStreamProperty.__deallocating_deinit()
{
  CRLAsyncStreamProperty.deinit();

  return swift_deallocClassInstance();
}

uint64_t CRLAsyncStreamProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t CRLAsyncStreamProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_10005F530(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*CRLAsyncStreamProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*v1 + 80);
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v3[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  CRLAsyncStreamProperty.wrappedValue.getter(v8);
  return sub_10005EEA0;
}

void sub_10005EEA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_10005F530(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_10005F530(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRLAsyncStreamProperty.ProjectedValue.values.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 96);
  v5 = sub_10008AD68();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t CRLAsyncStreamProperty.ProjectedValue.publisher()()
{
  sub_10008A9C8();
  swift_getWitnessTable();
  return sub_10008A9F8();
}

uint64_t sub_10005F094(uint64_t a1)
{
  v2 = v1;
  v35 = *v1;
  v4 = *(v35 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v31 = &v29 - v6;
  v7 = sub_10008AD28();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = (&v29 - v8);
  v10 = sub_10008AD68();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_10008AD58();
  v38 = sub_10008AE68();
  v34 = *(v38 - 8);
  v14 = __chkstk_darwin(v38);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = *(v5 + 16);
  v20 = &v2[*(v35 + 88)];
  v35 = a1;
  v32 = v5 + 16;
  v30 = v19;
  v19(v20, a1, v4);
  v21 = *(v13 - 8);
  (*(v21 + 56))(v18, 1, 1, v13);
  *v9 = 1;
  v22 = v33;
  (*(v36 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v37);
  v39 = v4;
  v40 = v18;
  sub_10008AD78();
  v23 = *(v22 + 16);
  v24 = &v2[*(*v2 + 96)];
  v36 = v10;
  v37 = v12;
  v25 = v10;
  v26 = v34;
  v23(v24, v12, v25);
  (*(v26 + 16))(v16, v18, v38);
  result = (*(v21 + 48))(v16, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(&v2[*(*v2 + 104)], v16, v13);
    sub_10008A9C8();
    v30(v31, v35, v4);
    v28 = sub_10008A9D8();
    (*(v22 + 8))(v37, v36);
    *&v2[*(*v2 + 112)] = v28;
    (*(v26 + 8))(v18, v38);
    return v2;
  }

  return result;
}

uint64_t sub_10005F530(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v9 = sub_10008AD18();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 88);
  swift_beginAccess();
  (*(v6 + 24))(&v2[v13], a1, v5);
  swift_endAccess();
  sub_10008A9A8();
  (*(v6 + 16))(v8, a1, v5);
  sub_10008AD58();
  sub_10008AD38();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10005F750()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_10008AD68();
    if (v2 <= 0x3F)
    {
      result = sub_10008AD58();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10005F888()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10005F920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10002E1B4(a3, v22 - v9, &qword_1000D6780);
  v11 = sub_10008AD08();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002E21C(v10, &qword_1000D6780);
  }

  else
  {
    sub_10008ACF8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10008AC88();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10008AB78() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10002E21C(a3, &qword_1000D6780);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002E21C(a3, &qword_1000D6780);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_10005FBCC(uint64_t a1, id *a2)
{
  sub_10008AF68();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = sub_10008AF58();
    sub_10008AEC8();
    v24 = sub_10008AB08();

    v25 = [objc_opt_self() crl_redactedStringWithFormat:v24 arguments:v23];

    v26 = *a2;
    *a2 = v25;

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    sub_10002E7C4((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    v8 = sub_10008B2E8();
    v9 = *v4;
    v10 = *(v8 + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = v8;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      sub_10008AF48();
      v8 = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v8 = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(v8 + 16);
    if (v19)
    {
      v20 = (v8 + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10005FE14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = [*(v1 + 16) objectForKey:a1];
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    sub_10002E1B4(v8 + 64, &v20, &qword_1000D8548);
    if (*(&v21 + 1))
    {
      sub_10003637C(&v20, v19);
      sub_10002E21C(&v20, &qword_1000D8548);
      sub_10002E7C4(v19, v19[3]);
      sub_10008A978();
      sub_10002E85C(v19);
    }

    else
    {
      sub_10002E21C(&v20, &qword_1000D8548);
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    swift_beginAccess();
    sub_100068D10(&v20, v8 + 64, &qword_1000D8548);
    swift_endAccess();
    [*(v1 + 16) removeObjectForKey:a1];
    sub_10008A0F8();
    sub_10002E7C4(&v20, *(&v21 + 1));
    sub_10008A028();
    sub_10002E85C(&v20);
    if (![*(v1 + 16) count])
    {
      sub_100061D78();
      v16 = sub_10008AD08();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_10008ACE8();

      v17 = sub_10008ACD8();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v2;
      sub_10005F920(0, 0, v6, &unk_1000AA570, v18);
    }
  }

  else
  {
    if (qword_1000D6128 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlThreeDimensionalObjects;
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A64C0;
    sub_100089D58();
    sub_10008ABA8();
    sub_10008ABD8();

    v11 = sub_10008AB88();
    v13 = v12;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000536C0();
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    v14 = sub_10008AE08();
    sub_100035474(v9, &_mh_execute_header, v14, "(CoreRE) [%{public}@] Cannot remove unknown client.", 51, 2, inited);
    swift_setDeallocating();
    return sub_10002E85C(inited + 32);
  }
}

uint64_t sub_10006021C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();
  v8 = v6;

  v9 = sub_10008AB88();
  v11 = v10;

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000536C0();
  *(inited + 64) = v12;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v13 = sub_10008AE08();
  v30 = v8;
  sub_100035474(v8, &_mh_execute_header, v13, "(CoreRE) [%{public}@] Adding new client.", 40, 2, inited);
  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  strcpy(v39, "ClientScene-");
  BYTE5(v39[1]) = 0;
  HIWORD(v39[1]) = -5120;
  sub_100089DA8();
  sub_100068970(&qword_1000D8588, &type metadata accessor for UUID);
  v40._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v40);

  v14 = v39[16];
  sub_10006135C(v39[0], v39[1]);

  sub_10008AB78();

  RESceneCreate();

  RESceneSetRequiresAnchoring();
  sub_10008A478();
  v15 = sub_10008A448();
  RERelease();
  sub_10008A0F8();
  sub_10002E7C4(v39, v39[3]);
  sub_10008A018();
  sub_10002E85C(v39);
  _s11ClientSceneCMa();
  swift_allocObject();

  v16 = sub_10005DE7C(a1, v15, a2, a3, a4 & 1, a5);
  v17 = v14[3];
  _s6CoreREO19SceneRenderingStateCMa(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v18 = sub_100062858(v17, v16);
  if (v36)
  {
  }

  else
  {
    v35 = v12;
    v19 = v18;
    if (!v14[12])
    {
      sub_100061454();
    }

    if ((sub_10008A6A8() & 1) == 0)
    {
      sub_10008A698();
    }

    v20 = v14[2];

    [v20 setObject:v19 forKey:v16];
    sub_100089E48();
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    swift_weakInit();

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    sub_10008A468();

    sub_10002E21C(v37, &qword_1000D8578);
    swift_beginAccess();
    sub_100068D10(v39, v19 + 64, &qword_1000D8548);
    swift_endAccess();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1000A64C0;
    sub_100089D58();
    sub_10008ABA8();
    sub_10008ABD8();

    v25 = sub_10008AB88();
    v27 = v26;

    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v35;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = sub_10008AE08();
    sub_100035474(v30, &_mh_execute_header, v28, "(CoreRE) [%{public}@] Added new client.", 39, 2, v24);

    swift_setDeallocating();
    sub_10002E85C(v24 + 32);
  }

  return v16;
}

BOOL sub_10006081C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_10002A958(&qword_1000D85D8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v24 - v10);
  v12 = sub_100089DA8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  v19 = [*(v4 + 16) objectForKey:a1];
  if (v19)
  {
    sub_100089D98();
    (*(v13 + 16))(v16, v18, v12);
    v20 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
    v21 = *(v20 + 20);
    v22 = sub_10002A958(&qword_1000D8000);
    (*(*(v22 - 8) + 16))(v11 + v21, a2, v22);
    *v11 = a3;
    v11[1] = a4;
    *(v11 + *(v20 + 24)) = 0;
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    swift_beginAccess();
    sub_10007C500(v11, v16);
    swift_endAccess();

    (*(v13 + 8))(v18, v12);
  }

  return v19 != 0;
}

uint64_t sub_100060AA0()
{
  _s6CoreREO6EngineCMa();
  swift_allocObject();
  result = sub_100060ADC();
  qword_1000E3700 = result;
  return result;
}

uint64_t sub_100060ADC()
{
  v1 = v0;
  v2 = sub_10008A248();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008A678();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  *(v0 + 48) = 0u;
  v10 = v0 + 48;
  *(v0 + 16) = v9;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlThreeDimensionalObjects;
  v12 = sub_10008AE08();
  sub_100035474(v11, &_mh_execute_header, v12, "(CoreRE) Loading CoreRE.Engine.", 31, 2, &_swiftEmptyArrayStorage);
  sub_10008A668();
  sub_10008A628();
  type metadata accessor for REEngineServiceMask(0);
  v14 = v13;
  sub_10008A238();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v24 = v14;
  LODWORD(v23[0]) = v25 & 0xFFFFDF3F;
  sub_10008A228();
  sub_10002E85C(v23);
  sub_10008A638();
  sub_10008A648();
  sub_10008A238();
  v15(v5, v2);
  v25 = v23[0];
  v24 = v14;
  LODWORD(v23[0]) &= 0xFFFFDF3F;
  sub_10008A228();
  sub_10002E85C(v23);
  sub_10008A658();
  sub_10008A148();
  sub_10008A118();
  v1[5] = sub_10008A138();

  v16 = sub_10008A128();

  v1[4] = v16;

  sub_10008A108();

  sub_10002E7C4(v23, v24);
  v1[3] = sub_10008A0A8();
  sub_10002E85C(v23);
  sub_10008A0E8();
  sub_10002E7C4(v22, v22[3]);
  sub_10008A178();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_allocObject();
  swift_weakInit();
  sub_10008A888();

  sub_10002E21C(v20, &qword_1000D8578);
  swift_beginAccess();
  sub_100068D10(v23, v10, &qword_1000D8548);
  swift_endAccess();
  sub_10002E85C(v22);
  sub_10008A0C8();
  result = REServiceLocatorGetECSService();
  if (result)
  {
    REECSManagerAddDefaultSystems();
    (*(v18 + 8))(v8, v19);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100060F50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100060FA8();
  }

  return result;
}

uint64_t sub_100060FA8()
{
  v1 = v0;
  v2 = sub_100089C08();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A0C8();
  result = REServiceLocatorGetEngine();
  if (!result)
  {
    return result;
  }

  result = REServiceLocatorGetRenderManager();
  if (!result || !*(v0 + 96))
  {
    return result;
  }

  v35 = *(v0 + 96);
  v36 = result;
  v6 = *(v0 + 88);
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    goto LABEL_20;
  }

  *(v0 + 88) = v8;
  REEngineGetCurrentTime();
  RenderFrameSettings = RERenderManagerCreateRenderFrameSettings();
  RERenderFrameSettingsSetTotalTime();
  v10 = [*(v0 + 16) objectEnumerator];
  if (!v10)
  {
    v10 = [objc_allocWithZone(NSEnumerator) init];
  }

  sub_10008ADE8();

  sub_100089BF8();
  if (!v56)
  {
LABEL_15:
    (*(v37 + 8))(v4, v38);
    RERenderManagerCreateRenderFrameWorkload();
    RERenderFrameWorkloadConfigure();
    RERenderGraphEmitterAssetExecute();
    RERenderFrameWorkloadCommit();
    RERelease();
    return RERelease();
  }

  while (1)
  {
    sub_1000489EC(&v55, v54);
    _s6CoreREO19SceneRenderingStateCMa(0);
    if (!swift_dynamicCast())
    {
      (*(v37 + 8))(v4, v38);
      return RERelease();
    }

    v11 = v45;
    if (*(v45 + 256) == 1)
    {
      break;
    }

LABEL_10:
    sub_100089BF8();
    if (!v56)
    {
      goto LABEL_15;
    }
  }

  v12 = v1;
  v44 = *(v1 + 88);
  v13 = *(v45 + 16);
  v14 = v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration;
  v15 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v43 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v16 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
  v17 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
  v41 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 16);
  v42 = v17;
  v18 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 32);
  v19 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 40);
  v20 = RenderFrameSettings;
  v21 = *(v13 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 48);

  v22 = *(v14 + 32);
  v39 = *(v14 + 48);
  v40 = v22;
  v23 = sub_10005C4EC();
  LODWORD(v45) = v15;
  v46 = v43;
  v47 = v40;
  v48 = v39;
  *&v49 = v16;
  v50 = v42;
  v51 = v41;
  *&v52 = v18;
  BYTE8(v52) = v19;
  *&v53 = v21;
  *(&v53 + 1) = v23;
  RenderFrameSettings = v20;
  CRL3DRotation.init(_:)(&v45);
  v24 = *(v11 + 240);
  v54[7] = *(v11 + 224);
  v54[8] = v24;
  v25 = *(v11 + 208);
  v26 = *(v11 + 160);
  v54[2] = *(v11 + 144);
  v54[3] = v26;
  v27 = *(v11 + 176);
  v54[5] = *(v11 + 192);
  v54[6] = v25;
  v54[4] = v27;
  v28 = *(v11 + 128);
  v54[0] = *(v11 + 112);
  v54[1] = v28;
  v29 = v46;
  *(v11 + 112) = v45;
  *(v11 + 128) = v29;
  v30 = v52;
  *(v11 + 208) = v51;
  *(v11 + 224) = v30;
  *(v11 + 240) = v53;
  v31 = v48;
  *(v11 + 144) = v47;
  *(v11 + 160) = v31;
  v32 = v50;
  *(v11 + 176) = v49;
  *(v11 + 192) = v32;
  sub_10002E21C(v54, &qword_1000D8580);
  result = RERenderFrameSettingsAddGpuSignalEvent();
  v33 = *(v11 + 264);
  v7 = __CFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v7)
  {
    *(v11 + 264) = v34;

    v1 = v12;
    goto LABEL_10;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006135C(uint64_t a1, uint64_t a2)
{
  if (sub_100062190(a1, a2, v2))
  {
    v5 = 1;
    while (1)
    {

      v8._countAndFlagsBits = 45;
      v8._object = 0xE100000000000000;
      sub_10008ABB8(v8);
      v9._countAndFlagsBits = sub_10008B138();
      sub_10008ABB8(v9);

      if ((sub_100062190(a1, a2, v2) & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
  }

  return a1;
}

void sub_100061454()
{
  if (*(v0 + 96))
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_10005FBCC(_swiftEmptyArrayStorage, v26);
    sub_10008AEC8();
    v3 = sub_10008AB08();

    sub_10008AEC8();
    v4 = sub_10008AB08();

    v5 = [v4 lastPathComponent];

    v6 = sub_10008AB38();
    v8 = v7;

    if (qword_1000D6008 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A6480;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1000659E8();
    *(inited + 96) = v11;
    v12 = sub_100068970(&qword_1000D8980, sub_1000659E8);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000536C0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 257;
    v14 = v26[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = sub_10008AE18();
    sub_100035474(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_10002A958(&qword_1000D8570);
    swift_arrayDestroy();
    v18 = sub_10008AE18();
    sub_100035474(v9, &_mh_execute_header, v18, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    sub_10008AF68();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = sub_10008AF58();
    sub_10008AEC8();
    v21 = sub_10008AB08();

    sub_10008AEC8();
    v22 = sub_10008AB08();

    sub_10008AEC8();
    v23 = sub_10008AB08();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:257 isFatal:0 format:v23 args:v20];
  }

  else
  {
    sub_10008A0D8();
    sub_10002E7C4(v26, v27);
    sub_10008A0B8();
    sub_10002E85C(v26);
    AssetHandle = REAssetManagerCreateAssetHandle();
    if (AssetHandle)
    {
      v25 = AssetHandle;
      REAssetHandleLoadNow();
      sub_10008A108();
      sub_10002E7C4(v26, v27);
      sub_10008A098();
      sub_10002E85C(v26);
      RERenderGraphEmitterAssetRegisterProviders();
      *(v0 + 96) = v25;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000618BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100061958(Strong);
    }
  }

  return result;
}

void sub_100061958(uint64_t a1)
{
  if ([*(v1 + 16) objectForKey:a1])
  {
    sub_100063030();
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_10005FBCC(_swiftEmptyArrayStorage, &v25);
    sub_10008AEC8();
    v4 = sub_10008AB08();

    sub_10008AEC8();
    v5 = sub_10008AB08();

    v6 = [v5 lastPathComponent];

    v7 = sub_10008AB38();
    v9 = v8;

    if (qword_1000D6008 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A6480;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1000659E8();
    *(inited + 96) = v12;
    v13 = sub_100068970(&qword_1000D8980, sub_1000659E8);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000536C0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 305;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = sub_10008AE18();
    sub_100035474(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_10002A958(&qword_1000D8570);
    swift_arrayDestroy();
    v19 = sub_10008AE18();
    sub_100035474(v10, &_mh_execute_header, v19, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    sub_10008AF68();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = sub_10008AF58();
    sub_10008AEC8();
    v22 = sub_10008AB08();

    sub_10008AEC8();
    v23 = sub_10008AB08();

    sub_10008AEC8();
    v24 = sub_10008AB08();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:305 isFatal:0 format:v24 args:v21];
  }
}

void sub_100061D78()
{
  if (*(v0 + 96))
  {
    sub_10008A108();
    sub_10002E7C4(v24, v24[3]);
    sub_10008A098();
    sub_10002E85C(v24);
    RERenderGraphEmitterAssetUnregisterProviders();
    RERelease();
    *(v0 + 96) = 0;
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24[0] = [objc_allocWithZone(NSString) init];
    sub_10005FBCC(&_swiftEmptyArrayStorage, v24);
    sub_10008AEC8();
    v3 = sub_10008AB08();

    sub_10008AEC8();
    v4 = sub_10008AB08();

    v5 = [v4 lastPathComponent];

    v6 = sub_10008AB38();
    v8 = v7;

    if (qword_1000D6008 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A6480;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1000659E8();
    *(inited + 96) = v11;
    v12 = sub_100068970(&qword_1000D8980, sub_1000659E8);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000536C0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 275;
    v14 = v24[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = sub_10008AE18();
    sub_100035474(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_10002A958(&qword_1000D8570);
    swift_arrayDestroy();
    v18 = sub_10008AE18();
    sub_100035474(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, &_swiftEmptyArrayStorage);

    sub_10008AF68();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = sub_10008AF58();
    sub_10008AEC8();
    v21 = sub_10008AB08();

    sub_10008AEC8();
    v22 = sub_10008AB08();

    sub_10008AEC8();
    v23 = sub_10008AB08();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:275 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_100062190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100089C08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(a3 + 16) keyEnumerator];
  sub_10008ADE8();

  sub_100089BF8();
  while (v19)
  {
    sub_1000489EC(&v18, &v17);
    _s11ClientSceneCMa();
    if (swift_dynamicCast())
    {
      if (sub_10008A428() == a1 && v11 == a2)
      {

        v14 = 1;
        goto LABEL_12;
      }

      v13 = sub_10008B158();

      if (v13)
      {
        v14 = 1;
        goto LABEL_12;
      }
    }

    sub_100089BF8();
  }

  v14 = 0;
LABEL_12:
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_100062378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10008AF28();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_10008ACE8();
  v4[6] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10006246C, v7, v6);
}

uint64_t sub_10006246C()
{
  sub_10008B1D8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100062538;

  return sub_100065530(0xA055690D9DB80000, 1, 0, 0, 1);
}

uint64_t sub_100062538()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_100062760;
  }

  else
  {
    v8 = sub_1000626D0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000626D0()
{
  v1 = *(v0 + 16);

  if (![*(v1 + 16) count])
  {
    sub_10008A688();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100062760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000627CC()
{
  swift_unknownObjectRelease();

  sub_10002E21C(v0 + 48, &qword_1000D8548);

  return swift_deallocClassInstance();
}

uint64_t sub_100062858(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 64) = 0u;
  v7 = v2 + 64;
  *(v4 + 96) = 0;
  *(v4 + 80) = 0u;
  sub_100068954(v43);
  v8 = v43[7];
  *(v4 + 208) = v43[6];
  *(v4 + 224) = v8;
  *(v4 + 240) = v43[8];
  v9 = v43[3];
  *(v4 + 144) = v43[2];
  *(v4 + 160) = v9;
  v10 = v43[5];
  *(v4 + 176) = v43[4];
  *(v4 + 192) = v10;
  v11 = v43[1];
  *(v4 + 112) = v43[0];
  *(v4 + 128) = v11;
  *(v4 + 256) = 1;
  *(v4 + 264) = 0;
  v12 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_lastTextureResizeTimestamp;
  v13 = sub_100089D38();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_textureSizeIsStale) = 1;
  v14 = v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid) = 0;
  v15 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_snapshotRequests;
  *(v4 + v15) = sub_100042138(_swiftEmptyArrayStorage);
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v16 = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 48);
  v41[2] = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 32);
  v41[3] = v16;
  v42 = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
  v17 = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v41[0] = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v41[1] = v17;
  swift_unknownObjectRetain_n();

  v19 = sub_100085C68(v41, v18);
  v21 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v19 height:v20 mipmapped:0];
  [v21 setStorageMode:2];
  [v21 setUsage:23];
  v22 = sub_100085F1C(a1, v21, 0, 0);
  if (v3)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_10002E21C(v7, &qword_1000D8548);
    v26 = *(v4 + 224);
    v40[6] = *(v4 + 208);
    v40[7] = v26;
    v40[8] = *(v4 + 240);
    v27 = *(v4 + 160);
    v40[2] = *(v4 + 144);
    v40[3] = v27;
    v28 = *(v4 + 192);
    v40[4] = *(v4 + 176);
    v40[5] = v28;
    v29 = *(v4 + 128);
    v40[0] = *(v4 + 112);
    v40[1] = v29;
    sub_10002E21C(v40, &qword_1000D8580);
    sub_10002E21C(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_lastTextureResizeTimestamp, &unk_1000D8590);

    _s6CoreREO19SceneRenderingStateCMa(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v22;
    *(v4 + 32) = v22;
    *(v4 + 40) = v23;
    v31 = v23;
    v32 = v24;
    *(v4 + 48) = v24;
    *(v4 + 56) = v25;
    v33 = v25;
    *(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_textureSizeIsStale) = 0;
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v34 = v33;
      sub_100051958(v30, v31, v32, v34);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    if (*(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState + 8) == 1)
    {
      if (*(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState))
      {
        v35 = 0x7065656C7361;
      }

      else
      {
        v35 = 0x656B617761;
      }

      if (*(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState))
      {
        v36 = 0xE600000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }
    }

    else
    {
      v36 = 0x80000001000A3970;
      v35 = 0xD000000000000011;
    }

    v37 = *(a2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_metadata);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100066F20(v35, v36, isUniquelyReferenced_nonNull_native);
    sub_10005C89C(v37);

    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_100062C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = v5[7];
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v9 = v5[4];
    v10 = v5[5];
    v11 = v5[6];
    v12 = v5[7];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = v12;
    sub_100051958(v9, v10, v11, v13);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid) = 0;
  return result;
}

BOOL sub_100062DAC(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v3 = *(a1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v4 = v3;
  v4.i32[3] = *(a1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v5 = *(v1 + 16);
  v5.i32[3] = *v1;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v5))) & 1) == 0)
  {
    return 1;
  }

  result = 1;
  if ((vmovn_s32(vceqq_f32(v3, *(v1 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v2[2], *(v1 + 32)), vceqq_f64(v2[3], *(v1 + 48))), xmmword_1000A64D0)) & 0xF) == 0 && v2[4].f64[0] == *(v1 + 64))
  {
    v9 = (a1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v10 = v9[2].i64[0];
    v11 = v9[2].u8[8];
    v12 = *(v1 + 112);
    v13 = *(v1 + 120);
    if ((sub_1000412DC(*v9, v9[1], *(v1 + 80), *(v1 + 96)) & 1) == 0)
    {
      return 1;
    }

    v14 = sub_10003C954(v10, v12);

    result = 1;
    if ((v14 & 1) != 0 && ((v11 ^ v13) & 1) == 0)
    {
      return sub_10005C4EC() != *(v1 + 136);
    }
  }

  return result;
}

uint64_t sub_100062F1C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState;
  v4 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState);
  v5 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState + 8);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if (a2)
  {
    if (result)
    {
      if (!v4)
      {
        v5 = 0;
      }

      if (v5 == 1)
      {
        return result;
      }

LABEL_10:
      v6 = 0x7065656C7361;
      if (!result)
      {
        v6 = 0x656B617761;
      }

      v7 = 0xE600000000000000;
      if (!result)
      {
        v7 = 0xE500000000000000;
      }

      if (a2)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0xD000000000000011;
      }

      if (a2)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x80000001000A3970;
      }

      v10 = *(*(v2 + 16) + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_metadata);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100066F20(v8, v9, isUniquelyReferenced_nonNull_native);
      return sub_10005C89C(v10);
    }

    if (v4)
    {
      LOBYTE(v5) = 0;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 != result)
    {
      LOBYTE(v5) = 1;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100063030()
{
  v2 = v0;
  v3 = sub_100089E68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002A958(&unk_1000D8590);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v13 = sub_100089D38();
  v70 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v61 - v16;
  if (sub_100063850())
  {
    v66 = v13;
    v64 = v10;
    v63 = v3;
    v67 = v1;
    if (*(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState + 8) == 1 && *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState))
    {
      v17 = *(v0 + 32);
      v18 = *(v2 + 56);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = v18;
      if ([v17 setPurgeableState:1] - 3 < 2)
      {
        [v17 setPurgeableState:2];
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v61 = v6;
    v62 = v4;
    sub_100062F1C(0, 1);
    *(v2 + 256) = 1;
    v20 = *(v2 + 32);
    v21 = *(v2 + 56);
    v65 = *(v2 + 16);
    v22 = v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration;
    v23 = *(v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 48);
    v73[2] = *(v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 32);
    v73[3] = v23;
    v74 = *(v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
    v24 = *(v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
    v73[0] = *(v65 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration);
    v73[1] = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = v21;
    v27 = sub_100085C68(v73, v26);
    v29 = v28;
    if ([v20 width] == v27)
    {
      v30 = [v20 height];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v31 = v30 == v29;
      v32 = v66;
      if (v31)
      {
        goto LABEL_28;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v32 = v66;
    }

    v36 = v64;
    if (*(v2 + 264) >= 0x79uLL)
    {
      v37 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_lastTextureResizeTimestamp;
      swift_beginAccess();
      sub_10002E1B4(v2 + v37, v12, &unk_1000D8590);
      v38 = v70;
      if ((*(v70 + 48))(v12, 1, v32) == 1)
      {
        sub_10002E21C(v12, &unk_1000D8590);
      }

      else
      {
        v39 = v68;
        (*(v38 + 32))(v68, v12, v32);
        v40 = v69;
        sub_100089D28();
        sub_100089D18();
        v42 = v41;
        v43 = *(v38 + 8);
        v43(v40, v32);
        v43(v39, v32);
        if (v42 < 1.0)
        {
          v44 = 1;
LABEL_27:
          *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_textureSizeIsStale) = v44;
LABEL_28:
          sub_10005BF3C();
          return sub_100063A08();
        }
      }
    }

    v45 = *(v2 + 40);
    v46 = *(v2 + 48);
    v47 = *(v2 + 24);
    v48 = *(v22 + 48);
    v71[2] = *(v22 + 32);
    v71[3] = v48;
    v72 = *(v22 + 64);
    v49 = *(v22 + 16);
    v71[0] = *v22;
    v71[1] = v49;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v51 = sub_100085C68(v71, v50);
    v53 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v51 height:v52 mipmapped:0];
    [v53 setStorageMode:2];
    [v53 setUsage:23];
    v54 = v67;
    v55 = sub_100085F1C(v47, v53, v45, v46);
    if (v54)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 256) = 0;

      v59 = v61;
      sub_10008A528();

      sub_100089E58();
      (*(v62 + 8))(v59, v63);
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid) = 0;
      return swift_willThrow();
    }

    sub_100062C78(v55, v56, v57, v58);
    sub_100089D28();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v70 + 56))(v36, 0, 1, v32);
    v60 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_lastTextureResizeTimestamp;
    swift_beginAccess();
    sub_100068D10(v36, v2 + v60, &unk_1000D8590);
    swift_endAccess();
    v44 = 0;
    goto LABEL_27;
  }

  sub_10008A528();

  sub_100089E58();
  (*(v4 + 8))(v6, v3);
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid) = 0;
  *(v0 + 256) = 0;
  v33 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState);
  if (*(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_awakeState + 8) == 1)
  {
    v34 = v33 != 0;
    result = 1;
    return sub_100062F1C(result, v34);
  }

  result = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    if (result > 59)
    {
      [*(v0 + 32) setPurgeableState:3];
      result = 1;
      v34 = 1;
    }

    else
    {
      v34 = 0;
    }

    return sub_100062F1C(result, v34);
  }

  __break(1u);
  return result;
}

uint64_t sub_100063850()
{
  v1 = v0;
  v2 = [*(v0 + 48) signaledValue];
  if (v2 != [*(v1 + 40) signaledValue])
  {
    return 0;
  }

  v3 = *(v1 + 192);
  v4 = *(v1 + 224);
  v24 = *(v1 + 208);
  v25 = v4;
  v5 = *(v1 + 224);
  v26 = *(v1 + 240);
  v6 = *(v1 + 128);
  v7 = *(v1 + 160);
  v20 = *(v1 + 144);
  v21 = v7;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v22 = *(v1 + 176);
  v23 = v9;
  v10 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v10;
  v33 = v24;
  v34 = v5;
  v35 = *(v1 + 240);
  v29 = v20;
  v30 = v8;
  v31 = v22;
  v32 = v3;
  v27 = v18;
  v28 = v6;
  if (sub_100068CC0(&v27) == 1)
  {
    v11 = 1;
  }

  else
  {
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v36 = v27;
    v37 = v28;
    v13 = *(v1 + 16);
    v17[6] = v24;
    v17[7] = v25;
    v17[8] = v26;
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_100068CD8(v17, &v16);
    v11 = sub_100062DAC(v13);
    sub_10002E21C(&v18, &qword_1000D8580);
  }

  v14 = sub_10005C3BC();
  v15 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  if (v11 || (v14 & 1) != 0 || *(*(v1 + v15) + 16) > 0 || *(v1 + 264) <= 0x77uLL)
  {
    return 1;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_textureSizeIsStale);
  }
}

uint64_t sub_100063A08()
{
  v25 = sub_100089DA8();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100089E68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10008A528();

  sub_100089E58();
  v8 = *(v5 + 8);
  v8(v7, v4);
  RECameraViewDescriptorsComponentGetComponentType();
  v26 = REEntityGetOrAddComponentByClass();
  v22 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid;
  if ((*(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_viewDescriptorsValid) & 1) == 0)
  {

    sub_10008A528();

    sub_100089E58();
    v8(v7, v4);
    RECameraViewDescriptorsComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RECameraViewDescriptorsComponentClearCameraViewDescriptors();
    *(v0 + v22) = 0;
    RECameraViewDescriptorsComponentAddViewDescriptor();
    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
    RECameraViewDescriptorsComponentCameraViewDescriptorCopySettingStruct();
    RERenderGraphDataStructAddFloat4();
    RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
    RERelease();
  }

  v9 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  v27 = v0;
  v10 = *(v0 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v1 + 8;
  v24 = v1 + 16;

  for (i = 0; v13; result = (*(v1 + 8))(v3, v19))
  {
    v17 = i;
LABEL_11:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v25;
    (*(v1 + 16))(v3, *(v10 + 48) + *(v1 + 72) * (v18 | (v17 << 6)), v25);
    v20 = [*(v27 + 32) device];
    sub_1000641B4(v3, v26, v20);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      *(v27 + v22) = 1;
      return result;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063E60(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v32 = a4;
  v31 = a3;
  v33 = a2;
  v6 = sub_10002A958(&qword_1000D85D8);
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - v7;
  v34 = sub_100089DA8();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  v19 = *(v4 + v18);
  if (*(v19 + 16))
  {

    v30 = a1;
    v20 = sub_10003FAA8(a1);
    if (v21)
    {
      sub_1000689B8(*(v19 + 56) + *(v12 + 72) * v20, v15);

      sub_100068A1C(v15, v17);
      v22 = v32;
      if ((v32 & 0x100) != 0)
      {
        sub_10002ACC4();
        v24 = swift_allocError();
        v25 = v33;
        v26 = v31;
        *v27 = v33;
        *(v27 + 8) = v26;
        *(v27 + 16) = v22;
        v36 = v24;
        sub_1000535EC(v25, v26, v22);
        sub_10002A958(&qword_1000D8000);
        sub_10008AC98();
      }

      else
      {
        v36 = v33;
        v37 = v31;
        v38 = v32 & 1;
        v23 = v33;
        sub_10002A958(&qword_1000D8000);
        sub_10008ACA8();
      }

      sub_100068A80(v17);
    }

    else
    {
    }

    a1 = v30;
  }

  (*(v8 + 16))(v10, a1, v34);
  v28 = v35;
  (*(v12 + 56))(v35, 1, 1, v11);
  swift_beginAccess();
  sub_10007C500(v28, v10);
  return swift_endAccess();
}

uint64_t sub_1000641B4(uint64_t a1, void *a2, char *a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = sub_100089DA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v49 = &v40 - v10;
  v11 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v52 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v40 - v15);
  v17 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_snapshotRequests;
  result = swift_beginAccess();
  v19 = *(v4 + v17);
  if (*(v19 + 16))
  {
    v48 = v6;

    v20 = sub_10003FAA8(a1);
    if ((v21 & 1) == 0)
    {
    }

    sub_1000689B8(*(v19 + 56) + *(v52 + 72) * v20, v14);

    result = sub_100068A1C(v14, v16);
    if (*(v16 + *(v11 + 24)))
    {
      return sub_100068A80(v16);
    }

    v22 = *v16;
    if ((*v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      v47 = a1;
      if (v22 < 9.22337204e18)
      {
        v23 = v16[1];
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 > -9.22337204e18)
          {
            if (v23 < 9.22337204e18)
            {
              v24 = v11;
              v25 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v22 height:v23 mipmapped:0];
              [v25 setUsage:23];
              [v25 setStorageMode:0];
              v26 = [v51 newTextureWithDescriptor:v25];

              if (v26)
              {
                RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
                RERenderGraphDataStructAddFloat4();
                v27 = swift_allocObject();
                swift_weakInit();
                v42 = *(v7 + 16);
                v43 = v7 + 16;
                v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
                v45 = v4;
                v28 = v49;
                v41 = v24;
                v29 = v48;
                v42(v49, v47, v48);
                v30 = (*(v7 + 80) + 24) & ~*(v7 + 80);
                v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
                v32 = swift_allocObject();
                *(v32 + 16) = v27;
                v46 = v7;
                (*(v7 + 32))(v32 + v30, v28, v29);
                *(v32 + v31) = v26;
                aBlock[4] = sub_100068BB4;
                aBlock[5] = v32;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1000647FC;
                aBlock[3] = &unk_1000C67E8;
                v33 = _Block_copy(aBlock);
                swift_unknownObjectRetain();

                v50 = v26;
                v34 = v41;
                RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings();
                _Block_release(v33);
                v42(v51, v47, v29);
                v35 = v51;
                v36 = sub_100063E00();
                v37 = sub_100064840(v53);
                v39 = v38;
                if (!(*(v52 + 48))(v38, 1, v34))
                {
                  *(v39 + *(v34 + 24)) = 1;
                }

                (v37)(v53, 0);
                (*(v46 + 8))(v35, v29);
                (v36)(aBlock, 0);
                RERelease();
                swift_unknownObjectRelease();
              }

              else
              {
                sub_100063E60(v47, 0xD000000000000022, 0x80000001000A39C0, 261);
              }

              return sub_100068A80(v16);
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100064788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000649D0(a2, a3);
  }

  return result;
}

uint64_t sub_1000647FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void (*sub_100064840(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_100089DA8();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000681A8(v3, v8);
  return sub_100064958;
}

void sub_100064958(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1000649D0(uint64_t a1, uint64_t a2)
{
  v5 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
  if (v5)
  {
    v6 = v5;
    sub_10002A958(&unk_1000D85C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A64B0;
    *(inited + 32) = kCIContextWorkingColorSpace;
    type metadata accessor for CGColorSpace(0);
    *(inited + 40) = v6;
    *(inited + 64) = v8;
    *(inited + 72) = kCIContextOutputColorSpace;
    *(inited + 104) = v8;
    *(inited + 80) = v6;
    v9 = v6;
    v10 = kCIContextWorkingColorSpace;
    v11 = kCIContextOutputColorSpace;
    sub_100042354(inited);
    swift_setDeallocating();
    sub_10002A958(&qword_1000D7338);
    swift_arrayDestroy();
    v12 = objc_allocWithZone(CIContext);
    type metadata accessor for CIContextOption(0);
    sub_100068970(&qword_1000D85D0, type metadata accessor for CIContextOption);
    isa = sub_10008AAB8().super.isa;

    v14 = [v12 initWithOptions:isa];

    v15 = [objc_allocWithZone(CIImage) initWithMTLTexture:a2 options:0];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 imageByApplyingCGOrientation:4];

      if (v17)
      {
        [v17 extent];
        v18 = [v14 createCGImage:v17 fromRect:kCIFormatBGRA8 format:v9 colorSpace:?];
        if (v18)
        {
          v19 = *(v2 + 16) + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_compression;
          v20 = *v19;
          v21 = *(v19 + 8);
          v22 = v18;
          v23 = v18;
          sub_100063E60(a1, v22, v20, v21);

LABEL_8:
          return;
        }
      }
    }

    sub_100063E60(a1, 0xD000000000000024, 0x80000001000A3990, 261);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_100064C7C()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD000000000000011;
  }

  if (*v0)
  {
    return 0x7065656C7361;
  }

  return 0x656B617761;
}

uint64_t sub_100064CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100064D14()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10002E21C(v0 + 64, &qword_1000D8548);
  v1 = *(v0 + 224);
  v6[6] = *(v0 + 208);
  v6[7] = v1;
  v6[8] = *(v0 + 240);
  v2 = *(v0 + 160);
  v6[2] = *(v0 + 144);
  v6[3] = v2;
  v3 = *(v0 + 192);
  v6[4] = *(v0 + 176);
  v6[5] = v3;
  v4 = *(v0 + 128);
  v6[0] = *(v0 + 112);
  v6[1] = v4;
  sub_10002E21C(v6, &qword_1000D8580);
  sub_10002E21C(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreREP33_6B26D7FDF97DFF6774F3E1B8C546A30619SceneRenderingState_lastTextureResizeTimestamp, &unk_1000D8590);

  return swift_deallocClassInstance();
}

void sub_100064E58()
{
  sub_100064F50();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100064F50()
{
  if (!qword_1000D8250)
  {
    sub_100089D38();
    v0 = sub_10008AE68();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8250);
    }
  }
}

uint64_t sub_100064FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002A958(&qword_1000D8000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000650AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002A958(&qword_1000D8000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_100065194()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_100065220();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100065220()
{
  if (!qword_1000D8508)
  {
    sub_10002AD9C(&unk_1000D66C0);
    sub_10002AD9C(&qword_1000D7998);
    v0 = sub_10008ACB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8508);
    }
  }
}

uint64_t _s6CoreREO19SceneRenderingStateC10AwakeStateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s6CoreREO19SceneRenderingStateC10AwakeStateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000652F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065314(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 sub_100065344(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100065370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000653B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006543C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006547C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027728;

  return sub_100062378(a1, v4, v5, v6);
}

uint64_t sub_100065530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10008AF18();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100065630, 0, 0);
}

uint64_t sub_100065630()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10008AF28();
  v5 = sub_100068970(&qword_1000D8550, &type metadata accessor for ContinuousClock);
  sub_10008B1B8();
  sub_100068970(&qword_1000D8558, &type metadata accessor for ContinuousClock.Instant);
  sub_10008AF38();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000657C0;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000657C0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10006597C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10006597C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000659E8()
{
  result = qword_1000D8560;
  if (!qword_1000D8560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D8560);
  }

  return result;
}

uint64_t sub_100065A34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065A88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002A958(&unk_1000D85F0);
  v37 = a2;
  result = sub_10008AFB8();
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

      sub_10008B268();
      sub_10008AB98();
      result = sub_10008B2C8();
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

uint64_t sub_100065D5C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10002A958(a3);
  v39 = a2;
  result = sub_10008AFB8();
  v8 = result;
  if (*(v6 + 16))
  {
    v37 = v3;
    v38 = v6;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v6 + 48) + v23);
      v25 = v24[1];
      v40 = *v24;
      v26 = (*(v6 + 56) + v23);
      v27 = *v26;
      v28 = v26[1];
      if ((v39 & 1) == 0)
      {
      }

      sub_10008B268();
      sub_10008AB98();
      result = sub_10008B2C8();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v40;
      v18[1] = v25;
      v19 = (*(v8 + 56) + v17);
      *v19 = v27;
      v19[1] = v28;
      ++*(v8 + 16);
      v6 = v38;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100066020(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002A958(&qword_1000D72F8);
  result = sub_10008AFB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      if ((a2 & 1) == 0)
      {
      }

      result = sub_10008B258();
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

LABEL_35:
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
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100066290(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002A958(&unk_1000D85A0);
  v31 = a2;
  result = sub_10008AFB8();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 56) + 16 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      if ((v31 & 1) == 0)
      {
      }

      sub_10008B268();
      sub_10008AB98();
      result = sub_10008B2C8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v7 + 16);
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100066530(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100089DA8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10002A958(&unk_1000D85E0);
  v43 = a2;
  result = sub_10008AFB8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
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
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100068A1C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000689B8(v29 + v28 * v24, v47);
      }

      sub_100068970(&qword_1000D7308, &type metadata accessor for UUID);
      result = sub_10008AAD8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100068A1C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100066994(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_100089DA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002A958(&unk_1000D85B0);
  v49 = a2;
  result = sub_10008AFB8();
  v11 = result;
  if (*(v9 + 16))
  {
    v52 = v8;
    v53 = v5;
    v45 = v2;
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
    v46 = (v6 + 16);
    v47 = v6;
    v50 = (v6 + 32);
    v18 = result + 64;
    v48 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v51 = *(v6 + 72);
      v28 = v27 + v51 * v26;
      if (v49)
      {
        (*v50)(v52, v28, v53);
        v29 = (*(v9 + 56) + 48 * v26);
        v30 = *v29;
        v56 = v29[1];
        v31 = v29[2];
        v54 = v30;
        v55 = v31;
      }

      else
      {
        (*v46)(v52, v28, v53);
        v32 = (*(v9 + 56) + 48 * v26);
        v33 = *v32;
        v56 = v32[1];
        v34 = v32[2];
        v54 = v33;
        v55 = v34;

        swift_unknownObjectRetain();

        v35 = *(&v55 + 1);
      }

      sub_100068970(&qword_1000D7308, &type metadata accessor for UUID);
      result = sub_10008AAD8();
      v36 = -1 << *(v11 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v18 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v6 = v47;
        v9 = v48;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v18 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v18 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v6 = v47;
      v9 = v48;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v50)(*(v11 + 48) + v51 * v19, v52, v53);
      v20 = (*(v11 + 56) + 48 * v19);
      v21 = v55;
      v22 = v56;
      *v20 = v54;
      v20[1] = v22;
      v20[2] = v21;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v9 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v43;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_100066DD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003FA64(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100066020(v14, a3 & 1);
      result = sub_10003FA64(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_10008B1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100067918();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_100066F20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100041FE4();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100066290(v14, a3 & 1);
      result = sub_100041FE4();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_10008B1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100067A74();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (result >> 6) + 64) |= 1 << result;
    v21 = (*(v19 + 56) + 16 * result);
    *v21 = a1;
    v21[1] = a2;
    v22 = *(v19 + 16);
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      *(v19 + 16) = v23;
      return result;
    }

    goto LABEL_15;
  }

  v20 = (*(v19 + 56) + 16 * result);
  *v20 = a1;
  v20[1] = a2;
}

uint64_t sub_100067060(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100089DA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003FAA8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100067BD0();
      goto LABEL_7;
    }

    sub_100066530(v17, a3 & 1);
    v24 = sub_10003FAA8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100067458(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_10008B1A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(_s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0) - 8) + 72) * v14;

  return sub_100068C5C(a1, v22);
}

uint64_t sub_100067248(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100089DA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003FAA8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100067ED4();
      goto LABEL_7;
    }

    sub_100066994(v17, a3 & 1);
    v25 = sub_10003FAA8(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100067534(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_10008B1A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 48 * v14;
  v22 = *(v21 + 40);
  v23 = a1[1];
  *v21 = *a1;
  *(v21 + 16) = v23;
  *(v21 + 32) = a1[2];

  swift_unknownObjectRelease();
}

uint64_t sub_100067458(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100089DA8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  result = sub_100068A1C(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_100067534(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100089DA8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  v12 = a3[2];
  v11[1] = a3[1];
  v11[2] = v12;
  *v11 = *a3;
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

void *sub_100067614()
{
  v1 = v0;
  sub_10002A958(&unk_1000D85F0);
  v2 = *v0;
  v3 = sub_10008AFA8();
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

void *sub_1000677A0(uint64_t *a1)
{
  v2 = v1;
  sub_10002A958(a1);
  v3 = *v1;
  v4 = sub_10008AFA8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = 16 * (v15 | (v9 << 6));
        v19 = *(v3 + 56);
        v20 = (*(v3 + 48) + v18);
        v21 = *v20;
        v22 = v20[1];
        v24 = *(v19 + v18);
        v23 = *(v19 + v18 + 8);
        v25 = (*(v5 + 48) + v18);
        *v25 = v21;
        v25[1] = v22;
        v26 = (*(v5 + 56) + v18);
        *v26 = v24;
        v26[1] = v23;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100067918()
{
  v1 = v0;
  sub_10002A958(&qword_1000D72F8);
  v2 = *v0;
  v3 = sub_10008AFA8();
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

void *sub_100067A74()
{
  v1 = v0;
  sub_10002A958(&unk_1000D85A0);
  v2 = *v0;
  v3 = sub_10008AFA8();
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
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
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

char *sub_100067BD0()
{
  v1 = v0;
  v2 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100089DA8();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A958(&unk_1000D85E0);
  v5 = *v0;
  v6 = sub_10008AFA8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1000689B8(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_100068A1C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_100067ED4()
{
  v1 = v0;
  v2 = sub_100089DA8();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A958(&unk_1000D85B0);
  v5 = *v0;
  v6 = sub_10008AFA8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v38 = v1;
    v39 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v47 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v16;
    v43 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v51 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v45;
        v21 = v46;
        v23 = *(v46 + 72) * v20;
        v24 = v44;
        (*(v46 + 16))(v44, *(v5 + 48) + v23, v45);
        v25 = 48 * v20;
        v26 = (*(v5 + 56) + 48 * v20);
        v27 = *v26;
        v28 = v26[1];
        v30 = v26[2];
        v29 = v26[3];
        v32 = v26[4];
        v31 = v26[5];
        v48 = v29;
        v49 = v32;
        v50 = v31;
        v33 = v47;
        (*(v21 + 32))(*(v47 + 48) + v23, v24, v22);
        v34 = (*(v33 + 56) + v25);
        *v34 = v27;
        v34[1] = v28;
        v36 = v48;
        v35 = v49;
        v34[2] = v30;
        v34[3] = v36;
        v37 = v50;
        v34[4] = v35;
        v34[5] = v37;
        v5 = v43;

        swift_unknownObjectRetain();

        result = v37;
        v16 = v42;
        v15 = v51;
      }

      while (v51);
    }

    v18 = v11;
    v7 = v47;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v38;
        goto LABEL_18;
      }

      v19 = *(v39 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v51 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void (*sub_1000681A8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_100089DA8();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_1000688D8(v5);
  v5[12] = sub_10006837C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1000682E4;
}

void sub_1000682E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10006837C(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = sub_100089DA8();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[4] = v11;
  v12 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v8[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v8[6] = v13;
  v15 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v13 + 64));
    v8[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[9] = v16;
  v17 = *(*(sub_10002A958(&qword_1000D85D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v8[11] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v8[12] = v18;
  v20 = *v4;
  v22 = sub_10003FAA8(a2);
  *(v8 + 112) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_100067BD0();
      goto LABEL_21;
    }

    sub_100066530(v25, a3 & 1);
    v28 = sub_10003FAA8(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      v22 = v28;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_10008B1A8();
    __break(1u);
    return result;
  }

LABEL_21:
  v8[13] = v22;
  if (v26)
  {
    sub_100068A1C(*(*v4 + 56) + *(v14 + 72) * v22, v19);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v14 + 56))(v19, v30, 1, v12);
  return sub_100068698;
}

void sub_100068698(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_10002E1B4(v5, v6, &qword_1000D85D8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_100068A1C(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_100068A1C(v13, v14);
        sub_100067458(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_10002E1B4(v5, v16, &qword_1000D85D8);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_100068A1C(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_100068A1C(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_10002E21C(v9, &qword_1000D85D8);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_10007FA40(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_10002E21C(v22, &qword_1000D85D8);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1000688D8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100068900;
}

uint64_t sub_10006890C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100068954(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100068970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000689B8(uint64_t a1, uint64_t a2)
{
  v4 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068A1C(uint64_t a1, uint64_t a2)
{
  v4 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068A80(uint64_t a1)
{
  v2 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068ADC()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100068BB4()
{
  v1 = *(sub_100089DA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100064788(v3, v0 + v2, v4);
}

uint64_t sub_100068C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068C5C(uint64_t a1, uint64_t a2)
{
  v4 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068CC0(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100068D10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002A958(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

NSString sub_100068D80()
{
  result = sub_10008AB08();
  static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName = result;
  return result;
}

uint64_t *CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1000D6258 != -1)
  {
    swift_once();
  }

  return &static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName;
}

uint64_t CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed.getter()
{
  v1 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1000690F0()
{
  v1 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() sharedConnection];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000698F0(v4);
  }

  sub_100069900(v2);
  return v3;
}

id CRLDeviceManagementRestrictionsManager.__deallocating_deinit()
{
  v1 = sub_1000690F0();
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10006926C()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLDeviceManagementRestrictionsManager()) init];
  CRLDeviceManagementRestrictionsManager.registerObserver()();
  qword_1000D8600 = v0;
}

id CRLDeviceManagementRestrictionsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100069304(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

Swift::Void __swiftcall CRLDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = sub_1000690F0();
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver:v0];
  }

  v3 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v4 = *(v0 + OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v4)
  {
    v5 = [v4 isMathPaperSolvingAllowed];
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  v7 = 1;
  swift_beginAccess();
  *(v0 + v6) = v5;
  v8 = *(v0 + v3);
  if (v8)
  {
    v7 = [v8 isKeyboardMathSolvingAllowed];
  }

  v9 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  v10 = 1;
  swift_beginAccess();
  *(v0 + v9) = v7;
  v11 = *(v0 + v3);
  if (v11)
  {
    v10 = [v11 isDefinitionLookupAllowed];
  }

  v12 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(v0 + v12) = v10;
}

id CRLDeviceManagementRestrictionsManager.init()()
{
  v0[OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed] = 1;
  *&v0[OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v2, "init");
}

void _s20USDRendererExtension38CRLDeviceManagementRestrictionsManagerC63profileConnectionDidReceiveEffectiveSettingsChangedNotification_8userInfoySo09MCProfileH0CSg_SDys11AnyHashableVypGSgtF_0(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isMathPaperSolvingAllowed];
  v4 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  v5 = v3 ^ *(v1 + v4);
  if (v5)
  {
    *(v1 + v4) = [a1 isMathPaperSolvingAllowed];
  }

  v6 = [a1 isKeyboardMathSolvingAllowed];
  v7 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  if (v6 != *(v1 + v7))
  {
    *(v1 + v7) = [a1 isKeyboardMathSolvingAllowed];
    v5 = 1;
  }

  v8 = [a1 isDefinitionLookupAllowed];
  v9 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  if (v8 == *(v1 + v9))
  {
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(v1 + v9) = [a1 isDefinitionLookupAllowed];
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_1000D6258 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0 userInfo:0];
}

uint64_t sub_100069840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1000698A0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1000698F0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100069900(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_100069910(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100089CF8().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_6:
      v11 = sub_100089BD8();
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_100089CF8().super.isa;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = v11;
  (*(a6 + 16))(a6, isa, v10);
}

void sub_1000699E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_100089BD8();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_100089CF8().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100069A7C()
{
  v0 = sub_10008A5C8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002A958(&qword_1000D8918);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_10008A518();
  REAudioPlayerComponentGetComponentType();
  REEntityRemoveComponentByClass();
  if (sub_10008A3C8())
  {
    sub_10008A518();
    REEntityRemoveComponentByClass();
  }

  sub_10008A618();
  sub_100089ED8();
  sub_10008A5A8();
  while (1)
  {
    sub_10008A5B8();
    if (!v7)
    {
      break;
    }

    sub_100069A7C(v7);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100069C20(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_10002A958(&qword_1000D7FC0);
  v2[26] = swift_task_alloc();
  v3 = sub_10008A1C8();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = sub_100089DC8();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = sub_100089CD8();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  sub_10008ACE8();
  v2[37] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v2[38] = v7;
  v2[39] = v6;

  return _swift_task_switch(sub_100069E10, v7, v6);
}

uint64_t sub_100069E10()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[24];
  v0[40] = sub_10008A618();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_100069EFC;
  v6 = v0[36];

  return Entity.init(contentsOf:withName:)(v6, 0, 0);
}

uint64_t sub_100069EFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 312);
  v6 = *(v3 + 304);
  if (v1)
  {
    v7 = sub_10006A550;
  }

  else
  {
    v7 = sub_10006A040;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006A040()
{

  sub_100089C48();
  v1 = sub_10008AB68();
  v3 = v2;

  if (v1 == 0x7974696C616572 && v3 == 0xE700000000000000)
  {
  }

  else
  {
    v5 = sub_10008B158();

    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v6 = v0[42];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[26];
  sub_100089EA8();
  swift_allocObject();
  v11 = sub_100089E98();
  sub_100089EC8();
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v0[21] = v6;
  sub_10008AF78();
  sub_10008AB78();

  v12 = RESceneCreate();

  sub_10008A478();
  v0[14] = &type metadata for OpaquePointer;
  v0[11] = v12;
  sub_100089DB8();
  sub_10002E85C((v0 + 11));
  sub_10008A3D8();
  (*(v8 + 8))(v7, v9);
  v13.value._rawValue = v12;
  sub_100089E78(v13);

  sub_10008A458();

  sub_10008A3E8();
  v14 = sub_10008A1D8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = v0[26];
  if (v16 == 1)
  {

    sub_10002E21C(v17, &qword_1000D7FC0);
  }

  else if ((*(v15 + 88))(v0[26], v14) == enum case for __REAnchoringType.surface(_:))
  {
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[27];
    v21 = v0[28];
    v22 = v0[26];
    (*(v15 + 96))(v22, v14);
    v23 = *(sub_10002A958(&qword_1000D7FC8) + 48);
    (*(v21 + 32))(v18, v22, v20);
    v24 = sub_10008A1A8();
    (*(*(v24 - 8) + 8))(v22 + v23, v24);
    sub_10008A1B8();
    sub_100078830(&qword_1000D7FD0, &type metadata accessor for __REAnchoringType.Alignment);
    sub_10008ABE8();
    sub_10008ABE8();
    v25 = *(v21 + 8);
    v25(v19, v20);
    if (v0[22] == v0[23])
    {
      v26 = v0[30];
      v27 = v0[27];

      sub_100089F38();

      v25(v26, v27);
      goto LABEL_16;
    }

    v25(v0[30], v0[27]);
  }

  else
  {
    v28 = v0[26];

    (*(v15 + 8))(v28, v14);
  }

LABEL_15:
  sub_100069A7C();

  v11 = v0[42];
LABEL_16:

  v29 = v0[1];

  return v29(v11);
}

uint64_t sub_10006A550()
{

  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v3 = sub_10008B208();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = sub_10008AE18();
  sub_100035474(v1, &_mh_execute_header, v6, "Failed to load entity: %{public}@", 33, 2, inited);
  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006A700(uint64_t *a1, float a2, float a3)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = sub_10008A7E8();
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002A958(&qword_1000D8900);
  __chkstk_darwin(v14 - 8);
  v53 = &v47 - v15;
  v16 = sub_10008A918();
  v17 = *(v16 - 8);
  result = __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 16);
  if (v21)
  {
    v48 = result;
    v49 = v13;

    v50 = v21;

    v22 = sub_10008A5F8();

    if (v22)
    {
      sub_10008A418();

      sub_10008A3B8();
      if (swift_dynamicCastClass())
      {
        sub_10008A388();
        sub_10008A3A8();
        sub_10008A398();
      }

      swift_unknownObjectRelease();
    }

    if (a1[4])
    {
      sub_10008A618();

      sub_100089F28();
      v51 = v24;
      v52 = v23;

      sub_100089DD8();
      if (v25 == 0.0)
      {
        if (qword_1000D6128 != -1)
        {
          swift_once();
        }

        v26 = static OS_os_log.crlThreeDimensionalObjects;
        v27 = sub_10008AE28();
        sub_100035474(v26, &_mh_execute_header, v27, "boundingRadius returned size of zero", 36, 2, _swiftEmptyArrayStorage);
        v28 = 1.0;
      }

      else
      {
        v28 = v25;
      }
    }

    else
    {
      *&v29 = v7;
      *(&v29 + 1) = v8;
      *&v30 = v10;
      *(&v30 + 1) = v9;
      v51 = v30;
      v52 = v29;
      sub_100089DD8();
      v28 = v31 * 1.02;
    }

    sub_100089DF8();
    v51 = v32;
    v33 = v28 / tanf(((a2 * 3.1416) / 180.0) * 0.5);
    v34 = __sincosf_stret((a3 * 3.1416) / 180.0);
    HIDWORD(v35) = 0;
    LODWORD(v35) = v51;
    *(&v35 + 1) = *(&v51 + 1) + (v34.__sinval * v33);
    *(&v35 + 2) = *(&v51 + 2) + (v34.__cosval * v33);
    v52 = v35;
    sub_10008A6B8();
    v51 = v36;
    sub_10008A198();
    swift_allocObject();
    sub_10008A188();

    sub_10008A5E8();
    sub_100089F58();
    v37 = sub_100089F68();
    *(v38 + 16) = v51;
    v37(v54, 0);
    v39 = sub_10008A218();
    sub_10008A2A8();
    v39(v54, 0);
    (*(v17 + 104))(v20, enum case for CameraFieldOfViewOrientation.horizontal(_:), v48);
    v40 = sub_10008A218();
    sub_10008A298();
    v40(v54, 0);
    v41 = sub_10008A218();
    sub_10008A288();
    v41(v54, 0);
    sub_10008A618();
    swift_allocObject();
    sub_10008A608();
    v42 = sub_10008A278();
    (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
    sub_10008A1E8();
    sub_100089EC8();
    v43 = sub_10008A848();
    sub_10008A838();
    sub_100078830(&qword_1000D8908, &type metadata accessor for RealityRenderer.EntityCollection);
    sub_10008A898();
    v43(v54, 0);
    sub_10008A7C8();
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
    sub_10008A7D8();

    v45 = sub_10008A808();
    sub_10008A7F8();
    v45(v54, 0);
    sub_10008A208();
    sub_10008A1F8();

    v46 = sub_10008A858();
    sub_10008A818();
    v46(v54, 0);
  }

  return result;
}

uint64_t sub_10006AEB0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = _s19RealityBackendStateOMa();
  v2[21] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v2[22] = swift_task_alloc();
  v3 = sub_100089CD8();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10002A958(&qword_1000D8900);
  v2[28] = swift_task_alloc();
  sub_10008ACE8();
  v2[29] = sub_10008ACD8();
  v5 = sub_10008AC88();
  v2[30] = v5;
  v2[31] = v4;

  return _swift_task_switch(sub_10006B05C, v5, v4);
}

uint64_t sub_10006B05C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(type metadata accessor for CRLUSDRendering.SceneRequest(0) + 20);
  *(v0 + 52) = v3;
  *(v2 + 32) = *(v1 + v3 + 48);
  if (*(v2 + 16))
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_10008A878();
    swift_allocObject();
    v5 = sub_10008A868();
    *(v0 + 256) = v5;
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    v20 = *(v0 + 184);
    *(v2 + 16) = v5;

    v9 = sub_10008A278();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    *(v0 + 264) = sub_10008A618();

    sub_10008A1E8();

    v10 = sub_10008A848();
    sub_10008A838();
    sub_100078830(&qword_1000D8908, &type metadata accessor for RealityRenderer.EntityCollection);
    sub_10008A898();

    v10(v0 + 56, 0);
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    (*(v7 + 16))(v8);
    (*(v7 + 56))(v8, 0, 1, v20);
    sub_100089C68();
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    sub_10002E21C(*(v0 + 176), &qword_1000D6728);
    v17 = *(v15 + 32);
    *(v0 + 272) = v17;
    *(v0 + 280) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v12, v14, v16);
    v17(v13, v12, v16);
    v18 = swift_task_alloc();
    *(v0 + 288) = v18;
    *v18 = v0;
    v18[1] = sub_10006B4E4;
    v19 = *(v0 + 216);

    return sub_100069C20(v19);
  }
}

uint64_t sub_10006B4E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 248);
  v6 = *(v3 + 240);
  if (v1)
  {
    v7 = sub_10006B8B8;
  }

  else
  {
    v7 = sub_10006B628;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006B628()
{

  if (sub_100089C18())
  {
    v1 = objc_opt_self();
    sub_100089CB8();
    v2 = sub_10008AB08();

    v3 = [v1 determineCompression:v2];

    v4 = v3 == -1;
    if (v3 == -1)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = v3;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  v21 = *(v0 + 272);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 144) + *(v0 + 52);
  v11 = v9 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_compression;
  *v11 = v5;
  *(v11 + 8) = v4;

  sub_100089EC8();

  sub_100089F18();

  v12 = *v10;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  sub_10006A700((v0 + 16), v12, 0.0);

  v13 = v8 + *(sub_10002A958(&qword_1000D8910) + 48);
  v21(v8, v6, v7);
  v14 = *(v10 + 64);
  v15 = *(v10 + 16);
  v16 = *(v10 + 32);
  v17 = *(v10 + 48);
  *v13 = *v10;
  *(v13 + 16) = v15;
  *(v13 + 32) = v16;
  *(v13 + 48) = v17;
  *(v13 + 64) = v14;
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078ECC(v8, v9 + v18);
  swift_endAccess();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10006B8B8()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006B990(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = _s19RealityBackendStateOMa();
  v2[8] = swift_task_alloc();
  sub_10008ACE8();
  v2[9] = sub_10008ACD8();
  v4 = sub_10008AC88();

  return _swift_task_switch(sub_10006BA58, v4, v3);
}

uint64_t sub_10006BA58()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v2 + v3, v1, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[8];
  if (EnumCaseMultiPayload)
  {
    sub_100078C70(v0[8], _s19RealityBackendStateOMa);
  }

  else
  {
    v6 = sub_100089CD8();
    (*(*(v6 - 8) + 8))(v5, v6);
    sub_10008A618();

    sub_100089F18();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006BBC0(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v2[36] = _s19RealityBackendStateOMa();
  v2[37] = swift_task_alloc();
  sub_10002A958(&qword_1000D8900);
  v2[38] = swift_task_alloc();
  sub_10008ACE8();
  v2[39] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[40] = v4;
  v2[41] = v3;

  return _swift_task_switch(sub_10006BCC0, v4, v3);
}

uint64_t sub_10006BCC0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  *(v0 + 212) = *v1;
  *(v2 + 32) = *(v1 + 48);
  if (*(v2 + 16))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_10008A878();
    swift_allocObject();
    v4 = sub_10008A868();
    *(v0 + 336) = v4;
    v6 = *(v0 + 304);
    *(v2 + 16) = v4;

    v7 = sub_10008A278();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10008A618();

    sub_10008A1E8();

    v8 = sub_10008A848();
    sub_10008A838();
    sub_100078830(&qword_1000D8908, &type metadata accessor for RealityRenderer.EntityCollection);
    sub_10008A898();

    v8(v0 + 216, 0);
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_10006BF58;
    v10 = *(v0 + 272);

    return sub_10006C23C(v10);
  }
}

uint64_t sub_10006BF58()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10006C1BC;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10006C084;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006C084()
{
  v1 = *(v0 + 212);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);

  sub_100077880(*(v4 + 112), *(v4 + 120), *(v4 + 128));
  *(v0 + 176) = v5;
  *(v0 + 192) = v6;
  *(v0 + 208) = 0;
  sub_10006A700((v0 + 176), v1, 15.0);

  v7 = *(v4 + 16);
  *v2 = *v4;
  v2[1] = v7;
  v8 = *(v4 + 32);
  v9 = *(v4 + 48);
  v10 = *(v4 + 80);
  v2[4] = *(v4 + 64);
  v2[5] = v10;
  v2[2] = v8;
  v2[3] = v9;
  v11 = *(v4 + 96);
  v12 = *(v4 + 112);
  v13 = *(v4 + 144);
  v2[8] = *(v4 + 128);
  v2[9] = v13;
  v2[6] = v11;
  v2[7] = v12;
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100047790(v4, v0 + 16);
  sub_100078ECC(v2, v3 + v14);
  swift_endAccess();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10006C1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C23C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_10008A8A8();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = sub_10008A8C8();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v5 = sub_100089FE8();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v6 = sub_10008A048();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  sub_10002A958(&qword_1000D88F0);
  v2[36] = swift_task_alloc();
  sub_10008A068();
  v2[37] = swift_task_alloc();
  v7 = sub_10002A958(&qword_1000D7328);
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v2[42] = swift_task_alloc();
  v8 = sub_100089CD8();
  v2[43] = v8;
  v2[44] = *(v8 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v9 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  v2[48] = v9;
  v2[49] = *(v9 - 8);
  v2[50] = swift_task_alloc();
  sub_10008A268();
  v2[51] = swift_task_alloc();
  v10 = sub_10008A008();
  v2[52] = v10;
  v2[53] = *(v10 - 8);
  v2[54] = swift_task_alloc();
  v11 = sub_10008A5C8();
  v2[55] = v11;
  v2[56] = *(v11 - 8);
  v2[57] = swift_task_alloc();
  sub_10008ACE8();
  v2[58] = sub_10008ACD8();
  v13 = sub_10008AC88();
  v2[59] = v13;
  v2[60] = v12;

  return _swift_task_switch(sub_10006C708, v13, v12);
}

uint64_t sub_10006C708()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 176);
  *(v0 + 488) = sub_10008A618();

  sub_100089ED8();

  sub_10008A598();
  (*(v2 + 8))(v1, v3);
  swift_allocObject();
  *(v0 + 496) = sub_10008A608();
  LODWORD(v1) = *(v4 + 104);
  v5 = *(v4 + 112);
  v6 = *(v4 + 120);
  v7 = *(v4 + 128);
  v8 = (v4 + 132);
  v9 = vld1q_dup_f32(v8);
  v9.i32[3] = 0;
  v63 = v9;
  v10 = sub_100089F68();
  *v11 = v63;
  v10(v0 + 48, 0);

  sub_100089EC8();

  sub_100077880(v5, v6, v7);

  sub_10008A518();

  REClippingPrimitiveComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REClippingPrimitiveComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REClippingPrimitiveComponentSetShouldClipSelf();
  REClippingPrimitiveComponentSetShouldClipChildren();
  REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge();
  REClippingPrimitiveComponentClipToBox();
  if (v1)
  {
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v14 = *(v0 + 416);
    v15 = [objc_opt_self() grayColor];
    v16 = [v15 colorWithAlphaComponent:0.5];

    sub_10008A258();
    sub_100089FF8();
    sub_100089FA8();
    sub_100089F88();
    sub_10002A958(&qword_1000D88F8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000A64C0;
    *(v17 + 56) = v14;
    *(v17 + 64) = &protocol witness table for SimpleMaterial;
    v18 = sub_100079014((v17 + 32));
    (*(v13 + 16))(v18, v12, v14);
    sub_100089E38();
    swift_allocObject();
    sub_100089E28();

    sub_100089EC8();

    (*(v13 + 8))(v12, v14);
  }

  v19 = *(*(v0 + 176) + 144);
  *(v0 + 504) = v19;
  v20 = *(v19 + 16);
  *(v0 + 512) = v20;
  if (v20)
  {
    v21 = 0;
    v22 = *(v0 + 392);
    v23 = *(v22 + 80);
    *(v0 + 608) = v23;
    *(v0 + 612) = enum case for TextureResource.Semantic.color(_:);
    *(v0 + 616) = enum case for TextureResource.MipmapsMode.allocateAndGenerateAll(_:);
    *(v0 + 620) = enum case for PhysicallyBasedMaterial.Blending.transparent(_:);
    *(v0 + 624) = enum case for MaterialParameterTypes.FaceCulling.none(_:);
    v24 = *(v22 + 72);
    *(v0 + 520) = v24;
    while (1)
    {
      *(v0 + 536) = _swiftEmptyArrayStorage;
      *(v0 + 528) = v21;
      v25 = *(v0 + 400);
      v26 = *(v0 + 384);
      v27 = *(v0 + 352);
      v29 = *(v0 + 336);
      v28 = *(v0 + 344);
      sub_100078F30(v19 + ((v23 + 32) & ~v23) + v24 * v21, v25, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v30 = v25 + *(v26 + 20);
      *(v0 + 628) = 0;
      type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
      (*(v27 + 16))(v29, v30, v28);
      (*(v27 + 56))(v29, 0, 1, v28);
      sub_100089C68();
      v31 = *(v0 + 400);
      v33 = *(v0 + 368);
      v32 = *(v0 + 376);
      v35 = *(v0 + 352);
      v34 = *(v0 + 360);
      v36 = *(v0 + 344);
      sub_10002E21C(*(v0 + 336), &qword_1000D6728);
      v37 = *(v35 + 32);
      v37(v33, v34, v36);
      v38 = (v37)(v32, v33, v36);
      if (*v31)
      {
        break;
      }

      sub_100089C58(0);
      v43 = v42;
      v44 = CGImageSourceCreateWithURL(v42, 0);
      *(v0 + 568) = v44;

      if (v44)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v44, 0, 0);
        *(v0 + 576) = ImageAtIndex;
        if (ImageAtIndex)
        {
          v52 = *(v0 + 616);
          v53 = *(v0 + 612);
          v54 = *(v0 + 288);
          v56 = *(v0 + 272);
          v55 = *(v0 + 280);
          v57 = *(v0 + 264);
          v58 = ImageAtIndex;
          sub_10008A088();
          v59 = sub_10008A078();
          v60 = *(v59 - 8);
          (*(v60 + 104))(v54, v53, v59);
          (*(v60 + 56))(v54, 0, 1, v59);
          (*(v56 + 104))(v55, v52, v57);
          v61 = v58;
          sub_10008A058();
          v62 = swift_task_alloc();
          *(v0 + 584) = v62;
          *v62 = v0;
          v62[1] = sub_10006DE60;
          v41 = *(v0 + 296);
          v38 = v61;
          v39 = 0;
          v40 = 0;

          return TextureResource.init(image:withName:options:)(v38, v39, v40, v41);
        }

        (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
      }

      else
      {
        (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
      }

      v46 = *(v0 + 512);
      v47 = *(v0 + 528) + 1;
      sub_100078C70(*(v0 + 400), type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      if (v47 == v46)
      {
        goto LABEL_16;
      }

      v21 = *(v0 + 528) + 1;
      v24 = *(v0 + 520);
      LOBYTE(v23) = *(v0 + 608);
      v19 = *(v0 + 504);
    }

    if (*v31 != 1)
    {
      __break(1u);
      return TextureResource.init(image:withName:options:)(v38, v39, v40, v41);
    }

    v48 = swift_task_alloc();
    *(v0 + 544) = v48;
    *v48 = v0;
    v48[1] = sub_10006D198;
    v49 = *(v0 + 376);

    return sub_100069C20(v49);
  }

  else
  {
LABEL_16:

    v51 = *(v0 + 8);

    return v51(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10006D198(uint64_t a1)
{
  v3 = *v2;
  v3[69] = a1;
  v3[70] = v1;

  if (v1)
  {

    v4 = v3[59];
    v5 = v3[60];
    v6 = sub_10006E9D0;
  }

  else
  {
    v4 = v3[59];
    v5 = v3[60];
    v6 = sub_10006D2B8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10006D2B8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  swift_allocObject();
  sub_10008A608();
  sub_100089EC8();
  swift_allocObject();
  sub_10008A608();

  sub_100089EC8();
  sub_100089EB8();
  sub_100089F28();

  v3 = sub_10006ED00(*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8), *(v1 + *(v2 + 24) + 8));
  v5 = v4;
  v7 = v6;
  v8 = sub_100089E18();
  v9.i32[0] = 1.0;
  if ((v8 & 1) == 0)
  {
    sub_100089E08();
    v11 = vmulq_f32(v10, v10);
    v12 = sqrtf(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)).f32[0]);
    sub_100089E08();
    v14 = v13;
    sub_100089E08();
    v16 = vmulq_f32(v15, v15);
    sub_100078F98((v0 + 16), v12, v14, sqrtf(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)).f32[0]));
    v17 = *(v0 + 32);
    v18 = v3 / *(v0 + 16);
    if (v5 / *(v0 + 24) < v18)
    {
      v18 = v5 / *(v0 + 24);
    }

    if (v7 / v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7 / v17;
    }

    sub_100089E08();
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v23 = v21;
    }

    if (v21 < v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v23;
    }

    if ((LODWORD(v22) & 0x7FFFFF) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }

    if ((~LODWORD(v22) & 0x7F800000) != 0)
    {
      v25 = v22;
    }

    if (v22 >= v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    sub_100089DD8();
    v27 = v19;
    *v9.i32 = fminf(v26 / (*v9.i32 + *v9.i32), 0.75) * v27;
  }

  v28 = *(v0 + 400);
  v29 = *(v0 + 384);
  v30 = vdupq_lane_s32(v9, 0);
  v30.i32[3] = 0;
  v99 = v30;
  v31 = sub_100089F68();
  *v32 = v99;
  v33 = v31(v0 + 80, 0);
  v37 = (v28 + *(v29 + 28));
  if (v37[2])
  {
LABEL_52:
    __break(1u);
    return TextureResource.init(image:withName:options:)(v33, v34, v35, v36);
  }

  else
  {
    v38 = *(v0 + 552);
    v39 = *(v0 + 400);
    v40 = *(v0 + 328);
    v41 = *(v0 + 304);
    v42 = *v37;
    v43 = v37[1];
    v44 = sub_100089F68();
    *(v45 + 16) = v42;
    *(v45 + 24) = v43;
    v44(v0 + 112, 0);
    sub_100089DF8();
    sub_100089F58();
    v46 = *(v41 + 48);
    sub_100078F30(v39, v40, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    *(v40 + v46) = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(v0 + 536);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_100040384(0, v101[2] + 1, 1, v101);
    }

    v49 = v101[2];
    v48 = v101[3];
    if (v49 >= v48 >> 1)
    {
      v101 = sub_100040384(v48 > 1, v49 + 1, 1, v101);
    }

    v100 = *(v0 + 560);
    v50 = *(v0 + 328);
    v51 = *(v0 + 376);
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v54 = *(v0 + 312);
    v101[2] = v49 + 1;
    sub_100078FA4(v50, v101 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v49);
    sub_100089EC8();
    sub_100089EB8();
    sub_100089EF8();

    (*(v52 + 8))(v51, v53);
    v55 = *(v0 + 512);
    v56 = *(v0 + 528) + 1;
    sub_100078C70(*(v0 + 400), type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if (v56 == v55)
    {
LABEL_30:

      v57 = *(v0 + 8);

      return v57(v101);
    }

    else
    {
      while (1)
      {
        v59 = *(v0 + 528) + 1;
        *(v0 + 536) = v101;
        *(v0 + 528) = v59;
        v60 = *(v0 + 400);
        v61 = *(v0 + 384);
        v62 = *(v0 + 352);
        v64 = *(v0 + 336);
        v63 = *(v0 + 344);
        sub_100078F30(*(v0 + 504) + ((*(v0 + 608) + 32) & ~*(v0 + 608)) + *(v0 + 520) * v59, v60, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
        v65 = v60 + *(v61 + 20);
        *(v0 + 628) = 0;
        type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
        (*(v62 + 16))(v64, v65, v63);
        (*(v62 + 56))(v64, 0, 1, v63);
        sub_100089C68();
        if (v100)
        {
          v81 = *(v0 + 400);
          v82 = *(v0 + 336);

          sub_10002E21C(v82, &qword_1000D6728);
          swift_getErrorValue();
          v83 = sub_10008B208();
          v85 = v84;
          sub_10002ACC4();
          swift_allocError();
          *v86 = v83;
          *(v86 + 8) = v85;
          *(v86 + 16) = 1;
          swift_willThrow();

          sub_100078C70(v81, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);

          v87 = *(v0 + 8);

          return v87();
        }

        v66 = *(v0 + 400);
        v68 = *(v0 + 368);
        v67 = *(v0 + 376);
        v69 = *(v0 + 352);
        v70 = *(v0 + 360);
        v71 = *(v0 + 344);
        sub_10002E21C(*(v0 + 336), &qword_1000D6728);
        v72 = *(v69 + 32);
        v72(v68, v70, v71);
        v33 = (v72)(v67, v68, v71);
        if (*v66)
        {
          break;
        }

        sub_100089C58(0);
        v74 = v73;
        v75 = CGImageSourceCreateWithURL(v73, 0);
        *(v0 + 568) = v75;

        if (v75)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v75, 0, 0);
          *(v0 + 576) = ImageAtIndex;
          if (ImageAtIndex)
          {
            v88 = *(v0 + 616);
            v89 = *(v0 + 612);
            v90 = *(v0 + 288);
            v92 = *(v0 + 272);
            v91 = *(v0 + 280);
            v93 = *(v0 + 264);
            v94 = ImageAtIndex;
            sub_10008A088();
            v95 = sub_10008A078();
            v96 = *(v95 - 8);
            (*(v96 + 104))(v90, v89, v95);
            (*(v96 + 56))(v90, 0, 1, v95);
            (*(v92 + 104))(v91, v88, v93);
            v97 = v94;
            sub_10008A058();
            v98 = swift_task_alloc();
            *(v0 + 584) = v98;
            *v98 = v0;
            v98[1] = sub_10006DE60;
            v36 = *(v0 + 296);
            v33 = v97;
            v34 = 0;
            v35 = 0;

            return TextureResource.init(image:withName:options:)(v33, v34, v35, v36);
          }

          (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
        }

        else
        {
          (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
        }

        v77 = *(v0 + 512);
        v78 = *(v0 + 528) + 1;
        sub_100078C70(*(v0 + 400), type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
        v100 = 0;
        if (v78 == v77)
        {
          goto LABEL_30;
        }
      }

      if (*v66 != 1)
      {
        __break(1u);
        goto LABEL_52;
      }

      v79 = swift_task_alloc();
      *(v0 + 544) = v79;
      *v79 = v0;
      v79[1] = sub_10006D198;
      v80 = *(v0 + 376);

      return sub_100069C20(v80);
    }
  }
}

uint64_t sub_10006DE60(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {

    v4 = v3[59];
    v5 = v3[60];
    v6 = sub_10006EB60;
  }

  else
  {
    v4 = v3[59];
    v5 = v3[60];
    v6 = sub_10006DF80;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10006DF80()
{
  v73 = *(v0 + 624);
  v1 = *(v0 + 620);
  v74 = *(v0 + 400);
  v76 = *(v0 + 304);
  v78 = *(v0 + 320);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v75 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 192);

  sub_100089FC8();
  sub_10008A8B8();
  (*(v5 + 104))(v4, v1, v6);
  sub_100089FD8();
  (*(v8 + 104))(v7, v73, v9);
  sub_100089FB8();
  sub_100089FA8();
  sub_100089F98();
  sub_10002A958(&qword_1000D88F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000A64C0;
  *(v10 + 56) = v75;
  *(v10 + 64) = &protocol witness table for UnlitMaterial;
  v11 = sub_100079014((v10 + 32));
  (*(v3 + 16))(v11, v2, v75);
  sub_100089E38();
  swift_allocObject();

  v12 = sub_100089E28();
  v13 = *(v76 + 48);
  sub_100078F30(v74, v78, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
  *(v78 + v13) = v12;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v80 = sub_100040384(0, v80[2] + 1, 1, v80);
  }

  v16 = v80[2];
  v15 = v80[3];
  if (v16 >= v15 >> 1)
  {
    v80 = sub_100040384(v15 > 1, v16 + 1, 1, v80);
  }

  v17 = *(v0 + 568);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 240);

  (*(v19 + 8))(v18, v20);
  v77 = *(v0 + 376);
  v79 = *(v0 + 600);
  v21 = *(v0 + 344);
  v22 = *(v0 + 352);
  v24 = *(v0 + 312);
  v23 = *(v0 + 320);
  v80[2] = v16 + 1;
  sub_100078FA4(v23, v80 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16);
  sub_100089EC8();
  sub_100089EB8();
  sub_100089EF8();

  (*(v22 + 8))(v77, v21);
  v25 = *(v0 + 512);
  v26 = *(v0 + 528) + 1;
  sub_100078C70(*(v0 + 400), type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
  if (v26 == v25)
  {
LABEL_6:

    v27 = *(v0 + 8);

    return v27(v80);
  }

  else
  {
    while (1)
    {
      v29 = *(v0 + 528) + 1;
      *(v0 + 536) = v80;
      *(v0 + 528) = v29;
      v30 = *(v0 + 400);
      v31 = *(v0 + 384);
      v32 = *(v0 + 352);
      v34 = *(v0 + 336);
      v33 = *(v0 + 344);
      sub_100078F30(*(v0 + 504) + ((*(v0 + 608) + 32) & ~*(v0 + 608)) + *(v0 + 520) * v29, v30, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v35 = v30 + *(v31 + 20);
      *(v0 + 628) = 0;
      type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
      (*(v32 + 16))(v34, v35, v33);
      (*(v32 + 56))(v34, 0, 1, v33);
      sub_100089C68();
      if (v79)
      {
        v55 = *(v0 + 400);
        v56 = *(v0 + 336);

        sub_10002E21C(v56, &qword_1000D6728);
        swift_getErrorValue();
        v57 = sub_10008B208();
        v59 = v58;
        sub_10002ACC4();
        swift_allocError();
        *v60 = v57;
        *(v60 + 8) = v59;
        *(v60 + 16) = 1;
        swift_willThrow();

        sub_100078C70(v55, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);

        v61 = *(v0 + 8);

        return v61();
      }

      v36 = *(v0 + 400);
      v38 = *(v0 + 368);
      v37 = *(v0 + 376);
      v39 = *(v0 + 352);
      v40 = *(v0 + 360);
      v41 = *(v0 + 344);
      sub_10002E21C(*(v0 + 336), &qword_1000D6728);
      v42 = *(v39 + 32);
      v42(v38, v40, v41);
      v43 = (v42)(v37, v38, v41);
      if (*v36)
      {
        break;
      }

      sub_100089C58(0);
      v48 = v47;
      v49 = CGImageSourceCreateWithURL(v47, 0);
      *(v0 + 568) = v49;

      if (v49)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v49, 0, 0);
        *(v0 + 576) = ImageAtIndex;
        if (ImageAtIndex)
        {
          v62 = *(v0 + 616);
          v63 = *(v0 + 612);
          v64 = *(v0 + 288);
          v66 = *(v0 + 272);
          v65 = *(v0 + 280);
          v67 = *(v0 + 264);
          v68 = ImageAtIndex;
          sub_10008A088();
          v69 = sub_10008A078();
          v70 = *(v69 - 8);
          (*(v70 + 104))(v64, v63, v69);
          (*(v70 + 56))(v64, 0, 1, v69);
          (*(v66 + 104))(v65, v62, v67);
          v71 = v68;
          sub_10008A058();
          v72 = swift_task_alloc();
          *(v0 + 584) = v72;
          *v72 = v0;
          v72[1] = sub_10006DE60;
          v46 = *(v0 + 296);
          v43 = v71;
          v44 = 0;
          v45 = 0;

          return TextureResource.init(image:withName:options:)(v43, v44, v45, v46);
        }

        (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
      }

      else
      {
        (*(*(v0 + 352) + 8))(*(v0 + 376), *(v0 + 344));
      }

      v51 = *(v0 + 512);
      v52 = *(v0 + 528) + 1;
      sub_100078C70(*(v0 + 400), type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v79 = 0;
      if (v52 == v51)
      {
        goto LABEL_6;
      }
    }

    if (*v36 != 1)
    {
      __break(1u);
      return TextureResource.init(image:withName:options:)(v43, v44, v45, v46);
    }

    v53 = swift_task_alloc();
    *(v0 + 544) = v53;
    *v53 = v0;
    v53[1] = sub_10006D198;
    v54 = *(v0 + 376);

    return sub_100069C20(v54);
  }
}