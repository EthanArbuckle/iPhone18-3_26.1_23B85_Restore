uint64_t static LiveCallerIDLookupManager.shared.getter()
{
  v0 = type metadata accessor for LiveCallerIDLookupManager();

  return MEMORY[0x2821FEAF0](v0, &unk_280B27828);
}

uint64_t LiveLookupStore.activeExtensions()()
{
  type metadata accessor for LiveLookupDBExtension();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v2 = sub_238A61CBC();
  [v1 setPredicate_];

  v3 = v1;
  v4 = LiveLookupStore.fetchExtensions(_:context:)(v1, 0);

  return v4;
}

uint64_t sub_238A42AB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t LiveLookupStore.fetchExtensions(_:context:)(void *a1, uint64_t a2)
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);
  v5 = sub_238A61B5C();
  v6 = sub_238A61CDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238A41000, v5, v6, "fetching extensions", v7, 2u);
    MEMORY[0x23EE6F590](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    type metadata accessor for LiveLookupDBExtension();
    v9 = [swift_getObjCClassFromMetadata() entityName];
    if (!v9)
    {
      sub_238A61BAC();
      v9 = sub_238A61B9C();
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    v8 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238A638C0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = a1;
  v14 = sub_238A61B9C();
  v15 = [v12 initWithKey:v14 ascending:1];

  *(v11 + 32) = v15;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v16 = sub_238A61BEC();

  [v8 setSortDescriptors_];

  if (a2)
  {
    v17 = sub_238A43010(v8, a2, type metadata accessor for LiveLookupDBExtension);
    v18 = v8;
  }

  else
  {
    sub_238A43290(v8, sub_238A42FC4, &qword_27DF4B430, &qword_238A63AA8);
    v17 = v19;
  }

  v20 = v8;

  v21 = sub_238A61B5C();
  v22 = sub_238A61CDC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2080;
    v26 = type metadata accessor for LiveLookupDBExtension();
    v27 = MEMORY[0x23EE6EAF0](v17, v26);
    v29 = sub_238A4398C(v27, v28, &v31);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_238A41000, v21, v22, "fetchExtensions: request: %@ extensions: %s", v23, 0x16u);
    sub_238A42F4C(v24, &qword_27DF4B3C8, &qword_238A638F0);
    MEMORY[0x23EE6F590](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23EE6F590](v25, -1, -1);
    MEMORY[0x23EE6F590](v23, -1, -1);
  }

  else
  {
  }

  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238A42F4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238A42FC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for LiveLookupDBExtension);
  *a2 = result;
  return result;
}

uint64_t sub_238A431BC(char a1)
{
  v4 = *(v1 + 32);

  os_unfair_lock_lock(v4 + 9);
  sub_238A43628(&v4[4], &v7);
  v5 = v4 + 9;
  if (v2)
  {
    os_unfair_lock_unlock(v5);

    if (a1)
    {
      swift_willThrow();
    }

    else
    {
      v1 = sub_238A431BC(1);
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    v1 = v7;
  }

  return v1;
}

void sub_238A43290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(v4 + 24))
  {
    MEMORY[0x28223BE20]();

    v7 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20]();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238A433E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_238A431BC(0);
  v7 = v2;
  if (v2)
  {
    if (a2)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0x8000000238A659E0;
    }

    v10 = qword_280B27740;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_238A61B7C();
    __swift_project_value_buffer(v11, qword_280B278D8);

    v12 = v7;
    v13 = sub_238A61B5C();
    v14 = sub_238A61CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v15 = 136315394;
      v18 = sub_238A4398C(v8, v9, &v25);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_238A41000, v13, v14, "%s: %@", v15, 0x16u);
      sub_238A5933C(v16);
      MEMORY[0x23EE6F590](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6F590](v17, -1, -1);
      MEMORY[0x23EE6F590](v15, -1, -1);
    }

    else
    {
    }

    return swift_willThrow();
  }

  else
  {
    v21 = v5;
    v22 = v6;
    v23 = [v6 viewContext];

    return v23;
  }
}

id sub_238A4365C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v11 = v6;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();
    sub_238A593A4(v6, v5, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v6;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_238A41000, v12, v13, "Attempting to recover from error %@", v14, 0xCu);
      sub_238A5933C(v15);
      MEMORY[0x23EE6F590](v15, -1, -1);
      MEMORY[0x23EE6F590](v14, -1, -1);
      sub_238A593A4(v6, v5, 1);
    }

    else
    {

      sub_238A593A4(v6, v5, 1);
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      *a2 = v6;
      a2[1] = v5;
      v8 = v6;
      return v5;
    }

    sub_238A593A4(*a1, v5, v7);
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v18 = sub_238A61B7C();
    __swift_project_value_buffer(v18, qword_280B278D8);
    v19 = sub_238A61B5C();
    v20 = sub_238A61CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_238A41000, v19, v20, "Attempting initial store load", v21, 2u);
      MEMORY[0x23EE6F590](v21, -1, -1);
    }
  }

  v22 = sub_238A57F40();
  if (v2)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    swift_willThrow();
    return v2;
  }

  else
  {
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    *a2 = v22;
    a2[1] = v23;
    v24 = v23;
    v25 = v22;
    return v24;
  }
}

uint64_t sub_238A43930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238A4398C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A43C4C(v11, 0, 0, 1, a1, a2);
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
    sub_238A43930(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_238A43A5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_238A43B1C(a1, a2);
  sub_238A43DA4(&unk_284B5C1F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_238A43AA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B428, &qword_238A63AA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_238A43B1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_238A43AA8(v5, 0);
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

  result = sub_238A61D9C();
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
        v10 = sub_238A61BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A43AA8(v10, 0);
        result = sub_238A61D5C();
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

unint64_t sub_238A43C4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238A43A5C(a5, a6);
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
    result = sub_238A61D9C();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_238A43DA4(uint64_t result)
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

  result = sub_238A56C7C(result, v12, 1, v3);
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

id ILDefaultLog()
{
  if (ILDefaultLog_onceToken != -1)
  {
    ILDefaultLog_cold_1();
  }

  v1 = ILDefaultLog_log;

  return v1;
}

uint64_t __ILDefaultLog_block_invoke()
{
  ILDefaultLog_log = os_log_create("com.apple.calls.identitylookup", "Default");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_238A4420C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238A4427C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_238A442C0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_238A61B9C();
  [v4 setIdentifier_];
}

id sub_238A44324@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAppStoreVendable];
  *a2 = result;
  return result;
}

id sub_238A4436C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

id sub_238A443B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isInstalled];
  *a2 = result;
  return result;
}

id sub_238A443FC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_238A44444@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldRemove];
  *a2 = result;
  return result;
}

uint64_t sub_238A445CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238A61A1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238A4469C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238A61A1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

char *sub_238A44764@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.getter();
  *a2 = result;
  return result;
}

char *sub_238A447A8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.getter();
  *a2 = result;
  return result;
}

uint64_t sub_238A447EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _LiveLookupConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_238A44834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_238A4487C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldBlock];
  *a2 = result;
  return result;
}

id sub_238A448C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dbExtension];
  *a2 = result;
  return result;
}

id sub_238A449DC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_238A44A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dbExtension];
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_238A45FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_238A49330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_238A4AA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238A4ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238A4B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_238A4B294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

IdentityLookup::IdentityType_optional __swiftcall IdentityType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238A4D918()
{
  v1 = *v0;
  sub_238A61E9C();
  sub_238A61EBC();
  return sub_238A61ECC();
}

uint64_t sub_238A4D98C()
{
  v1 = *v0;
  sub_238A61E9C();
  sub_238A61EBC();
  return sub_238A61ECC();
}

uint64_t ExtensionUpdate.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier + 8);

  return v1;
}

id ExtensionUpdate.__allocating_init(identifier:isAppStoreVendable:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
  *v8 = a1;
  v8[1] = a2;
  v7[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_isAppStoreVendable] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ExtensionUpdate.init(identifier:isAppStoreVendable:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
  *v4 = a1;
  v4[1] = a2;
  v3[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_isAppStoreVendable] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ExtensionUpdate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ExtensionUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExtensionUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238A4DC50()
{
  result = sub_238A61B9C();
  qword_280B27488 = result;
  return result;
}

id static NSNotificationName.LiveLookupStoreExtensionsChangedNotification.getter()
{
  if (qword_280B274B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280B27488;

  return v1;
}

uint64_t sub_238A4DD00()
{
  type metadata accessor for LiveLookupStore();
  v0 = swift_allocObject();
  result = LiveLookupStore.init(storeLocation:)();
  qword_280B27890 = v0;
  return result;
}

uint64_t LiveLookupStore.__allocating_init(storeLocation:)()
{
  v0 = swift_allocObject();
  LiveLookupStore.init(storeLocation:)();
  return v0;
}

uint64_t static LiveLookupStore.shared.getter()
{
  if (qword_280B27888 != -1)
  {
    swift_once();
  }
}

uint64_t LiveLookupStore.init(storeLocation:)()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v20[-v3];
  v5 = sub_238A61A1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  *(v0 + 16) = 5;
  *(v0 + 24) = 0;
  sub_238A4E0A8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
    (*(v6 + 8))(v10, v5);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v13 = sub_238A56DD4();

    (*(v6 + 16))(v10, v12, v5);
    v14 = v13;
    v15 = sub_238A58ED0(v10);
    type metadata accessor for StoreWrapper();
    swift_allocObject();
    v16 = StoreWrapper.init(containerName:model:storeDescription:)(0x6B6F6F4C6576694CLL, 0xEF65726F74537075, v15, v14);
    v17 = *(v6 + 8);
    v17(v10, v5);
    v17(v12, v5);

    v18 = *(v1 + 24);
    *(v1 + 24) = v16;

    return v1;
  }

  return result;
}

uint64_t sub_238A4E0A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LiveLookupStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_238A61B9C();
  v5 = sub_238A61B9C();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_238A619DC();
    v7 = 0;
  }

  else
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v8 = sub_238A61B7C();
    __swift_project_value_buffer(v8, qword_280B278D8);
    v6 = sub_238A61B5C();
    v9 = sub_238A61CDC();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238A41000, v6, v9, "Failed to find LiveLookupStore model file", v10, 2u);
      MEMORY[0x23EE6F590](v10, -1, -1);
    }

    v7 = 1;
  }

  v11 = sub_238A61A1C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v7, 1, v11);
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

void sub_238A4E2DC(uint64_t a1)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](a1);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_238A4E434()
{
  v1 = v0;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v2 = sub_238A61B7C();
  __swift_project_value_buffer(v2, qword_280B278D8);
  v3 = sub_238A61B5C();
  v4 = sub_238A61CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238A41000, v3, v4, "saving", v5, 2u);
    MEMORY[0x23EE6F590](v5, -1, -1);
  }

  if (*(v1 + 24))
  {

    v6 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v6);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238A4E614(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_238A579BC;
  *(v3 + 24) = v2;
  v7[4] = sub_238A579E0;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_238A527B0;
  v7[3] = &block_descriptor;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238A4E774(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);
    sub_238A61C4C();

    sub_238A58ABC();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStore.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LiveLookupStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_238A4E8B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveLookupStore();
  v2 = swift_allocObject();
  result = LiveLookupStore.init(storeLocation:)();
  *a1 = v2;
  return result;
}

uint64_t LiveLookupStore.installedExtensions()()
{
  type metadata accessor for LiveLookupDBExtension();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v2 = sub_238A61CBC();
  [v1 setPredicate_];

  v3 = v1;
  v4 = LiveLookupStore.fetchExtensions(_:context:)(v1, 0);

  return v4;
}

Swift::Bool __swiftcall LiveLookupStore.isAppStoreVendable(forExtensionWith:)(Swift::String forExtensionWith)
{
  object = forExtensionWith._object;
  countAndFlagsBits = forExtensionWith._countAndFlagsBits;
  v3 = type metadata accessor for LiveLookupDBExtension();
  v4 = [swift_getObjCClassFromMetadata() entityName];
  if (!v4)
  {
    sub_238A61BAC();
    v4 = sub_238A61B9C();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238A63890;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_238A57194();
  *(v6 + 32) = countAndFlagsBits;
  *(v6 + 40) = object;

  v7 = sub_238A61CBC();
  [v5 setPredicate_];

  sub_238A43290(v5, sub_238A42FC4, &qword_27DF4B430, &qword_238A63AA8);
  v9 = v8;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v10 = sub_238A61B7C();
  __swift_project_value_buffer(v10, qword_280B278D8);

  v11 = sub_238A61B5C();
  v12 = sub_238A61CDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_238A4398C(countAndFlagsBits, object, &v23);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x23EE6EAF0](v9, v3);
    v17 = sub_238A4398C(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_238A41000, v11, v12, "identifier %s extensions %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v14, -1, -1);
    MEMORY[0x23EE6F590](v13, -1, -1);
  }

  if (v9 >> 62)
  {
    v18 = sub_238A61E0C();
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EE6EC60](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v18;
    }

    v19 = *(v9 + 32);
  }

  v20 = v19;

  v21 = [v20 isAppStoreVendable];

LABEL_15:
  LOBYTE(v18) = v21;
  return v18;
}

Swift::Void __swiftcall LiveLookupStore.resetExtension(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238A63890;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_238A57194();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_238A61CBC();
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_238A61B9C();
  v9 = [v7 initWithEntityName_];

  v25 = v6;
  [v9 setPredicate_];
  v24 = v9;
  v32 = v2;
  sub_238A43290(v9, sub_238A57938, &qword_27DF4B420, &qword_238A63A98);
  v12 = v10;
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_15:

    v23 = v25;
    sub_238A527D8(v25);

    return;
  }

