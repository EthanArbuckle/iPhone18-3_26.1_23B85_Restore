uint64_t sub_22619F6AC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions);
  }

  else
  {
    v2 = sub_2261A0370(&unk_28395C270);
    sub_2261A04D8(&unk_28395C290);
    v6 = v2;
    if (sub_2261CF5C8())
    {
      sub_22619FAAC(&v5, 0xD000000000000022, 0x80000002261EB210);

      v2 = v6;
    }

    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_22619F798()
{
  result = qword_28136E970;
  if (!qword_28136E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E970);
  }

  return result;
}

uint64_t sub_22619F7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22619F854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22619F8C4()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

  v4 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons);

  v5 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager()
{
  result = qword_28136EF68;
  if (!qword_28136EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22619F9F4()
{
  result = sub_2261E3CDC();
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

uint64_t sub_22619FAAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2261E42EC();
  sub_2261E3E6C();
  v9 = sub_2261E430C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2261E425C() & 1) != 0)
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

    sub_22619FE5C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22619FBFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  result = sub_2261E40DC();
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
      sub_2261E42EC();
      sub_2261E3E6C();
      result = sub_2261E430C();
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

uint64_t sub_22619FE5C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22619FBFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22619FFDC();
      goto LABEL_16;
    }

    sub_2261A0138(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2261E42EC();
  sub_2261E3E6C();
  result = sub_2261E430C();
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

      result = sub_2261E425C();
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
  result = sub_2261E427C();
  __break(1u);
  return result;
}

void *sub_22619FFDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  v2 = *v0;
  v3 = sub_2261E40CC();
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

uint64_t sub_2261A0138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  result = sub_2261E40DC();
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
      sub_2261E42EC();

      sub_2261E3E6C();
      result = sub_2261E430C();
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

uint64_t sub_2261A0370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
    v3 = sub_2261E40EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2261E42EC();

      sub_2261E3E6C();
      result = sub_2261E430C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2261E425C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2261A052C()
{
  sub_2261E410C();
  v0 = sub_2261E423C();

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v1 = sub_2261E423C();
  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v2 = sub_2261E423C();
  MEMORY[0x22AA782B0](v2);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v3 = sub_2261E423C();
  MEMORY[0x22AA782B0](v3);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v4 = sub_2261E423C();
  MEMORY[0x22AA782B0](v4);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v5 = sub_2261E423C();
  MEMORY[0x22AA782B0](v5);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v6 = sub_2261E423C();
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v7 = sub_2261E423C();
  MEMORY[0x22AA782B0](v7);

  return v0;
}

BOOL sub_2261A078C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a8 ^ a4) >> 32 == 0;
  if (a8 != a4)
  {
    v8 = 0;
  }

  if (a7 != a3)
  {
    v8 = 0;
  }

  if (a6 != a2)
  {
    v8 = 0;
  }

  return a5 == a1 && v8;
}

_BYTE *sub_2261A07E0()
{
  if (qword_27D78F660 != -1)
  {
    swift_once();
  }

  return byte_27D791440;
}

void sub_2261A0830(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_2261A08C8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_2261A0920()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_27D791448 = deviceClassNumber == 9;
  }

  else
  {
    __break(1u);
  }
}

char *sub_2261A0970()
{
  if (qword_27D78F668 != -1)
  {
    swift_once();
  }

  return &byte_27D791448;
}

uint64_t sub_2261A09C0()
{
  v0 = sub_2261E3E2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28136F198 != -1)
  {
    swift_once();
  }

  v5 = qword_28136FEB8;
  if (qword_28136F190 != -1)
  {
    swift_once();
  }

  v6 = qword_28136FEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF58, &qword_2261E6830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2261E6800;
  v8 = MEMORY[0x277D84A28];
  v9 = MEMORY[0x277D84A90];
  *(v7 + 56) = MEMORY[0x277D84A28];
  *(v7 + 64) = v9;
  *(v7 + 32) = v6;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v5;
  sub_2261E3E0C();
  sub_2261E3E1C();
  v10 = sub_2261E3DEC();

  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_2261A0BA4(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF60, &qword_2261E6838);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2261E6810;
  *(v2 + 32) = 0xE00000001;
  v3 = (v2 + 32);
  *(v2 + 40) = 1;
  *(v2 + 44) = a1;
  bzero(v9, 0x288uLL);
  v8 = 648;
  v4 = sysctl(v3, 4u, v9, &v8, 0, 0);
  if (v4 == sub_2261E3CEC())
  {
    v5 = sub_2261E3E9C();

    result = v5;
  }

  else
  {

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const char *sub_2261A0CF4()
{
  v1 = "modernization";
  if (*v0 != 1)
  {
    v1 = "mac";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extensionAttestation";
  }
}

uint64_t sub_2261A0D3C(char a1)
{
  v2 = sub_2261E3CDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = j__getpid();
  v8 = sub_2261A0BA4(v7);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v8 != 0xD000000000000010 || v9 != 0x80000002261EB2D0)
  {
    v10 = sub_2261E425C();

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_7:
    v16[3] = &type metadata for FeatureFlags;
    v16[4] = sub_2261A0F00();
    LOBYTE(v16[0]) = a1;
    v13 = sub_2261E3C7C();
    __swift_destroy_boxed_opaque_existential_0(v16);
    return v13 & 1;
  }

LABEL_6:
  v11 = sub_2261A5280();
  (*(v3 + 16))(v6, v11, v2);
  v12 = sub_2261E3FEC();
  sub_2261A4EAC(v12, 0xD000000000000035, 0x80000002261EB2F0, 0xD00000000000004BLL, 0x80000002261EB330, 46);
  (*(v3 + 8))(v6, v2);
  v13 = 1;
  return v13 & 1;
}

unint64_t sub_2261A0F00()
{
  result = qword_27D78DF68;
  if (!qword_27D78DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF68);
  }

  return result;
}

unint64_t sub_2261A0F58()
{
  result = qword_27D78DF70;
  if (!qword_27D78DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF70);
  }

  return result;
}

id sub_2261A0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController_logger;
  v11 = sub_2261A50C0();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask] = 1;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask] = 1;
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2261A10B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2261E406C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  if (a3)
  {
    v14 = sub_2261A15F0();
    if (v14)
    {
LABEL_3:
      error[0] = 0;
      v15 = sub_2261E3DAC();
      v16 = SecTaskCopyValueForEntitlement(v14, v15, error);

      v43 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF78, &qword_2261E6930);
      if (swift_dynamicCast())
      {

        v17 = *(a4 - 8);
        v18 = *(v17 + 56);
        v18(v13, 0, 1, a4);
        v19 = v42;
        (*(v17 + 32))(v42, v13, a4);
        result = (v18)(v19, 0, 1, a4);
      }

      else
      {
        v27 = *(a4 - 8);
        v28 = *(v27 + 56);
        v41[2] = v27 + 56;
        v28(v13, 1, 1, a4);
        (*(v10 + 8))(v13, v9);
        if (error[0])
        {
          v29 = error[0];
          v43 = v29;
          type metadata accessor for CFError(0);
          sub_2261A2790();
          v30 = v28;
          v31 = sub_2261E429C();
          v33 = v32;

          v41[1] = OBJC_IVAR____TtC17AppAttestInternal18SecurityController_logger;
          LOBYTE(v29) = sub_2261E3FFC();
          v43 = 0;
          v44 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB380);
          MEMORY[0x22AA782B0](a1, a2);
          MEMORY[0x22AA782B0](0x3D726F727265202CLL, 0xE800000000000000);
          v34 = v31;
          v28 = v30;
          MEMORY[0x22AA782B0](v34, v33);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v35 = v43;
          v36 = v29;
          v37 = v44;
          v38 = 42;
        }

        else
        {
          v39 = sub_2261E3FFC();
          v43 = 0;
          v44 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB380);
          MEMORY[0x22AA782B0](a1, a2);
          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v35 = v43;
          v36 = v39;
          v37 = v44;
          v38 = 44;
        }

        sub_2261A4EAC(v36, v35, v37, 0xD00000000000006FLL, 0x80000002261EB3C0, v38);

        result = (v28)(v42, 1, 1, a4);
      }

      v40 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v14 = sub_2261A1668();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v21 = sub_2261E3CBC();
  v22 = sub_2261E3FFC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226177000, v21, v22, "Cannot fetch entitlement, SecTask is nil.", v23, 2u);
    MEMORY[0x22AA792E0](v23, -1, -1);
  }

  v24 = *(*(a4 - 8) + 56);
  v25 = *MEMORY[0x277D85DE8];
  v26 = v42;

  return v24(v26, 1, 1, a4);
}

SecTaskRef sub_2261A15F0()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_2261A27E8(v4);
  }

  sub_2261A27F8(v2);
  return v3;
}

SecTaskRef sub_2261A1668()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken + 16);
    *v8.val = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken);
    *&v8.val[4] = v4;
    v3 = SecTaskCreateWithAuditToken(0, &v8);
    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2261A27E8(v5);
  }

  sub_2261A27F8(v2);
  return v3;
}

uint64_t sub_2261A16F8()
{
  v0 = sub_2261A1668();
  if (v0)
  {
    v1 = v0;
    if (SecTaskEntitlementsValidated())
    {

      return 1;
    }

    else
    {
      CodeSignStatus = SecTaskGetCodeSignStatus(v1);
      v7 = *sub_2261A07E0();

      v9 = (~CodeSignStatus & 0x14002000) == 0 || (CodeSignStatus & 0x4002001) == 67117057;
      if (v7 == 1)
      {
        return v9;
      }

      else
      {
        return (CodeSignStatus & 0x4002001) == 67117057;
      }
    }
  }

  else
  {
    v3 = sub_2261E3CBC();
    v4 = sub_2261E3FFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226177000, v3, v4, "Cannot check security controls, SecTask is nil.", v5, 2u);
      MEMORY[0x22AA792E0](v5, -1, -1);
    }

    return 0;
  }
}

char *sub_2261A180C()
{
  v1 = sub_2261E3E2C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2261E3E1C();
  sub_2261E3DFC();
  if (v3)
  {
    v4 = 0xD00000000000006FLL;
    v5 = "ain data to String format.";
    v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v7 = sub_2261A26A0(0xD000000000000041, 0x80000002261EB470, 0);
    if (v0)
    {
    }

    else
    {
      v9 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF80, &qword_2261E6938);
      sub_2261A2808();
      sub_22619C8E8();
      v10 = sub_2261E405C();
      v12 = v11;
      v13 = sub_2261E3DAC();
      v46 = v9;
      v14 = [v9 matchesInString:v13 options:0 range:{v10, v12}];

      sub_2261A286C();
      v15 = sub_2261E3F2C();

      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        goto LABEL_48;
      }

      v52 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        while (1)
        {

          v17 = MEMORY[0x277D84F90];
          if (v52)
          {
            v18 = 0;
            v51 = v15 & 0xC000000000000001;
            do
            {
              v4 = v18;
              while (1)
              {
                if (v51)
                {
                  v19 = MEMORY[0x22AA78540](v4, v15);
                }

                else
                {
                  if (v4 >= *(v16 + 16))
                  {
                    goto LABEL_44;
                  }

                  v19 = *(v15 + 8 * v4 + 32);
                }

                v20 = v19;
                v18 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
                  __break(1u);
LABEL_44:
                  __break(1u);
LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

                v21 = [v19 numberOfRanges];
                if (v21 < 1)
                {
                  goto LABEL_45;
                }

                if (v21 != 1)
                {
                  break;
                }

                ++v4;
                if (v18 == v52)
                {
                  goto LABEL_28;
                }
              }

              v22 = v21;
              v4 = 1;
              v47 = v16;
              v48 = v15;
              do
              {
                [v20 rangeAtIndex_];
                sub_2261E3FCC();
                if ((v24 & 1) == 0)
                {
                  v25 = sub_2261E3EDC();
                  v26 = MEMORY[0x22AA78280](v25);
                  v28 = v27;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v17 = sub_2261986A4(0, *(v17 + 2) + 1, 1, v17);
                  }

                  v29 = v17;
                  v30 = *(v17 + 2);
                  v31 = v29;
                  v32 = *(v29 + 3);
                  if (v30 >= v32 >> 1)
                  {
                    v31 = sub_2261986A4((v32 > 1), v30 + 1, 1, v31);
                  }

                  *(v31 + 2) = v30 + 1;
                  v23 = &v31[16 * v30];
                  v17 = v31;
                  *(v23 + 4) = v26;
                  *(v23 + 5) = v28;
                  v15 = v48;
                  v16 = v47;
                }

                ++v4;
              }

              while (v22 != v4);
            }

            while (v18 != v52);
          }

LABEL_28:

          swift_bridgeObjectRelease_n();
          v5 = MEMORY[0x277D84F90];
          v56 = MEMORY[0x277D84F90];
          v33 = *(v17 + 2);
          if (!v33)
          {
            break;
          }

          v34 = v17;
          v35 = 0;
          v53 = *MEMORY[0x277CBECE8];
          v36 = v34 + 40;
          v16 = 10;
          v49 = v34 + 40;
LABEL_30:
          v50 = v5;
          v37 = &v36[16 * v35];
          v15 = v35;
          while (v15 < v33)
          {
            v35 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_47;
            }

            v54 = *(v37 - 1);
            v55 = *v37;

            sub_2261E408C();
            v4 = sub_2261E3B5C();
            v39 = v38;

            if (v39 >> 60 != 15)
            {
              v40 = sub_2261E3B8C();
              v41 = SecCertificateCreateWithData(v53, v40);

              if (v41)
              {
                v42 = v41;
                MEMORY[0x22AA78330]();
                if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v43 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2261E3F3C();
                }

                sub_2261E3F4C();
                sub_2261A28B8(v4, v39);

                v5 = v56;

                v36 = v49;
                v16 = 10;
                if (v35 != v33)
                {
                  goto LABEL_30;
                }

                goto LABEL_42;
              }

              sub_2261A28B8(v4, v39);
              v16 = 10;
            }

            ++v15;
            v37 += 16;
            if (v35 == v33)
            {
              v5 = v50;
              goto LABEL_42;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          if (!sub_2261E416C())
          {
            goto LABEL_50;
          }

          v52 = sub_2261E416C();
        }

LABEL_42:
      }

      else
      {
LABEL_50:

        v44 = sub_2261E3FFC();
        sub_2261A4EAC(v44, v4 - 78, 0x80000002261EB4C0, 0xD00000000000006FLL, 0x80000002261EB3C0, 101);

        return 0;
      }
    }
  }

  else
  {
    v8 = sub_2261E3FFC();
    sub_2261A4EAC(v8, 0xD00000000000003ALL, 0x80000002261EB430, 0xD00000000000006FLL, 0x80000002261EB3C0, 91);
    return 0;
  }

  return v5;
}

BOOL sub_2261A1E9C(__SecTrust *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2261E3DAC();
  v3 = sub_2261E3DAC();
  v4 = sub_2261E3DAC();
  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

  if (!AppleSSLPinned)
  {
    v14 = sub_2261E3FFC();
    sub_2261A4EAC(v14, 0xD000000000000024, 0x80000002261EB530, 0xD00000000000006FLL, 0x80000002261EB3C0, 142);
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v6 = SecTrustSetPolicies(a1, AppleSSLPinned);
  if (v6 != sub_2261E3CEC())
  {
    v15 = sub_2261E3FFC();
    sub_2261E410C();

    LODWORD(error[0]) = v6;
    v16 = sub_2261E423C();
    MEMORY[0x22AA782B0](v16);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v15, 0xD00000000000002ALL, 0x80000002261EB560, 0xD00000000000006FLL, 0x80000002261EB3C0, 148);

    goto LABEL_13;
  }

  error[0] = 0;
  v7 = SecTrustEvaluateWithError(a1, error);
  if (error[0])
  {
    v8 = error[0];
    v9 = CFErrorCopyDescription(v8);
    if (v9)
    {
      v10 = v9;
      v11 = sub_2261E3DDC();
      v13 = v12;
    }

    else
    {
      v13 = 0xEE006E6F69747069;
      v11 = 0x7263736564206F4ELL;
    }

    v20 = sub_2261E3FFC();
    sub_2261E410C();

    MEMORY[0x22AA782B0](v11, v13);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v20, 0xD00000000000002BLL, 0x80000002261EB5B0, 0xD00000000000006FLL, 0x80000002261EB3C0, 157);

    goto LABEL_13;
  }

  v17 = v7;
  if (!v7)
  {
    v18 = sub_2261E3FEC();
    sub_2261A4EAC(v18, 0xD00000000000001DLL, 0x80000002261EB590, 0xD00000000000006FLL, 0x80000002261EB3C0, 162);
  }

  result = v17;
LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2261A2234()
{
  v1 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v2 = sub_2261E433C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken + 16);
  *atoken.val = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken);
  *&atoken.val[4] = v7;
  audit_token_to_pid(&atoken);
  memset(v18, 0, sizeof(v18));
  v8 = csops();
  if (v8 == sub_2261E3CEC())
  {
    *&atoken.val[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF90, &qword_2261E6948);
    *atoken.val = *v18;
    atoken.val[4] = *&v18[16];
    sub_2261E431C();
    sub_2261E432C();
    (*(v3 + 8))(v6, v2);
    v9 = sub_2261E414C();

    v10 = sub_2261A28CC(v18, v9);
    sub_22619DC94(&v18[20], v19);
  }

  else
  {
    v11 = sub_2261E3FFC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000021;
    *&atoken.val[2] = 0x80000002261EB5E0;
    v20 = strerror(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF88, &qword_2261E6940);
    v12 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v12);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v11, *atoken.val, *&atoken.val[2], 0xD00000000000006FLL, 0x80000002261EB3C0, 179);

    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000021;
    *&atoken.val[2] = 0x80000002261EB5E0;
    v20 = strerror(v8);
    v13 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v13);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v10 = *atoken.val;
    v14 = *&atoken.val[2];
    sub_22619C7B4();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v14;
    *(v15 + 16) = 1;
    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

id sub_2261A2594()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2261A2658()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_2261E3BBC();

  return v2;
}

id sub_2261A26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2261E3DAC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_2261A2790()
{
  result = qword_28136E218;
  if (!qword_28136E218)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E218);
  }

  return result;
}

void sub_2261A27E8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2261A27F8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2261A2808()
{
  result = qword_28136E220;
  if (!qword_28136E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DF80, &qword_2261E6938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E220);
  }

  return result;
}

unint64_t sub_2261A286C()
{
  result = qword_28136E1C8;
  if (!qword_28136E1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1C8);
  }

  return result;
}

uint64_t sub_2261A28B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22619C840(a1, a2);
  }

  return a1;
}

uint64_t sub_2261A28CC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22619DC94(a1, &a1[a2]);
  }

  v3 = sub_2261E3A9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2261E3A5C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2261E3B6C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for SecurityController()
{
  result = qword_28136EF28;
  if (!qword_28136EF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A29D0()
{
  result = sub_2261E3CDC();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2261A2A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2261A2AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

char *sub_2261A2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController_logger;
  v13 = sub_2261A5088();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v11[v12], v13, v14);
  *&v11[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController] = 0;
  *&v11[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache] = 0;
  *&v11[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes] = 0;
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

double sub_2261A2CB8@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_2261A2DC0();
  v4 = v3;
  v5 = sub_2261A37AC();
  if (v5 && (v6 = v5, v7 = [v5 teamIdentifier], v6, v7))
  {
    v8 = sub_2261E3DDC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (sub_2261A30F4() == 4)
  {
    v11 = sub_2261A33B4(1);
    v13 = v12;
    v14 = v2;
    v15 = v4;
    v16 = v8;
    v17 = v10;
  }

  else
  {
    v14 = v2;
    v15 = v4;
    v16 = v8;
    v17 = v10;
    v11 = 0;
    v13 = 0;
  }

  sub_2261A57C8(v14, v15, v16, v17, v11, v13, v21);
  result = *v21;
  v19 = v21[1];
  v20 = v21[2];
  *a1 = v21[0];
  a1[1] = v19;
  a1[2] = v20;
  return result;
}

id sub_2261A2DC0()
{
  v0 = sub_2261A30F4();
  if (v0 > 4)
  {
    if (v0 == 5)
    {
      if (sub_2261A30F4() == 5)
      {
        v9 = sub_2261A3CAC();
        v10 = MEMORY[0x277D837D0];
        v11 = isRunningInRecovery();
        sub_2261A10B4(0xD000000000000016, 0x80000002261EAE40, v11 & 1, v10, v18);

        if (v18[1])
        {
          return v18[0];
        }

        v5 = sub_2261E3CBC();
        v6 = sub_2261E3FFC();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_28;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Failed to fetch Application Identifier.";
        goto LABEL_27;
      }

      v5 = sub_2261E3CBC();
      v6 = sub_2261E3FFC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Record type is not Daemon, cannot fetch bundle identifier.";
        goto LABEL_27;
      }

LABEL_28:

      return 0;
    }

    if (v0 != 6)
    {
LABEL_10:
      if ((sub_2261A30F4() - 3) >= 4u)
      {
        v12 = sub_2261A37AC();
        if (v12)
        {
          v13 = v12;
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = [v14 bundleIdentifier];
            if (v15)
            {
              v16 = v15;
              v17 = sub_2261E3DDC();

              return v17;
            }

            return 0;
          }
        }

        v5 = sub_2261E3CBC();
        v6 = sub_2261E3FFC();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_28;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Failed to cast record. { from=LSBundleRecord, to=LSApplicationExtensionRecord }";
        goto LABEL_27;
      }

      v5 = sub_2261E3CBC();
      v6 = sub_2261E3FFC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Record type is not App Extension, cannot fetch bundle identifier.";
LABEL_27:
        _os_log_impl(&dword_226177000, v5, v6, v8, v7, 2u);
        MEMORY[0x22AA792E0](v7, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (v0 != 3)
  {
    if (v0 == 4)
    {
      return sub_2261A33B4(0);
    }

    goto LABEL_10;
  }

  result = sub_2261A37AC();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result bundleIdentifier];

  if (v3)
  {
    v4 = sub_2261E3DDC();

    return v4;
  }

  return 0;
}

uint64_t sub_2261A30F4()
{
  v1 = v0;
  v2 = sub_2261A37AC();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 appClipMetadata];

      if (!v5)
      {
        return 3;
      }

      return 4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 extensionPointRecord];
      v9 = [v8 name];
      v10 = sub_2261E3DDC();
      v12 = v11;

      if (*(sub_2261A3C14() + 16))
      {
        sub_2261A48EC(v10, v12);
        v14 = v13;

        if (v14)
        {
          v15 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);
          if (!*(v15 + 16))
          {

            return 2;
          }

          v16 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);

          v17 = sub_2261A48EC(v10, v12);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v15 + 56) + v17);

            return v20;
          }
        }
      }

      else
      {
      }

      return 2;
    }
  }

  v21 = sub_2261A3CAC();
  v22 = MEMORY[0x277D839B0];
  v23 = isRunningInRecovery();
  sub_2261A10B4(0xD000000000000023, 0x80000002261EADE0, v23 & 1, v22, &v24);

  if (v24 == 2 || (v24 & 1) == 0)
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

