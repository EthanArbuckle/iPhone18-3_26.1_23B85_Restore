uint64_t sub_23B5AB490@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

unint64_t sub_23B5AB508()
{
  v1 = 0x65636976726573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x616D726F66726570;
  }

  if (*v0)
  {
    v1 = 0x73656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B5AB594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5B3E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5AB6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B5AB76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B5AB7F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B5AB828()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23B5D8468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23B5AB994()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B5AB9DC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23B5ABA0C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23B5ABA20()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23B5D8708();
}

void sub_23B5ABA34(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  NWParameters.wifiAware.getter(&v4);
  *a2 = v4;
}

uint64_t sub_23B5ABA70(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return NWParameters.wifiAware.setter(&v4);
}

uint64_t sub_23B5ABAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WAEndpoint();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WAPerformanceReport();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5ABB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WAEndpoint();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WAPerformanceReport();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5ABCC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WAPublisherListener.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5ABD70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WAPublisherListener.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ABE74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WASubscriberBrowser.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5ABF20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WASubscriberBrowser.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ABFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B5D8448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23B5D8AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23B5AC100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B5D8448();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23B5D8AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23B5AC208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B5D84D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5AC2B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B5D84D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B5AC4E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23B5D84B8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23B5D84A8();
}

uint64_t sub_23B5AC560()
{
  sub_23B5D8A08();

  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  v2 = [v1 processName];

  v3 = sub_23B5D86B8();
  v5 = v4;

  MEMORY[0x23EE9F750](v3, v5);

  MEMORY[0x23EE9F750](10272, 0xE200000000000000);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_23B5D86B8();
    v10 = v9;
  }

  else
  {
    v10 = 0x800000023B5DEED0;
    v8 = 0xD000000000000011;
  }

  MEMORY[0x23EE9F750](v8, v10);

  MEMORY[0x23EE9F750](0x203A4449505B2029, 0xE800000000000000);
  v11 = [v0 processInfo];
  [v11 processIdentifier];

  v12 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v12);

  result = MEMORY[0x23EE9F750](23901, 0xE200000000000000);
  qword_27E15D498 = 91;
  unk_27E15D4A0 = 0xE100000000000000;
  return result;
}

void sub_23B5AC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  oslog = sub_23B5D8498();
  v6 = a3();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v11 = v8;
    sub_23B5D8A08();

    MEMORY[0x23EE9F750](a1, a2);
    MEMORY[0x23EE9F750](32, 0xE100000000000000);
    if (qword_27E15C310 != -1)
    {
      swift_once();
    }

    MEMORY[0x23EE9F750](qword_27E15D498, unk_27E15D4A0);
    v9 = sub_23B5AC96C(0x7261774169466957, 0xEB00000000203A65, &v11);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_23B5AA000, oslog, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEA0310](v8, -1, -1);
    MEMORY[0x23EEA0310](v7, -1, -1);
  }
}

uint64_t sub_23B5AC96C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B5ACA38(v11, 0, 0, 1, a1, a2);
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
    sub_23B5ACF60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B5ACA38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B5ACB44(a5, a6);
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
    result = sub_23B5D8A48();
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

uint64_t sub_23B5ACB44(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B5ACB90(a1, a2);
  sub_23B5ACCC0(&unk_284E1DB80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B5ACB90(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B5ACDAC(v5, 0);
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

  result = sub_23B5D8A48();
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
        v10 = sub_23B5D8758();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B5ACDAC(v10, 0);
        result = sub_23B5D89D8();
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

uint64_t sub_23B5ACCC0(uint64_t result)
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

  result = sub_23B5ACE20(result, v12, 1, v3);
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

void *sub_23B5ACDAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C3B8, &qword_23B5D95C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B5ACE20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C3B8, &qword_23B5D95C8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23B5ACF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B5AD020(uint64_t a1)
{
  v2 = sub_23B5ADC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD05C(uint64_t a1)
{
  v2 = sub_23B5ADC64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5AD098()
{
  v1 = 0x64657463656C6573;
  if (*v0 != 2)
  {
    v1 = 0x676E69686374616DLL;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23B5AD118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5B3D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5AD140(uint64_t a1)
{
  v2 = sub_23B5ADACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD17C(uint64_t a1)
{
  v2 = sub_23B5ADACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD1CC(uint64_t a1)
{
  v2 = sub_23B5ADB20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD208(uint64_t a1)
{
  v2 = sub_23B5ADB20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5AD2C4(uint64_t a1)
{
  v2 = sub_23B5ADBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD300(uint64_t a1)
{
  v2 = sub_23B5ADBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD33C(uint64_t a1)
{
  v2 = sub_23B5ADC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD378(uint64_t a1)
{
  v2 = sub_23B5ADC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WADevicesAgentInterface.Devices.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C420, &unk_23B5D95D0);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C430, &qword_23B5D95E0);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C438, &qword_23B5D95E8);
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C440, &qword_23B5D95F0);
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C448, &qword_23B5D95F8);
  v55 = *(v23 - 8);
  v56 = v23;
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v41 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5ADACC();
  sub_23B5D8D78();
  sub_23B5AF2EC(v54, v22, type metadata accessor for WADevicesAgentInterface.Devices);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v58 = 0;
      sub_23B5ADC64();
      v34 = v56;
      sub_23B5D8BD8();
      (*(v42 + 8))(v18, v15);
    }

    else
    {
      v59 = 1;
      sub_23B5ADC10();
      v34 = v56;
      sub_23B5D8BD8();
      (*(v43 + 8))(v14, v44);
    }

    return (*(v55 + 8))(v26, v34);
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = v48;
    v36 = v49;
    v37 = v50;
    (*(v49 + 32))(v48, v22, v50);
    v61 = 3;
    sub_23B5ADB20();
    v38 = v51;
    v39 = v56;
    sub_23B5D8BD8();
    sub_23B5B2774(&qword_27E15C460, &qword_27E15C428, &qword_23B5DDF80);
    v40 = v53;
    sub_23B5D8C28();
    (*(v52 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    return (*(v55 + 8))(v26, v39);
  }

  else
  {
    v29 = *v22;
    v60 = 2;
    sub_23B5ADBBC();
    v30 = v45;
    v31 = v56;
    sub_23B5D8BD8();
    v57 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C470, &qword_23B5D9600);
    sub_23B5AE614(&qword_27E15C478);
    v32 = v47;
    sub_23B5D8C28();
    (*(v46 + 8))(v30, v32);
    (*(v55 + 8))(v26, v31);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B5ADACC()
{
  result = qword_27E15C450;
  if (!qword_27E15C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C450);
  }

  return result;
}

unint64_t sub_23B5ADB20()
{
  result = qword_27E15C458;
  if (!qword_27E15C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C458);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_23B5ADBBC()
{
  result = qword_27E15C468;
  if (!qword_27E15C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C468);
  }

  return result;
}

unint64_t sub_23B5ADC10()
{
  result = qword_27E15C480;
  if (!qword_27E15C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C480);
  }

  return result;
}

unint64_t sub_23B5ADC64()
{
  result = qword_27E15C488;
  if (!qword_27E15C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C488);
  }

  return result;
}

uint64_t WADevicesAgentInterface.Devices.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C490, &qword_23B5D9608);
  v69 = *(v66 - 8);
  v3 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v74 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C498, &qword_23B5D9610);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v71 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4A0, &qword_23B5D9618);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v73 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4A8, &qword_23B5D9620);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v70 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B0, &qword_23B5D9628);
  v72 = *(v14 - 8);
  v15 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v17 = &v58 - v16;
  v18 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = (MEMORY[0x28223BE20])();
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v58 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_23B5ADACC();
  v30 = v76;
  sub_23B5D8D68();
  if (!v30)
  {
    v58 = v25;
    v59 = v22;
    v31 = v73;
    v32 = v74;
    v60 = v27;
    v61 = v18;
    v33 = v72;
    v34 = v75;
    v76 = v14;
    v35 = v17;
    v36 = sub_23B5D8BC8();
    v37 = v36;
    v38 = *(v36 + 16);
    if (!v38 || ((v39 = *(v36 + 32), v38 == 1) ? (v40 = v39 == 4) : (v40 = 1), v40))
    {
      v41 = sub_23B5D8A38();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630) + 48);
      *v43 = v61;
      v45 = v76;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v33 + 8))(v35, v45);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v36 + 32) > 1u)
      {
        if (v39 == 2)
        {
          v81 = 2;
          sub_23B5ADBBC();
          v49 = v76;
          sub_23B5D8B38();
          v74 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C470, &qword_23B5D9600);
          sub_23B5AE614(&qword_27E15C4C8);
          v52 = v68;
          v53 = v71;
          sub_23B5D8B98();
          (*(v67 + 8))(v53, v52);
          (*(v33 + 8))(v74, v49);
          swift_unknownObjectRelease();
          v56 = v58;
          *v58 = v78;
          swift_storeEnumTagMultiPayload();
          v57 = v56;
        }

        else
        {
          v82 = 3;
          sub_23B5ADB20();
          sub_23B5D8B38();
          v73 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
          sub_23B5B2774(&qword_27E15C4C0, &qword_27E15C428, &qword_23B5DDF80);
          v54 = v59;
          v55 = v66;
          sub_23B5D8B98();
          (*(v69 + 8))(v32, v55);
          (*(v33 + 8))(v35, v76);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v54;
        }

        v51 = v60;
        sub_23B5AE5B0(v57, v60);
      }

      else
      {
        if (*(v36 + 32))
        {
          v80 = 1;
          sub_23B5ADC10();
          v50 = v76;
          sub_23B5D8B38();
          (*(v64 + 8))(v31, v65);
          (*(v33 + 8))(v35, v50);
        }

        else
        {
          v79 = 0;
          sub_23B5ADC64();
          v47 = v70;
          v48 = v76;
          sub_23B5D8B38();
          (*(v62 + 8))(v47, v63);
          (*(v33 + 8))(v17, v48);
        }

        swift_unknownObjectRelease();
        v51 = v60;
        swift_storeEnumTagMultiPayload();
      }

      sub_23B5AE5B0(v51, v34);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t sub_23B5AE5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5AE614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15C470, &qword_23B5D9600);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B5AE680()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23B5AE6B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_23B5AE6E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B5AE714()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.performanceMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

