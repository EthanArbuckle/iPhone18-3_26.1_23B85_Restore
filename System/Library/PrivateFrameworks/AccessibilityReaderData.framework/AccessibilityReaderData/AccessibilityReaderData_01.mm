uint64_t sub_23D79FD34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D79FE00(v11, 0, 0, 1, a1, a2);
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
    sub_23D793694(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23D79FE00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D79FF0C(a5, a6);
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
    result = sub_23D80E2AC();
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

uint64_t sub_23D79FF0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D79FF58(a1, a2);
  sub_23D7A0088(&unk_284FCDF78);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D79FF58(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D7A0174(v5, 0);
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

  result = sub_23D80E2AC();
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
        v10 = sub_23D80DE0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D7A0174(v10, 0);
        result = sub_23D80E23C();
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

uint64_t sub_23D7A0088(uint64_t result)
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

  result = sub_23D7A01E8(result, v12, 1, v3);
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

void *sub_23D7A0174(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43E8, &qword_23D80FB38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D7A01E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43E8, &qword_23D80FB38);
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

void *sub_23D7A02DC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_23D7A03DC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_stayingAliveAssertions] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_fetchingContentAssertions] = v8;
  v9 = &v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled] = 0;
  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_logger;
  v11 = sub_23D80D97C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[v10], a1, v11);
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_notificationHandlers] = a2;
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_runloop] = a3;
  v13 = objc_allocWithZone(AXFocusManagerObjCBridge);
  v14 = a3;
  v15 = [v13 init];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager] = v15;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v12 + 8))(a1, v11);
  return v16;
}

uint64_t sub_23D7A054C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D7A055C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23D7A056C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  if (a2)
  {

    v8 = sub_23D80D95C();
    v9 = sub_23D80E06C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_23D79FD34(a1, a2, &v43);
      _os_log_impl(&dword_23D78A000, v8, v9, "Bundle id : %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EEED790](v11, -1, -1);
      MEMORY[0x23EEED790](v10, -1, -1);
    }

    v12 = sub_23D79A88C(a1, a2);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [*(v5 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
      v12 = 0;
    }

    v25 = v12;
    v26 = v13;
    v27 = sub_23D80D95C();
    v28 = sub_23D80E06C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_23D78A000, v27, v28, "currentApp : %@", v29, 0xCu);
      sub_23D790730(v30, &qword_27E2E45B0, &unk_23D810330);
      v32 = v30;
      v4 = v3;
      MEMORY[0x23EEED790](v32, -1, -1);
      MEMORY[0x23EEED790](v29, -1, -1);
    }

    AXRuntimeClient.addAssertionsFor(app:bundleID:)(v26, a1, a2);
    goto LABEL_18;
  }

  v14 = [*(v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
  v15 = sub_23D80D95C();
  v16 = sub_23D80E06C();
  v17 = &unk_278BEB000;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315138;
    v20 = [v14 bundleId];

    if (!v20)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v21 = sub_23D80DD7C();
    v23 = v22;

    v24 = sub_23D79FD34(v21, v23, &v43);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_23D78A000, v15, v16, "Bundle id (currentApplication): %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23EEED790](v19, -1, -1);
    MEMORY[0x23EEED790](v18, -1, -1);

    v4 = v3;
    v17 = &unk_278BEB000;
  }

  else
  {
  }

  v26 = v14;
  v33 = sub_23D80D95C();
  v34 = sub_23D80E06C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v26;
    *v36 = v26;
    v37 = v26;
    _os_log_impl(&dword_23D78A000, v33, v34, "currentApp (currentApplication): %@", v35, 0xCu);
    sub_23D790730(v36, &qword_27E2E45B0, &unk_23D810330);
    MEMORY[0x23EEED790](v36, -1, -1);
    MEMORY[0x23EEED790](v35, -1, -1);
  }

  v38 = [v26 v17[79]];
  if (!v38)
  {
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = sub_23D80DD7C();
  v42 = v41;

  AXRuntimeClient.addAssertionsFor(app:bundleID:)(v26, v40, v42);

LABEL_18:
  sub_23D79B654(v26, 1, 0);

  if (v4)
  {
  }
}

unint64_t sub_23D7A0A78()
{
  result = qword_27E2E4548;
  if (!qword_27E2E4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4548);
  }

  return result;
}

uint64_t sub_23D7A0ACC()
{
  MEMORY[0x23EEED840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D7A0B04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D7A0B54(uint64_t a1)
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
  v10[1] = sub_23D7A0C28;

  return sub_23D79F5B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23D7A0C28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23D7A0D20()
{
  result = qword_27E2E4568;
  if (!qword_27E2E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4568);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRuntimeClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRuntimeClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AXRuntimeClient()
{
  result = qword_27E2E4590;
  if (!qword_27E2E4590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7A0F24()
{
  result = sub_23D80D97C();
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

uint64_t sub_23D7A1020()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7A1058(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(&v5 + 1) = a1;
  v2(&v5, &v5 + 1);
  return v5;
}

uint64_t sub_23D7A1098@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D7A10D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D7A1144()
{
  result = qword_27E2E45C0;
  if (!qword_27E2E45C0)
  {
    sub_23D80DC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E45C0);
  }

  return result;
}

unint64_t sub_23D7A119C()
{
  result = qword_27E2E45D0;
  if (!qword_27E2E45D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E45C8, &qword_23D811F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E45D0);
  }

  return result;
}

uint64_t sub_23D7A1200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A1264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A12C8(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7A1324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A8, &qword_23D810328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A1394()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t AXRTextLocaleAndRange.range.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t AXRTextLocaleAndRange.language.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AXRTextLocaleAndRange.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23D80E24C();

  sub_23D80E30C();
  MEMORY[0x23EEEC700](3943982, 0xE300000000000000);
  sub_23D80E30C();
  MEMORY[0x23EEEC700](0, 0xE000000000000000);

  MEMORY[0x23EEEC700](0x676175676E616C0ALL, 0xEA00000000003D65);
  MEMORY[0x23EEEC700](v3, v4);
  MEMORY[0x23EEEC700](10, 0xE100000000000000);
  return 0x3D65676E6172;
}

uint64_t AXRTextLocaleAndRange.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x23EEECED0](*v0 >> 14);
  MEMORY[0x23EEECED0](v1 >> 14);

  return sub_23D80DDAC();
}

uint64_t AXRTextLocaleAndRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D7A16A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D7A1720()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x23EEECED0](*v0 >> 14);
  MEMORY[0x23EEECED0](v1 >> 14);

  return sub_23D80DDAC();
}

uint64_t sub_23D7A1788()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t _s23AccessibilityReaderData21AXRTextLocaleAndRangeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if ((*a2 ^ *a1) >> 14 || (a1[1] ^ a2[1]) >> 14)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  v3 = a1[2];
  return sub_23D80E4DC();
}

unint64_t sub_23D7A1860()
{
  result = qword_27E2E4608;
  if (!qword_27E2E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4608);
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

uint64_t sub_23D7A18C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23D7A1908(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t String.localizedData.getter(uint64_t a1)
{
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  if (qword_27E2E4610)
  {
    v2 = qword_27E2E4610;
    v3 = sub_23D80DD4C();
    v4 = sub_23D80DD4C();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    a1 = sub_23D80DD7C();
  }

  else
  {
  }

  return a1;
}

void sub_23D7A1A54()
{
  v0 = sub_23D80DD4C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E2E4610 = v1;
}

void sub_23D7A1ACC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23D80DD4C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27E2E4618 = v2;
}

id AXRUserDefaults.getter()
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E2E4618;

  return v0;
}

void AXRUserDefaults.setter(uint64_t a1)
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E2E4618;
  qword_27E2E4618 = a1;
}

uint64_t (*AXRUserDefaults.modify())()
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_23D7A1CF4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v2;

  v3 = sub_23D80DDFC();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    while ((sub_23D80DD1C() & 1) != 0 || (sub_23D80DD2C() & 1) == 0)
    {

      v5 = sub_23D80DDFC();
      v6 = v7;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    v8 = sub_23D80DD4C();

    v9 = MEMORY[0x23EEEC760](v5, v6);

    v16.location = 0;
    v16.length = v9;
    v10 = CFStringTokenizerCopyBestStringLanguage(v8, v16);

    if (v10)
    {
      v11 = [objc_opt_self() characterDirectionForLanguage_];

      return v11 == 2;
    }
  }

  else
  {
LABEL_10:
  }

  return 0;
}

uint64_t sub_23D7A1E2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (a1 != 5)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x746867696CLL;
  if (a1 != 3)
  {
    v7 = 1684828002;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6465636E616C6162;
  if (a1 != 1)
  {
    v9 = 0x65736F6F6CLL;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6465636E616C6162)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x65736F6F6CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802658148)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802465122)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D6F74737563)
      {
LABEL_39:
        v13 = sub_23D80E4DC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x746867696CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684828002)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_23D7A201C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701734764;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000072;
    v4 = 0xE600000000000000;
    if (a1 == 2)
    {
      v6 = 0x6574636172616863;
    }

    else
    {
      v6 = 0x6E696772616DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1685221239;
    }

    else
    {
      v6 = 1701734764;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6574636172616863;
  v9 = 0xE900000000000072;
  if (a2 != 2)
  {
    v8 = 0x6E696772616DLL;
    v9 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1685221239;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23D80E4DC();
  }

  return v12 & 1;
}

uint64_t sub_23D7A2144(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE500000000000000;
    v14 = 0xE600000000000000;
    v15 = 0x776F6C6C6579;
    v16 = 0xE500000000000000;
    v17 = 0x6E65657267;
    if (a1 != 3)
    {
      v17 = 1802398064;
      v16 = 0xE400000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 1702194274;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v18 = 0x6574696877;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x657247746867696CLL;
    v4 = 0xEA00000000006E65;
    v5 = 0x6E6950746867696CLL;
    v6 = 0xE90000000000006BLL;
    if (a1 != 9)
    {
      v5 = 0x727550746867696CLL;
      v6 = 0xEB00000000656C70;
    }

    if (a1 != 8)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x656C70727570;
    v9 = 0x756C42746867696CLL;
    v10 = 0xE900000000000065;
    if (a1 != 6)
    {
      v9 = 0x6C6559746867696CLL;
      v10 = 0xEB00000000776F6CLL;
    }

    if (a1 != 5)
    {
      v8 = v9;
      v7 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE400000000000000;
        if (v11 != 1702194274)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        if (v11 != 0x6574696877)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x776F6C6C6579)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      if (v11 != 0x6E65657267)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE400000000000000;
      if (v11 != 1802398064)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_60;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xEA00000000006E65;
      if (v11 != 0x657247746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 9)
    {
      v19 = 0xE90000000000006BLL;
      if (v11 != 0x6E6950746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v20 = 0x727550746867696CLL;
    v21 = 6646896;
  }

  else
  {
    if (a2 == 5)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x656C70727570)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE900000000000065;
      if (v11 != 0x756C42746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v20 = 0x6C6559746867696CLL;
    v21 = 7827308;
  }

  v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v20)
  {
LABEL_62:
    v22 = sub_23D80E4DC();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_23D7A248C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0xE800000000000000;
    v14 = 0x7265646165487369;
    if (a1 != 2)
    {
      v14 = 0x4C676E6964616568;
      v13 = 0xEC0000006C657665;
    }

    if (a1)
    {
      v12 = 1954047348;
      v11 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7475626972747461;
    v4 = 0xEE00747865546465;
    v5 = 0x4574737269467369;
    v6 = 0xEE00746E656D656CLL;
    if (a1 != 7)
    {
      v5 = 0x6C457473614C7369;
      v6 = 0xED0000746E656D65;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6C457473694C7369;
    v8 = 0xED0000746E656D65;
    if (a1 != 4)
    {
      v7 = 0x6B6E694C7369;
      v8 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7265646165487369)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xEC0000006C657665;
        if (v9 != 0x4C676E6964616568)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1954047348)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x7475626972747461;
        v16 = 0x747865546465;
LABEL_39:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v15)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 == 7)
      {
        v15 = 0x4574737269467369;
        v16 = 0x746E656D656CLL;
        goto LABEL_39;
      }

      v18 = 1632400233;
LABEL_46:
      v17 = 0xED0000746E656D65;
      if (v9 != (v18 | 0x6C45747300000000))
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 4)
    {
      v18 = 1766617961;
      goto LABEL_46;
    }

    v17 = 0xE600000000000000;
    if (v9 != 0x6B6E694C7369)
    {
LABEL_51:
      v19 = sub_23D80E4DC();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v19 = 1;
LABEL_52:

  return v19 & 1;
}

uint64_t sub_23D7A2770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696B61657073;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C65636E6163;
    }

    else
    {
      v4 = 0x64656873696E6966;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E696B61657073;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x64656C65636E6163;
  if (a2 != 2)
  {
    v7 = 0x64656873696E6966;
  }

  if (a2)
  {
    v2 = 0x646573756170;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23D80E4DC();
  }

  return v10 & 1;
}