BOOL sub_2261A3324(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    if (a1 == 4)
    {
      return a2 == 4;
    }

LABEL_10:
    if (a2 - 3 >= 4)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      return a2 == 6;
    }

    goto LABEL_10;
  }

  return a2 == 5;
}

uint64_t sub_2261A33B4(char a1)
{
  v2 = v1;
  v35[3] = *MEMORY[0x277D85DE8];
  if (sub_2261A30F4() != 4)
  {
    v5 = sub_2261E3CBC();
    v17 = sub_2261E3FFC();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Record type is not App Clip, cannot fetch bundle identifier.";
LABEL_20:
      _os_log_impl(&dword_226177000, v5, v17, v19, v18, 2u);
      MEMORY[0x22AA792E0](v18, -1, -1);
    }

LABEL_21:

LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  v4 = sub_2261A37AC();
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = [v6 appClipMetadata];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 parentApplicationIdentifiers];
          v10 = sub_2261E3F2C();

          v11 = *(v10 + 16);
          if (v11)
          {
            v12 = 0;
            v13 = (v10 + 40);
            while (1)
            {
              if (v12 >= *(v10 + 16))
              {
                __break(1u);
              }

              v15 = *(v13 - 1);
              v14 = *v13;
              v35[2] = 0;

              v16 = sub_2261E3DAC();

              LODWORD(v14) = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

              if (v14)
              {
                break;
              }

              ++v12;
              v13 += 2;
              if (v11 == v12)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
          }

          goto LABEL_22;
        }

        v24 = sub_2261E3CBC();
        v25 = sub_2261E3FFC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v35[0] = v27;
          *v26 = 136315138;
          v28 = v2[2];
          v29 = v2[3];
          v30 = v2[4];
          v31 = v2[5];
          v32 = sub_2261A052C();
          v34 = sub_2261A4344(v32, v33, v35);

          *(v26 + 4) = v34;
          _os_log_impl(&dword_226177000, v24, v25, "Record does not contain App Clip metadata. { auditToken=%s }", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x22AA792E0](v27, -1, -1);
          MEMORY[0x22AA792E0](v26, -1, -1);
        }

        goto LABEL_21;
      }
    }

    v5 = sub_2261E3CBC();
    v17 = sub_2261E3FFC();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Failed to cast record. { from=LSBundleRecord, to=LSApplicationRecord }";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  v20 = [v4 bundleIdentifier];

  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = sub_2261E3DDC();

  result = v21;
LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2261A37AC()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_2261A0778();
  if (sub_2261A078C(v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 0;
  }

  v11 = sub_2261A40FC();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  sub_2261A052C();
  v16 = sub_2261E3DAC();

  v17 = [v11 objectForKey_];

  result = v17;
  if (!v17)
  {
    sub_2261A4964();
    result = sub_2261A4170(v1[2], v1[3], v1[4], v1[5]);
    if (result)
    {
      v18 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
      v19 = v1[2];
      v20 = v1[3];
      v21 = v1[4];
      v22 = v1[5];
      v23 = result;
      v24 = v18;
      sub_2261A052C();
      v25 = sub_2261E3DAC();

      [v24 setObject:v23 forKey:v25];

      return v23;
    }
  }

  return result;
}

uint64_t sub_2261A3908()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = sub_2261E3DAC();
  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

  result = 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2261A3B2C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2261E3DAC();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2261A3C14()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);
  }

  else
  {
    v2 = sub_2261A4DB0(&unk_28395C450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFB0, &qword_2261E6CA8);
    swift_arrayDestroy();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_2261A3CAC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController);
  }

  else
  {
    type metadata accessor for SecurityController();
    v4 = v0;
    v5 = sub_2261A0FCC(v0[2], v0[3], v0[4], v0[5]);
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2261A3D28()
{
  result = sub_2261A37AC();
  if (result)
  {
    v1 = result;
    v2 = [result bundleVersion];

    if (v2)
    {
      v3 = sub_2261E3DDC();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2261A3DA0()
{
  v0 = sub_2261A37AC();
  if (v0)
  {
    v1 = v0;
    v2 = 0;
    v3 = 1 << sub_2261A30F4();
    if ((v3 & 0x74) == 0)
    {
      if ((v3 & 3) != 0)
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          v5 = sub_2261E3FFC();
          sub_2261A4EAC(v5, 0xD00000000000004DLL, 0x80000002261EB8E0, 0xD000000000000073, 0x80000002261EB860, 182);
LABEL_9:
          v2 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v2 = [v4 isProfileValidated];
    }

LABEL_10:

    return v2;
  }

  return 0;
}

id sub_2261A3EC0(SEL *a1)
{
  v2 = sub_2261A37AC();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 *a1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2261A3F34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 4)
  {
    if (v2 != 5)
    {
      if (v2 == 6)
      {
        return v3 == 6;
      }

LABEL_10:
      if ((v3 - 3) >= 4)
      {
        return v2 == v3;
      }

      return 0;
    }

    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return v3 == 4;
      }

      goto LABEL_10;
    }

    if (v3 == 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2261A3FB4()
{
  v1 = *v0;
  sub_2261E42EC();
  if ((v1 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v1 = qword_2261E6CB8[(v1 - 3)];
  }

  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_2261A402C()
{
  v1 = *v0;
  if ((v1 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v1 = qword_2261E6CB8[(v1 - 3)];
  }

  return MEMORY[0x22AA78720](v1);
}

uint64_t sub_2261A4088()
{
  v1 = *v0;
  sub_2261E42EC();
  if ((v1 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v1 = qword_2261E6CB8[(v1 - 3)];
  }

  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

id sub_2261A40FC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2261A4170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2261A4278()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261A4344(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2261A4410(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_226198CB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2261A4410(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2261A451C(a5, a6);
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
    result = sub_2261E412C();
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

uint64_t sub_2261A451C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2261A4568(a1, a2);
  sub_2261A4698(&unk_28395C4A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2261A4568(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2261A4784(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2261E412C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2261E3EAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2261A4784(v10, 0);
        result = sub_2261E40FC();
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

uint64_t sub_2261A4698(uint64_t result)
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

  result = sub_2261A47F8(result, v12, 1, v3);
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

void *sub_2261A4784(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E230, &qword_2261E8B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2261A47F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E230, &qword_2261E8B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2261A48EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2261E42EC();
  sub_2261E3E6C();
  v6 = sub_2261E430C();

  return sub_2261A4CF8(a1, a2, v6);
}

unint64_t sub_2261A4964()
{
  result = qword_28136E1E8;
  if (!qword_28136E1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1E8);
  }

  return result;
}

unint64_t sub_2261A49B4()
{
  result = qword_27D78DFA0;
  if (!qword_27D78DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFA0);
  }

  return result;
}

unint64_t sub_2261A4A0C()
{
  result = qword_27D78DFA8;
  if (!qword_27D78DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFA8);
  }

  return result;
}

uint64_t type metadata accessor for BundleRecordController()
{
  result = qword_28136EE60;
  if (!qword_28136EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A4AB4()
{
  result = sub_2261E3CDC();
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

uint64_t getEnumTagSinglePayload for BundleRecordController.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BundleRecordController.RecordType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2261A4CB4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2261A4CC8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_2261A4CF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2261E425C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2261A4DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFB8, &qword_2261E6CB0);
    v3 = sub_2261E41CC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2261A48EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2261A4EAC(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v18[0] = a4;
  v18[1] = a5;
  sub_22619C8E8();
  v12 = (sub_2261E407C() + 16);
  if (*v12)
  {
    v13 = &v12[2 * *v12];
    v8 = *v13;
    v7 = v13[1];
  }

  else
  {
  }

  v14 = sub_2261E3CBC();
  if (os_log_type_enabled(v14, a1))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315650;
    v17 = sub_2261A4344(v8, v7, v18);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a6;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_2261A4344(a2, a3, v18);
    _os_log_impl(&dword_226177000, v14, a1, "%s.%ld      %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA792E0](v16, -1, -1);
    MEMORY[0x22AA792E0](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2261A534C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2261E3CDC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2261E3CCC();
}

uint64_t sub_2261A53C0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2261E3CDC();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2261A54B0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    v7 = *(v0 + 1);
    if (!*(&v7 + 1) || (v7 == 0x3030303030303030 ? (v3 = *(&v7 + 1) == 0xEA00000000003030) : (v3 = 0), v3 || (sub_2261E425C() & 1) != 0))
    {
    }

    else
    {
      v6 = v7;

      sub_22619F854(&v7, &v5);
      MEMORY[0x22AA782B0](46, 0xE100000000000000);
      MEMORY[0x22AA782B0](v1, v2);

      return v6;
    }
  }

  return v1;
}

uint64_t sub_2261A5588()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2)
  {
    v7 = *(v0 + 16);
    if (!*(&v7 + 1) || (v7 == 0x3030303030303030 ? (v3 = *(&v7 + 1) == 0xEA00000000003030) : (v3 = 0), v3 || (sub_2261E425C() & 1) != 0))
    {
    }

    else
    {
      v6 = v7;

      sub_22619F854(&v7, &v5);
      MEMORY[0x22AA782B0](46, 0xE100000000000000);
      MEMORY[0x22AA782B0](v1, v2);

      return v6;
    }
  }

  return v1;
}

uint64_t sub_2261A5660()
{
  v1 = 7104878;
  sub_2261E410C();

  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x22AA782B0](v2, v3);

  MEMORY[0x22AA782B0](0x44496D616574202CLL, 0xE90000000000003DLL);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x22AA782B0](v4, v5);

  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EB9F0);
  if (v0[5])
  {
    v1 = v0[4];
    v6 = v0[5];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v1, v6);

  return 0x4449656C646E7562;
}

uint64_t sub_2261A57C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2261A57F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2261A584C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *sub_2261A58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  type metadata accessor for KeychainController();
  v12 = sub_2261A2B48();
  v13 = *v12;
  v14 = v12[1];

  *(v11 + 6) = sub_2261DFDC8(v13, v14);
  *(v11 + 7) = 0;
  v15 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v16 = sub_2261A51D8();
  v17 = sub_2261E3CDC();
  (*(*(v17 - 8) + 16))(&v11[v15], v16, v17);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

void sub_2261A5998(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v93 = a3;
  v103[6] = *MEMORY[0x277D85DE8];
  v5 = sub_2261E406C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A6578(a1, &v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  if (!swift_dynamicCast())
  {
    v28 = v93;
    *v93 = 0xD000000000000017;
    v28[1] = 0x80000002261EBA10;
    *(v28 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  v15 = v95;
  v16 = HIDWORD(v95);
  v17 = v96;
  v18 = v100;
  if (v96)
  {
    goto LABEL_12;
  }

  v19 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v19 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v20 = v99 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_12:
    v90 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
    v29 = v98;
    v30 = v97;
    v31 = v99;
    LODWORD(v89) = sub_2261E3FEC();
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_2261E410C();

    v91 = v5;
    v32 = v93;
    v101 = 0xD000000000000027;
    v102 = 0x80000002261EBA30;
    LOBYTE(v95) = v15;
    HIDWORD(v95) = v16;
    LOBYTE(v96) = v17;
    v97 = v30;
    v98 = v29;
    v99 = v31;
    v100 = v18;
    sub_2261A65DC();
    v33 = sub_2261E423C();
    v35 = v34;

    MEMORY[0x22AA782B0](v33, v35);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v89, v101, v102, 0xD00000000000006ELL, 0x80000002261EBA60, 35);

    *v32 = 0xD000000000000024;
    v32[1] = 0x80000002261EBAD0;
    *(v32 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    goto LABEL_13;
  }

  v91 = v6;
  v90 = v11;
  v103[0] = v95 | (HIDWORD(v95) << 32);
  v103[1] = 0;
  v103[2] = v97;
  v103[3] = v98;
  v103[4] = v99;
  v103[5] = v100;
  v21 = v98;
  v89 = v97;
  v88 = v99;

  v22 = v16;
  v23 = v18;
  v24 = v94;
  v25 = sub_2261A6630(v103);
  v94 = v24;
  if (!v24)
  {
    v37 = v26;
    v87 = v25;
    v86 = v22;
    v38 = v27;

    if ((v38 & 0x100) != 0)
    {

      v57 = v87;
      v95 = v87;
      v96 = v37;
      LOBYTE(v97) = v38 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      v94 = swift_allocError();
      *v58 = v57;
      *(v58 + 8) = v37;
      *(v58 + 16) = v38 & 1;
      goto LABEL_14;
    }

    v82 = v38;
    v85 = v37;
    v83 = v23;
    v84 = v21;
    v39 = objc_opt_self();
    v40 = sub_2261E435C();
    v95 = 0;
    v41 = [v39 archivedDataWithRootObject:v40 requiringSecureCoding:1 error:&v95];

    v42 = v95;
    if (!v41)
    {
      v59 = v42;
      sub_22619C81C(v87, v85, v82, 0);

      v60 = sub_2261E3AEC();

      v94 = v60;
      swift_willThrow();
      goto LABEL_14;
    }

    v43 = sub_2261E3BBC();
    v45 = v44;

    v46 = *(v92 + 48);
    v80 = v43;
    v81 = v45;
    v47 = sub_2261E3B8C();
    type metadata accessor for CFData(0);
    v49 = sub_2261E09C4(v47, v87, v85, v48);
    v51 = v50;
    v53 = v52;

    if ((v53 & 0x100) != 0)
    {
      sub_22619C838();

      sub_22619C81C(v87, v85, v82, 0);
      v95 = v49;
      v96 = v51;
      LOBYTE(v97) = v53 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      v94 = swift_allocError();
      *v61 = v49;
      *(v61 + 8) = v51;
      *(v61 + 16) = v53 & 1;
      sub_22619C840(v80, v81);
      sub_2261795CC(v49, v51, v53, 1);
      goto LABEL_14;
    }

    v77 = v51;
    v76 = v49;
    if (v49)
    {
      v54 = v49;
      v55 = sub_2261E3BBC();
      v79 = v56;
      sub_2261795CC(v49, v51, v53, 0);
    }

    else
    {
      v55 = 0;
      v79 = 0xF000000000000000;
    }

    v62 = v90;
    v63 = v91;
    v78 = v53;
    v95 = v55;
    v96 = v79;
    v75 = v55;
    sub_2261A74CC(v55, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC8, qword_2261E6D58);
    if (swift_dynamicCast())
    {

      v91 = v5;
      v89 = *(v62 + 56);
      v89(v10, 0, 1, a2);
      v64 = *(v62 + 32);
      v90 = v62 + 32;
      v64(v14, v10, a2);
      v88 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
      v65 = sub_2261E3FEC();
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000021, 0x80000002261EBB60);
      v66 = v87;
      v67 = v85;
      MEMORY[0x22AA782B0](v87, v85);
      sub_22619C81C(v66, v67, v82, 0);
      MEMORY[0x22AA782B0](0x3D65756C6176202CLL, 0xE800000000000000);
      sub_2261E424C();
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v65, v95, v96, 0xD00000000000006ELL, 0x80000002261EBA60, 50);
      sub_22619C840(v80, v81);
      sub_2261795CC(v76, v77, v78, 0);
      sub_2261A28B8(v75, v79);

      v68 = v93;
      v64(v93, v14, a2);
      v89(v68, 0, 1, a2);
    }

    else
    {
      sub_22619C81C(v87, v85, v82, 0);
      (*(v62 + 56))(v10, 1, 1, a2);
      (*(v63 + 8))(v10, v5);
      v91 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
      v69 = sub_2261E3FEC();
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_2261E410C();
      v101 = v95;
      v102 = v96;
      MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EBB00);
      LOBYTE(v95) = v15;
      HIDWORD(v95) = v86;
      LOBYTE(v96) = 0;
      v97 = v89;
      v98 = v84;
      v99 = v88;
      v100 = v83;
      sub_2261A65DC();
      v70 = sub_2261E423C();
      v72 = v71;

      MEMORY[0x22AA782B0](v70, v72);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v69, v101, v102, 0xD00000000000006ELL, 0x80000002261EBA60, 46);

      sub_22619C840(v80, v81);
      sub_2261795CC(v76, v77, v78, 0);
      sub_2261A28B8(v75, v79);
      v73 = v93;
      *v93 = 0xD00000000000002CLL;
      v73[1] = 0x80000002261EBB30;
      *(v73 + 16) = 1;
    }

    sub_22619C7B4();
    sub_2261E434C();
    goto LABEL_13;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
LABEL_14:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2261A6578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2261A65DC()
{
  result = qword_28136E7E8[0];
  if (!qword_28136E7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E7E8);
  }

  return result;
}

unint64_t sub_2261A6630(unint64_t *a1)
{
  v2 = a1[1];
  v96 = *a1;
  v95 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v92 = sub_2261E3D3C();
  v93 = *(v92 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2261E3D2C();
  v94 = *(v9 - 8);
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v9);
  v91 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2261E3E2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 0xD000000000000017;
  }

  v17 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v17 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    return 0xD000000000000024;
  }

  v18 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v18 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return 0xD000000000000024;
  }

  v89 = v5;
  v87 = v9;
  v19 = v96;
  v20 = HIDWORD(v96);
  v88 = v1;
  sub_2261A9864();
  sub_2261A2CB8(v103);

  if (*(&v103[0] + 1) == 1)
  {
    goto LABEL_15;
  }

  v86 = v20;
  v104 = v103[0];
  v105 = v103[1];
  v106 = v103[2];
  v21 = sub_2261A54B0();
  if (!v22)
  {
    v107 = v104;
    sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
    v108 = v105;
    sub_22619A7B4(&v108, &qword_27D78DE20, &unk_2261E6280);
    v109 = v106;
    sub_22619A7B4(&v109, &qword_27D78DE20, &unk_2261E6280);
    v19 = v96;
    LODWORD(v20) = v86;
LABEL_15:
    v28 = sub_2261E3FEC();
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v101 = 0xD000000000000019;
    v102 = 0x80000002261EBB90;
    LOBYTE(v98) = v19 & 1;
    DWORD1(v98) = v20;
    BYTE8(v98) = v95 & 1;
    *&v99 = v3;
    *(&v99 + 1) = v4;
    *&v100 = v89;
    *(&v100 + 1) = v6;
    sub_2261A65DC();
    v29 = sub_2261E423C();
    MEMORY[0x22AA782B0](v29);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v28, v101, v102, 0xD00000000000006ELL, 0x80000002261EBA60, 111);

    return 0xD000000000000016;
  }

  v83 = v21;
  sub_2261E3E1C();
  v85 = sub_2261E3DEC();
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v16, v12);
  v84 = v24;
  if (v24 >> 60 == 15)
  {

    v26 = v89;
LABEL_20:
    v34 = sub_2261E3FEC();
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v101 = 0xD000000000000029;
    v102 = 0x80000002261EBBD0;
    LOBYTE(v98) = v96 & 1;
    DWORD1(v98) = v86;
    BYTE8(v98) = v95 & 1;
    *&v99 = v3;
    *(&v99 + 1) = v4;
    *&v100 = v26;
    *(&v100 + 1) = v6;
    sub_2261A65DC();
    v35 = sub_2261E423C();
    MEMORY[0x22AA782B0](v35);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v107 = v106;
    v108 = v105;
    v109 = v104;
    v98 = v104;
    v99 = v105;
    v100 = v106;
    sub_22619C894();
    v36 = sub_2261E423C();
    v38 = v37;
    sub_22619A7B4(&v109, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v108, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v36, v38);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v34, v101, v102, 0xD00000000000006ELL, 0x80000002261EBA60, 118);

    return 0xD000000000000026;
  }

  sub_2261E3E1C();
  v83 = sub_2261E3DEC();
  v31 = v30;

  v81 = v25;
  v25(v16, v12);
  v82 = v31;
  v26 = v89;
  if (v31 >> 60 == 15)
  {
LABEL_19:
    sub_2261A28B8(v85, v84);
    goto LABEL_20;
  }

  sub_2261E3E1C();
  v80 = sub_2261E3DEC();
  v33 = v32;
  v81(v16, v12);
  v79 = v33;
  if (v33 >> 60 == 15)
  {
    sub_2261A28B8(v83, v82);
    goto LABEL_19;
  }

  v107 = v104;
  sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
  v108 = v105;
  sub_22619A7B4(&v108, &qword_27D78DE20, &unk_2261E6280);
  v109 = v106;
  sub_22619A7B4(&v109, &qword_27D78DE20, &unk_2261E6280);
  v39 = sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
  v40 = v90;
  v41 = v92;
  sub_2261E3D1C();
  v42 = v85;
  v43 = v84;
  sub_22619D8F4(v85, v84);
  sub_22619D714(v42, v43);
  sub_2261A28B8(v42, v43);
  v44 = v91;
  sub_2261E3D0C();
  v45 = *(v93 + 8);
  v93 += 8;
  v97 = v45;
  v45(v40, v41);
  v46 = v87;
  *(&v99 + 1) = v87;
  v47 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290]);
  *&v100 = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v49 = v94;
  v50 = *(v94 + 16);
  v89 = v94 + 16;
  v95 = v50;
  v50(boxed_opaque_existential_1, v44, v46);
  __swift_project_boxed_opaque_existential_0(&v98, *(&v99 + 1));
  v88 = sub_22619D680;
  sub_2261E3ADC();
  v86 = *(v49 + 8);
  v94 = v49 + 8;
  v86(v44, v46);
  v51 = v101;
  v52 = v102;
  __swift_destroy_boxed_opaque_existential_0(&v98);
  v81 = sub_2261E3B9C();
  v78 = v53;
  sub_22619C840(v51, v52);
  v75[1] = v39;
  sub_2261E3D1C();
  v54 = v83;
  v55 = v82;
  sub_22619D8F4(v83, v82);
  sub_22619D714(v54, v55);
  sub_2261A28B8(v54, v55);
  sub_2261E3D0C();
  v97(v40, v41);
  *(&v99 + 1) = v46;
  *&v100 = v47;
  v56 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v95(v56, v44, v46);
  __swift_project_boxed_opaque_existential_0(&v98, *(&v99 + 1));
  sub_2261E3ADC();
  v86(v44, v46);
  v57 = v101;
  v58 = v102;
  __swift_destroy_boxed_opaque_existential_0(&v98);
  v77 = sub_2261E3B9C();
  v76 = v59;
  sub_22619C840(v57, v58);
  sub_2261E3D1C();
  v60 = v80;
  v61 = v79;
  sub_22619D8F4(v80, v79);
  sub_22619D714(v60, v61);
  sub_2261A28B8(v60, v61);
  sub_2261E3D0C();
  v97(v40, v41);
  *(&v99 + 1) = v46;
  *&v100 = v47;
  v62 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v95(v62, v44, v46);
  __swift_project_boxed_opaque_existential_0(&v98, *(&v99 + 1));
  sub_2261E3ADC();
  v86(v44, v46);
  v63 = v101;
  v64 = v102;
  __swift_destroy_boxed_opaque_existential_0(&v98);
  v65 = sub_2261E3B9C();
  v67 = v66;
  sub_22619C840(v63, v64);
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_2261E410C();

  v68 = sub_2261A2B60();
  v70 = *v68;
  v69 = v68[1];
  *&v98 = v70;
  *(&v98 + 1) = v69;

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v81, v78);

  v71 = sub_22619C4AC(v96 & 1);
  MEMORY[0x22AA782B0](v71);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v77, v76);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v65, v67);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  v72 = sub_2261A2B6C();
  v74 = *v72;
  v73 = v72[1];

  MEMORY[0x22AA782B0](v74, v73);

  sub_2261A28B8(v80, v79);
  sub_2261A28B8(v83, v82);
  sub_2261A28B8(v85, v84);
  return v98;
}

