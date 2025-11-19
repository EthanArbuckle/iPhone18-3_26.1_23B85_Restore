uint64_t sub_10001D220(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = (__dst - __src) / 16;
  v8 = (a3 - __dst) / 16;
  v9 = a3;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[16 * v7] <= a4)
    {
      memmove(a4, __src, 16 * v7);
      a3 = v9;
    }

    v11 = &v4[16 * v7];
    while (1)
    {
      if (v4 >= v11 || v5 >= a3)
      {
        v27 = v6;
        goto LABEL_66;
      }

      v13 = *v5;
      v14 = *(v5 + 1);
      v15 = *v5 == 0x636976654420794DLL && v14 == 0xEA00000000007365;
      if (v15)
      {
        break;
      }

      v17 = *v4;
      v16 = *(v4 + 1);
      v18 = *v5;
      v19 = *(v5 + 1);
      v20 = sub_10002DE10();
      a3 = v9;
      if (v20)
      {
        break;
      }

      if (v17 != 0x636976654420794DLL || v16 != 0xEA00000000007365)
      {
        v23 = sub_10002DE10();
        a3 = v9;
        if ((v23 & 1) == 0 && (v13 != v17 || v14 != v16))
        {
          v25 = sub_10002DE10();
          a3 = v9;
          if (v25)
          {
            break;
          }
        }
      }

      v21 = v4;
      v15 = v6 == v4;
      v4 += 16;
      if (!v15)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 += 16;
    }

    v21 = v5;
    v15 = v6 == v5;
    v5 += 16;
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v6 = *v21;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[16 * v8] <= a4)
  {
    memmove(a4, __dst, 16 * v8);
    a3 = v9;
  }

  v11 = &v4[16 * v8];
  v48 = v6;
LABEL_39:
  v27 = v5;
  v28 = a3 - 16;
  v47 = v5 - 16;
  while (v11 > v4 && v27 > v6)
  {
    v30 = v28;
    v31 = v4;
    v32 = v11;
    v33 = *(v11 - 2);
    v34 = *(v11 - 1);
    v11 -= 16;
    if (v33 == 0x636976654420794DLL && v34 == 0xEA00000000007365)
    {
      goto LABEL_63;
    }

    v36 = *(v27 - 2);
    v37 = *(v27 - 1);
    v38 = v27;
    v39 = sub_10002DE10();
    v27 = v38;
    if (v39)
    {
      goto LABEL_63;
    }

    if (v36 != 0x636976654420794DLL || v37 != 0xEA00000000007365)
    {
      v41 = sub_10002DE10();
      v27 = v38;
      if ((v41 & 1) == 0 && (v33 != v36 || v34 != v37))
      {
        v43 = sub_10002DE10();
        v27 = v38;
        if (v43)
        {
LABEL_63:
          a3 = v30;
          v15 = v30 + 16 == v27;
          v4 = v31;
          v6 = v48;
          v5 = v47;
          v11 = v32;
          if (!v15)
          {
            *a3 = *v47;
          }

          goto LABEL_39;
        }
      }
    }

    if (v32 != v30 + 16)
    {
      *v30 = *v11;
    }

    v28 = v30 - 16;
    v4 = v31;
    v6 = v48;
  }

LABEL_66:
  v44 = (v11 - v4) / 16;
  if (v27 != v4 || v27 >= &v4[16 * v44])
  {
    memmove(v27, v4, 16 * v44);
  }

  return 1;
}

char *sub_10001D5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10003C750, &qword_10002F328);
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

uint64_t sub_10001D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for DeviceActivityDeviceAppEntity();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15 + v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = sub_10001B270(v14 + v12 * a2, v18 - a2, v15 + v12 * a3, type metadata accessor for DeviceActivityDeviceAppEntity);
      v19 = *(v9 + 16);
      v20 = __OFADD__(v19, v16);
      v21 = v19 + v16;
      if (!v20)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
    return sub_100006BA4(a4, &qword_10003C718, &qword_10002F300);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = sub_10001DABC();
    v15 += v12;
    if (v15 >= v17)
    {
      return sub_100006BA4(a4, &qword_10003C718, &qword_10002F300);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10001D858(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

uint64_t sub_10001D9C8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10002DD60();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10001DA08(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10001DA64()
{
  sub_10001E1FC();
  v3 = sub_100001A7C(v1, v2);
  sub_100006D2C(v3);
  v5 = *(v4 + 16);
  v6 = sub_10001DF8C();
  v7(v6);
  return v0;
}

uint64_t sub_10001DABC()
{
  sub_10001E1FC();
  v2 = v1(0);
  sub_100006D2C(v2);
  v4 = *(v3 + 16);
  v5 = sub_10001DF8C();
  v6(v5);
  return v0;
}

uint64_t sub_10001DB14()
{
  sub_10001E1FC();
  v2 = v1(0);
  sub_100006D2C(v2);
  v4 = *(v3 + 32);
  v5 = sub_10001DF8C();
  v6(v5);
  return v0;
}

uint64_t sub_10001DB6C(uint64_t a1)
{
  v2 = type metadata accessor for AppUsageResultEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DC38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001DC4C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001DC4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001DCEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DD28()
{
  result = sub_10002D900();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DDD4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 424) = a1;
  *(v1 + 432) = v2;
  v3 = *(v1 + 416);
  v4 = *(v1 + 400);
  v5 = *(v1 + 304);
  v6 = *(v1 + 280);
  v8 = *(v1 + 264);
  v7 = *(v1 + 272);
  v9 = *(v1 + 224);
  v10 = *(v1 + 168) + ((*(v1 + 480) + 32) & ~*(v1 + 480)) + *(v1 + 408) * a1;
  *(v1 + 440) = (*(v1 + 288) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v5;
}

uint64_t sub_10001DE78()
{
  result = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[33];
  v9 = v0[34];
  v10 = v0[32];
  v11 = v0[30];
  return result;
}

uint64_t sub_10001DE9C()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v9 = v0[24];
  v8 = v0[25];
  return v0[39];
}

uint64_t sub_10001DEE0()
{

  return sub_10001DA64();
}

void sub_10001DF10()
{
  v3 = v0[47];
  v4 = v0[48];
  v1 = v0[40];
  v2 = v0[43];
}

void sub_10001DF28()
{
  v9 = v0[28];
  v10 = v0[27];
  v2 = v0[23];
  *(v1 - 192) = v0[24];
  *(v1 - 184) = v2;
  v4 = v0[18];
  v3 = v0[19];
  *(v1 - 176) = v0[22];
  *(v1 - 168) = v3;
  v5 = v0[15];
  *(v1 - 160) = v4;
  *(v1 - 152) = v5;
  v7 = v0[8];
  v6 = v0[9];
  *(v1 - 144) = v0[12];
  *(v1 - 136) = v6;
  v8 = v0[5];
  *(v1 - 128) = v7;
  *(v1 - 120) = v8;
}

uint64_t sub_10001DF64()
{
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);

  return swift_slowAlloc();
}

uint64_t sub_10001E004()
{
  v2 = v1[28];
  v3 = v1[27];
  v4 = *(v1[29] + 8);
  return v0;
}

uint64_t sub_10001E018(uint64_t a1)
{
  *(v2 + 448) = a1;
  result = sub_1000040D4(v1, 1, a1);
  v4 = *(v2 + 240);
  return result;
}

uint64_t sub_10001E044()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = *(v0[29] + 32);
  return v0[30];
}

uint64_t sub_10001E0AC()
{
  v3 = v0[56];
  *(v1 - 88) = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[26];

  return sub_10002DA90();
}

uint64_t sub_10001E0DC()
{
  result = sub_1000040D4(v1, 1, v2);
  v4 = *(v0 + 264);
  return result;
}

void sub_10001E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16) + 1;

  sub_100022F08();
}

uint64_t sub_10001E124()
{

  return swift_beginAccess();
}

uint64_t sub_10001E144()
{
}

uint64_t sub_10001E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return AppDisplayInfo.init(displayName:artworkData:artworkURL:)(v24, v22, a21, v21, v23);
}

uint64_t sub_10001E22C()
{

  return sub_100004D84(v0, v1, v2);
}

uint64_t sub_10001E248()
{
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[25];
  v6 = v0[24];
}

uint64_t sub_10001E26C(uint64_t a1, uint64_t a2)
{

  return sub_10000E05C(a1, a2, v2, v3);
}

uint64_t sub_10001E288()
{

  return swift_arrayDestroy();
}

uint64_t sub_10001E2A4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_10002DD30();
}

void sub_10001E2EC()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[34];
  v5 = v0[36] + 8;
}

void sub_10001E338(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10001E358()
{

  return swift_slowAlloc();
}

uint64_t DeviceActivityDeviceAppEntity.isAllDevices.getter()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021554(v0);
  sub_10002D270();
  return v2;
}

uint64_t type metadata accessor for DeviceActivityDeviceAppEntity()
{
  result = qword_10003C8D8;
  if (!qword_10003C8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceActivityDeviceAppEntity.init(device:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = sub_10002D930();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v30);
  sub_100002C9C();
  v8 = v7 - v6;
  v9 = sub_10002D740();
  v10 = sub_100002CD8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002C9C();
  v13 = type metadata accessor for DeviceActivityDeviceAppEntity();
  v14 = v13[7];
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_10002D730();
  *(a2 + v14) = sub_10002D300();
  v15 = v13[8];
  sub_100001A7C(&qword_10003C110, &unk_10002E440);
  sub_100021528();
  sub_10002D730();
  *(a2 + v15) = sub_10002D320();
  v16 = a2 + v13[5];
  sub_10002DB80();
  v17 = v13[6];
  v18 = sub_10002DB90();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a2 + v17, a1, v18);
  v31 = sub_10002DB60();
  v32 = v20;
  sub_10002DB80();
  v21 = sub_10002D920();
  v23 = v22;
  (*(v4 + 8))(v8, v30);
  v33._countAndFlagsBits = v21;
  v33._object = v23;
  sub_10002DC90(v33);

  *a2 = v31;
  a2[1] = v32;
  sub_10002DB70();
  sub_10002D280();
  v24 = sub_10002DB60();
  v26 = v25;
  if (v24 != sub_10002DB40() || v26 != v27)
  {
    sub_10002DE10();
  }

  sub_10002D280();
  return (*(v19 + 8))(a1, v18);
}

uint64_t DeviceActivityDeviceAppEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceActivityDeviceAppEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivityDeviceAppEntity.user.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 20);
  v4 = sub_10002D930();
  v5 = sub_100006D2C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DeviceActivityDeviceAppEntity.user.setter()
{
  sub_100021548();
  v2 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 20);
  v3 = sub_10002D930();
  sub_100006D2C(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*DeviceActivityDeviceAppEntity.user.modify())()
{
  sub_100021548();
  v0 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 20);
  return static DeviceActivityDeviceAppEntity.defaultQuery.getter;
}

uint64_t DeviceActivityDeviceAppEntity.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 24);
  v4 = sub_10002DB90();
  v5 = sub_100006D2C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DeviceActivityDeviceAppEntity.device.setter()
{
  sub_100021548();
  v2 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 24);
  v3 = sub_10002DB90();
  sub_100006D2C(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*DeviceActivityDeviceAppEntity.device.modify())()
{
  sub_100021548();
  v0 = *(type metadata accessor for DeviceActivityDeviceAppEntity() + 24);
  return static DeviceActivityDeviceAppEntity.defaultQuery.getter;
}