uint64_t sub_23D7A28E0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_23D7A2970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7A29F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7A2A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7A2AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7A2B58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7A2BFC;
}

void sub_23D7A2BFC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23D7A2C64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7A2E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7A2F3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void sub_23D7A30E8()
{
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = qword_27E2E4618;
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23D80DA0C();

    v3 = sub_23D80DD4C();

    v4 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey;
  }

  else
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = qword_27E2E4618;
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v5;
    sub_23D80DA0C();

    v3 = sub_23D80DD4C();

    v4 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey;
  }

  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_23D80DD4C();
  [v2 setObject:v3 forKey:v9];
}

uint64_t sub_23D7A343C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

void sub_23D7A34BC(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D80DA1C();
  sub_23D7A30E8();
}

void (*sub_23D7A3530(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return sub_23D7A35C8;
}

void sub_23D7A35C8(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;

  sub_23D80DA1C();
  sub_23D7A30E8();
}

uint64_t sub_23D7A3648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23D80D9DC();
  return swift_endAccess();
}

uint64_t sub_23D7A36C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7A3864(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23D80D9DC();
  return swift_endAccess();
}

uint64_t sub_23D7A38DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7A3A14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void sub_23D7A3B88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23D80D9EC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23D80D9EC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_23D7A3CF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (*(v12 + 16))
  {
    v1 = sub_23D7AC71C(v13);
    if (v2)
    {
      v3 = *(*(v12 + 56) + 8 * v1);

LABEL_7:

      return v3;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v4 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v4 + 16))
  {

    v5 = sub_23D7AC71C(v11);
    if (v6)
    {
      v3 = *(*(v4 + 56) + 8 * v5);

      goto LABEL_7;
    }
  }

  v8 = type metadata accessor for AXRTextFormatterModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t AXRTextFormatterPresetsManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AXRTextFormatterPresetsManager.init()();
  return v3;
}

uint64_t AXRTextFormatterPresetsManager.init()()
{
  v1 = v0;
  v2 = sub_23D80D97C();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v70[2] = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70[0] = v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v70 - v15;
  *(v0 + 16) = 0;
  v73 = v0 + 16;
  v17 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v18 = MEMORY[0x277D84F90];
  v76[0] = sub_23D793E10(MEMORY[0x277D84F90]);
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4658, &qword_23D8104F0);
  sub_23D80D9CC();
  (*(v13 + 32))(v1 + v17, v16, v12);
  v19 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  LOBYTE(v76[0]) = 3;
  sub_23D80D9CC();
  (*(v8 + 32))(v1 + v19, v11, v7);
  v20 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets;
  *(v1 + v20) = sub_23D793E10(v18);
  v21 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey);
  *v21 = 0xD000000000000017;
  v21[1] = 0x800000023D815F70;
  v22 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedThemeKey);
  *v22 = 0xD000000000000010;
  v22[1] = 0x800000023D815F90;
  v23 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey);
  *v23 = 0xD00000000000001ELL;
  v23[1] = 0x800000023D815FB0;
  v24 = (v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey);
  *v24 = 0xD00000000000001FLL;
  v24[1] = 0x800000023D815FD0;
  v25 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight;
  *(v1 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4688, &qword_23D810528);
  swift_storeEnumTagMultiPayload();
  v26 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize;
  *(v1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4698, &qword_23D810560);
  swift_storeEnumTagMultiPayload();
  v27 = sub_23D793E10(v18);
  for (i = 0; i != 7; ++i)
  {
    LOBYTE(v76[0]) = byte_284FCDFA0[i + 32];
    v31 = v76[0];
    v32 = sub_23D7A4BC4(v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v27;
    v35 = sub_23D7AC71C(v31);
    v36 = v27[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v39 = v34;
    if (v27[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v76[0];
        if (v34)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_23D7ADA4C();
        v27 = v76[0];
        if (v39)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_23D7ACCC8(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_23D7AC71C(v31);
      if ((v39 & 1) != (v41 & 1))
      {
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }

      v35 = v40;
      v27 = v76[0];
      if (v39)
      {
LABEL_2:
        v29 = v27[7];
        v30 = *(v29 + 8 * v35);
        *(v29 + 8 * v35) = v32;

        continue;
      }
    }

    v27[(v35 >> 6) + 8] |= 1 << v35;
    *(v27[6] + v35) = v31;
    *(v27[7] + 8 * v35) = v32;
    v42 = v27[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_25;
    }

    v27[2] = v44;
  }

  i = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets;
  v45 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets) = v27;

  if (qword_27E2E4230 == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  swift_beginAccess();
  v46 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey);
  v47 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey + 8);
  v48 = qword_27E2E4618;

  v49 = sub_23D80DD4C();

  v50 = [v48 dataForKey_];

  v51 = v71;
  if (v50)
  {
    v52 = sub_23D80D62C();
    v54 = v53;

    v55 = sub_23D80D46C();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7ADF78();
    sub_23D80D44C();

    v68 = v75;
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = v68;

    sub_23D80DA1C();
    sub_23D7AE088(v52, v54);
  }

  else
  {
    v58 = v72;
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v58, qword_27E2E5348);
    swift_beginAccess();
    v60 = v70[0];
    (*(v51 + 16))(v70[0], v59, v58);
    v61 = sub_23D80D95C();
    v62 = sub_23D80E06C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_23D78A000, v61, v62, "No saved presets found, using defaults", v63, 2u);
      v64 = v63;
      v60 = v70[0];
      MEMORY[0x23EEED790](v64, -1, -1);
    }

    (*(v51 + 8))(v60, v58);
    v65 = *(v1 + i);

    v67 = sub_23D7AE0DC(v66);

    swift_getKeyPath();
    swift_getKeyPath();
    v74 = v67;

    sub_23D80DA1C();
  }

  swift_beginAccess();
  sub_23D7A4884(*(v1 + 16));
  return v1;
}

void sub_23D7A4884(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  if (a1)
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey);
    v4 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey + 8);
    v5 = qword_27E2E4618;
    v6 = sub_23D80DD4C();
    v7 = [v5 stringForKey_];

    if (v7)
    {
      v8 = sub_23D80DD7C();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      AXRFormatterTheme.init(rawValue:)(v11);
    }
  }

  else
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey);
    v13 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey + 8);
    v14 = qword_27E2E4618;
    v15 = sub_23D80DD4C();
    v16 = [v14 stringForKey_];

    if (v16)
    {
      v17 = sub_23D80DD7C();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      AXRFormatterTheme.init(rawValue:)(v20);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D80DA1C();
  sub_23D7A30E8();
}