unint64_t *WABrowserAgentInterface.DescriptorToAgent.encode()()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_23B5B03C4(type metadata accessor for WABrowserAgentInterface.DescriptorToAgent, &qword_27E15C4D0, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5AE940(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static WABrowserAgentInterface.DescriptorToAgent.decode(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_23B5B05E0(a1, a2, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent, &qword_27E15C4D8, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5AEA24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B5AEA6C(uint64_t a1)
{
  v2 = sub_23B5AED60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AEAA8(uint64_t a1)
{
  v2 = sub_23B5AED60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4E0, &qword_23B5D9638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AED60();
  sub_23B5D8D78();
  v11 = v3[1];
  *&v18 = *v3;
  *(&v18 + 1) = v11;
  v17 = 0;
  sub_23B5AEDB4();

  sub_23B5D8C28();
  if (v2)
  {
  }

  else
  {

    v12 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
    v13 = v12[5];
    v17 = 1;
    type metadata accessor for WADevicesAgentInterface.Devices(0);
    sub_23B5AEA24(&qword_27E15C4F8, type metadata accessor for WADevicesAgentInterface.Devices);
    sub_23B5D8C28();
    v18 = *(v3 + v12[6]);
    v16 = 2;
    sub_23B5D8C28();
    LOBYTE(v18) = *(v3 + v12[7]);
    v16 = 3;
    sub_23B5AEE08();
    sub_23B5D8C28();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23B5AED60()
{
  result = qword_27E15C4E8;
  if (!qword_27E15C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C4E8);
  }

  return result;
}

unint64_t sub_23B5AEDB4()
{
  result = qword_27E15C4F0;
  if (!qword_27E15C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C4F0);
  }

  return result;
}

unint64_t sub_23B5AEE08()
{
  result = qword_27E15C500;
  if (!qword_27E15C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C500);
  }

  return result;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C508, &qword_23B5D9640);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AED60();
  v26 = v10;
  v16 = v27;
  sub_23B5D8D68();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v24;
  v27 = v11;
  v18 = v14;
  LOBYTE(v28) = 0;
  sub_23B5AF244();
  sub_23B5D8B98();
  v19 = v30;
  *v14 = v29;
  v14[1] = v19;
  v33 = 1;
  sub_23B5AEA24(&qword_27E15C518, type metadata accessor for WADevicesAgentInterface.Devices);
  sub_23B5D8B98();
  v20 = v27;
  sub_23B5AE5B0(v6, v18 + *(v27 + 20));
  v32 = 2;
  sub_23B5D8B98();
  *(v18 + *(v20 + 24)) = v28;
  v31 = 3;
  sub_23B5AF298();
  sub_23B5D8B98();
  (*(v17 + 8))(v26, v25);
  *(v18 + *(v20 + 28)) = v32;
  sub_23B5AF2EC(v18, v23, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5AF354(v18, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
}

unint64_t sub_23B5AF244()
{
  result = qword_27E15C510;
  if (!qword_27E15C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C510);
  }

  return result;
}

unint64_t sub_23B5AF298()
{
  result = qword_27E15C520;
  if (!qword_27E15C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C520);
  }

  return result;
}

uint64_t sub_23B5AF2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5AF354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_23B5AF43C(v8, v7);
}

__n128 WABrowserAgentInterface.AgentToEndpoint.init(service:device:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  v4 = *(a2 + 48);
  *(a3 + 48) = *(a2 + 32);
  *(a3 + 64) = v4;
  *(a3 + 80) = *(a2 + 64);
  result = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = result;
  return result;
}

void *WABrowserAgentInterface.AgentToEndpoint.encode()()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = sub_23B5D8318();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_23B5D8308();
  v6 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v6;
  v16[4] = *(v0 + 64);
  v17 = *(v0 + 80);
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  sub_23B5AF638();
  v8 = sub_23B5D82F8();
  v10 = v9;

  if (!v1)
  {
    v11 = sub_23B5D8418();
    *&v16[0] = 0;
    v12 = [v11 compressedDataUsingAlgorithm:3 error:v16];

    v13 = *&v16[0];
    if (v12)
    {
      v5 = sub_23B5D8428();
      sub_23B5AE940(v8, v10);
    }

    else
    {
      v5 = v13;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v8, v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_23B5AF638()
{
  result = qword_27E15C528;
  if (!qword_27E15C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C528);
  }

  return result;
}

uint64_t static WABrowserAgentInterface.AgentToEndpoint.decode(from:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23B5D8418();
  v14[0] = 0;
  v1 = [v0 decompressedDataUsingAlgorithm:3 error:v14];

  v2 = v14[0];
  if (v1)
  {
    v3 = sub_23B5D82E8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    sub_23B5D82D8();
    v7 = v1;
    v8 = sub_23B5D8428();
    v10 = v9;

    sub_23B5AF7DC();
    sub_23B5D82C8();
    sub_23B5AE940(v8, v10);
  }

  else
  {
    v12 = v14[0];
    sub_23B5D83E8();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23B5AF7DC()
{
  result = qword_27E15C530;
  if (!qword_27E15C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C530);
  }

  return result;
}

uint64_t sub_23B5AF830()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t sub_23B5AF878()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t sub_23B5AF8BC()
{
  if (*v0)
  {
    result = 0x656369766564;
  }

  else
  {
    result = 0x65636976726573;
  }

  *v0;
  return result;
}

uint64_t sub_23B5AF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23B5AF9CC(uint64_t a1)
{
  v2 = sub_23B5AFC88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AFA08(uint64_t a1)
{
  v2 = sub_23B5AFC88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C538, &qword_23B5D9648);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 4);
  v25 = *(v1 + 3);
  v26 = v10;
  v27 = v1[10];
  v11 = *(v1 + 2);
  v23 = *(v1 + 1);
  v24 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AFC88();

  sub_23B5D8D78();
  *&v18 = v8;
  *(&v18 + 1) = v9;
  LOBYTE(v16[0]) = 0;
  sub_23B5AEDB4();
  v13 = v15[1];
  sub_23B5D8C28();

  if (!v13)
  {
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v18 = v23;
    v19 = v24;
    v28 = 1;
    sub_23B5AF43C(&v23, v16);
    sub_23B5AFCDC();
    sub_23B5D8C28();
    v16[2] = v20;
    v16[3] = v21;
    v17 = v22;
    v16[1] = v19;
    v16[0] = v18;
    sub_23B5AFD30(v16);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23B5AFC88()
{
  result = qword_27E15C540;
  if (!qword_27E15C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C540);
  }

  return result;
}

unint64_t sub_23B5AFCDC()
{
  result = qword_27E15C548;
  if (!qword_27E15C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C548);
  }

  return result;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C550, &qword_23B5D9650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AFC88();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = v41;
  LOBYTE(v21[0]) = 0;
  sub_23B5AF244();
  sub_23B5D8B98();
  v12 = v24;
  v20 = v23;
  v30 = 1;
  sub_23B5B000C();
  sub_23B5D8B98();
  (*(v10 + 8))(v8, v4);
  v13 = v33;
  v14 = v34;
  v38 = v33;
  v39 = v34;
  v15 = v35;
  v40 = v35;
  v16 = v31;
  v36 = v31;
  v37 = v32;
  v17 = v20;
  *&v21[0] = v20;
  *(&v21[0] + 1) = v12;
  v21[3] = v33;
  v21[4] = v34;
  v22 = v35;
  v21[1] = v31;
  v21[2] = v32;
  *(v11 + 32) = v32;
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 80) = v15;
  *v11 = v21[0];
  *(v11 + 16) = v16;
  sub_23B5B0060(v21, &v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v23 = v17;
  v24 = v12;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  v26 = v37;
  v25 = v36;
  return sub_23B5B0098(&v23);
}

unint64_t sub_23B5B000C()
{
  result = qword_27E15C558;
  if (!qword_27E15C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C558);
  }

  return result;
}

uint64_t sub_23B5B0184(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B5B01D4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.performanceMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_23B5B0250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v11 = a1[1];
  v12 = *a5;
  *a7 = *a1;
  a7[1] = v11;
  v13 = a6(0);
  result = sub_23B5AE5B0(a2, a7 + v13[5]);
  v15 = (a7 + v13[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a7 + v13[7]) = v12;
  return result;
}

uint64_t _s9WiFiAware23WABrowserAgentInterfaceO012DescriptorToE0V9OperationO9hashValueSivg_0()
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

unint64_t *WAListenerAgentInterface.DescriptorToAgent.encode()()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_23B5B03C4(type metadata accessor for WAListenerAgentInterface.DescriptorToAgent, &qword_27E15C560, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_23B5B03C4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = sub_23B5D8318();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_23B5D8308();
  a1(0);
  sub_23B5AEA24(a2, a3);
  v10 = sub_23B5D82F8();
  v12 = v11;

  if (!v3)
  {
    v13 = sub_23B5D8418();
    v18[0] = 0;
    v14 = [v13 compressedDataUsingAlgorithm:3 error:v18];

    v15 = v18[0];
    if (v14)
    {
      a2 = sub_23B5D8428();
      sub_23B5AE940(v10, v12);
    }

    else
    {
      a2 = v15;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v10, v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t static WAListenerAgentInterface.DescriptorToAgent.decode(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_23B5B05E0(a1, a2, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent, &qword_27E15C568, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5B05E0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23B5D8418();
  v22[0] = 0;
  v9 = [v8 decompressedDataUsingAlgorithm:3 error:v22];

  v10 = v22[0];
  if (v9)
  {
    v11 = sub_23B5D82E8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = v10;
    sub_23B5D82D8();
    a3(0);
    v15 = v9;
    v16 = sub_23B5D8428();
    v18 = v17;

    sub_23B5AEA24(a4, a5);
    sub_23B5D82C8();
    sub_23B5AE940(v16, v18);
  }

  else
  {
    v20 = v22[0];
    sub_23B5D83E8();

    result = swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5B076C(uint64_t a1)
{
  v2 = sub_23B5B0A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B07A8(uint64_t a1)
{
  v2 = sub_23B5B0A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C570, &qword_23B5D9658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B0A60();
  sub_23B5D8D78();
  v11 = v3[1];
  *&v18 = *v3;
  *(&v18 + 1) = v11;
  v17 = 0;
  sub_23B5B0AB4();

  sub_23B5D8C28();
  if (v2)
  {
  }

  else
  {

    v12 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
    v13 = v12[5];
    v17 = 1;
    type metadata accessor for WADevicesAgentInterface.Devices(0);
    sub_23B5AEA24(&qword_27E15C4F8, type metadata accessor for WADevicesAgentInterface.Devices);
    sub_23B5D8C28();
    v18 = *(v3 + v12[6]);
    v16 = 2;
    sub_23B5D8C28();
    LOBYTE(v18) = *(v3 + v12[7]);
    v16 = 3;
    sub_23B5AEE08();
    sub_23B5D8C28();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23B5B0A60()
{
  result = qword_27E15C578;
  if (!qword_27E15C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C578);
  }

  return result;
}

unint64_t sub_23B5B0AB4()
{
  result = qword_27E15C580;
  if (!qword_27E15C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C580);
  }

  return result;
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C588, &qword_23B5D9660);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B0A60();
  v26 = v10;
  v16 = v27;
  sub_23B5D8D68();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v24;
  v27 = v11;
  v18 = v14;
  LOBYTE(v28) = 0;
  sub_23B5B0EF0();
  sub_23B5D8B98();
  v19 = v30;
  *v14 = v29;
  v14[1] = v19;
  v33 = 1;
  sub_23B5AEA24(&qword_27E15C518, type metadata accessor for WADevicesAgentInterface.Devices);
  sub_23B5D8B98();
  v20 = v27;
  sub_23B5AE5B0(v6, v18 + *(v27 + 20));
  v32 = 2;
  sub_23B5D8B98();
  *(v18 + *(v20 + 24)) = v28;
  v31 = 3;
  sub_23B5AF298();
  sub_23B5D8B98();
  (*(v17 + 8))(v26, v25);
  *(v18 + *(v20 + 28)) = v32;
  sub_23B5AF2EC(v18, v23, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5AF354(v18, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
}

unint64_t sub_23B5B0EF0()
{
  result = qword_27E15C590;
  if (!qword_27E15C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C590);
  }

  return result;
}

void *WAParametersAgentInterface.Parameters.encode()()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = sub_23B5D8318();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_23B5D8308();
  LOBYTE(v15[0]) = v2;
  sub_23B5B10EC();
  v7 = sub_23B5D82F8();
  v9 = v8;

  if (!v1)
  {
    v10 = sub_23B5D8418();
    v15[0] = 0;
    v11 = [v10 compressedDataUsingAlgorithm:3 error:v15];

    v12 = v15[0];
    if (v11)
    {
      v6 = sub_23B5D8428();
      sub_23B5AE940(v7, v9);
    }

    else
    {
      v6 = v12;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v7, v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_23B5B10EC()
{
  result = qword_27E15C598;
  if (!qword_27E15C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C598);
  }

  return result;
}

uint64_t static WAParametersAgentInterface.Parameters.decode(from:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23B5D8418();
  v14[0] = 0;
  v1 = [v0 decompressedDataUsingAlgorithm:3 error:v14];

  v2 = v14[0];
  if (v1)
  {
    v3 = sub_23B5D82E8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    sub_23B5D82D8();
    v7 = v1;
    v8 = sub_23B5D8428();
    v10 = v9;

    sub_23B5B1290();
    sub_23B5D82C8();
    sub_23B5AE940(v8, v10);
  }

  else
  {
    v12 = v14[0];
    sub_23B5D83E8();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23B5B1290()
{
  result = qword_27E15C5A0;
  if (!qword_27E15C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5A0);
  }

  return result;
}

uint64_t sub_23B5B12E4()
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

uint64_t sub_23B5B1348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616D726F66726570 && a2 == 0xEF65646F4D65636ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5B13D8(uint64_t a1)
{
  v2 = sub_23B5B159C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B1414(uint64_t a1)
{
  v2 = sub_23B5B159C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAParametersAgentInterface.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5A8, &qword_23B5D9668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B159C();
  sub_23B5D8D78();
  v12 = v8;
  sub_23B5AEE08();
  sub_23B5D8C28();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23B5B159C()
{
  result = qword_27E15C5B0;
  if (!qword_27E15C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5B0);
  }

  return result;
}

uint64_t WAParametersAgentInterface.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5B8, &qword_23B5D9670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B159C();
  sub_23B5D8D68();
  if (!v2)
  {
    sub_23B5AF298();
    sub_23B5D8B98();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t WAPathAgentInterface.AgentToPath.publishedService.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WAPathAgentInterface.AgentToPath.subscribedService.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t WAPathAgentInterface.AgentToPath.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_23B5AF43C(v8, v7);
}

uint64_t WAPathAgentInterface.AgentToPath.peerMacAddress.getter()
{
  v1 = *(v0 + 112);
  sub_23B5B182C(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_23B5B182C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *a1;
  *(a7 + 16) = v7;
  v8 = *(a3 + 48);
  *(a7 + 64) = *(a3 + 32);
  *(a7 + 80) = v8;
  *(a7 + 96) = *(a3 + 64);
  result = *(a3 + 16);
  *(a7 + 32) = *a3;
  *(a7 + 48) = result;
  *(a7 + 104) = a4;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

void *WAPathAgentInterface.AgentToPath.encode()()
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sub_23B5D8318();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_23B5D8308();
  v6 = v0[5];
  v18[4] = v0[4];
  v18[5] = v6;
  v7 = v0[7];
  v18[6] = v0[6];
  v18[7] = v7;
  v8 = v0[1];
  v18[0] = *v0;
  v18[1] = v8;
  v9 = v0[3];
  v18[2] = v0[2];
  v18[3] = v9;
  sub_23B5B1A2C();
  v10 = sub_23B5D82F8();
  v12 = v11;

  if (!v1)
  {
    v13 = sub_23B5D8418();
    *&v18[0] = 0;
    v14 = [v13 compressedDataUsingAlgorithm:3 error:v18];

    v15 = *&v18[0];
    if (v14)
    {
      v5 = sub_23B5D8428();
      sub_23B5AE940(v10, v12);
    }

    else
    {
      v5 = v15;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v10, v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_23B5B1A2C()
{
  result = qword_27E15C5C0;
  if (!qword_27E15C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5C0);
  }

  return result;
}

uint64_t static WAPathAgentInterface.AgentToPath.decode(from:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23B5D8418();
  v14[0] = 0;
  v1 = [v0 decompressedDataUsingAlgorithm:3 error:v14];

  v2 = v14[0];
  if (v1)
  {
    v3 = sub_23B5D82E8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    sub_23B5D82D8();
    v7 = v1;
    v8 = sub_23B5D8428();
    v10 = v9;

    sub_23B5B1BD0();
    sub_23B5D82C8();
    sub_23B5AE940(v8, v10);
  }

  else
  {
    v12 = v14[0];
    sub_23B5D83E8();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23B5B1BD0()
{
  result = qword_27E15C5C8;
  if (!qword_27E15C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5C8);
  }

  return result;
}

unint64_t sub_23B5B1C24()
{
  v1 = *v0;
  v2 = 0x656369766564;
  v3 = 0x6874617061746164;
  if (v1 != 3)
  {
    v3 = 0x4163614D72656570;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B5B1CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5B400C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5B1D04(uint64_t a1)
{
  v2 = sub_23B5B20E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B1D40(uint64_t a1)
{
  v2 = sub_23B5B20E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPathAgentInterface.AgentToPath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5D0, &qword_23B5D9678);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  *&v22 = v1[2];
  *(&v22 + 1) = v9;
  v10 = *(v1 + 5);
  v37 = *(v1 + 4);
  v38 = v10;
  v39 = v1[12];
  v11 = *(v1 + 3);
  v35 = *(v1 + 2);
  v36 = v11;
  v21 = *(v1 + 104);
  v12 = v1[14];
  v19 = v1[15];
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B20E0();

  sub_23B5D8D78();
  *&v30 = v7;
  *(&v30 + 1) = v8;
  LOBYTE(v27[0]) = 0;
  sub_23B5B0AB4();
  v14 = v40;
  sub_23B5D8C08();
  if (v14)
  {

    return (*(v23 + 8))(v6, v3);
  }

  else
  {
    v16 = v20;
    v17 = v23;

    v30 = v22;
    LOBYTE(v27[0]) = 1;
    sub_23B5AEDB4();

    sub_23B5D8C08();

    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    v29 = 2;
    sub_23B5AF43C(&v35, v27);
    sub_23B5AFCDC();
    sub_23B5D8C28();
    v27[2] = v32;
    v27[3] = v33;
    v28 = v34;
    v27[0] = v30;
    v27[1] = v31;
    sub_23B5AFD30(v27);
    LOBYTE(v25) = 3;
    sub_23B5D8C38();
    v25 = v16;
    v26 = v19;
    v24 = 4;
    sub_23B5B182C(v16, v19);
    sub_23B5B2134();
    sub_23B5D8C28();
    sub_23B5AE940(v25, v26);
    return (*(v17 + 8))(0, v3);
  }
}

unint64_t sub_23B5B20E0()
{
  result = qword_27E15C5D8;
  if (!qword_27E15C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5D8);
  }

  return result;
}

unint64_t sub_23B5B2134()
{
  result = qword_27E15C5E0;
  if (!qword_27E15C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5E0);
  }

  return result;
}

uint64_t WAPathAgentInterface.AgentToPath.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5E8, &qword_23B5D9680);
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v61);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B20E0();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v28) = 0;
  sub_23B5B0EF0();
  sub_23B5D8B78();
  v11 = v36;
  v27 = v37;
  LOBYTE(v28) = 1;
  sub_23B5AF244();
  sub_23B5D8B78();
  v25 = v11;
  v12 = v36;
  v26 = v37;
  v50 = 2;
  sub_23B5B000C();
  sub_23B5D8B98();
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v51;
  v57 = v52;
  LOBYTE(v36) = 3;
  v24 = sub_23B5D8BA8();
  v48 = 4;
  sub_23B5B2580();
  sub_23B5D8B98();
  (*(v10 + 8))(v8, v61);
  v61 = v49;
  v14 = v26;
  v13 = v27;
  v23 = *(&v49 + 1);
  v15 = v25;
  *&v28 = v25;
  *(&v28 + 1) = v27;
  *&v29 = v12;
  *(&v29 + 1) = v26;
  *&v34 = v60;
  v32 = v58;
  v33 = v59;
  v30 = v56;
  v31 = v57;
  v16 = v24;
  BYTE8(v34) = v24;
  v35 = v49;
  v17 = v29;
  *a2 = v28;
  a2[1] = v17;
  v18 = v31;
  a2[2] = v30;
  a2[3] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v33;
  a2[4] = v32;
  a2[5] = v20;
  sub_23B5B25D4(&v28, &v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36 = v15;
  v37 = v13;
  v38 = v12;
  v39 = v14;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  v40 = v56;
  v41 = v57;
  v45 = v16;
  v46 = v61;
  v47 = v23;
  return sub_23B5B260C(&v36);
}

unint64_t sub_23B5B2580()
{
  result = qword_27E15C5F0;
  if (!qword_27E15C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5F0);
  }

  return result;
}

unint64_t sub_23B5B2640()
{
  result = qword_27E15C5F8;
  if (!qword_27E15C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5F8);
  }

  return result;
}

unint64_t sub_23B5B26DC()
{
  result = qword_27E15C610;
  if (!qword_27E15C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C610);
  }

  return result;
}

uint64_t sub_23B5B2774(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B5B2860()
{
  sub_23B5B28D4();
  if (v0 <= 0x3F)
  {
    sub_23B5B292C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B5B28D4()
{
  if (!qword_2814F8940[0])
  {
    v0 = sub_23B5D88E8();
    if (!v1)
    {
      atomic_store(v0, qword_2814F8940);
    }
  }
}

void sub_23B5B292C()
{
  if (!qword_2814F8A88)
  {
    v0 = sub_23B5D8488();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F8A88);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9WiFiAware14WAPairedDeviceV11PairingInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23B5B2A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23B5B2A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WADevicesAgentInterface.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WADevicesAgentInterface.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5B2C60()
{
  result = type metadata accessor for WADevicesAgentInterface.Devices(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_23B5B2D78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_23B5B2DD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAPathAgentInterface.AgentToPath.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WAPathAgentInterface.AgentToPath.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WAParameters(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WAParameters(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B5B3128(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B5B31B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B5B32A8(unsigned int *a1, int a2)
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

_WORD *sub_23B5B32F8(_WORD *result, int a2, int a3)
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

unint64_t sub_23B5B3388()
{
  result = qword_27E15C638;
  if (!qword_27E15C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C638);
  }

  return result;
}

unint64_t sub_23B5B33E0()
{
  result = qword_27E15C640;
  if (!qword_27E15C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C640);
  }

  return result;
}

unint64_t sub_23B5B3438()
{
  result = qword_27E15C648;
  if (!qword_27E15C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C648);
  }

  return result;
}

unint64_t sub_23B5B3490()
{
  result = qword_27E15C650;
  if (!qword_27E15C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C650);
  }

  return result;
}

unint64_t sub_23B5B34E8()
{
  result = qword_27E15C658;
  if (!qword_27E15C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C658);
  }

  return result;
}

unint64_t sub_23B5B3540()
{
  result = qword_27E15C660;
  if (!qword_27E15C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C660);
  }

  return result;
}

unint64_t sub_23B5B3598()
{
  result = qword_27E15C668;
  if (!qword_27E15C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C668);
  }

  return result;
}

unint64_t sub_23B5B35F0()
{
  result = qword_27E15C670;
  if (!qword_27E15C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C670);
  }

  return result;
}

unint64_t sub_23B5B3648()
{
  result = qword_27E15C678;
  if (!qword_27E15C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C678);
  }

  return result;
}

unint64_t sub_23B5B36A0()
{
  result = qword_27E15C680;
  if (!qword_27E15C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C680);
  }

  return result;
}

unint64_t sub_23B5B36F8()
{
  result = qword_27E15C688;
  if (!qword_27E15C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C688);
  }

  return result;
}

unint64_t sub_23B5B3750()
{
  result = qword_27E15C690;
  if (!qword_27E15C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C690);
  }

  return result;
}

unint64_t sub_23B5B37A8()
{
  result = qword_27E15C698;
  if (!qword_27E15C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C698);
  }

  return result;
}

unint64_t sub_23B5B3800()
{
  result = qword_27E15C6A0;
  if (!qword_27E15C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6A0);
  }

  return result;
}

unint64_t sub_23B5B3858()
{
  result = qword_27E15C6A8;
  if (!qword_27E15C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6A8);
  }

  return result;
}

unint64_t sub_23B5B38B0()
{
  result = qword_27E15C6B0;
  if (!qword_27E15C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6B0);
  }

  return result;
}

unint64_t sub_23B5B3908()
{
  result = qword_27E15C6B8;
  if (!qword_27E15C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6B8);
  }

  return result;
}

unint64_t sub_23B5B3960()
{
  result = qword_27E15C6C0;
  if (!qword_27E15C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6C0);
  }

  return result;
}

unint64_t sub_23B5B39B8()
{
  result = qword_27E15C6C8;
  if (!qword_27E15C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6C8);
  }

  return result;
}

unint64_t sub_23B5B3A10()
{
  result = qword_27E15C6D0;
  if (!qword_27E15C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6D0);
  }

  return result;
}