LABEL_14:
  v13 = sub_238A61E0C();
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_3:
  v14 = 0;
  v30 = v12 & 0xFFFFFFFFFFFFFF8;
  v31 = v12 & 0xC000000000000001;
  v27 = "iveLookupStore.swift";
  *&v11 = 136315394;
  v26 = v11;
  v28 = v12;
  v29 = v13;
  while (1)
  {
    if (v31)
    {
      v15 = MEMORY[0x23EE6EC60](v14, v12);
    }

    else
    {
      if (v14 >= *(v30 + 16))
      {
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (!*(v32 + 24))
    {
      break;
    }

    v33 = &v24;
    MEMORY[0x28223BE20](v15);

    v18 = sub_238A431BC(0);
    v20 = v19;
    v21 = [v19 viewContext];

    MEMORY[0x28223BE20](v22);
    sub_238A61D0C();

    ++v14;
    if (v17 == v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall LiveLookupStore.updateExtensions(with:)(Swift::OpaquePointer with)
{
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if (*(v1 + 24))
  {
    v5 = MEMORY[0x28223BE20](with._rawValue);
    MEMORY[0x28223BE20](v5);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();

    v3 = v6;
    with._rawValue = v7;
  }

  else
  {
    __break(1u);
  }

  result._1._rawValue = v3;
  result._0 = with;
  return result;
}

uint64_t LiveLookupStore.fetchBlockingInfo(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_238A61A9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v9 = sub_238A61B7C();
  __swift_project_value_buffer(v9, qword_280B278D8);

  v10 = sub_238A61B5C();
  v11 = sub_238A61CDC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_238A4398C(a1, a2, &v24);
    _os_log_impl(&dword_238A41000, v10, v11, "fetchBlockingInfo for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE6F590](v13, -1, -1);
    MEMORY[0x23EE6F590](v12, -1, -1);
  }

  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v15 = sub_238A61B9C();
  v16 = [v14 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_238A638A0;
  sub_238A61A8C();
  v18 = sub_238A61A6C();
  (*(v5 + 8))(v8, v4);
  *(v17 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v17 + 64) = sub_238A57250();
  *(v17 + 32) = v18;
  *(v17 + 96) = MEMORY[0x277D837D0];
  *(v17 + 104) = sub_238A57194();
  *(v17 + 72) = a1;
  *(v17 + 80) = a2;

  v19 = sub_238A61CBC();
  [v16 setPredicate_];

  sub_238A43290(v16, sub_238A57938, &qword_27DF4B420, &qword_238A63A98);
  v21 = v20;

  return v21;
}

uint64_t LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - v11;
  v13 = sub_238A61A9C();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v16 = sub_238A61B7C();
  v17 = __swift_project_value_buffer(v16, qword_280B278D8);

  v18 = a3;
  v76 = v17;
  v19 = sub_238A61B5C();
  v20 = sub_238A61CDC();

  v21 = os_log_type_enabled(v19, v20);
  v72 = a1;
  v73 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_238A4398C(a1, a2, &v78);
    *(v22 + 12) = 2080;
    v24 = [v18 identifier];
    v25 = v12;
    v26 = sub_238A61BAC();
    v27 = a2;
    v28 = a4;
    v30 = v29;

    v31 = v26;
    v12 = v25;
    v32 = sub_238A4398C(v31, v30, &v78);
    a4 = v28;
    a2 = v27;

    *(v22 + 14) = v32;
    _os_log_impl(&dword_238A41000, v19, v20, "fetchBlockingInfo for %s with %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v23, -1, -1);
    MEMORY[0x23EE6F590](v22, -1, -1);
  }

  v33 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v34 = sub_238A61B9C();
  v35 = [v33 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_238A638A0;
  *(v36 + 56) = type metadata accessor for LiveLookupDBExtension();
  *(v36 + 64) = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension);
  v37 = v73;
  *(v36 + 32) = v73;
  *(v36 + 96) = MEMORY[0x277D837D0];
  *(v36 + 104) = sub_238A57194();
  *(v36 + 72) = v72;
  *(v36 + 80) = a2;

  v38 = v37;
  v39 = sub_238A61CBC();
  sub_238A57858(a4, v12, &qword_27DF4B3D8, &unk_238A63900);
  v41 = v74;
  v40 = v75;
  if ((*(v74 + 48))(v12, 1, v75) == 1)
  {
    sub_238A42F4C(v12, &qword_27DF4B3D8, &unk_238A63900);
  }

  else
  {
    v42 = v71;
    (*(v41 + 32))(v71, v12, v40);
    v43 = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_238A63890;
    v45 = v41;
    v46 = sub_238A61A6C();
    *(v44 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    *(v44 + 64) = sub_238A57250();
    *(v44 + 32) = v46;
    v47 = sub_238A61CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_238A638B0;
    *(v48 + 32) = v39;
    *(v48 + 40) = v47;
    v49 = v39;
    v50 = v47;
    v51 = sub_238A61BEC();

    v39 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v45 + 8))(v42, v43);
  }

  [v35 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_238A638C0;
  v53 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v54 = sub_238A61B9C();
  v55 = [v53 initWithKey:v54 ascending:1];

  *(v52 + 32) = v55;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v56 = sub_238A61BEC();

  [v35 setSortDescriptors_];

  if (v77)
  {
    v57 = sub_238A43010(v35, v77, type metadata accessor for BlockingInfo);
  }

  else
  {
    sub_238A43290(v35, sub_238A57938, &qword_27DF4B420, &qword_238A63A98);
  }

  v58 = v57;

  v59 = sub_238A61B5C();
  v60 = sub_238A61CDC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78 = v62;
    *v61 = 136315138;
    v63 = type metadata accessor for BlockingInfo();
    v64 = MEMORY[0x23EE6EAF0](v58, v63);
    v66 = sub_238A4398C(v64, v65, &v78);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_238A41000, v59, v60, "blockingInfo %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x23EE6F590](v62, -1, -1);
    MEMORY[0x23EE6F590](v61, -1, -1);
  }

  if (!(v58 >> 62))
  {
    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_20:

    v69 = 0;
    goto LABEL_21;
  }

  result = sub_238A61E0C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v58 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x23EE6EC60](0, v58);
    goto LABEL_18;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(v58 + 32);
LABEL_18:
    v69 = v68;

LABEL_21:

    return v69;
  }

  __break(1u);
  return result;
}

uint64_t LiveLookupStore.updateBlockingInfo(for:with:shouldBlock:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStore.fetchIdentityInfo(for:from:canBeEmpty:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3F0, &qword_238A63910);
    sub_238A61D0C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStore.fetchIdentityInfo(for:with:expiration:context:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - v11;
  v13 = sub_238A61A9C();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v16 = sub_238A61B7C();
  v17 = __swift_project_value_buffer(v16, qword_280B278D8);

  v18 = a3;
  v76 = v17;
  v19 = sub_238A61B5C();
  v20 = sub_238A61CDC();

  v21 = os_log_type_enabled(v19, v20);
  v72 = a1;
  v73 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_238A4398C(a1, a2, &v78);
    *(v22 + 12) = 2080;
    v24 = [v18 identifier];
    v25 = v12;
    v26 = sub_238A61BAC();
    v27 = a2;
    v28 = a4;
    v30 = v29;

    v31 = v26;
    v12 = v25;
    v32 = sub_238A4398C(v31, v30, &v78);
    a4 = v28;
    a2 = v27;

    *(v22 + 14) = v32;
    _os_log_impl(&dword_238A41000, v19, v20, "fetchIdentityInfo for %s with %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v23, -1, -1);
    MEMORY[0x23EE6F590](v22, -1, -1);
  }

  v33 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v34 = sub_238A61B9C();
  v35 = [v33 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_238A638A0;
  *(v36 + 56) = type metadata accessor for LiveLookupDBExtension();
  *(v36 + 64) = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension);
  v37 = v73;
  *(v36 + 32) = v73;
  *(v36 + 96) = MEMORY[0x277D837D0];
  *(v36 + 104) = sub_238A57194();
  *(v36 + 72) = v72;
  *(v36 + 80) = a2;

  v38 = v37;
  v39 = sub_238A61CBC();
  sub_238A57858(a4, v12, &qword_27DF4B3D8, &unk_238A63900);
  v41 = v74;
  v40 = v75;
  if ((*(v74 + 48))(v12, 1, v75) == 1)
  {
    sub_238A42F4C(v12, &qword_27DF4B3D8, &unk_238A63900);
  }

  else
  {
    v42 = v71;
    (*(v41 + 32))(v71, v12, v40);
    v43 = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_238A63890;
    v45 = v41;
    v46 = sub_238A61A6C();
    *(v44 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    *(v44 + 64) = sub_238A57250();
    *(v44 + 32) = v46;
    v47 = sub_238A61CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_238A638B0;
    *(v48 + 32) = v39;
    *(v48 + 40) = v47;
    v49 = v39;
    v50 = v47;
    v51 = sub_238A61BEC();

    v39 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v45 + 8))(v42, v43);
  }

  [v35 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_238A638C0;
  v53 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v54 = sub_238A61B9C();
  v55 = [v53 initWithKey:v54 ascending:1];

  *(v52 + 32) = v55;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v56 = sub_238A61BEC();

  [v35 setSortDescriptors_];

  if (v77)
  {
    v57 = sub_238A43010(v35, v77, type metadata accessor for IdentityInfo);
  }

  else
  {
    sub_238A43290(v35, sub_238A578C0, &qword_27DF4B410, &qword_238A63A90);
  }

  v58 = v57;

  v59 = sub_238A61B5C();
  v60 = sub_238A61CDC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78 = v62;
    *v61 = 136315138;
    v63 = type metadata accessor for IdentityInfo();
    v64 = MEMORY[0x23EE6EAF0](v58, v63);
    v66 = sub_238A4398C(v64, v65, &v78);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_238A41000, v59, v60, "identityInfo %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x23EE6F590](v62, -1, -1);
    MEMORY[0x23EE6F590](v61, -1, -1);
  }

  if (!(v58 >> 62))
  {
    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_20:

    v69 = 0;
    goto LABEL_21;
  }

  result = sub_238A61E0C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v58 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x23EE6EC60](0, v58);
    goto LABEL_18;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(v58 + 32);
LABEL_18:
    v69 = v68;

LABEL_21:

    return v69;
  }

  __break(1u);
  return result;
}