uint64_t sub_23D7A4B04(unsigned __int8 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *a1;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      return v6;
    }
  }

  v8 = type metadata accessor for AXRTextFormatterModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t sub_23D7A4BC4(unsigned __int8 *a1)
{
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4698, &qword_23D810560);
  v2 = *(*(v162 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v162);
  v154 = (&v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v153 = (&v147 - v5);
  v6 = sub_23D80DAAC();
  v170 = *(v6 - 8);
  v171 = v6;
  v7 = *(v170 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v151 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v169 = &v147 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v172 = &v147 - v13;
  MEMORY[0x28223BE20](v12);
  v149 = &v147 - v14;
  v164 = sub_23D80DABC();
  v167 = *(v164 - 8);
  v15 = *(v167 + 64);
  MEMORY[0x28223BE20](v164);
  v148 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4788, &qword_23D810C10);
  v17 = *(*(v158 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v158);
  v157 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v166 = &v147 - v20;
  v21 = sub_23D80DB1C();
  v160 = *(v21 - 8);
  v161 = v21;
  v22 = *(v160 + 64);
  MEMORY[0x28223BE20](v21);
  v159 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4688, &qword_23D810528);
  v24 = *(*(v163 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v163);
  v152 = (&v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v165 = &v147 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4720, &unk_23D810BC0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v150 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v155 = &v147 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v156 = &v147 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v147 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v147 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v147 - v42;
  v44 = *a1;
  v45 = type metadata accessor for AXRTextFormatterModel(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = AXRTextFormatterModel.init()();
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  swift_beginAccess();
  v173 = v49;
  *(v48 + v49) = 1;
  LOBYTE(v175) = v44;
  v50 = AXRFormatterTheme.description.getter();
  v52 = v51;
  swift_getKeyPath();
  swift_getKeyPath();
  v175 = v50;
  v176 = v52;

  v53 = v48;
  sub_23D80DA1C();
  if (v44 <= 2)
  {
    v56 = v165;
    v156 = v41;
    v157 = v43;
    v155 = v38;
    v57 = v166;
    if (v44)
    {
      v58 = v173;
      if (v44 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        v174 = 1;
        v59 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v59;

        sub_23D80DA1C();
        v174 = 1;
        v60 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v60;

        sub_23D80DA1C();
        v174 = 1;
        v61 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v61;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 2;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        LOBYTE(v175) = 1;
        v62 = AXRFormatterTheme.textColor.getter();
        v63 = v170;
        if (!v62)
        {
          v62 = sub_23D80DBFC();
        }

        v64 = v62;
        v65 = v171;
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v64;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0x6D6574737953;
        v176 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0;
        v176 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0x4037000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        v66 = MEMORY[0x277CDFA10];
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 2;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        v174 = 2;
        v73 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v73;

        sub_23D80DA1C();
        v174 = 2;
        v74 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v74;

        sub_23D80DA1C();
        v174 = 2;
        v75 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v75;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        LOBYTE(v175) = 2;
        v76 = AXRFormatterTheme.textColor.getter();
        v63 = v170;
        if (!v76)
        {
          v76 = sub_23D80DBFC();
        }

        v77 = v76;
        v65 = v171;
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v77;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0x6D6574737953;
        v176 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0;
        v176 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0x4035000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        v66 = MEMORY[0x277CDFA00];
      }

      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    sub_23D790648(v168 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, v56, &qword_27E2E4688, &qword_23D810528);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = v157;
      sub_23D7AF7D0(v56, v157, &qword_27E2E4720, &unk_23D810BC0);
    }

    else
    {
      v88 = *v56;
      sub_23D80E08C();
      v89 = sub_23D80DB4C();
      sub_23D80D94C();

      v90 = v159;
      sub_23D80DB0C();
      v72 = v157;
      swift_getAtKeyPath();

      (*(v160 + 8))(v90, v161);
    }

    v91 = v158;
    v92 = v156;
    v93 = v167;
    v94 = v164;
    (*(v167 + 104))(v156, *MEMORY[0x277CDFB70], v164);
    (*(v93 + 56))(v92, 0, 1, v94);
    v95 = *(v91 + 48);
    sub_23D790648(v72, v57, &qword_27E2E4720, &unk_23D810BC0);
    sub_23D790648(v92, v57 + v95, &qword_27E2E4720, &unk_23D810BC0);
    v96 = *(v93 + 48);
    if (v96(v57, 1, v94) == 1)
    {
      sub_23D790730(v92, &qword_27E2E4720, &unk_23D810BC0);
      sub_23D790730(v72, &qword_27E2E4720, &unk_23D810BC0);
      v97 = v96(v57 + v95, 1, v94);
      v58 = v173;
      v98 = v171;
      if (v97 == 1)
      {
        sub_23D790730(v57, &qword_27E2E4720, &unk_23D810BC0);
        v99 = 1;
LABEL_31:
        v101 = v170;
        v102 = v149;
        v103 = v168;
LABEL_40:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = v99 & 1;

        sub_23D80DA1C();
        v125 = v153;
        sub_23D790648(v103 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, v153, &qword_27E2E4698, &qword_23D810560);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v101 + 32))(v102, v125, v98);
        }

        else
        {
          v126 = *v125;
          sub_23D80E08C();
          v127 = sub_23D80DB4C();
          sub_23D80D94C();

          v128 = v159;
          sub_23D80DB0C();
          swift_getAtKeyPath();

          (*(v160 + 8))(v128, v161);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(v101 + 16))(v172, v102, v98);

        sub_23D80DA1C();
        (*(v101 + 8))(v102, v98);
        v174 = 0;
        v129 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v129;

        sub_23D80DA1C();
        v174 = 0;
        v130 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v130;

        sub_23D80DA1C();
        v174 = 0;
        v131 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v131;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        LOBYTE(v175) = 0;
LABEL_49:
        v144 = AXRFormatterTheme.textColor.getter();
        if (!v144)
        {
          v144 = sub_23D80DBFC();
        }

        v145 = v144;
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v145;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0x6D6574737953;
        v176 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = 0;
        v176 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v87 = 0x4031000000000000;
LABEL_52:
        v175 = v87;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 1;

        sub_23D80DA1C();
        goto LABEL_53;
      }
    }

    else
    {
      v100 = v155;
      sub_23D790648(v57, v155, &qword_27E2E4720, &unk_23D810BC0);
      if (v96(v57 + v95, 1, v94) != 1)
      {
        v122 = v167;
        v123 = v148;
        (*(v167 + 32))(v148, v57 + v95, v94);
        sub_23D7AE258(&qword_27E2E4790, MEMORY[0x277CDFB80]);
        v99 = sub_23D80DD3C();
        v124 = *(v122 + 8);
        v124(v123, v94);
        sub_23D790730(v156, &qword_27E2E4720, &unk_23D810BC0);
        sub_23D790730(v157, &qword_27E2E4720, &unk_23D810BC0);
        v124(v100, v94);
        sub_23D790730(v57, &qword_27E2E4720, &unk_23D810BC0);
        v58 = v173;
        v101 = v170;
        v98 = v171;
        v102 = v149;
        v103 = v168;
        goto LABEL_40;
      }

      sub_23D790730(v156, &qword_27E2E4720, &unk_23D810BC0);
      sub_23D790730(v157, &qword_27E2E4720, &unk_23D810BC0);
      (*(v167 + 8))(v100, v94);
      v58 = v173;
      v98 = v171;
    }

    sub_23D790730(v57, &qword_27E2E4788, &qword_23D810C10);
    v99 = 0;
    goto LABEL_31;
  }

  if (v44 <= 4)
  {
    if (v44 != 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 4;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 1;

      sub_23D80DA1C();
      v80 = v170;
      v79 = v171;
      v81 = v172;
      (*(v170 + 104))(v172, *MEMORY[0x277CDF988], v171);
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v80 + 16))(v169, v81, v79);

      sub_23D80DA1C();
      (*(v80 + 8))(v81, v79);
      v174 = 4;
      v82 = AXRFormatterTheme.textColor.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = v82;

      sub_23D80DA1C();
      v174 = 4;
      v83 = AXRFormatterTheme.color.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = v83;

      sub_23D80DA1C();
      v174 = 4;
      v84 = AXRFormatterTheme.linkColor.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = v84;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 2;

      sub_23D80DA1C();
      sub_23D7E9DC8();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 0;

      sub_23D80DA1C();
      sub_23D7EA3E0();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 0;

      sub_23D80DA1C();
      sub_23D7EAA94();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 0;

      sub_23D80DA1C();
      sub_23D7EB0AC();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v175) = 0;

      sub_23D80DA1C();
      LOBYTE(v175) = 4;
      v85 = AXRFormatterTheme.textColor.getter();
      if (!v85)
      {
        v85 = sub_23D80DBFC();
      }

      v86 = v85;
      v58 = v173;
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = v86;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = 0x6D6574737953;
      v176 = 0xE600000000000000;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v175 = 0xD00000000000001CLL;
      v176 = 0x800000023D815B30;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v87 = 0x403C000000000000;
      goto LABEL_52;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 3;

    sub_23D80DA1C();
    v54 = v152;
    sub_23D790648(v168 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, v152, &qword_27E2E4688, &qword_23D810528);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v156;
      sub_23D7AF7D0(v54, v156, &qword_27E2E4720, &unk_23D810BC0);
    }

    else
    {
      v104 = *v54;
      sub_23D80E08C();
      v105 = sub_23D80DB4C();
      sub_23D80D94C();

      v106 = v159;
      sub_23D80DB0C();
      v55 = v156;
      swift_getAtKeyPath();

      (*(v160 + 8))(v106, v161);
    }

    v107 = v158;
    v108 = v150;
    v109 = v155;
    v110 = v167;
    v111 = v164;
    (*(v167 + 104))(v155, *MEMORY[0x277CDFB70], v164);
    (*(v110 + 56))(v109, 0, 1, v111);
    v112 = *(v107 + 48);
    v113 = v157;
    sub_23D790648(v55, v157, &qword_27E2E4720, &unk_23D810BC0);
    v114 = v113;
    sub_23D790648(v109, v113 + v112, &qword_27E2E4720, &unk_23D810BC0);
    v115 = *(v110 + 48);
    if (v115(v114, 1, v111) == 1)
    {
      sub_23D790730(v109, &qword_27E2E4720, &unk_23D810BC0);
      v116 = v157;
      sub_23D790730(v55, &qword_27E2E4720, &unk_23D810BC0);
      v117 = v115(v116 + v112, 1, v111);
      v58 = v173;
      v119 = v170;
      v118 = v171;
      if (v117 == 1)
      {
        sub_23D790730(v116, &qword_27E2E4720, &unk_23D810BC0);
        v120 = 1;
LABEL_45:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = v120 & 1;

        sub_23D80DA1C();
        v136 = v154;
        sub_23D790648(v168 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, v154, &qword_27E2E4698, &qword_23D810560);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v137 = v151;
          (*(v119 + 32))(v151, v136, v118);
        }

        else
        {
          v138 = *v136;
          sub_23D80E08C();
          v139 = sub_23D80DB4C();
          sub_23D80D94C();

          v140 = v159;
          sub_23D80DB0C();
          v137 = v151;
          swift_getAtKeyPath();

          (*(v160 + 8))(v140, v161);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(v119 + 16))(v172, v137, v118);

        sub_23D80DA1C();
        (*(v119 + 8))(v137, v118);
        v174 = 3;
        v141 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v141;

        sub_23D80DA1C();
        v174 = 3;
        v142 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v142;

        sub_23D80DA1C();
        v174 = 3;
        v143 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v175 = v143;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v175) = 0;

        sub_23D80DA1C();
        LOBYTE(v175) = 3;
        goto LABEL_49;
      }
    }

    else
    {
      sub_23D790648(v114, v108, &qword_27E2E4720, &unk_23D810BC0);
      v121 = v115(v114 + v112, 1, v111);
      v119 = v170;
      if (v121 != 1)
      {
        v132 = v167;
        v133 = v148;
        (*(v167 + 32))(v148, v114 + v112, v111);
        sub_23D7AE258(&qword_27E2E4790, MEMORY[0x277CDFB80]);
        v134 = v114;
        v120 = sub_23D80DD3C();
        v135 = *(v132 + 8);
        v135(v133, v111);
        sub_23D790730(v155, &qword_27E2E4720, &unk_23D810BC0);
        sub_23D790730(v156, &qword_27E2E4720, &unk_23D810BC0);
        v135(v108, v111);
        sub_23D790730(v134, &qword_27E2E4720, &unk_23D810BC0);
        v58 = v173;
        v118 = v171;
        goto LABEL_45;
      }

      sub_23D790730(v155, &qword_27E2E4720, &unk_23D810BC0);
      v116 = v157;
      sub_23D790730(v156, &qword_27E2E4720, &unk_23D810BC0);
      (*(v167 + 8))(v108, v111);
      v58 = v173;
      v118 = v171;
    }

    sub_23D790730(v116, &qword_27E2E4788, &qword_23D810C10);
    v120 = 0;
    goto LABEL_45;
  }

  v58 = v173;
  if (v44 == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 5;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    v174 = 5;
    v67 = AXRFormatterTheme.textColor.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = v67;

    sub_23D80DA1C();
    v174 = 5;
    v68 = AXRFormatterTheme.color.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = v68;

    sub_23D80DA1C();
    v174 = 5;
    v69 = AXRFormatterTheme.linkColor.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = v69;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    sub_23D7E9DC8();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 2;

    sub_23D80DA1C();
    sub_23D7EA3E0();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    sub_23D7EAA94();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    sub_23D7EB0AC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    LOBYTE(v175) = 5;
    v70 = AXRFormatterTheme.textColor.getter();
    v63 = v170;
    if (!v70)
    {
      v70 = sub_23D80DBFC();
    }

    v71 = v70;
    v65 = v171;
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = v71;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = 0x6B726F592077654ELL;
    v176 = 0xE800000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = 0;
    v176 = 0xE000000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v175 = 0x4031000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 0;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v175) = 1;

    sub_23D80DA1C();
    v66 = MEMORY[0x277CDF9D8];
LABEL_20:
    v78 = v172;
    (*(v63 + 104))(v172, *v66, v65);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v63 + 16))(v169, v78, v65);

    sub_23D80DA1C();
    (*(v63 + 8))(v78, v65);
  }

LABEL_53:
  *(v53 + v58) = 0;
  return v53;
}

uint64_t sub_23D7A76CC(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v4 = v14;
  if (*(v14 + 16))
  {
    v5 = sub_23D7AC71C(v3);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v4 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v4 + 16))
  {
    v7 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);

    v5 = sub_23D7AC71C(v3);
    if (v8)
    {
LABEL_5:
      v9 = *(*(v4 + 56) + 8 * v5);

      return v9;
    }
  }

  v11 = type metadata accessor for AXRTextFormatterModel(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t sub_23D7A77D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_23D80D9FC();
  v6 = v5;
  v7 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v6;
  *v6 = 0x8000000000000000;
  sub_23D7AD57C(a2, v3, isUniquelyReferenced_nonNull_native);
  *v6 = v10;
  v4(v11, 0);

  return sub_23D7A927C();
}

uint64_t sub_23D7A78C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);

  sub_23D7AE0DC(v2);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

unsigned __int8 *sub_23D7A796C(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *result;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      swift_retain_n();

      v7 = _s23AccessibilityReaderData21AXRTextFormatterModelC5modelA2C_tcfC_0();
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = sub_23D80D9FC();
      v10 = v9;
      v11 = *v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v10;
      *v10 = 0x8000000000000000;
      sub_23D7AD57C(v7, v3, isUniquelyReferenced_nonNull_native);
      *v10 = v13;
      v8(v14, 0);
    }

    else
    {
    }
  }

  return result;
}