uint64_t sub_2261A74CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22619D8F4(a1, a2);
  }

  return a1;
}

uint64_t sub_2261A74E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v156 = a4;
  v133 = sub_2261E406C();
  v132 = *(v133 - 8);
  v8 = *(v132 + 64);
  v9 = MEMORY[0x28223BE20](v133);
  v141 = v109 - v10;
  v144 = a3;
  v140 = *(a3 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v9);
  v134 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2261E3D3C();
  v142 = *(v137 - 8);
  v13 = *(v142 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_2261E3D2C();
  v138 = *(v139 - 8);
  v15 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v136 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2261E3E2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2261E406C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v109 - v25;
  (*(v23 + 16))(v109 - v25, a1, v22);
  if ((*(*(a2 - 8) + 48))(v26, 1, a2) == 1)
  {
    (*(v23 + 8))(v26, v22);
LABEL_14:
    v40 = v156;
    *v156 = 0xD000000000000017;
    v40[1] = 0x80000002261EBA10;
    *(v40 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = *(&v151 + 1);
  v28 = *(&v152 + 1);
  v29 = HIBYTE(*(&v151 + 1)) & 0xFLL;
  if ((*(&v151 + 1) & 0x2000000000000000) == 0)
  {
    v29 = v151 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = HIBYTE(*(&v152 + 1)) & 0xFLL;
    if ((*(&v152 + 1) & 0x2000000000000000) == 0)
    {
      v30 = v152 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v130 = v152;
      v131 = v151;
      v31 = v150;
      v32 = DWORD1(v150);
      v33 = BYTE8(v150);
      v129 = v4;
      sub_2261A9864();
      sub_2261A2CB8(v149);

      if (*(&v149[0] + 1) != 1)
      {
        v128 = v31;
        v127 = v33;
        v150 = v149[0];
        v151 = v149[1];
        v152 = v149[2];
        sub_2261A54B0();
        if (v34)
        {
          v126 = v28;
          sub_2261E3E1C();
          v124 = sub_2261E3DEC();
          v36 = v35;
          v37 = *(v18 + 8);
          v37(v21, v17);
          v125 = v36;
          if (v36 >> 60 == 15)
          {

            v38 = v130;
            v39 = v32;
          }

          else
          {
            sub_2261E3E1C();
            v122 = sub_2261E3DEC();
            v50 = v49;

            v37(v21, v17);
            v123 = v32;
            if (v50 >> 60 == 15)
            {
              sub_2261A28B8(v124, v125);
              v38 = v130;
            }

            else
            {
              sub_2261E3E1C();
              v38 = v130;
              v121 = sub_2261E3DEC();
              v52 = v51;
              v37(v21, v17);
              if (v52 >> 60 != 15)
              {
                v115 = v27;
                v61 = sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
                v62 = v135;
                v63 = v50;
                v64 = v137;
                v109[1] = v61;
                sub_2261E3D1C();
                v120 = v52;
                v65 = v124;
                v66 = v125;
                sub_22619D8F4(v124, v125);
                sub_22619D714(v65, v66);
                sub_2261A28B8(v65, v66);
                v67 = v136;
                sub_2261E3D0C();
                v68 = *(v142 + 8);
                v142 += 8;
                v143 = v68;
                v68(v62, v64);
                v69 = v139;
                *(&v146 + 1) = v139;
                *&v147 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290]);
                v116 = v147;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v145);
                v71 = v138;
                v72 = *(v138 + 16);
                v118 = v138 + 16;
                v119 = v72;
                v72(boxed_opaque_existential_1, v67, v69);
                __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
                v117 = sub_22619D680;
                sub_2261E3ADC();
                v138 = *(v71 + 8);
                (v138)(v67, v69);
                v73 = v155;
                __swift_destroy_boxed_opaque_existential_0(&v145);
                v113 = sub_2261E3B9C();
                v112 = v74;
                sub_22619C840(v73, *(&v73 + 1));
                sub_2261E3D1C();
                v75 = v122;
                sub_22619D8F4(v122, v63);
                sub_22619D714(v75, v63);
                v114 = v63;
                sub_2261A28B8(v75, v63);
                sub_2261E3D0C();
                v143(v62, v64);
                *(&v146 + 1) = v69;
                *&v147 = v116;
                v76 = __swift_allocate_boxed_opaque_existential_1(&v145);
                v119(v76, v67, v69);
                __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
                sub_2261E3ADC();
                (v138)(v67, v69);
                v77 = v155;
                __swift_destroy_boxed_opaque_existential_0(&v145);
                v111 = sub_2261E3B9C();
                v110 = v78;
                sub_22619C840(v77, *(&v77 + 1));
                sub_2261E3D1C();
                v79 = v121;
                v80 = v120;
                sub_22619D8F4(v121, v120);
                sub_22619D714(v79, v80);
                sub_2261A28B8(v79, v80);
                sub_2261E3D0C();
                v143(v62, v64);
                *(&v146 + 1) = v69;
                *&v147 = v116;
                v81 = __swift_allocate_boxed_opaque_existential_1(&v145);
                v119(v81, v67, v69);
                __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
                sub_2261E3ADC();
                (v138)(v67, v69);
                v82 = v155;
                __swift_destroy_boxed_opaque_existential_0(&v145);
                v83 = sub_2261E3B9C();
                v85 = v84;
                sub_22619C840(v82, *(&v82 + 1));
                *&v145 = 0;
                *(&v145 + 1) = 0xE000000000000000;
                sub_2261E410C();
                v86 = sub_2261A2B60();
                v87 = v125;
                v89 = *v86;
                v88 = v86[1];

                *&v145 = v89;
                *(&v145 + 1) = v88;
                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v113, v112);

                v90 = v128;
                v91 = sub_22619C4AC(v128);
                MEMORY[0x22AA782B0](v91);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v111, v110);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v83, v85);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                v92 = sub_2261A2B6C();
                v94 = *v92;
                v93 = v92[1];

                MEMORY[0x22AA782B0](v94, v93);

                v95 = v145;
                v153 = v145;

                v96 = v141;
                v97 = v144;
                if (swift_dynamicCast())
                {
                  v154 = v150;
                  sub_22619A7B4(&v154, &qword_27D78DE20, &unk_2261E6280);
                  v155 = v151;
                  sub_22619A7B4(&v155, &qword_27D78DE20, &unk_2261E6280);
                  v145 = v152;
                  sub_22619A7B4(&v145, &qword_27D78DE20, &unk_2261E6280);
                  sub_2261A28B8(v124, v87);
                  sub_2261A28B8(v122, v114);

                  sub_2261A28B8(v121, v120);

                  v98 = v140;
                  (*(v140 + 56))(v96, 0, 1, v97);
                  v99 = *(v98 + 32);
                  v100 = v134;
                  v99(v134, v96, v97);
                  v99(v156, v100, v97);
                }

                else
                {
                  (*(v140 + 56))(v96, 1, 1, v97);
                  (*(v132 + 8))(v96, v133);
                  v101 = sub_2261E3FEC();
                  *&v145 = 0;
                  *(&v145 + 1) = 0xE000000000000000;
                  sub_2261E410C();
                  v148 = v145;
                  MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
                  MEMORY[0x22AA782B0](v95, *(&v95 + 1));

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  LOBYTE(v145) = v90;
                  DWORD1(v145) = v123;
                  BYTE8(v145) = v127;
                  *&v146 = v131;
                  *(&v146 + 1) = v115;
                  *&v147 = v130;
                  *(&v147 + 1) = v126;
                  sub_2261A65DC();
                  v102 = sub_2261E423C();
                  v104 = v103;

                  MEMORY[0x22AA782B0](v102, v104);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v153 = v152;
                  v154 = v151;
                  v155 = v150;
                  v145 = v150;
                  v146 = v151;
                  v147 = v152;
                  sub_22619C894();
                  v105 = sub_2261E423C();
                  v107 = v106;
                  sub_22619A7B4(&v155, &qword_27D78DE20, &unk_2261E6280);
                  sub_22619A7B4(&v154, &qword_27D78DE20, &unk_2261E6280);
                  sub_22619A7B4(&v153, &qword_27D78DE20, &unk_2261E6280);
                  MEMORY[0x22AA782B0](v105, v107);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v101, v148, *(&v148 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 128);

                  sub_2261A28B8(v124, v125);
                  sub_2261A28B8(v122, v114);
                  sub_2261A28B8(v121, v120);
                  v108 = v156;
                  *v156 = 0xD000000000000025;
                  v108[1] = 0x80000002261EBC60;
                  *(v108 + 16) = 1;
                }

                sub_22619C7B4();
                sub_2261E434C();
                return swift_storeEnumTagMultiPayload();
              }

              sub_2261A28B8(v122, v50);
              sub_2261A28B8(v124, v125);
            }

            v39 = v123;
          }

          v53 = sub_2261E3FEC();
          *&v145 = 0;
          *(&v145 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v148 = 0xD000000000000029;
          *(&v148 + 1) = 0x80000002261EBBD0;
          LOBYTE(v145) = v128;
          DWORD1(v145) = v39;
          BYTE8(v145) = v127;
          *&v146 = v131;
          *(&v146 + 1) = v27;
          *&v147 = v38;
          *(&v147 + 1) = v126;
          sub_2261A65DC();
          v54 = sub_2261E423C();
          v56 = v55;

          MEMORY[0x22AA782B0](v54, v56);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v153 = v152;
          v154 = v151;
          v155 = v150;
          v145 = v150;
          v146 = v151;
          v147 = v152;
          sub_22619C894();
          v57 = sub_2261E423C();
          v59 = v58;
          sub_22619A7B4(&v155, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v154, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v153, &qword_27D78DE20, &unk_2261E6280);
          MEMORY[0x22AA782B0](v57, v59);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v53, v148, *(&v148 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 118);

          v47 = 0x80000002261EBC00;
          v48 = 0xD000000000000026;
          goto LABEL_25;
        }

        v153 = v150;
        sub_22619A7B4(&v153, &qword_27D78DE20, &unk_2261E6280);
        v154 = v151;
        sub_22619A7B4(&v154, &qword_27D78DE20, &unk_2261E6280);
        v155 = v152;
        sub_22619A7B4(&v155, &qword_27D78DE20, &unk_2261E6280);
        LOBYTE(v33) = v127;
        LOBYTE(v31) = v128;
      }

      v43 = sub_2261E3FEC();
      *&v145 = 0;
      *(&v145 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v148 = 0xD000000000000019;
      *(&v148 + 1) = 0x80000002261EBB90;
      LOBYTE(v145) = v31;
      DWORD1(v145) = v32;
      BYTE8(v145) = v33;
      *&v146 = v131;
      *(&v146 + 1) = v27;
      *&v147 = v130;
      *(&v147 + 1) = v28;
      sub_2261A65DC();
      v44 = sub_2261E423C();
      v46 = v45;

      MEMORY[0x22AA782B0](v44, v46);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v43, v148, *(&v148 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 111);

      v47 = 0x80000002261EBBB0;
      v48 = 0xD000000000000016;
LABEL_25:
      v60 = v156;
      *v156 = v48;
      v60[1] = v47;
      *(v60 + 16) = 1;
      goto LABEL_26;
    }
  }

  v42 = v156;
  *v156 = 0xD000000000000024;
  v42[1] = 0x80000002261EBAD0;
  *(v42 + 16) = 0;
LABEL_26:
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

void sub_2261A8A9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2261E406C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v85 - v11;
  v104 = *(a2 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A9AD8(a1, &v110);
  if (!v111)
  {
    sub_22619A7B4(&v110, &qword_27D78DFD0, &qword_2261E6FF0);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    goto LABEL_15;
  }

  v102 = v7;
  v103 = v3;
  v16 = v107;
  v17 = v109;
  v18 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v18 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v19 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_13:
    v104 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
    v26 = v108;
    v27 = BYTE8(v105);
    v28 = v107;
    v29 = v106;
    v30 = v109;
    v31 = DWORD1(v105);
    v32 = v105;
    LODWORD(v101) = sub_2261E3FEC();
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v110 = 0xD000000000000027;
    *(&v110 + 1) = 0x80000002261EBA30;
    LOBYTE(v105) = v32;
    DWORD1(v105) = v31;
    BYTE8(v105) = v27;
    v106 = v29;
    v107 = v28;
    v108 = v26;
    v109 = v30;
    sub_2261A65DC();
    v33 = sub_2261E423C();
    v35 = v34;

    MEMORY[0x22AA782B0](v33, v35);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v101, v110, *(&v110 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 67);

    *a3 = 0xD000000000000024;
    *(a3 + 8) = 0x80000002261EBAD0;
    *(a3 + 16) = 0;
LABEL_14:
    sub_22619C7B4();
    goto LABEL_15;
  }

  v98 = v8;
  v112[0] = v105 | (DWORD1(v105) << 32);
  v112[1] = BYTE8(v105);
  v112[2] = v106;
  v112[3] = v107;
  v112[4] = v108;
  v112[5] = v109;
  v101 = v108;
  v100 = BYTE8(v105);
  v99 = v106;
  v20 = DWORD1(v105);
  v21 = v105;

  v22 = v113;
  v23 = sub_2261A6630(v112);
  v113 = v22;
  if (v22)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v36 = v24;
  v95 = v21;
  v96 = v20;
  v97 = v23;
  v37 = v25;

  if ((v37 & 0x100) != 0)
  {

    v57 = v97;
    *&v105 = v97;
    *(&v105 + 1) = v36;
    LOBYTE(v106) = v37 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v113 = swift_allocError();
    *v58 = v57;
    *(v58 + 8) = v36;
    *(v58 + 16) = v37 & 1;
    return;
  }

  v92 = v16;
  v93 = v17;
  v38 = v36;
  v39 = *(v103 + 48);
  type metadata accessor for CFData(0);
  v41 = v40;

  v42 = v97;
  v94 = sub_2261DFE64(v97, v38, v41);
  v44 = v43;
  v46 = v45;
  v91 = v38;
  sub_22619C81C(v42, v38, v37, 0);
  if ((v46 & 0x100) != 0)
  {
    v59 = v46;
    v60 = v46 & 1;
    v61 = v94;
    sub_22619C838();

    sub_22619C81C(v97, v91, v37, 0);
    *&v105 = v61;
    *(&v105 + 1) = v44;
    LOBYTE(v106) = v60;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v113 = swift_allocError();
    *v62 = v61;
    *(v62 + 8) = v44;
    *(v62 + 16) = v60;
    sub_2261795CC(v61, v44, v59, 1);
    return;
  }

  v88 = v37;
  v89 = v44;
  v90 = v46;
  v47 = v92;
  v48 = v94;
  if (!v94)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_24;
  }

  v105 = xmmword_2261E6D40;
  v49 = v48;
  sub_2261E3BAC();
  sub_2261795CC(v48, v89, v90, 0);
  v50 = *(&v105 + 1);
  if (*(&v105 + 1) >> 60 == 15)
  {
    v48 = v94;
LABEL_24:
    LODWORD(v98) = sub_2261E3FEC();
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v110 = v105;
    MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EBC90);
    v51 = v97;
    v52 = v91;
    MEMORY[0x22AA782B0](v97, v91);
    sub_22619C81C(v51, v52, v88, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    LOBYTE(v105) = v95;
    DWORD1(v105) = v96;
    BYTE8(v105) = v100;
    v106 = v99;
    v107 = v47;
    v108 = v101;
    v109 = v93;
    sub_2261A65DC();
    v53 = sub_2261E423C();
    v55 = v54;

    MEMORY[0x22AA782B0](v53, v55);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v98, v110, *(&v110 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 75);
    sub_2261795CC(v48, v89, v90, 0);

    *&v105 = 0;
    v56 = swift_dynamicCast();
    (*(v104 + 56))(a3, v56 ^ 1u, 1, a2);
LABEL_25:
    sub_22619C7B4();
    sub_2261E434C();
    goto LABEL_16;
  }

  v63 = v105;
  sub_2261A9B48(0, &qword_28136E1E0, 0x277CCAAC8);
  sub_2261A9B48(0, &qword_28136E1A0, 0x277CCABB0);
  v64 = v113;
  v65 = sub_2261E401C();
  v113 = v64;
  if (v64)
  {
    sub_2261A28B8(v63, v50);
    sub_2261795CC(v94, v89, v90, 0);
    sub_22619C81C(v97, v91, v88, 0);

    return;
  }

  v86 = v63;
  v87 = v50;
  if (!v65)
  {
    v71 = sub_2261E3FEC();
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v110 = v105;
    MEMORY[0x22AA782B0](0xD00000000000002BLL, 0x80000002261EBCC0);
    v72 = v97;
    v73 = v91;
    MEMORY[0x22AA782B0](v97, v91);
    sub_22619C81C(v72, v73, v88, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    LOBYTE(v105) = v95;
    DWORD1(v105) = v96;
    BYTE8(v105) = v100;
    v106 = v99;
    v107 = v47;
    v108 = v101;
    v109 = v93;
    sub_2261A65DC();
    v74 = sub_2261E423C();
    v76 = v75;

    MEMORY[0x22AA782B0](v74, v76);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v71, v110, *(&v110 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 80);

    sub_2261795CC(v94, v89, v90, 0);
    sub_2261A28B8(v86, v87);
    *a3 = 0xD000000000000022;
    *(a3 + 8) = 0x80000002261EBCF0;
    *(a3 + 16) = 1;
    goto LABEL_14;
  }

  v66 = v65;

  *&v105 = v66;
  v67 = v66;
  if (swift_dynamicCast())
  {
    sub_22619C81C(v97, v91, v88, 0);
    sub_2261795CC(v94, v89, v90, 0);

    sub_2261A28B8(v86, v87);
    v68 = v104;
    v69 = *(v104 + 56);
    v69(v12, 0, 1, a2);
    v70 = *(v68 + 32);
    v70(v15, v12, a2);
    v70(a3, v15, a2);
    v69(a3, 0, 1, a2);
    goto LABEL_25;
  }

  (*(v104 + 56))(v12, 1, 1, a2);
  (*(v98 + 8))(v12, v102);
  v104 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v77 = sub_2261E3FEC();
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261EBD20);
  v78 = v97;
  v79 = v91;
  MEMORY[0x22AA782B0](v97, v91);
  sub_22619C81C(v78, v79, v88, 0);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v80 = v67;
  v81 = [v80 description];
  v82 = sub_2261E3DDC();
  v84 = v83;

  MEMORY[0x22AA782B0](v82, v84);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v77, v105, *(&v105 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 85);

  sub_2261795CC(v94, v89, v90, 0);

  sub_2261A28B8(v86, v87);
  *a3 = 0xD00000000000002DLL;
  *(a3 + 8) = 0x80000002261EBD60;
  *(a3 + 16) = 1;
  sub_22619C7B4();