uint64_t LiveLookupStore.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  if (*(v7 + 24))
  {
    v8 = *a7;
    v10 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v10);

    v9 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *LiveLookupStore.removeStaleRecords()()
{
  v1 = v0;
  v135 = *MEMORY[0x277D85DE8];
  v114 = sub_238A6198C();
  v120 = *(v114 - 8);
  v2 = *(v120 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = &v103 - v6;
  v7 = sub_238A61A1C();
  v119 = *(v7 - 8);
  v8 = *(v119 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v111 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v103 - v11;
  v12 = sub_238A61A9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_238A63890;
  sub_238A61A8C();
  v18 = sub_238A61A6C();
  (*(v13 + 8))(v16, v12);
  *(v17 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v17 + 64) = sub_238A57250();
  *(v17 + 32) = v18;
  v19 = sub_238A61CBC();
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_238A61B9C();
  v22 = [v20 initWithEntityName_];

  v104 = v19;
  [v22 setPredicate_];
  v121 = v22;
  v130 = v1;
  sub_238A43290(v22, sub_238A57938, &qword_27DF4B420, &qword_238A63A98);
  v25 = v23;
  if (v23 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_238A61E0C())
  {
    v123 = v7;
    if (i)
    {
      v7 = 0;
      v128 = v25 & 0xFFFFFFFFFFFFFF8;
      v129 = (v25 & 0xC000000000000001);
      v125 = "iveLookupStore.swift";
      *&v24 = 136315394;
      v122 = v24;
      v126 = v25;
      v127 = i;
      while (1)
      {
        if (v129)
        {
          v27 = MEMORY[0x23EE6EC60](v7, v25);
        }

        else
        {
          if (v7 >= *(v128 + 16))
          {
            goto LABEL_54;
          }

          v27 = *(v25 + 8 * v7 + 32);
        }

        v28 = v27;
        v29 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v30 = *(v130 + 24);
        if (!v30)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
        }

        v131 = &v103;
        MEMORY[0x28223BE20](v27);
        *(&v103 - 2) = v28;

        v31 = sub_238A431BC(0);
        v33 = v32;
        v34 = [v32 viewContext];

        MEMORY[0x28223BE20](v35);
        *(&v103 - 4) = v30;
        *(&v103 - 3) = sub_238A57A90;
        *(&v103 - 2) = &v103 - 2;
        *(&v103 - 1) = v34;
        sub_238A61D0C();

        ++v7;
        if (v29 == v127)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_13:

    sub_238A527D8(v104);
    v36 = LiveLookupStore.fetchExtensions(_:context:)(0, 0);
    v7 = v36;
    if (!(v36 >> 62))
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        break;
      }

      goto LABEL_15;
    }

    v38 = sub_238A61E0C();
    if (!v38)
    {
      break;
    }

LABEL_15:
    v39 = 0;
    v131 = (v7 & 0xC000000000000001);
    v126 = v7 & 0xFFFFFFFFFFFFFF8;
    v110 = "xtensionUpdate";
    v109 = (v119 + 56);
    v108 = *MEMORY[0x277CC91D8];
    v107 = (v120 + 104);
    v106 = (v120 + 8);
    *&v122 = v119 + 8;
    v128 = "iveLookupStore.swift";
    v129 = MEMORY[0x277D84F90];
    v25 = 0x278A5E000uLL;
    *&v37 = 138412290;
    v115 = v37;
    *&v37 = 136315138;
    v103 = v37;
    v105 = v7;
    v125 = v38;
    while (1)
    {
      if (v131)
      {
        v40 = MEMORY[0x23EE6EC60](v39, v7);
      }

      else
      {
        if (v39 >= *(v126 + 16))
        {
          goto LABEL_56;
        }

        v40 = *(v7 + 8 * v39 + 32);
      }

      v41 = v40;
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v43 = [v40 *(v25 + 2696)];
      v44 = sub_238A61BAC();
      v46 = v45;

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        if ([v41 shouldRemove] && (objc_msgSend(v41, sel_isInstalled) & 1) == 0)
        {
          if (qword_280B27740 != -1)
          {
            swift_once();
          }

          v57 = sub_238A61B7C();
          __swift_project_value_buffer(v57, qword_280B278D8);
          v58 = v41;
          v59 = sub_238A61B5C();
          v60 = sub_238A61CDC();

          v61 = os_log_type_enabled(v59, v60);
          v127 = v58;
          v120 = v39 + 1;
          v118 = v39;
          v116 = 0;
          if (v61)
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v132 = v63;
            *v62 = v103;
            v64 = [v58 identifier];
            v65 = sub_238A61BAC();
            v67 = v66;

            v133 = v65;
            v134 = v67;
            v68 = v123;
            v69 = sub_238A61BBC();
            v71 = sub_238A4398C(v69, v70, &v132);

            *(v62 + 4) = v71;
            v58 = v127;
            _os_log_impl(&dword_238A41000, v59, v60, "removing %s", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v63);
            MEMORY[0x23EE6F590](v63, -1, -1);
            v72 = v62;
            v25 = 0x278A5E000;
            MEMORY[0x23EE6F590](v72, -1, -1);
          }

          else
          {

            v68 = v123;
          }

          v75 = [v58 *(v25 + 2696)];
          v76 = sub_238A61BAC();
          v78 = v77;

          (*v109)(v112, 1, 1, v68);
          v79 = *v107;
          v80 = v113;
          v81 = v108;
          v82 = v114;
          (*v107)(v113, v108, v114);
          v83 = v111;
          sub_238A619FC();
          v121 = v76;
          v133 = v76;
          v134 = v78;
          v119 = v78;
          v79(v80, v81, v82);
          sub_238A573C0();
          sub_238A61A0C();
          (*v106)(v80, v82);
          v117 = *v122;
          v117(v83, v68);
          v84 = [objc_opt_self() defaultManager];
          v85 = sub_238A619BC();
          v133 = 0;
          LODWORD(v82) = [v84 removeItemAtURL:v85 error:&v133];

          if (v82)
          {
            v86 = v133;
            v7 = v105;
            v87 = v116;
          }

          else
          {
            v88 = v133;
            v89 = sub_238A6197C();

            swift_willThrow();
            v87 = 0;
            v7 = v105;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v125;
          v42 = v120;
          v39 = v118;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_238A56B70(0, *(v129 + 2) + 1, 1, v129);
            v129 = isUniquelyReferenced_nonNull_native;
          }

          v92 = *(v129 + 2);
          v91 = *(v129 + 3);
          if (v92 >= v91 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_238A56B70((v91 > 1), v92 + 1, 1, v129);
            v129 = isUniquelyReferenced_nonNull_native;
          }

          v93 = v129;
          *(v129 + 2) = v92 + 1;
          v94 = &v93[16 * v92];
          v95 = v119;
          *(v94 + 4) = v121;
          *(v94 + 5) = v95;
          v96 = *(v130 + 24);
          if (!v96)
          {
            goto LABEL_63;
          }

          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
          v97 = v127;
          *(&v103 - 2) = v127;

          v98 = sub_238A433E4(0xD00000000000001CLL, v128 | 0x8000000000000000);
          if (v87)
          {
          }

          else
          {
            v99 = v98;
            v100 = MEMORY[0x28223BE20](v98);
            *(&v103 - 4) = v96;
            *(&v103 - 3) = sub_238A57A90;
            *(&v103 - 2) = &v103 - 2;
            *(&v103 - 1) = v100;
            sub_238A61D0C();

            v38 = v125;
          }

          v117(v124, v123);
          v25 = 0x278A5E000;
        }

        else
        {
          if (([v41 isInstalled] & 1) == 0)
          {
            [v41 setShouldRemove_];
            [v41 setIsEnabled_];
          }
        }
      }

      else
      {
        if (qword_280B27740 != -1)
        {
          swift_once();
        }

        v48 = sub_238A61B7C();
        __swift_project_value_buffer(v48, qword_280B278D8);
        v49 = v41;
        v50 = sub_238A61B5C();
        v51 = sub_238A61CDC();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = v115;
          *(v52 + 4) = v49;
          *v53 = v49;
          v54 = v49;
          _os_log_impl(&dword_238A41000, v50, v51, "removing extension with nil/empty identifier: %@", v52, 0xCu);
          sub_238A42F4C(v53, &qword_27DF4B3C8, &qword_238A638F0);
          MEMORY[0x23EE6F590](v53, -1, -1);
          MEMORY[0x23EE6F590](v52, -1, -1);
        }

        v56 = *(v130 + 24);
        if (!v56)
        {
          goto LABEL_62;
        }

        MEMORY[0x28223BE20](v55);
        *(&v103 - 2) = v49;

        v73 = sub_238A433E4(0xD00000000000001CLL, v128 | 0x8000000000000000);
        v74 = MEMORY[0x28223BE20](v73);
        *(&v103 - 4) = v56;
        *(&v103 - 3) = sub_238A57A90;
        *(&v103 - 2) = &v103 - 2;
        *(&v103 - 1) = v74;
        sub_238A61D0C();

        v38 = v125;
        v25 = 0x278A5E000;
      }

      ++v39;
      if (v42 == v38)
      {
        goto LABEL_60;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v129 = MEMORY[0x277D84F90];
LABEL_60:

  sub_238A4E434();

  v101 = *MEMORY[0x277D85DE8];
  return v129;
}

uint64_t LiveLookupStore.setEnabled(_:for:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);

    v3 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238A52394(uint64_t result)
{
  if (*(v1 + 24))
  {
    v3 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v3);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_238A524E4()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  if ([v0 hasChanges])
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v2 = sub_238A61B7C();
    __swift_project_value_buffer(v2, qword_280B278D8);
    v3 = sub_238A61B5C();
    v4 = sub_238A61CDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_238A41000, v3, v4, "Saving", v5, 2u);
      MEMORY[0x23EE6F590](v5, -1, -1);
    }

    v20[0] = 0;
    if ([v0 save_])
    {
      v6 = v20[0];
      v7 = sub_238A61B5C();
      v8 = sub_238A61CDC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_238A41000, v7, v8, "Save Successful", v9, 2u);
        MEMORY[0x23EE6F590](v9, -1, -1);
      }
    }

    else
    {
      v10 = v20[0];
      v11 = sub_238A6197C();

      swift_willThrow();
      v12 = v11;
      v13 = sub_238A61B5C();
      v14 = sub_238A61CDC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v11;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_238A41000, v13, v14, "Could not save. %@", v15, 0xCu);
        sub_238A42F4C(v16, &qword_27DF4B3C8, &qword_238A638F0);
        MEMORY[0x23EE6F590](v16, -1, -1);
        MEMORY[0x23EE6F590](v15, -1, -1);
      }

      [v1 reset];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238A527D8(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_238A61A1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_238A61B9C();
  v13 = [v11 initWithEntityName_];

  [v13 setPredicate_];
  v50 = v1;
  sub_238A43290(v13, sub_238A578C0, &qword_27DF4B410, &qword_238A63A90);
  v16 = v14;
  if (v14 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_238A61E0C())
  {
    v38 = v13;
    v18 = 0;
    v13 = 0;
    v49 = v16 & 0xC000000000000001;
    v45 = (v8 + 48);
    v42 = (v8 + 32);
    v43 = v16 & 0xFFFFFFFFFFFFFF8;
    v40 = "iveLookupStore.swift";
    v41 = (v8 + 8);
    *&v15 = 136315394;
    v39 = v15;
    v47 = v7;
    v48 = i;
    v44 = v6;
    while (1)
    {
      if (v49)
      {
        v19 = MEMORY[0x23EE6EC60](v18, v16);
      }

      else
      {
        if (v18 >= *(v43 + 16))
        {
          goto LABEL_21;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = [v19 iconURL];
      v52 = v18 + 1;
      if (v21)
      {
        v22 = v21;
        sub_238A61BAC();

        sub_238A619EC();

        if ((*v45)(v6, 1, v7) == 1)
        {
          v21 = sub_238A42F4C(v6, &qword_27DF4B3B0, &qword_238A638E0);
        }

        else
        {
          (*v42)(v46, v6, v7);
          v23 = [objc_opt_self() defaultManager];
          v24 = sub_238A619BC();
          v53[0] = 0;
          v25 = [v23 removeItemAtURL:v24 error:v53];

          if (v25)
          {
            v26 = v53[0];
          }

          else
          {
            v27 = v53[0];
            v28 = sub_238A6197C();

            swift_willThrow();
          }

          v21 = (*v41)(v46, v7);
        }
      }

      v8 = *(v50 + 24);
      if (!v8)
      {
        __break(1u);
      }

      v51 = &v37;
      MEMORY[0x28223BE20](v21);
      *(&v37 - 2) = v20;

      v29 = sub_238A431BC(0);
      v31 = v30;
      v32 = [v30 viewContext];

      MEMORY[0x28223BE20](v33);
      *(&v37 - 4) = v8;
      *(&v37 - 3) = sub_238A57A90;
      *(&v37 - 2) = (&v37 - 4);
      *(&v37 - 1) = v32;
      v13 = 0;
      sub_238A61D0C();

      v7 = v47;
      ++v18;
      if (v52 == v48)
      {

        v35 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v36 = *MEMORY[0x277D85DE8];
}

char *sub_238A52F2C(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, void *a5, unint64_t a6)
{
  v8 = LiveLookupStore.fetchExtensions(_:context:)(0, 0);
  v166 = v8;
  if (qword_280B27740 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v9 = sub_238A61B7C();
    __swift_project_value_buffer(v9, qword_280B278D8);

    v10 = sub_238A61B5C();
    v11 = sub_238A61CDC();

    v147 = a3;
    v12 = a3 >> 62;
    v13 = v8 >> 62;
    a3 = 0x278A5E000;
    v150 = a6;
    if (os_log_type_enabled(v10, v11))
    {
      LOBYTE(v148) = v11;
      v14 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v165[0] = v146;
      buf = v14;
      *v14 = 136315394;
      log = v10;
      if (v12)
      {
        goto LABEL_158;
      }

      v15 = v147;
      v16 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v17 = MEMORY[0x277D84F90];
      v152 = v12;
      v154 = v13;
      if (v16)
      {
        v164[0] = MEMORY[0x277D84F90];
        result = sub_238A5E5C0(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = v8;
        v17 = v164[0];
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = 0;
          do
          {
            v21 = MEMORY[0x23EE6EC60](v20, v15);
            v22 = *(v21 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);
            v23 = *(v21 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier + 8);

            swift_unknownObjectRelease();
            v164[0] = v17;
            v25 = *(v17 + 16);
            v24 = *(v17 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_238A5E5C0((v24 > 1), v25 + 1, 1);
              v17 = v164[0];
            }

            ++v20;
            *(v17 + 16) = v25 + 1;
            v26 = v17 + 16 * v25;
            *(v26 + 32) = v22;
            *(v26 + 40) = v23;
          }

          while (v16 != v20);
        }

        else
        {
          v27 = (v15 + 32);
          do
          {
            v28 = (*v27 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);
            v30 = *v28;
            v29 = v28[1];
            v164[0] = v17;
            v31 = *(v17 + 16);
            v32 = *(v17 + 24);

            if (v31 >= v32 >> 1)
            {
              sub_238A5E5C0((v32 > 1), v31 + 1, 1);
              v17 = v164[0];
            }

            *(v17 + 16) = v31 + 1;
            v33 = v17 + 16 * v31;
            *(v33 + 32) = v30;
            *(v33 + 40) = v29;
            ++v27;
            --v16;
          }

          while (v16);
        }

        v8 = v19;
        v13 = v154;
      }

      v34 = MEMORY[0x23EE6EAF0](v17, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = sub_238A4398C(v34, v36, v165);

      *(buf + 4) = v37;
      *(buf + 6) = 2080;
      if (v13)
      {
        a3 = sub_238A61E0C();
      }

      else
      {
        a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        a6 = 0;
        v160 = v8 & 0xC000000000000001;
        v38 = v8 & 0xFFFFFFFFFFFFFF8;
        v39 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v160)
          {
            v40 = MEMORY[0x23EE6EC60](a6, v8);
          }

          else
          {
            if (a6 >= *(v38 + 16))
            {
              goto LABEL_107;
            }

            v40 = *(v8 + 8 * a6 + 32);
          }

          v41 = v40;
          v42 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            break;
          }

          v43 = v8;
          v44 = [v40 identifier];
          v45 = sub_238A61BAC();
          v47 = v46;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_238A56B70(0, *(v39 + 2) + 1, 1, v39);
          }

          v49 = *(v39 + 2);
          v48 = *(v39 + 3);
          if (v49 >= v48 >> 1)
          {
            v39 = sub_238A56B70((v48 > 1), v49 + 1, 1, v39);
          }

          *(v39 + 2) = v49 + 1;
          v50 = &v39[16 * v49];
          *(v50 + 4) = v45;
          *(v50 + 5) = v47;
          ++a6;
          v8 = v43;
          if (v42 == a3)
          {
            goto LABEL_35;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_35:

      v51 = MEMORY[0x23EE6EAF0](v39, MEMORY[0x277D837D0]);
      v53 = v52;

      v54 = sub_238A4398C(v51, v53, v165);

      *(buf + 14) = v54;
      _os_log_impl(&dword_238A41000, log, v148, "updatingExtensions: on device: %s in db: %s", buf, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE6F590](v146, -1, -1);
      MEMORY[0x23EE6F590](buf, -1, -1);

      a6 = v150;
      a3 = 0x278A5E000;
      v12 = v152;
      v13 = v154;
    }

    else
    {
    }

    v55 = v13 ? sub_238A61E0C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v146 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v12)
    {
      goto LABEL_118;
    }

    v56 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v56)
    {
      goto LABEL_119;
    }

LABEL_41:
    log = (v147 & 0xC000000000000001);
    swift_beginAccess();
    v12 = 0;
    v148 = v56;
    while (1)
    {
      if (log)
      {
        v60 = MEMORY[0x23EE6EC60](v12, v147);
        v61 = __OFADD__(v12, 1);
        v62 = v12 + 1;
        if (v61)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v12 >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v60 = *(v147 + 32 + 8 * v12);
        v61 = __OFADD__(v12, 1);
        v62 = v12 + 1;
        if (v61)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }
      }

      v153 = v62;
      v155 = v60;
      v63 = &v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
      v64 = *&v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier + 8];
      v65 = *&v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier] & 0xFFFFFFFFFFFFLL;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v65 = HIBYTE(v64) & 0xF;
      }

      if (v65)
      {
        break;
      }

      v13 = sub_238A61B5C();
      v75 = sub_238A61CCC();
      if (os_log_type_enabled(v13, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_238A41000, v13, v75, "Skipping extension update with empty identifier", v76, 2u);
        v77 = v76;
        a3 = 0x278A5E000;
        MEMORY[0x23EE6F590](v77, -1, -1);
      }

LABEL_45:
      v59 = v148;
      v12 = v153;
      v8 = v155;
LABEL_46:

      if (v12 == v59)
      {
        goto LABEL_119;
      }
    }

    v66 = v166;
    bufa = (v166 & 0xFFFFFFFFFFFFFF8);
    if (v166 >> 62)
    {
      v67 = sub_238A61E0C();
    }

    else
    {
      v67 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v161 = v66 & 0xC000000000000001;

    a6 = 0;
    while (1)
    {
      if (v67 == a6)
      {

        v13 = v155;
        v78 = sub_238A61B5C();
        v79 = sub_238A61CDC();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v164[0] = v81;
          *v80 = 136315138;
          v82 = *v63;
          v83 = v63[1];

          v8 = sub_238A4398C(v82, v83, v164);

          *(v80 + 4) = v8;
          _os_log_impl(&dword_238A41000, v78, v79, "adding extensionIdentifier: %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x23EE6F590](v81, -1, -1);
          MEMORY[0x23EE6F590](v80, -1, -1);
        }

        a6 = v150;
        v84 = *v63;
        v85 = v63[1];
        objc_allocWithZone(type metadata accessor for LiveLookupDBExtension());

        v86 = LiveLookupDBExtension.init(identifier:context:)(v84, v85, a1);
        [v86 setIsAppStoreVendable_];
        a3 = v146;
        if (v146 < -32768)
        {
          goto LABEL_109;
        }

        if (v146 >= 0x8000)
        {
          goto LABEL_110;
        }

        [v86 setPriority_];
        [v86 setIsInstalled_];
        [v86 setShouldRemove_];
        *a4 = 1;
        v8 = v86;
        MEMORY[0x23EE6EAC0]();
        if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v106 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_238A61C1C();
          a3 = v146;
        }

        v146 = a3 + 1;
        sub_238A61C3C();
        a3 = 0x278A5E000;
        v59 = v148;
        v12 = v153;
        goto LABEL_46;
      }

      v68 = v66 + 8 * a6;
      if (v161)
      {
        v69 = MEMORY[0x23EE6EC60](a6, v66);
      }

      else
      {
        if (a6 >= *(bufa + 2))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v69 = *(v68 + 32);
      }

      v70 = v69;
      v71 = [v69 *(a3 + 2696)];
      v8 = sub_238A61BAC();
      v73 = v72;

      if (v8 == *v63 && v73 == v63[1])
      {
        break;
      }

      v8 = sub_238A61E4C();

      if (v8)
      {
        goto LABEL_82;
      }

      v61 = __OFADD__(a6++, 1);
      if (v61)
      {
        goto LABEL_104;
      }
    }

LABEL_82:

    a3 = v155;
    v87 = sub_238A61B5C();
    v88 = sub_238A61CDC();
    v155 = a3;

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v164[0] = v8;
      *v89 = 136315138;
      v90 = *v63;
      a3 = v63[1];

      v91 = sub_238A4398C(v90, a3, v164);

      *(v89 + 4) = v91;
      _os_log_impl(&dword_238A41000, v87, v88, "extensionIdentifier in db: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EE6F590](v8, -1, -1);
      MEMORY[0x23EE6F590](v89, -1, -1);
    }

    if (v161)
    {
      v92 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_88;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_111;
    }

    v92 = *(v68 + 32);
LABEL_88:
    v93 = v92;
    v94 = [v92 isInstalled];

    if (v94)
    {
      goto LABEL_44;
    }

    a3 = v155;
    v95 = sub_238A61B5C();
    v96 = sub_238A61CDC();

    if (os_log_type_enabled(v95, v96))
    {
      v143 = a3;
      v97 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v164[0] = v8;
      *v97 = 136315138;
      v99 = *v63;
      v98 = v63[1];

      v100 = sub_238A4398C(v99, v98, v164);

      *(v97 + 4) = v100;
      _os_log_impl(&dword_238A41000, v95, v96, "setting extensionIdentifier to available %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EE6F590](v8, -1, -1);
      v101 = v97;
      a3 = v143;
      MEMORY[0x23EE6F590](v101, -1, -1);
    }

    if (v161)
    {
      v102 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_95;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_112;
    }

    v102 = *(v68 + 32);
LABEL_95:
    v103 = v102;
    [v102 setIsInstalled_];

    if (v161)
    {
      v104 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_99;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_113;
    }

    v104 = *(v68 + 32);
LABEL_99:
    v105 = v104;
    [v104 setShouldRemove_];

    if (v161)
    {
      v57 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_43;
    }

    if (a6 < *(bufa + 2))
    {
      v57 = *(v68 + 32);
LABEL_43:
      v58 = v57;
      [v57 setIsAppStoreVendable_];

      *a4 = 1;
LABEL_44:
      swift_beginAccess();
      v13 = sub_238A5411C(a6);
      swift_endAccess();
      a6 = v150;
      a3 = 0x278A5E000uLL;
      goto LABEL_45;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    swift_once();
  }

  __break(1u);
LABEL_118:
  v56 = sub_238A61E0C();
  if (v56)
  {
    goto LABEL_41;
  }

LABEL_119:
  v107 = sub_238A61B5C();
  v108 = sub_238A61CDC();
  buf = v107;
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    log = swift_slowAlloc();
    v164[0] = log;
    v156 = v109;
    *v109 = 136315138;
    swift_beginAccess();
    v110 = v166;
    if (v166 >> 62)
    {
      v111 = sub_238A61E0C();
    }

    else
    {
      v111 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v111)
    {
      a6 = 0;
      v112 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v110 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x23EE6EC60](a6, v110);
          v113 = 0x278A5E000;
          v114 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            goto LABEL_153;
          }
        }

        else
        {
          v113 = 0x278A5E000uLL;
          if (a6 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v13 = *(v110 + 8 * a6 + 32);
          v114 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v8 = sub_238A61E0C();
            v125 = 0x278A5E000;
            if (!v8)
            {
            }

LABEL_141:
            if (v8 >= 1)
            {
              v126 = v13 & 0xC000000000000001;

              v127 = 0;
              bufb = (v13 & 0xC000000000000001);
              v162 = v13;
              do
              {
                if (v126)
                {
                  v128 = MEMORY[0x23EE6EC60](v127, v13);
                }

                else
                {
                  v128 = *(v13 + 8 * v127 + 32);
                }

                v129 = v128;
                [(objc_class *)v128 setIsInstalled:0];
                v130 = v129;
                v131 = sub_238A61B5C();
                v132 = sub_238A61CDC();

                if (os_log_type_enabled(v131, v132))
                {
                  v133 = swift_slowAlloc();
                  v134 = swift_slowAlloc();
                  v163 = v134;
                  *v133 = 136315138;
                  v135 = [v130 *(v125 + 2696)];
                  sub_238A61BAC();
                  v136 = v8;

                  a6 = v150;
                  v137 = sub_238A61BBC();
                  v139 = sub_238A4398C(v137, v138, &v163);
                  v125 = 0x278A5E000;

                  *(v133 + 4) = v139;
                  v8 = v136;
                  v13 = v162;
                  _os_log_impl(&dword_238A41000, v131, v132, "setting dbExtension to not installed: %s", v133, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v134);
                  MEMORY[0x23EE6F590](v134, -1, -1);
                  v140 = v133;
                  v126 = bufb;
                  MEMORY[0x23EE6F590](v140, -1, -1);
                }

                *a4 = 1;
                v141 = v130;
                MEMORY[0x23EE6EAC0]();
                if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v142 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_238A61C1C();
                  v125 = 0x278A5E000;
                }

                ++v127;
                sub_238A61C3C();
              }

              while (v8 != v127);
            }

            __break(1u);
LABEL_158:
            v15 = v147;
            v16 = sub_238A61E0C();
            goto LABEL_5;
          }
        }

        v115 = [v13 *(v113 + 2696)];
        v12 = sub_238A61BAC();
        v117 = v116;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_238A56B70(0, *(v112 + 2) + 1, 1, v112);
        }

        v119 = *(v112 + 2);
        v118 = *(v112 + 3);
        v13 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          v112 = sub_238A56B70((v118 > 1), v119 + 1, 1, v112);
        }

        *(v112 + 2) = v13;
        v120 = &v112[16 * v119];
        *(v120 + 4) = v12;
        *(v120 + 5) = v117;
        ++a6;
        if (v114 == v111)
        {
          goto LABEL_138;
        }
      }
    }

    v112 = MEMORY[0x277D84F90];