unsigned __int8 *sub_23D7A7ADC(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *result;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (*(v16 + 16) && (v7 = sub_23D7AC71C(v3), (v8 & 1) != 0))
      {
        v9 = *(*(v16 + 56) + 8 * v7);

        sub_23D7F4C40();
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = 0;
        v17 = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();

        v10 = sub_23D80D9FC();
        v12 = v11;
        v13 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v12;
        *v12 = 0x8000000000000000;
        sub_23D7AD57C(v9, v3, isUniquelyReferenced_nonNull_native);
        *v12 = v15;
        v10(&v16, 0);

        sub_23D7A927C();
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23D7A7D8C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_23D80DAAC();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &KeyPath - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C8, &qword_23D8105B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &KeyPath - v15;
  v17 = type metadata accessor for AXRTextCustomizationData(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_23D790648(a2, v16, &qword_27E2E46C8, &qword_23D8105B8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_23D790730(v16, &qword_27E2E46C8, &qword_23D8105B8);
  }

  sub_23D7AE2F8(v16, v21);
  v24 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v24 + 16))
  {
    v65 = v2;

    v25 = sub_23D7AC71C(v22);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 8 * v25);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v28 = v73;
      if (*(*&v73 + 16) && (v29 = sub_23D7AC71C(v22), (v30 & 1) != 0))
      {
        v31 = *(*(*&v28 + 56) + 8 * v29);

        v32 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        swift_beginAccess();
        v63 = v32;
        *(v31 + v32) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v33 = LOBYTE(v73);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v73) = v33;

        sub_23D80DA1C();
        if (v21[v17[5] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v34 = v73;
          swift_getKeyPath();
          swift_getKeyPath();
          v73 = v34;

          sub_23D80DA1C();
        }

        if (v21[v17[6] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v35 = v73;
          swift_getKeyPath();
          swift_getKeyPath();
          v73 = v35;

          sub_23D80DA1C();
        }

        if (v21[v17[8] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v36 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v71) = v36;

          sub_23D80DA1C();
          sub_23D7E9DC8();
        }

        if (v21[v17[10] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v37 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v71) = v37;

          sub_23D80DA1C();
          sub_23D7EA3E0();
        }

        if (v21[v17[9] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v38 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v71) = v38;

          sub_23D80DA1C();
          sub_23D7EAA94();
        }

        if (v21[v17[11] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v39 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v71) = v39;

          sub_23D80DA1C();
          sub_23D7EB0AC();
        }

        if (v21[v17[12] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v40 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v73) = v40;

          sub_23D80DA1C();
        }

        if (v21[v17[13] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v41 = v73;
          swift_getKeyPath();
          swift_getKeyPath();
          v73 = v41;

          sub_23D80DA1C();
        }

        v64 = v27;
        if (v21[v17[7] + 32] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v42 = v73;
          v43 = v74;
          swift_getKeyPath();
          swift_getKeyPath();
          v71 = v42;
          v72 = v43;

          sub_23D80DA1C();
        }

        sub_23D790648(v21, v12, &qword_27E2E46C0, &qword_23D8105B0);
        v44 = v69;
        v45 = v12[*(v68 + 64)];
        v46 = *(v69 + 8);
        v47 = v70;
        v46(&v12[*(v68 + 48)], v70);
        v46(v12, v47);
        if (v45 == 1)
        {
          swift_getKeyPath();
          LODWORD(v68) = v22;
          swift_getKeyPath();
          v48 = v66;
          sub_23D80DA0C();

          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          (*(v44 + 16))(v67, v48, v47);

          sub_23D80DA1C();
          LOBYTE(v22) = v68;
          v46(v48, v47);
        }

        if (v21[v17[14] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v49 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v73) = v49;

          sub_23D80DA1C();
        }

        if (v21[v17[15] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v50 = v73;
          swift_getKeyPath();
          swift_getKeyPath();
          v73 = v50;

          sub_23D80DA1C();
        }

        if (v21[v17[16] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v51 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v71) = v51;

          sub_23D80DA1C();
        }

        if (v21[v17[17] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v52 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v73) = v52;

          sub_23D80DA1C();
        }

        if (v21[v17[18] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v53 = LOBYTE(v73);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v73) = v53;

          sub_23D80DA1C();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v54 = v73;
        if (v74)
        {
          v54 = 12.0;
        }

        sub_23D7EDEC0(v54);
        if (v21[v17[19] + 32] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C();

          v55 = v73;
          v56 = v74;
          swift_getKeyPath();
          swift_getKeyPath();
          v73 = v55;
          v74 = v56;

          sub_23D80DA1C();
        }

        swift_getKeyPath();
        swift_getKeyPath();

        v57 = sub_23D80D9FC();
        v59 = v58;
        v60 = *v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *v59;
        *v59 = -0.0;
        sub_23D7AD57C(v31, v22, isUniquelyReferenced_nonNull_native);
        *v59 = v71;
        v57(&v73, 0);

        sub_23D7A927C();
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();

        *(v31 + v63) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return sub_23D7AE35C(v21);
}

unsigned __int8 *sub_23D7A8D8C(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *result;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (*(v18[0] + 16) && (v7 = sub_23D7AC71C(v3), (v8 & 1) != 0))
      {
        v9 = *(*(v18[0] + 56) + 8 * v7);

        v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        v16 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        swift_beginAccess();
        *(v9 + v10) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v18[0]) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();

        v11 = sub_23D80D9FC();
        v13 = v12;
        v14 = *v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v13;
        *v13 = 0x8000000000000000;
        sub_23D7AD57C(v9, v3, isUniquelyReferenced_nonNull_native);
        *v13 = v17;
        v11(v18, 0);

        sub_23D7A927C();
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();

        *(v9 + v16) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23D7A927C()
{
  v1 = sub_23D80D97C();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v1);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v0;
  sub_23D80DA0C();

  v4 = 0;
  v6 = v56 + 8;
  v5 = v56[8];
  v55 = v56;
  v7 = 1 << *(v56 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v11 = MEMORY[0x277D84F98];
  if ((v8 & v5) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v10)
    {

      v30 = sub_23D80D49C();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_23D80D48C();
      v56 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4658, &qword_23D8104F0);
      sub_23D7AE814();
      v33 = sub_23D80D47C();
      v42 = v41;
      v43 = v33;

      if (qword_27E2E4230 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v44 = qword_27E2E4618;
      v45 = sub_23D80D61C();
      v46 = *(v51 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey);
      v47 = *(v51 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey + 8);
      v48 = sub_23D80DD4C();
      [v44 setObject:v45 forKey:v48];

      type metadata accessor for AXRTextFormatterPresetsManager(0);
      sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);
      sub_23D80D9AC();
      sub_23D80D9BC();

      return sub_23D7AE088(v43, v42);
    }

    v9 = v6[v14];
    ++v4;
  }

  while (!v9);
  while (1)
  {
    v15 = __clz(__rbit64(v9)) | (v14 << 6);
    v16 = *(v55[6] + v15);
    v17 = *(v55[7] + 8 * v15);
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v11;
    v19 = sub_23D7AC71C(v16);
    v21 = v11[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v11[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v19;
        sub_23D7ADA4C();
        v19 = v29;
      }
    }

    else
    {
      sub_23D7ACCC8(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_23D7AC71C(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }
    }

    v9 &= v9 - 1;
    v11 = v56;
    if (v25)
    {
      v12 = v56[7];
      v13 = *(v12 + 8 * v19);
      *(v12 + 8 * v19) = v17;

      v4 = v14;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v56[(v19 >> 6) + 8] |= 1 << v19;
      *(v11[6] + v19) = v16;
      *(v11[7] + 8 * v19) = v17;

      v27 = v11[2];
      v23 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v23)
      {
        goto LABEL_29;
      }

      v11[2] = v28;
      v4 = v14;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = v4;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  swift_once();
  v34 = v54;
  v35 = __swift_project_value_buffer(v54, qword_27E2E5348);
  swift_beginAccess();
  v37 = v52;
  v36 = v53;
  (*(v53 + 16))(v52, v35, v34);
  v38 = sub_23D80D95C();
  v39 = sub_23D80E06C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_23D78A000, v38, v39, "Error encoding presets for UserDefaults", v40, 2u);
    MEMORY[0x23EEED790](v40, -1, -1);
  }

  return (*(v36 + 8))(v37, v34);
}

void sub_23D7A9808(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27E2E4618;
  v6 = sub_23D80DD4C();

  v7 = (v2 + *a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_23D80DD4C();
  [v5 setObject:v6 forKey:v10];

  swift_beginAccess();
  sub_23D7A4884(*(v2 + 16));
}

void sub_23D7A99D8(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = (v3 + *a1);
  v8 = *v7;
  v9 = v7[1];
  v10 = qword_27E2E4618;
  v11 = sub_23D80DD4C();
  v12 = [v10 stringForKey_];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = sub_23D80DD7C();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  AXRFormatterTheme.init(rawValue:)(v16);
  a2 = v17;
  if (v17 != 7)
  {

LABEL_6:
    *a3 = a2;
    return;
  }

  __break(1u);
}

uint64_t sub_23D7A9B00(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey);
  v4 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey + 8);
  v5 = qword_27E2E4618;
  v6 = sub_23D80DD4C();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_23D80DD7C();
    v10 = v9;

    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v11 = 0xE800000000000000;
          v12 = 0x6465636E616C6162;
        }

        else
        {
          v11 = 0xE500000000000000;
          v12 = 0x65736F6F6CLL;
        }
      }

      else
      {
        v12 = 1802658148;
        v11 = 0xE400000000000000;
      }
    }

    else if (v2 > 4)
    {
      if (v2 == 5)
      {
        v12 = 1802465122;
      }

      else
      {
        v12 = 0x6D6F74737563;
      }

      if (v2 == 5)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }
    }

    else if (v2 == 3)
    {
      v11 = 0xE500000000000000;
      v12 = 0x746867696CLL;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1684828002;
    }

    if (v8 != v12 || v10 != v11)
    {
      v13 = sub_23D80E4DC();

      goto LABEL_29;
    }

LABEL_31:

    v13 = 1;
    return v13 & 1;
  }

  if (v2 <= 2 && !v2)
  {
    goto LABEL_31;
  }

  v13 = sub_23D80E4DC();
LABEL_29:

  return v13 & 1;
}

uint64_t sub_23D7A9DB0(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  v3 = 1802658148;
  swift_beginAccess();
  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey;
  v5 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey);
  v6 = *(v4 + 8);
  v7 = qword_27E2E4618;
  v8 = sub_23D80DD4C();
  v9 = [v7 stringForKey_];

  if (v9)
  {
    v10 = sub_23D80DD7C();
    v12 = v11;

    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xE800000000000000;
          v3 = 0x6465636E616C6162;
        }

        else
        {
          v13 = 0xE500000000000000;
          v3 = 0x65736F6F6CLL;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
      }
    }

    else if (v2 > 4)
    {
      if (v2 == 5)
      {
        v3 = 1802465122;
      }

      else
      {
        v3 = 0x6D6F74737563;
      }

      if (v2 == 5)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }
    }

    else if (v2 == 3)
    {
      v13 = 0xE500000000000000;
      v3 = 0x746867696CLL;
    }

    else
    {
      v13 = 0xE400000000000000;
      v3 = 1684828002;
    }

    if (v10 != v3 || v12 != v13)
    {
      v15 = sub_23D80E4DC();

      goto LABEL_30;
    }
  }

  else if (v2 != 3)
  {
    v15 = sub_23D80E4DC();
LABEL_30:

    return v15 & 1;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t AXRTextFormatterPresetsManager.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);

  v6 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey + 8);

  v7 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedThemeKey + 8);

  v8 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey + 8);

  v9 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey + 8);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, &qword_27E2E46E8, &qword_23D810A88);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, &qword_27E2E46F0, &qword_23D810A90);
  return v0;
}

uint64_t AXRTextFormatterPresetsManager.__deallocating_deinit()
{
  AXRTextFormatterPresetsManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23D7AA210@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXRTextFormatterPresetsManager(0);
  result = sub_23D80D9AC();
  *a1 = result;
  return result;
}

uint64_t AXRTextCustomizationData.dynamicSize.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_23D790648(v2, &v15 - v8, &qword_27E2E46C0, &qword_23D8105B0);
  v10 = *(v6 + 56);
  v11 = v9[*(v6 + 72)];
  v12 = sub_23D80DAAC();
  v13 = *(*(v12 - 8) + 32);
  v13(a1, v9, v12);
  v13(a2, &v9[v10], v12);
  return v11;
}