unint64_t sub_23B5B3A68()
{
  result = qword_27E15C6D8;
  if (!qword_27E15C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6D8);
  }

  return result;
}

unint64_t sub_23B5B3AC0()
{
  result = qword_27E15C6E0;
  if (!qword_27E15C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6E0);
  }

  return result;
}

unint64_t sub_23B5B3B18()
{
  result = qword_27E15C6E8;
  if (!qword_27E15C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6E8);
  }

  return result;
}

unint64_t sub_23B5B3B70()
{
  result = qword_27E15C6F0;
  if (!qword_27E15C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6F0);
  }

  return result;
}

unint64_t sub_23B5B3BC8()
{
  result = qword_27E15C6F8;
  if (!qword_27E15C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6F8);
  }

  return result;
}

unint64_t sub_23B5B3C20()
{
  result = qword_27E15C700;
  if (!qword_27E15C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C700);
  }

  return result;
}

unint64_t sub_23B5B3C78()
{
  result = qword_27E15C708;
  if (!qword_27E15C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C708);
  }

  return result;
}

unint64_t sub_23B5B3CD0()
{
  result = qword_27E15C710;
  if (!qword_27E15C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C710);
  }

  return result;
}

uint64_t sub_23B5B3D24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023B5DEF20 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DEF40 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69686374616DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_23B5D8C88();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23B5B3E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DEF60 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D726F66726570 && a2 == 0xEF65646F4D65636ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23B5B400C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023B5DEF80 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DEFA0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874617061746164 && a2 == 0xEA00000000004449 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4163614D72656570 && a2 == 0xEE00737365726464)
  {

    return 4;
  }

  else
  {
    v5 = sub_23B5D8C88();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23B5B4238(uint64_t a1)
{
  v2 = sub_23B5B42F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4274(uint64_t a1)
{
  v2 = sub_23B5B42F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B42F4()
{
  result = qword_27E15C720;
  if (!qword_27E15C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C720);
  }

  return result;
}

uint64_t sub_23B5B438C(uint64_t a1)
{
  v2 = sub_23B5B4448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B43C8(uint64_t a1)
{
  v2 = sub_23B5B4448();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4448()
{
  result = qword_27E15C730;
  if (!qword_27E15C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C730);
  }

  return result;
}

uint64_t sub_23B5B4508(uint64_t a1)
{
  v2 = sub_23B5B45C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4544(uint64_t a1)
{
  v2 = sub_23B5B45C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B45C4()
{
  result = qword_27E15C740;
  if (!qword_27E15C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C740);
  }

  return result;
}

uint64_t sub_23B5B465C(uint64_t a1)
{
  v2 = sub_23B5B4718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4698(uint64_t a1)
{
  v2 = sub_23B5B4718();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4718()
{
  result = qword_27E15C750;
  if (!qword_27E15C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C750);
  }

  return result;
}

uint64_t sub_23B5B47B0(uint64_t a1)
{
  v2 = sub_23B5B486C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B47EC(uint64_t a1)
{
  v2 = sub_23B5B486C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B486C()
{
  result = qword_27E15C760;
  if (!qword_27E15C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C760);
  }

  return result;
}

uint64_t sub_23B5B4904(uint64_t a1)
{
  v2 = sub_23B5B49C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4940(uint64_t a1)
{
  v2 = sub_23B5B49C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B49C0()
{
  result = qword_27E15C770;
  if (!qword_27E15C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C770);
  }

  return result;
}

uint64_t sub_23B5B4A58(uint64_t a1)
{
  v2 = sub_23B5B4B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4A94(uint64_t a1)
{
  v2 = sub_23B5B4B14();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4B14()
{
  result = qword_27E15C780;
  if (!qword_27E15C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C780);
  }

  return result;
}

uint64_t sub_23B5B4BAC(uint64_t a1)
{
  v2 = sub_23B5B4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4BE8(uint64_t a1)
{
  v2 = sub_23B5B4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4C68()
{
  result = qword_27E15C790;
  if (!qword_27E15C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C790);
  }

  return result;
}

uint64_t sub_23B5B4D00(uint64_t a1)
{
  v2 = sub_23B5B4DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4D3C(uint64_t a1)
{
  v2 = sub_23B5B4DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4DBC()
{
  result = qword_27E15C7A0;
  if (!qword_27E15C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7A0);
  }

  return result;
}

uint64_t sub_23B5B4E54(uint64_t a1)
{
  v2 = sub_23B5B4F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4E90(uint64_t a1)
{
  v2 = sub_23B5B4F10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4F10()
{
  result = qword_27E15C7B0;
  if (!qword_27E15C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7B0);
  }

  return result;
}

uint64_t sub_23B5B4FA8(uint64_t a1)
{
  v2 = sub_23B5B5064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4FE4(uint64_t a1)
{
  v2 = sub_23B5B5064();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B5064()
{
  result = qword_27E15C7C0;
  if (!qword_27E15C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7C0);
  }

  return result;
}

uint64_t sub_23B5B50FC(uint64_t a1)
{
  v2 = sub_23B5B51B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5138(uint64_t a1)
{
  v2 = sub_23B5B51B8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B51B8()
{
  result = qword_27E15C7D0;
  if (!qword_27E15C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7D0);
  }

  return result;
}

uint64_t sub_23B5B5250(uint64_t a1)
{
  v2 = sub_23B5B530C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B528C(uint64_t a1)
{
  v2 = sub_23B5B530C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B530C()
{
  result = qword_27E15C7E0;
  if (!qword_27E15C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7E0);
  }

  return result;
}

uint64_t sub_23B5B53A4(uint64_t a1)
{
  v2 = sub_23B5B5460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B53E0(uint64_t a1)
{
  v2 = sub_23B5B5460();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B5460()
{
  result = qword_27E15C7F0;
  if (!qword_27E15C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7F0);
  }

  return result;
}

uint64_t sub_23B5B54F8(uint64_t a1)
{
  v2 = sub_23B5B56D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5534(uint64_t a1)
{
  v2 = sub_23B5B56D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B55B4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23B5D8D78();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_23B5B56D4()
{
  result = qword_27E15C800;
  if (!qword_27E15C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C800);
  }

  return result;
}

uint64_t sub_23B5B576C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_23B5D8D78();
  return (*(v9 + 8))(v12, v8);
}

WiFiAware::WAError::ErrorCode_optional __swiftcall WAError.ErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 33;
  if ((rawValue + 11999) >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23B5B599C()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1 - 11999);
  return sub_23B5D8D58();
}

uint64_t sub_23B5B5A1C()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1 - 11999);
  return sub_23B5D8D58();
}

unint64_t sub_23B5B5A64(char a1)
{
  result = 0x726F727265;
  switch(a1)
  {
    case 1:
    case 14:
      result = 0xD000000000000014;
      break;
    case 2:
    case 4:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 9;
      goto LABEL_11;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6465726961506F6ELL;
      break;
    case 8:
      result = 0x6E49656369766564;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      v3 = 5;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B5B5C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5BB7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5B5C68(uint64_t a1)
{
  v2 = sub_23B5B73D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5CA4(uint64_t a1)
{
  v2 = sub_23B5B73D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5CE0(uint64_t a1)
{
  v2 = sub_23B5B7578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5D1C(uint64_t a1)
{
  v2 = sub_23B5B7578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5D58(uint64_t a1)
{
  v2 = sub_23B5B74D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5D94(uint64_t a1)
{
  v2 = sub_23B5B74D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5DD0(uint64_t a1)
{
  v2 = sub_23B5B7428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5E0C(uint64_t a1)
{
  v2 = sub_23B5B7428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5E48(uint64_t a1)
{
  v2 = sub_23B5B7818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5E84(uint64_t a1)
{
  v2 = sub_23B5B7818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5EC0(uint64_t a1)
{
  v2 = sub_23B5B7770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5EFC(uint64_t a1)
{
  v2 = sub_23B5B7770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5F38(uint64_t a1)
{
  v2 = sub_23B5B7C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5F74(uint64_t a1)
{
  v2 = sub_23B5B7C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5FB0(uint64_t a1)
{
  v2 = sub_23B5B7D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5FEC(uint64_t a1)
{
  v2 = sub_23B5B7D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6028(uint64_t a1)
{
  v2 = sub_23B5B78C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6064(uint64_t a1)
{
  v2 = sub_23B5B78C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B60A0(uint64_t a1)
{
  v2 = sub_23B5B7B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B60DC(uint64_t a1)
{
  v2 = sub_23B5B7B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6118(uint64_t a1)
{
  v2 = sub_23B5B76C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6154(uint64_t a1)
{
  v2 = sub_23B5B76C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6190(uint64_t a1)
{
  v2 = sub_23B5B7968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B61CC(uint64_t a1)
{
  v2 = sub_23B5B7968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6208(uint64_t a1)
{
  v2 = sub_23B5B7A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6244(uint64_t a1)
{
  v2 = sub_23B5B7A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6280(uint64_t a1)
{
  v2 = sub_23B5B7AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B62BC(uint64_t a1)
{
  v2 = sub_23B5B7AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B62F8(uint64_t a1)
{
  v2 = sub_23B5B7620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6334(uint64_t a1)
{
  v2 = sub_23B5B7620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6370(uint64_t a1)
{
  v2 = sub_23B5B7CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B63AC(uint64_t a1)
{
  v2 = sub_23B5B7CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAError.encode(to:)(void *a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C808, &qword_23B5DA6F8);
  v61 = *(v91 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v50 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C810, &qword_23B5DA700);
  v60 = *(v89 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v50 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C818, &qword_23B5DA708);
  v59 = *(v87 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v50 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C820, &qword_23B5DA710);
  v58 = *(v85 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v50 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C828, &qword_23B5DA718);
  v57 = *(v83 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v50 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C830, &qword_23B5DA720);
  v56 = *(v81 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v50 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C838, &qword_23B5DA728);
  v55 = *(v79 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v50 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C840, &qword_23B5DA730);
  v54 = *(v77 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v50 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C848, &qword_23B5DA738);
  v53 = *(v75 - 8);
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v50 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C850, &qword_23B5DA740);
  v52 = *(v73 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v50 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C858, &qword_23B5DA748);
  v51 = *(v71 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v50 - v24;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C860, &qword_23B5DA750);
  v68 = *(v69 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v50 - v26;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C868, &qword_23B5DA758);
  v65 = *(v66 - 8);
  v27 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v50 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C870, &qword_23B5DA760);
  v63 = *(v29 - 8);
  v30 = *(v63 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v50 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C878, &qword_23B5DA768);
  v62 = *(v33 - 8);
  v34 = *(v62 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v50 - v35;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C880, &qword_23B5DA770);
  v92 = *(v94 - 8);
  v37 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v39 = &v50 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B73D4();
  v93 = v39;
  sub_23B5D8D78();
  switch(v40)
  {
    case 1:
      v96 = 1;
      sub_23B5B7CB0();
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7D04();
      sub_23B5D8C28();
      (*(v63 + 8))(v32, v29);
      goto LABEL_18;
    case 2:
      v97 = 2;
      sub_23B5B7C08();
      v45 = v64;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7C5C();
      v48 = v66;
      sub_23B5D8C28();
      v49 = v102;
      goto LABEL_17;
    case 3:
      v98 = 3;
      sub_23B5B7B60();
      v45 = v67;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7BB4();
      v48 = v69;
      sub_23B5D8C28();
      v49 = &v103;
      goto LABEL_17;
    case 4:
      v99 = 4;
      sub_23B5B7AB8();
      v45 = v70;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7B0C();
      v48 = v71;
      sub_23B5D8C28();
      v49 = &v83;
      goto LABEL_17;
    case 5:
      v100 = 5;
      sub_23B5B7A10();
      v45 = v72;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7A64();
      v48 = v73;
      sub_23B5D8C28();
      v49 = &v84;
      goto LABEL_17;
    case 6:
      v101 = 6;
      sub_23B5B7968();
      v45 = v74;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B79BC();
      v48 = v75;
      sub_23B5D8C28();
      v49 = &v85;
      goto LABEL_17;
    case 7:
      v102[16] = 7;
      sub_23B5B78C0();
      v45 = v76;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7914();
      v48 = v77;
      sub_23B5D8C28();
      v49 = &v86;
      goto LABEL_17;
    case 8:
      v102[17] = 8;
      sub_23B5B7818();
      v45 = v78;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B786C();
      v48 = v79;
      sub_23B5D8C28();
      v49 = &v87;
      goto LABEL_17;
    case 9:
      v102[18] = 9;
      sub_23B5B7770();
      v45 = v80;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B77C4();
      v48 = v81;
      sub_23B5D8C28();
      v49 = &v88;
      goto LABEL_17;
    case 10:
      v102[19] = 10;
      sub_23B5B76C8();
      v45 = v82;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B771C();
      v48 = v83;
      sub_23B5D8C28();
      v49 = &v89;
      goto LABEL_17;
    case 11:
      v102[20] = 11;
      sub_23B5B7620();
      v45 = v84;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7674();
      v48 = v85;
      sub_23B5D8C28();
      v49 = &v90;
      goto LABEL_17;
    case 12:
      v102[21] = 12;
      sub_23B5B7578();
      v45 = v86;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B75CC();
      v48 = v87;
      sub_23B5D8C28();
      v49 = &v91;
      goto LABEL_17;
    case 13:
      v102[22] = 13;
      sub_23B5B74D0();
      v45 = v88;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B7524();
      v48 = v89;
      sub_23B5D8C28();
      v49 = &v92;
      goto LABEL_17;
    case 14:
      v102[23] = 14;
      sub_23B5B7428();
      v45 = v90;
      v47 = v93;
      v46 = v94;
      sub_23B5D8BD8();
      sub_23B5B747C();
      v48 = v91;
      sub_23B5D8C28();
      v49 = &v93;
LABEL_17:
      (*(*(v49 - 32) + 8))(v45, v48);
LABEL_18:
      result = (*(v92 + 8))(v47, v46);
      break;
    default:
      v95 = 0;
      sub_23B5B7D58();
      v43 = v93;
      v42 = v94;
      sub_23B5D8BD8();
      sub_23B5B7DAC();
      sub_23B5D8C28();
      (*(v62 + 8))(v36, v33);
      result = (*(v92 + 8))(v43, v42);
      break;
  }

  return result;
}

unint64_t sub_23B5B73D4()
{
  result = qword_27E15C888;
  if (!qword_27E15C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C888);
  }

  return result;
}

unint64_t sub_23B5B7428()
{
  result = qword_27E15C890;
  if (!qword_27E15C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C890);
  }

  return result;
}

unint64_t sub_23B5B747C()
{
  result = qword_27E15C898;
  if (!qword_27E15C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C898);
  }

  return result;
}

unint64_t sub_23B5B74D0()
{
  result = qword_27E15C8A0;
  if (!qword_27E15C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8A0);
  }

  return result;
}

unint64_t sub_23B5B7524()
{
  result = qword_27E15C8A8;
  if (!qword_27E15C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8A8);
  }

  return result;
}

unint64_t sub_23B5B7578()
{
  result = qword_27E15C8B0;
  if (!qword_27E15C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8B0);
  }

  return result;
}

unint64_t sub_23B5B75CC()
{
  result = qword_27E15C8B8;
  if (!qword_27E15C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8B8);
  }

  return result;
}

unint64_t sub_23B5B7620()
{
  result = qword_27E15C8C0;
  if (!qword_27E15C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8C0);
  }

  return result;
}

unint64_t sub_23B5B7674()
{
  result = qword_27E15C8C8;
  if (!qword_27E15C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8C8);
  }

  return result;
}

unint64_t sub_23B5B76C8()
{
  result = qword_27E15C8D0;
  if (!qword_27E15C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8D0);
  }

  return result;
}

unint64_t sub_23B5B771C()
{
  result = qword_27E15C8D8;
  if (!qword_27E15C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8D8);
  }

  return result;
}

unint64_t sub_23B5B7770()
{
  result = qword_27E15C8E0;
  if (!qword_27E15C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8E0);
  }

  return result;
}

unint64_t sub_23B5B77C4()
{
  result = qword_27E15C8E8;
  if (!qword_27E15C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8E8);
  }

  return result;
}

unint64_t sub_23B5B7818()
{
  result = qword_27E15C8F0;
  if (!qword_27E15C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8F0);
  }

  return result;
}

unint64_t sub_23B5B786C()
{
  result = qword_27E15C8F8;
  if (!qword_27E15C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8F8);
  }

  return result;
}

unint64_t sub_23B5B78C0()
{
  result = qword_27E15C900;
  if (!qword_27E15C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C900);
  }

  return result;
}

unint64_t sub_23B5B7914()
{
  result = qword_27E15C908;
  if (!qword_27E15C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C908);
  }

  return result;
}

unint64_t sub_23B5B7968()
{
  result = qword_27E15C910;
  if (!qword_27E15C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C910);
  }

  return result;
}

unint64_t sub_23B5B79BC()
{
  result = qword_27E15C918;
  if (!qword_27E15C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C918);
  }

  return result;
}

unint64_t sub_23B5B7A10()
{
  result = qword_27E15C920;
  if (!qword_27E15C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C920);
  }

  return result;
}

unint64_t sub_23B5B7A64()
{
  result = qword_27E15C928;
  if (!qword_27E15C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C928);
  }

  return result;
}

unint64_t sub_23B5B7AB8()
{
  result = qword_27E15C930;
  if (!qword_27E15C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C930);
  }

  return result;
}

unint64_t sub_23B5B7B0C()
{
  result = qword_27E15C938;
  if (!qword_27E15C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C938);
  }

  return result;
}

unint64_t sub_23B5B7B60()
{
  result = qword_27E15C940;
  if (!qword_27E15C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C940);
  }

  return result;
}

unint64_t sub_23B5B7BB4()
{
  result = qword_27E15C948;
  if (!qword_27E15C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C948);
  }

  return result;
}

unint64_t sub_23B5B7C08()
{
  result = qword_27E15C950;
  if (!qword_27E15C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C950);
  }

  return result;
}

unint64_t sub_23B5B7C5C()
{
  result = qword_27E15C958;
  if (!qword_27E15C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C958);
  }

  return result;
}

unint64_t sub_23B5B7CB0()
{
  result = qword_27E15C960;
  if (!qword_27E15C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C960);
  }

  return result;
}

unint64_t sub_23B5B7D04()
{
  result = qword_27E15C968;
  if (!qword_27E15C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C968);
  }

  return result;
}

unint64_t sub_23B5B7D58()
{
  result = qword_27E15C970;
  if (!qword_27E15C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C970);
  }

  return result;
}

unint64_t sub_23B5B7DAC()
{
  result = qword_27E15C978;
  if (!qword_27E15C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C978);
  }

  return result;
}

uint64_t WAError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v124 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C980, &qword_23B5DA778);
  v115 = *(v112 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v112);
  v129 = &v83 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C988, &qword_23B5DA780);
  v113 = *(v114 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v128 = &v83 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C990, &qword_23B5DA788);
  v110 = *(v111 - 8);
  v7 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v123 = &v83 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C998, &qword_23B5DA790);
  v108 = *(v109 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v122 = &v83 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9A0, &qword_23B5DA798);
  v106 = *(v107 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v121 = &v83 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9A8, &qword_23B5DA7A0);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v120 = &v83 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9B0, &qword_23B5DA7A8);
  v102 = *(v103 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v119 = &v83 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9B8, &qword_23B5DA7B0);
  v100 = *(v101 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v127 = &v83 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9C0, &qword_23B5DA7B8);
  v99 = *(v97 - 8);
  v19 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v118 = &v83 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9C8, &qword_23B5DA7C0);
  v98 = *(v94 - 8);
  v21 = *(v98 + 64);
  MEMORY[0x28223BE20](v94);
  v126 = &v83 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9D0, &qword_23B5DA7C8);
  v95 = *(v96 - 8);
  v23 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v125 = &v83 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9D8, &qword_23B5DA7D0);
  v92 = *(v93 - 8);
  v25 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v117 = &v83 - v26;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9E0, &qword_23B5DA7D8);
  v90 = *(v91 - 8);
  v27 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v116 = &v83 - v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9E8, &qword_23B5DA7E0);
  v88 = *(v89 - 8);
  v29 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v31 = &v83 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9F0, &qword_23B5DA7E8);
  v87 = *(v32 - 8);
  v33 = *(v87 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v83 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9F8, &unk_23B5DA7F0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v83 - v39;
  v41 = a1[3];
  v42 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_23B5B73D4();
  v43 = v130;
  sub_23B5D8D68();
  if (v43)
  {
LABEL_13:
    v66 = v131;
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  v84 = v35;
  v83 = v32;
  v85 = v31;
  v45 = v125;
  v44 = v126;
  v46 = v127;
  v47 = v128;
  v86 = 0;
  v48 = v129;
  v130 = v37;
  v49 = sub_23B5D8BC8();
  v50 = (2 * *(v49 + 16)) | 1;
  v132[0] = v49;
  v132[1] = v49 + 32;
  v133 = 0;
  v134 = v50;
  v51 = sub_23B5AE680();
  if (v133 != v134 >> 1)
  {
LABEL_6:
    v57 = sub_23B5D8A38();
    swift_allocError();
    v59 = v58;
    v60 = v40;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630) + 48);
    *v59 = &type metadata for WAError;
    sub_23B5D8B48();
    sub_23B5D8A28();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    (*(v130 + 8))(v60, v36);
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v52 = v51;
  switch(v51)
  {
    case 0:
      v137 = 0;
      sub_23B5B7D58();
      v53 = v84;
      v54 = v86;
      sub_23B5D8B38();
      if (v54)
      {
        goto LABEL_11;
      }

      sub_23B5B95D0();
      v55 = v83;
      sub_23B5D8B98();
      (*(v87 + 8))(v53, v55);
      (*(v130 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v56 = v131;
      goto LABEL_22;
    case 1:
      v137 = 1;
      sub_23B5B7CB0();
      v46 = v85;
      v75 = v86;
      sub_23B5D8B38();
      if (v75)
      {
        goto LABEL_11;
      }

      sub_23B5B957C();
      v63 = v89;
      sub_23B5D8B98();
      v65 = &v120;
      goto LABEL_19;
    case 2:
      v137 = 2;
      sub_23B5B7C08();
      v46 = v116;
      v72 = v86;
      sub_23B5D8B38();
      if (v72)
      {
        goto LABEL_11;
      }

      sub_23B5B9528();
      v63 = v91;
      sub_23B5D8B98();
      v65 = &v122;
      goto LABEL_19;
    case 3:
      v137 = 3;
      sub_23B5B7B60();
      v46 = v117;
      v73 = v86;
      sub_23B5D8B38();
      if (v73)
      {
        goto LABEL_11;
      }

      sub_23B5B94D4();
      v63 = v93;
      sub_23B5D8B98();
      v65 = &v124;
      goto LABEL_19;
    case 4:
      v137 = 4;
      sub_23B5B7AB8();
      v68 = v86;
      sub_23B5D8B38();
      if (v68)
      {
        goto LABEL_11;
      }

      sub_23B5B9480();
      v69 = v96;
      sub_23B5D8B98();
      (*(v95 + 8))(v45, v69);
      goto LABEL_21;
    case 5:
      v137 = 5;
      sub_23B5B7A10();
      v46 = v44;
      v76 = v86;
      sub_23B5D8B38();
      if (v76)
      {
        goto LABEL_11;
      }

      sub_23B5B942C();
      v63 = v94;
      sub_23B5D8B98();
      v65 = &v130;
      goto LABEL_19;
    case 6:
      v137 = 6;
      sub_23B5B7968();
      v46 = v118;
      v79 = v86;
      sub_23B5D8B38();
      if (v79)
      {
        goto LABEL_11;
      }

      sub_23B5B93D8();
      v63 = v97;
      sub_23B5D8B98();
      v65 = &v131;
      goto LABEL_19;
    case 7:
      v137 = 7;
      sub_23B5B78C0();
      v74 = v86;
      sub_23B5D8B38();
      if (v74)
      {
        goto LABEL_11;
      }

      sub_23B5B9384();
      v63 = v101;
      sub_23B5D8B98();
      v65 = v132;
      goto LABEL_19;
    case 8:
      v137 = 8;
      sub_23B5B7818();
      v46 = v119;
      v81 = v86;
      sub_23B5D8B38();
      if (v81)
      {
        goto LABEL_11;
      }

      sub_23B5B9330();
      v63 = v103;
      sub_23B5D8B98();
      v65 = &v133;
      goto LABEL_19;
    case 9:
      v137 = 9;
      sub_23B5B7770();
      v46 = v120;
      v71 = v86;
      sub_23B5D8B38();
      if (v71)
      {
        goto LABEL_11;
      }

      sub_23B5B92DC();
      v63 = v105;
      sub_23B5D8B98();
      v65 = &v135;
      goto LABEL_19;
    case 10:
      v137 = 10;
      sub_23B5B76C8();
      v46 = v121;
      v80 = v86;
      sub_23B5D8B38();
      if (v80)
      {
        goto LABEL_11;
      }

      sub_23B5B9288();
      v63 = v107;
      sub_23B5D8B98();
      v65 = &v136;
      goto LABEL_19;
    case 11:
      v137 = 11;
      sub_23B5B7620();
      v46 = v122;
      v64 = v86;
      sub_23B5D8B38();
      if (v64)
      {
        goto LABEL_11;
      }

      sub_23B5B9234();
      v63 = v109;
      sub_23B5D8B98();
      v65 = &v138;
      goto LABEL_19;
    case 12:
      v137 = 12;
      sub_23B5B7578();
      v46 = v123;
      v70 = v86;
      sub_23B5D8B38();
      if (v70)
      {
        goto LABEL_11;
      }

      sub_23B5B91E0();
      v63 = v111;
      sub_23B5D8B98();
      v65 = &v139;
LABEL_19:
      v82 = *(v65 - 32);
      goto LABEL_20;
    case 13:
      v137 = 13;
      sub_23B5B74D0();
      v77 = v86;
      sub_23B5D8B38();
      if (v77)
      {
        goto LABEL_11;
      }

      sub_23B5B918C();
      v78 = v114;
      sub_23B5D8B98();
      (*(v113 + 8))(v47, v78);
      goto LABEL_21;
    case 14:
      v137 = 14;
      sub_23B5B7428();
      v46 = v48;
      v62 = v86;
      sub_23B5D8B38();
      if (v62)
      {
LABEL_11:
        (*(v130 + 8))(v40, v36);
        goto LABEL_12;
      }

      sub_23B5B9138();
      v63 = v112;
      sub_23B5D8B98();
      v82 = v115;
LABEL_20:
      (*(v82 + 8))(v46, v63);
LABEL_21:
      v56 = v131;
      (*(v130 + 8))(v40, v36);
      swift_unknownObjectRelease();
LABEL_22:
      *v124 = v52;
      v66 = v56;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

unint64_t sub_23B5B9138()
{
  result = qword_27E15CA00;
  if (!qword_27E15CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA00);
  }

  return result;
}

unint64_t sub_23B5B918C()
{
  result = qword_27E15CA08;
  if (!qword_27E15CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA08);
  }

  return result;
}

unint64_t sub_23B5B91E0()
{
  result = qword_27E15CA10;
  if (!qword_27E15CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA10);
  }

  return result;
}

unint64_t sub_23B5B9234()
{
  result = qword_27E15CA18;
  if (!qword_27E15CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA18);
  }

  return result;
}

unint64_t sub_23B5B9288()
{
  result = qword_27E15CA20;
  if (!qword_27E15CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA20);
  }

  return result;
}

unint64_t sub_23B5B92DC()
{
  result = qword_27E15CA28;
  if (!qword_27E15CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA28);
  }

  return result;
}