LABEL_138:

    v121 = MEMORY[0x23EE6EAF0](v112, MEMORY[0x277D837D0]);
    v123 = v122;

    v124 = sub_238A4398C(v121, v123, v164);

    *(v156 + 1) = v124;
    _os_log_impl(&dword_238A41000, buf, v108, "dbExtensions: %s)", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(log);
    MEMORY[0x23EE6F590](log, -1, -1);
    MEMORY[0x23EE6F590](v156, -1, -1);

    a6 = v150;
  }

  else
  {
  }

  swift_beginAccess();
  v13 = v166;
  if (v166 >> 62)
  {
    goto LABEL_155;
  }

  v8 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v125 = 0x278A5E000uLL;
  if (v8)
  {
    goto LABEL_141;
  }
}

uint64_t sub_238A5411C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_238A56D70(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_238A541AC(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v75 = a6;
  v71 = a5;
  v77 = a1;
  v78 = a7;
  v81[1] = *MEMORY[0x277D85DE8];
  v10 = sub_238A61A9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v69 - v18;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v19 = sub_238A61B7C();
  v20 = __swift_project_value_buffer(v19, qword_280B278D8);

  v21 = a4;
  v22 = sub_238A61B5C();
  v23 = sub_238A61CDC();

  v24 = os_log_type_enabled(v22, v23);
  v79 = v21;
  v72 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v76 = v20;
    v69 = v26;
    v81[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_238A4398C(a2, a3, v81);
    *(v25 + 12) = 2080;
    v27 = [v21 identifier];
    v28 = v11;
    v29 = v27;
    v30 = a3;
    v31 = sub_238A61BAC();
    v33 = v32;

    v34 = v31;
    a3 = v30;
    v35 = sub_238A4398C(v34, v33, v81);

    *(v25 + 14) = v35;
    v11 = v28;
    v21 = v79;
    _os_log_impl(&dword_238A41000, v22, v23, "updateBlockingInfo for %s with %s", v25, 0x16u);
    v36 = v69;
    swift_arrayDestroy();
    v37 = v36;
    v20 = v76;
    MEMORY[0x23EE6F590](v37, -1, -1);
    MEMORY[0x23EE6F590](v25, -1, -1);
  }

  v38 = [v21 objectID];
  v81[0] = 0;
  v39 = v77;
  v40 = [v77 existingObjectWithID:v38 error:v81];

  v41 = v81[0];
  if (v40)
  {
    type metadata accessor for LiveLookupDBExtension();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v43 = v42;
      v76 = v20;
      v44 = v70;
      (*(v11 + 56))(v70, 1, 1, v10);
      v45 = v41;
      v46 = LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(v72, a3, v43, v44, v39);
      sub_238A42F4C(v44, &qword_27DF4B3D8, &unk_238A63900);
      v47 = v46;
      v48 = v10;
      if (!v46)
      {
        type metadata accessor for BlockingInfo();
        v47 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      }

      v79 = v47;
      v49 = v47;
      v50 = sub_238A61B9C();
      [v49 setHandle_];

      [v49 setShouldBlock_];
      v51 = v73;
      sub_238A61A8C();
      v52 = v74;
      sub_238A61A5C();
      v53 = *(v11 + 8);
      v53(v51, v48);
      v54 = sub_238A61A6C();
      v53(v52, v48);
      [v49 setExpiration_];

      [v49 setDbExtension_];
      v55 = sub_238A61B5C();
      v56 = sub_238A61CDC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        *(v57 + 4) = v49;
        *v58 = v79;
        v59 = v49;
        _os_log_impl(&dword_238A41000, v55, v56, "saving blockingInfo %@", v57, 0xCu);
        sub_238A42F4C(v58, &qword_27DF4B3C8, &qword_238A638F0);
        MEMORY[0x23EE6F590](v58, -1, -1);
        MEMORY[0x23EE6F590](v57, -1, -1);

        v40 = v59;
      }

      else
      {
      }

      goto LABEL_16;
    }

    v62 = v41;
  }

  else
  {
    v60 = v81[0];
    v61 = sub_238A6197C();

    swift_willThrow();
    v80 = 0;
  }

  v63 = v79;
  v40 = sub_238A61B5C();
  v64 = sub_238A61CCC();

  if (os_log_type_enabled(v40, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = [v63 objectID];
    *(v65 + 4) = v67;
    *v66 = v67;
    _os_log_impl(&dword_238A41000, v40, v64, "Failed to get extension in context for objectID: %@", v65, 0xCu);
    sub_238A42F4C(v66, &qword_27DF4B3C8, &qword_238A638F0);
    MEMORY[0x23EE6F590](v66, -1, -1);
    MEMORY[0x23EE6F590](v65, -1, -1);
  }

LABEL_16:

  *v78 = 0;
  v68 = *MEMORY[0x277D85DE8];
}

