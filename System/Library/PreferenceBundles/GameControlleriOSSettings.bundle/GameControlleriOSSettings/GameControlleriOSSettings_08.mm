uint64_t sub_C6190(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_D8118() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_D8118() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_C63B8(char *a1, int64_t a2, char a3)
{
  result = sub_C63D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_C63D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_1171A8);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_C64F8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_C6650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_119890);
    v3 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1ED4C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _s7SwiftUI5ColorV25GameControlleriOSSettingsE013accessibilityc13NameForSystemcH0yS2SFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_11EE88 != -1)
  {
    swift_once();
  }

  if (*(qword_11EE90 + 16) && (sub_1ED4C(a1, a2), (v4 & 1) != 0))
  {
    sub_C766C();
    swift_retain_n();
    v5 = sub_D7E98();
    v6 = [v5 CGColor];

    v7 = AXNameFromColor(v6);
    a1 = sub_D7C18();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_C68A8()
{
  result = qword_1196C8;
  if (!qword_1196C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1196C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PantheonStruct(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_C6A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_116E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_DC40(&qword_117438);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_C6B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_116E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_DC40(&qword_117438);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_C6CC8()
{
  sub_33170();
  if (v0 <= 0x3F)
  {
    sub_C6E1C();
    if (v1 <= 0x3F)
    {
      sub_C6F14(319, &unk_117F90, &qword_118ED0, &unk_DF5E0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_C6E6C();
        if (v3 <= 0x3F)
        {
          sub_C6EC4();
          if (v4 <= 0x3F)
          {
            sub_C6F14(319, &qword_117F80, &qword_117EA8, &unk_E03B0, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_C6E1C()
{
  if (!qword_118400)
  {
    v0 = sub_D7958();
    if (!v1)
    {
      atomic_store(v0, &qword_118400);
    }
  }
}

void sub_C6E6C()
{
  if (!qword_119728)
  {
    v0 = sub_D7DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_119728);
    }
  }
}

unint64_t sub_C6EC4()
{
  result = qword_119730;
  if (!qword_119730)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_119730);
  }

  return result;
}

void sub_C6F14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 sub_C6F88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_C6F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_C6FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C7048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_116E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_C7128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_116E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_C71F0()
{
  sub_33170();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_C7278()
{
  result = qword_119810;
  if (!qword_119810)
  {
    sub_EBC0(&qword_119818);
    sub_C72FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119810);
  }

  return result;
}

unint64_t sub_C72FC()
{
  result = qword_119820;
  if (!qword_119820)
  {
    sub_EBC0(&qword_119828);
    sub_15FB8(&qword_119830, &qword_119838);
    sub_15FB8(&qword_119840, &qword_119848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119820);
  }

  return result;
}

uint64_t sub_C7468()
{
  v1 = sub_D6BB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  if (*(v0 + *(type metadata accessor for SystemImageView(0) + 24)) == 1)
  {
    sub_C4B28(v7);
    (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
    v8 = sub_D6BA8();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      if (qword_11EE78 != -1)
      {
        swift_once();
      }

      v10 = &qword_11FBD8;
    }

    else
    {
      if (qword_11EE70 != -1)
      {
        swift_once();
      }

      v10 = &qword_11FBD0;
    }
  }

  else
  {
    if (qword_11EE80 != -1)
    {
      swift_once();
    }

    v10 = &qword_11FBE0;
  }

  return *v10;
}

unint64_t sub_C766C()
{
  result = qword_119878;
  if (!qword_119878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_119878);
  }

  return result;
}

uint64_t sub_C770C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_EBC0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C7790()
{
  result = qword_119918;
  if (!qword_119918)
  {
    sub_EBC0(&qword_1198C8);
    sub_C7848();
    sub_15FB8(&qword_119960, &qword_119968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119918);
  }

  return result;
}

unint64_t sub_C7848()
{
  result = qword_119920;
  if (!qword_119920)
  {
    sub_EBC0(&qword_1198C0);
    sub_EBC0(&qword_1198B0);
    sub_EBC0(&qword_119928);
    sub_C79E0();
    sub_EBC0(&qword_119940);
    sub_15FB8(&qword_119948, &qword_119940);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_119950, &qword_119958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119920);
  }

  return result;
}

unint64_t sub_C79E0()
{
  result = qword_119930;
  if (!qword_119930)
  {
    sub_EBC0(&qword_1198B0);
    sub_15FB8(&qword_119938, &qword_1198A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119930);
  }

  return result;
}

uint64_t sub_C7AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityEditView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C7B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_C7BE8()
{
  result = qword_1199C8;
  if (!qword_1199C8)
  {
    sub_EBC0(&qword_1199C0);
    sub_EBC0(&qword_1199D0);
    sub_D7148();
    sub_15FB8(&qword_1199D8, &qword_1199D0);
    sub_C7D2C(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1199C8);
  }

  return result;
}

uint64_t sub_C7D2C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_C7D74(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for ActivityEditView(0);
  return (sub_C41B8(v3, v4, *(v2 + *(v5 + 40))) & 1) == 0;
}

uint64_t sub_C7DCC()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_DC40(&qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6BB8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 56);
  sub_DC40(&qword_117EA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_C8048()
{
  v1 = type metadata accessor for ActivityEditView(0);
  if (((*(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 52)))() & 1) == 0)
  {

    sub_DC40(&qword_116738);
    sub_D78C8();
  }

  v2 = [objc_opt_self() sharedApplication];
  [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

uint64_t sub_C8198@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for ActivityEditView(0);

  sub_DC40(&qword_116738);
  sub_D78B8();
  if (v8 == v3 && v9 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_D8118();
  }

  *a1 = swift_getKeyPath();
  sub_DC40(&qword_116DC8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SystemImageView(0);
  v7 = (a1 + *(result + 20));
  *v7 = v3;
  v7[1] = v4;
  *(a1 + *(result + 24)) = v5 & 1;
  return result;
}

unint64_t sub_C82B8()
{
  result = qword_119A10;
  if (!qword_119A10)
  {
    sub_EBC0(&qword_119A08);
    sub_C833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119A10);
  }

  return result;
}

unint64_t sub_C833C()
{
  result = qword_119A18;
  if (!qword_119A18)
  {
    sub_EBC0(&qword_119A20);
    sub_EBC0(&qword_119A28);
    sub_D7148();
    sub_15FB8(&qword_119A30, &qword_119A28);
    sub_C7D2C(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_C7D2C(&qword_116E38, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119A18);
  }

  return result;
}

uint64_t sub_C84D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityEditView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_C8564()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_DC40(&qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6BB8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 56);
  sub_DC40(&qword_117EA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_C87DC()
{
  v1 = type metadata accessor for ActivityEditView(0);
  if (((*(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 52)))() & 1) == 0)
  {

    sub_DC40(&qword_116738);
    sub_D78C8();
  }

  v2 = [objc_opt_self() sharedApplication];
  [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

uint64_t sub_C892C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for ActivityEditView(0);

  sub_DC40(&qword_116738);
  sub_D78B8();
  if (v7 == v3 && v8 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_D8118();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

unint64_t sub_C89FC()
{
  result = qword_119A48;
  if (!qword_119A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119A48);
  }

  return result;
}

uint64_t sub_C8A54@<X0>(void *a1@<X8>)
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_1180A8);
  result = sub_D77E8();
  v3 = v6;
  if (v6)
  {
    v4 = v5;
  }

  else
  {
    sub_DC40(&qword_116738);
    result = sub_D78B8();
    v4 = v5;
    v3 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_C8B4C()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_DC40(&qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6BB8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 56);
  sub_DC40(&qword_117EA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_C8DB4()
{
  type metadata accessor for ActivityEditView(0);

  sub_DC40(&qword_1180A8);
  sub_D77F8();
  result = sub_C4428();
  if ((result & 1) == 0)
  {
    result = sub_C218C();
    if ((result & 1) == 0)
    {

      sub_DC40(&qword_116738);
      return sub_D78C8();
    }
  }

  return result;
}

uint64_t sub_C8ED8()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_DC40(&qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6BB8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 56);
  sub_DC40(&qword_117EA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_C9138()
{
  type metadata accessor for ActivityEditView(0);
  v1 = *(v0 + 16);
  result = sub_D7C88();
  if (result > v1)
  {

    sub_DC40(&qword_116738);
    v3 = sub_D78B8();
    sub_C2310(v3);

    sub_D78C8();
  }

  return result;
}

id sub_C9298()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_C9324()
{
  type metadata accessor for GCSPreferencesStore();
  sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_C93AC()
{
  type metadata accessor for GCSAppStore();
  sub_D77D8();
  return v1;
}

uint64_t sub_C9418()
{
  sub_DC40(&qword_117A28);
  sub_D77D8();
  return v1;
}

uint64_t sub_C9460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_DC40(&qword_119AD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-v6];
  sub_D7D98();
  sub_C9748(v1, &v24);
  v8 = sub_D7D88();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = v1[1];
  *(v9 + 32) = *v1;
  *(v9 + 48) = v10;
  v11 = v1[3];
  *(v9 + 64) = v1[2];
  *(v9 + 80) = v11;
  sub_C9748(v1, &v24);
  v12 = sub_D7D88();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = v2[1];
  *(v13 + 32) = *v2;
  *(v13 + 48) = v14;
  v15 = v2[3];
  *(v13 + 64) = v2[2];
  *(v13 + 80) = v15;
  sub_D7908();
  sub_DC40(&qword_116510);
  sub_D78B8();
  LODWORD(v12) = v23[15];

  if (v12 == 1)
  {
    __chkstk_darwin(v16);
    *&v23[-16] = v2;
    v24 = sub_A9308(0xD000000000000023, 0x80000000000E7240);
    v25 = v17;
    sub_16000();
    v24 = sub_D73B8();
    v25 = v18;
    v26 = v19 & 1;
    v27 = v20;
    sub_C9AA0();
    sub_D79A8();
    (*(v5 + 32))(a1, v7, v4);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 56))(a1, v21, 1, v4);
}

id sub_C9784@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    result = [v2 systemButtonActionsEnabled];
    *a1 = result;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

id sub_C9814(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *a1;

    return [v3 setSystemButtonActionsEnabled:v4];
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

__n128 sub_C98B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v23 = v3[1];
  sub_DC40(&qword_119C00);
  sub_D7808();
  v21 = *v22;
  v20 = *&v22[8];
  v23 = v3[2];
  sub_DC40(&qword_1166E0);
  sub_D7808();
  v4 = *v22;
  v5 = v22[16];
  v23 = v3[3];
  sub_DC40(&qword_119C08);
  sub_D7808();
  v19 = *v22;
  v6 = *&v22[16];
  sub_D7D98();
  sub_C9748(v3, v22);
  v7 = sub_D7D88();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = v3[3];
  v11 = *v3;
  v10 = v3[1];
  *(v8 + 64) = v3[2];
  *(v8 + 80) = v9;
  *(v8 + 32) = v11;
  *(v8 + 48) = v10;
  sub_C9748(v3, v22);
  v12 = sub_D7D88();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  *(v13 + 64) = v3[2];
  *(v13 + 80) = v14;
  *(v13 + 32) = v16;
  *(v13 + 48) = v15;
  sub_D7908();
  v17 = *v22;
  result = *&v22[16];
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *(a1 + 41) = *v22;
  *(a1 + 44) = *&v22[3];
  *(a1 + 48) = v19;
  *(a1 + 64) = v6;
  *(a1 + 72) = v17;
  *(a1 + 88) = result;
  return result;
}

unint64_t sub_C9AA0()
{
  result = qword_11F180[0];
  if (!qword_11F180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_11F180);
  }

  return result;
}

__n128 sub_C9AF4@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for GCSPreferencesStore();
  sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v2 = sub_D6DF8();
  v4 = v3;
  type metadata accessor for GCSAppStore();
  sub_4428C(0);
  sub_D77D8();
  sub_D77D8();
  sub_DC40(&qword_117A28);
  sub_D77D8();
  result = v6;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1] = v6;
  a1[2].n128_u8[0] = v6.n128_u8[0];
  a1[2].n128_u64[1] = v6.n128_u64[1];
  a1[3] = v6;
  return result;
}

uint64_t sub_C9C18()
{
  type metadata accessor for GCSPreferencesStore();
  sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

__n128 sub_C9C8C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for GCSAppStore();
  sub_4428C(0);
  sub_D77D8();
  sub_D77D8();
  sub_DC40(&qword_117A28);
  sub_D77D8();
  result = v7;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  *(a3 + 32) = v7.n128_u8[0];
  *(a3 + 33) = v7.n128_u32[0];
  *(a3 + 36) = *(v7.n128_u32 + 3);
  *(a3 + 40) = v7.n128_u64[1];
  *(a3 + 48) = v7;
  return result;
}

uint64_t sub_C9DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_C9E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_C9E74()
{
  result = qword_119AD8;
  if (!qword_119AD8)
  {
    sub_EBC0(&qword_119AE0);
    sub_C9EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119AD8);
  }

  return result;
}

unint64_t sub_C9EF8()
{
  result = qword_119AE8;
  if (!qword_119AE8)
  {
    sub_EBC0(&qword_119AD0);
    sub_C9AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119AE8);
  }

  return result;
}

uint64_t sub_C9F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_C9FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_CA05C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v67 = sub_DC40(&qword_119AF0);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v56 - v3;
  v68 = sub_DC40(&qword_119AF8);
  v72 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v56 - v6;
  v60 = sub_D6F88();
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_DC40(&qword_119B00);
  v57 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v58 = sub_DC40(&qword_119B08);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v13 = &v56 - v12;
  v64 = sub_DC40(&qword_119B10);
  v71 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = &v56 - v16;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_D7D98();
  sub_CC488(v1, &v77);
  v17 = sub_D7D88();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = *(v1 + 80);
  *(v18 + 96) = *(v1 + 64);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(v1 + 96);
  v20 = *(v1 + 16);
  *(v18 + 32) = *v1;
  *(v18 + 48) = v20;
  v21 = *(v1 + 48);
  *(v18 + 64) = *(v1 + 32);
  *(v18 + 80) = v21;
  sub_CC488(v1, &v77);
  v22 = sub_D7D88();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  v24 = *(v2 + 80);
  *(v23 + 96) = *(v2 + 64);
  *(v23 + 112) = v24;
  *(v23 + 128) = *(v2 + 96);
  v25 = *(v2 + 16);
  *(v23 + 32) = *v2;
  *(v23 + 48) = v25;
  v26 = *(v2 + 48);
  *(v23 + 64) = *(v2 + 32);
  *(v23 + 80) = v26;
  sub_D7908();
  v74 = v2;
  sub_DC40(&qword_119B18);
  sub_CC648();
  sub_15FB8(&qword_119B28, &qword_119B18);
  sub_16000();
  sub_D7888();
  sub_D6F78();
  v27 = sub_15FB8(&qword_119B30, &qword_119B00);
  v28 = v60;
  sub_D7438();
  (*(v61 + 8))(v8, v28);
  (*(v57 + 8))(v11, v9);
  *&v77 = v9;
  *(&v77 + 1) = v28;
  v78 = v27;
  v79 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  sub_D7458();
  (*(v59 + 8))(v13, v29);
  v30 = swift_allocObject();
  v31 = *(v2 + 80);
  *(v30 + 80) = *(v2 + 64);
  *(v30 + 96) = v31;
  *(v30 + 112) = *(v2 + 96);
  v32 = *(v2 + 16);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v32;
  v33 = *(v2 + 48);
  *(v30 + 48) = *(v2 + 32);
  *(v30 + 64) = v33;
  sub_CC488(v2, &v77);
  sub_DC40(&qword_119558);
  sub_CC700();
  v34 = v62;
  sub_D7848();
  v77 = *(v2 + 24);
  LOBYTE(v78) = *(v2 + 40);
  sub_DC40(&qword_116510);
  sub_D78E8();
  v35 = swift_allocObject();
  v36 = *(v2 + 80);
  *(v35 + 80) = *(v2 + 64);
  *(v35 + 96) = v36;
  *(v35 + 112) = *(v2 + 96);
  v37 = *(v2 + 16);
  *(v35 + 16) = *v2;
  *(v35 + 32) = v37;
  v38 = *(v2 + 48);
  *(v35 + 48) = *(v2 + 32);
  *(v35 + 64) = v38;
  v39 = swift_allocObject();
  v40 = *(v2 + 80);
  *(v39 + 80) = *(v2 + 64);
  *(v39 + 96) = v40;
  *(v39 + 112) = *(v2 + 96);
  v41 = *(v2 + 16);
  *(v39 + 16) = *v2;
  *(v39 + 32) = v41;
  v42 = *(v2 + 48);
  *(v39 + 48) = *(v2 + 32);
  *(v39 + 64) = v42;
  sub_CC488(v2, &v77);
  sub_CC488(v2, &v77);
  sub_DC40(&qword_119B40);
  sub_15FB8(&qword_119B48, &qword_119AF0);
  sub_CCA5C();
  v43 = v65;
  v44 = v67;
  sub_D7518();

  (*(v69 + 8))(v34, v44);
  v45 = *(v71 + 16);
  v46 = v63;
  v47 = v64;
  v45(v63, v73, v64);
  v48 = *(v72 + 16);
  v49 = v66;
  v50 = v68;
  v48(v66, v43, v68);
  v51 = v70;
  v45(v70, v46, v47);
  v52 = sub_DC40(&qword_119B70);
  v48(&v51[*(v52 + 48)], v49, v50);
  v53 = *(v72 + 8);
  v53(v43, v50);
  v54 = *(v71 + 8);
  v54(v73, v47);
  v53(v49, v50);
  return (v54)(v46, v47);
}

uint64_t sub_CAA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_DC40(&qword_119B88);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v33 - v4;
  v5 = sub_DC40(&qword_119B90);
  __chkstk_darwin(v5 - 8);
  v35 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = v33 - v8;
  v9 = sub_DC40(&qword_119B98);
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  v44 = xmmword_E3780;
  sub_DC40(&qword_119BA0);
  sub_CC648();
  sub_15FB8(&qword_119BA8, &qword_119BA0);
  v41 = v14;
  sub_D6C18();
  v44 = xmmword_E3790;
  v36 = v11;
  sub_D6C18();
  v15 = *(a1 + 88);
  v44 = *(a1 + 72);
  v45 = v15;
  sub_DC40(&qword_119B80);
  sub_D78E8();
  v16 = v43;
  v44 = v42;
  v45 = v43;
  sub_D78B8();
  v17 = v42;
  if ((*(&v42 + 1) - 1) > 2)
  {

    v18 = sub_CCB8C(v16, *(&v16 + 1));
    if (*(&v17 + 1))
    {
      v33[1] = v33;
      v44 = v17;
      __chkstk_darwin(v18);
      v33[-4] = a1;
      *&v33[-3] = v17;

      sub_DC40(&qword_119BD0);
      sub_15FB8(&qword_119BD8, &qword_119BD0);
      v19 = v34;
      sub_D6C18();
      sub_CCB8C(v17, *(&v17 + 1));
      v21 = v38;
      v20 = v39;
      (*(v39 + 32))(v38, v19, v3);
      v22 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_CCB8C(v42, *(&v42 + 1));

    sub_CCB8C(v16, *(&v16 + 1));
  }

  v22 = 1;
  v21 = v38;
  v20 = v39;
LABEL_6:
  v23 = 1;
  (*(v20 + 56))(v21, v22, 1, v3);
  sub_15FB8(&qword_119BB0, &qword_119B98);
  v24 = v40;
  sub_D6C58();
  v25 = sub_DC40(&qword_119BB8);
  v26 = v36;
  sub_D6C58();
  v27 = *(v25 + 64);
  v28 = v35;
  sub_16054(v21, v35, &qword_119B90);
  if ((*(v20 + 48))(v28, 1, v3) != 1)
  {
    v29 = v34;
    (*(v20 + 32))(v34, v28, v3);
    sub_15FB8(&qword_119BC8, &qword_119B88);
    sub_D6C58();
    (*(v20 + 8))(v29, v3);
    v23 = 0;
  }

  v30 = sub_DC40(&qword_119BC0);
  (*(*(v30 - 8) + 56))(v24 + v27, v23, 1, v30);
  sub_160BC(v21, &qword_119B90);
  v31 = *(v37 + 8);
  v31(v26, v9);
  return (v31)(v41, v9);
}

uint64_t sub_CB10C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_D7708();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D7BD8();
  v7 = [objc_opt_self() iconImageForType:v6];

  if (!v7)
  {
    v10 = 0;
LABEL_6:
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v8 = [v7 UIImage];

  if (!v8)
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  sub_D76E8();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v10 = sub_D7758();

  (*(v3 + 8))(v5, v2);
  sub_D7A18();
  sub_D6C28();

  LOBYTE(v45) = 1;
  LOBYTE(v39) = 0;
  v37 = v56;
  v36 = v57;
  v35 = v58;
  v34 = v59;
  v33 = v60;
  v32 = v61;
  v11 = 1;
  v7 = 0x3FF0000000000000;
  v12 = 256;
LABEL_7:
  v28 = v7;
  v29 = 0;
  v31 = v10;
  v45 = sub_A9308(0xD000000000000022, 0x80000000000E7300);
  v46 = v13;
  sub_16000();
  v14 = sub_D73B8();
  v16 = v15;
  v39 = v10;
  v30 = v12 | v11;
  *&v40 = v12 | v11;
  *(&v40 + 1) = v7;
  *&v41 = 0;
  *(&v41 + 1) = v37;
  v17 = v36;
  *&v42 = v36;
  v18 = v35;
  v19 = v34;
  *(&v42 + 1) = v35;
  *&v43 = v34;
  v20 = v33;
  v21 = v32;
  *(&v43 + 1) = v33;
  v44 = v32;
  v23 = v22 & 1;
  v38 = v22 & 1;
  v24 = v42;
  *(a1 + 32) = v41;
  *(a1 + 48) = v24;
  *(a1 + 64) = v43;
  v25 = v40;
  *a1 = v39;
  *(a1 + 16) = v25;
  *(a1 + 80) = v21;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v22 & 1;
  *(a1 + 112) = v26;
  sub_16054(&v39, &v45, &qword_119BE8);
  sub_1F900(v14, v16, v23);

  sub_1F8F0(v14, v16, v23);

  v45 = v31;
  v46 = 0;
  v47 = v30;
  v48 = v28;
  v49 = v29;
  v50 = v37;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  return sub_160BC(&v45, &qword_119BE8);
}

double sub_CB574@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D6FB8();
  v20 = 1;
  a1(&v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  sub_16054(&v21, &v10, &qword_119BF0);
  sub_160BC(v29, &qword_119BF0);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27;
  *(&v19[7] + 7) = v28;
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  *(a2 + 113) = v19[6];
  *(a2 + 128) = *(&v19[6] + 15);
  v6 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v6;
  result = *&v19[2];
  v8 = v19[3];
  *(a2 + 49) = v19[2];
  v9 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 65) = v8;
  return result;
}

uint64_t sub_CB6D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_D7708();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D7BD8();
  v7 = [objc_opt_self() appIconImageForBundleIdentifier:v6];

  if (!v7)
  {
    v10 = 0;
LABEL_6:
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v8 = [v7 UIImage];

  if (!v8)
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  sub_D76E8();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v10 = sub_D7758();

  (*(v3 + 8))(v5, v2);
  sub_D7A18();
  sub_D6C28();

  LOBYTE(v45) = 1;
  LOBYTE(v39) = 0;
  v37 = v56;
  v36 = v57;
  v35 = v58;
  v34 = v59;
  v33 = v60;
  v32 = v61;
  v11 = 1;
  v7 = 0x3FF0000000000000;
  v12 = 256;
LABEL_7:
  v28 = v7;
  v29 = 0;
  v31 = v10;
  v45 = sub_A9308(0xD000000000000020, 0x80000000000E72A0);
  v46 = v13;
  sub_16000();
  v14 = sub_D73B8();
  v16 = v15;
  v39 = v10;
  v30 = v12 | v11;
  *&v40 = v12 | v11;
  *(&v40 + 1) = v7;
  *&v41 = 0;
  *(&v41 + 1) = v37;
  v17 = v36;
  *&v42 = v36;
  v18 = v35;
  v19 = v34;
  *(&v42 + 1) = v35;
  *&v43 = v34;
  v20 = v33;
  v21 = v32;
  *(&v43 + 1) = v33;
  v44 = v32;
  v23 = v22 & 1;
  v38 = v22 & 1;
  v24 = v42;
  *(a1 + 32) = v41;
  *(a1 + 48) = v24;
  *(a1 + 64) = v43;
  v25 = v40;
  *a1 = v39;
  *(a1 + 16) = v25;
  *(a1 + 80) = v21;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v22 & 1;
  *(a1 + 112) = v26;
  sub_16054(&v39, &v45, &qword_119BE8);
  sub_1F900(v14, v16, v23);

  sub_1F8F0(v14, v16, v23);

  v45 = v31;
  v46 = 0;
  v47 = v30;
  v48 = v28;
  v49 = v29;
  v50 = v37;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  return sub_160BC(&v45, &qword_119BE8);
}

double sub_CBB30@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v61._countAndFlagsBits = a2;
  v61._object = a3;
  v60 = a4;
  v5 = sub_D7708();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D7018();
  __chkstk_darwin(v7 - 8);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a1;
  *&v100 = *(a1 + 2);
  sub_DC40(&qword_119B78);
  v9 = sub_D78B8();
  v10 = v89;
  v11 = (*(*v89 + 88))(v9);

  if (v11 >> 62)
  {
LABEL_25:
    v12 = sub_D8078();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_26:

    sub_D7008();
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    sub_D6FF8(v107);
    sub_D6FE8(v61);
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    sub_D6FF8(v108);
    sub_D7038();
    *&v89 = sub_D73A8();
    *(&v89 + 1) = v47;
    LOBYTE(v90) = v48 & 1;
    *(&v90 + 1) = v49;
    sub_CCD34(&v89);
    v69 = v93;
    v70 = v94;
    v71[0] = v95[0];
    *(v71 + 9) = *(v95 + 9);
    v65 = v89;
    v66 = v90;
    v67 = v91;
    v68 = v92;
    sub_DC40(&qword_119BF0);
    sub_15FB8(&qword_119BF8, &qword_119BF0);
    sub_D70B8();
    goto LABEL_27;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_3:
  v13 = 0;
  v62 = v11 & 0xC000000000000001;
  while (v62)
  {
    v14 = sub_D7FF8();
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_17;
    }

LABEL_8:
    v10 = v14;
    v16 = [v10 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = sub_D7C18();
      v20 = v19;

      if (v18 == v61._countAndFlagsBits && v20 == v61._object)
      {
        goto LABEL_18;
      }

      v22 = sub_D8118();

      if (v22)
      {
        goto LABEL_19;
      }
    }

    ++v13;
    if (v15 == v12)
    {
      goto LABEL_26;
    }
  }

  if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = *(v11 + 8 * v13 + 32);
  v15 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
LABEL_18:

LABEL_19:

  v23 = sub_D7BD8();
  v24 = [objc_opt_self() appIconImageForBundleIdentifier:v23];

  if (v24 && (v25 = [v24 UIImage], v24, v25))
  {
    v26 = v25;
    sub_D76E8();
    v28 = v56;
    v27 = v57;
    v29 = v58;
    (*(v57 + 104))(v56, enum case for Image.ResizingMode.stretch(_:), v58);
    v30 = sub_D7758();

    (*(v27 + 8))(v28, v29);
    sub_D7A18();
    sub_D6C28();

    *&v63[3] = v105[2];
    *&v63[11] = v105[3];
    *&v63[19] = v106;
    v96 = v30;
    LOWORD(v97) = 257;
    *(&v97 + 1) = 0x3FF0000000000000;
    LOWORD(v98[0]) = 0;
    *&v98[3] = *(&v106 + 1);
    *(&v98[2] + 2) = *&v63[16];
    *(&v98[1] + 2) = *&v63[8];
    *(v98 + 2) = *v63;
  }

  else
  {
    v97 = 0u;
    memset(v98, 0, 56);
    v96 = 0u;
  }

  v31 = [v10 localizedName];

  v32 = sub_D7C18();
  v34 = v33;

  *&v89 = v32;
  *(&v89 + 1) = v34;
  sub_16000();
  v35 = sub_D73B8();
  v37 = v36;
  v39 = v38;
  sub_D76B8();
  v40 = sub_D7378();
  v42 = v41;
  LODWORD(v61._object) = v43;
  v62 = v44;

  sub_1F8F0(v35, v37, v39 & 1);

  v77 = v98[2];
  v73 = v96;
  v74 = v97;
  v79[0] = v96;
  v79[1] = v97;
  v75 = v98[0];
  v76 = v98[1];
  v78 = *&v98[3];
  v79[3] = v98[1];
  v79[4] = v98[2];
  v79[2] = v98[0];
  v80 = *&v98[3];
  v81 = v96;
  v82 = v97;
  v86 = *&v98[3];
  v84 = v98[1];
  v85 = v98[2];
  v83 = v98[0];
  v45 = v61._object & 1;
  v72 = v61._object & 1;
  sub_16054(&v96, &v89, &qword_119BE8);
  sub_1F900(v40, v42, v45);
  v46 = v62;

  sub_16054(v79, &v89, &qword_119BE8);
  sub_1F900(v40, v42, v45);

  sub_1F8F0(v40, v42, v45);

  v87[2] = v75;
  v87[3] = v76;
  v87[4] = v77;
  v88 = v78;
  v87[0] = v73;
  v87[1] = v74;
  sub_160BC(v87, &qword_119BE8);
  v91 = v83;
  v92 = v84;
  v93 = v85;
  v89 = v81;
  v90 = v82;
  *&v94 = v86;
  *(&v94 + 1) = v40;
  *&v95[0] = v42;
  BYTE8(v95[0]) = v45;
  *&v95[1] = v46;
  sub_CCD2C(&v89);
  *&v63[67] = v93;
  *&v63[75] = v94;
  v64[0] = v95[0];
  *(v64 + 9) = *(v95 + 9);
  *&v63[35] = v89;
  *&v63[43] = v90;
  *&v63[51] = v91;
  *&v63[59] = v92;
  sub_DC40(&qword_119BF0);
  sub_15FB8(&qword_119BF8, &qword_119BF0);
  sub_D70B8();
  sub_160BC(&v96, &qword_119BE8);

  sub_1F8F0(v40, v42, v45);

  v103 = v69;
  v104 = v70;
  v105[0] = v71[0];
  *(v105 + 9) = *(v71 + 9);
  v99 = v65;
  v100 = v66;
  v101 = v67;
  v102 = v68;
LABEL_27:
  v50 = v104;
  v51 = v60;
  v60[4] = v103;
  v51[5] = v50;
  v51[6] = v105[0];
  *(v51 + 105) = *(v105 + 9);
  v52 = v100;
  *v51 = v99;
  v51[1] = v52;
  result = *&v101;
  v54 = v102;
  v51[2] = v101;
  v51[3] = v54;
  return result;
}

uint64_t sub_CC380@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD000000000000021, 0x80000000000E7270);
  sub_16000();
  v2 = sub_D73B8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_D7228();
  result = sub_D6B68();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return result;
}