unint64_t sub_23B5B9330()
{
  result = qword_27E15CA30;
  if (!qword_27E15CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA30);
  }

  return result;
}

unint64_t sub_23B5B9384()
{
  result = qword_27E15CA38;
  if (!qword_27E15CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA38);
  }

  return result;
}

unint64_t sub_23B5B93D8()
{
  result = qword_27E15CA40;
  if (!qword_27E15CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA40);
  }

  return result;
}

unint64_t sub_23B5B942C()
{
  result = qword_27E15CA48;
  if (!qword_27E15CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA48);
  }

  return result;
}

unint64_t sub_23B5B9480()
{
  result = qword_27E15CA50;
  if (!qword_27E15CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA50);
  }

  return result;
}

unint64_t sub_23B5B94D4()
{
  result = qword_27E15CA58;
  if (!qword_27E15CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA58);
  }

  return result;
}

unint64_t sub_23B5B9528()
{
  result = qword_27E15CA60;
  if (!qword_27E15CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA60);
  }

  return result;
}

unint64_t sub_23B5B957C()
{
  result = qword_27E15CA68;
  if (!qword_27E15CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA68);
  }

  return result;
}

unint64_t sub_23B5B95D0()
{
  result = qword_27E15CA70;
  if (!qword_27E15CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA70);
  }

  return result;
}