void sub_238A548A0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  LODWORD(v133) = a5;
  v138 = a3;
  v139 = a4;
  v10 = sub_238A61A9C();
  v137 = *(v10 - 8);
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v10);
  v135 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 objectID];
  v14 = [a1 objectWithID_];

  v134 = type metadata accessor for LiveLookupDBExtension();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v70 = sub_238A61B7C();
    __swift_project_value_buffer(v70, qword_280B278D8);
    v71 = a2;
    v72 = sub_238A61B5C();
    v73 = sub_238A61CCC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = [v71 objectID];
      *(v74 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&dword_238A41000, v72, v73, "Failed to get extension in context for objectID: %@", v74, 0xCu);
      sub_238A42F4C(v75, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v75, -1, -1);
      MEMORY[0x23EE6F590](v74, -1, -1);
    }

    v59 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v130 = v10;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v17 = sub_238A61B7C();
  v18 = __swift_project_value_buffer(v17, qword_280B278D8);
  v19 = v139;

  v20 = v14;
  v21 = sub_238A61B5C();
  v22 = sub_238A61CDC();

  v23 = os_log_type_enabled(v21, v22);
  v131 = a1;
  v136 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v140 = v129;
    *v24 = 136315394;
    *(v24 + 4) = sub_238A4398C(v138, v19, &v140);
    *(v24 + 12) = 2080;
    v25 = [v16 identityInfo];
    v132 = v18;
    v26 = v20;
    v27 = v25;
    type metadata accessor for IdentityInfo();
    LODWORD(v128) = v22;
    sub_238A572B8(&qword_27DF4B418, type metadata accessor for IdentityInfo);
    sub_238A61C8C();

    v28 = sub_238A61C9C();
    v30 = v29;

    v31 = sub_238A4398C(v28, v30, &v140);
    v20 = v26;
    v18 = v132;

    *(v24 + 14) = v31;
    _os_log_impl(&dword_238A41000, v21, v128, "fetchIdentityInfo for %s from %s", v24, 0x16u);
    v32 = v129;
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v32, -1, -1);
    MEMORY[0x23EE6F590](v24, -1, -1);
  }

  if (![v16 isEnabled] || !objc_msgSend(v16, sel_isInstalled))
  {
    v60 = v20;
    v61 = sub_238A61B5C();
    v62 = sub_238A61CDC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v140 = v64;
      *v63 = 136315138;
      v65 = [v16 identityInfo];
      type metadata accessor for IdentityInfo();
      sub_238A572B8(&qword_27DF4B418, type metadata accessor for IdentityInfo);
      sub_238A61C8C();
      v139 = v60;

      v66 = sub_238A61C9C();
      v68 = v67;

      v69 = sub_238A4398C(v66, v68, &v140);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_238A41000, v61, v62, "%s not enabled and installed", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23EE6F590](v64, -1, -1);
      MEMORY[0x23EE6F590](v63, -1, -1);
    }

    else
    {
    }

    v59 = 0;
    goto LABEL_26;
  }

  v33 = v20;
  v129 = v16;
  v132 = v18;
  v34 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v35 = sub_238A61B9C();
  v36 = [v34 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_238A638C0;
  v38 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v39 = sub_238A61B9C();
  v40 = [v38 initWithKey:v39 ascending:1];

  *(v37 + 32) = v40;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v41 = sub_238A61BEC();

  [v36 setSortDescriptors_];

  if (v133)
  {
    sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
    v42 = swift_allocObject();
    *(v42 + 1) = xmmword_238A638D0;
    v42[7] = MEMORY[0x277D837D0];
    v42[8] = sub_238A57194();
    v43 = v139;
    v42[4] = v138;
    v42[5] = v43;

    v44 = v135;
    sub_238A61A8C();
    v45 = sub_238A61A6C();
    (*(v137 + 8))(v44, v130);
    v42[12] = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    v42[13] = sub_238A57250();
    v42[9] = v45;
    v42[17] = v134;
    v42[18] = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension);
    v42[14] = v129;
    v46 = v33;
    v47 = sub_238A61CBC();
    [v36 setPredicate_];

    v48 = sub_238A43010(v36, v131, type metadata accessor for IdentityInfo);
    v49 = sub_238A61B5C();
    v50 = sub_238A61CDC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v140 = v139;
      *v51 = 136315138;
      v52 = type metadata accessor for IdentityInfo();
      v53 = MEMORY[0x23EE6EAF0](v48, v52);
      v42 = v46;
      v55 = sub_238A4398C(v53, v54, &v140);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_238A41000, v49, v50, "identityInfo %s", v51, 0xCu);
      v56 = v139;
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x23EE6F590](v56, -1, -1);
      MEMORY[0x23EE6F590](v51, -1, -1);
    }

    if (v48 >> 62)
    {
      v57 = sub_238A61E0C();
      if (v57)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v57 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
LABEL_13:
        if ((v48 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x23EE6EC60](0, v48);
          goto LABEL_16;
        }

        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v58 = *(v48 + 32);
LABEL_16:
          v59 = v58;

LABEL_53:

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_47;
      }
    }

    v59 = 0;
LABEL_26:
    *a6 = v59;
    return;
  }

  v133 = a6;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_238A638B0;
  v78 = sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v79 = swift_allocObject();
  v125 = xmmword_238A638D0;
  *(v79 + 16) = xmmword_238A638D0;
  *(v79 + 56) = MEMORY[0x277D837D0];
  v123 = sub_238A57194();
  *(v79 + 64) = v123;
  v80 = v139;
  *(v79 + 32) = v138;
  *(v79 + 40) = v80;

  v81 = v135;
  sub_238A61A8C();
  v82 = sub_238A61A6C();
  v83 = *(v137 + 8);
  v137 += 8;
  v124 = v83;
  v83(v81, v130);
  v122 = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v79 + 96) = v122;
  v121 = sub_238A57250();
  *(v79 + 104) = v121;
  *(v79 + 72) = v82;
  *(v79 + 136) = v134;
  v120 = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension);
  *(v79 + 144) = v120;
  *(v79 + 112) = v129;
  v84 = v33;
  v127 = "rming save error";
  v128 = v84;
  *(v77 + 32) = sub_238A61CBC();
  *(v77 + 40) = sub_238A61CBC();
  v85 = sub_238A61BEC();

  v86 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v36 setPredicate_];
  v87 = v131;
  v88 = sub_238A43010(v36, v131, type metadata accessor for IdentityInfo);
  v89 = sub_238A61B5C();
  v42 = sub_238A61CDC();
  if (os_log_type_enabled(v89, v42))
  {
    v90 = swift_slowAlloc();
    v119 = v78;
    v91 = v86;
    v92 = v90;
    v93 = swift_slowAlloc();
    v140 = v93;
    *v92 = 136315138;
    v94 = type metadata accessor for IdentityInfo();
    v95 = MEMORY[0x23EE6EAF0](v88, v94);
    v97 = sub_238A4398C(v95, v96, &v140);
    v87 = v131;

    *(v92 + 4) = v97;
    _os_log_impl(&dword_238A41000, v89, v42, "identityInfo %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x23EE6F590](v93, -1, -1);
    v98 = v92;
    v86 = v91;
    MEMORY[0x23EE6F590](v98, -1, -1);
  }

  if (v88 >> 62)
  {
    v57 = sub_238A61E0C();
    if (v57)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v57 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_31:
      if ((v88 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x23EE6EC60](0, v88);
        a6 = v133;
      }

      else
      {
        a6 = v133;
        if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          v108 = v57;
          v109 = sub_238A61E0C();
          v57 = v108;
          a6 = v133;
          if (!v109)
          {
            goto LABEL_49;
          }

          goto LABEL_40;
        }

        v59 = *(v88 + 32);
      }

      goto LABEL_26;
    }
  }

  v132 = v86;

  v99 = swift_allocObject();
  *(v99 + 16) = v125;
  v100 = v123;
  *(v99 + 56) = MEMORY[0x277D837D0];
  *(v99 + 64) = v100;
  *(v99 + 32) = v138;
  *(v99 + 40) = v139;

  v101 = v135;
  sub_238A61A8C();
  v102 = sub_238A61A6C();
  v124(v101, v130);
  v103 = v121;
  *(v99 + 96) = v122;
  *(v99 + 104) = v103;
  *(v99 + 72) = v102;
  v104 = v120;
  *(v99 + 136) = v134;
  *(v99 + 144) = v104;
  v105 = v128;
  *(v99 + 112) = v129;
  v42 = v105;
  v106 = sub_238A61CBC();
  [v36 setPredicate_];

  v57 = sub_238A43010(v36, v87, type metadata accessor for IdentityInfo);
  if (v57 >> 62)
  {
    goto LABEL_48;
  }

  a6 = v133;
  if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:

    v59 = 0;
    goto LABEL_50;
  }

LABEL_40:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v107 = MEMORY[0x23EE6EC60](0);
    goto LABEL_43;
  }

  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v107 = *(v57 + 32);
LABEL_43:
    v59 = v107;

LABEL_50:
    v110 = v59;
    v46 = sub_238A61B5C();
    v111 = sub_238A61CDC();

    if (os_log_type_enabled(v46, v111))
    {
      v112 = swift_slowAlloc();
      v139 = v42;
      v113 = v112;
      v114 = v36;
      v115 = swift_slowAlloc();
      *v113 = 138412290;
      *(v113 + 4) = v110;
      *v115 = v59;
      v116 = v110;
      _os_log_impl(&dword_238A41000, v46, v111, "Got %@ for empty identityInfo", v113, 0xCu);
      sub_238A42F4C(v115, &qword_27DF4B3C8, &qword_238A638F0);
      v117 = v115;
      v36 = v114;
      MEMORY[0x23EE6F590](v117, -1, -1);
      v118 = v113;
      v42 = v139;
      MEMORY[0x23EE6F590](v118, -1, -1);
    }

    goto LABEL_53;
  }

  __break(1u);
}

uint64_t sub_238A55924(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v74[1] = a8;
  LODWORD(v78) = a7;
  v85 = a6;
  v88 = a1;
  v89 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = v74 - v15;
  v83 = sub_238A61A1C();
  v16 = *(v83 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v83);
  v74[0] = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v74 - v21;
  v86 = sub_238A61A9C();
  v23 = *(v86 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v86);
  v27 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v87 = v74 - v28;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v29 = sub_238A61B7C();
  v30 = __swift_project_value_buffer(v29, qword_280B278D8);

  v31 = a4;
  v84 = v30;
  v32 = sub_238A61B5C();
  v33 = sub_238A61CDC();

  v34 = os_log_type_enabled(v32, v33);
  v81 = v16;
  v82 = a3;
  v79 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    LODWORD(v77) = a5;
    v37 = v36;
    v90 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_238A4398C(v89, a3, &v90);
    *(v35 + 12) = 2080;
    v38 = v23;
    v39 = [v31 identifier];
    v40 = sub_238A61BAC();
    v42 = v41;

    v43 = sub_238A4398C(v40, v42, &v90);

    *(v35 + 14) = v43;
    v23 = v38;
    _os_log_impl(&dword_238A41000, v32, v33, "updateIdentityInfo for %s with %s", v35, 0x16u);
    swift_arrayDestroy();
    v44 = v37;
    a5 = v77;
    MEMORY[0x23EE6F590](v44, -1, -1);
    MEMORY[0x23EE6F590](v35, -1, -1);
  }

  if (a5)
  {
    v45 = a5;
  }

  else
  {
    v45 = 5;
  }

  result = sub_238A61A8C();
  if (((60 * v45) & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_238A61A5C();
    v47 = v86;
    v76 = v23[1];
    v76(v27, v86);
    v48 = v23[7];
    v77 = v23 + 7;
    v75 = v48;
    v48(v22, 1, 1, v47);
    v49 = v82;
    v50 = v79;
    v51 = LiveLookupStore.fetchIdentityInfo(for:with:expiration:context:)(v89, v82, v79, v22, v88);
    sub_238A42F4C(v22, &qword_27DF4B3D8, &unk_238A63900);
    if (!v51)
    {
      type metadata accessor for IdentityInfo();
      v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v51 = [v52 initWithContext_];
    }

    v53 = v51;
    v54 = sub_238A61B9C();
    [v53 setHandle_];

    [v53 setType_];
    if (a9)
    {
      v55 = sub_238A61B9C();
      [v53 setName_];
    }

    v56 = sub_238A61B9C();
    [v53 setHandle_];

    v57 = v80;
    sub_238A57858(a10, v80, &qword_27DF4B3B0, &qword_238A638E0);
    v58 = v81;
    v59 = v83;
    if ((*(v81 + 48))(v57, 1, v83) == 1)
    {
      sub_238A42F4C(v57, &qword_27DF4B3B0, &qword_238A638E0);
    }

    else
    {
      v60 = *(v58 + 32);
      v78 = v51;
      v61 = v50;
      v62 = v74[0];
      v60(v74[0], v57, v59);
      sub_238A6199C();
      v63 = sub_238A61B9C();

      [v53 setIconURL_];

      v64 = v62;
      v50 = v61;
      v51 = v78;
      (*(v58 + 8))(v64, v59);
    }

    v65 = sub_238A61A6C();
    [v53 setExpiration_];

    [v53 setDbExtension_];
    sub_238A61A8C();
    v75(v22, 0, 1, v86);
    v66 = LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(v89, v49, v50, v22, v88);
    sub_238A42F4C(v22, &qword_27DF4B3D8, &unk_238A63900);
    if (v66)
    {
      if (([v66 shouldBlock] & 1) == 0)
      {
        v67 = sub_238A61A6C();
        [v66 setExpiration_];

        v66 = v67;
      }
    }

    v68 = v53;
    v69 = sub_238A61B5C();
    v70 = sub_238A61CDC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v51;
      v73 = v68;
      _os_log_impl(&dword_238A41000, v69, v70, "saving identityInfo %@", v71, 0xCu);
      sub_238A42F4C(v72, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v72, -1, -1);
      MEMORY[0x23EE6F590](v71, -1, -1);
    }

    sub_238A524E4();
    return (v76)(v87, v86);
  }

  return result;
}