LABEL_15:
  sub_2261E434C();
LABEL_16:
  swift_storeEnumTagMultiPayload();
}

char *sub_2261A9864()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    type metadata accessor for BundleRecordController();
    v2 = v0;
    v1 = sub_2261A2BE4(v0[2], v0[3], v0[4], v0[5]);
    v3 = v0[7];
    v2[7] = v1;
  }

  return v1;
}

uint64_t sub_2261A98D8()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v4 = sub_2261E3CDC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261A9984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  type metadata accessor for KeychainController();
  v14 = sub_2261A2B48();
  v15 = *v14;
  v16 = v14[1];

  *(v13 + 6) = sub_2261DFDC8(v15, v16);
  *(v13 + 7) = 0;
  v17 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v18 = sub_2261A51D8();
  v19 = sub_2261E3CDC();
  result = (*(*(v19 - 8) + 16))(&v13[v17], v18, v19);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = a4;
  *a5 = v13;
  return result;
}

uint64_t sub_2261A9AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD0, &qword_2261E6FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261A9B48(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for AssertionDataManager()
{
  result = qword_28136EEF0;
  if (!qword_28136EEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A9BE8()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261A9C9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22619C838();
  return v1;
}

id sub_2261A9CDC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = ~a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6DF0;
  v7 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2261E3DDC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_2261A9F20(inited);
  swift_setDeallocating();
  sub_2261AA030(inited + 32);
  v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v10 = sub_2261E3DAC();
  v11 = sub_2261E3D4C();

  v12 = [v9 initWithDomain:v10 code:*&v5 | 0xFFFFFFFFFFFFFF00 userInfo:v11];

  return v12;
}

uint64_t sub_2261A9E28()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](~v1);
  return sub_2261E430C();
}

uint64_t sub_2261A9EA0()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](~v1);
  return sub_2261E430C();
}

uint64_t sub_2261A9EE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2261AA098(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2261A9F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2261AA1D8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2261A48EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22619A7A4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2261AA030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261AA098(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF8)
  {
    return ~a1;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_2261AA0AC()
{
  result = qword_27D78DFE0;
  if (!qword_27D78DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFE0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2261AA120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2261AA168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2261AA1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id AppAttestHandler.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationCborManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  v11 = sub_2261A52F0();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  v13 = &v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Bool __swiftcall AppAttestHandler.supported()()
{
  sub_2261AA444();
  v0 = sub_22619DFA0();

  return v0 & 1;
}

uint64_t sub_2261AA444()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager);
  }

  else
  {
    type metadata accessor for EligibilityManager();
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken);
    v4 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8);
    v5 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16);
    v6 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24);
    v7 = isRunningInRecovery();
    v8 = v3;
    v9 = v0;
    v2 = sub_22619DE4C(v8, v4, v5, v6, v7);
    v10 = *(v0 + v1);
    *(v9 + v1) = v2;
  }

  return v2;
}

void AppAttestHandler.createKey(with:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v185 = a4;
  v195 = *MEMORY[0x277D85DE8];
  v173 = type metadata accessor for Key(0);
  v7 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v174 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppUUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v166 - v15);
  v17 = sub_2261E3C3C();
  v18 = *(v17 - 8);
  v179 = v17;
  v180 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v178 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v175 = &v166 - v23;
  MEMORY[0x28223BE20](v22);
  v181 = &v166 - v24;
  v25 = sub_2261E3CDC();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v33 = &v166 - v32;
  v182 = a1;
  if (!a2)
  {
    a1 = 7104878;
    goto LABEL_9;
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
LABEL_9:
    v183 = a1;
    v184 = a3;
    v176 = v12;
    v177 = v16;
    v38 = v30;
    v171 = v9;
    v39 = v186;
    v40 = v31;
    sub_2261AA444();
    v41 = sub_22619DFA0();

    v42 = *(v40 + 16);
    if (a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    if ((v41 & 1) == 0)
    {
      v42(v29, &v39[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v38);
      v48 = sub_2261E3FFC();
      *&v192 = 0;
      *(&v192 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v192 = 0xD00000000000002ELL;
      *(&v192 + 1) = 0x80000002261EBE00;

      MEMORY[0x22AA782B0](v183, v43);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v48, v192, *(&v192 + 1), 0xD000000000000061, 0x80000002261EBE30, 48);

      (*(v40 + 8))(v29, v38);
      v49 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
      (v184)(0, 0, 0, 0, v49);

LABEL_15:
      v50 = *MEMORY[0x277D85DE8];
      return;
    }

    v172 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
    v42(v33, &v39[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v38);
    LODWORD(v170) = sub_2261E400C();
    *&v192 = 0;
    *(&v192 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&error = 0xD00000000000001BLL;
    *(&error + 1) = 0x80000002261EBED0;

    MEMORY[0x22AA782B0](v183, v43);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v44 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448(v191, v44);

    v192 = v191[0];
    v193 = v191[1];
    v194 = v191[2];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v46 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v46);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v170, error, *(&error + 1), 0xD000000000000061, 0x80000002261EBE30, 53);

    (*(v40 + 8))(v33, v38);
    v47 = v177;
    sub_2261AC2DC(v182, a2, v177);
    v168 = v45;
    v169 = 0;
    v167 = a2;
    v183 = "n is ineligible. { clientUUID=";
    v52 = v179;
    v51 = v180;
    v53 = (*(v180 + 48))(v47, 1, v179);
    if (v53 == 1)
    {
      sub_22619A7B4(v47, &qword_27D78DF28, &unk_2261E6FD0);
      v54 = v181;
      sub_2261E3C2C();
      v55 = sub_2261E400C();
      *&v192 = 0;
      *(&v192 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v192 = 0xD000000000000021;
      *(&v192 + 1) = 0x80000002261EBF50;
      v56 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v56);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v57 = v183;
      v58 = v186;
      sub_2261A4EAC(v55, v192, *(&v192 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 62);

      v59 = *(v51 + 16);
      v60 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v61 = v175;
      (*(v51 + 32))(v175, v47, v52);
      v177 = *(v51 + 16);
      v170 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v54 = v181;
      (v177)(v181, v61, v52);
      LODWORD(v166) = sub_2261E400C();
      *&v192 = 0;
      *(&v192 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v192 = 0xD00000000000001DLL;
      *(&v192 + 1) = 0x80000002261EC1B0;
      v62 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v62);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v57 = v183;
      v58 = v186;
      sub_2261A4EAC(v166, v192, *(&v192 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 59);

      (*(v51 + 8))(v61, v52);
      v60 = v170;
      v59 = v177;
    }

    v63 = v178;
    v177 = v59;
    v170 = v60;
    (v59)(v178, v54, v52);
    v64 = sub_2261E3C1C();
    sub_2261C350C(v63, v64, v65, v176);
    LOBYTE(v63) = sub_2261E400C();
    *&v192 = 0;
    *(&v192 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v192 = 0xD000000000000016;
    *(&v192 + 1) = 0x80000002261EBF80;
    v66 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v66);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v63, v192, *(&v192 + 1), 0xD000000000000061, v57 | 0x8000000000000000, 72);

    type metadata accessor for SecurityController();
    v67 = sub_2261A0FCC(*&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24]);
    v68 = sub_2261A2BD8();
    v69 = *v68;
    v70 = v68[1];

    v71 = MEMORY[0x277D839B0];
    v72 = isRunningInRecovery();
    sub_2261A10B4(v69, v70, v72 & 1, v71, &v192);

    v175 = v67;
    if (v192 == 2 || (v192 & 1) == 0)
    {
      v74 = 0;
    }

    else
    {
      *&error = 0;
      if (!*MEMORY[0x277CDBF00])
      {
        __break(1u);
        return;
      }

      v73 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
      v74 = v73;
      v75 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_2261A2790();
        v76 = v75;
        v77 = swift_allocError();
        *v78 = v76;
        v79 = v74;
        v80 = v52;
        v81 = sub_2261E3FFC();
        *&v192 = 0;
        *(&v192 + 1) = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EC170);
        swift_getErrorValue();
        v82 = sub_2261E429C();
        MEMORY[0x22AA782B0](v82);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v83 = v81;
        v52 = v80;
        sub_2261A4EAC(v83, v192, *(&v192 + 1), 0xD000000000000061, v57 | 0x8000000000000000, 90);

        v84 = v169;
        if (error)
        {
        }

LABEL_27:
        isRunningInRecovery();
        v85 = sub_2261C854C(v74);
        if (v84)
        {

          v86 = sub_2261E3FFC();
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v187 = 0xD00000000000001ELL;
          *(&v187 + 1) = 0x80000002261EBFA0;
          swift_getErrorValue();
          v87 = sub_2261E429C();
          MEMORY[0x22AA782B0](v87);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v88 = v74;
          v89 = v181;
          v90 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v90);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v91 = *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

          sub_22619C448(&v192, v92);

          error = v192;
          v189 = v193;
          v190 = v194;
          v93 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v93);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v86, v187, *(&v187 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 101);

          *&error = 0;
          *(&error + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&error = 0xD00000000000001ELL;
          *(&error + 1) = 0x80000002261EBFA0;
          swift_getErrorValue();
          v94 = sub_2261E429C();
          MEMORY[0x22AA782B0](v94);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v95 = sub_2261A9CDC(0, error, *(&error + 1));

          (v184)(0, 0, 0, 0, v95);

          sub_2261AC974(v176, type metadata accessor for AppUUID);
          (*(v180 + 8))(v89, v179);
          goto LABEL_15;
        }

        v96 = v85;
        v97 = v52;

        v98 = v96;
        v99 = sub_2261C9E2C();
        v101 = v100;

        if (!v101)
        {
          v122 = sub_2261E3FFC();
          sub_2261A4EAC(v122, 0xD000000000000031, 0x80000002261EBFC0, 0xD000000000000061, v183 | 0x8000000000000000, 107);
          v123 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EBFC0);
          (v184)(v99, 0, v99, 0, v123);

          sub_2261AC974(v176, type metadata accessor for AppUUID);
          (*(v180 + 8))(v181, v97);
          goto LABEL_15;
        }

        v169 = v74;
        v166 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
        v102 = *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

        v103 = sub_22619C044();

        v104 = v178;
        (v177)(v178, v176, v97);
        v177 = v98;
        v105 = v174;
        sub_2261C3918(v103 & 1, v104, v98, v99, v101, v174);
        v106 = sub_2261E400C();
        *&v192 = 0;
        *(&v192 + 1) = 0xE000000000000000;
        sub_2261E410C();

        *&v192 = 0xD000000000000015;
        *(&v192 + 1) = 0x80000002261EC000;
        v107 = v173;
        v108 = &v105[*(v173 + 28)];
        v110 = *v108;
        v109 = v108[1];
        MEMORY[0x22AA782B0](*v108, v109);
        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v106, v192, *(&v192 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 114);

        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
        *(&v193 + 1) = v107;
        *&v194 = &off_28395C890;
        v111 = v105;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v192);
        sub_2261AC9D4(v105, boxed_opaque_existential_1, type metadata accessor for Key);
        type metadata accessor for SecKey();
        v114 = v113;
        (nullsub_1)();
        sub_2261C3CDC(&v192, v114, &error);

        __swift_destroy_boxed_opaque_existential_0(&v192);
        v125 = error;
        v126 = v189;
        if (BYTE1(v189) == 1)
        {
          v127 = *(&error + 1);
          sub_22619C838();
          v128 = sub_2261E3FFC();
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v187 = v192;
          MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EC140);
          *&v192 = v125;
          *(&v192 + 1) = v127;
          LOBYTE(v193) = v126 & 1;
          sub_22619C7B4();
          v129 = sub_2261E429C();
          v131 = v130;
          sub_2261795CC(v125, v127, v126, 1);
          MEMORY[0x22AA782B0](v129, v131);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v132 = v176;
          MEMORY[0x22AA782B0](*&v176[*(v171 + 20)], *&v176[*(v171 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v133 = *&v186[v166];

          sub_22619C448(&v192, v134);

          error = v192;
          v189 = v193;
          v190 = v194;
          v135 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v135);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v128, v187, *(&v187 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 119);

          v136 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
          (v184)(0, 0, 0, 0, v136);

          sub_2261795CC(v125, v127, v126, 1);
          v137 = v132;
LABEL_36:
          sub_2261AC974(v137, type metadata accessor for AppUUID);
          (*(v180 + 8))(v181, v179);
LABEL_51:
          sub_2261AC974(v111, type metadata accessor for Key);
          goto LABEL_15;
        }

        if (error)
        {
          v173 = *(&error + 1);
          LODWORD(v178) = v189;
          v138 = sub_2261E400C();
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v192 = 0xD00000000000001DLL;
          *(&v192 + 1) = 0x80000002261EC070;
          MEMORY[0x22AA782B0](v110, v109);
          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v138, v192, *(&v192 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 131);

          v139 = v181;
          v140 = sub_2261E3C1C();
          if (v167)
          {
            v142 = v184;
            if (v140 == v182 && v141 == v167)
            {

              goto LABEL_50;
            }

            v145 = sub_2261E425C();

            if (v145)
            {
              goto LABEL_50;
            }
          }

          else
          {
          }

          v182 = v125;
          sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager, type metadata accessor for AppUUIDDataManager, sub_2261DD6B8);
          *(&v193 + 1) = v171;
          *&v194 = &off_28395C880;
          v146 = __swift_allocate_boxed_opaque_existential_1(&v192);
          sub_2261AC9D4(v176, v146, type metadata accessor for AppUUID);
          v147 = MEMORY[0x277CC9318];
          nullsub_1(MEMORY[0x277CC9318]);
          sub_2261DD794(&v192, v147, &error);

          __swift_destroy_boxed_opaque_existential_0(&v192);
          v154 = error;
          v155 = v189;
          if (BYTE1(v189) != 1)
          {
            if (*(&error + 1) >> 60 == 15)
            {
              v162 = *(&error + 1);
              LODWORD(v170) = v189;
              v163 = error;
              v148 = sub_2261E3FFC();
              *&v192 = 0;
              *(&v192 + 1) = 0xE000000000000000;
              sub_2261E410C();

              *&v187 = 0xD000000000000027;
              *(&v187 + 1) = 0x80000002261EC090;
              v149 = v176;
              MEMORY[0x22AA782B0](*&v176[*(v171 + 20)], *&v176[*(v171 + 20) + 8]);
              MEMORY[0x22AA782B0](8236, 0xE200000000000000);
              v150 = *&v186[v166];

              sub_22619C448(&v192, v151);

              error = v192;
              v189 = v193;
              v190 = v194;
              v152 = sub_2261E3E3C();
              MEMORY[0x22AA782B0](v152);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v148, v187, *(&v187 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 144);

              v153 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
              (v184)(0, 0, 0, 0, v153);

              sub_2261ACA3C(v163, v162, v170);
              sub_2261795CC(v182, v173, v178, 0);
              v137 = v149;
              goto LABEL_36;
            }

            sub_22619D8F4(error, *(&error + 1));
            v164 = sub_2261E400C();
            sub_2261A4EAC(v164, 0xD000000000000023, 0x80000002261EC0E0, 0xD000000000000061, v183 | 0x8000000000000000, 149);
            sub_2261B5424(v154, *(&v154 + 1), v155, 0, sub_2261A28B8, sub_22619C830);
            sub_2261B5424(v154, *(&v154 + 1), v155, 0, sub_2261A28B8, sub_22619C830);
            v142 = v184;
            v139 = v181;
            v125 = v182;
LABEL_50:
            v165 = sub_2261E3C1C();
            v142(v165);

            sub_2261795CC(v125, v173, v178, 0);
            sub_2261AC974(v176, type metadata accessor for AppUUID);
            (*(v180 + 8))(v139, v179);
            goto LABEL_51;
          }

          sub_22619C838();
          v156 = sub_2261E3FFC();
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v187 = v192;
          MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC110);
          v192 = v154;
          LOBYTE(v193) = v155 & 1;
          sub_2261E413C();
          sub_2261B5424(v154, *(&v154 + 1), v155, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v157 = v176;
          MEMORY[0x22AA782B0](*&v176[*(v171 + 20)], *&v176[*(v171 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v171 = v154;
          v158 = *&v186[v166];

          sub_22619C448(&v192, v159);

          error = v192;
          v189 = v193;
          v190 = v194;
          v160 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v160);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v156, v187, *(&v187 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 137);

          v161 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
          (v184)(0, 0, 0, 0, v161);

          sub_2261B5424(v171, *(&v154 + 1), v155, 1, sub_2261A28B8, sub_22619C830);
          sub_2261795CC(v182, v173, v178, 0);
          v121 = v157;
        }

        else
        {
          v143 = v184;
          v144 = *(&error + 1);
          v115 = sub_2261E3FFC();
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v187 = 0xD000000000000027;
          *(&v187 + 1) = 0x80000002261EC020;
          v116 = v176;
          MEMORY[0x22AA782B0](*&v176[*(v171 + 20)], *&v176[*(v171 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v117 = *&v186[v166];

          sub_22619C448(&v192, v118);

          error = v192;
          v189 = v193;
          v190 = v194;
          v119 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v119);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v115, v187, *(&v187 + 1), 0xD000000000000061, v183 | 0x8000000000000000, 126);

          v120 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
          v143(0, 0, 0, 0, v120);

          sub_2261AC95C(0, v144, v126);
          v121 = v116;
        }

        sub_2261AC974(v121, type metadata accessor for AppUUID);
        (*(v180 + 8))(v181, v179);
        sub_2261AC974(v174, type metadata accessor for Key);
        goto LABEL_15;
      }

      v124 = v73;
    }

    v84 = v169;
    goto LABEL_27;
  }

  v35 = sub_2261E3FFC();
  sub_2261A4EAC(v35, 0xD000000000000015, 0x80000002261EC1D0, 0xD000000000000061, 0x80000002261EBE30, 41);
  v186 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
  (a3)(0, 0, 0, 0);
  v36 = *MEMORY[0x277D85DE8];
  v37 = v186;
}

uint64_t sub_2261AC2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  if (!a2)
  {
    v17 = sub_2261E3FEC();
    sub_2261A4EAC(v17, 0xD000000000000013, 0x80000002261ED0D0, 0xD000000000000061, 0x80000002261EBE30, 655);
    v18 = sub_2261E3C3C();
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }

  v59 = a1;
  v82 = a3;

  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619B27C();
  if (v4)
  {
  }

  v19 = v13;
  v20 = v14;
  v21 = v15;

  if ((v21 & 0x100) != 0)
  {

    v60 = v19;
    v61 = v20;
    v27 = v21 & 1;
    v62 = v21 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v28 = v19;
    *(v28 + 8) = v20;
LABEL_10:
    *(v28 + 16) = v27;
    return result;
  }

  if (!v20)
  {

    v29 = sub_2261E3FEC();
    v30 = 0xD000000000000038;
    v31 = 0x80000002261ED0F0;
    v32 = 662;
LABEL_20:
    sub_2261A4EAC(v29, v30, v31, 0xD000000000000061, 0x80000002261EBE30, v32);
    v48 = sub_2261E3C3C();
    return (*(*(v48 - 8) + 56))(v82, 1, 1, v48);
  }

  v54 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
  v22 = *(v5 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  sub_22619B9B8(v19, v20, v63);
  v55 = v63[0];
  v56 = v63[1];
  v53 = v63[3];
  v57 = v63[4];
  v58 = v63[2];
  sub_22619C81C(v19, v20, v21, 0);

  if (v64)
  {

    v24 = v55;
    v23 = v56;
    v60 = v55;
    v61 = v56;
    v25 = v58 & 1;
    v62 = v58 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v26 = v24;
    *(v26 + 8) = v23;
    *(v26 + 16) = v25;
    return result;
  }

  v77[0] = v55;
  v78 = v56;
  v79 = v58;
  v33 = v54;
  v80 = v53;
  v81 = v57;
  v34 = *(v5 + v54);

  LODWORD(v56) = sub_22619C400();

  v35 = *(v5 + v33);

  sub_22619C448(v65, v36);

  if (*(&v65[0] + 1) == 1)
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v69 = v65[0];
    v70 = v65[1];
    v71 = v65[2];
    v37 = sub_2261A54B0();
    v38 = v39;
    v72 = v69;
    sub_22619A7B4(&v72, &qword_27D78DE20, &unk_2261E6280);
    v73 = v70;
    sub_22619A7B4(&v73, &qword_27D78DE20, &unk_2261E6280);
    v74 = v71;
    v33 = v54;
    sub_22619A7B4(&v74, &qword_27D78DE20, &unk_2261E6280);
  }

  sub_22619C49C(v56, v37, v38, v59, a2, v66);
  v40 = *(v5 + v33);

  v58 = sub_22619ACB0(v77, v66);
  v59 = v41;
  v43 = v42;

  v76 = v67;
  sub_22619A7B4(&v76, &qword_27D78DE20, &unk_2261E6280);
  v75 = v68;
  sub_22619A7B4(&v75, &qword_27D78DE20, &unk_2261E6280);

  if ((v43 & 0x100) != 0)
  {
    v50 = v58;
    v49 = v59;
    v60 = v58;
    v61 = v59;
    v27 = v43 & 1;
    v62 = v43 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v28 = v50;
    *(v28 + 8) = v49;
    goto LABEL_10;
  }

  v44 = v58;
  if (!v59)
  {
LABEL_19:
    v29 = sub_2261E3FEC();
    v30 = 0xD00000000000005BLL;
    v31 = 0x80000002261ED130;
    v32 = 671;
    goto LABEL_20;
  }

  v45 = v59;
  sub_2261E3C0C();
  sub_22619C81C(v44, v45, v43, 0);
  v46 = sub_2261E3C3C();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v12, 1, v46) == 1)
  {
    sub_22619A7B4(v12, &qword_27D78DF28, &unk_2261E6FD0);
    goto LABEL_19;
  }

  v51 = v82;
  (*(v47 + 32))(v82, v12, v46);
  return (*(v47 + 56))(v51, 0, 1, v46);
}

