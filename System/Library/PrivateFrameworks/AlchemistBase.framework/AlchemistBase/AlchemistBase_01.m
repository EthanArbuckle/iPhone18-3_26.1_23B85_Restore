unint64_t sub_23ED590F4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23ED5EBD4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23ED5EE74();

      sub_23ED5EA04();
      v13 = sub_23ED5EE94();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_23ED5E8B4() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23ED592E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23ED55480(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23ED59724();
      goto LABEL_7;
    }

    sub_23ED5882C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_23ED55480(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23ED5EE24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58) - 8) + 72) * v12;

    return sub_23ED59C4C(a1, v20);
  }

LABEL_13:
  sub_23ED595D0(v12, a2, a3, a1, v18);
}

uint64_t sub_23ED59450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23ED55480(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23ED5995C();
      goto LABEL_7;
    }

    sub_23ED58B70(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_23ED55480(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23ED5EE24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23ED5E8B4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23ED59674(v12, a2, a3, a1, v18);
}

uint64_t sub_23ED595D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  result = sub_23ED59BDC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23ED59674(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23ED5E8B4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_23ED59724()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385858, &qword_23ED60E70);
  v5 = *v0;
  v6 = sub_23ED5ECE4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_23ED584DC(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_23ED59BDC(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

char *sub_23ED5995C()
{
  v1 = v0;
  v36 = sub_23ED5E8B4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385860, &qword_23ED60E78);
  v4 = *v0;
  v5 = sub_23ED5ECE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

uint64_t sub_23ED59BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED59C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED59CBC()
{
  result = qword_27E3856C0;
  if (!qword_27E3856C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3856C0);
  }

  return result;
}

uint64_t sub_23ED59D14(uint64_t a1, unsigned int a2)
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

uint64_t sub_23ED59D5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23ED59DBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "Format";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3)
    {
      v4 = "pixelBufferCreation";
    }

    else
    {
      v4 = "Format";
    }
  }

  else if (a1 == 2)
  {
    v4 = "colorSpaceCreation";
    v5 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v4 = "invalidParameter";
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = "unableToLockBaseAddress";
    v5 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v2 = "pixelBufferCreation";
    }
  }

  else if (a2 == 2)
  {
    v2 = "colorSpaceCreation";
    v6 = 0xD000000000000010;
  }

  else
  {
    v2 = "invalidParameter";
    if (a2 == 3)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a2 != 3)
    {
      v2 = "unableToLockBaseAddress";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23ED5EE04();
  }

  return v7 & 1;
}

AlchemistBase::MLError_optional __swiftcall MLError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLError.rawValue.getter()
{
  v1 = 0x746F4E6C65646F6DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_23ED59FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00646564616F4CLL;
  v3 = 0xD000000000000016;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x746F4E6C65646F6DLL;
  }

  if (v4 == 1)
  {
    v6 = 0x800000023ED61560;
  }

  else
  {
    v6 = 0xEE00646564616F4CLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000023ED61540;
  }

  if (*a2 == 1)
  {
    v2 = 0x800000023ED61560;
  }

  else
  {
    v3 = 0x746F4E6C65646F6DLL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000023ED61540;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23ED5EE04();
  }

  return v11 & 1;
}

uint64_t sub_23ED5A0D8()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5A194()
{
  *v0;
  *v0;
  sub_23ED5EA04();
}

uint64_t sub_23ED5A23C()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