uint64_t sub_10001E9D0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10002D740();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10002D620();
  sub_100004480(v6, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  sub_100004448(v6, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t DeviceActivityDeviceAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508();
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
}

uint64_t static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.modify())()
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508();
  }

  v0 = sub_10002D620();
  sub_100004448(v0, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeviceActivityDeviceAppEntity.name.setter()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021560(v0);
  return sub_10002D280();
}

uint64_t (*DeviceActivityDeviceAppEntity.name.modify(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v3 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021560(v3);
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t DeviceActivityDeviceAppEntity.$name.getter()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021560(v0);
  return sub_10002D290();
}

uint64_t DeviceActivityDeviceAppEntity.isAllDevices.setter()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021554(v0);
  return sub_10002D280();
}

void *sub_10001EE94(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*DeviceActivityDeviceAppEntity.isAllDevices.modify(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v3 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021554(v3);
  v2[4] = sub_10002D260();
  return sub_10001EF34;
}

void sub_10001EF38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DeviceActivityDeviceAppEntity.$isAllDevices.getter()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021554(v0);
  return sub_10002D290();
}

uint64_t DeviceActivityDeviceAppEntity.displayRepresentation.getter()
{
  v1 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v2 = sub_100002CD8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v8 = sub_100002CD8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_10002D740();
  v14 = sub_100006D2C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002C9C();
  v17 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021554(v17);
  sub_10002D270();
  if (v21 == 1)
  {
    sub_100021528();
  }

  else
  {
    v18 = *(v0 + *(v17 + 28));
    sub_10002D270();
  }

  sub_10002D730();
  sub_100001AC4(v12, 1, 1, v13);
  v19 = sub_10002D4E0();
  sub_100001AC4(v6, 1, 1, v19);
  return sub_10002D500();
}

uint64_t sub_10001F150()
{
  v0 = type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100021560(v0);
  sub_10002D270();
  return v2;
}

