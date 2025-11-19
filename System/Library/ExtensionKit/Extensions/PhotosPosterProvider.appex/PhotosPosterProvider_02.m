_OWORD *sub_100028F9C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000107F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10002903C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_10002F394().super.isa;

  v6 = [a3 storeUserInfo:isa error:a2];

  return v6;
}

void sub_1000290BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();
  [a3 setDisplayNameLocalizationKey:v4];
}

uint64_t sub_100029114(void *a1)
{
  v1 = [a1 personLocalIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F584();

  return v3;
}

void sub_100029174(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();

  [a3 setDisplayNameLocalizationKey:v4];
}

void sub_1000291D8(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1000042B4(0, a3, a4);
  isa = sub_10002F4A4().super.isa;

  [a2 *a5];
}

uint64_t sub_10002925C(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F3A4();

  return v3;
}

uint64_t sub_1000292C8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10002F404();

  return v4;
}

uint64_t sub_100029328(void *a1)
{
  v1 = [a1 media];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  v3 = sub_10002F4C4();

  return v3;
}

void (*sub_100029398(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_100023120(a3);
  sub_100023130(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10002F734();
  }

  *a1 = v7;
  return sub_100029424;
}

void (*sub_10002942C(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_100023120(a3);
  sub_100023130(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10002F734();
  }

  *a1 = v7;
  return sub_10002A9F4;
}

void *sub_1000294B8(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_10002F7D4();
    if (v6)
    {
      v7 = v6;
      v3 = sub_100022AB8(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return &_swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100029554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000295B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10002F7D4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000126D0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10002A0B0(&qword_10004A818, &qword_10004A810, &qword_1000356D8);
        for (i = 0; i != v7; ++i)
        {
          sub_100004120(&qword_10004A810, &qword_1000356D8);
          v9 = sub_100029398(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002974C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10002F7D4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000126D0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10002A0B0(&qword_10004A940, &qword_10004A938, &qword_100035748);
        for (i = 0; i != v7; ++i)
        {
          sub_100004120(&qword_10004A938, &qword_100035748);
          v9 = sub_10002942C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000298E4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10002F684();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100029924(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000299A0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100029B20()
{
  sub_100010CCC();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_100010CE4();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100029C68(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100029E04()
{
  result = qword_10004A640;
  if (!qword_10004A640)
  {
    sub_10002F1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A640);
  }

  return result;
}

void sub_100029E5C(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_10001CC6C();
  *a1 = v6;
}

uint64_t sub_100029E94(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000042B4(255, a2, a3);
    sub_10002AED8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029ED4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100029F3C()
{
  result = qword_10004A980;
  if (!qword_10004A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A980);
  }

  return result;
}

unint64_t sub_100029F90()
{
  result = qword_10004A990;
  if (!qword_10004A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A990);
  }

  return result;
}

uint64_t sub_100029FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&qword_10004A5D8, qword_100035580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010054(a2, a3);
    sub_10002AED8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002A154(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_100012198(*(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_10002A174()
{
  result = qword_10004A9E0;
  if (!qword_10004A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A9E0);
  }

  return result;
}

uint64_t sub_10002A1C8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002A220()
{
  sub_100010EDC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_10002ADB8(v6);
  *v7 = v8;
  v7[1] = sub_10002A9F0;
  v9 = sub_10002AC80();

  return v10(v9);
}

uint64_t sub_10002A2E0()
{
  sub_100010EDC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002ADB8(v5);
  *v6 = v7;
  v8 = sub_10002AAE4(v6);

  return v9(v8);
}

uint64_t sub_10002A37C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_10002AC74();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002A3B8()
{
  sub_100010EDC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10002ADB8(v7);
  *v8 = v9;
  v8[1] = sub_10002A9F0;

  return sub_1000221B4(v2, v3, v4, v6);
}

uint64_t sub_10002A47C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004120(a3, a4);
  sub_100010B10(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002A4DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A514()
{
  sub_100010C44();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002ADB8(v3);
  *v4 = v5;
  v6 = sub_10002AD98(v4);

  return v7(v6);
}

uint64_t sub_10002A5AC()
{
  sub_100010C44();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002ADB8(v3);
  *v4 = v5;
  v6 = sub_10002AD98(v4);

  return v7(v6);
}

uint64_t sub_10002A648()
{
  sub_100010EDC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002ADB8(v5);
  *v6 = v7;
  v8 = sub_10002AAE4(v6);

  return v9(v8);
}

uint64_t sub_10002A6E4()
{
  _Block_release(*(v0 + 32));

  sub_10002AC74();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002A730()
{
  sub_100010EDC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002ADB8(v5);
  *v6 = v7;
  v8 = sub_10002AAE4(v6);

  return v9(v8);
}

uint64_t getEnumTagSinglePayload for PosterUpdaterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterUpdaterError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002A930);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002A980()
{
  result = qword_10004AA00;
  if (!qword_10004AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA00);
  }

  return result;
}

uint64_t sub_10002AA98()
{
  v2 = *(*(v1 - 408) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t sub_10002AAE4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10002AB14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 - 432);
  v6 = *(v3 - 424);

  return sub_100022BB4(v5, v6, a3);
}

void sub_10002AB34(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_10002AB44()
{

  return swift_dynamicCast();
}

uint64_t sub_10002AB9C(float a1)
{
  *v1 = a1;

  return sub_100022BB4(v2, v3, (v4 - 104));
}

uint64_t sub_10002AC8C()
{

  return swift_once();
}

id sub_10002ACE8(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_10002AD98(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10002ADDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = a2;
  *(result + 64) = v2;
  *(result + 32) = 602;
  *(result + 96) = a2;
  *(result + 104) = v2;
  *(result + 72) = 605;
  *(result + 136) = a2;
  *(result + 144) = v2;
  return result;
}

double sub_10002AE08()
{
  result = *(v0 - 448);
  v2 = *(v0 - 456);
  return result;
}

void sub_10002AE4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10002AF04(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_10002AF74(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_10002AF84(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_10002AFA4()
{
  v2 = *(v0 - 472);
}

BOOL sub_10002B070(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002B088()
{
  v3 = *(v1 - 152);

  return sub_100022BB4(v0, v3, (v1 - 104));
}

void sub_10002B0A4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10002B0BC()
{

  return sub_10002F2E4();
}

uint64_t sub_10002B0E0()
{

  return sub_10002F2E4();
}

BOOL sub_10002B104()
{

  return os_log_type_enabled(v1, v0);
}

void sub_10002B11C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002B134()
{

  return sub_10002F854();
}

void sub_10002B158()
{
}

uint64_t sub_10002B174()
{

  return sub_10002F854();
}

uint64_t sub_10002B198()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
}

uint64_t sub_10002B1B4()
{
  v2 = **(v1 - 184);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

__n128 sub_10002B1E8(uint64_t a1)
{
  *(v2 - 104) = a1;
  result = *(v2 - 400);
  *v1 = result.n128_u32[0];
  return result;
}

void sub_10002B294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t sub_10002B40C@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void sub_10002B42C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 72);

  objc_autoreleasePoolPop(v1);
}

void sub_10002B44C()
{
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
}

uint64_t sub_10002B484(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
}

BOOL sub_10002B4D4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_10002B4EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002B504()
{
}

void *sub_10002B550(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_10002F234();
  v8 = sub_100004368(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v57 = _swiftEmptyArrayStorage;
  if (qword_100049698 != -1)
  {
    swift_once();
  }

  v11 = qword_10004B5A8;
  v12 = sub_10002F294();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = v11;
  sub_10002F284();
  v16 = a3;
  sub_10002F214();
  v17 = sub_10002F224();
  if (qword_1000496A0 != -1)
  {
    swift_once();
  }

  v18 = sub_10002F324();
  sub_10002BCB4(v18, qword_10004B5B0);

  v19 = sub_10002F314();
  v20 = sub_10002F5E4();
  if (sub_10002D908(v20))
  {
    v21 = sub_10002D930();
    *v21 = 134217984;
    *(v21 + 4) = sub_10002A9E4(v17);

    _os_log_impl(&_mh_execute_header, v19, v20, "Found %ld suggestions", v21, 0xCu);
    sub_10002D8D0();
  }

  else
  {
  }

  v22 = objc_opt_self();
  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  isa = sub_10002F4A4().super.isa;
  v24 = [v22 filterMessagesBackdropSuggestions:isa fallback:0];

  v25 = sub_10002F4C4();
  v26 = sub_10002F4A4().super.isa;
  v27 = [v22 filterMessagesBackdropSuggestions:v26 fallback:1];

  v28 = sub_10002F4C4();
  v29 = &unk_100035000;
  if (sub_10002A9E4(v25) < 1)
  {

    v34 = _swiftEmptyArrayStorage;
    v30 = a4;
  }

  else
  {
    v30 = a4;
    sub_10002BCEC(v25, a4);
    if (v4)
    {
      v32 = sub_10002D958();
      v33(v32);

      v34 = _swiftEmptyArrayStorage;
LABEL_18:

      return v34;
    }

    v34 = v31;
    v57 = v31;

    v35 = sub_10002F314();
    v36 = sub_10002F5E4();
    if (sub_10002D908(v36))
    {
      v37 = sub_10002D968();
      *v37 = 134218240;
      *(v37 + 4) = sub_10002A9E4(v34);
      *(v37 + 12) = 2048;
      v38 = sub_10002A9E4(v25);

      *(v37 + 14) = v38;
      v30 = a4;

      v39 = v36;
      v29 = &unk_100035000;
      _os_log_impl(&_mh_execute_header, v35, v39, "Found %ld descriptors for %ld syndication suggestions", v37, 0x16u);
      v5 = 0;
      sub_100004398();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v29 = &unk_100035000;
    }
  }

  if (sub_10002A9E4(v28) < 1)
  {
  }

  else
  {
    sub_10002BCEC(v28, v30);
    if (v5)
    {
      v41 = sub_10002D958();
      v42(v41);
      goto LABEL_18;
    }

    v43 = v40;

    v44 = sub_10002F314();
    v45 = sub_10002F5E4();
    if (sub_10002D908(v45))
    {
      v56 = v43;
      v46 = sub_10002D968();
      *v46 = v29[197];
      *(v46 + 4) = sub_10002A9E4(v28);
      *(v46 + 12) = 2048;
      v47 = sub_10002A9E4(v28);

      *(v46 + 14) = v47;

      _os_log_impl(&_mh_execute_header, v44, v45, "Found %ld descriptors for %ld fallback suggestions", v46, 0x16u);
      v43 = v56;
      sub_100004398();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    swift_beginAccess();
    sub_1000133C0(v43);
    swift_endAccess();
  }

  sub_10002F274();
  v34 = v57;

  v48 = sub_10002F314();
  v49 = sub_10002F5E4();
  if (sub_10002D908(v49))
  {
    v50 = sub_10002D968();
    *v50 = v29[197];
    *(v50 + 4) = sub_10002A9E4(v57);

    *(v50 + 12) = 2048;
    v51 = sub_10002A9E4(v17);

    *(v50 + 14) = v51;

    _os_log_impl(&_mh_execute_header, v48, v49, "Found %ld descriptors for %ld suggestions", v50, 0x16u);
    sub_100004398();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v52 = sub_10002D958();
  v53(v52);
  return v34;
}

uint64_t sub_10002BBD8()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B5A8 = result;
  return result;
}

uint64_t sub_10002BCB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10002BCEC(uint64_t a1, uint64_t a2)
{
  v254 = a2;
  v260 = sub_10002F1B4();
  v3 = sub_100004368(v260);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v231[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v253 = &v231[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v231[-v14];
  v16 = __chkstk_darwin(v13);
  v259 = &v231[-v17];
  __chkstk_darwin(v16);
  v263 = &v231[-v18];
  if (qword_1000496A8 != -1)
  {
LABEL_95:
    swift_once();
  }

  v19 = qword_10004B5C8;
  v20 = sub_10002F294();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v19;
  sub_10002F284();
  v25 = sub_10002AD80();
  v269 = sub_10002A9E4(v25);
  if (!v269)
  {
    goto LABEL_11;
  }

  sub_10002AA00(0, (a1 & 0xC000000000000001) == 0, a1);
  v268 = a1 & 0xC000000000000001;
  v249 = v23;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = sub_10002F734();
  }

  else
  {
    v26 = *(a1 + 32);
  }

  v27 = v26;
  v28 = [v26 photoLibrary];
  if (!v28)
  {

LABEL_11:

    return;
  }

  v29 = v28;
  v242 = v27;
  if (qword_1000496B0 != -1)
  {
    swift_once();
  }

  v30 = sub_10002F324();
  sub_10002BCB4(v30, qword_10004B5D0);
  sub_10002AD80();

  v272 = v27;
  v31 = sub_10002F314();
  v32 = sub_10002F5E4();
  v33 = sub_10002D908(v32);
  v243 = v15;
  v244 = v10;
  if (v33)
  {
    v34 = sub_10002D930();
    *v34 = 134217984;
    *(v34 + 4) = sub_10002A9E4(a1);

    _os_log_impl(&_mh_execute_header, v31, v32, "Fetching key assets for %ld suggestions", v34, 0xCu);
    sub_10002D8D0();
  }

  else
  {
  }

  sub_10001AE50(a1, v35, v36, v37, v38, v39, v40, v41, *v231, *&v231[8], v232, v233, *(&v233 + 1), v234, *(&v234 + 1), v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242, v243);
  sub_10002F404();
  v42 = objc_allocWithZone(PHManualFetchResult);
  v43 = v29;
  sub_100021EC0();
  v45 = v44;
  v15 = [v43 librarySpecificFetchOptions];
  [v15 setIncludeGuestAssets:1];
  v46 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v45 options:v15];
  if (!v46)
  {
    sub_10002D65C();
    swift_allocError();
    *v58 = 1;
    swift_willThrow();

    return;
  }

  v47 = v46;
  v237 = v45;

  sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
  v48 = sub_10002F3A4();

  v49 = sub_10002F314();
  v50 = sub_10002F5E4();
  v51 = sub_10002D8EC(v50);
  v251 = v43;
  v266 = v48;
  if (v51)
  {
    v52 = sub_10002D968();
    *v52 = 134218240;
    *(v52 + 4) = *(v48 + 16);

    *(v52 + 12) = 2048;
    *(v52 + 14) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    sub_10000437C();
  }

  else
  {
  }

  v10 = &unk_100035000;
  v273[0] = _swiftEmptyArrayStorage;

  v59 = sub_10002F314();
  v60 = sub_10002F5E4();
  if (sub_10002D8EC(v60))
  {
    v61 = sub_10002D930();
    *v61 = 134217984;
    *(v61 + 4) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    sub_10000437C();
  }

  else
  {
  }

  v68 = 0;
  v257 = a1 & 0xFFFFFFFFFFFFFF8;
  v252 = (v5 + 8);
  v250 = (v5 + 16);
  v241 = PRPosterRoleBackdrop;
  v236 = 0x80000001000349E0;
  v245 = _swiftEmptyArrayStorage;
  v235 = 0x8000000100034A00;
  *&v67 = 136315138;
  v264 = v67;
  v69 = &off_100047000;
  *&v67 = 136315394;
  v239 = v67;
  *&v67 = 134218242;
  *v231 = v67;
  v234 = xmmword_100035290;
  v233 = xmmword_100035600;
  v232 = 0xE90000000000006FLL;
  v267 = a1;
  v265 = v15;
  do
  {
    if (v268)
    {
      v70 = sub_10002F734();
    }

    else
    {
      if (v68 >= *(v257 + 16))
      {
        goto LABEL_94;
      }

      v70 = *(a1 + 8 * v68 + 32);
    }

    v10 = (v68 + 1);
    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v71 = v70;
    v72 = sub_10002F314();
    v73 = sub_10002F5E4();

    v74 = sub_10002D9F4();
    v270 = v68 + 1;
    v271 = v68;
    if (v74)
    {
      sub_10002D930();
      v75 = sub_10002D8B4();
      v76 = [v71 v69[323]];
      a1 = sub_10002F404();
      v69 = v77;

      v78 = sub_10002D9BC();
      sub_10002D9D8();
      *(v68 + 4) = v78;
      sub_10002D980(&_mh_execute_header, v72, v73, "Trying to fetch suggestion: %s");
      sub_100004168(v75);
      sub_10002D8D0();
      sub_10000437C();
    }

    v15 = v71;
    v79 = [v15 v69[323]];
    v80 = sub_10002F404();
    v82 = v81;

    v83 = v266;
    if (!*(v266 + 16))
    {

LABEL_40:

      v86 = v15;
      v101 = sub_10002F314();
      v102 = sub_10002F5E4();

      if (sub_10002D9F4())
      {
        sub_10002D930();
        v103 = sub_10002D8B4();
        v104 = [v86 v69[323]];
        a1 = sub_10002F404();
        v69 = v105;

        v15 = sub_10002D9BC();
        sub_10002D9D8();
        *(v79 + 4) = v15;
        sub_10002D980(&_mh_execute_header, v101, v102, "Cannot find asset for suggestion %s");
        sub_100004168(v103);
        sub_10002D8D0();
        sub_10000437C();
        goto LABEL_42;
      }

LABEL_44:
      v5 = v265;
      v10 = &unk_100035000;
      v106 = v271;
      goto LABEL_45;
    }

    v84 = sub_100023198(v80, v82);
    v79 = v85;

    if ((v79 & 1) == 0)
    {
      goto LABEL_40;
    }

    v86 = *(*(v83 + 56) + 8 * v84);
    v262 = sub_100029030(v86);
    if (!v87)
    {
      v101 = sub_10002F314();
      v107 = sub_10002F5E4();

      if (sub_10002D9F4())
      {
        sub_10002D930();
        v108 = sub_10002D8B4();
        v261 = v86;
        v109 = [v15 v69[323]];
        a1 = sub_10002F404();
        v69 = v110;

        v111 = sub_10002D9BC();
        sub_10002D9D8();
        *(v79 + 4) = v111;
        sub_10002D980(&_mh_execute_header, v101, v107, "Cannot find assetUUID for suggestion %s");
        sub_10002D880();
        sub_10000437C();

        goto LABEL_44;
      }

LABEL_42:
      goto LABEL_44;
    }

    v88 = v87;
    v261 = v86;
    v274 = 0;
    v89 = v251;
    v90 = [v251 urlForApplicationDataFolderIdentifier:16 error:&v274];
    v91 = v274;
    if (!v90)
    {
      v230 = v274;

      sub_10002F0F4();
      swift_willThrow();

      return;
    }

    v92 = v90;
    sub_10002F164();
    v93 = v91;

    v255 = v88;
    v94 = sub_10002F244();
    v95 = [v94 identifier];
    v96 = sub_10002F404();
    v98 = v97;

    if (qword_1000496B8 != -1)
    {
      swift_once();
    }

    v256 = v94;
    if (byte_10004B5E8 == 1)
    {
      v99 = sub_10002F314();
      v100 = sub_10002F5B4();
      if (sub_10002D8EC(v100))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v99, v92, "PhotosPosterUpdaterBypassExtensionCache is TRUE, ignore caching from extension", v89, 2u);
        sub_10000437C();
      }
    }

    else if (*(v254 + 16))
    {
      v112 = sub_100023198(v96, v98);
      if (v113)
      {
        v262 = *(*(v254 + 56) + 8 * v112);

        v114 = sub_10002F314();
        v115 = sub_10002F5B4();

        if (sub_10002D9F4())
        {
          sub_10002D930();
          v116 = sub_10002D8B4();
          sub_10002D870(v116);
          v117 = sub_100022BB4(v96, v98, &v274);

          *(v89 + 2) = v117;
          sub_10002D980(&_mh_execute_header, v114, v115, "Descriptor %s already cached in extension.");
          sub_10002D880();
          sub_10000437C();
        }

        else
        {
        }

        v10 = &unk_100035000;
        v106 = v271;
        v212 = v261;
        sub_10002F494();
        sub_10002DA20();
        if (v213)
        {
          sub_10002D998();
        }

        sub_10002F504();
        v245 = v273[0];

        (*v252)(v263, v260);
        v5 = v265;
        goto LABEL_79;
      }
    }

    v118 = v259;
    sub_10002F154();
    if ((sub_10002F254() & 1) == 0)
    {

      v136 = *v250;
      v137 = v244;
      v138 = sub_10002DA0C();
      v139(v138);
      v140 = sub_10002F314();
      v141 = sub_10002F5B4();
      if (!sub_10002D908(v141))
      {

        v163 = *v252;
        (*v252)(v137, v96);
        v163(v118, v96);
        v163(v263, v96);
LABEL_78:
        v5 = v265;
        v10 = &unk_100035000;
        v106 = v271;
LABEL_79:
        v69 = &off_100047000;
        goto LABEL_45;
      }

      sub_10002D930();
      v142 = sub_10002D8B4();
      v255 = v140;
      v143 = v137;
      v262 = v142;
      sub_10002D870(v142);
      v248 = sub_10002F184();
      v145 = v144;
      v146 = *v252;
      (*v252)(v143, v96);
      sub_100022BB4(v248, v145, &v274);
      sub_10002AD80();

      *(v89 + 2) = v143;
      v147 = v255;
      sub_10002D980(&_mh_execute_header, v255, v141, "Cannot find %s. Skip!");
      sub_10002D880();
      sub_10000437C();

      v148 = v260;
      v146(v118, v260);
      v146(v263, v148);
LABEL_77:
      a1 = v267;
      goto LABEL_78;
    }

    v247 = v96;
    v119 = *v250;
    v120 = v98;
    v121 = v243;
    v122 = sub_10002DA0C();
    v123(v122);

    v124 = sub_10002F314();
    v125 = sub_10002F5B4();

    if (sub_10002D9F4())
    {
      v126 = sub_10002D968();
      v248 = swift_slowAlloc();
      v274 = v248;
      *v126 = v239;
      v127 = v247;
      *(v126 + 4) = sub_100022BB4(v247, v120, &v274);
      *(v126 + 12) = 2080;
      v238 = v124;
      v128 = sub_10002F184();
      v129 = v96;
      v131 = v130;
      v246 = *v252;
      v246(v121, v129);
      v132 = sub_100022BB4(v128, v131, &v274);

      *(v126 + 14) = v132;
      v133 = v125;
      v134 = v127;
      v135 = v238;
      _os_log_impl(&_mh_execute_header, v238, v133, "Cached descriptor %s exists at %s.", v126, 0x16u);
      swift_arrayDestroy();
      sub_100004398();
      sub_10000437C();
    }

    else
    {

      v246 = *v252;
      v246(v121, v96);
      v134 = v247;
    }

    sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
    sub_10002AD80();

    v149 = sub_1000189FC(v134, v120, v241);
    v150 = [v149 assetDirectory];
    v151 = v253;
    sub_10002F164();

    v152 = [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
    v153 = v258;
    v154 = v259;
    sub_100018ABC(v259, v151, v155, v156, v157, v158, v159, v160, *v231, *&v231[8], *&v231[16], v232, v233, *(&v233 + 1), v234, *(&v234 + 1), v235, v236, SHIDWORD(v236), v237, v238);
    v162 = v120;
    v248 = v149;
    if (v153)
    {

      v258 = 0;
      goto LABEL_73;
    }

    v164 = v161;
    v258 = 0;

    v165 = sub_10002F314();
    v166 = sub_10002F5E4();

    v167 = os_log_type_enabled(v165, v166);
    v69 = &off_100047000;
    *&v231[16] = v120;
    if (v167)
    {
      v168 = sub_10002D968();
      v169 = swift_slowAlloc();
      v274 = v169;
      *v168 = *v231;
      *(v168 + 4) = v164;
      *(v168 + 12) = 2080;
      *(v168 + 14) = sub_100022BB4(v247, v162, &v274);
      _os_log_impl(&_mh_execute_header, v165, v166, "Successfully copied %ld resources for descriptor %s", v168, 0x16u);
      sub_100004168(v169);
      sub_100004398();
      sub_100004398();
    }

    a1 = v267;
    sub_100004120(&qword_10004AA18, &qword_100035908);
    inited = swift_initStackObject();
    *(inited + 16) = v234;
    *(inited + 32) = 0x4955557465737361;
    *(inited + 40) = 0xE900000000000044;
    v171 = v255;
    *(inited + 48) = v262;
    *(inited + 56) = v171;
    strcpy((inited + 64), "suggestionUUID");
    *(inited + 79) = -18;
    v172 = [v15 uuid];

    v173 = sub_10002F404();
    v175 = v174;

    *(inited + 80) = v173;
    *(inited + 88) = v175;
    v176 = sub_10002F3B4();
    sub_100004120(&qword_10004AA20, &qword_100035910);
    v177 = swift_initStackObject();
    *(v177 + 16) = v233;
    *(v177 + 32) = 0x6564724F74726F73;
    *(v177 + 40) = 0xE900000000000072;
    *(v177 + 48) = sub_10002A9E4(v245);
    *(v177 + 72) = &type metadata for Int;
    *(v177 + 80) = 0xD000000000000010;
    *(v177 + 88) = v236;
    v178 = [v251 isSystemPhotoLibrary];
    v179 = 0xD000000000000012;
    if (v178)
    {
      v179 = 0x694C6D6574737953;
    }

    v180 = v235;
    if (v178)
    {
      v180 = 0xED00007972617262;
    }

    *(v177 + 96) = v179;
    *(v177 + 104) = v180;
    *(v177 + 120) = &type metadata for String;
    *(v177 + 128) = 0x666E496775626564;
    *(v177 + 136) = v232;
    *(v177 + 168) = sub_100004120(&qword_10004AA28, &qword_100035918);
    *(v177 + 144) = v176;
    v181 = sub_10002F3B4();
    sub_1000112EC(v181);
    v183 = v182;

    v274 = 0;
    v184 = v248;
    v185 = sub_10002903C(v183, &v274, v248);
    v186 = v274;
    if ((v185 & 1) == 0)
    {
      v193 = v274;

      sub_10002F0F4();
      swift_willThrow();
      v258 = 0;
      v154 = v259;
LABEL_73:
      v194 = v261;
      swift_errorRetain();
      v195 = sub_10002F314();
      v196 = sub_10002F5D4();
      v262 = v195;
      if (os_log_type_enabled(v195, v196))
      {
        LODWORD(v261) = v196;
        v197 = sub_10002D968();
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v274 = v199;
        *v197 = v239;
        v200 = v194;
        v201 = sub_100029030(v194);
        if (!v202)
        {

          __break(1u);
          return;
        }

        v203 = v201;
        v204 = v202;

        v205 = sub_100022BB4(v203, v204, &v274);

        *(v197 + 4) = v205;
        *(v197 + 12) = 2112;
        swift_errorRetain();
        v206 = _swift_stdlib_bridgeErrorToNSError();
        *(v197 + 14) = v206;
        *v198 = v206;
        v207 = v262;
        _os_log_impl(&_mh_execute_header, v262, v261, "Fail to load descriptor for asset %s: %@", v197, 0x16u);
        sub_1000041B4(v198);
        sub_10002D8D0();
        sub_100004168(v199);
        sub_10000437C();
        sub_100004398();

        v208 = sub_10002D948();
        v209 = v246;
        (v246)(v208);
        v209(v259, v207);
        v209(v263, v207);
      }

      else
      {

        v210 = sub_10002D948();
        v211 = v246;
        (v246)(v210);
        v211(v154, v195);
        v211(v263, v195);
      }

      goto LABEL_77;
    }

    v187 = *&v231[16];

    v188 = v186;
    v189 = sub_10002F314();
    v190 = sub_10002F5E4();

    if (sub_10002D9F4())
    {
      sub_10002D930();
      v191 = sub_10002D8B4();
      sub_10002D870(v191);
      v192 = sub_100022BB4(v247, v187, &v274);

      *(v184 + 4) = v192;
      sub_10002D980(&_mh_execute_header, v189, v190, "Successfully stored userInfo for descriptor %s");
      sub_10002D880();
      sub_10000437C();
    }

    else
    {
    }

    v10 = &unk_100035000;
    v106 = v271;
    v214 = v261;
    sub_10002F494();
    sub_10002DA20();
    if (v213)
    {
      sub_10002D998();
    }

    v215 = v248;
    sub_10002F504();
    v245 = v273[0];

    v216 = sub_10002D948();
    v217 = v246;
    (v246)(v216);
    v217(v259, v273);
    v217(v263, v273);
    v5 = v265;
LABEL_45:
    v68 = v106 + 1;
  }

  while (v270 != v269);

  v218 = v245;

  v219 = sub_10002F314();
  v220 = sub_10002F5E4();
  if (sub_10002D8EC(v220))
  {
    v222 = sub_10002D968();
    *v222 = *(v10 + 197);
    *(v222 + 4) = sub_10002A9E4(v218);
    *(v222 + 12) = 2048;
    *(v222 + 14) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v223, v224, v225, v226, v227, 0x16u);
    sub_10000437C();
  }

  else
  {
  }

  v228 = v251;
  v229 = v237;
  sub_10002F274();
}

uint64_t sub_10002D464()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B5C8 = result;
  return result;
}

uint64_t sub_10002D540(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_10002F324();
  sub_10002D6B0(v7, a2);
  sub_10002BCB4(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_10002F334();
}

void sub_10002D5CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10002F3D4();
  v2 = [v0 BOOLForKey:v1];

  byte_10004B5E8 = v2;
}

unint64_t sub_10002D65C()
{
  result = qword_10004AA10;
  if (!qword_10004AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA10);
  }

  return result;
}

uint64_t *sub_10002D6B0(uint64_t a1, uint64_t *a2)
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

_BYTE *storeEnumTagSinglePayload for PosterDescriptorCacheLoader.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002D7E0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002D81C()
{
  result = qword_10004AA30;
  if (!qword_10004AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA30);
  }

  return result;
}

__n128 sub_10002D870(uint64_t a1)
{
  *(v3 - 104) = a1;
  result = v1[19];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t sub_10002D880()
{
  sub_100004168(v0);
}

uint64_t sub_10002D8B4()
{

  return swift_slowAlloc();
}

uint64_t sub_10002D8D0()
{
}

BOOL sub_10002D8EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10002D908(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002D930()
{

  return swift_slowAlloc();
}

uint64_t sub_10002D948()
{
  v2 = v0[26];
  result = v0[27];
  v3 = v0[34];
  return result;
}

uint64_t sub_10002D958()
{
  v2 = *(v1 - 120);
  v3 = *(*(v1 - 128) + 8);
  return v0;
}

uint64_t sub_10002D968()
{

  return swift_slowAlloc();
}

void sub_10002D980(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002D998()
{

  return sub_10002F4E4();
}

uint64_t sub_10002D9BC()
{

  return sub_100022BB4(v0, v1, (v2 - 104));
}

uint64_t sub_10002D9D8()
{
  v2 = *(v0 + 336);
}

BOOL sub_10002D9F4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10002DA0C()
{
  result = v1;
  v3 = *(v0 + 272);
  return result;
}

double PPPosterEditingChromeDodgingInsetsForEditor(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 editingChromeDodgingInsets];
    top = v2;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  return top;
}

id PPCreatePosterDescriptorGalleryOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 posterType];
  if (v5 == 1)
  {
    v8 = [v3 descriptorType];
    v9 = 2;
    if (v8 != 5)
    {
      v9 = 0;
    }

    v6 = 0;
    if (v8 == 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }
  }

  else if (v5 == 2)
  {
    v7 = 3;
    v6 = 1;
  }

  else
  {
    if (!v5)
    {
      v14 = +[NSAssertionHandler currentHandler];
      v15 = [NSString stringWithUTF8String:"PRPosterDescriptorGalleryOptions * _Nonnull PPCreatePosterDescriptorGalleryOptions(PFPosterDescriptor *__strong _Nonnull, id  _Nullable __strong)"];
      [v14 handleFailureInFunction:v15 file:@"PhotosPosterRuntimeAdditions.m" lineNumber:99 description:@"Undefined poster type"];

      abort();
    }

    v6 = 0;
    v7 = 0;
  }

  v10 = objc_opt_respondsToSelector();
  v11 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
  if (v10)
  {
    [PRPosterDescriptorGalleryOptions galleryOptionsWithAssetLookupInfo:v11 galleryPresentationStyle:v6 galleryDisplayStyle:v7 preferredTitleStyle:v4];
  }

  else
  {
    [PRPosterDescriptorGalleryOptions galleryOptionsWithAssetLookupInfo:v11 galleryPresentationStyle:v6 galleryDisplayStyle:v7];
  }
  v12 = ;

  return v12;
}

id PPGalleryOptionsForDescriptorType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ATXPosterDescriptorGalleryOptions);
  [v4 setAllowsSystemSuggestedComplications:0];
  [v4 setFeaturedConfidenceLevel:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 suggestionSubtype];
    if ((v5 - 602) <= 3u)
    {
      [v4 setPhotoSubtype:(v5 - 601)];
    }
  }

  if (a1 > 101)
  {
    if (a1 > 200)
    {
      switch(a1)
      {
        case 201:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_GYROPOSTER_ADAPTIVETIME";
          break;
        case 202:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_GYROPOSTER";
          break;
        case 203:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_ADAPTIVETIME";
          break;
        default:
          goto LABEL_31;
      }
    }

    else
    {
      switch(a1)
      {
        case 'f':
          [v4 setHero:1];
          v6 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_SHUFFLE";
LABEL_26:
          [v4 setDisplayNameLocalizationKey:v6];
          [v4 setShouldShowAsShuffleStack:1];
          goto LABEL_31;
        case 'g':
          [v4 setHero:1];
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_PEOPLE";
          break;
        case 'h':
          [v4 setHero:1];
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_LIVE_PHOTO";
          break;
        default:
          goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      v8 = +[NSAssertionHandler currentHandler];
      v9 = [NSString stringWithUTF8String:"ATXPosterDescriptorGalleryOptions * _Nonnull PPGalleryOptionsForDescriptorType(PFPosterDescriptorType, PFPosterMedia *__strong _Nonnull)"];
      [v8 handleFailureInFunction:v9 file:@"PhotosPosterRuntimeAdditions.m" lineNumber:139 description:@"Unknown descriptor type"];

      goto LABEL_31;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_31;
      }

      [v4 setFeaturedConfidenceLevel:2];
      [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
      v6 = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM";
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((a1 - 4) < 2)
  {
LABEL_23:
    [v4 setFeaturedConfidenceLevel:1];
    [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
    v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_FEATURED_PHOTO";
LABEL_30:
    [v4 setDisplayNameLocalizationKey:v7];
    goto LABEL_31;
  }

  if (a1 != 3)
  {
    if (a1 != 101)
    {
      goto LABEL_31;
    }

    [v4 setHero:1];
    v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_PHOTOS";
    goto LABEL_30;
  }

  [v4 setFeaturedConfidenceLevel:1];
  [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
LABEL_31:

  return v4;
}

uint64_t sub_10002E19C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 suggestionSubtype];
    if (v2 - 604 <= 0x33)
    {
      v3 = 0xC000000000003uLL >> (v2 - 92);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id PPCreateTimeFontConfiguration(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(a2) = [a2 isEqualToString:PRPosterRoleIncomingCall];
  v4 = [v3 isEqualToString:PUPosterFontIdentifierRounded];
  if (!a2)
  {
    if (v4)
    {
      v5 = &PRTimeFontIdentifierRounded;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSoft])
    {
      v5 = &PRTimeFontIdentifierSoft;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSlab])
    {
      v5 = &PRTimeFontIdentifierSlab;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierStencil])
    {
      v5 = &PRTimeFontIdentifierStencil;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierRail])
    {
      v5 = &PRTimeFontIdentifierRail;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYork])
    {
      v5 = &PRTimeFontIdentifierNewYork;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYorkHeavy])
    {
      v6 = &PRTimeFontIdentifierNewYork;
      goto LABEL_28;
    }

    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected font identifier: %@", &v12, 0xCu);
    }

    v5 = &PRTimeFontIdentifierRounded;
LABEL_35:

    goto LABEL_36;
  }

  if ((v4 & 1) == 0)
  {
    if ([v3 isEqualToString:PUPosterFontIdentifierSoft])
    {
LABEL_7:
      v5 = &PRTimeFontIdentifierSFPro;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSlab])
    {
      goto LABEL_11;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierStencil])
    {
      goto LABEL_7;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierRail])
    {
LABEL_11:
      v5 = &PRTimeFontIdentifierSFCondensed;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYork])
    {
      v5 = &PRTimeFontIdentifierNewYorkAlpha;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYorkHeavy])
    {
      v6 = &PRTimeFontIdentifierNewYorkAlpha;
LABEL_28:
      v7 = *v6;
      v8 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v7 weight:810.0];
      goto LABEL_37;
    }

    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected font identifier: %@", &v12, 0xCu);
    }

    v5 = &PRTimeFontIdentifierSFRounded;
    goto LABEL_35;
  }

  v5 = &PRTimeFontIdentifierSFRounded;
LABEL_36:
  v7 = *v5;
  v8 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v7];