void sub_23ED5A300(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646564616F4CLL;
  v4 = 0x746F4E6C65646F6DLL;
  if (v2 == 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000023ED61560;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (v5)
  {
    v3 = 0x800000023ED61540;
  }

  *a1 = v6;
  a1[1] = v3;
}

AlchemistBase::PixelBufferError_optional __swiftcall PixelBufferError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PixelBufferError.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000017;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_23ED5A46C()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5A53C()
{
  *v0;
  *v0;
  *v0;
  sub_23ED5EA04();
}

uint64_t sub_23ED5A5F8()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

void sub_23ED5A6D0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "colorSpaceCreation";
  v5 = 0xD000000000000010;
  v6 = "invalidParameter";
  v7 = 0xD000000000000017;
  if (v3 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = "unableToLockBaseAddress";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v8 = "pixelBufferCreation";
  }

  else
  {
    v2 = 0xD000000000000013;
    v8 = "Format";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v5;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

AlchemistBase::ColorSpaceError_optional __swiftcall ColorSpaceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ColorSpaceError.rawValue.getter()
{
  if (*v0)
  {
    result = 0x726F707075736E75;
  }

  else
  {
    result = 0x6E6F697461657263;
  }

  *v0;
  return result;
}

unint64_t sub_23ED5A818()
{
  result = qword_27E385868;
  if (!qword_27E385868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385868);
  }

  return result;
}

unint64_t sub_23ED5A870()
{
  result = qword_27E385870;
  if (!qword_27E385870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385870);
  }

  return result;
}

uint64_t sub_23ED5A8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F707075736E75;
  }

  else
  {
    v4 = 0x6E6F697461657263;
  }

  if (v3)
  {
    v5 = 0xEE0064656C696146;
  }

  else
  {
    v5 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v6 = 0x726F707075736E75;
  }

  else
  {
    v6 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646574;
  }

  else
  {
    v7 = 0xEE0064656C696146;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23ED5EE04();
  }

  return v9 & 1;
}

unint64_t sub_23ED5A984()
{
  result = qword_27E385878;
  if (!qword_27E385878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385878);
  }

  return result;
}

uint64_t sub_23ED5A9D8()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5AA70()
{
  *v0;
  sub_23ED5EA04();
}