void sub_238A56110(int a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = a4;
  a2();
  if (v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v8 = sub_238A61B7C();
    __swift_project_value_buffer(v8, qword_280B278D8);
    v9 = v4;
    v10 = sub_238A61B5C();
    v11 = sub_238A61CCC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_238A4398C(0xD00000000000001BLL, 0x8000000238A65790, &v25);
      *(v12 + 12) = 2112;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_238A41000, v10, v11, "%s: %@", v12, 0x16u);
      sub_238A42F4C(v13, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23EE6F590](v14, -1, -1);
      MEMORY[0x23EE6F590](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v17 = sub_238A61B7C();
    __swift_project_value_buffer(v17, qword_280B278D8);
    v18 = v7;
    v19 = sub_238A61B5C();
    v20 = sub_238A61CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = [v18 hasChanges];

      _os_log_impl(&dword_238A41000, v19, v20, "viewContextPerforming context.hasChanges: %{BOOL}d", v21, 8u);
      MEMORY[0x23EE6F590](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    if ([v18 hasChanges])
    {
      v22 = sub_238A61B5C();
      v23 = sub_238A61CDC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_238A41000, v22, v23, "viewContextPerforming saving", v24, 2u);
        MEMORY[0x23EE6F590](v24, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v18);
    }
  }
}

uint64_t sub_238A5649C(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t, uint64_t, id))
{
  v10 = a4;
  v11 = a5(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v10);

  if (!v5)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v12 = sub_238A61B7C();
    __swift_project_value_buffer(v12, qword_280B278D8);
    v13 = v10;
    v14 = sub_238A61B5C();
    v15 = sub_238A61CDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = [v13 hasChanges];

      _os_log_impl(&dword_238A41000, v14, v15, "viewContextPerforming context.hasChanges: %{BOOL}d", v16, 8u);
      MEMORY[0x23EE6F590](v16, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    if ([v13 hasChanges])
    {
      v17 = sub_238A61B5C();
      v18 = sub_238A61CDC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_238A41000, v17, v18, "viewContextPerforming saving", v19, 2u);
        MEMORY[0x23EE6F590](v19, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v13);
    }
  }

  return v11;
}

void sub_238A566E8(int a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, void *a4)
{
  v8 = a4;
  sub_238A59620(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v8);

  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v9 = sub_238A61B7C();
    __swift_project_value_buffer(v9, qword_280B278D8);
    v10 = v8;
    v11 = sub_238A61B5C();
    v12 = sub_238A61CDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = [v10 hasChanges];

      _os_log_impl(&dword_238A41000, v11, v12, "viewContextPerforming context.hasChanges: %{BOOL}d", v13, 8u);
      MEMORY[0x23EE6F590](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    if ([v10 hasChanges])
    {
      v14 = sub_238A61B5C();
      v15 = sub_238A61CDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_238A41000, v14, v15, "viewContextPerforming saving", v16, 2u);
        MEMORY[0x23EE6F590](v16, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v10);
    }
  }
}

uint64_t sub_238A56930(int a1, void (*a2)(uint64_t **__return_ptr, uint64_t), uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = sub_238A59400(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v8);

  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v11 = v8;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [v11 hasChanges];

      _os_log_impl(&dword_238A41000, v12, v13, "viewContextPerforming context.hasChanges: %{BOOL}d", v14, 8u);
      MEMORY[0x23EE6F590](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    if ([v11 hasChanges])
    {
      v15 = sub_238A61B5C();
      v16 = sub_238A61CDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_238A41000, v15, v16, "viewContextPerforming saving", v17, 2u);
        MEMORY[0x23EE6F590](v17, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v11);
    }
  }

  return v9;
}

char *sub_238A56B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B408, &qword_238A63A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_238A56C7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B428, &qword_238A63AA0);
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

uint64_t sub_238A56D70(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_238A61E0C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

id sub_238A56DD4()
{
  v0 = sub_238A61A1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A619AC();
  v5 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v6 = sub_238A619BC();
  v7 = [v5 initWithURL_];

  [v7 setShouldInferMappingModelAutomatically_];
  [v7 setShouldMigrateStoreAutomatically_];
  [v7 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  sub_238A42AB4(0, &qword_280B27718, 0x277CCABB0);
  v8 = sub_238A61D3C();
  [v7 setOption:v8 forKey:*MEMORY[0x277CBE210]];

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_238A56FD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  result = sub_238A57010();
  *a1 = result;
  return result;
}

unint64_t sub_238A57194()
{
  result = qword_27DF4B3C0;
  if (!qword_27DF4B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B3C0);
  }

  return result;
}

uint64_t sub_238A571F8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

unint64_t sub_238A57250()
{
  result = qword_280B27478;
  if (!qword_280B27478)
  {
    sub_238A42AB4(255, &qword_280B27480, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B27478);
  }

  return result;
}

uint64_t sub_238A572B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238A5734C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238A56930(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_238A573C0()
{
  result = qword_27DF4B3F8;
  if (!qword_27DF4B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B3F8);
  }

  return result;
}

void sub_238A57450()
{
  v1 = *(v0 + 16);
  [v1 setIsInstalled_];
  [v1 setShouldRemove_];
  sub_238A524E4();
}

void sub_238A574E0(_BYTE *a1@<X8>)
{
  sub_238A566E8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = v4 & 1;
  }
}

unint64_t sub_238A5751C()
{
  result = qword_27DF4B400;
  if (!qword_27DF4B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238A577FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238A5781C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_238A57858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238A578C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for IdentityInfo);
  *a2 = result;
  return result;
}

uint64_t sub_238A57938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for BlockingInfo);
  *a2 = result;
  return result;
}

uint64_t sub_238A57984@<X0>(uint64_t (*a1)(unint64_t, unint64_t, uint64_t, uint64_t, id)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A5649C(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_238A579E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_238A57A2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_238A57AD8()
{
  v0 = sub_238A61B7C();
  __swift_allocate_value_buffer(v0, qword_280B278D8);
  __swift_project_value_buffer(v0, qword_280B278D8);
  return sub_238A61B6C();
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

uint64_t StoreWrapper.__allocating_init(containerName:modelURL:storeDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = sub_238A58ED0(a3);
  if (v4)
  {
    v11 = sub_238A61A1C();
    (*(*(v11 - 8) + 8))(a3, v11);
  }

  else
  {
    v12 = v10;
    type metadata accessor for StoreWrapper();
    v5 = swift_allocObject();
    StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, v12, a4);
    v13 = sub_238A61A1C();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  return v5;
}

uint64_t sub_238A57CDC()
{
  v1 = *v0;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v1);
  return sub_238A61ECC();
}

uint64_t sub_238A57D50()
{
  v1 = *v0;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v1);
  return sub_238A61ECC();
}

uint64_t StoreWrapper.__allocating_init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, a3, a4);
  return v8;
}

void *StoreWrapper.init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B440, &qword_238A63AE0);
  v9 = swift_allocObject();
  *(v9 + 36) = 0;
  v10 = (v9 + 36);
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v11 = v9 + 16;
  *(v9 + 32) = 2;
  v4[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B448, &qword_238A63AE8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v4[5] = v12;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  v13 = a3;
  v14 = a4;

  os_unfair_lock_lock(v10);
  sub_238A43640(v11, v18);
  os_unfair_lock_unlock(v10);

  v15 = v18[0];
  v16 = v18[1];

  return v4;
}

id sub_238A57F40()
{
  v2 = *(v0 + 64);
  v3 = sub_238A5818C(v2);
  if (!v1)
  {
    v4 = v3;
    v5 = v2;
    v6 = v4;
    v7 = [v6 viewContext];
    [v7 setAutomaticallyMergesChangesFromParent_];

    v8 = [v6 viewContext];
    [v8 setShouldRefreshAfterSave_];

    v9 = [v6 viewContext];
    [v9 setMergePolicy_];

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v2 = v5;
    v11 = v6;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = v2;
      v17 = v11;
      v18 = sub_238A61BBC();
      v20 = sub_238A4398C(v18, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_238A41000, v12, v13, "Loaded container wrapper: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23EE6F590](v15, -1, -1);
      MEMORY[0x23EE6F590](v14, -1, -1);
    }
  }

  return v2;
}

id sub_238A5818C(void *a1)
{
  v2 = v1;
  v38[1] = *MEMORY[0x277D85DE8];
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);

  v5 = a1;
  v6 = sub_238A61B5C();
  v7 = sub_238A61CDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = v2[9];
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = v5;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&dword_238A41000, v6, v7, "Loading container with storeDescription: %@ model: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3C8, &qword_238A638F0);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v9, -1, -1);
    MEMORY[0x23EE6F590](v8, -1, -1);
  }

  v13 = v2[6];
  v14 = v2[7];
  v15 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v16 = sub_238A61B9C();
  v17 = [v15 initWithName:v16 managedObjectModel:v5];

  v18 = v2[9];
  sub_238A42AB4(0, &qword_280B27718, 0x277CCABB0);
  v19 = sub_238A61D3C();
  [v18 setOption:v19 forKey:*MEMORY[0x277CBE210]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_238A638C0;
  *(v20 + 32) = v18;
  sub_238A42AB4(0, &qword_280B27720, 0x277CBE4E0);
  v21 = v18;
  v22 = sub_238A61BEC();

  [v17 setPersistentStoreDescriptions_];

  v23 = sub_238A61B5C();
  v24 = sub_238A61CDC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v21;
    *v26 = v21;
    v27 = v21;
    _os_log_impl(&dword_238A41000, v23, v24, "MessageContainer: Attempting to load persistent store with description: %{public}@", v25, 0xCu);
    sub_238A5933C(v26);
    MEMORY[0x23EE6F590](v26, -1, -1);
    MEMORY[0x23EE6F590](v25, -1, -1);
  }

  v38[0] = 0;
  if ([v17 load_])
  {
    v28 = v38[0];
    v29 = v17;
    v30 = sub_238A61B5C();
    v31 = sub_238A61CDC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_238A41000, v30, v31, "Loaded container: %@", v32, 0xCu);
      sub_238A5933C(v33);
      MEMORY[0x23EE6F590](v33, -1, -1);
      MEMORY[0x23EE6F590](v32, -1, -1);
    }
  }

  else
  {
    v35 = v38[0];
    sub_238A6197C();

    swift_willThrow();
  }

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_238A5862C(uint64_t a1, unint64_t a2, int a3, id a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  if ([a4 save_])
  {
    v7 = v24[0];
  }

  else
  {
    v8 = v24[0];
    v9 = sub_238A6197C();

    swift_willThrow();
    if (a2)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0x8000000238A659E0;
    }

    v12 = qword_280B27740;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_238A61B7C();
    __swift_project_value_buffer(v13, qword_280B278D8);

    v14 = v9;
    v15 = sub_238A61B5C();
    v16 = sub_238A61CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 136315394;
      v20 = sub_238A4398C(v10, v11, v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v9;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_238A41000, v15, v16, "%s: %@", v17, 0x16u);
      sub_238A5933C(v18);
      MEMORY[0x23EE6F590](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EE6F590](v19, -1, -1);
      MEMORY[0x23EE6F590](v17, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238A588AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  v7 = v3;
  if (v3)
  {
    if (a2)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0x8000000238A659E0;
    }

    v10 = qword_280B27740;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_238A61B7C();
    __swift_project_value_buffer(v11, qword_280B278D8);

    v12 = v7;
    v13 = sub_238A61B5C();
    v14 = sub_238A61CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v15 = 136315394;
      v18 = sub_238A4398C(v8, v9, &v21);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_238A41000, v13, v14, "%s: %@", v15, 0x16u);
      sub_238A5933C(v16);
      MEMORY[0x23EE6F590](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6F590](v17, -1, -1);
      MEMORY[0x23EE6F590](v15, -1, -1);
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

void sub_238A58ABC()
{

  v1 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);

  if (!v0)
  {
    MEMORY[0x28223BE20](v2);
    sub_238A61D0C();
  }
}

void sub_238A58BAC(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_238A588AC(0xD00000000000001BLL, 0x8000000238A65790, sub_238A59864);
  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v7 = sub_238A61B7C();
    __swift_project_value_buffer(v7, qword_280B278D8);
    v8 = a4;
    v9 = sub_238A61B5C();
    v10 = sub_238A61CDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [v8 hasChanges];

      _os_log_impl(&dword_238A41000, v9, v10, "viewContextPerforming context.hasChanges: %{BOOL}d", v11, 8u);
      MEMORY[0x23EE6F590](v11, -1, -1);
    }

    else
    {

      v9 = v8;
    }

    if ([v8 hasChanges])
    {
      v12 = sub_238A61B5C();
      v13 = sub_238A61CDC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_238A41000, v12, v13, "viewContextPerforming saving", v14, 2u);
        MEMORY[0x23EE6F590](v14, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v8);
    }
  }
}