unint64_t sub_23B5B9628()
{
  result = qword_27E15CA78;
  if (!qword_27E15CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA78);
  }

  return result;
}

unint64_t sub_23B5B9680()
{
  result = qword_27E15CA80;
  if (!qword_27E15CA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CA88, &qword_23B5DADA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA80);
  }

  return result;
}

unint64_t sub_23B5B96F8()
{
  result = qword_27E15CA90;
  if (!qword_27E15CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xE)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for WAError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B5B99E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B5B9A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B5B9D14()
{
  result = qword_27E15CA98;
  if (!qword_27E15CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA98);
  }

  return result;
}

unint64_t sub_23B5B9D6C()
{
  result = qword_27E15CAA0;
  if (!qword_27E15CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAA0);
  }

  return result;
}

unint64_t sub_23B5B9DC4()
{
  result = qword_27E15CAA8;
  if (!qword_27E15CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAA8);
  }

  return result;
}

unint64_t sub_23B5B9E1C()
{
  result = qword_27E15CAB0;
  if (!qword_27E15CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAB0);
  }

  return result;
}

unint64_t sub_23B5B9E74()
{
  result = qword_27E15CAB8;
  if (!qword_27E15CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAB8);
  }

  return result;
}

unint64_t sub_23B5B9ECC()
{
  result = qword_27E15CAC0;
  if (!qword_27E15CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAC0);
  }

  return result;
}