uint64_t sub_10001F18C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10001F19C@<X0>(uint64_t a1@<X8>)
{
  v2 = DeviceActivityDeviceAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_10001F218(uint64_t a1)
{
  v2 = sub_100020FD0(&qword_10003C540);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000214F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001F348(uint64_t a1)
{
  v2 = sub_100020FD0(&qword_10003C840);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t DeviceActivityDeviceAppEntityQuery.entities(for:)()
{
  sub_10001DFE4();
  v0[4] = v1;
  v2 = *(type metadata accessor for DeviceActivityDeviceAppEntity() - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10001F4A0;

  return sub_10001F7F8();
}

uint64_t sub_10001F4A0()
{
  sub_10001E220();
  v3 = v2;
  v4 = v2[8];
  v5 = *v1;
  v3[9] = v6;
  v3[10] = v0;

  if (v0)
  {
    v8 = v3[6];
    v7 = v3[7];

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_10001F5F4, 0, 0);
  }
}

void sub_10001F5F4()
{
  v1 = 0;
  v18 = v0[7];
  v2 = v0[5];
  v3 = v0[10];
  v19 = v0[9];
  v4 = *(v19 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v19 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[7];
    v6 = v0[4];
    v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v8 = *(v2 + 72);
    sub_10001FC38(v0[9] + v7 + v8 * v1, v5);
    v9 = *(v18 + 8);
    v0[2] = *v5;
    v0[3] = v9;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 2;
    LOBYTE(v6) = sub_100020B78(sub_100020C54, v10, v6);

    if (v6)
    {
      sub_10000BB18(v0[7], v0[6]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020388(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100020388(v11 > 1, v12 + 1, 1);
      }

      ++v1;
      v13 = v0[6];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      sub_10000BB18(v13, _swiftEmptyArrayStorage + v7 + v12 * v8);
    }

    else
    {
      sub_10002149C();
      ++v1;
    }
  }

  v14 = v0[9];
  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  v17(_swiftEmptyArrayStorage);
}

uint64_t sub_10001F7F8()
{
  sub_10001DFE4();
  v1 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v1);
  v3 = *(v2 + 64) + 15;
  v0[2] = swift_task_alloc();
  v4 = type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider(0);
  sub_100002CD8(v4);
  v6 = *(v5 + 64) + 15;
  v0[3] = swift_task_alloc();
  v7 = sub_100001A7C(&qword_10003C630, qword_10002F110);
  v0[4] = v7;
  v8 = *(v7 - 8);
  v0[5] = v8;
  v9 = *(v8 + 64) + 15;
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001F918, 0, 0);
}

uint64_t sub_10001F918()
{
  sub_10001DFE4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_10002D900();
  sub_100001AC4(v1, 1, 1, v3);
  sub_10001DDA0(v1);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10001F9D8;
  v5 = v0[6];
  v6 = v0[3];

  return sub_10000E2E0();
}

uint64_t sub_10001F9D8()
{
  sub_10001DFE4();
  sub_10001E220();
  v3 = *(v2 + 56);
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_10001DF00();
  *v6 = v5;
  *(v7 + 64) = v0;

  sub_10002149C();
  if (v0)
  {
    v8 = sub_10001FBC4;
  }

  else
  {
    v8 = sub_10001FB0C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001FB0C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_10002D490();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_10001FBC4()
{
  sub_10001DFE4();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_10001FC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityDeviceAppEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceActivityDeviceAppEntityQuery.suggestedEntities()()
{
  sub_10001DFE4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100021504;

  return sub_10001F7F8();
}

uint64_t sub_10001FD24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100021504;

  return DeviceActivityDeviceAppEntityQuery.entities(for:)();
}

uint64_t sub_10001FDB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001FE48;

  return DeviceActivityDeviceAppEntityQuery.suggestedEntities()();
}

uint64_t sub_10001FE48(uint64_t a1)
{
  sub_10001E220();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  sub_10001DF00();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10001FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002000C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002000C()
{
  sub_10001DFE4();
  v3 = v2;
  sub_10001E220();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_10001DF00();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1000200FC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100020D14();
  *v6 = v2;
  v6[1] = sub_1000201B0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000201B0()
{
  sub_10001DFE4();
  sub_10001E220();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001DF00();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100020294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000201B0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

char *sub_100020348(char *a1, int64_t a2, char a3)
{
  result = sub_1000203E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100020368(size_t a1, int64_t a2, char a3)
{
  result = sub_1000204E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100020388(size_t a1, int64_t a2, char a3)
{
  result = sub_1000206B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000203A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100020868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000203C8(char *a1, int64_t a2, char a3)
{
  result = sub_100020A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000203E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003C938, &qword_10002F970);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10001B20C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1000204E8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100001A7C(&qword_10003C930, "2\x1B");
  v10 = *(sub_100001A7C(&qword_10003C710, &unk_10002F780) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001A7C(&qword_10003C710, &unk_10002F780) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B22C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000206B4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100001A7C(&qword_10003C950, &qword_10002F7A8);
  v10 = *(type metadata accessor for DeviceActivityDeviceAppEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DeviceActivityDeviceAppEntity() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B240(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100020868(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100001A7C(&qword_10003C940, &unk_10002F790);
  v10 = *(sub_100001A7C(&qword_10003C780, &unk_10002F360) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001A7C(&qword_10003C780, &unk_10002F360) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B374(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100020A34(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_10001B354((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_10002DE10() & 1;
  }
}

BOOL sub_100020B78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_100020D14()
{
  result = qword_10003C828;
  if (!qword_10003C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C828);
  }

  return result;
}

unint64_t sub_100020E54()
{
  result = qword_10003C848;
  if (!qword_10003C848)
  {
    sub_100002A98(&qword_10003C850, &qword_10002F528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C848);
  }

  return result;
}

unint64_t sub_100020EF0()
{
  result = qword_10003C860;
  if (!qword_10003C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C860);
  }

  return result;
}

unint64_t sub_100020F48()
{
  result = qword_10003C868;
  if (!qword_10003C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C868);
  }

  return result;
}

uint64_t sub_100020FD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceActivityDeviceAppEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100021018()
{
  result = qword_10003C870;
  if (!qword_10003C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C870);
  }

  return result;
}

unint64_t sub_100021070()
{
  result = qword_10003C878;
  if (!qword_10003C878)
  {
    sub_100002A98(&qword_10003C728, &qword_10002F310);
    sub_100020FD0(&qword_10003C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C878);
  }

  return result;
}

uint64_t sub_100021124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002D930();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10002DB90();
      v10 = *(a3 + 24);
    }

    return sub_1000040D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_100021204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10002D930();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10002DB90();
      v10 = *(a4 + 24);
    }

    return sub_100001AC4(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_1000212CC()
{
  sub_10002D930();
  if (v0 <= 0x3F)
  {
    sub_10002DB90();
    if (v1 <= 0x3F)
    {
      sub_1000213D8(319, &qword_10003C428, sub_1000069D0);
      if (v2 <= 0x3F)
      {
        sub_1000213D8(319, &qword_10003C8E8, sub_100021438);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000213D8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_10002D330();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100021438()
{
  result = qword_10003C8F0;
  if (!qword_10003C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8F0);
  }

  return result;
}

uint64_t sub_10002149C()
{
  v1 = sub_100021548();
  v3 = v2(v1);
  sub_100006D2C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_100021508()
{

  return swift_once();
}

uint64_t sub_10002156C()
{
  v0 = sub_10002D740();
  sub_100004480(v0, static FindSportsEvents.title);
  sub_100004448(v0, static FindSportsEvents.title);
  return sub_10002D730();
}

uint64_t FindSportsEvents.title.unsafeMutableAddressor()
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054();
  }

  v0 = sub_10002D740();

  return sub_100004448(v0, static FindSportsEvents.title);
}

uint64_t static FindSportsEvents.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054();
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, static FindSportsEvents.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static FindSportsEvents.title.setter(uint64_t a1)
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054();
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, static FindSportsEvents.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static FindSportsEvents.title.modify())()
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054();
  }

  v0 = sub_10002D740();
  sub_100004448(v0, static FindSportsEvents.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static FindSportsEvents.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static FindSportsEvents.isDiscoverable = a1;
  return result;
}

uint64_t FindSportsEvents.init()()
{
  v0 = sub_10002D5C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002C9C();
  v5 = v4 - v3;
  v6 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v7 = sub_100002CD8(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  v15 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v16 = sub_100002CD8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_10002D740();
  v22 = sub_100006D2C(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C120, &qword_10002E450);
  sub_10002D730();
  sub_100002CE4(v20);
  sub_10002D1F0();
  memset(v26, 0, sizeof(v26));
  sub_100002CE4(v14);
  sub_100002CE4(v12);
  (*(v1 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100002310();
  return sub_10002D3B0();
}

uint64_t static FindSportsEvents.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v3 = sub_100002CD8(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10002D740();
  v12 = sub_100006D2C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v10, 1, 1, v11);
  sub_10002D730();
  sub_100001AC4(v8, 0, 1, v11);
  sub_10002D420();
  v15 = sub_10002D410();
  return sub_100001AC4(a1, 0, 1, v15);
}

uint64_t static FindSportsEvents.parameterSummary.getter()
{
  v0 = sub_100001A7C(&qword_10003C960, &qword_10002F7C8);
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = sub_100001A7C(&qword_10003C968, &qword_10002F7D0);
  v5 = sub_100006D2C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100021EA4();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C978, &qword_10002F800);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  return sub_10002D560();
}

unint64_t sub_100021EA4()
{
  result = qword_10003C970;
  if (!qword_10003C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C970);
  }

  return result;
}

uint64_t sub_100021F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = FindSportsEvents.$sportsTeamAppEntity.getter();
  *a2 = result;
  return result;
}

uint64_t FindSportsEvents.sportsTeamAppEntity.setter()
{

  sub_10002D370();
}

void (*FindSportsEvents.sportsTeamAppEntity.modify(void *a1))(void *a1)
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D350();
  return sub_10001EF38;
}

uint64_t FindSportsEvents.perform()(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_10002D8D0();
  v2[35] = v3;
  sub_10000C028(v3);
  v2[36] = v4;
  v6 = *(v5 + 64);
  v2[37] = sub_10000C3DC();
  v7 = sub_10002D9F0();
  v2[38] = v7;
  sub_10000C028(v7);
  v2[39] = v8;
  v10 = *(v9 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v11 = sub_10002DA50();
  v2[42] = v11;
  sub_10000C028(v11);
  v2[43] = v12;
  v14 = *(v13 + 64);
  v2[44] = sub_10000C3DC();
  v15 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  sub_100002CD8(v15);
  v17 = *(v16 + 64);
  v2[45] = sub_10000C3DC();
  v18 = sub_10002D990();
  v2[46] = v18;
  sub_10000C028(v18);
  v2[47] = v19;
  v21 = *(v20 + 64);
  v2[48] = sub_10000C3DC();
  v22 = sub_10002D8C0();
  v2[49] = v22;
  sub_10000C028(v22);
  v2[50] = v23;
  v25 = *(v24 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000222B4, 0, 0);
}

uint64_t sub_1000222B4()
{
  v94 = v0;
  v1 = v0[53];
  v2 = v0[34];
  sub_10002D880();

  v3 = sub_10002D8B0();
  v4 = sub_10002DD10();

  if (os_log_type_enabled(v3, v4))
  {
    v83 = v0[50];
    v86 = v0[49];
    v89 = v0[53];
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v6 = 136643075;
    sub_10002D360();
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[21];
    v10 = v0[22];
    sub_10002D270();

    v11 = sub_1000237CC(v0[27], v0[28], v93);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2085;
    sub_10002D360();
    v12 = v0[23];
    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[26];
    sub_10002D270();

    v16 = sub_1000237CC(v0[29], v0[30], v93);

    *(v6 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "SportsEventsAppIntent selected team: [%{sensitive}s, %{sensitive}s]", v6, 0x16u);
    swift_arrayDestroy();
    sub_10001E144();
    sub_10001E144();

    v17 = *(v83 + 8);
    v17(v89, v86);
  }

  else
  {
    v18 = v0[53];
    v19 = v0[49];
    v20 = v0[50];

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v22 = v0[45];
  v21 = v0[46];
  v23 = v0[34];
  sub_10002D360();
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[13];
  v27 = v0[14];
  sub_100022C58();

  if (sub_1000040D4(v22, 1, v21) == 1)
  {
    v28 = v0[52];
    v29 = v0[34];
    sub_100006BA4(v0[45], &qword_10003C980, &qword_10002F810);
    sub_10002D880();

    v30 = sub_10002D8B0();
    v31 = sub_10002DD20();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[52];
    v34 = v0[49];
    v35 = v0[50];
    if (v32)
    {
      v90 = v0[52];
      v36 = v0[34];
      v37 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v93[0] = v81;
      *v37 = 136642819;
      sub_10002D360();
      v84 = v34;
      v87 = v17;
      v38 = v0[15];
      v39 = v0[16];
      v41 = v0[17];
      v40 = v0[18];
      v42 = sub_100022E94();
      v44 = v43;

      v45 = sub_1000237CC(v42, v44, v93);

      *(v37 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v31, "SportsEventsAppIntent: failed to convert SportsTeamAppEntity entity to SportsTeam: %{sensitive}s", v37, 0xCu);
      sub_10001C6CC(v81);
      sub_10001E144();
      sub_10001E144();

      v87(v90, v84);
    }

    else
    {

      v17(v33, v34);
    }

    sub_10002D130();
    sub_100023890(&qword_10003C988, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10002D120();
    swift_willThrow();
    v63 = v0[52];
    v62 = v0[53];
    v64 = v0[51];
    v65 = v0[48];
    v67 = v0[44];
    v66 = v0[45];
    v69 = v0[40];
    v68 = v0[41];
    v70 = v0[37];

    v71 = v0[1];
  }

  else
  {
    v46 = v0[44];
    (*(v0[47] + 32))(v0[48], v0[45], v0[46]);
    sub_10002DA40();
    v47 = sub_10002DA30();
    (*(v0[43] + 8))(v0[44], v0[42]);
    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = v0[39];
      v52 = *(v49 + 16);
      v50 = v49 + 16;
      v51 = v52;
      v53 = *(v50 + 64);
      sub_10002418C();
      v55 = v47 + v54;
      v91 = *(v50 + 56);
      v56 = _swiftEmptyArrayStorage;
      do
      {
        v58 = v0[40];
        v57 = v0[41];
        v59 = v0[38];
        v51(v57, v55, v59);
        v51(v58, v57, v59);
        SportsEventAppEntity.init(sportsEvent:)();
        (*(v50 - 8))(v57, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_100023254(0, *(v56 + 2) + 1, 1, v56);
        }

        v61 = *(v56 + 2);
        v60 = *(v56 + 3);
        if (v61 >= v60 >> 1)
        {
          v56 = sub_100023254((v60 > 1), v61 + 1, 1, v56);
        }

        *(v56 + 2) = v61 + 1;
        memcpy(&v56[72 * v61 + 32], v0 + 2, 0x48uLL);
        v55 += v91;
        --v48;
      }

      while (v48);
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
    }

    v74 = v0[52];
    v73 = v0[53];
    v75 = v0[51];
    v76 = v0[47];
    v77 = v0[48];
    v78 = v0[46];
    v80 = v0[45];
    v82 = v0[44];
    v85 = v0[41];
    v88 = v0[40];
    v92 = v0[37];
    v79 = v0[33];
    v0[32] = v56;
    sub_100001A7C(&qword_10003C998, &unk_10002F828);
    sub_100023D84();
    sub_10002D250();
    (*(v76 + 8))(v77, v78);

    v71 = v0[1];
  }

  return v71();
}

uint64_t sub_100022C58()
{
  sub_10002D270();
  sub_10002D270();
  sub_10002D270();
  sub_10002D270();
  return sub_10002D950();
}

uint64_t sub_100022D0C@<X0>(uint64_t a1@<X8>)
{
  Sports = FindSportsEvents.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D740();
  return (*(*(v3 - 8) + 16))(a1, Sports, v3);
}

uint64_t sub_100022D90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003EBC;

  return FindSportsEvents.perform()(a1, v4);
}

uint64_t sub_100022E30@<X0>(uint64_t *a1@<X8>)
{
  result = FindSportsEvents.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100022E58(uint64_t a1)
{
  v2 = sub_100021EA4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100022E94()
{
  sub_10002D270();
  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  sub_10002DC90(v3);
  sub_10002D270();
  sub_10002DC90(v1);

  return v2;
}

void sub_100022F08()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C9E0, &qword_10002F978, type metadata accessor for AppUsageResultEntity);
  v7 = *(*(type metadata accessor for AppUsageResultEntity() - 8) + 80);
  sub_10002418C();
  if (v1)
  {
    v9 = sub_100024110(v8);
    sub_10001B1F4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

void sub_100022FE4()
{
  sub_100024140();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1000240A4();
  if (v7 == v8)
  {
LABEL_7:
    sub_100024094(v6);
    if (v3)
    {
      sub_100001A7C(&qword_10003C750, &qword_10002F328);
      v9 = sub_100024174();
      sub_10002414C(v9);
      sub_1000240B4(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_100024074();
        sub_10001B20C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_100024168();
  if (!v7)
  {
    sub_100024084();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10002309C()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C950, &qword_10002F7A8, type metadata accessor for DeviceActivityDeviceAppEntity);
  v7 = *(*(type metadata accessor for DeviceActivityDeviceAppEntity() - 8) + 80);
  sub_10002418C();
  if (v1)
  {
    v9 = sub_100024110(v8);
    sub_10001B240(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

void sub_100023178()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C758, &qword_10002F330, &type metadata accessor for Device);
  v7 = *(*(sub_10002DB90() - 8) + 80);
  sub_10002418C();
  if (v1)
  {
    v9 = sub_100024110(v8);
    sub_10001B258(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

char *sub_100023254(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003CA08, &qword_10002F9A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_10001B32C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10002335C()
{
  sub_100024140();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1000240A4();
  if (v6 == v7)
  {
LABEL_7:
    sub_100024094(v5);
    if (v2)
    {
      sub_100001A7C(&qword_10003C938, &qword_10002F970);
      v8 = sub_100024174();
      sub_10002414C(v8);
      sub_1000240B4(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_100024074();
        sub_10001B20C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1000240E4();
    goto LABEL_12;
  }

  sub_100024168();
  if (!v6)
  {
    sub_100024084();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100023410()
{
  sub_100024140();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1000240A4();
  if (v6 == v7)
  {
LABEL_7:
    sub_100024094(v5);
    if (v2)
    {
      sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
      v8 = sub_100024174();
      sub_10002414C(v8);
      sub_1000240B4(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_100024074();
        sub_10001B354(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1000240E4();
    goto LABEL_12;
  }

  sub_100024168();
  if (!v6)
  {
    sub_100024084();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000234C4()
{
  sub_100024140();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1000240A4();
  if (v6 == v7)
  {
LABEL_7:
    sub_100024094(v5);
    if (v2)
    {
      sub_100001A7C(&qword_10003C9F8, &qword_10002F990);
      v8 = sub_100024174();
      sub_10002414C(v8);
      sub_1000240B4(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_100024074();
        sub_10001B354(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100001A7C(&qword_10003CA00, &unk_10002F998);
    sub_1000240E4();
    goto LABEL_12;
  }

  sub_100024168();
  if (!v6)
  {
    sub_100024084();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100023588()
{
  sub_100024140();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1000240A4();
  if (v7 == v8)
  {
LABEL_7:
    sub_100024094(v6);
    if (v3)
    {
      sub_100001A7C(&qword_10003C9E8, &qword_10002F980);
      v9 = swift_allocObject();
      sub_10002414C(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 24);
      if (v1)
      {
LABEL_9:
        v11 = sub_100024074();
        sub_10001B458(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100001A7C(&qword_10003C9F0, &qword_10002F988);
    sub_1000240E4();
    goto LABEL_12;
  }

  sub_100024168();
  if (!v7)
  {
    sub_100024084();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_100023664(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10003C938, &qword_10002F970);
  v4 = sub_100024174();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_1000236D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001A7C(a3, a4);
  v8 = a5(0);
  sub_10000C028(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000237CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000238D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100023FF4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10001C6CC(v11);
  return v7;
}

uint64_t sub_100023890(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000238D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000239D8(a5, a6);
    *a1 = v9;
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
    result = sub_10002DDB0();
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

char *sub_1000239D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100023A24(a1, a2);
  sub_100023B3C(&off_100039A30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100023A24(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10002DCA0())
  {
    result = sub_100023C20(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10002DDA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10002DDB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100023B3C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100023C90(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100023C20(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10003CA10, &unk_10002F9B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100023C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10003CA10, &unk_10002F9B0);
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

unint64_t sub_100023D84()
{
  result = qword_10003C9A0;
  if (!qword_10003C9A0)
  {
    sub_100002A98(&qword_10003C998, &unk_10002F828);
    sub_100023E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9A0);
  }

  return result;
}

unint64_t sub_100023E08()
{
  result = qword_10003C9A8;
  if (!qword_10003C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9A8);
  }

  return result;
}

unint64_t sub_100023E60()
{
  result = qword_10003C9B0;
  if (!qword_10003C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9B0);
  }

  return result;
}

unint64_t sub_100023EB8()
{
  result = qword_10003C9B8;
  if (!qword_10003C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9B8);
  }

  return result;
}

uint64_t sub_100023FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100024054()
{

  return swift_once();
}

void sub_100024094(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1000240C4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000240E4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100024174()
{

  return swift_allocObject();
}

uint64_t sub_100024198(uint64_t a1)
{
  v2 = sub_1000242E8();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100024240();
  sub_10002D870();
  return 0;
}

unint64_t sub_100024240()
{
  result = qword_10003CA18;
  if (!qword_10003CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA18);
  }

  return result;
}

unint64_t sub_1000242E8()
{
  result = qword_10003CA20;
  if (!qword_10003CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA20);
  }

  return result;
}

void SportsEventAppEntity.init(sportsEvent:)()
{
  sub_100026FFC();
  v1 = v0;
  v123 = v2;
  v135 = sub_10002D7E0();
  v3 = sub_100004534(v135);
  v137 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100004560();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v134 = v117 - v11;
  v12 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  v13 = sub_100002CD8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100004560();
  sub_100006D1C();
  __chkstk_darwin(v16);
  sub_100006D1C();
  v18 = __chkstk_darwin(v17);
  v20 = v117 - v19;
  __chkstk_darwin(v18);
  v124 = v117 - v21;
  v22 = sub_10002D990();
  v23 = sub_100004534(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_100004560();
  sub_100006D1C();
  __chkstk_darwin(v28);
  sub_100006D1C();
  __chkstk_darwin(v29);
  v144 = v117 - v30;
  v31 = sub_10002D740();
  v32 = sub_100002CD8(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v35 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  sub_100026E44();
  sub_100026F34();
  v133 = sub_10002D2A0();
  sub_100026E8C();
  sub_100026F34();
  v36 = v25;
  v132 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v131 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v130 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v122 = sub_10002D310();
  v121 = sub_10002D310();
  v120 = sub_10002D9A0();
  v119 = v37;
  v38 = sub_10002D9B0();
  v39 = *(v38 + 16);
  v128 = v36;
  v138 = v1;
  v136 = v35;
  v129 = v9;
  if (v39)
  {
    v118 = v20;
    v41 = *(v36 + 16);
    v40 = v36 + 16;
    v142 = v41;
    v42 = (*(v40 + 64) + 32) & ~*(v40 + 64);
    v117[1] = v38;
    v43 = v38 + v42;
    v140 = *(v40 + 56);
    v141 = v40;
    v139 = (v40 - 8);
    v44 = _swiftEmptyArrayStorage;
    v143 = v22;
    do
    {
      v45 = v144;
      v46 = v142;
      v142(v144, v43, v22);
      v47 = v145;
      v46(v145, v45, v22);
      v48 = SportsTeamAppEntity.init(sportsTeam:)(v47);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      (*v139)(v45, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = v44[2];
        sub_100026ECC();
        sub_100023410();
        v44 = v59;
      }

      v56 = v44[2];
      v55 = v44[3];
      if (v56 >= v55 >> 1)
      {
        sub_100026EA0(v55);
        sub_100023410();
        v44 = v60;
      }

      v44[2] = v56 + 1;
      v57 = &v44[4 * v56];
      v57[4] = v48;
      v57[5] = v50;
      v57[6] = v52;
      v57[7] = v54;
      v43 += v140;
      --v39;
      v22 = v143;
    }

    while (v39);

    v9 = v129;
    v61 = v128;
    v20 = v118;
  }

  else
  {
    v61 = v36;

    v44 = _swiftEmptyArrayStorage;
  }

  v148 = v44;
  sub_10002D280();
  v62 = v124;
  sub_10002D9D0();
  sub_1000267A8(v62, v20);
  v63 = sub_1000040D4(v20, 1, v22);
  v64 = v127;
  if (v63 == 1)
  {
    sub_100026818(v62);
    v65 = v22;
    sub_100026F88();
  }

  else
  {
    v66 = v145;
    (*(v61 + 32))(v145, v20, v22);
    v67 = v62;
    v62 = v125;
    (*(v61 + 16))(v125, v66, v22);
    SportsTeamAppEntity.init(sportsTeam:)(v62);
    v65 = v22;
    sub_100026F4C();
    (*(v68 + 8))(v66, v22);
    sub_100026818(v67);
  }

  v148 = v22;
  v149 = v62;
  v150 = v61;
  v151 = v44;
  v69 = sub_100026E18();
  sub_100026880(v69);
  sub_10002D280();
  v70 = sub_100026E18();
  sub_1000268E0(v70);
  sub_10002D9C0();
  v71 = v126;
  sub_1000267A8(v64, v126);
  if (sub_1000040D4(v71, 1, v65) == 1)
  {
    sub_100026818(v64);
    sub_100026F88();
  }

  else
  {
    v72 = v128;
    v73 = v145;
    (*(v128 + 32))(v145, v71, v65);
    v74 = v125;
    (*(v72 + 16))(v125, v73, v65);
    SportsTeamAppEntity.init(sportsTeam:)(v74);
    sub_100026F4C();
    v9 = v129;
    (*(v72 + 8))(v73, v65);
    sub_100026818(v64);
  }

  v148 = v22;
  v149 = v62;
  v150 = v61;
  v151 = v44;
  v75 = sub_100026E18();
  sub_100026880(v75);
  sub_10002D280();
  v76 = sub_100026E18();
  sub_1000268E0(v76);
  v77 = v134;
  sub_10002D9E0();
  v78 = v137;
  v79 = *(v137 + 16);
  v80 = v135;
  v79(v9, v77, v135);
  sub_10002D280();
  v81 = *(v78 + 8);
  v82 = sub_100026FC4();
  v81(v82);
  sub_10002D270();
  sub_10002D7A0();
  (v81)(v9, v80);
  v79(v9, v77, v80);
  sub_10002D280();
  v83 = sub_100026FC4();
  v137 = v78 + 8;
  v81(v83);
  sub_10002D270();
  v84 = 0;
  v85 = v148;
  v86 = v148[2];
  v87 = v148 + 7;
  v88 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v86 == v84)
    {

      v148 = v88;
      sub_100001A7C(&qword_10003CA28, &qword_10002FA78);
      sub_100026E5C();
      sub_100003CE8(v101, v102, &qword_10002FA78);
      sub_100026F04();
      v103 = sub_10002DBE0();
      v105 = v104;

      v148 = v103;
      v149 = v105;
      v106 = v122;
      sub_10002D280();
      sub_10002D270();
      sub_100026EDC();
      v107 = [objc_allocWithZone(NSDateFormatter) init];
      [v107 setDateStyle:2];
      [v107 setTimeStyle:1];
      v108 = v134;
      v109 = v131;
      sub_10002D270();
      isa = sub_10002D7B0().super.isa;
      (v81)(v108, v135);
      v111 = [v107 stringFromDate:isa];

      v112 = sub_10002DC20();
      v114 = v113;

      v157._countAndFlagsBits = v112;
      v157._object = v114;
      sub_10002DC90(v157);

      v115 = v121;
      sub_10002D280();
      v116 = sub_10002D9F0();
      (*(*(v116 - 8) + 8))(v138, v116);
      v147[0] = v120;
      v147[1] = v119;
      v147[2] = v136;
      v147[3] = v133;
      v147[4] = v132;
      v147[5] = v109;
      v147[6] = v130;
      v147[7] = v106;
      v147[8] = v115;
      v148 = v120;
      v149 = v119;
      v150 = v136;
      v151 = v133;
      v152 = v132;
      v153 = v109;
      v154 = v130;
      v155 = v106;
      v156 = v115;
      sub_100026940(v147, &v146);
      sub_100026978(&v148);
      memcpy(v123, v147, 0x48uLL);
      sub_100026FE4();
      return;
    }

    if (v84 >= v85[2])
    {
      break;
    }

    v90 = *(v87 - 1);
    v89 = *v87;
    v92 = *(v87 - 3);
    v91 = *(v87 - 2);

    sub_10002D270();

    v93 = v148;
    v94 = v149;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = v88[2];
      sub_100026ECC();
      sub_10002335C();
      v88 = v99;
    }

    v96 = v88[2];
    v95 = v88[3];
    if (v96 >= v95 >> 1)
    {
      sub_100026EA0(v95);
      sub_10002335C();
      v88 = v100;
    }

    v88[2] = v96 + 1;
    v97 = &v88[2 * v96];
    v97[4] = v93;
    v97[5] = v94;
    v87 += 4;
    ++v84;
  }

  __break(1u);
}

uint64_t sub_100024EB0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10002D740();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10002D620();
  sub_100004480(v6, static SportsEventAppEntity.typeDisplayRepresentation);
  sub_100004448(v6, static SportsEventAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t SportsEventAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8();
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static SportsEventAppEntity.typeDisplayRepresentation);
}

uint64_t static SportsEventAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SportsEventAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SportsEventAppEntity.typeDisplayRepresentation.modify())()
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8();
  }

  v0 = sub_10002D620();
  sub_100004448(v0, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SportsEventAppEntity.teams.getter()
{
  v1 = *(v0 + 16);
  sub_10002D270();
  return v3;
}

uint64_t (*SportsEventAppEntity.teams.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.homeTeam.getter()
{
  v1 = *(v0 + 24);
  sub_10002D270();
  return v3;
}

uint64_t SportsEventAppEntity.homeTeam.setter()
{
  sub_100026FB0();
  v1 = *(v0 + 24);
  sub_100026880(v2);
  sub_10002D280();
  v3 = sub_100026FC4();
  return sub_1000268E0(v3);
}

uint64_t (*SportsEventAppEntity.homeTeam.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.awayTeam.getter()
{
  v1 = *(v0 + 32);
  sub_10002D270();
  return v3;
}

uint64_t SportsEventAppEntity.awayTeam.setter()
{
  sub_100026FB0();
  v1 = *(v0 + 32);
  sub_100026880(v2);
  sub_10002D280();
  v3 = sub_100026FC4();
  return sub_1000268E0(v3);
}

uint64_t (*SportsEventAppEntity.awayTeam.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.startTime.setter(uint64_t a1)
{
  v3 = sub_10002D7E0();
  v4 = sub_100004534(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v9 = *(v1 + 40);
  v10 = sub_100026F1C();
  v11(v10);
  sub_10002D280();
  return (*(v6 + 8))(a1, v3);
}

uint64_t (*SportsEventAppEntity.startTime.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.endTime.setter(uint64_t a1)
{
  v3 = sub_10002D7E0();
  v4 = sub_100004534(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v9 = *(v1 + 48);
  v10 = sub_100026F1C();
  v11(v10);
  sub_10002D280();
  return (*(v6 + 8))(a1, v3);
}

uint64_t (*SportsEventAppEntity.endTime.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.title.getter()
{
  v1 = *(v0 + 56);
  sub_10002D270();
  return v3;
}

uint64_t (*SportsEventAppEntity.title.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.description.getter()
{
  v1 = *(v0 + 64);
  sub_10002D270();
  return v3;
}

uint64_t (*SportsEventAppEntity.description.modify())()
{
  v2 = sub_100026EC0();
  v3 = sub_10001EE94(v2);
  sub_100026EB4(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = sub_10002D260();
  return sub_10001EF34;
}

uint64_t SportsEventAppEntity.displayRepresentation.getter()
{
  v1 = *(v0 + 64);
  sub_10002D270();
  return sub_10002D4A0();
}

void SportsEventAppEntity.init()()
{
  sub_100026FFC();
  v28 = v0;
  v1 = sub_10002D7E0();
  v2 = sub_100004534(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100004560();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_10002D740();
  v14 = sub_100002CD8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v23 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  sub_100026E44();
  sub_100026F34();
  v27 = sub_10002D2A0();
  sub_100026E8C();
  sub_100026F34();
  v26 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v22 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v25 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v24 = sub_10002D310();
  v17 = sub_10002D310();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10002D280();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10002D280();
  v31 = _swiftEmptyArrayStorage;
  sub_10002D280();
  sub_10002D7D0();
  v18 = *(v4 + 16);
  v18(v9, v12, v1);
  sub_10002D280();
  v19 = *(v4 + 8);
  v19(v12, v1);
  sub_10002D7D0();
  v18(v9, v12, v1);
  v20 = v25;
  sub_10002D280();
  v19(v12, v1);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v30[2] = v23;
  v30[3] = v27;
  v30[4] = v26;
  v30[5] = v22;
  v30[6] = v20;
  v30[7] = v24;
  v30[8] = v17;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = v23;
  v34 = v27;
  v35 = v26;
  v36 = v22;
  v37 = v20;
  v38 = v24;
  v39 = v17;
  sub_100026940(v30, &v29);
  sub_100026978(&v31);
  memcpy(v28, v30, 0x48uLL);
  sub_100026FE4();
}

void SportsEventAppEntity.init(id:name:teams:homeTeam:awayTeam:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100026FFC();
  v118 = v26;
  v117 = v27;
  v115 = v28;
  v108 = v29;
  v105 = v30;
  v104 = v31;
  v106 = v32;
  v116 = a26;
  v114 = a25;
  v112 = a24;
  v111 = a23;
  v109 = a22;
  v113 = a21;
  v110 = sub_10002D7E0();
  v33 = sub_100004534(v110);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_100004560();
  v40 = (v38 - v39);
  __chkstk_darwin(v41);
  v43 = &v97 - v42;
  v44 = sub_10002D740();
  v45 = sub_100002CD8(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_100002C9C();

  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v107 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  sub_100026E44();
  sub_100026F34();
  v48 = sub_10002D2A0();
  sub_100026E8C();
  sub_100026F34();
  v49 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v50 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v51 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v99 = sub_10002D310();
  v98 = sub_10002D310();
  v121 = v108;
  sub_10002D280();
  v121 = sub_100026F9C();
  v122 = v52;
  sub_100026F74();
  v123 = v53;
  v124 = v54;
  sub_100026880(v55);
  v103 = v48;
  sub_10002D280();
  v121 = sub_100026FD0();
  v122 = v56;
  sub_100026F60();
  v123 = v57;
  v124 = v58;
  v59 = v110;
  sub_100026880(v60);
  v102 = v49;
  sub_10002D280();
  v61 = *(v35 + 16);
  v61(v43, v116, v59);
  v61(v40, v43, v59);
  v101 = v50;
  sub_10002D280();
  v62 = *(v35 + 8);
  v62(v43, v59);
  sub_10002D7A0();
  v61(v40, v43, v59);
  v100 = v51;
  sub_10002D280();
  v108 = v35 + 8;
  v97 = v62;
  v62(v43, v59);
  v63 = v107;
  sub_10002D270();
  v64 = 0;
  v65 = v121;
  v66 = *(v121 + 16);
  v67 = (v121 + 56);
  v68 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v66 == v64)
    {

      v121 = v68;
      sub_100001A7C(&qword_10003CA28, &qword_10002FA78);
      sub_100026E5C();
      sub_100003CE8(v81, v82, &qword_10002FA78);
      sub_100026F04();
      v83 = sub_10002DBE0();
      v85 = v84;

      v121 = v83;
      v122 = v85;
      v86 = v99;
      sub_10002D280();
      sub_10002D270();
      sub_100026EDC();
      v87 = [objc_allocWithZone(NSDateFormatter) init];
      [v87 setDateStyle:2];
      [v87 setTimeStyle:1];
      v88 = v116;
      isa = sub_10002D7B0().super.isa;
      v90 = [v87 stringFromDate:isa];

      v91 = sub_10002DC20();
      v93 = v92;

      v130._countAndFlagsBits = v91;
      v130._object = v93;
      sub_10002DC90(v130);

      v94 = v98;
      sub_10002D280();
      sub_100026FD0();
      sub_100026F60();
      sub_1000268E0(v95);
      sub_100026F9C();
      sub_100026F74();
      sub_1000268E0(v96);
      v97(v88, v110);
      v120[0] = v104;
      v120[1] = v105;
      v120[2] = v63;
      v120[3] = v103;
      v120[4] = v102;
      v120[5] = v101;
      v120[6] = v100;
      v120[7] = v86;
      v120[8] = v94;
      v121 = v104;
      v122 = v105;
      v123 = v63;
      v124 = v103;
      v125 = v102;
      v126 = v101;
      v127 = v100;
      v128 = v86;
      v129 = v94;
      sub_100026940(v120, &v119);
      sub_100026978(&v121);
      memcpy(v106, v120, 0x48uLL);
      sub_100026FE4();
      return;
    }

    if (v64 >= *(v65 + 16))
    {
      break;
    }

    v70 = *(v67 - 1);
    v69 = *v67;
    v72 = *(v67 - 3);
    v71 = *(v67 - 2);

    sub_10002D270();

    v73 = v121;
    v74 = v122;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = v68[2];
      sub_100026ECC();
      sub_10002335C();
      v68 = v79;
    }

    v76 = v68[2];
    v75 = v68[3];
    if (v76 >= v75 >> 1)
    {
      sub_100026EA0(v75);
      sub_10002335C();
      v68 = v80;
    }

    v68[2] = v76 + 1;
    v77 = &v68[2 * v76];
    v77[4] = v73;
    v77[5] = v74;
    v67 += 4;
    ++v64;
  }

  __break(1u);
}

uint64_t sub_1000265B8(uint64_t a1)
{
  v2 = sub_100026D9C();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100026604@<X0>(uint64_t a1@<X8>)
{
  v2 = SportsEventAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_100026680(uint64_t a1)
{
  v2 = sub_1000269AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000266D0(uint64_t a1)
{
  v2 = sub_100026C04();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_10002671C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_100023410();
    *v0 = v4;
  }
}

void sub_100026768(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_100023410();
    *v1 = v2;
  }
}

uint64_t sub_1000267A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026818(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100026880(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000268E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000269AC()
{
  result = qword_10003CA38;
  if (!qword_10003CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA38);
  }

  return result;
}

unint64_t sub_100026A04()
{
  result = qword_10003CA40;
  if (!qword_10003CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA40);
  }

  return result;
}

unint64_t sub_100026A5C()
{
  result = qword_10003CA48;
  if (!qword_10003CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA48);
  }

  return result;
}

unint64_t sub_100026AB4()
{
  result = qword_10003CA50;
  if (!qword_10003CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA50);
  }

  return result;
}

unint64_t sub_100026B50()
{
  result = qword_10003CA68;
  if (!qword_10003CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA68);
  }

  return result;
}

unint64_t sub_100026BA8()
{
  result = qword_10003CA70;
  if (!qword_10003CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA70);
  }

  return result;
}

unint64_t sub_100026C04()
{
  result = qword_10003CA78;
  if (!qword_10003CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA78);
  }

  return result;
}

unint64_t sub_100026CA0()
{
  result = qword_10003CA90;
  if (!qword_10003CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA90);
  }

  return result;
}

uint64_t sub_100026CFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100026D9C()
{
  result = qword_10003CA98;
  if (!qword_10003CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA98);
  }

  return result;
}

uint64_t sub_100026DF8()
{

  return swift_once();
}

void sub_100026EDC()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;
  v3._countAndFlagsBits = 2113568;
  v3._object = 0xE300000000000000;

  sub_10002DC90(v3);
}

uint64_t sub_100026F34()
{

  return sub_10002D730();
}

uint64_t sub_100026F9C()
{
  result = *(v0 - 336);
  v2 = *(v0 - 320);
  return result;
}

uint64_t sub_100026FD0()
{
  result = *(v0 - 384);
  v2 = *(v0 - 368);
  return result;
}

uint64_t SportsTeamAppEntityProtocol.toSportsTeam()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v3 = *(a2 + 48);
  v4 = sub_10002A168();
  v5(v4);
  v6 = *(a2 + 72);
  v7 = sub_10002A168();
  v8(v7);
  v9 = *(a2 + 96);
  v10 = sub_10002A168();
  v11(v10);

  return sub_10002D950();
}

uint64_t SportsTeamAppEntity.init(sportsTeam:)(uint64_t a1)
{
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v2 = sub_10002D310();

  sub_10002D310();

  sub_10002D310();

  sub_10002D310();

  sub_10002D960();
  sub_10002A134();
  sub_10002D280();
  sub_10002D970();
  sub_10002A134();
  sub_10002D280();
  sub_10002D980();
  sub_10002A134();
  sub_10002D280();
  sub_10002D940();
  sub_10002A134();
  sub_10002D280();
  v3 = sub_10002D990();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

uint64_t sub_1000272A4()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_10002D740();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10002D270();
  v10 = sub_10002D780();
  v12 = v11;

  sub_10002D270();
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  if (v12 >> 60 == 15)
  {
    v13 = sub_10002D4E0();
    sub_100001AC4(v3, 1, 1, v13);
    return sub_10002D500();
  }

  else
  {
    sub_100027DDC(v10, v12);
    sub_10002D4D0();
    v15 = sub_10002D4E0();
    sub_100001AC4(v3, 0, 1, v15);
    sub_10002D500();
    return sub_10001DC38(v10, v12);
  }
}

uint64_t SportsTeamAppEntityProtocol.displayRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - v7;
  v9 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10002D740();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  (*(a2 + 96))(a1, a2);
  v13 = sub_10002D780();
  v15 = v14;

  v16 = sub_10002A174();
  v17(v16);
  sub_10002D730();
  sub_10002A188();
  if (v15 >> 60 == 15)
  {
    v18 = sub_10002D4E0();
    sub_100001AC4(v8, 1, 1, v18);
    return sub_10002A1A8();
  }

  else
  {
    sub_100027DDC(v13, v15);
    sub_10002D4D0();
    v20 = sub_10002D4E0();
    sub_100001AC4(v8, 0, 1, v20);
    sub_10002A1A8();
    return sub_10001DC38(v13, v15);
  }
}

uint64_t SportsTeamAppEntityProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 48))();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_10002DC90(v6);
  v7._countAndFlagsBits = (*(a2 + 72))(a1, a2);
  sub_10002DC90(v7);

  return v5;
}

uint64_t sub_1000277AC()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10002D740();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10002D620();
  sub_100004480(v6, static SportsTeamAppEntity.typeDisplayRepresentation);
  sub_100004448(v6, static SportsTeamAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t SportsTeamAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104();
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static SportsTeamAppEntity.typeDisplayRepresentation);
}

uint64_t static SportsTeamAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SportsTeamAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104();
  }

  v2 = sub_10002D620();
  sub_100004448(v2, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = *(v2 - 8);
  v4 = *(v3 + 24);
  v5 = sub_10002A168();
  v6(v5);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static SportsTeamAppEntity.typeDisplayRepresentation.modify())()
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104();
  }

  v0 = sub_10002D620();
  sub_100004448(v0, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*SportsTeamAppEntity.id.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t (*SportsTeamAppEntity.name.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t (*SportsTeamAppEntity.league.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t sub_100027DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t (*SportsTeamAppEntity.imageData.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_10001EF34;
}

uint64_t (*sub_100027EBC(void *a1))()
{
  v3 = sub_10001EE94(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_100027F2C(void *a1))()
{
  v3 = sub_10001EE94(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_100027F9C(void *a1))()
{
  v3 = sub_10001EE94(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 16);
  v3[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_10002800C(void *a1))()
{
  v3 = sub_10001EE94(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 24);
  v3[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t sub_10002806C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = SportsTeamAppEntity.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100028098()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_100022E94();
}

uint64_t sub_1000280A4@<X0>(uint64_t a1@<X8>)
{
  v2 = SportsTeamAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_100028120(uint64_t a1)
{
  v2 = sub_100002310();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10002816C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1000272A4();
}

uint64_t sub_100028178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002A0F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10002823C(uint64_t a1)
{
  v2 = sub_100029DEC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t SportsTeamAppEntityQuery.entities(for:)()
{
  sub_10001DFE4();
  v0[2] = v1;
  v2 = sub_10002DA50();
  v0[3] = v2;
  sub_10000C028(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = *(*(sub_100001A7C(&qword_10003C980, &qword_10002F810) - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v7 = sub_10002D990();
  v0[7] = v7;
  sub_10000C028(v7);
  v0[8] = v8;
  v10 = *(v9 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v11 = sub_10002D8C0();
  v0[11] = v11;
  sub_10000C028(v11);
  v0[12] = v12;
  v14 = *(v13 + 64) + 15;
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_100028428, 0, 0);
}

void sub_100028428()
{
  v73 = v0;
  v1 = v0[13];
  v2 = v0[2];
  sub_10002D880();

  v3 = sub_10002D8B0();
  v4 = sub_10002DD10();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v68 = v0;
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v72 = v11;
    *v10 = 136380675;
    v12 = sub_10002DCD0();
    v14 = sub_1000237CC(v12, v13, &v72);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "SportsEventsAppIntent entities(for teamIds: %{private}s)", v10, 0xCu);
    sub_10001C6CC(v11);
  }

  (*(v7 + 8))(v6, v8);
  v15 = 0;
  v16 = v0[8];
  v17 = v0[2];
  v18 = *(v17 + 16);
  v70 = (v0[4] + 8);
  v66 = (v16 + 16);
  v67 = (v16 + 32);
  v65 = (v16 + 8);
  v19 = v17 + 40;
  v69 = _swiftEmptyArrayStorage;
  v64 = v17 + 40;
LABEL_4:
  v20 = (v19 + 16 * v15);
  while (v18 != v15)
  {
    if (v15 >= v18)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_29;
    }

    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    v24 = v0[3];
    v26 = *(v20 - 1);
    v25 = *v20;

    sub_10002DA40();
    sub_10002DA20();
    (*v70)(v23, v24);
    if (sub_1000040D4(v22, 1, v21) != 1)
    {
      v28 = v0[9];
      v29 = v0[10];
      v30 = v0[7];
      (*v67)(v29, v0[6], v30);
      (*v66)(v28, v29, v30);
      v31 = SportsTeamAppEntity.init(sportsTeam:)(v28);
      v33 = v32;
      v35 = v34;
      v37 = v36;

      (*v65)(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = v69[2];
        sub_1000234C4();
        v69 = v41;
      }

      v19 = v64;
      v38 = v69[2];
      if (v38 >= v69[3] >> 1)
      {
        sub_1000234C4();
        v69 = v42;
      }

      ++v15;
      v69[2] = v38 + 1;
      v39 = &v69[4 * v38];
      v39[4] = v31;
      v39[5] = v33;
      v39[6] = v35;
      v39[7] = v37;
      v0 = v68;
      goto LABEL_4;
    }

    v27 = v0[6];

    sub_100026818(v27);
    ++v15;
    v20 += 2;
  }

  v43 = 0;
  v44 = v69[2];
  v45 = v69 + 4;
  v46 = _swiftEmptyArrayStorage;
LABEL_16:
  v47 = &v45[4 * v43];
  while (v44 != v43)
  {
    if (v43 >= v69[2])
    {
      goto LABEL_30;
    }

    ++v43;
    v48 = v47 + 4;
    v49 = *v47;
    v47 += 4;
    if (v49)
    {
      v50 = *(v48 - 3);
      v51 = *(v48 - 2);
      v52 = *(v48 - 1);

      v71 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = v46[2];
        sub_100023410();
        v46 = v56;
      }

      v53 = v46[2];
      if (v53 >= v46[3] >> 1)
      {
        sub_100023410();
        v46 = v57;
      }

      v46[2] = v53 + 1;
      v54 = &v46[4 * v53];
      v54[4] = v49;
      v54[5] = v50;
      v54[6] = v51;
      v54[7] = v52;
      v0 = v68;
      v45 = v71;
      goto LABEL_16;
    }
  }

  v58 = v0[13];
  v60 = v0[9];
  v59 = v0[10];
  v62 = v0[5];
  v61 = v0[6];

  v63 = v0[1];

  v63(v46);
}

uint64_t SportsTeamAppEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return sub_10002A124();
}

void *sub_1000288FC()
{
  result = sub_100028BBC();
  v2 = 0;
  v31 = -result[2];
  v29 = _swiftEmptyArrayStorage;
  v3 = &type metadata for String;
  v30 = result;
LABEL_2:
  v4 = v2 + 1;
  while (v31 + v4 != 1)
  {
    if ((v4 - 1) >= result[2])
    {
      __break(1u);
      return result;
    }

    v5 = v3;
    v6 = v0[7];
    v7 = v0[8];
    v32 = v4;
    v8 = &result[4 * v4];
    v33 = *v8;
    v34 = v8[1];

    sub_10002D270();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_10002DC70();
    v13 = v12;

    v0[2] = v11;
    v0[3] = v13;
    v3 = v5;
    v0[4] = sub_10002DC70();
    v0[5] = v14;
    sub_100029AAC();
    LOBYTE(v10) = sub_10002A140();

    if (v10)
    {
      goto LABEL_8;
    }

    v16 = v0[7];
    v15 = v0[8];
    sub_10002D270();
    v17 = v0[2];
    v18 = v0[3];
    v19 = sub_10002DC70();
    v21 = v20;

    v0[2] = v19;
    v0[3] = v21;
    v3 = v5;
    sub_10002A168();
    v0[4] = sub_10002DC70();
    v0[5] = v22;
    LOBYTE(v18) = sub_10002A140();

    if (v18)
    {
LABEL_8:
      v23 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000203C8(0, v29[2] + 1, 1);
        v23 = v29;
      }

      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000203C8((v24 > 1), v25 + 1, 1);
        v23 = v29;
      }

      v23[2] = v25 + 1;
      v29 = v23;
      v26 = &v23[4 * v25];
      *(v26 + 2) = v33;
      *(v26 + 3) = v34;
      result = v30;
      v2 = v32;
      goto LABEL_2;
    }

    v4 = v32 + 1;
    result = v30;
  }

  v27 = v0[6];

  sub_100028E90(v29, v27);

  sub_10000C354();

  return v28();
}

void *sub_100028BBC()
{
  v40 = sub_10002D990();
  v0 = *(v40 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v40);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v38 = &v33 - v4;
  v5 = sub_10002DA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DA40();
  v10 = sub_10002DA10();
  (*(v6 + 8))(v9, v5);
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = *(v0 + 16);
    v12 = v0 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v35 = *(v12 + 56);
    v36 = v13;
    v33 = v10;
    v34 = (v12 - 8);
    v15 = _swiftEmptyArrayStorage;
    v37 = v12;
    do
    {
      v16 = v38;
      v17 = v40;
      v18 = v36;
      v36(v38, v14, v40);
      v19 = v39;
      v18(v39, v16, v17);
      v20 = SportsTeamAppEntity.init(sportsTeam:)(v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      (*v34)(v16, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = v15[2];
        sub_100023410();
        v15 = v30;
      }

      v27 = v15[2];
      if (v27 >= v15[3] >> 1)
      {
        sub_100023410();
        v15 = v31;
      }

      v15[2] = v27 + 1;
      v28 = &v15[4 * v27];
      v28[4] = v20;
      v28[5] = v22;
      v28[6] = v24;
      v28[7] = v26;
      v14 += v35;
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v15;
}

void sub_100028E90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a2;
  v47 = sub_10002D740();
  v3 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v54 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100001A7C(&qword_10003C780, &unk_10002F360);
  v55 = *(v53 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v53);
  v7 = v46 - v6;
  v8 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v48 = v46 - v10;
  v11 = _swiftEmptyArrayStorage;
  v52 = *(a1 + 16);
  if (v52)
  {
    v12 = 0;
    v51 = a1 + 32;
    v49 = xmmword_10002F0C0;
    v50 = v7;
    while (2)
    {
      v13 = (v51 + 32 * v12);
      v14 = v13[1];
      v59 = *v13;
      v60 = v14;
      v15 = v11[2];
      v57 = v59;
      v58 = v12 + 1;

      v56 = *(&v59 + 1);

      v16 = 0;
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {
          sub_10002D270();
          v23 = v61;
          v24 = v62;
          sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
          v25 = swift_allocObject();
          v26 = v60;
          v25[1] = v49;
          v25[2] = v59;
          v25[3] = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = v11[2];
            sub_100023588();
            v11 = v35;
          }

          v12 = v58;
          v27 = v11[2];
          if (v27 >= v11[3] >> 1)
          {
            sub_100023588();
            v11 = v36;
          }

          v11[2] = v27 + 1;
          v28 = &v11[3 * v27];
          v28[4] = v23;
          v28[5] = v24;
          v28[6] = v25;
          v7 = v50;
          goto LABEL_22;
        }

        if (i >= v11[2])
        {
          __break(1u);
          goto LABEL_31;
        }

        v19 = v11[v16 + 4];
        v18 = v11[v16 + 5];
        v20 = v11[v16 + 6];

        sub_10002D270();
        if (v19 == v61 && v18 == v62)
        {
          break;
        }

        v22 = sub_10002DE10();

        if (v22)
        {
          goto LABEL_18;
        }

        v16 += 3;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10002A0DC(v11);
        v11 = v33;
      }

      v7 = v50;
      if (i >= v11[2])
      {
        goto LABEL_32;
      }

      sub_10002671C();
      v29 = *(v11[v16 + 6] + 16);
      sub_100026768(v29);
      v30 = v11[v16 + 6];
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 32 * v29;
      v32 = v60;
      *(v31 + 32) = v59;
      *(v31 + 48) = v32;
      v12 = v58;
LABEL_22:
      if (v12 != v52)
      {
        continue;
      }

      break;
    }
  }

  sub_100001AC4(v48, 1, 1, v47);
  v37 = v11[2];
  if (v37)
  {
    v61 = _swiftEmptyArrayStorage;
    sub_1000203A8(0, v37, 0);
    v38 = 0;
    v39 = v61;
    *&v60 = v55 + 32;
    v40 = v11 + 6;
    while (v38 < v11[2])
    {
      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      swift_bridgeObjectRetain_n();

      sub_10002D730();
      sub_100029D94();

      sub_10002D440();

      v61 = v39;
      v45 = v39[2];
      v44 = v39[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000203A8(v44 > 1, v45 + 1, 1);
        v39 = v61;
      }

      ++v38;
      v39[2] = v45 + 1;
      (*(v55 + 32))(v39 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45, v7, v53);
      v40 += 3;
      if (v37 == v38)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_100029D94();
    sub_10002D480();
  }
}

uint64_t sub_100029460()
{
  sub_10001DFE4();
  v1 = *(v0 + 16);
  v2 = sub_100028BBC();
  sub_100028E90(v2, v1);

  sub_10000C354();

  return v3();
}

uint64_t sub_1000294D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100029580;

  return SportsTeamAppEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_100029580()
{
  sub_10001DFE4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10001DF00();
  *v3 = v2;

  sub_10000C354();

  return v4();
}

uint64_t sub_100029664()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002A100;

  return SportsTeamAppEntityQuery.entities(for:)();
}

uint64_t sub_1000296F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002A0F0;

  return SportsTeamAppEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_100029790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100029850;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100029850()
{
  sub_10001DFE4();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_10001DF00();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_100029944(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100029C8C();
  *v6 = v2;
  v6[1] = sub_10002A0F0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100029580;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100029AAC()
{
  result = qword_10003CAA0;
  if (!qword_10003CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA0);
  }

  return result;
}

unint64_t sub_100029B00(uint64_t a1)
{
  *(a1 + 8) = sub_100002310();
  result = sub_100029B30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100029B30()
{
  result = qword_10003CAA8;
  if (!qword_10003CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA8);
  }

  return result;
}

unint64_t sub_100029B88()
{
  result = qword_10003CAB0;
  if (!qword_10003CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB0);
  }

  return result;
}

unint64_t sub_100029BE0()
{
  result = qword_10003CAB8;
  if (!qword_10003CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB8);
  }

  return result;
}

unint64_t sub_100029C38()
{
  result = qword_10003CAC0;
  if (!qword_10003CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC0);
  }

  return result;
}

unint64_t sub_100029C8C()
{
  result = qword_10003CAC8;
  if (!qword_10003CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC8);
  }

  return result;
}

unint64_t sub_100029CE4()
{
  result = qword_10003CAD0;
  if (!qword_10003CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD0);
  }

  return result;
}

unint64_t sub_100029D3C()
{
  result = qword_10003CAD8;
  if (!qword_10003CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD8);
  }

  return result;
}

unint64_t sub_100029D94()
{
  result = qword_10003CAE0;
  if (!qword_10003CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAE0);
  }

  return result;
}

unint64_t sub_100029DEC()
{
  result = qword_10003CAE8;
  if (!qword_10003CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAE8);
  }

  return result;
}

unint64_t sub_100029E88()
{
  result = qword_10003CB00;
  if (!qword_10003CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB00);
  }

  return result;
}

unint64_t sub_100029EE4()
{
  result = qword_10003CB08;
  if (!qword_10003CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB08);
  }

  return result;
}

unint64_t sub_100029F3C()
{
  result = qword_10003CB10;
  if (!qword_10003CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB10);
  }

  return result;
}

unint64_t sub_100029F98()
{
  result = qword_10003CB18;
  if (!qword_10003CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB18);
  }

  return result;
}

__n128 sub_10002A030(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002A03C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002A07C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002A104()
{

  return swift_once();
}

uint64_t sub_10002A140()
{

  return StringProtocol.contains<A>(_:)(v0 + 32, v1, v1, v2, v2);
}

uint64_t sub_10002A188()
{

  return sub_100001AC4(v0, 1, 1, v1);
}

uint64_t sub_10002A1A8()
{
  v2 = *(v0 - 88);

  return sub_10002D500();
}

uint64_t sub_10002A1C8(uint64_t a1)
{
  *v1 = a1;

  return sub_10002D260();
}

uint64_t sub_10002A1E0(unsigned __int8 a1, char a2)
{
  v2 = 0x7961646F74;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7961646F74;
  switch(v4)
  {
    case 1:
      v5 = 0x6164726574736579;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = 1936287860;
      goto LABEL_6;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 1953718636;
LABEL_6:
      v5 = v6 | 0x6B65655700000000;
      break;
    case 4:
      v5 = 0x746E6F4D73696874;
      v3 = 0xE900000000000068;
      break;
    case 5:
      v5 = 0x6569666963657073;
      v3 = 0xEC00000079614464;
      break;
    case 6:
      v5 = 0x6565777465426E69;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6164726574736579;
      v7 = 0xE900000000000079;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 1936287860;
      goto LABEL_14;
    case 3:
      v7 = 0xE800000000000000;
      v8 = 1953718636;
LABEL_14:
      v2 = v8 | 0x6B65655700000000;
      break;
    case 4:
      v2 = 0x746E6F4D73696874;
      v7 = 0xE900000000000068;
      break;
    case 5:
      v2 = 0x6569666963657073;
      v7 = 0xEC00000079614464;
      break;
    case 6:
      v2 = 0x6565777465426E69;
      v7 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10002DE10();
  }

  return v10 & 1;
}

uint64_t sub_10002A420(char a1, char a2)
{
  v2 = 7105633;
  if (a1)
  {
    sub_10002CA00();
    if (v3)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65746973626577;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7105633;
  }

  if (a2)
  {
    sub_10002CA00();
    if (v7)
    {
      v2 = 7368801;
    }

    else
    {
      v2 = 0x65746973626577;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10002DE10();
  }

  return v11 & 1;
}

Swift::Int sub_10002A50C(char a1)
{
  sub_10002DE40();
  TemporalOptions.rawValue.getter(a1);
  sub_10002DC80();

  return sub_10002DE50();
}

uint64_t sub_10002A570()
{
  sub_10002DC80();
}

uint64_t sub_10002A6A0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10002CA00();
  }

  sub_10002DC80();
}

Swift::Int sub_10002A718(uint64_t a1, char a2)
{
  sub_10002DE40();
  if (a2)
  {
    sub_10002CA00();
  }

  sub_10002DC80();

  return sub_10002DE50();
}

Swift::Int sub_10002A7A4(uint64_t a1, char a2)
{
  sub_10002DE40();
  TemporalOptions.rawValue.getter(a2);
  sub_10002DC80();

  return sub_10002DE50();
}

void sub_10002A804()
{
  sub_100026FFC();
  v39 = v0;
  v2 = v1;
  v3 = sub_10002D850();
  v4 = sub_100004534(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v9 = sub_10002D7E0();
  v10 = sub_100004534(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100004560();
  v16 = __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v38 - v20;
  v38 = v19;
  switch(v2)
  {
    case 0:
      sub_10002D830();
      sub_10002D7F0();
      v22 = *(v6 + 8);
      v23 = sub_10002C960();
      v22(v23);
      sub_10002AB58();
      sub_10002D830();
      sub_10002D7F0();
      v24 = sub_10002C960();
      v22(v24);
      goto LABEL_7;
    case 1:
      sub_10002C9F4();
      sub_10002BD68();
      sub_10002D830();
      sub_10002D7F0();
      v30 = *(v6 + 8);
      v31 = sub_10002C960();
      v30(v31);
      (*(v12 + 8))(v21, v38);
      sub_10002D830();
      sub_10002D7F0();
      v32 = sub_10002C960();
      v30(v32);
      v28 = v39;
      goto LABEL_8;
    case 2:
      sub_10002C9F4();
      sub_10002BF78();
      goto LABEL_6;
    case 3:
      sub_10002C9F4();
      sub_10002D7A0();
      goto LABEL_6;
    case 4:
      sub_10002C9F4();
      sub_10002C284();
LABEL_6:
      sub_10002AB58();
      sub_10002D830();
      sub_10002D7F0();
      v25 = *(v6 + 8);
      v26 = sub_10002C960();
      v27(v26);
LABEL_7:
      (*(v12 + 8))(v18, v38);
      v28 = v39;
LABEL_8:
      sub_10002D6D0();
      v29 = sub_10002D6F0();
      sub_100001AC4(v28, 0, 1, v29);
      sub_100026FE4();
      break;
    default:
      sub_10002D6F0();
      sub_100026FE4();

      sub_100001AC4(v33, v34, v35, v36);
      break;
  }
}

void sub_10002AB58()
{
  sub_100026FFC();
  v3 = v2;
  v4 = sub_10002D840();
  v5 = sub_100004534(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002C9C();
  sub_10002C9D0();
  v10 = sub_10002D850();
  v11 = sub_100004534(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002C9C();
  v18 = v17 - v16;
  v19 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v19);
  v21 = *(v20 + 64);
  sub_10000457C();
  __chkstk_darwin(v22);
  sub_10002C994();
  v23 = sub_10002C9E0();
  v24(v23);
  sub_10002D820();
  (*(v7 + 8))(v0, v4);
  v25 = *(v13 + 8);
  v26 = sub_10002C960();
  v27(v26);
  v28 = sub_10002D7E0();
  sub_10002C96C(v28);
  if (v29)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    sub_10002C950();
    sub_10002C9B4(v31, v32, v33, 28, v34, v35);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v30 + 32))(v3, v1, v18);
    sub_100026FE4();
  }
}

IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional __swiftcall TemporalOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100039A58;
  v5._object = object;
  v3 = sub_10002DDF0(v2, v5);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t TemporalOptions.rawValue.getter(char a1)
{
  result = 0x7961646F74;
  switch(a1)
  {
    case 1:
      result = 0x6164726574736579;
      break;
    case 2:
      v3 = 1936287860;
      goto LABEL_6;
    case 3:
      v3 = 1953718636;
LABEL_6:
      result = v3 | 0x6B65655700000000;
      break;
    case 4:
      result = 0x746E6F4D73696874;
      break;
    case 5:
      result = 0x6569666963657073;
      break;
    case 6:
      result = 0x6565777465426E69;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional sub_10002AED4@<W0>(Swift::String *a1@<X0>, IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional *a2@<X8>)
{
  result.value = TemporalOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10002AF04@<X0>(uint64_t *a1@<X8>)
{
  result = TemporalOptions.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static TemporalOptions.typeDisplayRepresentation.getter()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v0);
  v2 = *(v1 + 64);
  sub_10000457C();
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  v6 = sub_10002D740();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  return sub_10002D610();
}

uint64_t sub_10002B0D0()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v24 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - v6;
  v8 = sub_10002D740();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100001A7C(&qword_10003CBB0, &qword_100030558);
  v10 = (sub_100001A7C(&qword_10003CBB8, &qword_100030560) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  v24[1] = v13;
  *(v13 + 16) = xmmword_100030210;
  v14 = v13 + v12;
  v15 = v10[14];
  *(v13 + v12) = 0;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  v16 = sub_10002D4E0();
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v17 = v10[14];
  *(v14 + v11) = 1;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v18 = v10[14];
  *(v14 + 2 * v11) = 2;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v19 = v10[14];
  *(v14 + 3 * v11) = 3;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v20 = v10[14];
  *(v14 + 4 * v11) = 4;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v21 = v10[14];
  *(v14 + 5 * v11) = 5;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v22 = v10[14];
  *(v14 + 6 * v11) = 6;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  sub_10002D510();
  sub_10002BA2C();
  result = sub_10002DBB0();
  static TemporalOptions.caseDisplayRepresentations = result;
  return result;
}

uint64_t *TemporalOptions.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10003C0F8 != -1)
  {
    sub_10002C930();
  }

  return &static TemporalOptions.caseDisplayRepresentations;
}

uint64_t static TemporalOptions.caseDisplayRepresentations.getter()
{
  if (qword_10003C0F8 != -1)
  {
    sub_10002C930();
  }
}

unint64_t sub_10002B670()
{
  result = qword_10003CB30;
  if (!qword_10003CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB30);
  }

  return result;
}

unint64_t sub_10002B6C8()
{
  result = qword_10003CB38;
  if (!qword_10003CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB38);
  }

  return result;
}

unint64_t sub_10002B720()
{
  result = qword_10003CB40;
  if (!qword_10003CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB40);
  }

  return result;
}

unint64_t sub_10002B778()
{
  result = qword_10003CB48;
  if (!qword_10003CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB48);
  }

  return result;
}

unint64_t sub_10002B7D0()
{
  result = qword_10003CB50;
  if (!qword_10003CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB50);
  }

  return result;
}

unint64_t sub_10002B828()
{
  result = qword_10003CB58;
  if (!qword_10003CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB58);
  }

  return result;
}

unint64_t sub_10002B884()
{
  result = qword_10003CB60;
  if (!qword_10003CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB60);
  }

  return result;
}

uint64_t sub_10002B92C(uint64_t a1)
{
  v2 = sub_10000BA10();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002B97C()
{
  result = qword_10003CB68;
  if (!qword_10003CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB68);
  }

  return result;
}

unint64_t sub_10002B9D4()
{
  result = qword_10003CB70;
  if (!qword_10003CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB70);
  }

  return result;
}

unint64_t sub_10002BA2C()
{
  result = qword_10003CB78;
  if (!qword_10003CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB78);
  }

  return result;
}

uint64_t sub_10002BA80()
{
  TemporalOptions.caseDisplayRepresentations.unsafeMutableAddressor();
}

uint64_t sub_10002BAB0(uint64_t a1)
{
  v2 = sub_10002B884();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002BB00()
{
  result = qword_10003CB80;
  if (!qword_10003CB80)
  {
    sub_100002A98(&qword_10003CB88, &qword_1000304D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemporalOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10002BCC8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002BD00(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002BD68()
{
  sub_100026FFC();
  v3 = v2;
  v4 = sub_10002D840();
  v5 = sub_100004534(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002C9C();
  sub_10002C9D0();
  v10 = sub_10002D850();
  v11 = sub_100004534(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002C9C();
  v18 = v17 - v16;
  v19 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v19);
  v21 = *(v20 + 64);
  sub_10000457C();
  __chkstk_darwin(v22);
  sub_10002C994();
  v23 = sub_10002C9E0();
  v24(v23);
  sub_10002D820();
  (*(v7 + 8))(v0, v4);
  v25 = *(v13 + 8);
  v26 = sub_10002C960();
  v27(v26);
  v28 = sub_10002D7E0();
  sub_10002C96C(v28);
  if (v29)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    sub_10002C950();
    sub_10002C9B4(v31, v32, v33, 32, v34, v35);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v30 + 32))(v3, v1, v18);
    sub_100026FE4();
  }
}

void sub_10002BF78()
{
  sub_100026FFC();
  v43 = v1;
  v2 = sub_10002D7E0();
  v3 = sub_100004534(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_10002C9D0();
  v7 = sub_10002D840();
  v40 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002C9C();
  v12 = v11 - v10;
  v13 = sub_10002D850();
  v14 = sub_100004534(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100004560();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v25 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v25);
  v27 = *(v26 + 64);
  sub_10000457C();
  __chkstk_darwin(v28);
  v30 = &v40 - v29;
  sub_10002D830();
  (*(v8 + 104))(v12, enum case for Calendar.Component.weekOfYear(_:), v7);
  sub_10002D830();
  sub_10002D7F0();
  v31 = *(v16 + 8);
  v31(v21, v13);
  sub_10002D820();
  v32 = v41;
  v33 = v0;
  v34 = v42;
  (*(v41 + 8))(v33, v42);
  (*(v8 + 8))(v12, v40);
  v31(v24, v13);
  if (sub_1000040D4(v30, 1, v34) == 1)
  {
    sub_10002BD00(v30);
    sub_10002C920();
    v40 = 58;
    sub_10002C950();
    sub_10002C9B4(v35, v36, v37, 37, v38, v39);
    __break(1u);
  }

  else
  {
    (*(v32 + 32))(v43, v30, v34);
    sub_100026FE4();
  }
}

void sub_10002C284()
{
  sub_100026FFC();
  v47 = v0;
  v50 = v2;
  v3 = sub_10002D700();
  v4 = sub_100004534(v3);
  v48 = v5;
  v49 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v45 = v9 - v8;
  v46 = sub_10002D850();
  v10 = sub_100004534(v46);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100004560();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v21 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v21);
  v23 = *(v22 + 64);
  sub_10000457C();
  __chkstk_darwin(v24);
  sub_10002C994();
  sub_10002D830();
  sub_100001A7C(&qword_10003CB90, &qword_100030540);
  v25 = sub_10002D840();
  sub_100004534(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10002F0D0;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v33(v32, enum case for Calendar.Component.year(_:), v25);
  v33(v32 + v29, enum case for Calendar.Component.month(_:), v25);
  sub_10002C5B8(v31);
  v34 = v45;
  sub_10002D800();

  v35 = *(v12 + 8);
  v36 = v46;
  v35(v17, v46);
  sub_10002D810();
  (*(v48 + 8))(v34, v49);
  v35(v20, v36);
  v37 = sub_10002D7E0();
  sub_10002C96C(v37);
  if (v38)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    v45 = 65;
    sub_10002C950();
    sub_10002C9B4(v40, v41, v42, 38, v43, v44);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v39 + 32))(v50, v1, v20);
    sub_100026FE4();
  }
}

uint64_t sub_10002C5B8(uint64_t a1)
{
  v2 = sub_10002D840();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100001A7C(&qword_10003CB98, &unk_100030548);
  result = sub_10002DD90();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = v9[5];
    sub_10002C8D4(&qword_10003CBA0);
    v16 = sub_10002DBD0();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, v9[6] + v18 * v13, v2);
      sub_10002C8D4(&qword_10003CBA8);
      v23 = sub_10002DC00();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(v9[6] + v18 * v13, v25, v2);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v9[2] = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10002C8D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002D840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C930()
{

  return swift_once();
}

uint64_t sub_10002C994()
{

  return sub_10002D830();
}

uint64_t sub_10002C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return _assertionFailure(_:_:file:line:flags:)(a1, a2, a3, v7, a5, a6, 72, 2);
}

uint64_t sub_10002CA0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return sub_10002A124();
}

uint64_t sub_10002CA20()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_opt_self() sharedCache];
  v0[21] = v3;
  v4 = sub_10002DC10();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002CB84;
  v5 = swift_continuation_init();
  v0[17] = sub_100001A7C(&qword_10003CBC0, &qword_100030580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D048;
  v0[13] = &unk_100039F20;
  v0[14] = v5;
  [v3 imageForBundleIdentifier:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002CB84()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10002CC64, 0, 0);
}

uint64_t sub_10002CC64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = UIImagePNGRepresentation(v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10002D790();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_10002CD18(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_10002A124();
}

uint64_t sub_10002CD2C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_10002DC10();
  if ([v3 length])
  {
    v4 = objc_opt_new();
    [v4 setScheme:@"https"];
    [v4 setHost:v3];
    v5 = [v4 URL];
    v6 = [v5 _lp_highLevelDomain];
    v7 = [v4 host];
    v8 = [v4 URL];
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if ([v9 length])
    {
      v12 = [v9 substringToIndex:1];
      v13 = [v12 uppercaseString];
    }

    else
    {
      v15 = [v10 substringToIndex:1];
      v13 = [v15 uppercaseString];

      v12 = &_os_log_default;
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D0E0(v0 + 16, v11, v10);
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to extract high level domain for URL: %@. Creating initial for host instead: %@", (v0 + 16), 0x16u);
      }
    }
  }

  else
  {
    v11 = &_os_log_default;
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D0CC(v0 + 16, v3);
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Web domain name must have at least one character for monogram: %@", (v0 + 16), 0xCu);
    }

    v13 = 0;
  }

  v17 = v13;
  if (v17)
  {
    v18 = [objc_opt_self() sharedCache];
    v19 = [objc_opt_self() currentTraitCollection];
    v20 = [v19 userInterfaceStyle];

    v21 = [v18 monogramImageForInitial:v17 useDarkColors:v20 == 2];
    v22 = UIImagePNGRepresentation(v21);
    if (v22)
    {
      v23 = v22;
      v24 = sub_10002D790();
      v26 = v25;

      goto LABEL_15;
    }
  }

  v24 = 0;
  v26 = 0xF000000000000000;
LABEL_15:
  v27 = *(v0 + 8);

  return v27(v24, v26);
}

uint64_t sub_10002D048(uint64_t a1, void *a2)
{
  v3 = *sub_10001B498((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10002D0AC(v3, v4);
}

double sub_10002D0CC(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

double sub_10002D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}