void sub_2261AC95C(void *a1, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    sub_2261795CC(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_2261AC974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2261AC9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2261ACA3C(uint64_t result, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_2261B5424(result, a2, a3, HIBYTE(a3) & 1, sub_2261A28B8, sub_22619C830);
  }

  return result;
}

void AppAttestHandler.attestKey(with:credential:clientDataHash:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void, unint64_t, unint64_t), uint64_t a8)
{
  v278 = a7;
  v279 = a8;
  v276 = a5;
  v277 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v272 = &v248 - v13;
  v14 = sub_2261E3CDC();
  v15 = *(v14 - 8);
  v274 = v14;
  v275 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v248 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v273 = &v248 - v20;
  v21 = type metadata accessor for Key(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v248 - v27;
  v29 = sub_2261E3C3C();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v32 = MEMORY[0x28223BE20](v31);
  v39 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v39 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_16;
  }

  v40 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    goto LABEL_16;
  }

  v41 = v277 >> 62;
  if ((v277 >> 62) > 1)
  {
    if (v41 != 2 || *(v276 + 16) == *(v276 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v41)
  {
    if (v276 == v276 >> 32)
    {
LABEL_16:
      v46 = sub_2261E3FFC();
      sub_2261A4EAC(v46, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 166);
      v47 = 0x80000002261EC1F0;
      v48 = 1;
      v49 = 0xD000000000000013;
LABEL_17:
      v277 = sub_2261A9CDC(v48, v49, v47);
      v278(0, 0xF000000000000000, v277);
      v50 = v277;

      return;
    }
  }

  else if ((v277 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v261 = v34;
  v262 = v33;
  v269 = v38;
  v270 = v37;
  v265 = v24;
  v266 = &v248 - v35;
  v267 = v36;
  v268 = v32;
  v271 = v8;
  sub_2261AA444();
  v42 = sub_22619DFA0();

  v43 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v42 & 1) == 0)
  {
    v51 = sub_2261E3FFC();
    v307.n128_u64[0] = 0;
    v307.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v269, v270);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v52 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v52);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v51, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 172);

    v49 = 0xD000000000000020;
    v47 = 0x80000002261EBEA0;
    v48 = 3;
    goto LABEL_17;
  }

  LODWORD(v260) = sub_2261E400C();
  v307.n128_u64[0] = 0;
  v307.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v280 = v307;
  v259 = 0xD00000000000001CLL;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v269, v270);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v44 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(v293, v44);

  v307 = v293[0];
  v308 = v293[1];
  v309 = v293[2];
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v45 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v45);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v263 = "n is ineligible. { clientUUID=";
  v264 = v43;
  sub_2261A4EAC(v260, v280, *(&v280 + 1), 0xD000000000000061, 0x80000002261EBE30, 177);

  sub_2261AC2DC(a1, a2, v28);
  v53 = v267;
  if ((*(v267 + 48))(v28, 1, v268) != 1)
  {
    v66 = *(v53 + 32);
    v65 = v53 + 32;
    v260 = v66;
    v66(v266, v28, v268);
    if (sub_2261E3C1C() == a1 && v67 == a2)
    {
    }

    else
    {
      v68 = sub_2261E425C();

      if ((v68 & 1) == 0)
      {
        v97 = sub_2261E3FFC();
        v307.n128_u64[0] = 0;
        v307.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v295 = v307;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v98 = v266;
        v99 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v99);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v269, v270);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v100 = *&v271[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

        sub_22619C448(&v307, v101);

        v280 = v307;
        v281 = v308;
        v282 = v309;
        v102 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v102);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v97, v295.n128_i64[0], v295.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 187);

        v103 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v278(0, 0xF000000000000000, v103);

        (*(v267 + 8))(v98, v268);
        return;
      }
    }

    v257 = v65;
    v69 = sub_2261E400C();
    v307.n128_u64[0] = 0;
    v307.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v70 = v266;
    v71 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v71);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v72 = v271;
    sub_2261A4EAC(v69, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 192);

    v73 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
    v74 = *&v72[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

    v75 = sub_22619C044();

    v76 = *(v267 + 16);
    v77 = v262;
    v78 = v70;
    v79 = v267 + 16;
    v76(v262, v78, v268);
    v80 = v270;

    v81 = v75 & 1;
    v82 = v265;
    sub_2261C3918(v81, v77, 0, v269, v80, v265);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v308 + 1) = v21;
    v309.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v307);
    sub_2261AC9D4(v82, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v307, v84, &v280);
    v256 = v76;

    sub_22619A7B4(&v307, &qword_27D78DFD0, &qword_2261E6FF0);
    v89 = v280;
    v90 = v281;
    if (BYTE1(v281) == 1)
    {
      sub_22619C838();
      v91 = sub_2261E3FFC();
      v307.n128_u64[0] = 0;
      v307.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      *&v280 = 0xD00000000000001DLL;
      *(&v280 + 1) = 0x80000002261EC6B0;
      v307 = v89;
      LOBYTE(v308) = v90 & 1;
      sub_22619C7B4();
      v92 = sub_2261E429C();
      v94 = v93;
      sub_2261795CC(v89, *(&v89 + 1), v90, 1);
      MEMORY[0x22AA782B0](v92, v94);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v86 = v266;
      v95 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v95);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v91, v280, *(&v280 + 1), 0xD000000000000061, v263 | 0x8000000000000000, 198);

      v96 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v278(0, 0xF000000000000000, v96);

      sub_2261795CC(v89, *(&v89 + 1), v90, 1);
      goto LABEL_33;
    }

    v251 = v79;
    v104 = v259;
    if (!v280)
    {
      v85 = sub_2261E3FFC();
      v307.n128_u64[0] = 0;
      v307.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v307.n128_u64[0] = v104;
      v307.n128_u64[1] = 0x80000002261EC3E0;
      v86 = v266;
      v87 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v87);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v85, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 205);

      v88 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v278(0, 0xF000000000000000, v88);

      sub_2261AC95C(0, *(&v89 + 1), v90);
LABEL_33:
      sub_2261AC974(v265, type metadata accessor for Key);
      (*(v267 + 8))(v86, v268);
      return;
    }

    v105 = v275;
    v106 = *(v275 + 16);
    v259 = v73;
    v107 = v273;
    v106(v273, &v271[v264], v274);
    v253 = v89;
    v108 = v89;
    v252 = sub_2261E400C();
    v307.n128_u64[0] = 0;
    v307.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
    v109 = sub_2261C9E2C();
    if (v110)
    {
      v111 = v110;
    }

    else
    {
      v109 = 7104878;
      v111 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v109, v111);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v252, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 210);

    (*(v105 + 8))(v107, v274);
    v112 = *&v271[v259];

    LODWORD(v275) = sub_22619C044();

    v113 = sub_2261E3C1C();
    v115 = v114;
    v116 = sub_2261C9E2C();
    v255 = v90;
    v254 = *(&v89 + 1);
    v250 = v108;
    if (v117)
    {
      v118 = v116;
      v119 = v117;
    }

    else
    {
      v119 = v270;

      v118 = v269;
    }

    v120 = swift_allocObject();
    v307.n128_u8[0] = 0;
    sub_2261C378C(v275 & 1, 0, v113, v115, v118, v119, v294);
    v121 = v294[1];
    *(v120 + 16) = v294[0];
    *(v120 + 32) = v121;
    *(v120 + 48) = v294[2];
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v122 = *(v120 + 16);
    v123 = *(v120 + 20);
    v124 = *(v120 + 24);
    v126 = *(v120 + 32);
    v125 = *(v120 + 40);
    v275 = v120;
    v127 = *(v120 + 48);
    v128 = *(v120 + 56);
    *(&v308 + 1) = &type metadata for AssertionCounter;
    v309.n128_u64[0] = &off_28395C888;
    v129 = swift_allocObject();
    v307.n128_u64[0] = v129;
    *(v129 + 16) = v122;
    *(v129 + 20) = v123;
    *(v129 + 24) = v124;
    *(v129 + 32) = v126;
    *(v129 + 40) = v125;
    *(v129 + 48) = v127;
    *(v129 + 56) = v128;

    sub_2261A8A9C(&v307, MEMORY[0x277D83B88], &v280);

    sub_22619A7B4(&v307, &qword_27D78DFD0, &qword_2261E6FF0);
    v139 = v280;
    if (BYTE1(v281) == 1)
    {
      v140 = v281;
      v141 = sub_2261E3FFC();
      v307.n128_u64[0] = 0;
      v307.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v295 = v307;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC650);
      v307 = v139;
      LOBYTE(v308) = v140 & 1;
      sub_22619C7B4();
      v142 = sub_2261E429C();
      v144 = v143;
      sub_226179098(v139, *(&v139 + 1), v140, 1);
      MEMORY[0x22AA782B0](v142, v144);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v131 = v266;
      v145 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v145);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v146 = *&v271[v259];

      sub_22619C448(&v307, v147);

      v280 = v307;
      v281 = v308;
      v282 = v309;
      v148 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v148);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v141, v295.n128_i64[0], v295.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 217);

      v136 = 0xD000000000000027;
      v137 = 0x80000002261EC680;
      v138 = 0;
    }

    else
    {
      v156 = v263;
      if ((BYTE8(v280) & 1) == 0 && v280 <= 1)
      {
        v157 = sub_2261E400C();
        v307.n128_u64[0] = 0;
        v307.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000005CLL, 0x80000002261EC4B0);
        *&v280 = v139;
        v158 = sub_2261E423C();
        MEMORY[0x22AA782B0](v158);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v159 = v271;
        sub_2261A4EAC(v157, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, v156 | 0x8000000000000000, 230);

        v160 = *&v159[v259];

        v161 = sub_22619C044();

        v295.n128_u8[0] = v161 & 1;
        LOBYTE(v297) = 0;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        v162 = v275;
        if (*&v307 == v280)
        {

          v163 = v250;
          v164 = sub_2261CDB98();
        }

        else
        {
          v165 = sub_2261E425C();

          v163 = v250;
          if (v165)
          {
            v164 = sub_2261CDB98();
          }

          else
          {
            v164 = sub_2261CDAC8();
          }
        }

        v167 = *v164;
        v166 = v164[1];
        sub_22619D8F4(*v164, v166);
        v168 = sub_2261CDBE8();
        v169 = v162[2];
        v315[0] = v162[1];
        v315[1] = v169;
        v170 = v162[2];
        v315[2] = v162[3];
        v171 = *v168;
        v172 = v162[3];
        v316 = v170;
        v317[0] = v172;
        sub_2261790A8(v253, v254, v255, 0);
        sub_2261AF3FC(&v316, &v307);
        sub_2261AF3FC(v317, &v307);
        sub_2261CD7CC(v167, v166, v171, v315, v163, &v295);
        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
        v173 = sub_2261CBA0C(1, &v295);
        LODWORD(v167) = v174;
        v273 = v173;
        v274 = v175;

        v252 = v167;
        if ((v167 & 0x100) != 0)
        {
          v193 = v252;
          v194 = v252 & 1;
          v195 = v273;
          v196 = v274;
          sub_22619C838();
          v197 = sub_2261E3FFC();
          v307.n128_u64[0] = 0;
          v307.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v297 = v307;
          MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
          v307.n128_u64[0] = v195;
          v307.n128_u64[1] = v196;
          LOBYTE(v308) = v194;
          sub_2261E413C();
          sub_2261B5424(v195, v196, v193, 1, sub_22619C840, sub_22619C830);
          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v198 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v198);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v199 = *&v271[v259];

          sub_22619C448(&v307, v200);

          v280 = v307;
          v281 = v308;
          v282 = v309;
          v201 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v201);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v197, v297, *(&v297 + 1), 0xD000000000000061, v263 | 0x8000000000000000, 240);

          v202 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
          v278(0, 0xF000000000000000, v202);

          sub_2261AF4E8(&v295);
          sub_2261B5424(v195, v196, v193, 1, sub_22619C840, sub_22619C830);
          v204 = v253;
          v203 = v254;
          v205 = v255;
          sub_2261795CC(v253, v254, v255, 0);
          sub_2261795CC(v204, v203, v205, 0);
          sub_2261AC974(v265, type metadata accessor for Key);
          (*(v267 + 8))(v266, v268);
          goto LABEL_48;
        }

        sub_22619D8F4(v273, v274);
        v176 = sub_2261E400C();
        v307.n128_u64[0] = 0;
        v307.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        v307.n128_u64[0] = 0xD00000000000002CLL;
        v307.n128_u64[1] = 0x80000002261EC570;
        v177 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v177);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v178 = v271;
        sub_2261A4EAC(v176, v307.n128_i64[0], v307.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 252);

        v179 = *&v178[v259];

        sub_22619C448(v296, v180);

        if (*(&v296[0] + 1) == 1)
        {
          goto LABEL_61;
        }

        v301 = v296[0];
        v302 = v296[1];
        v303 = v296[2];
        v249 = sub_2261A54B0();
        v182 = v181;
        v304 = v301;
        sub_22619A7B4(&v304, &qword_27D78DE20, &unk_2261E6280);
        v305 = v302;
        sub_22619A7B4(&v305, &qword_27D78DE20, &unk_2261E6280);
        v306 = v303;
        sub_22619A7B4(&v306, &qword_27D78DE20, &unk_2261E6280);
        if (!v182)
        {
LABEL_61:
          v206 = sub_2261E3FFC();
          v307.n128_u64[0] = 0;
          v307.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();

          *&v297 = 0xD00000000000001ELL;
          *(&v297 + 1) = 0x80000002261EC5A0;
          v131 = v266;
          v207 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v207);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v208 = *&v271[v259];

          sub_22619C448(&v307, v209);

          v280 = v307;
          v281 = v308;
          v282 = v309;
          v210 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v210);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v206, v297, *(&v297 + 1), 0xD000000000000061, v263 | 0x8000000000000000, 256);

          v211 = sub_2261A9CDC(0, 0xD000000000000016, 0x80000002261EBBB0);
          v278(0, 0xF000000000000000, v211);
          sub_2261AF4E8(&v295);

          v213 = v273;
          v212 = v274;
          v214 = v252;
          sub_2261B5424(v273, v274, v252, 0, sub_22619C840, sub_22619C830);
          v216 = v253;
          v215 = v254;
          v217 = v255;
          sub_2261795CC(v253, v254, v255, 0);
        }

        else
        {
          v183 = *&v271[v259];

          v184 = sub_22619C044();

          sub_2261790A8(v253, v254, v255, 0);
          v185 = v273;
          v186 = v274;
          sub_2261B5424(v273, v274, v252, 0, sub_22619D8F4, sub_22619C838);
          v187 = v276;
          v188 = v277;
          sub_22619D8F4(v276, v277);
          sub_2261D02A8(0, v184 & 1, v249, v182, v163, v185, v186, v187, &v297, v188);
          v189 = sub_2261AF53C();
          *(&v289 + 1) = &type metadata for AppAttestationRequestContext;
          *&v290 = sub_2261AF5C4();
          v190 = swift_allocObject();
          *&v288 = v190;
          v191 = v298;
          v190[1] = v297;
          v190[2] = v191;
          v192 = v300;
          v190[3] = v299;
          v190[4] = v192;
          sub_2261AF618(&v297, &v307);
          sub_2261D4738(&v288, &v280);

          __swift_destroy_boxed_opaque_existential_0(&v288);
          if (BYTE8(v282))
          {
            v307 = v280;
            LOBYTE(v308) = v281;
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            sub_22619C830();
          }

          else
          {
            sub_2261795DC(&v280, &v292);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
            if (swift_dynamicCast())
            {
              v311 = v284;
              v312 = v285;
              v313 = v286;
              v314 = v287;
              v307 = v280;
              v308 = v281;
              v309 = v282;
              v310 = v283;
              v218 = sub_2261E3FAC();
              v219 = v272;
              (*(*(v218 - 8) + 56))(v272, 1, 1, v218);
              v220 = v262;
              v221 = v268;
              v256(v262, v266, v268);
              v222 = *(v267 + 80) & 0xF8;
              v223 = (v261 + 263) & 0xFFFFFFFFFFFFFFF8;
              v224 = swift_allocObject();
              *(v224 + 16) = 0;
              *(v224 + 24) = 0;
              v225 = v271;
              *(v224 + 32) = v271;
              v226 = v312;
              *(v224 + 104) = v311;
              *(v224 + 120) = v226;
              *(v224 + 136) = v313;
              *(v224 + 152) = v314;
              v227 = v308;
              *(v224 + 40) = v307;
              *(v224 + 56) = v227;
              v228 = v310;
              *(v224 + 72) = v309;
              *(v224 + 88) = v228;
              v229 = v300;
              *(v224 + 192) = v299;
              *(v224 + 208) = v229;
              v230 = v298;
              *(v224 + 160) = v297;
              *(v224 + 176) = v230;
              v231 = v279;
              *(v224 + 224) = v278;
              *(v224 + 232) = v231;
              v232 = v270;
              *(v224 + 240) = v269;
              *(v224 + 248) = v232;
              v260(v224 + 256, v220, v221);
              *(v224 + v223) = v275;

              sub_2261AF618(&v297, &v280);
              v233 = v225;

              sub_2261B0BA4(0, 0, v219, &unk_2261E7008, v224);
              sub_2261AF4E8(&v295);

              v234 = v273;
              v235 = v274;
              LOBYTE(v219) = v252;
              sub_2261B5424(v273, v274, v252, 0, sub_22619C840, sub_22619C830);
              v237 = v253;
              v236 = v254;
              v238 = v255;
              sub_2261795CC(v253, v254, v255, 0);
              sub_2261AF6C8(&v297);
              sub_2261B5424(v234, v235, v219, 0, sub_22619C840, sub_22619C830);
              sub_2261795CC(v237, v236, v238, 0);
              sub_2261AC974(v265, type metadata accessor for Key);
              (*(v267 + 8))(v266, v268);
              goto LABEL_48;
            }
          }

          v239 = sub_2261E3FFC();
          v307.n128_u64[0] = 0;
          v307.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v291 = v307;
          MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC5C0);
          v280 = v297;
          v281 = v298;
          v282 = v299;
          v283 = v300;
          sub_2261AF618(&v297, &v307);
          sub_2261AF674();
          v240 = sub_2261E423C();
          v242 = v241;
          v307 = v280;
          v308 = v281;
          v309 = v282;
          v310 = v283;
          sub_2261AF6C8(&v307);
          MEMORY[0x22AA782B0](v240, v242);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v131 = v266;
          v243 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v243);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v244 = *&v271[v259];

          sub_22619C448(&v280, v245);

          v288 = v280;
          v289 = v281;
          v290 = v282;
          v246 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v246);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v239, v291.n128_i64[0], v291.n128_u64[1], 0xD000000000000061, v263 | 0x8000000000000000, 270);

          v247 = sub_2261A9CDC(0, 0xD000000000000025, 0x80000002261EC5F0);
          v278(0, 0xF000000000000000, v247);
          sub_2261AF4E8(&v295);

          v213 = v273;
          v212 = v274;
          v214 = v252;
          sub_2261B5424(v273, v274, v252, 0, sub_22619C840, sub_22619C830);
          v216 = v253;
          v215 = v254;
          v217 = v255;
          sub_2261795CC(v253, v254, v255, 0);
          sub_2261AF6C8(&v297);
        }

        sub_2261B5424(v213, v212, v214, 0, sub_22619C840, sub_22619C830);
        v153 = v216;
        v154 = v215;
        v155 = v217;
LABEL_47:
        sub_2261795CC(v153, v154, v155, 0);
        sub_2261AC974(v265, type metadata accessor for Key);
        (*(v267 + 8))(v131, v268);