uint64_t AXRTextCustomizationData.dynamicSize.setter(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  v14 = sub_23D80DAAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 32);
  v16(v13, a1, v14);
  v16(&v13[*(v7 + 56)], a2, v14);
  v13[*(v7 + 72)] = v22;
  sub_23D7AF7D0(v13, v11, &qword_27E2E46C0, &qword_23D8105B0);
  v17 = *(v7 + 56);
  v18 = v11[*(v7 + 72)];
  v19 = *(v15 + 40);
  v19(v3, v11, v14);
  result = (v19)(v3 + *(v7 + 56), &v11[v17], v14);
  *(v3 + *(v7 + 72)) = v18;
  return result;
}

uint64_t AXRTextCustomizationData.customSelectedTextColor.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  return v2;
}

uint64_t AXRTextCustomizationData.customSelectedTextColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = (v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 20));
  v8 = *v7;

  v9 = v7[1];

  *v7 = a1;
  v7[1] = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.customSelectedBackgroundColor.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  return v2;
}

uint64_t AXRTextCustomizationData.customSelectedBackgroundColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = (v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 24));
  v8 = *v7;

  v9 = v7[1];

  *v7 = a1;
  v7[1] = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.fontName.getter(void *a1, void *a2)
{
  v5 = v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 28);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  *a1 = *v5;
  a1[1] = v6;
  *a2 = v7;
  a2[1] = v8;

  return v9;
}

uint64_t AXRTextCustomizationData.fontName.setter(uint64_t *a1, uint64_t *a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 28);
  v10 = *(v9 + 8);
  v11 = *(v9 + 24);

  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.lineSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 32));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.lineSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 32));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.wordSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 36));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.wordSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 36));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.charSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 40));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.charSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 40));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.marginSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 44));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.marginSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 44));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.showLinks.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.showLinks.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 48));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.linkColor.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 52));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  return v2;
}

uint64_t AXRTextCustomizationData.linkColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = (v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 52));
  v8 = *v7;

  v9 = v7[1];

  *v7 = a1;
  v7[1] = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 56));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.highlightEnabled.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 56));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightColor.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 60));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  return v2;
}

uint64_t AXRTextCustomizationData.highlightColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = (v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 60));
  v8 = *v7;

  v9 = v7[1];

  *v7 = a1;
  v7[1] = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightStyle.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 64));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.highlightStyle.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 64));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highLegibilityEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 68));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.highLegibilityEnabled.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 68));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.textBold.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 72));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.textBold.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 72));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.themeName.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AXRTextCustomizationData(0) + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

uint64_t AXRTextCustomizationData.themeName.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = v5 + *(type metadata accessor for AXRTextCustomizationData(0) + 76);
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  return result;
}

double AXRTextCustomizationData.init(dynamicSize:customSelectedTextColor:customSelectedBackgroundColor:fontName:lineSpacing:wordSpacing:charSpacing:marginSpacing:showLinks:linkColor:highlightEnabled:highlightColor:highlightStyle:highLegibilityEnabled:textBold:themeName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t *a11, uint64_t *a12, unsigned __int8 a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 a22, unsigned __int8 *a23, unsigned __int8 *a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 *a38, unsigned __int8 *a39, unsigned __int8 a40, unsigned __int8 a41, unsigned __int8 a42, unsigned __int8 a43, unsigned __int8 a44, unsigned __int8 a45, unsigned __int8 a46, __int128 a47, uint64_t a48, uint64_t a49, unsigned __int8 a50)
{
  v115 = a8;
  v113 = a7;
  v111 = a6;
  v110 = a5;
  v109 = a4;
  v103 = a2;
  v102 = a1;
  v137 = a50;
  v135 = a48;
  v136 = a49;
  v134 = a47;
  v132 = a45;
  v133 = a46;
  v130 = a43;
  v131 = a44;
  v128 = a41;
  v129 = a42;
  v126 = a37;
  v127 = a40;
  v124 = a35;
  v125 = a36;
  v122 = a33;
  v123 = a34;
  v120 = a31;
  v121 = a32;
  v118 = a29;
  v119 = a30;
  v116 = a27;
  v117 = a28;
  v114 = a26;
  v112 = a25;
  v108 = a22;
  v107 = a19;
  v106 = a16;
  v105 = a13;
  v104 = a10;
  v101 = a39;
  v100 = a38;
  v99 = a24;
  v98 = a23;
  v97 = a21;
  v96 = a20;
  v95 = a18;
  v94 = a17;
  v93 = a15;
  v92 = a14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v53 = v52 - 8;
  v54 = *(*(v52 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v90 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v59 = &v90 - v58;
  v60 = sub_23D80DAAC();
  v61 = *(*(v60 - 8) + 32);
  v61(v59, v102, v60);
  v61(&v59[*(v53 + 56)], v103, v60);
  v59[*(v53 + 72)] = a3;
  v63 = *a11;
  v62 = a11[1];
  v64 = a12[1];
  v91 = *a12;
  v90 = v64;
  LODWORD(v92) = *v92;
  LODWORD(v93) = *v93;
  LODWORD(v94) = *v94;
  LODWORD(v95) = *v95;
  LODWORD(v96) = *v96;
  LODWORD(v97) = *v97;
  LODWORD(v98) = *v98;
  LODWORD(v99) = *v99;
  LODWORD(v103) = *v100;
  LODWORD(v102) = *v101;
  sub_23D7AF7D0(v59, v57, &qword_27E2E46C0, &qword_23D8105B0);
  v65 = *(v53 + 56);
  v66 = v57[*(v53 + 72)];
  v61(a9, v57, v60);
  v61(&a9[*(v53 + 56)], &v57[v65], v60);
  a9[*(v53 + 72)] = v66;
  v67 = type metadata accessor for AXRTextCustomizationData(0);
  v68 = &a9[v67[5]];
  v69 = v110;
  *v68 = v109;
  *(v68 + 1) = v69;
  v68[16] = v111;
  v70 = &a9[v67[6]];
  v71 = v115;
  *v70 = v113;
  *(v70 + 1) = v71;
  v70[16] = v104;
  v72 = &a9[v67[7]];
  *v72 = v63;
  *(v72 + 1) = v62;
  v73 = v90;
  *(v72 + 2) = v91;
  *(v72 + 3) = v73;
  v72[32] = v105;
  v74 = &a9[v67[8]];
  *v74 = v92;
  v74[1] = v93;
  v74[2] = v106;
  v75 = &a9[v67[9]];
  *v75 = v94;
  v75[1] = v95;
  v75[2] = v107;
  v76 = &a9[v67[10]];
  *v76 = v96;
  v76[1] = v97;
  v76[2] = v108;
  v77 = &a9[v67[11]];
  *v77 = v98;
  v77[1] = v99;
  v77[2] = v112;
  v78 = &a9[v67[12]];
  *v78 = v114;
  LOBYTE(v73) = v117;
  v78[1] = v116;
  v78[2] = v73;
  v79 = &a9[v67[13]];
  v80 = v119;
  *v79 = v118;
  *(v79 + 1) = v80;
  LOBYTE(v80) = v121;
  v79[16] = v120;
  v81 = &a9[v67[14]];
  *v81 = v80;
  LOBYTE(v80) = v123;
  v81[1] = v122;
  v81[2] = v80;
  v82 = &a9[v67[15]];
  v83 = v125;
  *v82 = v124;
  *(v82 + 1) = v83;
  v82[16] = v126;
  v84 = &a9[v67[16]];
  *v84 = v103;
  v84[1] = v102;
  LOBYTE(v83) = v128;
  v84[2] = v127;
  v85 = &a9[v67[17]];
  *v85 = v83;
  LOBYTE(v83) = v130;
  v85[1] = v129;
  v85[2] = v83;
  v86 = &a9[v67[18]];
  LOBYTE(v83) = v132;
  *v86 = v131;
  v86[1] = v83;
  v86[2] = v133;
  v87 = &a9[v67[19]];
  result = *&v134;
  *v87 = v134;
  v89 = v136;
  *(v87 + 2) = v135;
  *(v87 + 3) = v89;
  v87[32] = v137;
  return result;
}

uint64_t sub_23D7AB97C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7ABA0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABB9C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = sub_23D80DA1C();
  return a7(v10);
}

uint64_t sub_23D7ABC38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7ABCB4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABD28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7ABDA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABE4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23D7ABECC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23D7AC020(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7AC0CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7AC13C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7AC1B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23D80DAAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_23D80DA1C();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7AC328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4720, &unk_23D810BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D790648(a1, &v6 - v4, &qword_27E2E4720, &unk_23D810BC0);
  return sub_23D80DAFC();
}

uint64_t sub_23D7AC3D0(uint64_t a1)
{
  v2 = sub_23D80DAAC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D80DADC();
}

uint64_t sub_23D7AC498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_23D7AC520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

unint64_t sub_23D7AC5A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D80E58C();
  sub_23D80DDAC();
  v6 = sub_23D80E5CC();

  return sub_23D7AC7A4(a1, a2, v6);
}

unint64_t sub_23D7AC620(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23D80DD7C();
  sub_23D80E58C();
  sub_23D80DDAC();
  v4 = sub_23D80E5CC();

  return sub_23D7ACBC4(a1, v4);
}

unint64_t sub_23D7AC6B0(int a1)
{
  v3 = *(v1 + 40);
  sub_23D80E58C();
  sub_23D80E5AC();
  v4 = sub_23D80E5CC();

  return sub_23D7AC85C(a1, v4);
}

unint64_t sub_23D7AC71C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23D7B2268();

  return sub_23D7AC8C8(a1, v4);
}

unint64_t sub_23D7AC760(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D80E1FC();

  return sub_23D7ACAFC(a1, v5);
}