uint64_t sub_23ED5AAF4()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5AB88@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23ED5ED24();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23ED5ABE8(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461657263;
  if (*v1)
  {
    v2 = 0x726F707075736E75;
  }

  v3 = 0xEE0064656C696146;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PixelBufferError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PixelBufferError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23ED5AE30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23ED5E964();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23ED5E954();
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

void sub_23ED5AF6C(int a1, uint64_t a2, uint64_t a3, Swift::UInt32 format)
{
  v4 = a2 * a3;
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if ((v4 & 0x3F) != 0)
    {
      sub_23ED4807C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
      return;
    }

    v6 = createIOSurfaceBackedPixelBuffer(width:height:format:)(64, v4 >> 6, format);
    if (!v7)
    {
      v8 = v6;
      if (CVPixelBufferLockBaseAddress(v6, 0))
      {
        sub_23ED4811C();
        swift_allocError();
        *v9 = 3;
        swift_willThrow();
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(v8);
        if (BaseAddress)
        {
          MEMORY[0x28223BE20](BaseAddress);
          sub_23ED5EAD4();
          CVPixelBufferUnlockBaseAddress(v8, 0);
          return;
        }

        sub_23ED4811C();
        swift_allocError();
        *v11 = 4;
        swift_willThrow();
        CVPixelBufferUnlockBaseAddress(v8, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23ED5B120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v5 == a3)
      {
        return result;
      }
    }

    v6 = v5 * a4;
    if ((v5 * a4) >> 64 == (v5 * a4) >> 63)
    {
      v7 = 0;
      while (1)
      {
        v8 = v6 + v7;
        if (__OFADD__(v6, v7))
        {
          break;
        }

        v9 = v7 * a3;
        if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
        {
          goto LABEL_16;
        }

        v10 = __OFADD__(v9, v5);
        v11 = v9 + v5;
        if (v10)
        {
          goto LABEL_17;
        }

        ++v7;
        *(a5 + 2 * v8) = *(result + 2 * v11);
        if (a4 == v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23ED5B1AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v5 == a3)
      {
        return result;
      }
    }

    v6 = v5 * a4;
    if ((v5 * a4) >> 64 == (v5 * a4) >> 63)
    {
      v7 = 0;
      while (1)
      {
        v8 = v6 + v7;
        if (__OFADD__(v6, v7))
        {
          break;
        }

        v9 = v7 * a3;
        if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
        {
          goto LABEL_16;
        }

        _VF = __OFADD__(v9, v5);
        v11 = v9 + v5;
        if (_VF)
        {
          goto LABEL_17;
        }

        ++v7;
        _H0 = *(result + 2 * v11);
        __asm { FCVT            S0, H0 }

        *(a5 + 4 * v8) = _S0;
        if (a4 == v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

void sub_23ED5B23C(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v7 = a1;
  v82 = a2;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v8 = &v72;
  v9 = qword_27E3880C8;
  v10 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  v11 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v4)
  {
    v12 = sub_23ED5C344(v7, a3, a4);
    v13 = *(v9 + v10);
    MEMORY[0x28223BE20](v12);
    v14 = sub_23ED5EB44();
    v15 = *(v9 + v10);
    MEMORY[0x28223BE20](v14);
    sub_23ED5EB44();
    v81 = 0;
    v16 = 0xEB00000000736E6FLL;
    v17 = *(v12 + 16);
    v18 = sub_23ED5E9B4();
    v19 = &off_278C70000;
    v20 = [v17 featureValueForName_];

    if (v20)
    {
      v17 = &off_278C70000;
      v8 = [v20 multiArrayValue];

      if (v8)
      {
        v21 = *(v12 + 16);
        v18 = sub_23ED5E9B4();
        v20 = [v21 featureValueForName_];

        if (v20)
        {
          v18 = [v20 multiArrayValue];

          v79 = v18;
          if (v18)
          {
            v20 = *(v12 + 16);
            v18 = sub_23ED5E9B4();
            v16 = [v20 featureValueForName_];

            if (v16)
            {
              v20 = [v16 multiArrayValue];

              v78 = v20;
              if (v20)
              {
                v22 = *(v12 + 16);
                v18 = sub_23ED5E9B4();
                v16 = [v22 featureValueForName_];

                if (v16)
                {
                  v20 = [v16 multiArrayValue];

                  v80 = v20;
                  if (v20)
                  {
                    v23 = *(v12 + 16);
                    v18 = sub_23ED5E9B4();
                    v16 = [v23 featureValueForName_];

                    if (v16)
                    {
                      v20 = [v16 multiArrayValue];

                      if (v20)
                      {
                        v24 = *(v12 + 16);
                        v18 = sub_23ED5E9B4();
                        v16 = [v24 featureValueForName_];

                        if (v16)
                        {
                          v19 = [v16 multiArrayValue];

                          v77 = v19;
                          if (v19)
                          {
                            v76 = MEMORY[0x23EF224F0]();
                            v25 = [v8 shape];
                            sub_23ED47FF8();
                            v26 = sub_23ED5EA54();

                            v27 = v78;
                            if (v26 >> 62)
                            {
                              v28 = sub_23ED5ECD4();
                            }

                            else
                            {
                              v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            }

                            if (v28 != 5)
                            {
                              if (qword_27E385398 != -1)
                              {
                                swift_once();
                              }

                              v33 = sub_23ED5E964();
                              __swift_project_value_buffer(v33, qword_27E3880E0);
                              v34 = sub_23ED5E944();
                              v35 = sub_23ED5EB04();
                              v36 = os_log_type_enabled(v34, v35);
                              v37 = v76;
                              if (v36)
                              {
                                v38 = swift_slowAlloc();
                                *v38 = 0;
                                _os_log_impl(&dword_23ED44000, v34, v35, "Incorrect gaussian shape. Did you export the model to produce unflattened [B, C, N, H, W] Gaussians?", v38, 2u);
                                MEMORY[0x23EF229A0](v38, -1, -1);
                              }

                              sub_23ED4807C();
                              swift_allocError();
                              *v39 = 0;
                              swift_willThrow();
                              v32 = v79;
                              goto LABEL_30;
                            }

                            v29 = [v20 count];
                            v30 = v81;
                            sub_23ED5AF6C(v8, v29, 3, 0x4C303066u);
                            if (v30)
                            {
                              v32 = v79;
LABEL_29:
                              v37 = v76;
LABEL_30:
                              objc_autoreleasePoolPop(v37);

                              return;
                            }

                            v40 = v31;
                            sub_23ED5AF6C(v27, v29, 4, 0x4C303068u);
                            v19 = v79;
                            v81 = v41;
                            sub_23ED5AF6C(v79, v29, 3, 0x4C303068u);
                            v75 = v42;
                            sub_23ED5AF6C(v80, v29, 3, 0x4C303068u);
                            v73 = v40;
                            v74 = v43;
                            sub_23ED5AF6C(v20, v29, 1, 0x4C303068u);
                            v17 = v44;
                            v72 = sub_23ED47AF4(v77);
                            v16 = 0;
                            if (CVPixelBufferLockBaseAddress(v74, 0))
                            {
                              sub_23ED4811C();
                              swift_allocError();
                              *v45 = 3;
                              swift_willThrow();

LABEL_28:
                              v27 = v78;
                              v32 = v79;
                              goto LABEL_29;
                            }

                            BaseAddress = CVPixelBufferGetBaseAddress(v74);
                            if (!BaseAddress)
                            {
                              sub_23ED4811C();
                              swift_allocError();
                              *v55 = 4;
                              swift_willThrow();
                              v56 = v74;
                              CVPixelBufferUnlockBaseAddress(v74, 0);

                              goto LABEL_28;
                            }

                            v47 = (v29 * 3) >> 64;
                            v18 = 3 * v29;
                            if (v47 == v18 >> 63)
                            {
                              if (!v18)
                              {
LABEL_53:
                                CVPixelBufferUnlockBaseAddress(v74, 0);
                                objc_autoreleasePoolPop(v76);

                                v66 = *(v9 + v10);
                                MEMORY[0x28223BE20](v67);
                                sub_23ED5EB44();

                                if (v16)
                                {
                                }

                                else
                                {
                                  v68 = v82;
                                  v69 = v81;
                                  *v82 = v73;
                                  v68[1] = v69;
                                  v70 = v74;
                                  v68[2] = v75;
                                  v68[3] = v70;
                                  v71 = v72;
                                  v68[4] = v17;
                                  v68[5] = v71;
                                }

                                return;
                              }

                              v19 = BaseAddress;
                              if (qword_27E3853B8 == -1)
                              {
                                if (v18 >= 1)
                                {
                                  goto LABEL_37;
                                }

                                goto LABEL_70;
                              }

LABEL_69:
                              swift_once();
                              if (v18 >= 1)
                              {
LABEL_37:
                                _S0 = dword_27E385880;
                                __asm { FCVT            H0, S0 }

                                if (v18 < 4)
                                {
                                  v54 = 0;
LABEL_50:
                                  v64 = v54 - v18;
                                  v65 = &v19->i16[v54];
                                  do
                                  {
                                    *v65 = (*v65 + COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-0.5))) * _H0;
                                    ++v65;
                                  }

                                  while (!__CFADD__(v64++, 1));
                                  goto LABEL_53;
                                }

                                if (v18 >= 0x10)
                                {
                                  v54 = v18 & 0x7FFFFFFFFFFFFFF0;
                                  v57 = v19 + 1;
                                  v58.i64[0] = 0xB800B800B800B800;
                                  v58.i64[1] = 0xB800B800B800B800;
                                  v59 = v18 & 0x7FFFFFFFFFFFFFF0;
                                  do
                                  {
                                    v60 = vmulq_n_f16(vaddq_f16(*v57, v58), _H0);
                                    v57[-1] = vmulq_n_f16(vaddq_f16(v57[-1], v58), _H0);
                                    *v57 = v60;
                                    v57 += 2;
                                    v59 -= 16;
                                  }

                                  while (v59);
                                  if (v18 == v54)
                                  {
                                    goto LABEL_53;
                                  }

                                  if ((v18 & 0xC) == 0)
                                  {
                                    goto LABEL_50;
                                  }
                                }

                                else
                                {
                                  v54 = 0;
                                }

                                v61 = v54;
                                v54 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                v62 = (v19 + 2 * v61);
                                v63 = v61 - (v18 & 0x7FFFFFFFFFFFFFFCLL);
                                do
                                {
                                  *v62 = vmul_n_f16(vadd_f16(*v62, 0xB800B800B800B800), _H0);
                                  ++v62;
                                  v63 += 4;
                                }

                                while (v63);
                                if (v18 == v54)
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_50;
                              }

LABEL_70:
                              __break(1u);
                              return;
                            }

LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_67:
                          __break(1u);
                          goto LABEL_68;
                        }

LABEL_66:
                        __break(1u);
                        goto LABEL_67;
                      }

LABEL_65:
                      __break(1u);
                      goto LABEL_66;
                    }

LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

LABEL_63:
                  __break(1u);
                  goto LABEL_64;
                }

LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_58;
  }
}

id sub_23ED5BEA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_23ED5EE04() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E654C6C61636F66 && a2 == 0xED00007850687467 || (sub_23ED5EE04() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_23ED5BFF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5C148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5C1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23ED5E804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithComputeUnits_];
  v10 = sub_23ED5E9B4();
  [v9 setE5rtCustomANECompilerOptions_];

  v11 = type metadata accessor for ManagedMLModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_23ED4F488(v8, v9, "Joint Predictor", 15, 2);
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v14;
  return v2;
}

uint64_t sub_23ED5C344(uint64_t a1, float a2, float a3)
{
  v7 = sub_23ED52CE0(a1, 0x600, 1536);
  if (!v4)
  {
    v9 = v7;
    v8.i32[0] = 1.0;
    v10 = sub_23ED4ED64(0, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23ED612A0;
    sub_23ED47FF8();
    *(v11 + 32) = sub_23ED5EB84();
    *(v11 + 40) = sub_23ED5EB84();
    objc_allocWithZone(MEMORY[0x277CBFF48]);
    v13 = sub_23ED4F300(v11, 65568);
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v15 = a2;
    v16 = [v14 initWithFloat_];
    [v13 setObject:v16 atIndexedSubscript:0];

    v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v18 = a3;
    v19 = [v17 initWithFloat_];
    [v13 setObject:v19 atIndexedSubscript:1];

    sub_23ED5C500(v10, v13);
    v3 = v20;
  }

  return v3;
}

void sub_23ED5C500(uint64_t a1, void *a2)
{
  v4 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v5 = qword_27E3880C8;
  v6 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  v7 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v2)
  {
    v50 = v6;
    v8 = [v4 shape];
    sub_23ED47FF8();
    v9 = sub_23ED5EA54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23ED607A0;
    *(v10 + 32) = sub_23ED5EAB4();
    *(v10 + 40) = sub_23ED5EAB4();
    *(v10 + 48) = sub_23ED5EAB4();
    *(v10 + 56) = sub_23ED5EAB4();
    v11 = sub_23ED5E3DC(v9, v10);

    if (v11)
    {
      v12 = [a2 shape];
      v13 = sub_23ED5EA54();

      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_23ED612A0;
      *(v14 + 32) = sub_23ED5EB84();
      *(v14 + 40) = sub_23ED5EB84();
      v15 = sub_23ED5E3DC(v13, v14);

      if (v15)
      {
        v17 = MEMORY[0x23EF224F0](v16);
        sub_23ED51DBC(v4, &v51);
        objc_autoreleasePoolPop(v17);
        v18 = v51;
        if (v51)
        {
          v19 = MEMORY[0x23EF224F0]();
          sub_23ED51DBC(a2, &v51);
          objc_autoreleasePoolPop(v19);
          v20 = v51;
          if (v51)
          {
            type metadata accessor for JointPredictorInput();
            v21 = swift_allocObject();
            *(v21 + 16) = v18;
            *(v21 + 24) = v20;
            v22 = v18;
            v23 = v20;
            sub_23ED5CE58(v21);

            v49 = *(v5 + v50);
            MEMORY[0x28223BE20](v48);
            sub_23ED5EB44();
            return;
          }

          if (qword_27E385398 != -1)
          {
            swift_once();
          }

          v41 = sub_23ED5E964();
          __swift_project_value_buffer(v41, qword_27E3880E0);
          v42 = sub_23ED5E944();
          v43 = sub_23ED5EB04();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_23ED44000, v42, v43, "Unable to cast focal length to fp16.", v44, 2u);
            MEMORY[0x23EF229A0](v44, -1, -1);
          }

          sub_23ED5D1A4();
          swift_allocError();
          *v45 = 1;
          swift_willThrow();

          v46 = *(v5 + v50);
          MEMORY[0x28223BE20](v47);
        }

        else
        {
          if (qword_27E385398 != -1)
          {
            swift_once();
          }

          v34 = sub_23ED5E964();
          __swift_project_value_buffer(v34, qword_27E3880E0);
          v35 = sub_23ED5E944();
          v36 = sub_23ED5EB04();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_23ED44000, v35, v36, "Unable to cast image to fp16.", v37, 2u);
            MEMORY[0x23EF229A0](v37, -1, -1);
          }

          sub_23ED5D1A4();
          swift_allocError();
          *v38 = 1;
          v39 = swift_willThrow();
          v40 = *(v5 + v50);
          MEMORY[0x28223BE20](v39);
        }

        goto LABEL_29;
      }

      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v31 = sub_23ED5E964();
      __swift_project_value_buffer(v31, qword_27E3880E0);
      v25 = sub_23ED5E944();
      v32 = sub_23ED5EB04();
      if (os_log_type_enabled(v25, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_23ED44000, v25, v32, "Incompatible focal length shape.", v33, 2u);
        MEMORY[0x23EF229A0](v33, -1, -1);
      }
    }

    else
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v24 = sub_23ED5E964();
      __swift_project_value_buffer(v24, qword_27E3880E0);
      v25 = sub_23ED5E944();
      v26 = sub_23ED5EB04();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23ED44000, v25, v26, "Incompatible image shape.", v27, 2u);
        MEMORY[0x23EF229A0](v27, -1, -1);
      }
    }

    sub_23ED5D1A4();
    swift_allocError();
    *v28 = 0;
    v29 = swift_willThrow();
    v30 = *(v5 + v50);
    MEMORY[0x28223BE20](v29);
LABEL_29:
    sub_23ED5EB44();
  }
}

uint64_t sub_23ED5CE58(uint64_t a1)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385888, &unk_23ED61380);
  sub_23ED5EB44();

  if (!v2)
  {
    v5 = *(a1 + 16);
    type metadata accessor for JointPredictorOutput();
    a1 = swift_allocObject();
    *(a1 + 16) = v9;
    *(a1 + 24) = v5;
    v6 = v5;
  }

  return a1;
}

id sub_23ED5CF6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v5 = [a1 predictionFromFeatures:a2 options:a3 error:v10];
  v6 = v10[0];
  if (v5)
  {
    *a4 = v5;
    result = v6;
  }

  else
  {
    v8 = v10[0];
    sub_23ED5E754();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23ED5D028()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23ED5D0B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t sub_23ED5D0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23ED5D1A4()
{
  result = qword_27E385890;
  if (!qword_27E385890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385890);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InitializerParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InitializerParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s13AlchemistBase22NetworkInputDimensionsVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13AlchemistBase22NetworkInputDimensionsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FoVUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FoVUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23ED5D5A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5D6E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5D744(char *a1)
{
  v2 = v1;
  v4 = sub_23ED5E804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithComputeUnits_];
  v10 = type metadata accessor for ManagedMLModel();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_23ED4F488(v8, v9, "FoV Predictor", 13, 2);
  sub_23ED5E7B4();
  v13 = sub_23ED5E794();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v8, v4);

  if (v13 == 0xD00000000000002FLL && 0x800000023ED62050 == v15)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_23ED5EE04();
  }

  *(v2 + 24) = v18 & 1;
  if (qword_27E385398 != -1)
  {
    swift_once();
  }

  v19 = sub_23ED5E964();
  __swift_project_value_buffer(v19, qword_27E3880E0);

  v20 = sub_23ED5E944();
  v21 = sub_23ED5EAE4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = *(v2 + 24) == 0;
    if (*(v2 + 24))
    {
      v25 = 0x7461636572706544;
    }

    else
    {
      v25 = 7824718;
    }

    v31 = v16;
    v26 = a1;
    if (v24)
    {
      v27 = 0xE300000000000000;
    }

    else
    {
      v27 = 0xEA00000000006465;
    }

    v28 = sub_23ED4A8F8(v25, v27, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_23ED44000, v20, v21, "Model to be loaded has been identified as %s version.\n  ", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x23EF229A0](v23, -1, -1);
    MEMORY[0x23EF229A0](v22, -1, -1);

    v31(v26, v4);
  }

  else
  {

    v16(a1, v4);
  }

  return v2;
}