unint64_t sub_23B5B9F24()
{
  result = qword_27E15CAC8;
  if (!qword_27E15CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAC8);
  }

  return result;
}

unint64_t sub_23B5B9F7C()
{
  result = qword_27E15CAD0;
  if (!qword_27E15CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAD0);
  }

  return result;
}

unint64_t sub_23B5B9FD4()
{
  result = qword_27E15CAD8;
  if (!qword_27E15CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAD8);
  }

  return result;
}

unint64_t sub_23B5BA02C()
{
  result = qword_27E15CAE0;
  if (!qword_27E15CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAE0);
  }

  return result;
}

unint64_t sub_23B5BA084()
{
  result = qword_27E15CAE8;
  if (!qword_27E15CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAE8);
  }

  return result;
}

unint64_t sub_23B5BA0DC()
{
  result = qword_27E15CAF0;
  if (!qword_27E15CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAF0);
  }

  return result;
}

unint64_t sub_23B5BA134()
{
  result = qword_27E15CAF8;
  if (!qword_27E15CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAF8);
  }

  return result;
}

unint64_t sub_23B5BA18C()
{
  result = qword_27E15CB00;
  if (!qword_27E15CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB00);
  }

  return result;
}

unint64_t sub_23B5BA1E4()
{
  result = qword_27E15CB08;
  if (!qword_27E15CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB08);
  }

  return result;
}

unint64_t sub_23B5BA23C()
{
  result = qword_27E15CB10;
  if (!qword_27E15CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB10);
  }

  return result;
}

unint64_t sub_23B5BA294()
{
  result = qword_27E15CB18;
  if (!qword_27E15CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB18);
  }

  return result;
}

unint64_t sub_23B5BA2EC()
{
  result = qword_27E15CB20;
  if (!qword_27E15CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB20);
  }

  return result;
}

unint64_t sub_23B5BA344()
{
  result = qword_27E15CB28;
  if (!qword_27E15CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB28);
  }

  return result;
}

unint64_t sub_23B5BA39C()
{
  result = qword_27E15CB30;
  if (!qword_27E15CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB30);
  }

  return result;
}

unint64_t sub_23B5BA3F4()
{
  result = qword_27E15CB38;
  if (!qword_27E15CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB38);
  }

  return result;
}

unint64_t sub_23B5BA44C()
{
  result = qword_27E15CB40;
  if (!qword_27E15CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB40);
  }

  return result;
}

unint64_t sub_23B5BA4A4()
{
  result = qword_27E15CB48;
  if (!qword_27E15CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB48);
  }

  return result;
}

unint64_t sub_23B5BA4FC()
{
  result = qword_27E15CB50;
  if (!qword_27E15CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB50);
  }

  return result;
}

unint64_t sub_23B5BA554()
{
  result = qword_27E15CB58;
  if (!qword_27E15CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB58);
  }

  return result;
}

unint64_t sub_23B5BA5AC()
{
  result = qword_27E15CB60;
  if (!qword_27E15CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB60);
  }

  return result;
}

unint64_t sub_23B5BA604()
{
  result = qword_27E15CB68;
  if (!qword_27E15CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB68);
  }

  return result;
}

unint64_t sub_23B5BA65C()
{
  result = qword_27E15CB70;
  if (!qword_27E15CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB70);
  }

  return result;
}

unint64_t sub_23B5BA6B4()
{
  result = qword_27E15CB78;
  if (!qword_27E15CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB78);
  }

  return result;
}

unint64_t sub_23B5BA70C()
{
  result = qword_27E15CB80;
  if (!qword_27E15CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB80);
  }

  return result;
}

unint64_t sub_23B5BA764()
{
  result = qword_27E15CB88;
  if (!qword_27E15CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB88);
  }

  return result;
}

unint64_t sub_23B5BA7BC()
{
  result = qword_27E15CB90;
  if (!qword_27E15CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB90);
  }

  return result;
}

unint64_t sub_23B5BA814()
{
  result = qword_27E15CB98;
  if (!qword_27E15CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB98);
  }

  return result;
}

unint64_t sub_23B5BA86C()
{
  result = qword_27E15CBA0;
  if (!qword_27E15CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBA0);
  }

  return result;
}

unint64_t sub_23B5BA8C4()
{
  result = qword_27E15CBA8;
  if (!qword_27E15CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBA8);
  }

  return result;
}

unint64_t sub_23B5BA91C()
{
  result = qword_27E15CBB0;
  if (!qword_27E15CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBB0);
  }

  return result;
}

unint64_t sub_23B5BA974()
{
  result = qword_27E15CBB8;
  if (!qword_27E15CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBB8);
  }

  return result;
}

unint64_t sub_23B5BA9CC()
{
  result = qword_27E15CBC0;
  if (!qword_27E15CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBC0);
  }

  return result;
}

unint64_t sub_23B5BAA24()
{
  result = qword_27E15CBC8;
  if (!qword_27E15CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBC8);
  }

  return result;
}

unint64_t sub_23B5BAA7C()
{
  result = qword_27E15CBD0;
  if (!qword_27E15CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBD0);
  }

  return result;
}

unint64_t sub_23B5BAAD4()
{
  result = qword_27E15CBD8;
  if (!qword_27E15CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBD8);
  }

  return result;
}

unint64_t sub_23B5BAB2C()
{
  result = qword_27E15CBE0;
  if (!qword_27E15CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBE0);
  }

  return result;
}

unint64_t sub_23B5BAB84()
{
  result = qword_27E15CBE8;
  if (!qword_27E15CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBE8);
  }

  return result;
}

unint64_t sub_23B5BABDC()
{
  result = qword_27E15CBF0;
  if (!qword_27E15CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBF0);
  }

  return result;
}

unint64_t sub_23B5BAC34()
{
  result = qword_27E15CBF8;
  if (!qword_27E15CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBF8);
  }

  return result;
}

unint64_t sub_23B5BAC8C()
{
  result = qword_27E15CC00;
  if (!qword_27E15CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC00);
  }

  return result;
}

unint64_t sub_23B5BACE4()
{
  result = qword_27E15CC08;
  if (!qword_27E15CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC08);
  }

  return result;
}

unint64_t sub_23B5BAD3C()
{
  result = qword_27E15CC10;
  if (!qword_27E15CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC10);
  }

  return result;
}

unint64_t sub_23B5BAD94()
{
  result = qword_27E15CC18;
  if (!qword_27E15CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC18);
  }

  return result;
}

unint64_t sub_23B5BADEC()
{
  result = qword_27E15CC20;
  if (!qword_27E15CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC20);
  }

  return result;
}

unint64_t sub_23B5BAE44()
{
  result = qword_27E15CC28;
  if (!qword_27E15CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC28);
  }

  return result;
}

unint64_t sub_23B5BAE9C()
{
  result = qword_27E15CC30;
  if (!qword_27E15CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC30);
  }

  return result;
}

unint64_t sub_23B5BAEF4()
{
  result = qword_27E15CC38;
  if (!qword_27E15CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC38);
  }

  return result;
}

unint64_t sub_23B5BAF4C()
{
  result = qword_27E15CC40;
  if (!qword_27E15CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC40);
  }

  return result;
}

unint64_t sub_23B5BAFA4()
{
  result = qword_27E15CC48;
  if (!qword_27E15CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC48);
  }

  return result;
}