unint64_t sub_23D7AC7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D80E4DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23D7AC85C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23D7AC8C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6465636E616C6162;
          }

          else
          {
            v8 = 0x65736F6F6CLL;
          }

          if (v7 == 1)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE500000000000000;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1802658148;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1802465122;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746867696CLL;
        }

        else
        {
          v8 = 1684828002;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      v10 = 0x6D6F74737563;
      if (v6 == 5)
      {
        v10 = 1802465122;
      }

      v11 = 0xE600000000000000;
      if (v6 == 5)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x746867696CLL;
      if (v6 == 3)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v12 = 1684828002;
        v13 = 0xE400000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6465636E616C6162;
      if (v6 != 1)
      {
        v14 = 0x65736F6F6CLL;
      }

      v15 = 0xE800000000000000;
      if (v6 != 1)
      {
        v15 = 0xE500000000000000;
      }

      if (!v6)
      {
        v14 = 1802658148;
        v15 = 0xE400000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_23D80E4DC();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23D7ACAFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D7AF708(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEECB20](v9, a1);
      sub_23D7AF764(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D7ACBC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23D80DD7C();
      v9 = v8;
      if (v7 == sub_23D80DD7C() && v9 == v10)
      {
        break;
      }

      v12 = sub_23D80E4DC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23D7ACCC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  v33 = a2;
  result = sub_23D80E33C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_23D80E58C();
      sub_23D80DDAC();

      result = sub_23D80E5CC();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23D7AD00C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C8, &qword_23D80FF08);
  v36 = a2;
  result = sub_23D80E33C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23D794258(v25, v37);
      }

      else
      {
        sub_23D793694(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23D80E58C();
      sub_23D80DDAC();
      result = sub_23D80E5CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23D794258(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23D7AD2C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A8, &unk_23D810C00);
  result = sub_23D80E33C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_23D794258((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_23D7AF708(v24, &v38);
        sub_23D793694(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_23D80E1FC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_23D794258(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_23D7AD57C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23D7AC71C(a2);
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
      sub_23D7ACCC8(v14, a3 & 1);
      v18 = *v4;
      result = sub_23D7AC71C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23D7ADA4C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

_OWORD *sub_23D7AD6C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D7AC5A4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23D7ADBA8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D7AD00C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23D7AC5A4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23D80E50C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_23D794258(a1, v23);
  }

  else
  {
    sub_23D7AD964(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_23D7AD818(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23D7AC760(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23D7ADD4C();
      goto LABEL_7;
    }

    sub_23D7AD2C4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_23D7AC760(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23D7AF708(a2, v22);
      return sub_23D7AD9D0(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_23D80E50C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_23D794258(a1, v17);
}

_OWORD *sub_23D7AD964(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D794258(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_23D7AD9D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23D794258(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_23D7ADA4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  v2 = *v0;
  v3 = sub_23D80E32C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_23D7ADBA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C8, &qword_23D80FF08);
  v2 = *v0;
  v3 = sub_23D80E32C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23D793694(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D794258(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23D7ADD4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A8, &unk_23D810C00);
  v2 = *v0;
  v3 = sub_23D80E32C();
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
        v18 = 40 * v17;
        sub_23D7AF708(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23D793694(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23D794258(v22, (*(v4 + 56) + v17));
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_23D7ADF78()
{
  result = qword_27E2E46A0;
  if (!qword_27E2E46A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4658, &qword_23D8104F0);
    sub_23D7AE034();
    sub_23D7AE258(&qword_27E2E46B0, type metadata accessor for AXRTextFormatterModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46A0);
  }

  return result;
}

unint64_t sub_23D7AE034()
{
  result = qword_27E2E46A8;
  if (!qword_27E2E46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46A8);
  }

  return result;
}

uint64_t sub_23D7AE088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23D7AE0DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  result = sub_23D80E32C();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + v13);
      v15 = *(*(a1 + 56) + 8 * v13);

      result = _s23AccessibilityReaderData21AXRTextFormatterModelC5modelA2C_tcfC_0();
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      *(v3[7] + 8 * v13) = result;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v3[2] = v18;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7AE258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D7AE2C0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7AE2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextCustomizationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7AE35C(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextCustomizationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D7AE814()
{
  result = qword_27E2E46D0;
  if (!qword_27E2E46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4658, &qword_23D8104F0);
    sub_23D7AE8D0();
    sub_23D7AE258(&qword_27E2E46E0, type metadata accessor for AXRTextFormatterModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46D0);
  }

  return result;
}

unint64_t sub_23D7AE8D0()
{
  result = qword_27E2E46D8;
  if (!qword_27E2E46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46D8);
  }

  return result;
}

uint64_t sub_23D7AE930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23D7AE978(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

void sub_23D7AEA2C()
{
  sub_23D7AF1B4(319, &qword_27E2E4708, &qword_27E2E4658, &qword_23D8104F0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_23D7AF164();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_23D7AF1B4(319, &qword_27E2E4718, &qword_27E2E4720, &unk_23D810BC0, MEMORY[0x277CDF458]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_23D7AF218();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23D7AF164()
{
  if (!qword_27E2E4710)
  {
    v0 = sub_23D80DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E4710);
    }
  }
}

void sub_23D7AF1B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D7AF218()
{
  if (!qword_27E2E4728)
  {
    sub_23D80DAAC();
    v0 = sub_23D80DA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E4728);
    }
  }
}

uint64_t sub_23D7AF284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D7AF364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D7AF42C()
{
  sub_23D7AF5BC();
  if (v0 <= 0x3F)
  {
    sub_23D7AF62C();
    if (v1 <= 0x3F)
    {
      sub_23D7AF6A8(319, &qword_27E2E4758);
      if (v2 <= 0x3F)
      {
        sub_23D7AF6A8(319, &qword_27E2E4760);
        if (v3 <= 0x3F)
        {
          sub_23D7AF6A8(319, &qword_27E2E4768);
          if (v4 <= 0x3F)
          {
            sub_23D7AF6A8(319, &qword_27E2E4770);
            if (v5 <= 0x3F)
            {
              sub_23D7AF6A8(319, &qword_27E2E4778);
              if (v6 <= 0x3F)
              {
                sub_23D7AF6A8(319, &qword_27E2E4780);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D7AF5BC()
{
  if (!qword_27E2E4740)
  {
    sub_23D80DAAC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E2E4740);
    }
  }
}

void sub_23D7AF62C()
{
  if (!qword_27E2E4748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4750, "@~");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E2E4748);
    }
  }
}

void sub_23D7AF6A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_23D7AF7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D7AF844()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6574696877;
    v8 = 0x776F6C6C6579;
    v9 = 0x6E65657267;
    if (v1 != 3)
    {
      v9 = 1802398064;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 1702194274;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x657247746867696CLL;
    v3 = 0x6E6950746867696CLL;
    if (v1 != 9)
    {
      v3 = 0x727550746867696CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x656C70727570;
    v5 = 0x756C42746867696CLL;
    if (v1 != 6)
    {
      v5 = 0x6C6559746867696CLL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t AXRHighlightColor.color.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {

        return MEMORY[0x2821333F8]();
      }

      else
      {

        return sub_23D80DC1C();
      }
    }

    else if (v1 == 2)
    {

      return MEMORY[0x2821334B0]();
    }

    else if (v1 == 3)
    {

      return MEMORY[0x282133478]();
    }

    else
    {

      return MEMORY[0x282133430]();
    }
  }

  else
  {
    if (*v0 > 7u)
    {
      if (v1 == 8)
      {
        v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.752941176 green:0.929411765 blue:0.447058824 alpha:1.0];
      }

      else
      {
        if (v1 != 9)
        {
          v2 = objc_allocWithZone(MEMORY[0x277D75348]);
          v3 = 0.850980392;
          v4 = 0.698039216;
          goto LABEL_34;
        }

        v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.690196078 blue:0.792156863 alpha:1.0];
      }

LABEL_35:

      return MEMORY[0x28212FFA8](v5);
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        v2 = objc_allocWithZone(MEMORY[0x277D75348]);
        v3 = 0.678431373;
        v4 = 0.847058824;
LABEL_34:
        v5 = [v2 initWithRed:v3 green:v4 blue:1.0 alpha:1.0];
        goto LABEL_35;
      }

      v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.921568627 blue:0.419607843 alpha:1.0];
      goto LABEL_35;
    }

    return MEMORY[0x2821334A8]();
  }
}

uint64_t AXRHighlightColor.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 7u)
    {
      if (v1 != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v1 != 8)
    {
      if (v1 != 9)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

LABEL_15:
    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v3 = 0x69682E6E65657267;
    goto LABEL_30;
  }

  if (*v0 <= 1u)
  {
    if (*v0)
    {
LABEL_26:
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 1702194274;
LABEL_29:
      v3 = v2 | 0x6769682E00000000;
      goto LABEL_30;
    }

    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v3 = 0x69682E6574696877;
LABEL_30:
    v4 = qword_27E2E4610;
    if (!qword_27E2E4610)
    {
      return v3;
    }

LABEL_31:
    v5 = v4;
    v6 = sub_23D80DD4C();
    v7 = sub_23D80DD4C();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v3 = sub_23D80DD7C();
    return v3;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
LABEL_11:
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 1802398064;
      goto LABEL_29;
    }

    goto LABEL_15;
  }

LABEL_18:
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v4 = qword_27E2E4610;
  v3 = 0xD000000000000010;
  if (qword_27E2E4610)
  {
    goto LABEL_31;
  }

  return v3;
}

AccessibilityReaderData::AXRHighlightColor_optional __swiftcall AXRHighlightColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23D7AFED0()
{
  result = qword_27E2E4798;
  if (!qword_27E2E4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4798);
  }

  return result;
}

uint64_t sub_23D7AFF24()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D8004B8();
  return sub_23D80E5CC();
}

uint64_t sub_23D7AFF74()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D8004B8();
  return sub_23D80E5CC();
}

uint64_t sub_23D7AFFC4@<X0>(uint64_t *a1@<X8>)
{
  result = AXRHighlightColor.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23D7AFFF0()
{
  result = qword_27E2E47A0;
  if (!qword_27E2E47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E47A8, &qword_23D810DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRHighlightColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRHighlightColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7B0270()
{
  result = qword_27E2E47B0;
  if (!qword_27E2E47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47B0);
  }

  return result;
}

Swift::Double __swiftcall DynamicTypeSize.scalingFactor(forTextStyle:)(UIFontTextStyle forTextStyle)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 pointSize];
  v4 = v3;

  return DynamicTypeSize.numerator(forTextStyle:)(forTextStyle) / v4;
}

id DynamicTypeSize.uiKitContentSize.getter()
{
  v1 = v0;
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF9F8])
  {
    v8 = MEMORY[0x277D76830];
  }

  else if (v7 == *MEMORY[0x277CDF9E0])
  {
    v8 = MEMORY[0x277D76858];
  }

  else if (v7 == *MEMORY[0x277CDF9E8])
  {
    v8 = MEMORY[0x277D76840];
  }

  else if (v7 == *MEMORY[0x277CDF9D8])
  {
    v8 = MEMORY[0x277D76838];
  }

  else if (v7 == *MEMORY[0x277CDF9F0])
  {
    v8 = MEMORY[0x277D76828];
  }

  else if (v7 == *MEMORY[0x277CDFA00])
  {
    v8 = MEMORY[0x277D76820];
  }

  else if (v7 == *MEMORY[0x277CDFA10])
  {
    v8 = MEMORY[0x277D76818];
  }

  else if (v7 == *MEMORY[0x277CDF988])
  {
    v8 = MEMORY[0x277D76808];
  }

  else if (v7 == *MEMORY[0x277CDF998])
  {
    v8 = MEMORY[0x277D76800];
  }

  else if (v7 == *MEMORY[0x277CDF9A8])
  {
    v8 = MEMORY[0x277D767F8];
  }

  else if (v7 == *MEMORY[0x277CDF9B8])
  {
    v8 = MEMORY[0x277D767F0];
  }

  else
  {
    if (v7 != *MEMORY[0x277CDF9D0])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x277D76840];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x277D767E8];
  }

  v9 = *v8;

  return v9;
}

uint64_t UIContentSizeCategory.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76830];
  v3 = sub_23D80DD7C();
  v5 = v4;
  if (v3 == sub_23D80DD7C() && v5 == v6)
  {
    v9 = MEMORY[0x277CDF9F8];
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_23D80E4DC();

  if (v8)
  {
    v9 = MEMORY[0x277CDF9F8];
    goto LABEL_9;
  }

  v14 = *MEMORY[0x277D76858];
  v15 = sub_23D80DD7C();
  v17 = v16;
  if (v15 == sub_23D80DD7C() && v17 == v18)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_8;
  }

  v20 = sub_23D80E4DC();

  if (v20)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_9;
  }

  v21 = *MEMORY[0x277D76840];
  v22 = sub_23D80DD7C();
  v24 = v23;
  if (v22 == sub_23D80DD7C() && v24 == v25)
  {
    v9 = MEMORY[0x277CDF9E8];
    goto LABEL_8;
  }

  v26 = sub_23D80E4DC();

  v27 = MEMORY[0x277CDF9E8];
  v9 = MEMORY[0x277CDF9E8];
  if ((v26 & 1) == 0)
  {
    v28 = *MEMORY[0x277D76838];
    v29 = sub_23D80DD7C();
    v31 = v30;
    if (v29 == sub_23D80DD7C() && v31 == v32)
    {
      v9 = MEMORY[0x277CDF9D8];
      goto LABEL_8;
    }

    v33 = sub_23D80E4DC();

    if (v33)
    {
      v9 = MEMORY[0x277CDF9D8];
    }

    else
    {
      v34 = *MEMORY[0x277D76828];
      v35 = sub_23D80DD7C();
      v37 = v36;
      if (v35 == sub_23D80DD7C() && v37 == v38)
      {
        v9 = MEMORY[0x277CDF9F0];
        goto LABEL_8;
      }

      v39 = sub_23D80E4DC();

      if (v39)
      {
        v9 = MEMORY[0x277CDF9F0];
      }

      else
      {
        v40 = *MEMORY[0x277D76820];
        v41 = sub_23D80DD7C();
        v43 = v42;
        if (v41 == sub_23D80DD7C() && v43 == v44)
        {
          v9 = MEMORY[0x277CDFA00];
          goto LABEL_8;
        }

        v45 = sub_23D80E4DC();

        if (v45)
        {
          v9 = MEMORY[0x277CDFA00];
        }

        else
        {
          v46 = *MEMORY[0x277D76818];
          v47 = sub_23D80DD7C();
          v49 = v48;
          if (v47 == sub_23D80DD7C() && v49 == v50)
          {
            v9 = MEMORY[0x277CDFA10];
            goto LABEL_8;
          }

          v51 = sub_23D80E4DC();

          if (v51)
          {
            v9 = MEMORY[0x277CDFA10];
          }

          else
          {
            v52 = *MEMORY[0x277D76808];
            v53 = sub_23D80DD7C();
            v55 = v54;
            if (v53 == sub_23D80DD7C() && v55 == v56)
            {
              v9 = MEMORY[0x277CDF988];
              goto LABEL_8;
            }

            v57 = sub_23D80E4DC();

            if (v57)
            {
              v9 = MEMORY[0x277CDF988];
            }

            else
            {
              v58 = *MEMORY[0x277D76800];
              v59 = sub_23D80DD7C();
              v61 = v60;
              if (v59 == sub_23D80DD7C() && v61 == v62)
              {
                v9 = MEMORY[0x277CDF998];
                goto LABEL_8;
              }

              v63 = sub_23D80E4DC();

              if (v63)
              {
                v9 = MEMORY[0x277CDF998];
              }

              else
              {
                v64 = *MEMORY[0x277D767F8];
                v65 = sub_23D80DD7C();
                v67 = v66;
                if (v65 == sub_23D80DD7C() && v67 == v68)
                {
                  v9 = MEMORY[0x277CDF9A8];
                  goto LABEL_8;
                }

                v69 = sub_23D80E4DC();

                if (v69)
                {
                  v9 = MEMORY[0x277CDF9A8];
                }

                else
                {
                  v70 = *MEMORY[0x277D767F0];
                  v71 = sub_23D80DD7C();
                  v73 = v72;
                  if (v71 == sub_23D80DD7C() && v73 == v74)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                    goto LABEL_8;
                  }

                  v75 = sub_23D80E4DC();

                  if (v75)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                  }

                  else
                  {
                    v76 = *MEMORY[0x277D767E8];
                    v77 = sub_23D80DD7C();
                    v79 = v78;
                    v80 = sub_23D80DD7C();
                    v9 = MEMORY[0x277CDF9D0];
                    if (v77 == v80 && v79 == v81)
                    {
                      goto LABEL_8;
                    }

                    v82 = sub_23D80E4DC();

                    if ((v82 & 1) == 0)
                    {
                      v9 = v27;
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

LABEL_9:
  v10 = *v9;
  v11 = sub_23D80DAAC();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_23D7B0C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23D80E4DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23D7B0D0C(uint64_t a1)
{
  v2 = sub_23D7B1F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7B0D48(uint64_t a1)
{
  v2 = sub_23D7B1F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7B0D88()
{
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](0);
  return sub_23D80E5CC();
}

uint64_t sub_23D7B0DF8()
{
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](0);
  return sub_23D80E5CC();
}

uint64_t DynamicTypeSize.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E47B8, &qword_23D810EE0);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = sub_23D80DAAC();
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B1F4C();
  sub_23D80E5DC();
  if (!v2)
  {
    v13 = v19;
    v14 = sub_23D80E3FC();
    v15 = v20;
    if (v14 >= 0xC)
    {
      sub_23D7B1FA0();
      swift_allocError();
      swift_willThrow();
      (*(v15 + 8))(v7, v4);
    }

    else
    {
      v16 = qword_278BEA998[v14];
      (*(v20 + 8))(v7, v4);
      (*(v13 + 104))(v11, *v16, v8);
      (*(v13 + 32))(v18, v11, v8);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicTypeSize.encode(to:)(void *a1)
{
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E47D0, &unk_23D810EE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B1F4C();
  sub_23D80E5EC();
  (*(v3 + 16))(v6, v15[1], v2);
  v13 = (*(v3 + 88))(v6, v2);
  if (v13 == *MEMORY[0x277CDF9F8] || v13 == *MEMORY[0x277CDF9E0] || v13 == *MEMORY[0x277CDF9E8] || v13 == *MEMORY[0x277CDF9D8] || v13 == *MEMORY[0x277CDF9F0] || v13 == *MEMORY[0x277CDFA00] || v13 == *MEMORY[0x277CDFA10] || v13 == *MEMORY[0x277CDF988] || v13 == *MEMORY[0x277CDF998] || v13 == *MEMORY[0x277CDF9A8] || v13 == *MEMORY[0x277CDF9B8] || v13 == *MEMORY[0x277CDF9D0])
  {
    sub_23D80E48C();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_23D7B1FA0();
    swift_allocError();
    swift_willThrow();
    (*(v8 + 8))(v11, v7);
    return (*(v3 + 8))(v6, v2);
  }
}

Swift::Double __swiftcall DynamicTypeSize.numerator(forTextStyle:)(UIFontTextStyle forTextStyle)
{
  v2 = v1;
  v3 = sub_23D80DAAC();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *MEMORY[0x277D76A20];
  v17 = sub_23D80DD7C();
  v19 = v18;
  if (v17 == sub_23D80DD7C() && v19 == v20)
  {

    goto LABEL_15;
  }

  v22 = sub_23D80E4DC();

  if (v22)
  {
LABEL_15:
    v35 = v47;
    (*(v47 + 16))(v15, v2, v3);
    v36 = (*(v35 + 88))(v15, v3);
    v37.n128_u64[0] = 19.0;
    if (v36 == *MEMORY[0x277CDF9F8])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 20.0;
    if (v36 == *MEMORY[0x277CDF9E0])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 21.0;
    if (v36 == *MEMORY[0x277CDF9E8])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 22.0;
    if (v36 == *MEMORY[0x277CDF9D8])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 24.0;
    if (v36 == *MEMORY[0x277CDF9F0])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 26.0;
    if (v36 == *MEMORY[0x277CDFA00])
    {
      return v37.n128_f64[0];
    }

    v37.n128_u64[0] = 28.0;
    if (v36 == *MEMORY[0x277CDFA10])
    {
      return v37.n128_f64[0];
    }

    if (v36 == *MEMORY[0x277CDF988])
    {
      goto LABEL_45;
    }

    if (v36 == *MEMORY[0x277CDF998])
    {
      v38 = 0x4043800000000000;
LABEL_69:
      v37.n128_u64[0] = v38;
      return v37.n128_f64[0];
    }

    if (v36 == *MEMORY[0x277CDF9A8])
    {
      goto LABEL_68;
    }

    if (v36 == *MEMORY[0x277CDF9B8])
    {
      v38 = 0x4049000000000000;
      goto LABEL_69;
    }

    if (v36 == *MEMORY[0x277CDF9D0])
    {
      goto LABEL_78;
    }

    goto LABEL_74;
  }

  v23 = *MEMORY[0x277D769A8];
  v24 = sub_23D80DD7C();
  v26 = v25;
  if (v24 == sub_23D80DD7C() && v26 == v27)
  {

    goto LABEL_26;
  }

  v29 = sub_23D80E4DC();

  if (v29)
  {
LABEL_26:
    v35 = v47;
    (*(v47 + 16))(v13, v2, v3);
    v39 = (*(v35 + 88))(v13, v3);
    v37.n128_u64[0] = 31.0;
    if (v39 == *MEMORY[0x277CDF9F8])
    {
      return v37.n128_f64[0];
    }

    if (v39 == *MEMORY[0x277CDF9E0])
    {
      v38 = 0x4040000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF9E8])
    {
LABEL_30:
      v38 = 0x4040800000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF9D8])
    {
LABEL_45:
      v38 = 0x4041000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF9F0])
    {
      v38 = 0x4042000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDFA00])
    {
      v38 = 0x4043000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDFA10])
    {
      goto LABEL_63;
    }

    if (v39 == *MEMORY[0x277CDF988])
    {
LABEL_68:
      v38 = 0x4046000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF998])
    {
      v38 = 0x4048000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF9A8])
    {
      v38 = 0x404A000000000000;
      goto LABEL_69;
    }

    if (v39 == *MEMORY[0x277CDF9B8])
    {
LABEL_78:
      v38 = 0x404C000000000000;
      goto LABEL_69;
    }

    v15 = v13;
    if (v39 == *MEMORY[0x277CDF9D0])
    {
      v38 = 0x404E000000000000;
      goto LABEL_69;
    }

LABEL_74:
    (*(v35 + 8))(v15, v3, v37);
    v37.n128_u64[0] = 1.0;
    return v37.n128_f64[0];
  }

  v30 = *MEMORY[0x277D76988];
  v31 = sub_23D80DD7C();
  v33 = v32;
  if (v31 == sub_23D80DD7C() && v33 == v34)
  {
  }

  else
  {
    v40 = sub_23D80E4DC();

    if ((v40 & 1) == 0)
    {
      v44 = v47;
      (*(v47 + 16))(v7, v2, v3);
      v42 = (*(v44 + 88))(v7, v3);
      v37.n128_u64[0] = 14.0;
      if (v42 != *MEMORY[0x277CDF9F8])
      {
        v37.n128_u64[0] = 15.0;
        if (v42 != *MEMORY[0x277CDF9E0])
        {
          v37.n128_u64[0] = 16.0;
          if (v42 != *MEMORY[0x277CDF9E8])
          {
            v37.n128_u64[0] = 17.0;
            if (v42 != *MEMORY[0x277CDF9D8])
            {
              v37.n128_u64[0] = 19.0;
              if (v42 != *MEMORY[0x277CDF9F0])
              {
                v37.n128_u64[0] = 21.0;
                if (v42 != *MEMORY[0x277CDFA00])
                {
                  v37.n128_u64[0] = 23.0;
                  if (v42 != *MEMORY[0x277CDFA10])
                  {
                    v37.n128_u64[0] = 28.0;
                    if (v42 != *MEMORY[0x277CDF988])
                    {
                      if (v42 != *MEMORY[0x277CDF998])
                      {
                        if (v42 != *MEMORY[0x277CDF9A8])
                        {
                          if (v42 != *MEMORY[0x277CDF9B8])
                          {
                            v43 = *MEMORY[0x277CDF9D0];
                            v15 = v7;
LABEL_82:
                            v35 = v47;
                            if (v42 == v43)
                            {
                              v38 = 0x404A800000000000;
                              goto LABEL_69;
                            }

                            goto LABEL_74;
                          }

                          goto LABEL_57;
                        }

LABEL_63:
                        v38 = 0x4044000000000000;
                        goto LABEL_69;
                      }

                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v37.n128_f64[0];
    }
  }

  v41 = v47;
  (*(v47 + 16))(v10, v2, v3);
  v42 = (*(v41 + 88))(v10, v3);
  v37.n128_u64[0] = 14.0;
  if (v42 != *MEMORY[0x277CDF9F8])
  {
    v37.n128_u64[0] = 15.0;
    if (v42 != *MEMORY[0x277CDF9E0])
    {
      v37.n128_u64[0] = 16.0;
      if (v42 != *MEMORY[0x277CDF9E8])
      {
        v37.n128_u64[0] = 17.0;
        if (v42 != *MEMORY[0x277CDF9D8])
        {
          v37.n128_u64[0] = 19.0;
          if (v42 != *MEMORY[0x277CDF9F0])
          {
            v37.n128_u64[0] = 21.0;
            if (v42 != *MEMORY[0x277CDFA00])
            {
              v37.n128_u64[0] = 23.0;
              if (v42 != *MEMORY[0x277CDFA10])
              {
                v37.n128_u64[0] = 28.0;
                if (v42 != *MEMORY[0x277CDF988])
                {
                  if (v42 != *MEMORY[0x277CDF998])
                  {
                    if (v42 != *MEMORY[0x277CDF9A8])
                    {
                      if (v42 != *MEMORY[0x277CDF9B8])
                      {
                        v43 = *MEMORY[0x277CDF9D0];
                        v15 = v10;
                        goto LABEL_82;
                      }

LABEL_57:
                      v38 = 0x4047800000000000;
                      goto LABEL_69;
                    }

                    goto LABEL_63;
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }
      }
    }
  }

  return v37.n128_f64[0];
}

double DynamicTypeSize.scaledSpacing(_:)(double a1)
{
  v2 = v1;
  v4 = sub_23D80DAAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277CDF9F8] && v9 != *MEMORY[0x277CDF9E0] && v9 != *MEMORY[0x277CDF9E8] && v9 != *MEMORY[0x277CDF9D8])
  {
    if (v9 == *MEMORY[0x277CDF9F0] || v9 == *MEMORY[0x277CDFA00])
    {
      v14 = 1.3;
    }

    else if (v9 == *MEMORY[0x277CDFA10])
    {
      v14 = 1.5;
    }

    else
    {
      if (v9 == *MEMORY[0x277CDF988])
      {
        v15 = 0x3FFB333333333333;
      }

      else if (v9 == *MEMORY[0x277CDF998])
      {
        v15 = 0x3FFE666666666666;
      }

      else
      {
        if (v9 == *MEMORY[0x277CDF9A8])
        {
          v14 = 2.1;
          return a1 * v14;
        }

        if (v9 != *MEMORY[0x277CDF9B8])
        {
          if (v9 != *MEMORY[0x277CDF9D0])
          {
            a1 = a1 + a1;
            (*(v5 + 8))(v8, v4);
            return a1;
          }

          v14 = 2.7;
          return a1 * v14;
        }

        v15 = 0x4003333333333333;
      }

      v14 = *&v15;
    }

    return a1 * v14;
  }

  return a1;
}

unint64_t sub_23D7B1F4C()
{
  result = qword_27E2E47C0;
  if (!qword_27E2E47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47C0);
  }

  return result;
}

unint64_t sub_23D7B1FA0()
{
  result = qword_27E2E47C8;
  if (!qword_27E2E47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed.CustomCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AXRPlaybackSpeed.CustomCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_23D7B20F8()
{
  result = qword_27E2E47D8;
  if (!qword_27E2E47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47D8);
  }

  return result;
}

unint64_t sub_23D7B2150()
{
  result = qword_27E2E47E0;
  if (!qword_27E2E47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47E0);
  }

  return result;
}

unint64_t sub_23D7B21A8()
{
  result = qword_27E2E47E8;
  if (!qword_27E2E47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47E8);
  }

  return result;
}

unint64_t sub_23D7B2200()
{
  result = qword_27E2E47F0;
  if (!qword_27E2E47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47F0);
  }

  return result;
}

uint64_t sub_23D7B2268()
{
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

AccessibilityReaderData::AXRFormatterTheme_optional __swiftcall AXRFormatterTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXRFormatterTheme.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1802658148;
      goto LABEL_25;
    }

    if (v1 == 1)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 0x6465636E616C6162;
    }

    else
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 0x68742E65736F6F6CLL;
    }
  }

  else
  {
    if (*v0 <= 4u)
    {
      if (v1 == 3)
      {
        if (qword_27E2E4228 != -1)
        {
          swift_once();
        }

        v2 = 0x68742E746867696CLL;
        goto LABEL_30;
      }

      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1684828002;
LABEL_25:
      v2 = v3 | 0x6568742E00000000;
      if (qword_27E2E4610)
      {
        goto LABEL_31;
      }

      return v2;
    }

    if (v1 == 5)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1802465122;
      goto LABEL_25;
    }

    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v2 = 0x742E6D6F74737563;
  }

LABEL_30:
  if (qword_27E2E4610)
  {
LABEL_31:
    v4 = qword_27E2E4610;
    v5 = sub_23D80DD4C();
    v6 = sub_23D80DD4C();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v2 = sub_23D80DD7C();
  }

  return v2;
}

uint64_t AXRFormatterTheme.textColor.getter()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = sub_23D80DBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D80D4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      result = sub_23D80DC1C();
      goto LABEL_12;
    }

    v13 = 0x384535463846;
LABEL_11:
    v22 = v13;
    v23 = 0xE600000000000000;
    sub_23D80D4AC();
    sub_23D7904FC();
    v14 = sub_23D80E1AC();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    v22 = v14;
    v23 = v16;
    v21[3] = 35;
    v21[4] = 0xE100000000000000;
    v21[1] = 0;
    v21[2] = 0xE000000000000000;
    sub_23D80E1BC();

    v22 = 0;
    v17 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v18 = sub_23D80DD4C();

    v19 = [v17 initWithString_];

    [v19 scanHexLongLong_];
    (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v1);
    result = sub_23D80DC4C();
    goto LABEL_12;
  }

  if (*v0 > 4u)
  {
    result = 0;
    if (v11 != 5)
    {
      goto LABEL_12;
    }

    v13 = 0x313342333134;
    goto LABEL_11;
  }

  if (v11 != 3)
  {
    v13 = 0x453243324332;
    goto LABEL_11;
  }

  result = sub_23D80DBFC();
LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AXRFormatterTheme.color.getter()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = sub_23D80DBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D80D4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      v13 = sub_23D80DBFC();
      goto LABEL_10;
    }

    v14 = 0x453243324332;
LABEL_9:
    v26 = v14;
    v27 = 0xE600000000000000;
    v16 = v9;
    sub_23D80D4AC();
    sub_23D7904FC();
    v17 = sub_23D80E1AC();
    v19 = v18;
    (*(v7 + 8))(v11, v16);
    v26 = v17;
    v27 = v19;
    v25[3] = 35;
    v25[4] = 0xE100000000000000;
    v25[1] = 0;
    v25[2] = 0xE000000000000000;
    sub_23D80E1BC();

    v26 = 0;
    v20 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v21 = sub_23D80DD4C();

    v22 = [v20 initWithString_];

    [v22 scanHexLongLong_];
    (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v1);
    v13 = sub_23D80DC4C();
    goto LABEL_10;
  }

  if (*v0 <= 4u)
  {
    v13 = sub_23D80DC1C();
LABEL_10:
    v15 = v13;
    goto LABEL_11;
  }

  v15 = 0;
  if (v12 == 5)
  {
    v14 = 0x384535463846;
    goto LABEL_9;
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t AXRFormatterTheme.linkColor.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return MEMORY[0x28212FFA8](v0);
}

uint64_t AXRFormatterTheme.id.getter()
{
  v1 = *v0;
  v2 = 1802658148;
  v3 = 1802465122;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x746867696CLL;
  if (v1 != 3)
  {
    v4 = 1684828002;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6465636E616C6162;
  if (v1 != 1)
  {
    v5 = 0x65736F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23D7B2EA4()
{
  result = qword_27E2E47F8;
  if (!qword_27E2E47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47F8);
  }

  return result;
}

uint64_t sub_23D7B2F04()
{
  *v0;
  *v0;
  *v0;
  sub_23D80DDAC();
}

unint64_t sub_23D7B300C()
{
  result = qword_27E2E4800;
  if (!qword_27E2E4800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4808, &qword_23D8111D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4800);
  }

  return result;
}

void sub_23D7B3080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  if (v2 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (v2 != 3)
  {
    v8 = 1684828002;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6465636E616C6162;
  if (v2 != 1)
  {
    v10 = 0x65736F6F6CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for AXRFormatterTheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRFormatterTheme(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7B333C()
{
  result = qword_27E2E4810;
  if (!qword_27E2E4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4810);
  }

  return result;
}

uint64_t AXRArticle.init(appName:bundleID:content:title:date:isLandingPage:isLoading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  sub_23D80D66C();
  v19 = type metadata accessor for AXRArticle();
  v20 = (a9 + v19[5]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a9 + v19[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v19[7]);
  *v22 = a6;
  v22[1] = a7;
  *(a9 + v19[8]) = a5;
  result = sub_23D7B34BC(a8, a9 + v19[9]);
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  return result;
}

uint64_t type metadata accessor for AXRArticle()
{
  result = qword_27E2E4888;
  if (!qword_27E2E4888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7B34BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AXRArticle.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D80D67C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXRArticle.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRArticle() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AXRArticle.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRArticle() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AXRArticle.title.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRArticle() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AXRArticle.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRArticle() + 32));
}

uint64_t AXRArticle.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AXRArticle() + 36);

  return sub_23D7B36CC(v3, a1);
}

uint64_t sub_23D7B36CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AXRArticle.hash(into:)()
{
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0]);

  return sub_23D80DD0C();
}

uint64_t sub_23D7B380C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E69646E614C7369;
  if (v1 != 6)
  {
    v3 = 0x6E6964616F4C7369;
  }

  v4 = 0x746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 1702125924;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x656D614E707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23D7B3900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23D7B4EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23D7B3934(uint64_t a1)
{
  v2 = sub_23D7B3D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7B3970(uint64_t a1)
{
  v2 = sub_23D7B3D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AXRArticle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4828, &qword_23D8112E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B3D28();
  sub_23D80E5EC();
  LOBYTE(v26) = 0;
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4838, MEMORY[0x277CC95F0]);
  sub_23D80E49C();
  if (!v2)
  {
    v11 = type metadata accessor for AXRArticle();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v26) = 1;
    sub_23D80E44C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v26) = 2;
    sub_23D80E44C();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v26) = 3;
    sub_23D80E44C();
    v26 = *(v3 + v11[8]);
    v25[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
    sub_23D7B4744(&qword_27E2E4840, &qword_27E2E4848);
    sub_23D80E49C();
    v21 = v11[9];
    LOBYTE(v26) = 5;
    sub_23D80D63C();
    sub_23D7B4930(&qword_27E2E4850, MEMORY[0x277CC9578]);
    sub_23D80E43C();
    v22 = *(v3 + v11[10]);
    LOBYTE(v26) = 6;
    sub_23D80E45C();
    v23 = *(v3 + v11[11]);
    LOBYTE(v26) = 7;
    sub_23D80E45C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23D7B3D28()
{
  result = qword_27E2E4830;
  if (!qword_27E2E4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4830);
  }

  return result;
}