double sub_CC4C4@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_119B80);
  sub_D78B8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_CC520()
{
  swift_unknownObjectRelease();

  if ((*(v0 + 128) - 1) >= 3)
  {
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_CC5BC(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    sub_CCD40(*a1, v1);
  }

  sub_DC40(&qword_119B80);
  return sub_D78C8();
}

unint64_t sub_CC648()
{
  result = qword_119B20;
  if (!qword_119B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119B20);
  }

  return result;
}

unint64_t sub_CC700()
{
  result = qword_119B38;
  if (!qword_119B38)
  {
    sub_EBC0(&qword_119558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119B38);
  }

  return result;
}

void sub_CC784()
{
  sub_DC40(&qword_117930);
  sub_D78B8();
  if (v2)
  {
    v0 = [v2 bundleIdentifier];
    if (v0)
    {
      v1 = v0;
      sub_D7C18();

      sub_DC40(&qword_119B80);
      sub_D78E8();
      sub_D78C8();

      sub_CCB8C(v3, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_CC8B0()
{

  if ((*(v0 + 112) - 1) >= 3)
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_CC944@<X0>(uint64_t *a1@<X8>)
{
  sub_DC40(&qword_117930);
  sub_D78E8();
  sub_4D024(v5, v6, v7, a1);
  sub_DC40(&qword_119B78);
  sub_D78B8();
  type metadata accessor for GCSAppStore();
  sub_CCB44(&qword_117920, type metadata accessor for GCSAppStore);
  v2 = sub_D6A58();
  result = sub_DC40(&qword_119B40);
  v4 = (a1 + *(result + 36));
  *v4 = v2;
  v4[1] = v5;
  return result;
}

unint64_t sub_CCA5C()
{
  result = qword_119B50;
  if (!qword_119B50)
  {
    sub_EBC0(&qword_119B40);
    sub_CCB44(&qword_119B58, type metadata accessor for GCSAppSelectionView);
    sub_15FB8(&qword_119B60, &qword_119B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119B50);
  }

  return result;
}

uint64_t sub_CCB44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CCB8C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

double sub_CCBA4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_D6FB8();
  v15 = 1;
  sub_CBB30(v3, v4, v5, v14);
  v20 = *&v14[64];
  v21 = *&v14[80];
  v22[0] = *&v14[96];
  *(v22 + 9) = *&v14[105];
  v16 = *v14;
  v17 = *&v14[16];
  v18 = *&v14[32];
  v19 = *&v14[48];
  v23[0] = *v14;
  v23[1] = *&v14[16];
  v23[2] = *&v14[32];
  v23[3] = *&v14[48];
  v23[4] = *&v14[64];
  v23[5] = *&v14[80];
  v24[0] = *&v14[96];
  *(v24 + 9) = *&v14[105];
  sub_16054(&v16, v13, &qword_119BE0);
  sub_160BC(v23, &qword_119BE0);
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[103] = v22[0];
  *&v14[112] = *(v22 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  *&v14[39] = v18;
  *&v14[55] = v19;
  v7 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v7;
  v8 = *&v14[112];
  *(a1 + 113) = *&v14[96];
  *(a1 + 129) = v8;
  v9 = *&v14[16];
  *(a1 + 17) = *v14;
  *(a1 + 33) = v9;
  result = *&v14[32];
  v11 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  v12 = v15;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_CCD40(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_CCD58@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = [v2 systemButtonLongPressAction];
    if (v4)
    {
      v5 = v4;
      v6 = sub_D7C18();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    result = sub_B7AE8(v6, v8);
    *a1 = result;
    a1[1] = v10;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_CCE28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

void sub_CCE90(uint64_t *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];
    v6 = v2;
    sub_B7A4C(v4, v3);
    v5 = sub_D7BD8();

    [v6 setSystemButtonLongPressAction:v5];
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_CCB44(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_CCFD0()
{
  v1 = (*(*v0 + 552))(v6);
  *v2 = &_swiftEmptyArrayStorage;

  v1(v6, 0);
  v3 = (*(*v0 + 744))(v6);
  *v4 = &_swiftEmptyArrayStorage;

  return v3(v6, 0);
}

uint64_t sub_CD0C0(void *a1)
{

  v4 = sub_CED24(v2);
  sub_CD824(&v4);

  *a1 = v4;
  return result;
}

unint64_t sub_CD138(uint64_t a1, unint64_t *a2)
{
  result = sub_B28F4(a1, *a2);
  if ((v4 & 1) == 0)
  {
    sub_965E8(result);

    v6 = sub_CED24(v5);
    sub_CD824(&v6);

    *a2 = v6;
  }

  return result;
}

void sub_CD1C8(uint64_t a1)
{
  v2 = v1;
  if ((*(*a1 + 480))() & 1) != 0 && ((*(*a1 + 472))())
  {
    v4 = (*(*v1 + 552))(v53);
LABEL_20:
    v41 = v4;
    v42 = v5;
    v43 = sub_B28F4(a1, *v5);
    if ((v44 & 1) == 0)
    {
      sub_965E8(v43);

      v52 = sub_CED24(v45);
      sub_CD824(&v52);

      *v42 = v52;
    }

    v41(v53, 0);
    v46 = (*(*v1 + 744))(v53);
    v48 = v47;
    v49 = sub_B28F4(a1, *v47);
    if ((v50 & 1) == 0)
    {
      sub_965E8(v49);

      v52 = sub_CED24(v51);
      sub_CD824(&v52);

      *v48 = v52;
    }

    v46(v53, 0);
    return;
  }

  if ((*(*a1 + 544))())
  {
    v6 = (*(*v1 + 728))();
    v7 = (*a1 + 264);
    v8 = *v7;
    v9 = (*v7)();
    v10 = sub_B2724(v6, v9);

    if (v10)
    {
      v12 = (*(*v2 + 744))(v53);
      v14 = v13;
      v15 = sub_B28F4(a1, *v13);
      if ((v16 & 1) == 0)
      {
        sub_965E8(v15);

        v52 = sub_CED24(v17);
        sub_CD824(&v52);

        *v14 = v52;
      }

      v11 = v12(v53, 0);
    }

    v18 = (*(*v2 + 536))(v11);
    v19 = v8();
    v20 = sub_B2724(v18, v19);

    if (!v20)
    {
      v21 = (*(*v2 + 552))(v53);
LABEL_18:
      v40 = v21;
      sub_CEDB8(a1, v22);
      v40(v53, 0);
    }
  }

  else
  {
    v23 = (*(*a1 + 552))();
    v24 = *v1;
    if ((v23 & 1) == 0)
    {
      v4 = (*(v24 + 552))(v53);
      goto LABEL_20;
    }

    v25 = (*(v24 + 536))();
    v26 = (*a1 + 264);
    v27 = *v26;
    v28 = (*v26)();
    v29 = sub_B2724(v25, v28);

    if (v29)
    {
      v31 = (*(*v2 + 552))(v53);
      v33 = v32;
      v34 = sub_B28F4(a1, *v32);
      if ((v35 & 1) == 0)
      {
        sub_965E8(v34);

        v52 = sub_CED24(v36);
        sub_CD824(&v52);

        *v33 = v52;
      }

      v30 = v31(v53, 0);
    }

    v37 = (*(*v2 + 728))(v30);
    v38 = v27();
    v39 = sub_B2724(v37, v38);

    if (!v39)
    {
      v21 = (*(*v2 + 744))(v53);
      goto LABEL_18;
    }
  }
}

uint64_t sub_CD824(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_4F7E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_CD8A0(v6);
  return sub_D8038();
}

Swift::Int sub_CD8A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Device();
        v6 = sub_D7D58();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_CDC20(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_CD9A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_CD9A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v27 = v5;
      v7 = *v4;
      v8 = *(*v6 + 760);

      v10 = (v8)(v9);
      v11 = *(*v7 + 760);
      if ((v10 ^ v11()))
      {
        if ((v8() & 1) == 0)
        {

          goto LABEL_5;
        }

        v12 = v11();

        v13 = v27;
        if (v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = (*(*v6 + 360))();
        v16 = v15;
        if (v14 == (*(*v7 + 360))() && v16 == v17)
        {

LABEL_5:
          a3 = v25 + 1;
          v4 = v24 + 1;
          v5 = v23 - 1;
          if (v25 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v19 = sub_D8118();

        v13 = v27;
        if ((v19 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v20;
      --v4;
      v21 = __CFADD__(v13, 1);
      v5 = v13 + 1;
      if (v21)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_CDC20(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v113 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = a3;
    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8 + 1;
      v114 = v8;
      v115 = v9;
      if (v8 + 1 < v6)
      {
        v124 = v6;
        v11 = v8;
        v4 = *v7;
        v12 = *(*v7 + 8 * v10);
        v13 = *(*v7 + 8 * v11);
        v14 = *(*v12 + 760);

        v16 = (v14)(v15);
        v17 = *(*v13 + 760);
        if ((v16 ^ v17()))
        {
          if (v14())
          {
            v122 = v17() ^ 1;
          }

          else
          {
            LOBYTE(v122) = 0;
          }
        }

        else
        {
          v18 = (*(*v12 + 360))();
          v20 = v19;
          if (v18 == (*(*v13 + 360))() && v20 == v21)
          {

            LOBYTE(v122) = 0;
          }

          else
          {
            LOBYTE(v122) = sub_D8118();
          }
        }

        v7 = a3;
        if (v5)
        {
        }

        v10 = v114 + 2;
        if (v114 + 2 < v124)
        {
          v4 += 8 * v114 + 16;
          while (1)
          {
            v120 = v10;
            v24 = *(v4 - 8);
            v25 = *v4;
            v26 = *(**v4 + 760);

            v28 = (v26)(v27);
            v29 = *(*v24 + 760);
            if (((v28 ^ v29()) & 1) == 0)
            {
              break;
            }

            if (v26())
            {
              v30 = v29();

              v31 = v30 ^ 1;
              v10 = v120;
              goto LABEL_30;
            }

            v7 = a3;
            v10 = v120;
            v23 = v124;
            if (v122)
            {
              v8 = v114;
              if (v120 < v114)
              {
                goto LABEL_155;
              }

              goto LABEL_35;
            }

LABEL_19:
            ++v10;
            v4 += 8;
            if (v23 == v10)
            {
              v10 = v23;
              goto LABEL_33;
            }
          }

          v32 = (*(*v25 + 360))();
          v34 = v33;
          if (v32 == (*(*v24 + 360))() && v34 == v35)
          {
            v31 = 0;
          }

          else
          {
            v31 = sub_D8118();
          }

          v10 = v120;

LABEL_30:
          v37 = v122 ^ v31;
          v7 = a3;
          v23 = v124;
          if (v37)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }

LABEL_33:
        v8 = v114;
        if (v122)
        {
          if (v10 < v114)
          {
            goto LABEL_155;
          }

LABEL_35:
          if (v8 < v10)
          {
            v38 = 8 * v10 - 8;
            v39 = 8 * v8;
            v40 = v10;
            v41 = v8;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v7;
                if (!*v7)
                {
                  goto LABEL_161;
                }

                v42 = *(v43 + v39);
                *(v43 + v39) = *(v43 + v38);
                *(v43 + v38) = v42;
              }

              ++v41;
              v38 -= 8;
              v39 += 8;
            }

            while (v41 < v40);
          }
        }
      }

      v44 = *(v7 + 1);
      if (v10 >= v44)
      {
        goto LABEL_68;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_154;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_68;
      }

      v45 = v8 + a4;
      if (__OFADD__(v8, a4))
      {
        goto LABEL_156;
      }

      if (v45 >= v44)
      {
        v45 = *(v7 + 1);
      }

      if (v45 < v8)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v10 == v45)
      {
        goto LABEL_68;
      }

      v123 = *v7;
      v4 = *v7 + 8 * v10 - 8;
      v46 = v8 - v10;
      v116 = v45;
LABEL_53:
      v119 = v4;
      v121 = v10;
      v47 = *(v123 + 8 * v10);
      v118 = v46;
      v48 = v46;
      while (1)
      {
        v125 = v48;
        v49 = *v4;
        v50 = *(*v47 + 760);

        v52 = (v50)(v51);
        v53 = *(*v49 + 760);
        if (((v52 ^ v53()) & 1) == 0)
        {
          break;
        }

        if ((v50() & 1) == 0)
        {

          goto LABEL_52;
        }

        v54 = v53();

        if (v54)
        {
          goto LABEL_52;
        }

LABEL_63:
        if (!v123)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v61 = *v4;
        v47 = *(v4 + 8);
        *v4 = v47;
        *(v4 + 8) = v61;
        v4 -= 8;
        v48 = v125 + 1;
        if (v125 == -1)
        {
          goto LABEL_52;
        }
      }

      v55 = (*(*v47 + 360))();
      v57 = v56;
      if (v55 != (*(*v49 + 360))() || v57 != v58)
      {
        break;
      }

LABEL_52:
      v10 = v121 + 1;
      v4 = v119 + 8;
      v46 = v118 - 1;
      if (v121 + 1 != v116)
      {
        goto LABEL_53;
      }

      v10 = v116;
      v7 = a3;
      v8 = v114;
LABEL_68:
      if (v10 < v8)
      {
        goto LABEL_153;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v115;
      }

      else
      {
        result = sub_1EC48(0, v115[2] + 1, 1, v115);
        v9 = result;
      }

      v4 = v9[2];
      v62 = v9[3];
      v63 = v4 + 1;
      if (v4 >= v62 >> 1)
      {
        result = sub_1EC48((v62 > 1), v4 + 1, 1, v9);
        v9 = result;
      }

      v9[2] = v63;
      v64 = &v9[2 * v4];
      *(v64 + 4) = v114;
      *(v64 + 5) = v10;
      v65 = *v113;
      if (!*v113)
      {
        goto LABEL_163;
      }

      v8 = v10;
      if (v4)
      {
        while (2)
        {
          v66 = v63 - 1;
          if (v63 >= 4)
          {
            v71 = &v9[2 * v63 + 4];
            v72 = *(v71 - 64);
            v73 = *(v71 - 56);
            v77 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            if (v77)
            {
              goto LABEL_140;
            }

            v76 = *(v71 - 48);
            v75 = *(v71 - 40);
            v77 = __OFSUB__(v75, v76);
            v69 = v75 - v76;
            v70 = v77;
            if (v77)
            {
              goto LABEL_141;
            }

            v78 = &v9[2 * v63];
            v80 = *v78;
            v79 = v78[1];
            v77 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v77)
            {
              goto LABEL_143;
            }

            v77 = __OFADD__(v69, v81);
            v82 = v69 + v81;
            if (v77)
            {
              goto LABEL_146;
            }

            if (v82 >= v74)
            {
              v100 = &v9[2 * v66 + 4];
              v102 = *v100;
              v101 = v100[1];
              v77 = __OFSUB__(v101, v102);
              v103 = v101 - v102;
              if (v77)
              {
                goto LABEL_150;
              }

              if (v69 < v103)
              {
                v66 = v63 - 2;
              }
            }

            else
            {
LABEL_88:
              if (v70)
              {
                goto LABEL_142;
              }

              v83 = &v9[2 * v63];
              v85 = *v83;
              v84 = v83[1];
              v86 = __OFSUB__(v84, v85);
              v87 = v84 - v85;
              v88 = v86;
              if (v86)
              {
                goto LABEL_145;
              }

              v89 = &v9[2 * v66 + 4];
              v91 = *v89;
              v90 = v89[1];
              v77 = __OFSUB__(v90, v91);
              v92 = v90 - v91;
              if (v77)
              {
                goto LABEL_148;
              }

              if (__OFADD__(v87, v92))
              {
                goto LABEL_149;
              }

              if (v87 + v92 < v69)
              {
                goto LABEL_102;
              }

              if (v69 < v92)
              {
                v66 = v63 - 2;
              }
            }
          }

          else
          {
            if (v63 == 3)
            {
              v67 = v9[4];
              v68 = v9[5];
              v77 = __OFSUB__(v68, v67);
              v69 = v68 - v67;
              v70 = v77;
              goto LABEL_88;
            }

            v93 = &v9[2 * v63];
            v95 = *v93;
            v94 = v93[1];
            v77 = __OFSUB__(v94, v95);
            v87 = v94 - v95;
            v88 = v77;
LABEL_102:
            if (v88)
            {
              goto LABEL_144;
            }

            v96 = &v9[2 * v66];
            v98 = *(v96 + 4);
            v97 = *(v96 + 5);
            v77 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v77)
            {
              goto LABEL_147;
            }

            if (v99 < v87)
            {
              break;
            }
          }

          v4 = v66 - 1;
          if (v66 - 1 >= v63)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (!*v7)
          {
            goto LABEL_160;
          }

          v104 = v9;
          v105 = v9[2 * v4 + 4];
          v106 = v9[2 * v66 + 5];
          sub_CE72C((*v7 + 8 * v105), (*v7 + 8 * v9[2 * v66 + 4]), (*v7 + 8 * v106), v65);
          if (v5)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1EC34(v104);
          }

          if (v4 >= *(v104 + 2))
          {
            goto LABEL_139;
          }

          v107 = &v104[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          result = sub_1EBA8(v66);
          v9 = v104;
          v63 = *(v104 + 2);
          if (v63 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = *(v7 + 1);
      if (v8 >= v6)
      {
        goto LABEL_123;
      }
    }

    v60 = sub_D8118();

    if ((v60 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_63;
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_123:
  v7 = *v113;
  if (!*v113)
  {
    goto LABEL_164;
  }

  v4 = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = v4;
  }

  else
  {
LABEL_158:
    result = sub_1EC34(v4);
  }

  v4 = *(result + 16);
  if (v4 < 2)
  {
  }

  while (*a3)
  {
    v108 = *(result + 16 * v4);
    v109 = result;
    v110 = *(result + 16 * (v4 - 1) + 40);
    sub_CE72C((*a3 + 8 * v108), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v110), v7);
    if (v5)
    {
    }

    if (v110 < v108)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_1EC34(v109);
    }

    if (v4 - 2 >= *(v109 + 2))
    {
      goto LABEL_152;
    }

    v111 = &v109[16 * v4];
    *v111 = v108;
    *(v111 + 1) = v110;
    sub_1EBA8(v4 - 1);
    result = v109;
    v4 = *(v109 + 2);
    if (v4 <= 1)
    {
    }
  }

LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}

uint64_t sub_CE72C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v32 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v57 = &v4[8 * v11];
    if (v9 < 8 || v32 <= __dst)
    {
      goto LABEL_60;
    }

    v50 = v4;
LABEL_37:
    v33 = v32 - 8;
    v5 -= 8;
    v34 = v57;
    v51 = v32 - 8;
    v53 = v32;
    while (1)
    {
      v36 = *(v34 - 1);
      v34 -= 8;
      v35 = v36;
      v37 = *v33;
      v38 = *(*v36 + 760);

      v40 = (v38)(v39);
      v41 = *(*v37 + 760);
      if ((v40 ^ v41()))
      {
        if (v38())
        {
          v42 = v41();

          v4 = v50;
          if ((v42 & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v43 = (*(*v35 + 360))();
        v45 = v44;
        if (v43 != (*(*v37 + 360))() || v45 != v46)
        {
          v48 = sub_D8118();

          v4 = v50;
          if (v48)
          {
LABEL_54:
            if (v5 + 8 != v53)
            {
              *v5 = *v51;
            }

            if (v57 <= v4 || (v32 = v51, v51 <= __dst))
            {
              v32 = v51;
              goto LABEL_60;
            }

            goto LABEL_37;
          }

          goto LABEL_52;
        }
      }

      v4 = v50;
LABEL_52:
      if (v5 + 8 != v57)
      {
        *v5 = *v34;
      }

      v5 -= 8;
      v57 = v34;
      v33 = v51;
      if (v34 <= v4)
      {
        v57 = v34;
        v32 = v53;
        goto LABEL_60;
      }
    }
  }

  v13 = __dst;
  if (a4 != __dst || &__dst[8 * v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v57 = &v4[8 * v8];
  if (v6 >= 8 && __src < v5)
  {
    v14 = __src;
    v56 = v5;
    do
    {
      v52 = v14;
      v54 = v13;
      v15 = *v14;
      v16 = *v4;
      v17 = *(**v14 + 760);

      v19 = (v17)(v18);
      v20 = *(*v16 + 760);
      if ((v19 ^ v20()))
      {
        if ((v17() & 1) == 0)
        {

          goto LABEL_25;
        }

        v21 = v20();

        v22 = v54;
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v4;
        v24 = (*(*v15 + 360))();
        v26 = v25;
        v28 = v24 == (*(*v16 + 360))() && v26 == v27;
        if (v28)
        {

          v4 = v23;
LABEL_25:
          v22 = v54;
LABEL_26:
          v30 = v4;
          v28 = v22 == v4;
          v4 += 8;
          v14 = v52;
          v31 = v56;
          if (v28)
          {
            goto LABEL_28;
          }

LABEL_27:
          *v22 = *v30;
          goto LABEL_28;
        }

        v29 = sub_D8118();

        v4 = v23;
        v22 = v54;
        if ((v29 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v30 = v52;
      v14 = v52 + 8;
      v31 = v56;
      if (v22 != v52)
      {
        goto LABEL_27;
      }

LABEL_28:
      v13 = v22 + 8;
    }

    while (v4 < v57 && v14 < v31);
  }

  v32 = v13;
LABEL_60:
  if (v32 != v4 || v32 >= &v4[(v57 - v4 + (v57 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v32, v4, 8 * ((v57 - v4) / 8));
  }

  return 1;
}

void *sub_CED24(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_D8078();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_4E0C8(v3, 0);
  sub_B31D4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_CEDB8(uint64_t a1, void *a2)
{

  sub_D7D08();
  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();

  v5 = sub_CED24(v3);
  sub_CD824(&v5);

  *a2 = v5;
  return result;
}

uint64_t sub_CEE7C(uint64_t a1)
{
  v2 = sub_D0720(_swiftEmptyArrayStorage);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = a1 + 32;
  while (1)
  {
    v65 = v4;
    sub_D0824(v4, v70);
    sub_D0824(v70, v69);
    sub_DC40(&qword_1169A0);
    if (swift_dynamicCast())
    {
      v64 = v3;
      v7 = v71;
      v8 = v72;
      sub_A5A80(v70, v71);
      (*(v8 + 8))(v7, v8);
      v9 = v71;
      v10 = v72;
      sub_A5A80(v70, v71);
      (*(v10 + 32))(v9, v10);
      v12 = v71;
      v11 = v72;
      sub_A5A80(v70, v71);
      v13 = (*(v11 + 56))(v12, v11);
      if (v13 < 0xFFFFFFFF80000000)
      {
        goto LABEL_33;
      }

      v14 = v13;
      if (v13 > 0x7FFFFFFF)
      {
        goto LABEL_35;
      }

      v15 = objc_allocWithZone(GCSDirectionPadMapping);
      v16 = sub_D7BD8();

      v17 = sub_D7BD8();

      v18 = [v15 initWithElementKey:v16 mappingKey:v17 remappingOrder:v14 invertHorizontally:v66 invertVertically:v67 swapAxes:v68];

      v19 = v71;
      v20 = v72;
      sub_A5A80(v70, v71);
      v21 = (*(v20 + 8))(v19, v20);
      v23 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1ED4C(v21, v23);
      v27 = v2[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_36;
      }

      v31 = v26;
      if (v2[3] < v30)
      {
        sub_D0310(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_1ED4C(v21, v23);
        v3 = v64;
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_40;
        }

LABEL_19:
        if ((v31 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

      v3 = v64;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v61 = v25;
      sub_D05B4();
      v25 = v61;
      if ((v31 & 1) == 0)
      {
LABEL_20:
        v2[(v25 >> 6) + 8] |= 1 << v25;
        v56 = (v2[6] + 16 * v25);
        *v56 = v21;
        v56[1] = v23;
        *(v2[7] + 8 * v25) = v18;
        v57 = v2[2];
        v29 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v29)
        {
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      goto LABEL_3;
    }

    v33 = v71;
    v34 = v72;
    sub_A5A80(v70, v71);
    (*(v34 + 8))(v33, v34);
    v35 = v71;
    v36 = v72;
    sub_A5A80(v70, v71);
    (*(v36 + 32))(v35, v36);
    v37 = v71;
    v38 = v72;
    sub_A5A80(v70, v71);
    v39 = (*(v38 + 56))(v37, v38);
    if (v39 < 0xFFFFFFFF80000000)
    {
      break;
    }

    v40 = v39;
    if (v39 > 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    v41 = objc_allocWithZone(GCSElementMapping);
    v42 = sub_D7BD8();

    v43 = sub_D7BD8();

    v18 = [v41 initWithElementKey:v42 mappingKey:v43 remappingOrder:v40];

    v44 = v71;
    v45 = v72;
    sub_A5A80(v70, v71);
    v46 = (*(v45 + 8))(v44, v45);
    v48 = v47;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_1ED4C(v46, v48);
    v51 = v2[2];
    v52 = (v50 & 1) == 0;
    v29 = __OFADD__(v51, v52);
    v53 = v51 + v52;
    if (v29)
    {
      goto LABEL_37;
    }

    v54 = v50;
    if (v2[3] < v53)
    {
      sub_D0310(v53, v49);
      v25 = sub_1ED4C(v46, v48);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_40;
      }

LABEL_24:
      if ((v54 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

    if (v49)
    {
      goto LABEL_24;
    }

    v62 = v25;
    sub_D05B4();
    v25 = v62;
    if ((v54 & 1) == 0)
    {
LABEL_25:
      v2[(v25 >> 6) + 8] |= 1 << v25;
      v59 = (v2[6] + 16 * v25);
      *v59 = v46;
      v59[1] = v48;
      *(v2[7] + 8 * v25) = v18;
      v60 = v2[2];
      v29 = __OFADD__(v60, 1);
      v58 = v60 + 1;
      if (v29)
      {
        goto LABEL_39;
      }

LABEL_26:
      v2[2] = v58;
      goto LABEL_4;
    }

LABEL_3:
    v5 = v2[7];
    v6 = *(v5 + 8 * v25);
    *(v5 + 8 * v25) = v18;

LABEL_4:
    sub_7362C(v70);
    v4 = v65 + 40;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_D8138();
  __break(1u);
  return result;
}

uint64_t sub_CF478()
{
  sub_D7FD8(53);
  v2._object = 0x80000000000E7330;
  v2._countAndFlagsBits = 0xD000000000000023;
  sub_D7CA8(v2);
  sub_D7CA8(*v0);
  v3._countAndFlagsBits = 0x6E697070616D202CLL;
  v3._object = 0xED00003D79654B67;
  sub_D7CA8(v3);
  sub_D7CA8(v0[1]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_D7CA8(v4);
  return 0;
}

uint64_t sub_CF530()
{
  v0 = objc_opt_self();
  sub_450A0(0, &qword_119C20);
  isa = sub_D7B38().super.isa;
  sub_450A0(0, &qword_116AC8);
  v2 = sub_D7D18().super.isa;
  v3 = [v0 elementMappingsFrom:isa for:v2];

  v4 = sub_D7D28();
  v5 = v4;
  if (!(v4 >> 62))
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  result = sub_D8078();
  v5 = v4;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result >= 1)
  {
    v7 = 0;
    v23 = v5 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    v24 = result;
    v25 = v5;
    do
    {
      if (v23)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 elementKey];
      v12 = sub_D7C18();
      v14 = v13;

      v15 = [v10 mappingKey];
      v16 = sub_D7C18();
      v18 = v17;

      v19 = [v10 remappingOrder];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_53188(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        v8 = sub_53188((v20 > 1), v21 + 1, 1, v8);
      }

      ++v7;

      *(v8 + 2) = v21 + 1;
      v22 = &v8[40 * v21];
      *(v22 + 4) = v12;
      *(v22 + 5) = v14;
      *(v22 + 6) = v16;
      *(v22 + 7) = v18;
      *(v22 + 8) = v19;
      v5 = v25;
    }

    while (v24 != v7);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_CF7B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

BOOL sub_CF7C8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_D8118()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), v5 || (sub_D8118()))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

void sub_CF848()
{
  sub_D7C78();
  sub_D7C78();
  sub_D8178(*(v0 + 32));
}

Swift::Int sub_CF888()
{
  v1 = *(v0 + 32);
  sub_D8168();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
  return sub_D8198();
}

BOOL sub_CF908(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_D8118()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_D8118()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

void sub_CF9A4()
{
  v1 = *(v0 + 32);
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
}

Swift::Int sub_CF9F8()
{
  v1 = *(v0 + 32);
  sub_D8168();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
  return sub_D8198();
}

uint64_t sub_CFA74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_D7FD8(53);
  v6._object = 0x80000000000E7330;
  v6._countAndFlagsBits = 0xD000000000000023;
  sub_D7CA8(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  sub_D7CA8(v7);
  v8._countAndFlagsBits = 0x6E697070616D202CLL;
  v8._object = 0xED00003D79654B67;
  sub_D7CA8(v8);
  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_D7CA8(v9);
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  sub_D7CA8(v10);
  return 0;
}

uint64_t sub_CFBB8()
{
  sub_D7FD8(65);
  v2._object = 0x80000000000E7360;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  sub_D7CA8(v2);
  sub_D7CA8(*v0);
  v3._countAndFlagsBits = 0x6E697070616D202CLL;
  v3._object = 0xED00003D79654B67;
  sub_D7CA8(v3);
  sub_D7CA8(v0[1]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_D7CA8(v4);
  return 0;
}

void sub_CFC70()
{
  v0 = objc_opt_self();
  sub_450A0(0, &qword_119C20);
  isa = sub_D7B38().super.isa;
  sub_450A0(0, &qword_116AC8);
  v2 = sub_D7D18().super.isa;
  v3 = [v0 elementMappingsFrom:isa for:v2];

  v4 = sub_D7D28();
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  v5 = sub_D8078();
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v28 = v4 & 0xC000000000000001;
    v7 = _swiftEmptyArrayStorage;
    v26 = v5;
    v27 = v4;
    do
    {
      if (v28)
      {
        v8 = sub_D7FF8();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        v13 = [v11 elementKey];
        v14 = sub_D7C18();
        v16 = v15;

        v17 = [v11 mappingKey];
        v18 = sub_D7C18();
        v30 = v19;
        v31 = v18;

        v29 = [v11 remappingOrder];
        v20 = [v11 invertHorizontally];
        v21 = [v11 invertVertically];
        v22 = [v11 swapAxes];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_5306C(0, *(v7 + 2) + 1, 1, v7);
        }

        v24 = *(v7 + 2);
        v23 = *(v7 + 3);
        if (v24 >= v23 >> 1)
        {
          v7 = sub_5306C((v23 > 1), v24 + 1, 1, v7);
        }

        *(v7 + 2) = v24 + 1;
        v25 = &v7[48 * v24];
        *(v25 + 4) = v14;
        *(v25 + 5) = v16;
        *(v25 + 6) = v31;
        *(v25 + 7) = v30;
        *(v25 + 8) = v29;
        v25[72] = v20;
        v25[73] = v21;
        v25[74] = v22;
        v5 = v26;
        v4 = v27;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_CFF78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  return result;
}

void sub_CFF98()
{
  sub_D7C78();
  sub_D7C78();
  sub_D8178(*(v0 + 32));
  sub_D8188(*(v0 + 40) & 1);
  sub_D8188(*(v0 + 41) & 1);
  sub_D8188(*(v0 + 42) & 1);
}

Swift::Int sub_CFFFC()
{
  sub_D8168();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
  v3 = *(v0 + 41);
  sub_D8188(v2 & 1);
  v4 = *(v0 + 42);
  sub_D8188(v3 & 1);
  sub_D8188(v4 & 1);
  return sub_D8198();
}

uint64_t sub_D00A8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_D0888(&v5, &v7) & 1;
}

void sub_D00F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v4 = *(v0 + 42);
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
  sub_D8188(v2);
  sub_D8188(v3);
  sub_D8188(v4);
}

Swift::Int sub_D0180()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v4 = *(v0 + 42);
  sub_D8168();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);
  sub_D8188(v2);
  sub_D8188(v3);
  sub_D8188(v4);
  return sub_D8198();
}

uint64_t sub_D023C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_D7FD8(65);
  v6._object = 0x80000000000E7360;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  sub_D7CA8(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  sub_D7CA8(v7);
  v8._countAndFlagsBits = 0x6E697070616D202CLL;
  v8._object = 0xED00003D79654B67;
  sub_D7CA8(v8);
  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_D7CA8(v9);
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  sub_D7CA8(v10);
  return 0;
}

uint64_t sub_D0310(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_DC40(&qword_119C28);
  v35 = a2;
  result = sub_D8098();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_D05B4()
{
  v1 = v0;
  sub_DC40(&qword_119C28);
  v2 = *v0;
  v3 = sub_D8088();
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

unint64_t sub_D0720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_119C28);
    v3 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1ED4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_D0824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_D0888(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_D8118()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_D8118()) && *(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && ((*(a1 + 41) ^ *(a2 + 41)) & 1) == 0))
  {
    v6 = *(a1 + 42) ^ *(a2 + 42) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

__n128 sub_D0944(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_D0958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_D09A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_D09F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_D0A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_D0A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_D0AE0()
{
  result = qword_119C30;
  if (!qword_119C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119C30);
  }

  return result;
}

uint64_t sub_D0B44()
{
  v0 = objc_opt_self();
  isa = sub_D7DA8().super.super.isa;
  v2 = [v0 localizedStringFromNumber:isa numberStyle:3];

  v3 = sub_D7C18();
  return v3;
}

uint64_t sub_D0BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_D6998();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_D0C3C(uint64_t a1)
{
  v3 = sub_D6998();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_D0CC0()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileParams() + 20));

  return v1;
}

uint64_t type metadata accessor for GCSProfileParams()
{
  result = qword_11F990;
  if (!qword_11F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D0D4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSProfileParams() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_D0DDC()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileParams() + 24));

  return v1;
}

uint64_t sub_D0E1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSProfileParams() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_D0EAC()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileParams() + 28));

  return v1;
}

uint64_t sub_D0EEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSProfileParams() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_D0FA0(char a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_D103C(char a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_D10D0()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileParams() + 40));

  return v1;
}

uint64_t sub_D1110(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSProfileParams() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_D11AC()
{
  type metadata accessor for GCSProfileParams();
}

uint64_t sub_D11E0(uint64_t a1)
{
  v3 = *(type metadata accessor for GCSProfileParams() + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_D128C(char a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_D1328(double a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_D13C4(uint64_t a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_D1468(uint64_t a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_D1504(char a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t sub_D15A0(char a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t sub_D163C(uint64_t a1)
{
  result = type metadata accessor for GCSProfileParams();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t sub_D16B4(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for GCSProfileParams() + 44));
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v16 = v15;
    if ([v16 isCustomized])
    {
      v38 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1ED4C(v14, v13);
      v23 = v3[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_26;
      }

      v27 = v22;
      if (v3[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v33 = v21;
        sub_D05B4();
        v21 = v33;
        v29 = v38;
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v30 = v21;

        v31 = v3[7];
        v32 = *(v31 + 8 * v30);
        *(v31 + 8 * v30) = v29;
      }

      else
      {
        sub_D0310(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1ED4C(v14, v13);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_28;
        }

LABEL_19:
        v29 = v38;
        if (v27)
        {
          goto LABEL_20;
        }

LABEL_22:
        v3[(v21 >> 6) + 8] |= 1 << v21;
        v34 = (v3[6] + 16 * v21);
        *v34 = v14;
        v34[1] = v13;
        *(v3[7] + 8 * v21) = v29;

        v35 = v3[2];
        v25 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v25)
        {
          goto LABEL_27;
        }

        v3[2] = v36;
      }
    }

    else
    {
      v17 = sub_1ED4C(v14, v13);
      v19 = v18;

      if (v19)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_D05B4();
        }

        sub_53DB4(v17, v3);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_D8138();
  __break(1u);
  return result;
}

void sub_D1978(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1ED4C(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_450A0(0, &qword_119C20);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_D7EA8();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_D1AF8@<X0>(uint64_t a1@<X8>)
{
  sub_D6988();
  v2 = type metadata accessor for GCSProfileParams();
  v3 = (a1 + v2[5]);
  *v3 = sub_A9308(0xD000000000000020, 0x80000000000E73B0);
  v3[1] = v4;
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 1;
  v7 = (a1 + v2[10]);
  *v7 = 0xD000000000000013;
  v7[1] = 0x80000000000E52A0;
  v8 = v2[11];
  result = sub_D0720(_swiftEmptyArrayStorage);
  *(a1 + v8) = result;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0x3FF0000000000000;
  *(a1 + v2[14]) = 1;
  *(a1 + v2[15]) = 2;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  return result;
}

int *sub_D1BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20)
{
  v26 = sub_D6998();
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  result = type metadata accessor for GCSProfileParams();
  v28 = (a9 + result[5]);
  *v28 = a2;
  v28[1] = a3;
  v29 = (a9 + result[6]);
  *v29 = a4;
  v29[1] = a5;
  v30 = (a9 + result[7]);
  *v30 = a6;
  v30[1] = a7;
  *(a9 + result[8]) = a8;
  *(a9 + result[9]) = a11;
  v31 = (a9 + result[10]);
  *v31 = a12;
  v31[1] = a13;
  *(a9 + result[11]) = a14;
  *(a9 + result[12]) = a15;
  *(a9 + result[13]) = a10;
  *(a9 + result[14]) = a16;
  *(a9 + result[15]) = a17;
  *(a9 + result[16]) = a18;
  *(a9 + result[17]) = a19;
  *(a9 + result[18]) = a20;
  return result;
}

uint64_t sub_D1D8C(void *a1, void *a2)
{
  v4 = sub_D6998();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = [a1 uuid];
  sub_D6978();

  v13 = [a2 uuid];
  sub_D6978();

  LOBYTE(v13) = sub_D6968();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v11, v4);
  return v13 & 1;
}

id sub_D1EF0(uint64_t a1)
{
  v15.super.isa = sub_D6958().super.isa;
  v2 = type metadata accessor for GCSProfileParams();
  v3 = sub_D7BD8();
  if (*(a1 + v2[6] + 8))
  {
    v4 = sub_D7BD8();
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + v2[7] + 8))
  {
    v5 = sub_D7BD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = *(a1 + v2[8]);
  v8 = *(a1 + v2[9]);
  v9 = sub_D7BD8();
  sub_450A0(0, &qword_119C20);
  isa = sub_D7B38().super.isa;
  BYTE1(v14) = *(a1 + v2[17]);
  LOBYTE(v14) = *(a1 + v2[16]);
  LOBYTE(v13) = *(a1 + v2[12]);
  v11 = [v6 initWithUUID:v15.super.isa name:v3 persistentControllerIdentifier:v4 gameBundleIdentifier:v5 baseProfile:v7 customizable:v8 sfSymbolsName:*(a1 + v2[13]) elementMappings:v9 hapticFeedbackOverride:isa hapticStrength:v13 doublePressShareGesture:*(a1 + v2[14]) longPressShareGesture:*(a1 + v2[15]) lightbarOverride:v14 lightbarCustomColorEnabled:*(a1 + v2[18]) lightbarColor:?];

  sub_28ACC(a1);
  return v11;
}

int *sub_D20B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6998();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 uuid];
  sub_D6978();

  v9 = [v2 name];
  v10 = sub_D7C18();
  v48 = v11;
  v49 = v10;

  v12 = [v2 persistentControllerIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_D7C18();
    v46 = v15;
    v47 = v14;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v16 = [v2 gameBundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_D7C18();
    v44 = v19;
    v45 = v18;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v43 = [v2 isBaseProfile];
  v42 = [v2 customizable];
  v20 = [v2 sfSymbolsName];
  v41 = sub_D7C18();
  v22 = v21;

  v23 = [v2 elementMappings];
  sub_450A0(0, &qword_119C20);
  v24 = sub_D7B48();

  v25 = [v2 hapticFeedbackOverride];
  [v2 hapticStrength];
  v27 = v26;
  v28 = [v2 doublePressShareGesture];
  v29 = [v2 longPressShareGesture];
  v30 = [v2 lightbarOverride];
  v31 = [v2 lightbarCustomColorEnabled];
  v32 = [v2 lightbarColor];
  (*(v50 + 32))(a1, v7, v51);
  result = type metadata accessor for GCSProfileParams();
  v34 = (a1 + result[5]);
  v35 = v48;
  *v34 = v49;
  v34[1] = v35;
  v36 = (a1 + result[6]);
  v37 = v46;
  *v36 = v47;
  v36[1] = v37;
  v38 = (a1 + result[7]);
  v39 = v44;
  *v38 = v45;
  v38[1] = v39;
  LOBYTE(v39) = v42;
  *(a1 + result[8]) = v43;
  *(a1 + result[9]) = v39;
  v40 = (a1 + result[10]);
  *v40 = v41;
  v40[1] = v22;
  *(a1 + result[11]) = v24;
  *(a1 + result[12]) = v25;
  *(a1 + result[13]) = v27;
  *(a1 + result[14]) = v28;
  *(a1 + result[15]) = v29;
  *(a1 + result[16]) = v30;
  *(a1 + result[17]) = v31;
  *(a1 + result[18]) = v32;
  return result;
}

id sub_D2424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = sub_D7BD8();

  v9 = sub_D7BD8();

  v10 = sub_D6998();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(a6, 1, v10) != 1)
  {
    isa = sub_D6958().super.isa;
    (*(v11 + 8))(a6, v10);
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v8 sfSymbolsName:v9 customizable:a5 & 1 uuid:isa];

  return v13;
}

id sub_D2554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v31 = a5;
  v32 = a3;
  v33 = a4;
  v29 = a1;
  v30 = a2;
  v9 = sub_DC40(&qword_117558);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_D6998();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  swift_getObjectType();
  sub_D2C40(a6, v11);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    sub_D6988();
    if (v19(v11, 1, v12) != 1)
    {
      sub_D2CB0(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v20 = sub_D0720(_swiftEmptyArrayStorage);
  (*(v13 + 32))(v18, v15, v12);
  v21 = &v18[v16[5]];
  v22 = v30;
  *v21 = v29;
  *(v21 + 1) = v22;
  v23 = &v18[v16[6]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[v16[7]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v18[v16[8]] = 0;
  v18[v16[9]] = v31 & 1;
  v25 = &v18[v16[10]];
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  *&v18[v16[11]] = v20;
  v18[v16[12]] = 0;
  *&v18[v16[13]] = 0x3FF0000000000000;
  *&v18[v16[14]] = 1;
  *&v18[v16[15]] = 2;
  v18[v16[16]] = 0;
  v18[v16[17]] = 0;
  *&v18[v16[18]] = 0;
  v27 = sub_D1EF0(v18);
  sub_D2CB0(a6);
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t sub_D29A4@<X0>(uint64_t *a1@<X8>)
{
  sub_450A0(0, &qword_118F10);
  result = sub_D6A68();
  *a1 = result;
  return result;
}

void sub_D29F4(uint64_t *a1@<X8>)
{
  v3 = [*v1 id];
  v4 = sub_D7C18();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

BOOL sub_D2A4C(uint64_t a1, uint64_t a2)
{
  if ((sub_D6968() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GCSProfileParams();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_D8118() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_D8118() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20)
    {
      v21 = *v17 == *v19 && v18 == v20;
      if (v21 || (sub_D8118() & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_25:
  if (*(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v22 = v4[10];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (sub_D8118() & 1) == 0)
  {
    return 0;
  }

  sub_D1978(*(a1 + v4[11]), *(a2 + v4[11]));
  if ((v26 & 1) == 0 || *(a1 + v4[12]) != *(a2 + v4[12]) || *(a1 + v4[13]) != *(a2 + v4[13]) || *(a1 + v4[14]) != *(a2 + v4[14]) || *(a1 + v4[15]) != *(a2 + v4[15]) || *(a1 + v4[16]) != *(a2 + v4[16]) || *(a1 + v4[17]) != *(a2 + v4[17]))
  {
    return 0;
  }

  return *(a1 + v4[18]) == *(a2 + v4[18]);
}

uint64_t sub_D2C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D2CB0(uint64_t a1)
{
  v2 = sub_DC40(&qword_117558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D2D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_D6998();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_D2E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_D6998();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_D2EBC()
{
  sub_D6998();
  if (v0 <= 0x3F)
  {
    sub_D3058(319, &qword_119C90, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_D2FE0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ShareGesture(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GCSColorPreset(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_D2FE0()
{
  if (!qword_119C98)
  {
    sub_450A0(255, &qword_119C20);
    v0 = sub_D7B68();
    if (!v1)
    {
      atomic_store(v0, &qword_119C98);
    }
  }
}

void sub_D3058(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void (*sub_D30B8(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[4];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8);
  sub_D78B8();
  return sub_828F8;
}

void (*sub_D3178(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[7];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8);
  sub_D78B8();
  return sub_84378;
}

void (*sub_D3238(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 80);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_D32F4()
{
  sub_DC40(&qword_115F08);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_DCB80;
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  v1 = [v7 localizedName];

  v2 = sub_D7C18();
  v4 = v3;

  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_14B60();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  countAndFlagsBits = String.localized(with:)(v0)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_D3410@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_D6D08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_119D00);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v27 = sub_DC40(&qword_119D08);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - v9;
  v31 = v1;
  sub_DC40(&qword_119D10);
  sub_15FB8(&qword_119D18, &qword_119D10);
  sub_D7328();
  v11 = swift_allocObject();
  v12 = v1[5];
  *(v11 + 5) = v1[4];
  *(v11 + 6) = v12;
  *(v11 + 7) = v1[6];
  v13 = v1[1];
  *(v11 + 1) = *v1;
  *(v11 + 2) = v13;
  v14 = v1[3];
  *(v11 + 3) = v1[2];
  *(v11 + 4) = v14;
  v15 = &v8[*(sub_DC40(&qword_119D20) + 36)];
  *v15 = sub_D4638;
  v15[1] = v11;
  v15[2] = 0;
  v15[3] = 0;
  v33 = v1[1];
  v34 = *(v1 + 4);
  sub_D46A0(v1, v32);
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  v16 = v32[0];
  v17 = swift_allocObject();
  v18 = v1[5];
  v17[5] = v1[4];
  v17[6] = v18;
  v17[7] = v1[6];
  v19 = v1[1];
  v17[1] = *v1;
  v17[2] = v19;
  v20 = v1[3];
  v17[3] = v1[2];
  v17[4] = v20;
  v21 = &v8[*(v6 + 36)];
  *v21 = v16;
  *(v21 + 1) = sub_D4638;
  *(v21 + 2) = v17;
  sub_D46A0(v1, v32);
  sub_D7A48();
  v22 = sub_D46D8();
  v23 = sub_25CA0(&qword_116888, &type metadata accessor for GroupedFormStyle);
  sub_D7558();
  (*(v3 + 8))(v5, v2);
  sub_D4848(v8);
  v30 = v1;
  sub_DC40(&qword_119D58);
  v32[0] = v6;
  v32[1] = v2;
  v32[2] = v22;
  v32[3] = v23;
  swift_getOpaqueTypeConformance2();
  sub_15FB8(&qword_119D60, &qword_119D58);
  v24 = v27;
  sub_D7528();
  return (*(v28 + 8))(v10, v24);
}

uint64_t sub_D3898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_DC40(&qword_119D70);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v39 - v6;
  v7 = sub_DC40(&qword_119D78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_DC40(&qword_119D80);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  sub_450A0(0, &qword_1195B0);
  v49 = *(a1 + 16);
  v50 = *(a1 + 32);
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  v17 = v45;
  v49 = *(a1 + 40);
  v50 = *(a1 + 56);
  sub_D78B8();
  v18 = v45;
  v19 = sub_D7EA8();

  if (v19)
  {
    sub_DC40(&qword_119DA0);
    sub_15FB8(&qword_119DA8, &qword_119DA0);
    sub_D79C8();
    (*(v8 + 32))(v16, v10, v7);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = (*(v8 + 56))(v16, v20, 1, v7);
  __chkstk_darwin(v21);
  *&v49 = sub_A9308(0xD00000000000001ELL, 0x80000000000E7420);
  *(&v49 + 1) = v22;
  sub_16000();
  *&v49 = sub_D73B8();
  *(&v49 + 1) = v23;
  LOBYTE(v50) = v24 & 1;
  v51 = v25;
  v45 = sub_A9308(0xD000000000000013, 0x80000000000E7440);
  v46 = v26;
  v45 = sub_D73B8();
  v46 = v27;
  v47 = v28 & 1;
  v48 = v29;
  sub_DC40(&qword_119D88);
  sub_15FB8(&qword_119D90, &qword_119D88);
  v30 = v40;
  sub_D79B8();
  sub_D5D94(v16, v13);
  v32 = v43;
  v31 = v44;
  v33 = *(v43 + 16);
  v34 = v41;
  v33(v41, v30, v44);
  v35 = v42;
  sub_D5D94(v13, v42);
  v36 = sub_DC40(&qword_119D98);
  v33((v35 + *(v36 + 48)), v34, v31);
  v37 = *(v32 + 8);
  v37(v30, v31);
  sub_D5E04(v16);
  v37(v34, v31);
  return sub_D5E04(v13);
}

uint64_t sub_D3DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_D6FB8();
  v3 = sub_D76F8();
  sub_A9308(0xD000000000000016, 0x80000000000E7480);
  sub_16000();
  v4 = sub_D73B8();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  v12 = v9 & 1;

  sub_1F900(v4, v6, v10);

  sub_1F8F0(v4, v6, v10);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v12;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_D3EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v53 = sub_DC40(&qword_119DB0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v42 - v5;
  v49 = sub_DC40(&qword_119DB8);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v59 = *(a1 + 16);
  v60 = *(a1 + 32);
  sub_DC40(&qword_1172A8);
  sub_D78E8();
  v57 = a1;
  *&v59 = sub_A9308(0xD000000000000013, 0x80000000000E74A0);
  *(&v59 + 1) = v10;
  sub_16000();
  *&v59 = sub_D73B8();
  *(&v59 + 1) = v11;
  LOBYTE(v60) = v12 & 1;
  v61 = v13;
  sub_450A0(0, &qword_117060);
  v14 = sub_DC40(&qword_119DC0);
  v15 = sub_D5E84();
  v44 = sub_D5EEC();
  v45 = v15;
  v54 = v9;
  v46 = v14;
  sub_D7878();
  v59 = *(a1 + 40);
  v60 = *(a1 + 56);
  sub_D78E8();
  v56 = a1;
  v43 = sub_D6FB8();
  *&v59 = sub_A9308(0xD000000000000015, 0x80000000000E74C0);
  *(&v59 + 1) = v16;
  v17 = sub_D73B8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_450A0(0, &qword_1195B0);
  v59 = *(a1 + 16);
  v60 = *(a1 + 32);
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  v24 = v66;
  v59 = *(a1 + 40);
  v60 = *(a1 + 56);
  sub_D78B8();
  v25 = v66;
  v26 = sub_D7EA8();

  v27 = 0;
  if (v26)
  {
    v27 = sub_D76F8();
  }

  sub_1F900(v17, v19, v21 & 1);
  v58 = v21 & 1;

  sub_1F8F0(v17, v19, v21 & 1);

  LOBYTE(v66) = 1;
  v59 = v43;
  LOBYTE(v60) = 1;
  v61 = v17;
  v62 = v19;
  v63 = v58;
  v64 = v23;
  v65 = v27;
  sub_DC40(&qword_119DD8);
  sub_15FB8(&qword_119DE0, &qword_119DD8);
  v28 = v55;
  sub_D7878();
  v29 = v47;
  v30 = *(v47 + 16);
  v31 = v48;
  v32 = v49;
  v30(v48, v54, v49);
  v33 = v52;
  v46 = *(v52 + 16);
  v34 = v50;
  v35 = v28;
  v36 = v53;
  v46(v50, v35, v53);
  v37 = v51;
  v30(v51, v31, v32);
  v38 = sub_DC40(&qword_119DE8);
  v46(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v33 + 8);
  v39(v55, v36);
  v40 = *(v29 + 8);
  v40(v54, v32);
  v39(v34, v36);
  return (v40)(v31, v32);
}

id sub_D458C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v3 = [*a1 localizedName];
  sub_D7C18();

  sub_16000();
  *a2 = sub_D73B8();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = 1;

  return v8;
}

uint64_t sub_D4638()
{
  sub_D32F4();
  sub_DC40(&qword_1169A8);
  return sub_D77F8();
}

unint64_t sub_D46D8()
{
  result = qword_119D28;
  if (!qword_119D28)
  {
    sub_EBC0(&qword_119D00);
    sub_D4790();
    sub_15FB8(&qword_119D48, &qword_119D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119D28);
  }

  return result;
}

unint64_t sub_D4790()
{
  result = qword_119D30;
  if (!qword_119D30)
  {
    sub_EBC0(&qword_119D20);
    sub_15FB8(&qword_119D38, &qword_119D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119D30);
  }

  return result;
}

uint64_t sub_D4848(uint64_t a1)
{
  v2 = sub_DC40(&qword_119D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_DC40(&qword_119D68);
  __chkstk_darwin(v19);
  v17 = &v17 - v3;
  v18 = sub_DC40(&qword_119940);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = sub_D7128();
  __chkstk_darwin(v7 - 8);
  v8 = sub_DC40(&qword_116998);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_D7108();
  v22 = a1;
  sub_DC40(&qword_116818);
  sub_15FB8(&qword_116830, &qword_116818);
  sub_D6C08();
  sub_D7118();
  v21 = a1;
  sub_DC40(&qword_1169D0);
  sub_286D4();
  sub_D6C08();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_D7098();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_D4C04()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_D4D68()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_D4F68(uint64_t a1)
{
  v2 = sub_D6998();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 64);
  LOBYTE(v57) = *(a1 + 80);
  LOBYTE(v54) = 0;
  sub_DC40(&qword_116510);
  sub_D78C8();
  sub_D6988();
  v52 = sub_D6938();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v56 = *(a1 + 88);
  v57 = *(a1 + 104);
  sub_DC40(&qword_1169A8);
  sub_D77E8();
  v50 = *(&v54 + 1);
  v48 = v54;
  v51 = a1;
  v56 = *(a1 + 16);
  v57 = *(a1 + 32);
  v54 = *(a1 + 16);
  v55 = *(a1 + 32);
  v8 = sub_DC40(&qword_1172A8);
  sub_D78B8();
  v9 = v53;
  v10 = [v53 productCategoryKey];

  if (!v10)
  {
    sub_D7C18();
    v10 = sub_D7BD8();
  }

  v49 = v10;
  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v11 = v53;
  v47 = [v53 shareButton];

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v12 = v53;
  v13 = [v53 buttons];

  sub_450A0(0, &qword_116AC8);
  v46 = sub_D7B48();

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v14 = v53;
  v15 = [v53 dpads];

  v45 = sub_D7B48();
  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v16 = v53;
  v17 = [v53 logoSfSymbolsName];

  if (!v17)
  {
    sub_D7C18();
    v17 = sub_D7BD8();
  }

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v18 = v53;
  v44 = [v53 supportsHaptics];

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v19 = v53;
  v43 = [v53 supportsLight];

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v20 = v53;
  v21 = [v53 baseProfile];

  v22 = objc_allocWithZone(GCSController);
  v48 = v8;
  v23 = v17;
  v24 = sub_D7BD8();

  v50 = v7;
  v25 = sub_D7BD8();
  isa = sub_D7B38().super.isa;

  v27 = sub_D7B38().super.isa;

  BYTE1(v42) = v43;
  LOBYTE(v42) = v44;
  v28 = v49;
  v29 = v47;
  v30 = [v22 initWithName:v24 persistentIdentifier:v25 productCategoryKey:v49 hidden:0 shareButton:v47 buttons:isa dpads:v27 logoSfSymbolsName:v23 supportsHaptics:v42 supportsLight:v21 baseProfile:0 miscellaneous:?];

  v54 = v56;
  v55 = v57;
  sub_D78B8();
  v31 = v53;
  v32 = [v53 persistentIdentifier];

  if (!v32)
  {
    sub_D7C18();
    v32 = sub_D7BD8();
  }

  v33 = v51;
  v54 = *(v51 + 40);
  v55 = *(v51 + 56);
  sub_D78B8();
  v34 = v53;
  v35 = [v53 persistentIdentifier];

  if (!v35)
  {
    sub_D7C18();
    v35 = sub_D7BD8();
  }

  v36 = objc_allocWithZone(GCSCopilotFusedController);
  v37 = sub_D7BD8();

  v38 = [v36 initWithFusedControllerIdentifier:v37 pilotIdentifier:v32 copilotIdentifier:v35];

  if (*v33)
  {
    v39 = *v33;
    v40 = static MacParity.Pantheon.getter();
    (*(&stru_298.reserved2 + (swift_isaMask & *v39)))(v38, v40 & 1);
    v41 = static MacParity.Pantheon.getter();
    (*(&stru_2E8.reloff + (swift_isaMask & *v39)))(v30, v41 & 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

__n128 sub_D56EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  sub_D77D8();
  result = v22;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v22;
  *(a9 + 104) = v23;
  return result;
}

uint64_t sub_D5808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D5850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D58BC()
{
  sub_EBC0(&qword_119D08);
  sub_EBC0(&qword_119D58);
  sub_EBC0(&qword_119D00);
  sub_D6D08();
  sub_D46D8();
  sub_25CA0(&qword_116888, &type metadata accessor for GroupedFormStyle);
  swift_getOpaqueTypeConformance2();
  sub_15FB8(&qword_119D60, &qword_119D58);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D5A0C()
{
  v1 = *(v0 + 16);
  v10[14] = sub_A9308(0x4C45434E4143, 0xE600000000000000);
  v10[15] = v2;
  v3 = swift_allocObject();
  v5 = v1[1];
  v4 = v1[2];
  v3[1] = *v1;
  v3[2] = v5;
  v3[3] = v4;
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v3[6] = v1[5];
  v3[7] = v6;
  v3[4] = v8;
  v3[5] = v7;
  sub_D46A0(v1, v10);
  sub_16000();
  return sub_D7868();
}

uint64_t sub_D5AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v20 = sub_A9308(1162760004, 0xE400000000000000);
  v21 = v4;
  v5 = swift_allocObject();
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  v5[1] = *v3;
  v5[2] = v7;
  v5[3] = v6;
  v8 = *(v3 + 96);
  v10 = *(v3 + 48);
  v9 = *(v3 + 64);
  v5[6] = *(v3 + 80);
  v5[7] = v8;
  v5[4] = v10;
  v5[5] = v9;
  sub_D46A0(v3, &v18);
  sub_16000();
  sub_D7868();
  sub_450A0(0, &qword_1195B0);
  v18 = *(v3 + 16);
  v19 = *(v3 + 32);
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  v11 = v20;
  v18 = *(v3 + 40);
  v19 = *(v3 + 56);
  sub_D78B8();
  v12 = v20;
  v13 = sub_D7EA8();

  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13 & 1;
  result = sub_DC40(&qword_1169D0);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_285D8;
  v17[2] = v15;
  return result;
}

uint64_t sub_D5CA8()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_D5D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_119D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D5E04(uint64_t a1)
{
  v2 = sub_DC40(&qword_119D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_D5E84()
{
  result = qword_119DC8;
  if (!qword_119DC8)
  {
    sub_450A0(255, &qword_117060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119DC8);
  }

  return result;
}

unint64_t sub_D5EEC()
{
  result = qword_119DD0;
  if (!qword_119DD0)
  {
    sub_EBC0(&qword_119DC0);
    sub_450A0(255, &qword_117060);
    sub_D5E84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119DD0);
  }

  return result;
}

uint64_t sub_D5FDC()
{
  v1 = **(v0 + 16);
  if (v1)
  {
    v2 = [v1 unfusedFusableControllers];
    sub_450A0(0, &qword_117060);
    sub_D7D28();

    swift_getKeyPath();
    sub_DC40(&qword_118E08);
    sub_DC40(&qword_119DF0);
    sub_15FB8(&qword_1195D8, &qword_118E08);
    sub_D5E84();
    swift_getOpaqueTypeConformance2();
    return sub_D7988();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

BOOL sub_D61E8(int a1, int a2, int a3)
{
  if (qword_11FB40 == -1)
  {
    v3 = dword_11FB30 < a1;
    if (dword_11FB30 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_D6798();
    a2 = v6;
    a3 = v5;
    v3 = dword_11FB30 < a1;
    if (dword_11FB30 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_11FB34 > a2)
  {
    return 1;
  }

  if (dword_11FB34 < a2)
  {
    return 0;
  }

  return dword_11FB38 >= a3;
}

uint64_t sub_D62A8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_11FB48 == -1)
  {
    if (qword_11FB50)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_D67B0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_11FB50)
    {
      return _availability_version_check();
    }
  }

  if (qword_11FB40 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_D6798();
    a3 = v10;
    a4 = v9;
    v8 = dword_11FB30 < v11;
    if (dword_11FB30 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_11FB34 > a3)
      {
        return 1;
      }

      if (dword_11FB34 >= a3)
      {
        return dword_11FB38 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_11FB30 < a2;
  if (dword_11FB30 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_D643C(uint64_t result)
{
  v1 = qword_11FB50;
  if (qword_11FB50)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_11FB50 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_11FB30, &dword_11FB34, &dword_11FB38);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}