unint64_t sub_23B5BAFFC()
{
  result = qword_27E15CC50;
  if (!qword_27E15CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC50);
  }

  return result;
}

unint64_t sub_23B5BB054()
{
  result = qword_27E15CC58;
  if (!qword_27E15CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC58);
  }

  return result;
}

unint64_t sub_23B5BB0AC()
{
  result = qword_27E15CC60;
  if (!qword_27E15CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC60);
  }

  return result;
}

unint64_t sub_23B5BB104()
{
  result = qword_27E15CC68;
  if (!qword_27E15CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC68);
  }

  return result;
}

unint64_t sub_23B5BB15C()
{
  result = qword_27E15CC70;
  if (!qword_27E15CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC70);
  }

  return result;
}

unint64_t sub_23B5BB1B4()
{
  result = qword_27E15CC78;
  if (!qword_27E15CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC78);
  }

  return result;
}

unint64_t sub_23B5BB20C()
{
  result = qword_27E15CC80;
  if (!qword_27E15CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC80);
  }

  return result;
}

unint64_t sub_23B5BB264()
{
  result = qword_27E15CC88;
  if (!qword_27E15CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC88);
  }

  return result;
}

unint64_t sub_23B5BB2BC()
{
  result = qword_27E15CC90;
  if (!qword_27E15CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC90);
  }

  return result;
}

unint64_t sub_23B5BB314()
{
  result = qword_27E15CC98;
  if (!qword_27E15CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC98);
  }

  return result;
}

unint64_t sub_23B5BB36C()
{
  result = qword_27E15CCA0;
  if (!qword_27E15CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCA0);
  }

  return result;
}

unint64_t sub_23B5BB3C4()
{
  result = qword_27E15CCA8;
  if (!qword_27E15CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCA8);
  }

  return result;
}

unint64_t sub_23B5BB41C()
{
  result = qword_27E15CCB0;
  if (!qword_27E15CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCB0);
  }

  return result;
}

unint64_t sub_23B5BB474()
{
  result = qword_27E15CCB8;
  if (!qword_27E15CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCB8);
  }

  return result;
}

unint64_t sub_23B5BB4CC()
{
  result = qword_27E15CCC0;
  if (!qword_27E15CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCC0);
  }

  return result;
}

unint64_t sub_23B5BB524()
{
  result = qword_27E15CCC8;
  if (!qword_27E15CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCC8);
  }

  return result;
}

unint64_t sub_23B5BB57C()
{
  result = qword_27E15CCD0;
  if (!qword_27E15CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCD0);
  }

  return result;
}

unint64_t sub_23B5BB5D4()
{
  result = qword_27E15CCD8;
  if (!qword_27E15CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCD8);
  }

  return result;
}

unint64_t sub_23B5BB62C()
{
  result = qword_27E15CCE0;
  if (!qword_27E15CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCE0);
  }

  return result;
}

unint64_t sub_23B5BB684()
{
  result = qword_27E15CCE8;
  if (!qword_27E15CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCE8);
  }

  return result;
}

unint64_t sub_23B5BB6DC()
{
  result = qword_27E15CCF0;
  if (!qword_27E15CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCF0);
  }

  return result;
}

unint64_t sub_23B5BB734()
{
  result = qword_27E15CCF8;
  if (!qword_27E15CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCF8);
  }

  return result;
}

unint64_t sub_23B5BB78C()
{
  result = qword_27E15CD00;
  if (!qword_27E15CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD00);
  }

  return result;
}

uint64_t sub_23B5BB7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DEFC0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DEFE0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF000 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DF020 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023B5DF040 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023B5DF060 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465726961506F6ELL && a2 == 0xEF73656369766544 || (sub_23B5D8C88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xED000064696C6176 || (sub_23B5D8C88() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023B5DF080 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF0A0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DF0C0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF0E0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023B5DF100 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DF120 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

unint64_t sub_23B5BBC90()
{
  result = qword_27E15CD08;
  if (!qword_27E15CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD08);
  }

  return result;
}

uint64_t sub_23B5BBE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7261774169666977 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5BBF08(uint64_t a1)
{
  v2 = sub_23B5BC1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BBF44(uint64_t a1)
{
  v2 = sub_23B5BC1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5BBF80(uint64_t a1)
{
  v2 = sub_23B5BC230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BBFBC(uint64_t a1)
{
  v2 = sub_23B5BC230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WACapabilities.Feature.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD10, &qword_23B5DCD30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD18, &qword_23B5DCD38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D78();
  sub_23B5BC230();
  sub_23B5D8BD8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_23B5BC1DC()
{
  result = qword_27E15CD20;
  if (!qword_27E15CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD20);
  }

  return result;
}

unint64_t sub_23B5BC230()
{
  result = qword_27E15CD28;
  if (!qword_27E15CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD28);
  }

  return result;
}

uint64_t WACapabilities.Feature.hashValue.getter()
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

uint64_t WACapabilities.Feature.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD30, &qword_23B5DCD40);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD38, &unk_23B5DCD48);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D68();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_23B5D8BC8();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_23B5AE6B4() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_23B5D8A38();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630) + 48);
    *v19 = &type metadata for WACapabilities.Feature;
    sub_23B5D8B48();
    sub_23B5D8A28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  sub_23B5BC230();
  sub_23B5D8B38();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_23B5BC664(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD10, &qword_23B5DCD30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD18, &qword_23B5DCD38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D78();
  sub_23B5BC230();
  sub_23B5D8BD8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t static WACapabilities.supportedFeatures.getter()
{
  if (qword_27E15C318 != -1)
  {
    swift_once();
  }

  if (!qword_27E15CD98)
  {
    return MEMORY[0x277D84FA0];
  }

  v0 = [qword_27E15CD98 supportedFeatures];
  sub_23B5BCA08();
  sub_23B5BCA54();
  v1 = sub_23B5D88C8();

  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_23B5BCAAC(v2, v1);

  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  return sub_23B5BCBB4(&unk_284E1DCC8);
}

uint64_t sub_23B5BC96C(SEL *a1)
{
  if (qword_27E15C318 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_27E15CD98)
  {
    result = [qword_27E15CD98 *a1];
    if (result > 11)
    {
      v2 = result / 3uLL;
      goto LABEL_8;
    }
  }

  else
  {
    result = 0;
  }

  v2 = 4;
LABEL_8:
  if (v2 < result)
  {
    return v2;
  }

  return result;
}

unint64_t sub_23B5BCA08()
{
  result = qword_27E15CD40;
  if (!qword_27E15CD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15CD40);
  }

  return result;
}

unint64_t sub_23B5BCA54()
{
  result = qword_27E15CD48;
  if (!qword_27E15CD48)
  {
    sub_23B5BCA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD48);
  }

  return result;
}

uint64_t sub_23B5BCAAC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23B5D8988();
  }

  else if (*(a2 + 16) && (sub_23B5BCA08(), v5 = *(a2 + 40), v6 = sub_23B5D8918(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_23B5D8928();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_23B5BCBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD90, &unk_23B5DD050);
    v2 = sub_23B5D89C8();
    v3 = v2 + 56;
    while (1)
    {
      v4 = *(v2 + 40);
      sub_23B5D8D18();
      MEMORY[0x23EE9FD40](0);
      result = sub_23B5D8D58();
      v6 = result & ~(-1 << *(v2 + 32));
      v7 = v6 >> 6;
      v8 = *(v3 + 8 * (v6 >> 6));
      v9 = 1 << v6;
      if ((v9 & v8) == 0)
      {
        *(v3 + 8 * v7) = v9 | v8;
        v10 = *(v2 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v12;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_23B5BCC9C()
{
  result = qword_27E15CD50;
  if (!qword_27E15CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD50);
  }

  return result;
}

unint64_t sub_23B5BCCF4()
{
  result = qword_27E15CD58;
  if (!qword_27E15CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CD60, &qword_23B5DCDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD58);
  }

  return result;
}

unint64_t sub_23B5BCD9C()
{
  result = qword_27E15CD68;
  if (!qword_27E15CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD68);
  }

  return result;
}

unint64_t sub_23B5BCDF4()
{
  result = qword_27E15CD70;
  if (!qword_27E15CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD70);
  }

  return result;
}

unint64_t sub_23B5BCE4C()
{
  result = qword_27E15CD78;
  if (!qword_27E15CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD78);
  }

  return result;
}

unint64_t sub_23B5BCEA4()
{
  result = qword_27E15CD80;
  if (!qword_27E15CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD80);
  }

  return result;
}

unint64_t sub_23B5BCEFC()
{
  result = qword_27E15CD88;
  if (!qword_27E15CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD88);
  }

  return result;
}

id sub_23B5BCF50()
{
  result = [objc_opt_self() currentDeviceCapabilities];
  qword_27E15CD98 = result;
  return result;
}

uint64_t static WAPairedDevice.allDevices.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static WAPairedDevice.allDevices(matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t WAPairedDevice.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WAPairedDevice.pairingInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_23B5BD168(v2, v3);
}

uint64_t sub_23B5BD168(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 WAPairedDevice.init(id:name:pairingInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v5 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  result = *(a4 + 32);
  *(a5 + 56) = result;
  return result;
}

unint64_t WAPairedDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];

  sub_23B5D8A08();

  v10 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v10);

  MEMORY[0x23EE9F750](0x203A656D616E202CLL, 0xE800000000000000);
  if (v4)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  if (!v4)
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x23EE9F750](v11, v4);

  MEMORY[0x23EE9F750](0x6E6972696170202CLL, 0xEF203A6F666E4967);
  sub_23B5BD168(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDA0, "84");
  v12 = sub_23B5D86C8();
  MEMORY[0x23EE9F750](v12);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t WAPairedDevice.PairingInfo.pairingName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.vendorName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.modelName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD000000000000028, 0x800000023B5DF190);
  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](0x726F646E6576202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x23EE9F750](v3, v4);
  MEMORY[0x23EE9F750](0x4E6C65646F6D202CLL, 0xED0000203A656D61);
  MEMORY[0x23EE9F750](v5, v6);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0;
}

void __swiftcall WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)(WiFiAware::WAPairedDevice::PairingInfo *__return_ptr retstr, Swift::String pairingName, Swift::String vendorName, Swift::String modelName)
{
  retstr->vendorName = vendorName;
  retstr->modelName = modelName;
  retstr->pairingName = pairingName;
}

uint64_t static WAPairedDevice.PairingInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23B5D8C88() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_23B5D8C88() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_23B5D8C88();
}

uint64_t sub_23B5BD628()
{
  v1 = 0x614E726F646E6576;
  if (*v0 != 1)
  {
    v1 = 0x6D614E6C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E676E6972696170;
  }
}

uint64_t sub_23B5BD694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5C1F34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5BD6BC(uint64_t a1)
{
  v2 = sub_23B5BD8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BD6F8(uint64_t a1)
{
  v2 = sub_23B5BD8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPairedDevice.PairingInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDA8, "84");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BD8F8();
  sub_23B5D8D78();
  v18 = 0;
  v13 = v15[5];
  sub_23B5D8C18();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23B5D8C18();
  v16 = 2;
  sub_23B5D8C18();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23B5BD8F8()
{
  result = qword_27E15CDB0;
  if (!qword_27E15CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CDB0);
  }

  return result;
}

uint64_t WAPairedDevice.PairingInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAPairedDevice.PairingInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.PairingInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDB8, &qword_23B5DD090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BD8F8();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_23B5D8B88();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23B5D8B88();
  v23 = v14;
  v25 = 2;
  v15 = sub_23B5D8B88();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B5BDCB4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23B5D8C88() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_23B5D8C88() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_23B5D8C88();
}

uint64_t sub_23B5BDDAC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5BDE30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t sub_23B5BDE9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.DevicesSequence.current()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for WAPairedDevice.DevicesSequence(0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BE018, 0, 0);
}

uint64_t sub_23B5BE018()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_23B5C059C(v0[2], v1);
  sub_23B5C32A0(v1, v2, &qword_27E15CDC0, &qword_23B5DD0A0);
  v3 = type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[5] = sub_23B5BEAB0(v2);
  sub_23B5C0620(v1);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23B5BE104;

  return sub_23B5BE320();
}