uint64_t AXRArticle.hashValue.getter()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t AXRArticle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_23D80D67C();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4858, &qword_23D8112F8);
  v41 = *(v44 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AXRArticle();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B3D28();
  v43 = v12;
  v18 = v45;
  sub_23D80E5DC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v6;
  v19 = v41;
  v45 = v16;
  LOBYTE(v47) = 0;
  sub_23D7B4930(&qword_27E2E4860, MEMORY[0x277CC95F0]);
  v20 = v42;
  sub_23D80E40C();
  v21 = v45;
  (*(v40 + 32))(v45, v20, v7);
  LOBYTE(v47) = 1;
  v22 = sub_23D80E3BC();
  v37 = v7;
  v23 = &v21[v13[5]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v47) = 2;
  v42 = 0;
  v25 = sub_23D80E3BC();
  v26 = v19;
  v27 = &v21[v13[6]];
  *v27 = v25;
  v27[1] = v28;
  LOBYTE(v47) = 3;
  v29 = sub_23D80E3BC();
  v30 = &v21[v13[7]];
  *v30 = v29;
  v30[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
  v46 = 4;
  sub_23D7B4744(&qword_27E2E4868, &qword_27E2E4870);
  sub_23D80E40C();
  *&v21[v13[8]] = v47;
  sub_23D80D63C();
  LOBYTE(v47) = 5;
  sub_23D7B4930(&qword_27E2E4878, MEMORY[0x277CC9578]);
  v32 = v38;
  sub_23D80E3AC();
  sub_23D7B34BC(v32, &v21[v13[9]]);
  LOBYTE(v47) = 6;
  v21[v13[10]] = sub_23D80E3CC() & 1;
  LOBYTE(v47) = 7;
  v33 = sub_23D80E3CC();
  (*(v26 + 8))(v43, v44);
  v34 = v33 & 1;
  v35 = v45;
  v45[v13[11]] = v34;
  sub_23D7B47E0(v35, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23D7B4844(v35);
}

uint64_t sub_23D7B44B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D80D67C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}