LABEL_48:

        return;
      }

      v130 = sub_2261E3FFC();
      v307.n128_u64[0] = 0;
      v307.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v295.n128_u64[0] = 0xD000000000000027;
      v295.n128_u64[1] = 0x80000002261EC450;
      v131 = v266;
      v132 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v132);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v133 = *&v271[v259];

      sub_22619C448(&v307, v134);

      v280 = v307;
      v281 = v308;
      v282 = v309;
      v135 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v135);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v130, v295.n128_i64[0], v295.n128_u64[1], 0xD000000000000061, v156 | 0x8000000000000000, 225);

      v136 = 0xD000000000000028;
      v137 = 0x80000002261EC480;
      v138 = 1;
    }

    v149 = sub_2261A9CDC(v138, v136, v137);
    v278(0, 0xF000000000000000, v149);

    v151 = v253;
    v150 = v254;
    v152 = v255;
    sub_2261795CC(v253, v254, v255, 0);
    v153 = v151;
    v154 = v150;
    v155 = v152;
    goto LABEL_47;
  }

  sub_22619A7B4(v28, &qword_27D78DF28, &unk_2261E6FD0);
  v54 = v274;
  v55 = v271;
  (*(v275 + 16))(v19, &v271[v264], v274);
  v56 = sub_2261E3FFC();
  v307.n128_u64[0] = 0;
  v307.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v301 = v307;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v269, v270);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v57 = *&v55[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

  sub_22619C448(&v280, v58);

  v59 = 0;
  v60 = 0;
  v61 = v263;
  if (*(&v280 + 1) != 1)
  {
    v307 = v280;
    v308 = v281;
    v309 = v282;
    v59 = sub_2261A5660();
    v60 = v62;
    v315[0] = v307;
    sub_22619A7B4(v315, &qword_27D78DE20, &unk_2261E6280);
    v297 = v308;
    sub_22619A7B4(&v297, &qword_27D78DE20, &unk_2261E6280);
    v295 = v309;
    sub_22619A7B4(&v295, &qword_27D78DE20, &unk_2261E6280);
  }

  *&v296[0] = v59;
  *(&v296[0] + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v63 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v63);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v56, v301.n128_i64[0], v301.n128_u64[1], 0xD000000000000061, v61 | 0x8000000000000000, 181);

  (*(v275 + 8))(v19, v54);
  v64 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v278(0, 0xF000000000000000, v64);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2261AF3A8()
{
  result = qword_28136E8B0;
  if (!qword_28136E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E8B0);
  }

  return result;
}

uint64_t sub_2261AF458(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void, void, void, void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    a2();
    v8 = v3;
    v6 = a3(*(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    v9 = *(v3 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

id sub_2261AF53C()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager);
  }

  else
  {
    type metadata accessor for AttestationManager(0);
    v4 = v0;
    v5 = sub_2261D4654(*(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t sub_2261AF5C4()
{
  result = qword_28136EA10;
  if (!qword_28136EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA10);
  }

  return result;
}

unint64_t sub_2261AF674()
{
  result = qword_28136EA18;
  if (!qword_28136EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA18);
  }

  return result;
}

uint64_t sub_2261AF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1592) = v12;
  *(v8 + 1584) = v11;
  *(v8 + 1568) = v10;
  *(v8 + 1560) = a8;
  *(v8 + 1552) = a7;
  *(v8 + 1544) = a6;
  *(v8 + 1536) = a5;
  *(v8 + 1528) = a4;
  return MEMORY[0x2822009F8](sub_2261AF764, 0, 0);
}

uint64_t sub_2261AF764()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1528);
  *(v0 + 1600) = sub_2261AF53C();
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v6;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *(v0 + 128) = *(v2 + 112);
  *(v0 + 96) = v8;
  *(v0 + 112) = v9;
  *(v0 + 80) = v7;
  *(v0 + 1272) = &type metadata for AppAttestationRequestContext;
  *(v0 + 1280) = sub_2261AF5C4();
  v10 = swift_allocObject();
  *(v0 + 1248) = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v10[3] = v1[2];
  v10[4] = v11;
  v10[1] = v13;
  v10[2] = v12;
  sub_2261AF618(v1, v0 + 432);
  v14 = swift_task_alloc();
  *(v0 + 1608) = v14;
  v15 = sub_2261C336C();
  sub_2261C33C0();
  *v14 = v0;
  v14[1] = sub_2261AF8B8;

  return sub_2261D5624(v0 + 216, v0 + 16, v0 + 1248, &type metadata for AppAttestationRequest, &type metadata for AppAttestationObjectContext, v15);
}

uint64_t sub_2261AF8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1608);
  v6 = *v1;
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v4 = sub_2261B0A44;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 1248));
    v4 = sub_2261AF9E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2261AF9E4()
{
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 193) = *(v0 + 273);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 184) = *(v0 + 264);
  if (*(v0 + 208))
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v3 = *(v0 + 152);
    v125 = *(v0 + 1528);
    sub_2261C3414(v2, v1, v3);
    v4 = sub_2261E3FFC();
    sub_2261E410C();

    *(v0 + 1472) = v2;
    *(v0 + 1480) = v1;
    *(v0 + 1488) = v3;
    sub_2261C3440();
    v5 = sub_2261E429C();
    MEMORY[0x22AA782B0](v5);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v4, 0xD000000000000027, 0x80000002261ED0A0, 0xD000000000000061, 0x80000002261EBE30, 279);

    v6 = *(v0 + 1560);
    v7 = *(v0 + 1552);
    sub_2261E410C();

    if ((v3 & 0xC0) == 0x40)
    {
      MEMORY[0x22AA782B0](v2, v1);
      sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v8 = sub_2261A9CDC(5, 0xD000000000000027, 0x80000002261ED0A0);

      v7(0, 0xF000000000000000, v8);
    }

    else
    {
      *(v0 + 1496) = v2;
      *(v0 + 1504) = v1;
      *(v0 + 1512) = v3;
      v37 = sub_2261E429C();
      v39 = v38;
      sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);
      MEMORY[0x22AA782B0](v37, v39);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v40 = sub_2261A9CDC(6, 0xD000000000000027, 0x80000002261ED0A0);

      v7(0, 0xF000000000000000, v40);
    }

    v9 = v0 + 136;
    goto LABEL_10;
  }

  v10 = *(v0 + 152);
  if (!v10)
  {
    v41 = *(v0 + 1560);
    v42 = *(v0 + 1552);
    v43 = *(v0 + 1528);
    v44 = sub_2261E3FFC();
    sub_2261A4EAC(v44, 0xD00000000000002BLL, 0x80000002261ECF10, 0xD000000000000061, 0x80000002261EBE30, 292);
    v45 = sub_2261A9CDC(0, 0xD00000000000002BLL, 0x80000002261ECF10);
    v42(0, 0xF000000000000000, v45);

    v9 = v0 + 136;
LABEL_10:
    sub_22619A7B4(v9, &qword_27D78E058, &unk_2261E7070);
    goto LABEL_11;
  }

  v11 = *(v0 + 1616);
  v12 = *(v0 + 1528);
  *(v0 + 296) = *(v0 + 216);
  *(v0 + 312) = v10;
  v13 = *(v0 + 256);
  *(v0 + 320) = *(v0 + 240);
  *(v0 + 336) = v13;
  *(v0 + 352) = *(v0 + 272);
  sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationCborManager, type metadata accessor for AttestationCBORManager, sub_2261E3160);
  v14 = sub_2261E2560((v0 + 296));
  if (v11)
  {
    v16 = *(v0 + 1584);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1568);
    v123 = *(v0 + 1552);
    v126 = *(v0 + 1560);
    v19 = *(v0 + 1544);
    v118 = *(v0 + 1528);

    v120 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000004CLL, 0x80000002261ECF40);
    swift_getErrorValue();
    v20 = *(v0 + 1328);
    v21 = *(v0 + 1336);
    v22 = *(v0 + 1344);
    v23 = sub_2261E429C();
    MEMORY[0x22AA782B0](v23);

    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v18, v17);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v24 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v24);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v25 = *v19;
    v26 = v19[1];
    v27 = v19[3];
    *(v0 + 656) = v19[2];
    *(v0 + 672) = v27;
    *(v0 + 624) = v25;
    *(v0 + 640) = v26;
    sub_2261AF618(v19, v0 + 688);
    sub_2261AF674();
    v28 = sub_2261E423C();
    v30 = v29;
    v31 = *(v0 + 640);
    *(v0 + 496) = *(v0 + 624);
    *(v0 + 512) = v31;
    v32 = *(v0 + 672);
    *(v0 + 528) = *(v0 + 656);
    *(v0 + 544) = v32;
    sub_2261AF6C8(v0 + 496);
    MEMORY[0x22AA782B0](v28, v30);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v33 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448((v0 + 1104), v33);

    v34 = *(v0 + 1120);
    *(v0 + 1056) = *(v0 + 1104);
    *(v0 + 1072) = v34;
    *(v0 + 1088) = *(v0 + 1136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v35 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v35);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v120, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 301);

    v36 = sub_2261A9CDC(0, 0xD000000000000043, 0x80000002261ECF90);
    v123(0, 0xF000000000000000, v36);
    sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);

    goto LABEL_11;
  }

  v124 = v14;
  v127 = v15;
  v48 = *(v0 + 1592);
  v49 = *(v0 + 1528);

  swift_beginAccess();
  *(v48 + 20) = 1;
  *(v48 + 24) = 0;
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
  swift_beginAccess();
  v50 = *(v48 + 16);
  v51 = *(v48 + 20);
  v52 = *(v48 + 24);
  v54 = *(v48 + 32);
  v53 = *(v48 + 40);
  v55 = *(v48 + 48);
  v56 = *(v48 + 56);
  *(v0 + 1312) = &type metadata for AssertionCounter;
  *(v0 + 1320) = &off_28395C888;
  v57 = swift_allocObject();
  *(v0 + 1288) = v57;
  *(v57 + 16) = v50;
  *(v57 + 20) = v51;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = v53;
  *(v57 + 48) = v55;
  *(v57 + 56) = v56;

  v58 = MEMORY[0x277CC9318];
  nullsub_1(MEMORY[0x277CC9318]);
  sub_2261A5998(v0 + 1288, v58, (v0 + 1424));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1288));
  v78 = *(v0 + 1424);
  v79 = *(v0 + 1440);
  if (*(v0 + 1441) == 1)
  {
    v80 = *(v0 + 1584);
    v81 = *(v0 + 1576);
    v82 = *(v0 + 1568);
    v113 = *(v0 + 1552);
    v116 = *(v0 + 1560);
    v83 = *(v0 + 1544);
    v111 = *(v0 + 1528);
    v84 = *(v0 + 1424);
    v85 = *(v0 + 1432);
    sub_22619C838();
    v110 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261ECFE0);
    MEMORY[0x22AA782B0](v82, v81);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v86 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v86);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v87 = *v83;
    v88 = v83[1];
    v89 = v83[3];
    *(v0 + 400) = v83[2];
    *(v0 + 416) = v89;
    *(v0 + 368) = v87;
    *(v0 + 384) = v88;
    sub_2261AF618(v83, v0 + 560);
    sub_2261AF674();
    v90 = sub_2261E423C();
    v92 = v91;
    v93 = *(v0 + 384);
    *(v0 + 944) = *(v0 + 368);
    *(v0 + 960) = v93;
    v94 = *(v0 + 416);
    *(v0 + 976) = *(v0 + 400);
    *(v0 + 992) = v94;
    sub_2261AF6C8(v0 + 944);
    MEMORY[0x22AA782B0](v90, v92);

    MEMORY[0x22AA782B0](0x3D726F727265202CLL, 0xE800000000000000);
    *(v0 + 1448) = v84;
    *(v0 + 1456) = v85;
    *(v0 + 1464) = v79 & 1;
    sub_22619C7B4();
    v95 = sub_2261E429C();
    v97 = v96;
    sub_2261B5424(v84, v85, v79, 1, sub_2261A28B8, sub_22619C830);
    MEMORY[0x22AA782B0](v95, v97);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v110, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 309);

    v98 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261ED020);
    v113(0, 0xF000000000000000, v98);
    sub_2261B5424(v84, v85, v79, 1, sub_2261A28B8, sub_22619C830);

    sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);
    goto LABEL_18;
  }

  v122 = *(v0 + 1432);
  v121 = *(v0 + 1440);
  v119 = *(v0 + 1424);
  if (v122 >> 60 == 15)
  {
    v59 = *(v0 + 1584);
    v60 = *(v0 + 1576);
    v61 = *(v0 + 1568);
    v112 = *(v0 + 1552);
    v115 = *(v0 + 1560);
    v62 = *(v0 + 1544);
    v63 = *(v0 + 1528);
    v64 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261ECFE0);
    MEMORY[0x22AA782B0](v61, v60);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v65 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v65);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v66 = *v62;
    v67 = v62[1];
    v68 = v62[3];
    *(v0 + 848) = v62[2];
    *(v0 + 864) = v68;
    *(v0 + 816) = v66;
    *(v0 + 832) = v67;
    sub_2261AF618(v62, v0 + 880);
    sub_2261AF674();
    v69 = sub_2261E423C();
    v71 = v70;
    v72 = *(v0 + 832);
    *(v0 + 752) = *(v0 + 816);
    *(v0 + 768) = v72;
    v73 = *(v0 + 864);
    *(v0 + 784) = *(v0 + 848);
    *(v0 + 800) = v73;
    sub_2261AF6C8(v0 + 752);
    MEMORY[0x22AA782B0](v69, v71);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v74 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448((v0 + 1008), v74);

    v75 = *(v0 + 1024);
    *(v0 + 1152) = *(v0 + 1008);
    *(v0 + 1168) = v75;
    *(v0 + 1184) = *(v0 + 1040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v76 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v76);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v64, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 316);

    v77 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261ED020);
    v112(0, 0xF000000000000000, v77);
    sub_2261ACA3C(v119, v122, v121);
    sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);

LABEL_18:
    sub_22619C840(v124, v127);
    goto LABEL_11;
  }

  v99 = *(v0 + 1592);
  v114 = *(v0 + 1552);
  v117 = *(v0 + 1560);
  v100 = *(v0 + 1528);
  v101 = sub_2261E400C();
  sub_2261E410C();

  swift_beginAccess();
  v102 = *(v48 + 20);
  v103 = *(v48 + 24);
  v104 = *(v48 + 32);
  v105 = *(v48 + 48);
  v106 = *(v48 + 56);
  *(v0 + 1200) = *(v99 + 16);
  *(v0 + 1204) = v102;
  *(v0 + 1208) = v103;
  *(v0 + 1216) = v104;
  *(v0 + 1232) = v105;
  *(v0 + 1240) = v106;
  sub_2261A65DC();
  v107 = sub_2261E423C();
  MEMORY[0x22AA782B0](v107);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v101, 0xD00000000000001DLL, 0x80000002261ED050, 0xD000000000000061, 0x80000002261EBE30, 321);

  v108 = sub_2261E400C();
  sub_2261E410C();

  v109 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v109);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v108, 0xD00000000000002BLL, 0x80000002261ED070, 0xD000000000000061, 0x80000002261EBE30, 322);

  v114(v124, v127, 0);
  sub_22619A7B4(v0 + 136, &qword_27D78E058, &unk_2261E7070);
  sub_2261B5424(v119, v122, v79, 0, sub_2261A28B8, sub_22619C830);
  sub_22619C840(v124, v127);
LABEL_11:
  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2261B0A44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 156);
  v1 = v0[1];
  v2 = v0[202];

  return v1();
}

uint64_t sub_2261B0AA8()
{
  v2 = sub_2261E3C3C();
  v3 = v0[4];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[31];
  v8 = *(v0 + ((*(*(v2 - 8) + 64) + 263) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2261C3494;

  return sub_2261AF71C(v9, v10, v11, v3, (v0 + 5), (v0 + 20), v4, v5);
}

uint64_t sub_2261B0BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2261C32FC(a3, v24 - v10);
  v12 = sub_2261E3FAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22619A7B4(v11, &qword_27D78E040, &unk_2261E6FE0);
  }

  else
  {
    sub_2261E3F9C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2261E3F6C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2261E3E4C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22619A7B4(a3, &qword_27D78E040, &unk_2261E6FE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22619A7B4(a3, &qword_27D78E040, &unk_2261E6FE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_2261B0E58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2261E3B8C();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

void AppAttestHandler.generateAssertion(with:credential:clientDataHash:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void, unint64_t, uint64_t (*)(void)), uint64_t a8)
{
  v381 = a8;
  v382 = a7;
  v379 = a5;
  v380 = a6;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v377 = v11;
  v378 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v342[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v376 = &v342[-v17];
  v18 = type metadata accessor for Key(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v342[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v342[-v24];
  v26 = sub_2261E3C3C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v342[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v28);
  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_16;
  }

  v37 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v380 >> 62;
  if ((v380 >> 62) > 1)
  {
    if (v38 != 2 || *(v379 + 16) == *(v379 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v38)
  {
    if (v379 == v379 >> 32)
    {
LABEL_16:
      v43 = sub_2261E3FFC();
      sub_2261A4EAC(v43, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 337);
      v44 = 0x80000002261EC1F0;
      v45 = 1;
      v46 = 0xD000000000000013;
LABEL_17:
      v380 = sub_2261A9CDC(v45, v46, v44);
      v382(0, 0xF000000000000000, v380);
      v47 = v380;

      return;
    }
  }

  else if ((v380 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v373 = v35;
  v374 = v34;
  v369 = v21;
  v370 = &v342[-v32];
  v371 = v33;
  v372 = v31;
  v375 = v8;
  sub_2261AA444();
  v39 = sub_22619DFA0();

  v40 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v39 & 1) == 0)
  {
    v48 = sub_2261E3FFC();
    v401.n128_u64[0] = 0;
    v401.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v373, v374);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v49 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v49);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v48, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 343);

    v46 = 0xD000000000000020;
    v44 = 0x80000002261EBEA0;
    v45 = 3;
    goto LABEL_17;
  }

  v365 = v18;
  LODWORD(v366) = sub_2261E400C();
  v401.n128_u64[0] = 0;
  v401.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v396 = v401;
  v363.n128_u64[1] = 0xD000000000000023;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v373, v374);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v41 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(v392, v41);

  v401 = v392[0];
  v402 = v392[1];
  v403 = v392[2];
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v42 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v42);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v367 = v40;
  v368 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v366, v396.n128_i64[0], v396.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 348);

  sub_2261AC2DC(a1, a2, v25);
  v50 = v371;
  v51 = (*(v371 + 48))(v25, 1, v372);
  if (v51 != 1)
  {
    (*(v50 + 32))(v370, v25, v372);
    if (sub_2261E3C1C() == a1 && v62 == a2)
    {

      v63 = v365;
    }

    else
    {
      v64 = sub_2261E425C();

      v63 = v365;
      if ((v64 & 1) == 0)
      {
        v86 = sub_2261E3FFC();
        v401.n128_u64[0] = 0;
        v401.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v387 = v401;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v87 = v370;
        v88 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v88);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v373, v374);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v89 = *(v375 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

        sub_22619C448(&v401, v90);

        v396 = v401;
        v397 = v402;
        v398 = v403;
        v91 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v91);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v86, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 358);

        v92 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v382(0, 0xF000000000000000, v92);

LABEL_32:
        (*(v371 + 8))(v87, v372);
        return;
      }
    }

    LODWORD(v366) = sub_2261E400C();
    v401.n128_u64[0] = 0;
    v401.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v65 = v370;
    v66 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v66);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v67 = v375;
    sub_2261A4EAC(v366, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 363);

    v366 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
    v68 = *(v67 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    v69 = sub_22619C044();

    (*(v371 + 16))(v30, v65, v372);
    v70 = v374;

    v71 = v369;
    sub_2261C3918(v69 & 1, v30, 0, v373, v70, v369);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    v402.n128_u64[1] = v63;
    v403.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v401);
    sub_2261AC9D4(v71, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v401, v73, &v396);

    sub_22619A7B4(&v401, &qword_27D78DFD0, &qword_2261E6FF0);
    v74 = v396;
    v75 = v397.n128_u8[0];
    if (v397.n128_u8[1])
    {
      v401 = v396;
      v402.n128_u8[0] = v397.n128_u8[0] & 1;
      sub_22619C838();
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      LODWORD(v380) = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261EC6B0);
      v401 = v74;
      v402.n128_u8[0] = v75 & 1;
      v76 = sub_2261E429C();
      MEMORY[0x22AA782B0](v76);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v77 = v370;
      v78 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v78);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v373, v374);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v79 = *(v375 + v366);

      sub_22619C448(&v401, v80);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v81 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v81);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v380, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 379);

      v387.n128_u64[0] = 0xD000000000000017;
      v387.n128_u64[1] = 0x80000002261EC700;
      v396 = v74;
      v397.n128_u8[0] = v75 & 1;
      v82 = sub_2261E429C();
      v84 = v83;
      sub_2261795CC(v74.n128_u64[0], v74.n128_i64[1], v75, 1);
      MEMORY[0x22AA782B0](v82, v84);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v85 = sub_2261A9CDC(2, v387.n128_i64[0], v387.n128_i64[1]);

      v382(0, 0xF000000000000000, v85);

      sub_2261795CC(v74.n128_u64[0], v74.n128_i64[1], v75, 1);
      sub_2261AC974(v369, type metadata accessor for Key);
      (*(v371 + 8))(v77, v372);
      return;
    }

    if (!v396.n128_u64[0])
    {
      sub_2261795CC(0, v396.n128_i64[1], v397.n128_u8[0], 0);
      v117 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC720);
      v87 = v370;
      v118 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v118);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v373, v374);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v119 = *(v375 + v366);

      sub_22619C448(&v401, v120);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v121 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v121);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v117, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 385);

      v122 = sub_2261A9CDC(2, 0xD000000000000034, 0x80000002261EC760);
      v382(0, 0xF000000000000000, v122);
      sub_2261795CC(0, v74.n128_i64[1], v75, 0);