LABEL_37:
  v10 = v8;

  return v10;
}

uint64_t PPPosterEnvironmentIsCallServices(void *a1)
{
  v1 = [a1 role];
  v2 = [v1 isEqualToString:PRPosterRoleIncomingCall];

  if (v2)
  {
    return 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_PARALLAX_EMULATE_CALLSERVICES"];

  return v5;
}

uint64_t PPPosterEnvironmentIsBackdrop(void *a1)
{
  v1 = [a1 role];
  v2 = [v1 isEqualToString:PRPosterRoleBackdrop];

  if (v2)
  {
    return 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_PARALLAX_EMULATE_BACKDROP"];

  return v5;
}

uint64_t PPPosterBoundingShapeFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 boundingShape];
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

PPPosterOverrideConfiguration *PPPosterOverrideConfigurationFromConfiguration(void *a1)
{
  v1 = [a1 loadUserInfoWithError:0];
  if (v1)
  {
    v2 = objc_alloc(NSClassFromString(@"WFWallpaperConfiguration"));
    v3 = [v2 performSelector:NSSelectorFromString(@"initWithUserInfo:") withObject:v1];

    if (v3)
    {
      v4 = [[PPPosterOverrideConfiguration alloc] initWithWFWallpaperConfiguration:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PPPosterOverrideConfiguration *PPPosterOverrideConfigurationFromSessionInfo(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortcutsWallpaperConfiguration];
    if (v2)
    {
      v3 = [[PPPosterOverrideConfiguration alloc] initWithWFWallpaperConfiguration:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double PPPosterSalientContentRectangleFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 salientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  return x;
}

double PPPosterPreferredSalientContentRectangleUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 preferredSalientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  return x;
}

double PPPosterPreferredSalientContentRectangleUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 preferredSalientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  return x;
}

void PPPosterSetPreferredSalientContentRectangleUsingMutablePreferences(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v9 setSalientContentRectangleUpdatesRequested:1];
    [v9 setPreferredSalientContentRectangle:{a2, a3, a4, a5}];
  }
}

id PPPosterContentOcclusionRectangleUpdatesRequestedUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 contentOcclusionRectangleUpdatesRequested];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PPPosterContentOcclusionRectangleUpdatesRequestedUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 contentOcclusionRectangleUpdatesRequested];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetContentOcclusionRectangleUpdatesRequestedUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setContentOcclusionRectangleUpdatesRequested:1];
    [v3 setContentOcclusionRectangleUpdatesRequested:a1];
  }
}

double PPPosterBackdropPrimaryContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 rectWithName:@"primary"];
      [v7 CGRectValue];
      x = v8;
    }
  }

  return x;
}

double PPPosterBackdropInspectorContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 rectWithName:@"inspector"];
      [v7 CGRectValue];
      x = v8;
    }
  }

  return x;
}

double PPPosterCallServicesContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 rectWithName:@"controlsArea"];
      [v7 CGRectValue];
      x = v8;
    }
  }

  return x;
}

id PPPosterAdaptiveTimeModeUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 adaptiveTimeMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PPPosterAdaptiveTimeModeUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 adaptiveTimeMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetAdaptiveTimeModeUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setAdaptiveTimeMode:a1];
  }
}

id PPPosterPowerLogIdentifierUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 powerlogIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetPowerLogIdentifierUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setPowerlogIdentifier:a1];
  }
}

void PPPosterSetPreferredRenderingConfigurationForDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (objc_opt_respondsToSelector())
  {
    v5 = [[PRPosterRenderingConfiguration alloc] initWithDepthEffectDisabled:a2 motionEffectsDisabled:a3];
    [v6 setPreferredRenderingConfiguration:v5];
  }
}

objc_class *PPPosterPreferredTitleStyleForLayoutProperties(double a1, double a2)
{
  v4 = NSClassFromString(@"PRPosterDescriptorGalleryTitleStyle");
  if (v4)
  {
    v4 = [[v4 alloc] initWithPreferredTimeMaxYPortrait:a1 preferredTimeMaxYLandscape:a2];
  }

  return v4;
}

id PPPosterIsDepthEffectDisabledFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isDepthEffectDisabled];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PPPosterLegacyConfigurationTypeFromSessionInfo(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"SBLegacyWallpaperMigrationType"];
    v4 = [v3 isEqualToString:@"home"];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}