uint64_t sub_23B5BE104(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  v9 = *(v4 + 24);

  v11 = *(v7 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t WAPairedDevice.DevicesSequence.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  sub_23B5C32A0(v0, &v9 - v3, &qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_23B5BEAB0(v4);
}

uint64_t sub_23B5BE320()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC8, &qword_23B5DD0B0);
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BE48C, 0, 0);
}

uint64_t sub_23B5BE48C()
{
  v1 = v0[12];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  sub_23B5D8898();
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_23B5BE570;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v6, v0 + 3);
}

uint64_t sub_23B5BE570()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23B5BEA14;
  }

  else
  {
    v3 = sub_23B5BE684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23B5BE684()
{
  v1 = v0[2];
  if (!v1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_17;
  }

  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_23B5C32A0(v0[5] + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, v4, &qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = v0[6];
  if (v5 == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_23B5C3308(v6, &qword_27E15CDC0, &qword_23B5DD0A0);
LABEL_17:
    v34 = v0[12];
    v35 = v0[9];
    v36 = v0[6];

    v37 = v0[1];

    return v37(v1);
  }

  v7 = v0[14];
  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDE8, &qword_23B5DD0C0);
  sub_23B5C067C();
  v8 = sub_23B5D87B8();
  if (!v7)
  {
    v20 = *(v8 + 16);
    if (v20)
    {
      v39 = MEMORY[0x277D84F90];
      v21 = v8;
      sub_23B5C14F8(0, v20, 0);
      v22 = v21;
      v23 = v39;
      v24 = *(v39 + 16);
      v25 = 32;
      do
      {
        v26 = *(v22 + v25);
        v27 = *(v39 + 24);
        if (v24 >= v27 >> 1)
        {
          sub_23B5C14F8((v27 > 1), v24 + 1, 1);
          v22 = v21;
        }

        *(v39 + 16) = v24 + 1;
        *(v39 + 8 * v24 + 32) = v26;
        v25 += 72;
        ++v24;
        --v20;
      }

      while (v20);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v28 = v0[11];
    v38 = v0[12];
    v30 = v0[9];
    v29 = v0[10];
    v32 = v0[7];
    v31 = v0[8];
    *(swift_task_alloc() + 16) = v23;
    v33 = sub_23B5C221C(v1, sub_23B5C1518);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v38, v29);
    v1 = v33;
    goto LABEL_17;
  }

  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_23B5BEA14()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[3];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B5BEAB0(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v43 - v6;
  v7 = sub_23B5D8468();
  v55 = *(v7 - 8);
  v56 = v7;
  v57 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CED0, &qword_23B5DD708);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v46 = *(v53 - 8);
  v51 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v53);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  v19 = *(v18 - 8);
  v20 = v19;
  v48 = v18;
  v49 = v19;
  v21 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v43 - v22;
  v47 = &v43 - v22;
  sub_23B5C32A0(a1, v2 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE78, &qword_23B5DD490);
  (*(v10 + 104))(v13, *MEMORY[0x277D858A0], v9);
  v45 = v17;
  sub_23B5D8878();
  (*(v10 + 8))(v13, v9);
  v24 = v2;
  (*(v20 + 16))(v2 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence, v23, v18);
  v25 = v52;
  sub_23B5D8458();
  v26 = v55;
  v43 = *(v55 + 32);
  v44 = v24;
  v27 = v24 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v28 = v24;
  v29 = v56;
  v43(v27, v25, v56);
  v30 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v31 = sub_23B5D8868();
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v32 = v46;
  v33 = v50;
  v34 = v53;
  (*(v46 + 16))(v50, v17, v53);
  v35 = v28 + v30;
  v36 = v25;
  v37 = v25;
  v38 = v29;
  (*(v26 + 16))(v36, v35, v29);
  v39 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v40 = (v51 + *(v26 + 80) + v39) & ~*(v26 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  (*(v32 + 32))(v41 + v39, v33, v34);
  v43(v41 + v40, v37, v38);
  sub_23B5BF3D4(0, 0, v58, &unk_23B5DD720, v41);

  sub_23B5C3308(v54, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v32 + 8))(v45, v34);
  (*(v49 + 8))(v47, v48);
  return v44;
}

uint64_t sub_23B5BF010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF20, &unk_23B5DD830);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BF0DC, 0, 0);
}

uint64_t sub_23B5BF0DC()
{
  if (qword_27E15C320 != -1)
  {
    swift_once();
  }

  v1 = qword_27E15D4A8;
  *(v0 + 64) = qword_27E15D4A8;

  return MEMORY[0x2822009F8](sub_23B5BF174, v1, 0);
}

uint64_t sub_23B5BF174()
{
  v1 = v0[8];
  sub_23B5C3858(v0[3], v0[4]);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_23B5BF210;
  v3 = v0[8];

  return sub_23B5C519C();
}

uint64_t sub_23B5BF210(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_23B5BF310, 0, 0);
}

uint64_t sub_23B5BF310()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  sub_23B5D8888();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B5BF3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23B5C32A0(a3, v27 - v11, &qword_27E15CDF8, &qword_23B5DD7D0);
  v13 = sub_23B5D8868();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B5C3308(v12, &qword_27E15CDF8, &qword_23B5DD7D0);
  }

  else
  {
    sub_23B5D8858();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B5D8818();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B5D86D8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23B5BF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23B5C32A0(a3, v27 - v11, &qword_27E15CDF8, &qword_23B5DD7D0);
  v13 = sub_23B5D8868();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B5C3308(v12, &qword_27E15CDF8, &qword_23B5DD7D0);
  }

  else
  {
    sub_23B5D8858();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B5D8818();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B5D86D8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB0, &qword_23B5DD6D0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB0, &qword_23B5DD6D0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t WAPairedDevice.DevicesSequence.AsyncIterator.deinit()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v10 = sub_23B5D8868();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v4, v0 + v9, v1);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v2 + 32))(v12 + v11, v4, v1);
  sub_23B5BF3D4(0, 0, v8, &unk_23B5DD0D0, v12);

  v13 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  sub_23B5C3308(v0 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v2 + 8))(v0 + v9, v1);
  return v0;
}

uint64_t sub_23B5BFC68()
{
  if (qword_27E15C320 != -1)
  {
    swift_once();
  }

  v1 = qword_27E15D4A8;
  *(v0 + 24) = qword_27E15D4A8;

  return MEMORY[0x2822009F8](sub_23B5BFD00, v1, 0);
}

uint64_t sub_23B5BFD00()
{
  v1 = v0[3];
  sub_23B5C3CE4(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t WAPairedDevice.DevicesSequence.AsyncIterator.__deallocating_deinit()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v10 = sub_23B5D8868();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v4, v0 + v9, v1);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v2 + 32))(v12 + v11, v4, v1);
  sub_23B5BF3D4(0, 0, v8, &unk_23B5DD0D8, v12);

  v13 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  sub_23B5C3308(v0 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v2 + 8))(v0 + v9, v1);
  v15 = *(*v0 + 48);
  v16 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_23B5BFFF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23B5C0084;

  return sub_23B5BE320();
}

uint64_t sub_23B5C0084(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_23B5C0194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_23B5D8818();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x2822009F8](sub_23B5C022C, v6, v8);
}

uint64_t sub_23B5C022C()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23B5C02C0;

  return sub_23B5BE320();
}

uint64_t sub_23B5C02C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23B5C040C;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23B5C03E8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23B5C040C()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B5C04AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_23B5C32A0(v1, &v13 - v6, &qword_27E15CDC0, &qword_23B5DD0A0);
  v8 = type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_23B5BEAB0(v7);
  result = sub_23B5C0620(v2);
  *a1 = v11;
  return result;
}

uint64_t sub_23B5C059C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPairedDevice.DevicesSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5C0620(uint64_t a1)
{
  v2 = type metadata accessor for WAPairedDevice.DevicesSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B5C067C()
{
  result = qword_27E15CDF0;
  if (!qword_27E15CDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CDE8, &qword_23B5DD0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CDF0);
  }

  return result;
}

uint64_t sub_23B5C06E4()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x49676E6972696170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23B5C0734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5C318C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5C075C(uint64_t a1)
{
  v2 = sub_23B5C2550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C0798(uint64_t a1)
{
  v2 = sub_23B5C2550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPairedDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE08, &qword_23B5DD0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v11 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v12 = v1[7];
  v22 = v1[6];
  v23 = v11;
  v21 = v12;
  v13 = v1[8];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5C2550();
  sub_23B5D8D78();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_23B5D8C48();
  if (!v15)
  {
    v28 = v13;
    v18 = v22;
    v17 = v23;
    v20 = v24;
    v19 = v25;
    LOBYTE(v29) = 1;
    sub_23B5D8BE8();
    v29 = v19;
    v30 = v20;
    v31 = v17;
    v32 = v18;
    v33 = v21;
    v34 = v28;
    v35 = 2;
    sub_23B5BD168(v19, v20);
    sub_23B5C25A4();
    sub_23B5D8C08();
    sub_23B5C25F8(v29, v30);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t WAPairedDevice.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  MEMORY[0x23EE9FD60](*v0);
  if (!v3)
  {
    sub_23B5D8D38();
    if (v5)
    {
      goto LABEL_3;
    }

    return sub_23B5D8D38();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v5)
  {
    return sub_23B5D8D38();
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAPairedDevice.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_23B5D8D18();
  MEMORY[0x23EE9FD60](v2);
  if (!v4)
  {
    sub_23B5D8D38();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23B5D8D38();
    return sub_23B5D8D58();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE20, &qword_23B5DD0E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5C2550();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_23B5D8BB8();
  LOBYTE(v34[0]) = 1;
  v12 = sub_23B5D8B58();
  v14 = v13;
  v28 = v12;
  v39 = 2;
  sub_23B5C2648();
  sub_23B5D8B78();
  (*(v6 + 8))(v9, v5);
  v27 = v35;
  v15 = *(&v36 + 1);
  v26 = v36;
  v25 = *(&v37 + 1);
  v16 = v37;
  v17 = v38;
  *&v29 = v11;
  v18 = v28;
  *(&v29 + 1) = v28;
  *&v30 = v14;
  *(&v30 + 1) = v35;
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v19 = v29;
  v20 = v30;
  v21 = v36;
  v22 = v37;
  *(a2 + 64) = v38;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  *a2 = v19;
  *(a2 + 16) = v20;
  sub_23B5AF43C(&v29, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v11;
  v34[1] = v18;
  v34[2] = v14;
  v34[3] = v27;
  v34[4] = v26;
  v34[5] = v15;
  v34[6] = v16;
  v34[7] = v25;
  v34[8] = v17;
  return sub_23B5AFD30(v34);
}

uint64_t sub_23B5C0EF4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_23B5D8D18();
  MEMORY[0x23EE9FD60](v2);
  if (!v4)
  {
    sub_23B5D8D38();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23B5D8D38();
    return sub_23B5D8D58();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5C1018(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B5C1110;

  return v7(a1);
}

uint64_t sub_23B5C1110()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_23B5C1208(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23B5C2060(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23B5C1298(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  result = sub_23B5D8B28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 72 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v41 = *(v18 + 64);
      v39 = v20;
      v40 = v21;
      v37 = *v18;
      v38 = v19;
      v22 = *(v9 + 40);
      result = sub_23B5D8D08();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v9 + 48) + 8 * v26) = v17;
      v31 = *(v9 + 56) + 72 * v26;
      *v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      *(v31 + 64) = v41;
      *(v31 + 32) = v33;
      *(v31 + 48) = v34;
      *(v31 + 16) = v32;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_23B5AF43C(&v37, v36);
        return v9;
      }

      result = sub_23B5AF43C(&v37, v36);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v27 = 0;
    v28 = (63 - v23) >> 6;
    while (++v25 != v28 || (v27 & 1) == 0)
    {
      v29 = v25 == v28;
      if (v25 == v28)
      {
        v25 = 0;
      }

      v27 |= v29;
      v30 = *(v12 + 8 * v25);
      if (v30 != -1)
      {
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_23B5C14F8(char *a1, int64_t a2, char a3)
{
  result = sub_23B5C1568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_23B5C1518(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
  }

  while (v7 != a1);
  return v5 != 0;
}

char *sub_23B5C1548(char *a1, int64_t a2, char a3)
{
  result = sub_23B5C166C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B5C1568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC8, &qword_23B5DD700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}