LABEL_49:
      sub_2261AC974(v369, type metadata accessor for Key);
      goto LABEL_32;
    }

    v93 = v396.n128_u64[0];
    v94 = sub_2261C9E2C();
    v96 = v368;
    if (!v95)
    {
      sub_2261795CC(v74.n128_u64[0], v74.n128_i64[1], v75, 0);
      v123 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](v363.n128_u64[1], 0x80000002261EC7A0);
      v124 = v370;
      v125 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v125);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v373, v374);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v123, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, v96 | 0x8000000000000000, 391);

      v126 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v382(0, 0xF000000000000000, v126);
      sub_2261795CC(v74.n128_u64[0], v74.n128_i64[1], v75, 0);

      sub_2261795CC(v74.n128_u64[0], v74.n128_i64[1], v75, 0);
      sub_2261AC974(v369, type metadata accessor for Key);
      (*(v371 + 8))(v124, v372);
      return;
    }

    v362 = v75;
    v363 = v74;
    v98 = v377;
    v97 = v378;
    v99 = *(v378 + 16);
    v100 = v375;
    v101 = v376;
    v102 = v95;
    v365 = v94;
    v99(v376, v375 + v367, v377);
    v103 = sub_2261E400C();
    v401.n128_u64[0] = 0;
    v401.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    v360 = 0xD00000000000002FLL;
    MEMORY[0x22AA782B0]();
    v361 = v93;
    v104 = sub_2261C9E2C();
    if (v105)
    {
      v106 = v105;
    }

    else
    {
      v104 = 7104878;
      v106 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v104, v106);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v103, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 396);

    (*(v97 + 8))(v101, v98);
    v107 = *(v100 + v366);

    v108 = sub_22619C044();

    v109 = sub_2261E3C1C();
    v111 = v110;

    v401.n128_u8[0] = 1;
    v376 = v102;
    sub_2261C378C(v108 & 1, 0x100000000, v109, v111, v365, v102, &v393);
    v112 = v394.n128_u64[0];
    v113 = v395;
    v114 = v393.n128_u8[0];
    v378 = v394.n128_u64[1];

    v377 = v113.n128_i64[1];

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v402.n128_u64[1] = &type metadata for AssertionCounter;
    v403.n128_u64[0] = &off_28395C888;
    v115 = swift_allocObject();
    v401.n128_u64[0] = v115;
    v116 = v394;
    v115[1] = v393;
    v115[2] = v116;
    v115[3] = v395;
    sub_2261A8A9C(&v401, MEMORY[0x277D84CC0], &v396);

    sub_22619A7B4(&v401, &qword_27D78DFD0, &qword_2261E6FF0);
    v127 = v363.n128_u64[0];
    v128 = v362;
    sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);
    v129 = v396.n128_u64[0];
    if (v397.n128_u8[1])
    {
      v130 = v396.n128_i64[1];
      v131 = v397.n128_u8[0];
      v401 = v396;
      v402.n128_u8[0] = v397.n128_u8[0] & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_226179098(v129, v130, v131, 1);
      v132 = v363.n128_i64[1];
LABEL_47:
      v143 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD000000000000038, 0x80000002261EC7D0);
      v87 = v370;
      v144 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v144);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v401 = v393;
      v402 = v394;
      v403 = v395;
      sub_2261A65DC();
      v145 = sub_2261E423C();
      v147 = v146;

      MEMORY[0x22AA782B0](v145, v147);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v148 = *(v375 + v366);

      sub_22619C448(&v401, v149);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v150 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v150);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v143, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 410);

      v151 = sub_2261A9CDC(0, 0xD000000000000030, 0x80000002261EC810);
      v382(0, 0xF000000000000000, v151);
      sub_2261795CC(v127, v132, v128, 0);

      v152 = v127;
      v153 = v132;
LABEL_48:
      sub_2261795CC(v152, v153, v128, 0);
      goto LABEL_49;
    }

    v359 = v114;
    v132 = v363.n128_i64[1];
    if ((v396.n128_u64[0] & 0x100000000) != 0)
    {
      goto LABEL_47;
    }

    v357 = v112;
    v358 = v113.n128_u64[0];
    if (v396.n128_u32[0] == -1)
    {
      v154 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD000000000000030, 0x80000002261EC8C0);
      v87 = v370;
      v155 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v155);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v401 = v393;
      v402 = v394;
      v403 = v395;
      sub_2261A65DC();
      v156 = sub_2261E423C();
      v158 = v157;

      MEMORY[0x22AA782B0](v156, v158);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v159 = *(v375 + v366);

      sub_22619C448(&v401, v160);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v161 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v161);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v154, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 422);

      v141 = "reached. { uuid=";
      v142 = 0xD000000000000028;
      goto LABEL_51;
    }

    if (!v396.n128_u32[0])
    {
      v133 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EC850);
      v87 = v370;
      v134 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v134);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v401 = v393;
      v402 = v394;
      v403 = v395;
      sub_2261A65DC();
      v135 = sub_2261E423C();
      v137 = v136;

      MEMORY[0x22AA782B0](v135, v137);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v138 = *(v375 + v366);

      sub_22619C448(&v401, v139);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v140 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v140);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v133, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 416);

      v141 = "ssertion. { uuid=";
      v142 = 0xD000000000000029;
LABEL_51:
      v162 = sub_2261A9CDC(2, v142, v141 | 0x8000000000000000);
      v382(0, 0xF000000000000000, v162);
      v163 = v363.n128_i64[1];
      v164 = v363.n128_u64[0];
      v128 = v362;
      sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

      v152 = v164;
      v153 = v163;
      goto LABEL_48;
    }

    v165 = v396.n128_u32[0] + 1;
    v166 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager;
    v167 = *(v375 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager);
    v402.n128_u64[1] = &type metadata for AssertionCounter;
    v403.n128_u64[0] = &off_28395C888;
    v168 = swift_allocObject();
    v401.n128_u64[0] = v168;
    *(v168 + 16) = v359;
    v355 = v165;
    *(v168 + 20) = v165;
    *(v168 + 24) = 0;
    v169 = v358;
    v171 = v377;
    v170 = v378;
    *(v168 + 32) = v357;
    *(v168 + 40) = v170;
    *(v168 + 48) = v169;
    *(v168 + 56) = v171;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v172 = MEMORY[0x277CC9318];
    nullsub_1(MEMORY[0x277CC9318]);
    sub_2261A5998(&v401, v172, &v396);

    __swift_destroy_boxed_opaque_existential_0(&v401);
    v356 = v396;
    v354 = v397.n128_u8[0];
    if (v397.n128_u8[1])
    {
      v186 = 256;
    }

    else
    {
      v186 = 0;
    }

    if (v397.n128_u8[1] == 1)
    {
      v187 = v354;
      v188 = v354 & 1;
      v189 = v356;
      sub_22619C838();
      v190 = v377;

      v191 = v378;

      LODWORD(v380) = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261ECBB0);
      v401 = v189;
      v402.n128_u8[0] = v188;
      sub_22619C7B4();
      v192 = sub_2261E429C();
      v194 = v193;
      sub_2261B5424(v189.n128_i64[0], v189.n128_i64[1], v187, 1, sub_2261A28B8, sub_22619C830);
      MEMORY[0x22AA782B0](v192, v194);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v195 = v370;
      v196 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v196);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v401.n128_u8[0] = v359;
      v401.n128_u32[1] = v355;
      v401.n128_u8[8] = 0;
      v402.n128_u64[0] = v357;
      v402.n128_u64[1] = v191;
      v403.n128_u64[0] = v358;
      v403.n128_u64[1] = v190;
      sub_2261A65DC();
      v197 = sub_2261E423C();
      v199 = v198;

      MEMORY[0x22AA782B0](v197, v199);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v200 = *(v375 + v366);

      sub_22619C448(&v401, v201);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v202 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v202);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v380, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 432);

      v203 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
      v382(0, 0xF000000000000000, v203);
      v204 = v363.n128_i64[1];
      v205 = v363.n128_u64[0];
      v206 = v362;
      sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

      sub_2261795CC(v205, v204, v206, 0);
      sub_2261B5424(v356.n128_i64[0], v356.n128_i64[1], v354, 1, sub_2261A28B8, sub_22619C830);
      sub_2261AC974(v369, type metadata accessor for Key);
      (*(v371 + 8))(v195, v372);
      return;
    }

    if (v356.n128_u64[1] >> 60 == 15)
    {
      v207 = v354;
      v208 = v186 | v354;

      sub_2261B5424(v356.n128_i64[0], v356.n128_i64[1], v207, 0, sub_2261A28B8, sub_22619C830);
      v173 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v387 = v401;
      MEMORY[0x22AA782B0](0xD000000000000039, 0x80000002261EC930);
      v174 = v370;
      v175 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v175);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v401.n128_u8[0] = v359;
      v401.n128_u32[1] = v355;
      v401.n128_u8[8] = 0;
      v402.n128_u64[0] = v357;
      v402.n128_u64[1] = v378;
      v403.n128_u64[0] = v358;
      v403.n128_u64[1] = v377;
      sub_2261A65DC();
      v176 = sub_2261E423C();
      v178 = v177;

      MEMORY[0x22AA782B0](v176, v178);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v179 = *(v375 + v366);

      sub_22619C448(&v401, v180);

      v396 = v401;
      v397 = v402;
      v398 = v403;
      v181 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v181);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v173, v387.n128_i64[0], v387.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 439);

      v182 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
      v382(0, 0xF000000000000000, v182);
      v183 = v363.n128_i64[1];
      v184 = v363.n128_u64[0];
      v185 = v362;
      sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

      sub_2261795CC(v184, v183, v185, 0);
      sub_2261ACA3C(v356.n128_i64[0], v356.n128_i64[1], v208);
      sub_2261AC974(v369, type metadata accessor for Key);
      (*(v371 + 8))(v174, v372);
      return;
    }

    v209 = *(v375 + v366);

    v210 = sub_22619C044();

    v387.n128_u8[0] = v210 & 1;
    v409.n128_u8[0] = 0;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*&v401 == *&v396)
    {

      v211 = sub_2261CDB98();
    }

    else
    {
      v212 = sub_2261E425C();

      if (v212)
      {
        v211 = sub_2261CDB98();
      }

      else
      {
        v211 = sub_2261CDAC8();
      }
    }

    v214 = *v211;
    v213 = v211[1];
    sub_22619D8F4(*v211, v213);
    v215 = sub_2261CDBE8();
    v409.n128_u8[0] = v359;
    v409.n128_u32[1] = v129;
    v409.n128_u8[8] = 0;
    v410.n128_u64[0] = v357;
    v410.n128_u64[1] = v378;
    v411.n128_u64[0] = v358;
    v411.n128_u64[1] = v377;
    v216 = *v215;
    sub_2261790A8(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

    sub_2261CD7CC(v214, v213, v216, &v409, v361, &v396);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
    v217 = sub_2261CBA0C(0, &v396);
    v350 = v218;
    v351 = v217;
    v352 = v219;
    v353 = 0;

    if ((v352 & 0x100) != 0)
    {
      v231 = v352;
      v232 = v352 & 1;
      v234 = v350;
      v233 = v351;
      sub_22619C838();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v235 = sub_2261E3FFC();
      v401.n128_u64[0] = 0;
      v401.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v383 = v401;
      MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
      v401.n128_u64[0] = v233;
      v401.n128_u64[1] = v234;
      v402.n128_u8[0] = v232;
      sub_22619C7B4();
      v236 = sub_2261E429C();
      v238 = v237;
      v380 = sub_22619C840;
      sub_2261B5424(v233, v234, v231, 1, sub_22619C840, sub_22619C830);
      MEMORY[0x22AA782B0](v236, v238);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v239 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v239);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v365, v376);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v389 = v398;
      v390 = v399;
      v391 = v400;
      v387 = v396;
      v388 = v397;
      sub_2261B50AC(&v396, &v401);
      sub_2261B5108();
      v240 = sub_2261E423C();
      v242 = v241;
      v403 = v389;
      v404 = v390;
      v405 = v391;
      v401 = v387;
      v402 = v388;
      sub_2261AF4E8(&v401);
      MEMORY[0x22AA782B0](v240, v242);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);
      v243 = *(v375 + v366);

      sub_22619C448(&v387, v244);

      v406 = v387;
      v407 = v388;
      v408 = v389;
      v245 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v245);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v235, v383.n128_i64[0], v383.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 452);

      v246 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
      v382(0, 0xF000000000000000, v246);
      v247 = v363.n128_i64[1];
      v248 = v363.n128_u64[0];
      v249 = v362;
      sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

      sub_2261AF4E8(&v396);
      sub_2261B5424(v233, v234, v231, 1, v380, sub_22619C830);
      v250 = v248;
      v251 = v247;
      goto LABEL_69;
    }

    sub_22619D8F4(v351, v350);
    v220 = sub_2261E400C();
    v401.n128_u64[0] = 0;
    v401.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](v360, 0x80000002261EC9B0);
    v221 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v221);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v222 = v375;
    sub_2261A4EAC(v220, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 464);

    type metadata accessor for SecurityController();
    v346 = sub_2261A0FCC(*(v222 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v222 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v222 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v222 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    if (sub_2261B515C())
    {
      v223 = v353;
      v224 = sub_2261A2234();
      v347 = v225;
      v348 = v224;
      v349 = v226;
      v360 = v227;
      v353 = v223;
      if (!v223)
      {
LABEL_73:
        sub_2261790A8(v363.n128_u64[0], v363.n128_i64[1], v362, 0);
        v255 = v350;
        sub_2261B5424(v351, v350, v352, 0, sub_22619D8F4, sub_22619C838);
        v256 = v379;
        v257 = v380;
        sub_22619D8F4(v379, v380);
        v259 = v347;
        v258 = v348;
        v260 = v349;
        v261 = v360;
        sub_22619D9F4(v348, v347, v349, v360);
        sub_22619D664(v361, v351, v255, v256, v257, v258, v259, v260, &v387, v261);
        v262 = v353;
        v379 = sub_22619D21C(&v387);
        v380 = v263;
        if (v262)
        {

LABEL_76:

          v264 = sub_2261E3FFC();
          v401.n128_u64[0] = 0;
          v401.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v383 = v401;
          MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EC9E0);
          v265 = v370;
          v266 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v266);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v365, v376);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v401 = v409;
          v402 = v410;
          v403 = v411;
          sub_2261A65DC();
          v267 = sub_2261E423C();
          v269 = v268;

          MEMORY[0x22AA782B0](v267, v269);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v270 = *(v375 + v366);

          sub_22619C448(&v401, v271);

          v406 = v401;
          v407 = v402;
          v408 = v403;
          v272 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v272);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v264, v383.n128_i64[0], v383.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 499);

          v273 = sub_2261A9CDC(0, 0xD000000000000022, 0x80000002261ECA10);
          v382(0, 0xF000000000000000, v273);
          v274 = v363.n128_i64[1];
          v275 = v363.n128_u64[0];
          v276 = v362;
          sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);

          sub_2261B5258(&v387);
          sub_2261B52AC(v348, v347, v349, v360);
          v278 = v350;
          v277 = v351;
          v279 = v352;
          sub_2261B5424(v351, v350, v352, 0, sub_22619C840, sub_22619C830);

          sub_2261B5424(v277, v278, v279, 0, sub_22619C840, sub_22619C830);
          sub_2261AF4E8(&v396);
          sub_2261795CC(v275, v274, v276, 0);
          sub_2261B5424(v356.n128_i64[0], v356.n128_i64[1], v354, 0, sub_2261A28B8, sub_22619C830);
          sub_2261AC974(v369, type metadata accessor for Key);
          (*(v371 + 8))(v265, v372);
          return;
        }

        if (v380 >> 60 == 15)
        {
          goto LABEL_76;
        }

        v281 = v379;
        v280 = v380;
        sub_2261A74CC(v379, v380);
        sub_2261B52FC(&v387, &v401);
        sub_2261CDF10(v281, v280, &v387, &v401);
        sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager, type metadata accessor for AssertionCBORManager, sub_2261CE6A0);
        v353 = sub_2261CDF30(&v401);
        v361 = v282;

        LOBYTE(v281) = sub_2261E400C();
        v406.n128_u64[0] = 0xD00000000000002CLL;
        v406.n128_u64[1] = 0x80000002261ECA70;
        v283 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v283);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v284 = v375;
        sub_2261A4EAC(v281, v406.n128_i64[0], v406.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 514);

        sub_2261B53D0(&v401);
        v285 = *(v284 + v166);
        v407.n128_u64[1] = &type metadata for AssertionCounter;
        v408.n128_u64[0] = &off_28395C888;
        v286 = swift_allocObject();
        v406.n128_u64[0] = v286;
        *(v286 + 16) = v359;
        *(v286 + 20) = v355;
        *(v286 + 24) = 0;
        v287 = v378;
        *(v286 + 32) = v357;
        *(v286 + 40) = v287;
        v288 = v377;
        *(v286 + 48) = v358;
        *(v286 + 56) = v288;

        v289 = MEMORY[0x277CC9318];
        nullsub_1(MEMORY[0x277CC9318]);
        sub_2261A5998(&v406, v289, &v383);

        __swift_destroy_boxed_opaque_existential_0(&v406);
        v307 = v383.n128_i64[1];
        v374 = v383.n128_u64[0];
        v308 = v384.n128_u8[0];
        if (v384.n128_u8[1] == 1)
        {
          LODWORD(v373) = v384.n128_u8[0];
          v309 = v374;
          v310 = v384.n128_u8[0] & 1;
          v345 = v384.n128_u8[0] & 1;
          sub_22619C838();
          v343 = sub_2261E3FFC();
          v406.n128_u64[0] = 0;
          v406.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v386 = v406;
          v344 = 0xD000000000000042;
          MEMORY[0x22AA782B0]();
          v406.n128_u64[0] = v309;
          v406.n128_u64[1] = v307;
          v407.n128_u8[0] = v310;
          sub_22619C7B4();
          v311 = sub_2261E429C();
          MEMORY[0x22AA782B0](v311);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v312 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v312);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v365, v376);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v406.n128_u8[0] = v359;
          v406.n128_u32[1] = v355;
          v406.n128_u8[8] = 0;
          v407.n128_u64[0] = v357;
          v407.n128_u64[1] = v378;
          v408.n128_u64[0] = v358;
          v408.n128_u64[1] = v377;
          sub_2261A65DC();
          v313 = sub_2261E423C();
          v315 = v314;

          MEMORY[0x22AA782B0](v313, v315);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v316 = *(v375 + v366);

          sub_22619C448(&v406, v317);

          v383 = v406;
          v384 = v407;
          v385 = v408;
          v318 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v318);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v343, v386.n128_i64[0], v386.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 530);

          v383.n128_u64[0] = 0;
          v383.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v386 = v383;
          MEMORY[0x22AA782B0](v344, 0x80000002261ECB60);
          v319 = v309;
          v383.n128_u64[0] = v309;
          v383.n128_u64[1] = v307;
          v384.n128_u8[0] = v345;
          v320 = sub_2261E429C();
          v322 = v321;
          v323 = v373;
          sub_2261B5424(v319, v307, v373, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](v320, v322);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v324 = sub_2261A9CDC(0, v386.n128_i64[0], v386.n128_i64[1]);

          v325 = v382;
          v382(0, 0xF000000000000000, v324);

          sub_2261B5424(v319, v307, v323, 1, sub_2261A28B8, sub_22619C830);
          v326 = v353;
          v327 = v361;
          v325(v353, v361, 0);
          v328 = v363.n128_i64[1];
          v329 = v363.n128_u64[0];
          v330 = v362;
          sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);
          v331 = v326;
LABEL_83:
          sub_22619C840(v331, v327);
          sub_2261B5258(&v387);
          sub_2261A28B8(v379, v380);
          sub_2261B52AC(v348, v347, v349, v360);
          v340 = v350;
          v339 = v351;
          v341 = v352;
          sub_2261B5424(v351, v350, v352, 0, sub_22619C840, sub_22619C830);

          sub_2261B5424(v339, v340, v341, 0, sub_22619C840, sub_22619C830);
          sub_2261AF4E8(&v396);
          sub_2261795CC(v329, v328, v330, 0);
          v253 = v356.n128_i64[1];
          v252 = v356.n128_u64[0];
          v254 = v354;
          goto LABEL_70;
        }

        if (v383.n128_u64[1] >> 60 != 15)
        {
          v332 = v374;
          v333 = v384.n128_u8[0];
          sub_2261B5424(v374, v383.n128_i64[1], v384.n128_i8[0], 0, sub_2261A74CC, sub_22619C838);

          v334 = sub_2261E400C();
          v383.n128_u64[0] = 0xD000000000000025;
          v383.n128_u64[1] = 0x80000002261ECB30;
          v406.n128_u8[0] = v359;
          v406.n128_u32[1] = v355;
          v406.n128_u8[8] = 0;
          v407.n128_u64[0] = v357;
          v407.n128_u64[1] = v378;
          v408.n128_u64[0] = v358;
          v408.n128_u64[1] = v377;
          sub_2261A65DC();
          v335 = sub_2261E423C();
          v337 = v336;

          MEMORY[0x22AA782B0](v335, v337);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v334, v383.n128_i64[0], v383.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 542);

          sub_2261B5424(v332, v307, v333, 0, sub_2261A28B8, sub_22619C830);
          sub_2261B5424(v332, v307, v333, 0, sub_2261A28B8, sub_22619C830);
          v338 = v353;
          v327 = v361;
          v382(v353, v361, 0);
          v328 = v363.n128_i64[1];
          v329 = v363.n128_u64[0];
          v330 = v362;
          sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);
          v331 = v338;
          goto LABEL_83;
        }

        v290 = sub_2261E3FFC();
        v406.n128_u64[0] = 0;
        v406.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v386 = v406;
        MEMORY[0x22AA782B0](0xD000000000000041, 0x80000002261ECAA0);
        v291 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v291);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v365, v376);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v406.n128_u8[0] = v359;
        v406.n128_u32[1] = v355;
        v406.n128_u8[8] = 0;
        v407.n128_u64[0] = v357;
        v407.n128_u64[1] = v378;
        v408.n128_u64[0] = v358;
        v408.n128_u64[1] = v377;
        sub_2261A65DC();
        v292 = sub_2261E423C();
        v294 = v293;

        MEMORY[0x22AA782B0](v292, v294);

        MEMORY[0x22AA782B0](32, 0xE100000000000000);
        v295 = *(v375 + v366);

        sub_22619C448(&v406, v296);

        v383 = v406;
        v384 = v407;
        v385 = v408;
        v297 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v297);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v290, v386.n128_i64[0], v386.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 537);

        v298 = sub_2261A9CDC(0, 0xD000000000000039, 0x80000002261ECAF0);
        v299 = v382;
        v382(0, 0xF000000000000000, v298);

        sub_2261ACA3C(v374, v307, v308);
        v300 = v353;
        v301 = v361;
        v299(v353, v361, 0);
        v302 = v363.n128_i64[1];
        v303 = v363.n128_u64[0];
        v249 = v362;
        sub_2261795CC(v363.n128_u64[0], v363.n128_i64[1], v362, 0);
        sub_22619C840(v300, v301);
        sub_2261B5258(&v387);
        sub_2261A28B8(v379, v380);
        sub_2261B52AC(v348, v347, v349, v360);
        v305 = v350;
        v304 = v351;
        v306 = v352;
        sub_2261B5424(v351, v350, v352, 0, sub_22619C840, sub_22619C830);

        sub_2261B5424(v304, v305, v306, 0, sub_22619C840, sub_22619C830);
        sub_2261AF4E8(&v396);
        v250 = v303;
        v251 = v302;