__CVBuffer *sub_23ED5DAB8(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v3 = 256;
  }

  else
  {
    v3 = 1536;
  }

  v4 = sub_23ED52CE0(a1, v3, v3);
  if (!v2)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23ED612A0;
    sub_23ED47FF8();
    *(v6 + 32) = sub_23ED5EB84();
    *(v6 + 40) = sub_23ED5EB84();
    v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v8 = sub_23ED4F300(v6, 65552);
    v1 = sub_23ED5DBCC(v5, v8);
  }

  return v1;
}

__CVBuffer *sub_23ED5DBCC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v7 = qword_27E3880C8;
  v8 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  v9 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v3)
  {
    if (*(v4 + 24))
    {
      v10 = 256;
    }

    else
    {
      v10 = 1536;
    }

    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(v6);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
    if (Width == v10 && Height == v10 && PixelFormatType == 1111970369)
    {
      v14 = [a2 shape];
      sub_23ED47FF8();
      v15 = sub_23ED5EA54();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23ED612A0;
      *(v16 + 32) = sub_23ED5EB84();
      *(v16 + 40) = sub_23ED5EB84();
      v17 = sub_23ED5E3DC(v15, v16);

      if (v17)
      {
        v18.i32[0] = 1.0;
        v28 = sub_23ED4ED64(0, v18);
        type metadata accessor for FoVPredictorInput();
        *(swift_allocObject() + 16) = v28;
        v29 = objc_allocWithZone(MEMORY[0x277CBFF68]);
        v30 = v28;
        v31 = [v29 init];
        v40[1] = v40;
        v32 = *(v4 + 16);
        v39 = MEMORY[0x28223BE20](v31);
        v34 = *(v33 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
        MEMORY[0x28223BE20](v39);
        v36 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385888, &unk_23ED61380);
        sub_23ED5EB44();

        v37 = v40[3];
        type metadata accessor for FoVPredictorOutput();
        v6 = swift_allocObject();
        *(v6 + 2) = v37;
        v38 = *(v7 + v8);
        MEMORY[0x28223BE20](v6);
        sub_23ED5EB44();
        return v6;
      }

      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v22 = sub_23ED5E964();
      __swift_project_value_buffer(v22, qword_27E3880E0);
      v20 = sub_23ED5E944();
      v23 = sub_23ED5EB04();
      if (os_log_type_enabled(v20, v23))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23ED44000, v20, v23, "Incompatible principal shape.", v6, 2u);
        MEMORY[0x23EF229A0](v6, -1, -1);
      }
    }

    else
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v19 = sub_23ED5E964();
      __swift_project_value_buffer(v19, qword_27E3880E0);
      v20 = sub_23ED5E944();
      v21 = sub_23ED5EB04();
      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23ED44000, v20, v21, "Incompatible image shape.", v6, 2u);
        MEMORY[0x23EF229A0](v6, -1, -1);
      }
    }

    sub_23ED5D1A4();
    swift_allocError();
    *v24 = 0;
    v25 = swift_willThrow();
    v26 = *(v7 + v8);
    MEMORY[0x28223BE20](v25);
    sub_23ED5EB44();
  }

  return v6;
}

uint64_t sub_23ED5E380()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5E3DC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_23ED47FF8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EF21FF0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EF21FF0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23ED5EB94();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23ED5EB94();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23ED5ECD4();
  }

  result = sub_23ED5ECD4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_23ED5E61C(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x23EF224F0]();
  sub_23ED4FFC8();
  if (v3)
  {
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel);
    if (v8)
    {
      v9 = v8;
      a2(&v11);

      v10 = v11;
      objc_autoreleasePoolPop(v7);
      *a3 = v10;
    }

    else
    {
      __break(1u);
    }
  }
}