uint64_t StoreWrapper.deinit()
{
  v1 = *(v0 + 24);
  sub_238A5921C(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t StoreWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_238A5921C(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_238A58ED0(uint64_t a1)
{
  v2 = sub_238A61A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v7 = sub_238A61B7C();
  __swift_project_value_buffer(v7, qword_280B278D8);
  v8 = sub_238A61B5C();
  v9 = sub_238A61CDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238A41000, v8, v9, "MessageContainer: Attempting to load managed object model", v10, 2u);
    MEMORY[0x23EE6F590](v10, -1, -1);
  }

  v11 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v12 = sub_238A619BC();
  v13 = [v11 initWithContentsOfURL_];

  if (!v13)
  {
    (*(v3 + 16))(v6, a1, v2);
    v14 = sub_238A61B5C();
    v15 = sub_238A61CCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446210;
      sub_238A598E8();
      v18 = sub_238A61E3C();
      v19 = v3;
      v21 = v20;
      (*(v19 + 8))(v6, v2);
      v22 = sub_238A4398C(v18, v21, &v26);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_238A41000, v14, v15, "MessageContainer: Error initializing mom from: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6F590](v17, -1, -1);
      MEMORY[0x23EE6F590](v16, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_238A59894();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_238A5921C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14IdentityLookup12StoreWrapperC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A59288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_238A592D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_238A59314(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_238A5933C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3C8, &qword_238A638F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238A593A4(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_238A59400(uint64_t a1, unint64_t a2, void (*a3)(uint64_t **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v23, a5);
  v8 = v5;
  if (!v5)
  {
    return v23;
  }

  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x8000000238A659E0;
  }

  v11 = qword_280B27740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_238A61B7C();
  __swift_project_value_buffer(v12, qword_280B278D8);

  v13 = v8;
  v14 = sub_238A61B5C();
  v15 = sub_238A61CCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136315394;
    v19 = sub_238A4398C(v9, v10, &v23);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_238A41000, v14, v15, "%s: %@", v16, 0x16u);
    sub_238A5933C(v17);
    MEMORY[0x23EE6F590](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EE6F590](v18, -1, -1);
    MEMORY[0x23EE6F590](v16, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

uint64_t sub_238A59620(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v24, a5);
  v8 = v5;
  if (!v5)
  {
    return v24;
  }

  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x8000000238A659E0;
  }

  v11 = qword_280B27740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_238A61B7C();
  __swift_project_value_buffer(v12, qword_280B278D8);

  v13 = v8;
  v14 = sub_238A61B5C();
  v15 = sub_238A61CCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136315394;
    v19 = sub_238A4398C(v9, v10, &v23);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_238A41000, v14, v15, "%s: %@", v16, 0x16u);
    sub_238A5933C(v17);
    MEMORY[0x23EE6F590](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EE6F590](v18, -1, -1);
    MEMORY[0x23EE6F590](v16, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

unint64_t sub_238A59894()
{
  result = qword_27DF4B450;
  if (!qword_27DF4B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B450);
  }

  return result;
}

unint64_t sub_238A598E8()
{
  result = qword_27DF4B458;
  if (!qword_27DF4B458)
  {
    sub_238A61A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreWrapperError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoreWrapperError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238A59AA0()
{
  result = qword_27DF4B460;
  if (!qword_27DF4B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B460);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238A59B18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A59B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallLookupExtensionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v1);
  return sub_238A61ECC();
}

uint64_t sub_238A59C4C@<X0>(_BYTE *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [objc_opt_self() sharedInstance];
  v5 = sub_238A61B9C();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v10[4] = sub_238A59F84;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_238A59F8C;
  v10[3] = &block_descriptor_0;
  v7 = _Block_copy(v10);
  v8 = v3;

  [v4 getEnabledForExtensionWithIdentifier:v5 completionHandler:v7];
  _Block_release(v7);

  sub_238A61CEC();
  swift_beginAccess();
  *a1 = *(v2 + 16);
}

uint64_t sub_238A59DE4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v7 = sub_238A61B7C();
  __swift_project_value_buffer(v7, qword_280B278D8);
  v8 = a2;
  v9 = sub_238A61B5C();
  v10 = sub_238A61CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_238A41000, v9, v10, "status = %{BOOL}d error = %@", v11, 0x12u);
    sub_238A5933C(v12);
    MEMORY[0x23EE6F590](v12, -1, -1);
    MEMORY[0x23EE6F590](v11, -1, -1);
  }

  swift_beginAccess();
  *(a4 + 16) = a1 & 1;
  return sub_238A61CFC();
}

void sub_238A59F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A5A030()
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v1 = sub_238A61B7C();
  __swift_project_value_buffer(v1, qword_280B278D8);
  v2 = sub_238A61B5C();
  v3 = sub_238A61CDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238A41000, v2, v3, "openSettings", v4, 2u);
    MEMORY[0x23EE6F590](v4, -1, -1);
  }

  v5 = [objc_opt_self() sharedInstance];
  v0[18] = v5;
  v0[2] = v0;
  v0[3] = sub_238A5A218;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_6;
  v0[14] = v6;
  [v5 openSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_238A5A38C;
  }

  else
  {
    v3 = sub_238A5A328;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5A328()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A5A38C()
{
  v1 = v0[18];
  v2 = v0[19];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_238A5A3FC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B478, &unk_238A63E48);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_238A5A4A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5A4C8, 0, 0);
}

uint64_t sub_238A5A4C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedInstance];
  v0[20] = v3;
  v4 = sub_238A61B9C();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_238A5A624;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_10;
  v0[14] = v5;
  [v3 resetExtensionWithIdentier:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A624()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_238A5BC08;
  }

  else
  {
    v3 = sub_238A5BC04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5A734(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5A754, 0, 0);
}

uint64_t sub_238A5A754()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedInstance];
  v0[20] = v3;
  v4 = sub_238A61B9C();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_238A5A8B0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_14;
  v0[14] = v5;
  [v3 refreshPIRParametersForLiveLookupExtensionWithIdentifier:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A8B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_238A5AA28;
  }

  else
  {
    v3 = sub_238A5A9C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5A9C0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238A5AA28()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_238A5AAA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5AAC0, 0, 0);
}

uint64_t sub_238A5AAC0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedInstance];
  v0[20] = v3;
  v4 = sub_238A61B9C();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_238A5A624;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_18;
  v0[14] = v5;
  [v3 refreshExtensionContextForLiveLookupExtensionWithIdentifier:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5AC1C()
{
  if (qword_280B27888 != -1)
  {
    swift_once();
  }

  return LiveLookupStore.installedExtensions()();
}

uint64_t sub_238A5AC74(char a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_238A5AC98, 0, 0);
}

uint64_t sub_238A5AC98()
{
  v26 = v0;
  v1 = v0;
  v2 = v0 + 80;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 144);
  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);
  v5 = v3;
  v6 = sub_238A61B5C();
  v7 = sub_238A61CDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 144);
    v9 = *(v1 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    v12 = [v8 identifier];
    v13 = sub_238A61BAC();
    v15 = v14;

    *(v1 + 80) = v13;
    *(v1 + 88) = v15;
    v16 = sub_238A61BBC();
    v18 = sub_238A4398C(v16, v17, &v25);

    *(v10 + 4) = v18;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_238A41000, v6, v7, "setting extension %s enabled=%{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE6F590](v11, -1, -1);
    MEMORY[0x23EE6F590](v10, -1, -1);
  }

  v19 = *(v1 + 144);
  v20 = *(v1 + 176);
  v21 = [objc_opt_self() sharedInstance];
  *(v1 + 152) = v21;
  v22 = [v19 identifier];
  *(v1 + 160) = v22;
  *(v1 + 16) = v1;
  *(v1 + 24) = sub_238A5AF80;
  v23 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_238A5A3FC;
  *(v1 + 104) = &block_descriptor_22;
  *(v1 + 112) = v23;
  [v21 setEnabled:v20 forExtensionWithIdentifier:v22 completionHandler:v2];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_238A5AF80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_238A5B11C;
  }

  else
  {
    v3 = sub_238A5B090;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5B090()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 176);

  [v2 setIsEnabled_];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238A5B11C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

void sub_238A5B194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    if (qword_280B27888 != -1)
    {
LABEL_31:
      swift_once();
    }

    v3 = LiveLookupStore.installedExtensions()();
    v4 = v3;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v21 = sub_238A61E0C();
    }

    else
    {
      v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v18 = v1;
    v19 = v2 + 32;
    v17 = 1;
    while (1)
    {
      if (v5 == v1)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v6 = (v19 + 16 * v5);
      v7 = *v6;
      v2 = v6[1];

      if (v21)
      {
        break;
      }

LABEL_6:

      v1 = v18;
LABEL_7:
      if (++v5 == v1)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE6EC60](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = [v9 identifier];
      v12 = sub_238A61BAC();
      v14 = v13;

      if (v12 == v7 && v14 == v2)
      {
        break;
      }

      v16 = sub_238A61E4C();

      if (v16)
      {
        goto LABEL_24;
      }

      ++v8;
      if (v1 == v21)
      {
        goto LABEL_6;
      }
    }

LABEL_24:

    v2 = v17;
    [v10 setPriority_];

    ++v17;
    v1 = v18;
    if (v2 + 1 == (v2 + 1))
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_26:

    sub_238A4E434();
  }
}

unint64_t sub_238A5B414()
{
  result = qword_27DF4B470;
  if (!qword_27DF4B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B470);
  }

  return result;
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.openSettings()()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A5B5C4;

  return v6();
}

uint64_t sub_238A5B5C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.reset(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238A5BC0C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.refreshPIRParameters(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238A5BC0C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.refreshExtensionContext(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238A5BC0C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.set(enabled:for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238A5BC0C;

  return v10(a1, a2);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id BlockingInfo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id BlockingInfo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BlockingInfo();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id BlockingInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockingInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id IdentityInfo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id IdentityInfo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for IdentityInfo();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id IdentityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_238A5BF34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_238A61BAC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_238A5BF8C(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_238A5C674(a4, a5);
  v11 = sub_238A61C8C();

  *a6 = v11;
}

void sub_238A5C018(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_238A5C674(a6, a7);
  v13 = sub_238A61C7C();
  [v12 *a8];
}

id sub_238A5C0B4()
{
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  return v1;
}

id LiveLookupDBExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveLookupDBExtension.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id LiveLookupDBExtension.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LiveLookupDBExtension();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id LiveLookupDBExtension.__allocating_init(context:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContext_];

  return v3;
}

uint64_t LiveLookupDBExtension.init(identifier:context:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = objc_opt_self();
    v7 = sub_238A61B9C();
    v8 = [v6 entityForName:v7 inManagedObjectContext:a3];

    if (v8)
    {
      v12.receiver = v3;
      v12.super_class = type metadata accessor for LiveLookupDBExtension();
      v9 = objc_msgSendSuper2(&v12, sel_initWithEntity_insertIntoManagedObjectContext_, v8, a3);
      v10 = sub_238A61B9C();

      [v9 setIdentifier_];

      return v9;
    }

    __break(1u);
  }

  result = sub_238A61DFC();
  __break(1u);
  return result;
}

id LiveLookupDBExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveLookupDBExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238A5C674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LiveCallerIDLookupExtensionContext.serviceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238A61A1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiveCallerIDLookupExtensionContext.tokenIssuerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveCallerIDLookupExtensionContext() + 20);
  v4 = sub_238A61A1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LiveCallerIDLookupExtensionContext()
{
  result = qword_27DF4B4D0;
  if (!qword_27DF4B4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiveCallerIDLookupExtensionContext.userTierToken.getter()
{
  v1 = v0 + *(type metadata accessor for LiveCallerIDLookupExtensionContext() + 24);
  v2 = *v1;
  sub_238A5C83C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_238A5C83C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t LiveCallerIDLookupExtensionContext.init(serviceURL:tokenIssuerURL:userTierToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_238A61A1C();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  result = (v11)(a5 + *(v12 + 20), a2, v10);
  v14 = (a5 + *(v12 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t static LiveCallerIDLookupExtensionContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v5 = *(v4 + 20);
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_238A5DA84(v7, v8, v10, v11);
}

uint64_t sub_238A5C9D8()
{
  v1 = 0x7373496E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x7265695472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5565636976726573;
  }
}

uint64_t sub_238A5CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238A5E048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238A5CA90(uint64_t a1)
{
  v2 = sub_238A5DBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A5CACC(uint64_t a1)
{
  v2 = sub_238A5DBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveCallerIDLookupExtensionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B488, &qword_238A63ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_238A5DBEC();
  sub_238A61EEC();
  LOBYTE(v16) = 0;
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B498, MEMORY[0x277CC9260]);
  sub_238A61E2C();
  if (!v2)
  {
    v11 = type metadata accessor for LiveCallerIDLookupExtensionContext();
    v12 = *(v11 + 20);
    LOBYTE(v16) = 1;
    sub_238A61E2C();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v16 = *v13;
    v17 = v14;
    v18 = 2;
    sub_238A5C83C(v16, v14);
    sub_238A5DC40();
    sub_238A61E2C();
    sub_238A5DC94(v16, v17);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiveCallerIDLookupExtensionContext.hash(into:)()
{
  v1 = v0;
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260]);
  sub_238A61B8C();
  v2 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v3 = v0 + *(v2 + 20);
  sub_238A61B8C();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];

  return sub_238A61A4C();
}

uint64_t LiveCallerIDLookupExtensionContext.hashValue.getter()
{
  v1 = v0;
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260]);
  sub_238A61B8C();
  v2 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v3 = v0 + *(v2 + 20);
  sub_238A61B8C();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_238A61A4C();
  return sub_238A61ECC();
}

uint64_t LiveCallerIDLookupExtensionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_238A61A1C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B4B0, &qword_238A63ED8);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_238A5DBEC();
  v31 = v12;
  v18 = v32;
  sub_238A61EDC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v13;
  v32 = v16;
  LOBYTE(v33) = 0;
  sub_238A5DE44(&qword_27DF4B4B8, MEMORY[0x277CC9260]);
  v19 = v28;
  sub_238A61E1C();
  v28 = *(v27 + 32);
  (v28)(v32, v19, v3);
  LOBYTE(v33) = 1;
  v20 = v7;
  sub_238A61E1C();
  v21 = v25;
  v22 = v32;
  (v28)(&v32[*(v25 + 20)], v20, v3);
  v34 = 2;
  sub_238A5DCE8();
  v23 = v31;
  sub_238A61E1C();
  (*(v29 + 8))(v23, v30);
  *(v22 + *(v21 + 24)) = v33;
  sub_238A5DD3C(v22, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_238A5DDA0(v22);
}

uint64_t sub_238A5D2F8(uint64_t a1)
{
  v3 = v1;
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260]);
  sub_238A61B8C();
  v4 = v1 + *(a1 + 20);
  sub_238A61B8C();
  v5 = (v3 + *(a1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_238A61A4C();
  return sub_238A61ECC();
}

uint64_t sub_238A5D3C8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260]);
  sub_238A61B8C();
  v5 = v2 + *(a2 + 20);
  sub_238A61B8C();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_238A61A4C();
}