LABEL_69:
        sub_2261795CC(v250, v251, v249, 0);
        v253 = v356.n128_i64[1];
        v252 = v356.n128_u64[0];
        v254 = v354;
LABEL_70:
        sub_2261B5424(v252, v253, v254, 0, sub_2261A28B8, sub_22619C830);
        sub_2261AC974(v369, type metadata accessor for Key);
        (*(v371 + 8))(v370, v372);
        return;
      }

      v228 = sub_2261E3FFC();
      v401.n128_u64[0] = 0xD000000000000021;
      v401.n128_u64[1] = 0x80000002261EB5E0;
      v229 = v353;
      swift_getErrorValue();
      v230 = sub_2261E429C();
      MEMORY[0x22AA782B0](v230);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v228, v401.n128_i64[0], v401.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 482);

      v348 = 0;
      v349 = 0;
      v360 = 0;
      v353 = 0;
    }

    else
    {
      v348 = 0;
      v349 = 0;
      v360 = 0;
    }

    v347 = 0xF000000000000000;
    goto LABEL_73;
  }

  sub_22619A7B4(v25, &qword_27D78DF28, &unk_2261E6FD0);
  v52 = v377;
  v53 = v375;
  (*(v378 + 16))(v16, v375 + v367, v377);
  v54 = sub_2261E3FFC();
  v401.n128_u64[0] = 0;
  v401.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v393 = v401;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v373, v374);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v55 = *(v53 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  sub_22619C448(&v396, v56);

  v57 = 0;
  v58 = 0;
  if (v396.n128_u64[1] != 1)
  {
    v401 = v396;
    v402 = v397;
    v403 = v398;
    v57 = sub_2261A5660();
    v58 = v59;
    v406 = v401;
    sub_22619A7B4(&v406, &qword_27D78DE20, &unk_2261E6280);
    v409 = v402;
    sub_22619A7B4(&v409, &qword_27D78DE20, &unk_2261E6280);
    v387 = v403;
    sub_22619A7B4(&v387, &qword_27D78DE20, &unk_2261E6280);
  }

  v383.n128_u64[0] = v57;
  v383.n128_u64[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v60 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v60);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v54, v393.n128_i64[0], v393.n128_u64[1], 0xD000000000000061, v368 | 0x8000000000000000, 352);

  (*(v378 + 8))(v16, v52);
  v61 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v382(0, 0xF000000000000000, v61);
}

unint64_t sub_2261B5108()
{
  result = qword_27D78E050;
  if (!qword_27D78E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E050);
  }

  return result;
}

uint64_t sub_2261B515C()
{
  v0 = sub_2261A2BB4();
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2261C32B0();

  v4 = isRunningInRecovery();
  sub_2261A10B4(v1, v2, v4 & 1, v3, &v15);

  v5 = v15;
  if (!v15)
  {
    goto LABEL_4;
  }

  v6 = sub_2261A2BC0();
  v7 = *v6;
  v8 = *(v6 + 1);

  v9 = sub_2261E3DAC();

  LOBYTE(v8) = [v5 containsObject_];

  if (v8)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    v11 = sub_2261A2B84();
    v12 = *v11;
    v13 = *(v11 + 1);

    v10 = sub_2261CF5C8();
  }

  return v10 & 1;
}

uint64_t sub_2261B52AC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22619C840(result, a2);

    return sub_22619C840(a3, a4);
  }

  return result;
}

uint64_t sub_2261B5358(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    v6 = a3();
    v9 = *(v3 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_2261B5424(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (a4)
  {
    return a6(a1, a2, a3 & 1);
  }

  else
  {
    return a5();
  }
}

uint64_t sub_2261B5454(void *a1, int a2, int a3, int a4, void *a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_2261E3DDC();
  v13 = v12;
  v14 = sub_2261E3DDC();
  v16 = v15;
  v17 = a5;
  v18 = a1;
  v19 = sub_2261E3BBC();
  v21 = v20;

  _Block_copy(v10);
  a7(v11, v13, v14, v16, v19, v21, v18, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_22619C840(v19, v21);
}

void AppAttestHandler.sign(clientUUID:blob:credential:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void, unint64_t, id), uint64_t a8)
{
  v125 = a8;
  v124 = a5;
  v123 = a4;
  v122 = a3;
  v120 = sub_2261E3CDC();
  v121 = *(v120 - 8);
  v13 = *(v121 + 64);
  v14 = MEMORY[0x28223BE20](v120);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v109 - v17;
  v18 = type metadata accessor for Key(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v109 - v24;
  v26 = sub_2261E3C3C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v35 = v124 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v123 >> 62;
  if ((v123 >> 62) > 1)
  {
    if (v36 != 2 || *(v122 + 16) == *(v122 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v36)
  {
    if (v122 == v122 >> 32)
    {
LABEL_16:
      v40 = sub_2261E3FFC();
      sub_2261A4EAC(v40, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 549);
      v124 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
      a7(0, 0xF000000000000000, v124);
LABEL_17:
      v41 = v124;

      return;
    }
  }

  else if ((v123 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v113 = v21;
  v114 = &v109 - v32;
  v115 = v33;
  v116 = v31;
  v118 = v8;
  sub_2261AA444();
  v37 = sub_22619DFA0();

  v117 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v37 & 1) == 0)
  {
    v42 = sub_2261E3FFC();
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v124, a6);
    MEMORY[0x22AA782B0](0x3D626F6C62202CLL, 0xE700000000000000);
    v43 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v43);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v42, v132, *(&v132 + 1), 0xD000000000000061, 0x80000002261EBE30, 555);

    v124 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
    a7(0, 0xF000000000000000, v124);
    goto LABEL_17;
  }

  v111 = a7;
  v110 = sub_2261E3FEC();
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v129 = v132;
  MEMORY[0x22AA782B0](0xD000000000000023, 0x80000002261ECBF0);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v124, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v38 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(&v132, v38);

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v39 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v39);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v112 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v110, v129, *(&v129 + 1), 0xD000000000000061, 0x80000002261EBE30, 560);

  sub_2261AC2DC(a1, a2, v25);
  v44 = v115;
  v45 = (*(v115 + 48))(v25, 1, v116);
  if (v45 != 1)
  {
    (*(v44 + 32))(v114, v25, v116);
    if (sub_2261E3C1C() == a1 && v56 == a2)
    {

      v57 = v117;
    }

    else
    {
      v58 = sub_2261E425C();

      v57 = v117;
      if ((v58 & 1) == 0)
      {
        v77 = sub_2261E3FFC();
        *&v132 = 0;
        *(&v132 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v137 = v132;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v74 = v114;
        v78 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v78);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v124, a6);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v79 = *(v118 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

        sub_22619C448(&v132, v80);

        v129 = v132;
        v130 = v133;
        v131 = v134;
        v81 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v81);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v77, v137, *(&v137 + 1), 0xD000000000000061, v112 | 0x8000000000000000, 570);

        v82 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v111(0, 0xF000000000000000, v82);

        goto LABEL_33;
      }
    }

    v59 = sub_2261E3FEC();
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v60 = v114;
    v61 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v61);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v62 = v118;
    sub_2261A4EAC(v59, v132, *(&v132 + 1), 0xD000000000000061, v112 | 0x8000000000000000, 575);

    v63 = *(v62 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    v64 = sub_22619C044();

    (*(v115 + 16))(v30, v60, v116);

    v65 = v64 & 1;
    v66 = v113;
    sub_2261C3918(v65, v30, 0, v124, a6, v113);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v133 + 1) = v18;
    *&v134 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v132);
    sub_2261AC9D4(v66, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v132, v68, &v129);

    sub_22619A7B4(&v132, &qword_27D78DFD0, &qword_2261E6FF0);
    v69 = v129;
    v70 = v130;
    v71 = v111;
    if (BYTE1(v130))
    {
      v132 = v129;
      LOBYTE(v133) = v130 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_2261795CC(v69, *(&v69 + 1), v70, 1);
      v72 = v112;
    }

    else
    {
      v72 = v112;
      if (v129)
      {
        v83 = sub_2261C9E2C();
        if (v84)
        {
          v117 = v84;
          LODWORD(v124) = v70;
          v109 = v83;
          v85 = v121;
          v86 = v119;
          v87 = v120;
          (*(v121 + 16))(v119, v118 + v57, v120);
          v110 = sub_2261E3FEC();
          *&v132 = 0;
          *(&v132 + 1) = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
          v88 = sub_2261C9E2C();
          if (v89)
          {
            v90 = v89;
          }

          else
          {
            v88 = 7104878;
            v90 = 0xE300000000000000;
          }

          MEMORY[0x22AA782B0](v88, v90);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v110, v132, *(&v132 + 1), 0xD000000000000061, v72 | 0x8000000000000000, 587);

          (*(v85 + 8))(v86, v87);
          v91 = sub_2261E3B8C();
          v92 = sub_2261C8E9C(v69, v91);
          v94 = v93;
          v96 = v95;

          if ((v96 & 0x100) != 0)
          {
            *&v132 = v92;
            *(&v132 + 1) = v94;
            LOBYTE(v133) = v96 & 1;
            LODWORD(v123) = v96 & 1;
            sub_22619C838();
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            LODWORD(v122) = sub_2261E3FFC();
            *&v132 = 0;
            *(&v132 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v129 = v132;
            MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261ECC20);
            *&v132 = v92;
            *(&v132 + 1) = v94;
            LOBYTE(v133) = v96 & 1;
            v97 = sub_2261E429C();
            MEMORY[0x22AA782B0](v97);

            MEMORY[0x22AA782B0](0x3D644979656B202CLL, 0xE800000000000000);
            MEMORY[0x22AA782B0](v109, v117);

            MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
            v98 = v114;
            v99 = sub_2261E3C1C();
            MEMORY[0x22AA782B0](v99);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v122, v129, *(&v129 + 1), 0xD000000000000061, v112 | 0x8000000000000000, 594);

            *&v132 = 0;
            *(&v132 + 1) = 0xE000000000000000;
            sub_2261E410C();

            *&v129 = 0xD000000000000017;
            *(&v129 + 1) = 0x80000002261ECC40;
            *&v132 = v92;
            *(&v132 + 1) = v94;
            LOBYTE(v133) = v123;
            v100 = sub_2261E429C();
            v102 = v101;
            sub_2261795CC(v92, v94, v96, 1);
            MEMORY[0x22AA782B0](v100, v102);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v103 = sub_2261A9CDC(0, v129, *(&v129 + 1));

            v111(0, 0xF000000000000000, v103);
            sub_2261795CC(v69, *(&v69 + 1), v124, 0);
          }

          else
          {
            sub_2261790A8(v92, v94, v96, 0);

            v104 = v124;
            if (v92)
            {
              v105 = v92;
              v106 = sub_2261E3BBC();
              v108 = v107;
              sub_2261795CC(v92, v94, v96, 0);
            }

            else
            {
              v106 = 0;
              v108 = 0xF000000000000000;
            }

            v111(v106, v108, 0);
            sub_2261795CC(v69, *(&v69 + 1), v104, 0);
            sub_2261A28B8(v106, v108);
            sub_2261795CC(v92, v94, v96, 0);
            v98 = v114;
          }

          sub_2261795CC(v92, v94, v96, BYTE1(v96) & 1);
          sub_2261AC974(v113, type metadata accessor for Key);
          (*(v115 + 8))(v98, v116);
          return;
        }

        sub_2261795CC(v69, *(&v69 + 1), v70, 0);
      }
    }

    v73 = sub_2261E3FFC();
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v132 = 0xD00000000000001CLL;
    *(&v132 + 1) = 0x80000002261EC3E0;
    v74 = v114;
    v75 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v75);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v73, v132, *(&v132 + 1), 0xD000000000000061, v72 | 0x8000000000000000, 582);

    v76 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    v71(0, 0xF000000000000000, v76);

    sub_2261AC974(v113, type metadata accessor for Key);
LABEL_33:
    (*(v115 + 8))(v74, v116);
    return;
  }

  sub_22619A7B4(v25, &qword_27D78DF28, &unk_2261E6FD0);
  v46 = v118;
  v47 = v120;
  (*(v121 + 16))(v16, v118 + v117, v120);
  v48 = sub_2261E3FFC();
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v128 = v132;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v124, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v49 = *(v46 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  sub_22619C448(&v129, v50);

  v51 = 0;
  v52 = 0;
  if (*(&v129 + 1) != 1)
  {
    v132 = v129;
    v133 = v130;
    v134 = v131;
    v51 = sub_2261A5660();
    v52 = v53;
    v135 = v132;
    sub_22619A7B4(&v135, &qword_27D78DE20, &unk_2261E6280);
    v136 = v133;
    sub_22619A7B4(&v136, &qword_27D78DE20, &unk_2261E6280);
    v137 = v134;
    sub_22619A7B4(&v137, &qword_27D78DE20, &unk_2261E6280);
  }

  v126 = v51;
  v127 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v54 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v54);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v48, v128, *(&v128 + 1), 0xD000000000000061, v112 | 0x8000000000000000, 564);

  (*(v121 + 8))(v16, v47);
  v55 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v111(0, 0xF000000000000000, v55);
}

void AppAttestHandler.getKey(for:credential:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, char *), uint64_t a6)
{
  v110 = a6;
  v111 = a5;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v109 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = v96 - v16;
  v108 = type metadata accessor for Key(0);
  v17 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v96 - v22;
  v24 = sub_2261E3C3C();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v33 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_9:
    v40 = sub_2261E3FFC();
    sub_2261A4EAC(v40, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 602);
    v41 = 0x80000002261EC1F0;
    v42 = 1;
    v43 = 0xD000000000000013;
LABEL_11:
    v109 = sub_2261A9CDC(v42, v43, v41);
    v111(0, v109);
    v45 = v109;

    return;
  }

  v106 = a4;
  v100 = v19;
  v105 = v12;
  v102 = v11;
  v101 = v96 - v30;
  v103 = v31;
  v104 = v29;
  sub_2261AA444();
  v34 = sub_22619DFA0();

  v35 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v34 & 1) == 0)
  {
    v44 = sub_2261E3FFC();
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](a3, v106);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v44, v118, *(&v118 + 1), 0xD000000000000061, 0x80000002261EBE30, 608);

    v43 = 0xD000000000000020;
    v41 = 0x80000002261EBEA0;
    v42 = 3;
    goto LABEL_11;
  }

  LODWORD(v99) = sub_2261E3FEC();
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v115 = v118;
  MEMORY[0x22AA782B0](0xD000000000000026, 0x80000002261ECC60);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  v36 = a3;
  MEMORY[0x22AA782B0](a3, v106);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v37 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(&v118, v37);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v39 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v39);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v97 = "n is ineligible. { clientUUID=";
  v98 = v35;
  sub_2261A4EAC(v99, v115, *(&v115 + 1), 0xD000000000000061, 0x80000002261EBE30, 613);

  v99 = v6;
  sub_2261AC2DC(a1, a2, v23);
  v96[1] = v38;
  v46 = v103;
  v47 = v104;
  v48 = (*(v103 + 48))(v23, 1, v104);
  v49 = v109;
  if (v48 == 1)
  {
    sub_22619A7B4(v23, &qword_27D78DF28, &unk_2261E6FD0);
    v50 = v99;
    v51 = v102;
    (*(v105 + 16))(v49, v99 + v98, v102);
    v52 = sub_2261E3FFC();
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v114 = v118;
    MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v36, v106);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v53 = *(v50 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    sub_22619C448(&v115, v54);

    v55 = 0;
    v56 = 0;
    if (*(&v115 + 1) != 1)
    {
      v118 = v115;
      v119 = v116;
      v120 = v117;
      v55 = sub_2261A5660();
      v56 = v57;
      v121 = v118;
      sub_22619A7B4(&v121, &qword_27D78DE20, &unk_2261E6280);
      v122 = v119;
      sub_22619A7B4(&v122, &qword_27D78DE20, &unk_2261E6280);
      v123 = v120;
      v51 = v102;
      sub_22619A7B4(&v123, &qword_27D78DE20, &unk_2261E6280);
    }

    v112 = v55;
    v113 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v58 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v58);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v52, v114, *(&v114 + 1), 0xD000000000000061, v97 | 0x8000000000000000, 617);

    (*(v105 + 8))(v49, v51);
    v59 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
    v111(0, v59);

    return;
  }

  v60 = *(v46 + 32);
  v61 = v101;
  v60(v101, v23, v47);
  if (sub_2261E3C1C() == a1 && v62 == a2)
  {

    v63 = v100;
  }

  else
  {
    v64 = sub_2261E425C();

    v63 = v100;
    if ((v64 & 1) == 0)
    {
      v81 = sub_2261E3FFC();
      *&v118 = 0;
      *(&v118 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v123 = v118;
      MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
      MEMORY[0x22AA782B0](a1, a2);
      MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
      v82 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v82);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v36, v106);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v83 = *(v99 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

      sub_22619C448(&v118, v84);

      v115 = v118;
      v116 = v119;
      v117 = v120;
      v85 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v85);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v81, v123, *(&v123 + 1), 0xD000000000000061, v97 | 0x8000000000000000, 623);

      v86 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
      v111(0, v86);

      (*(v103 + 8))(v61, v104);
      return;
    }
  }

  v65 = sub_2261E3FEC();
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
  v66 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v66);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v67 = v97;
  v68 = v61;
  v69 = v99;
  sub_2261A4EAC(v65, v118, *(&v118 + 1), 0xD000000000000061, v97 | 0x8000000000000000, 628);

  v70 = *(v69 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  v71 = sub_22619C044();

  (*(v103 + 16))(v28, v68, v104);
  v72 = v106;

  sub_2261C3918(v71 & 1, v28, 0, v36, v72, v63);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
  *(&v119 + 1) = v108;
  *&v120 = &off_28395C890;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
  sub_2261AC9D4(v63, boxed_opaque_existential_1, type metadata accessor for Key);
  type metadata accessor for SecKey();
  sub_2261C74AC(&v118, v74, &v115);

  sub_22619A7B4(&v118, &qword_27D78DFD0, &qword_2261E6FF0);
  v75 = v115;
  v76 = v116;
  if (BYTE1(v116))
  {
    v118 = v115;
    LOBYTE(v119) = v116 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_2261795CC(v75, *(&v75 + 1), v76, 1);
LABEL_24:
    v77 = sub_2261E3FFC();
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v118 = 0xD00000000000001CLL;
    *(&v118 + 1) = 0x80000002261EC3E0;
    v78 = v101;
    v79 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v79);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v77, v118, *(&v118 + 1), 0xD000000000000061, v67 | 0x8000000000000000, 634);

    v80 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    v111(0, v80);

    sub_2261AC974(v63, type metadata accessor for Key);
    (*(v103 + 8))(v78, v104);
    return;
  }

  if (!v115)
  {
    sub_2261795CC(0, *(&v115 + 1), v116, 0);
    goto LABEL_24;
  }

  v87 = v105;
  v88 = v107;
  v89 = v102;
  (*(v105 + 16))(v107, v99 + v98, v102);
  v90 = v75;
  v91 = sub_2261E3FEC();
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
  v92 = sub_2261C9E2C();
  if (v93)
  {
    v94 = v93;
  }

  else
  {
    v92 = 7104878;
    v94 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v92, v94);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v91, v118, *(&v118 + 1), 0xD000000000000061, v97 | 0x8000000000000000, 639);

  (*(v87 + 8))(v88, v89);
  v95 = v90;
  v111(v75, 0);
  sub_2261795CC(v75, *(&v75 + 1), v76, 0);
  sub_2261795CC(v75, *(&v75 + 1), v76, 0);

  sub_2261AC974(v100, type metadata accessor for Key);
  (*(v103 + 8))(v101, v104);
}