uint64_t sub_238A5D48C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260]);
  sub_238A61B8C();
  v5 = v2 + *(a2 + 20);
  sub_238A61B8C();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_238A61A4C();
  return sub_238A61ECC();
}

uint64_t sub_238A5D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_238A5DA84(v8, v9, v11, v12);
}

uint64_t sub_238A5D60C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238A6194C();
    if (v10)
    {
      v11 = sub_238A6196C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238A6195C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238A6194C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238A6196C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238A6195C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238A5D83C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_238A5D9CC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238A5DC94(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_238A5D60C(v14, a3, a4, &v13);
  v10 = v4;
  sub_238A5DC94(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_238A5D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238A6194C();
  v11 = result;
  if (result)
  {
    result = sub_238A6196C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_238A6195C();
  sub_238A5D60C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_238A5DA84(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238A5C83C(a3, a4);
          return sub_238A5D83C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_238A5DBEC()
{
  result = qword_27DF4B490;
  if (!qword_27DF4B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B490);
  }

  return result;
}

unint64_t sub_238A5DC40()
{
  result = qword_27DF4B4A0;
  if (!qword_27DF4B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4A0);
  }

  return result;
}

uint64_t sub_238A5DC94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238A5DCE8()
{
  result = qword_27DF4B4C0;
  if (!qword_27DF4B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4C0);
  }

  return result;
}

uint64_t sub_238A5DD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A5DDA0(uint64_t a1)
{
  v2 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A5DE44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238A5DEB4()
{
  result = sub_238A61A1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238A5DF44()
{
  result = qword_27DF4B4E0;
  if (!qword_27DF4B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4E0);
  }

  return result;
}

unint64_t sub_238A5DF9C()
{
  result = qword_27DF4B4E8;
  if (!qword_27DF4B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4E8);
  }

  return result;
}

unint64_t sub_238A5DFF4()
{
  result = qword_27DF4B4F0;
  if (!qword_27DF4B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4F0);
  }

  return result;
}

uint64_t sub_238A5E048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5565636976726573 && a2 == 0xEA00000000004C52;
  if (v4 || (sub_238A61E4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373496E656B6F74 && a2 == 0xEE004C5255726575 || (sub_238A61E4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265695472657375 && a2 == 0xED00006E656B6F54)
  {

    return 2;
  }

  else
  {
    v6 = sub_238A61E4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_238A5E184()
{
  result = qword_280B27718;
  if (!qword_280B27718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B27718);
  }

  return result;
}

uint64_t (*ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.getter();
  return sub_238A5E224;
}

char *sub_238A5E248(SEL *a1)
{
  v2 = [v1 *a1];
  sub_238A5E184();
  v3 = sub_238A61BFC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_238A61E0C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_238A5E5E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE6EC60](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_238A5E5E0((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void sub_238A5E3D4(uint64_t a1, SEL *a2)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v10 = MEMORY[0x277D84F90];
    sub_238A61DCC();
    v6 = 32;
    do
    {
      v7 = *(a1 + v6);
      sub_238A61CAC();
      sub_238A61DAC();
      v8 = *(v10 + 16);
      sub_238A61DDC();
      sub_238A61DEC();
      sub_238A61DBC();
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  sub_238A5E184();
  v9 = sub_238A61BEC();

  [v2 *a2];
}

uint64_t (*ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.getter();
  return sub_238A5E538;
}

uint64_t sub_238A5E550(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

char *sub_238A5E5C0(char *a1, int64_t a2, char a3)
{
  result = sub_238A5E634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A5E5E0(char *a1, int64_t a2, char a3)
{
  result = sub_238A5E740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

char *sub_238A5E634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B408, &qword_238A63A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_238A5E740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B4F8, &qword_238A640F8);
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

id sub_238A5EA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_238A5EA94()
{
  result = qword_27DF4B518;
  if (!qword_27DF4B518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF4B518);
  }

  return result;
}

uint64_t LiveLookupStoreProtocol.fetchBlockingInfo(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  sub_238A61A8C();
  v14 = sub_238A61A9C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = (*(a5 + 88))(a1, a2, a3, v13, 0, a4, a5);
  sub_238A5EC00(v13);
  return v15;
}

uint64_t sub_238A5EC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LiveLookupStoreProtocol.fetchIdentityInfo(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  sub_238A61A8C();
  v14 = sub_238A61A9C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = (*(a5 + 112))(a1, a2, a3, v13, 0, a4, a5);
  sub_238A5EC00(v13);
  return v15;
}

id LiveCallerIDLookupProtocol.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _LiveLookupConfiguration();
  result = sub_238A60758(v1);
  *a1 = result;
  return result;
}

void sub_238A5EF94(void (*a1)(id))
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *((v4 & v3) + 0x60);
  (*(*((v4 & v3) + 0x58) + 16))(*((v4 & v3) + 0x50));
  v10 = type metadata accessor for XPCWrapper();
  v11 = objc_allocWithZone(v10);
  v12 = sub_238A6193C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_238A6192C();
  sub_238A609A4(&qword_27DF4B618, type metadata accessor for LiveCallerIDLookupExtensionContext);
  v15 = sub_238A6191C();
  v17 = v16;

  v18 = &v11[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data];
  *v18 = v15;
  v18[1] = v17;
  v21.receiver = v11;
  v21.super_class = v10;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_238A5DDA0(v8);
  a1(v19);
}

uint64_t sub_238A5F1A0(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v4;
  v5 = a1;
  sub_238A5EF94(sub_238A60990);
}

uint64_t sub_238A5F22C(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_238A5F2B8(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_238A60960();
}

id sub_238A5F2F8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _LiveLookupConfiguration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_238A5F3CC(void *a1)
{
  v2 = *v1;
  sub_238A5F22C(a1);
  return 1;
}

uint64_t static Host.context()(uint64_t a1)
{
  v1[23] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_238A61B3C();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();
  v6 = sub_238A61B0C();
  v1[29] = v6;
  v7 = *(v6 - 8);
  v1[30] = v7;
  v8 = *(v7 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_238A61ABC();
  v1[33] = v9;
  v10 = *(v9 - 8);
  v1[34] = v10;
  v11 = *(v10 + 64) + 15;
  v1[35] = swift_task_alloc();
  v12 = sub_238A61B4C();
  v1[36] = v12;
  v13 = *(v12 - 8);
  v1[37] = v13;
  v14 = *(v13 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v15 = sub_238A61ACC();
  v1[41] = v15;
  v16 = *(v15 - 8);
  v1[42] = v16;
  v17 = *(v16 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v18 = sub_238A61AEC();
  v1[45] = v18;
  v19 = *(v18 - 8);
  v1[46] = v19;
  v20 = *(v19 + 64) + 15;
  v1[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A5F6F4, 0, 0);
}

uint64_t sub_238A5F6F4()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[35];
  sub_238A61AAC();
  sub_238A61ADC();
  (*(v5 + 16))(v3, v2, v4);
  sub_238A609A4(&qword_27DF4B580, MEMORY[0x277CC5D98]);
  sub_238A61C6C();
  v7 = sub_238A609A4(&qword_27DF4B588, MEMORY[0x277CC5D88]);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[48] = v9;
  *v9 = v0;
  v9[1] = sub_238A5F87C;
  v10 = v0[35];
  v11 = v0[33];

  return MEMORY[0x282200308](v0 + 21, v11, v7);
}

uint64_t sub_238A5F87C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2[34] + 8))(v2[35], v2[33]);
    v4 = sub_238A5FBC8;
  }

  else
  {
    v4 = sub_238A5F9A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238A5F9A8()
{
  v1 = v0[21];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  if (!v1)
  {
    (*(v3 + 8))(v2, v4);
    return sub_238A61DFC();
  }

  (*(v3 + 8))(v2, v4);
  if (!*(v1 + 16))
  {

    return sub_238A61DFC();
  }

  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  v19 = v0[31];
  v10 = v0[30];
  v17 = v0[32];
  v18 = v0[29];
  v11 = *(v8 + 16);
  v11(v6, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

  (*(v8 + 32))(v5, v6, v9);
  v11(v7, v5, v9);
  sub_238A61AFC();
  (*(v10 + 16))(v19, v17, v18);
  v12 = *(MEMORY[0x277CC5DB0] + 4);
  v13 = swift_task_alloc();
  v0[50] = v13;
  *v13 = v0;
  v13[1] = sub_238A5FBE4;
  v14 = v0[31];
  v15 = v0[28];

  return MEMORY[0x282116960](v15, v14);
}

uint64_t sub_238A5FBE4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_238A6024C;
  }

  else
  {
    v3 = sub_238A5FCF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5FCF8()
{
  v1 = v0[51];
  v2 = v0[28];
  v3 = sub_238A61B2C();
  if (v1)
  {

    return swift_unexpectedError();
  }

  v5 = v3;
  v6 = v0[25];
  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238A60268;
  v0[5] = &block_descriptor_1;
  v8 = _Block_copy(v0 + 2);
  v9 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_238A61D4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF4B590, &qword_238A64158);
  swift_dynamicCast();
  v10 = v0[22];
  sub_238A619EC();
  v11 = sub_238A61A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  result = v13(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v46 = v10;
  v47 = v5;
  v14 = v0[24];
  sub_238A619EC();
  result = v13(v14, 1, v11);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v38 = v0[46];
  v39 = v0[45];
  v40 = v0[47];
  v41 = v0[43];
  v35 = v0[41];
  v36 = v0[44];
  v33 = v0[40];
  v34 = v0[42];
  v42 = v0[39];
  v43 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v44 = v0[35];
  v30 = v0[32];
  v45 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v15 = v0[27];
  v16 = v0[25];
  v26 = v0[26];
  v27 = v0[28];
  v17 = v0[24];
  v37 = v0[23];
  v18 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(v12 + 32);
  v22(v20, v16, v11);
  v22(v21 + *(v18 + 20), v17, v11);
  *(v21 + *(v18 + 24)) = xmmword_238A64130;
  v0[12] = sub_238A607A4;
  v0[13] = v19;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238A60620;
  v0[11] = &block_descriptor_4;
  v23 = _Block_copy(v0 + 8);
  v24 = v0[13];

  [v46 contextWithReply_];
  _Block_release(v23);

  swift_unknownObjectRelease();
  (*(v15 + 8))(v27, v26);
  (*(v28 + 8))(v30, v29);
  (*(v31 + 8))(v33, v32);
  (*(v34 + 8))(v36, v35);
  (*(v38 + 8))(v40, v39);
  swift_beginAccess();
  sub_238A5DD3C(v21, v37);

  v25 = v0[1];

  return v25();
}

void sub_238A60268(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_238A602D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  result = swift_projectBox();
  if (a1)
  {
    v12 = result;
    v13 = sub_238A6190C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = a1;
    sub_238A618FC();
    v18 = *&v16[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data];
    v17 = *&v16[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data + 8];
    sub_238A5C83C(v18, v17);
    sub_238A609A4(&unk_27DF4B620, type metadata accessor for LiveCallerIDLookupExtensionContext);
    sub_238A618EC();
    sub_238A5DC94(v18, v17);

    swift_beginAccess();
    return sub_238A609EC(v10, v12);
  }

  return result;
}

void sub_238A60620(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_238A6068C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _LiveLookupConfiguration();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_238A60758(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _LiveLookupConfiguration());
  return sub_238A6068C(a1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A607B0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Host(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Host(_WORD *result, int a2, int a3)
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

uint64_t sub_238A60924(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A609A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238A609EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static BlockingInfo.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_238A61B9C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_238A60B04@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 expiration];
  if (v3)
  {
    v4 = v3;
    sub_238A61A7C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_238A61A9C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_238A60BA8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_238A60E20(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_238A61A9C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_238A61A6C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setExpiration_];
}

void sub_238A60CD4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238A61BAC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_238A60D3C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_238A61B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setHandle_];
}

uint64_t sub_238A60DAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for BlockingInfo();
  result = sub_238A61D6C();
  *a1 = result;
  return result;
}

uint64_t sub_238A60E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static IdentityInfo.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_238A61B9C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_238A60F00(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_238A60E20(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_238A61A9C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_238A61A6C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setExpiration_];
}

void sub_238A6102C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_238A61BAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_238A61090(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_238A61B9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_238A61100@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for IdentityInfo();
  result = sub_238A61D6C();
  *a1 = result;
  return result;
}