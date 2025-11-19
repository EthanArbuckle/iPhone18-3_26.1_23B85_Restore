uint64_t sub_2267D023C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D02A0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SportsContextEntry(0) + 24);

  return sub_2267D02E4(a1, v3);
}

uint64_t sub_2267D02E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D0390@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsContextEntry(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return sub_2267D042C(a3, v10);
}

uint64_t sub_2267D042C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D0490()
{
  sub_226836C58();
  sub_226836498();
  v1 = (v0 + *(type metadata accessor for SportsContextEntry(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_226836498();
  v4 = *(type metadata accessor for SportsDependencies(0) + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  sub_226836368();
  sub_226836C38();
  return sub_226836B48();
}

unint64_t sub_2267D0588()
{
  result = qword_27D7A22F8;
  if (!qword_27D7A22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A22F8);
  }

  return result;
}

uint64_t sub_2267D0624(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2267D0680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2267D06C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightContextSuggestionEntry.ValidTimeframe(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SpotlightContextSuggestionEntry.ValidTimeframe(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2267D07C8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2267D07E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2267D0858()
{
  result = sub_226835228();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267D08FC()
{
  result = sub_226835228();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsDependencies(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_2267D098C()
{
  v1 = OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener);
  }

  else
  {
    sub_226835BD8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2268363F8();

    v6 = [v4 initWithMachServiceName_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2267D0A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2310, &qword_226874910);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84FA0];
  return result;
}

id sub_2267D0ADC(uint64_t a1, void *a2)
{
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer____lazy_storage___xpcListener] = 0;
  v11 = OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2310, &qword_226874910);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84FA0];
  *(v12 + 24) = 0;
  *(v12 + 16) = v13;
  *&v2[v11] = v12;
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_contextStore] = a1;
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_suggestionStore] = a2;
  v14 = type metadata accessor for ContextualSuggestionServer();
  v25.receiver = v2;
  v25.super_class = v14;

  v15 = a2;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  v17 = sub_2263B7458();
  (*(v6 + 16))(v10, v17, v5);
  v18 = sub_226836038();
  v19 = sub_2268366E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2263AA000, v18, v19, "ContextualSuggestionServer init", v20, 2u);
    MEMORY[0x22AA821D0](v20, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  if (a1)
  {
    v21 = *(*a1 + 184);

    v22 = v16;
    v21(v16, &off_2839959B0);
  }

  v23 = sub_2267D098C();
  [v23 resume];

  return v16;
}

uint64_t sub_2267D0D78(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v3 + 16))(v7, v8, v2);
  v9 = a1;
  v10 = sub_226836038();
  v11 = sub_2268366C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_226836BB8();
    v16 = sub_2263B4D48(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2263AA000, v10, v11, "ContextualSuggestionServer: error grabbing remote object proxy: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x22AA821D0](v13, -1, -1);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

void sub_2267D0F60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2267D0FC8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_2267D1040(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_226836038();
  v10 = sub_2268366C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, "ContextualSuggestionServer: connection interrupted", v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  [a1 invalidate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock);
    v14 = result;

    MEMORY[0x28223BE20](v15, v16);
    *(&v17 - 2) = a1;
    os_unfair_lock_lock(v13 + 6);
    sub_2267D2F68();
    os_unfair_lock_unlock(v13 + 6);
  }

  return result;
}

uint64_t sub_2267D1240(uint64_t a1, uint64_t a2)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2263B7458();
  (*(v4 + 16))(v8, v9, v3);
  v10 = sub_226836038();
  v11 = sub_2268366E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v10, v11, "ContextualSuggestionServer: connection invalidated", v12, 2u);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(result + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock);
    v15 = result;

    MEMORY[0x28223BE20](v16, v17);
    *(&v18 - 2) = a2;
    os_unfair_lock_lock(v14 + 6);
    sub_2267D3018();
    os_unfair_lock_unlock(v14 + 6);
  }

  return result;
}

void sub_2267D1528(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_226835CA8();
    v5 = sub_226836348();
  }

  if (a2)
  {
    v6 = sub_226835018();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2267D15D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2263B7458();
  (*(v6 + 16))(v10, v11, v5);

  v12 = sub_226836038();
  v13 = sub_2268366E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(a2 + 16);

    _os_log_impl(&dword_2263AA000, v12, v13, "contextualEngine didUpdateActiveContexts: %ld", v14, 0xCu);
    MEMORY[0x22AA821D0](v14, -1, -1);
  }

  else
  {
  }

  v15 = (*(v6 + 8))(v10, v5);
  return (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v15);
}

id sub_2267D17FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualSuggestionServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267D18D0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2268368E8();

    if (v9)
    {

      sub_2267D2F1C();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2268368D8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2267D1AE8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2267D1CC8(v22 + 1);
    }

    v20 = v8;
    sub_2267D1EF0(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2267D2F1C();
  v11 = *(v6 + 40);
  v12 = sub_2268367D8();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2267D1F74(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2268367E8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2267D1AE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
    v2 = sub_226836938();
    v16 = v2;
    sub_2268368C8();
    if (sub_2268368F8())
    {
      sub_2267D2F1C();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2267D1CC8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_2268367D8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2268368F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2267D1CC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  result = sub_226836928();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2268367D8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2267D1EF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2268367D8();
  v5 = -1 << *(a2 + 32);
  result = sub_2268368B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2267D1F74(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2267D1CC8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2267D20D4();
      goto LABEL_12;
    }

    sub_2267D2224(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2268367D8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2267D2F1C();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2268367E8();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_226836B98();
  __break(1u);
}

id sub_2267D20D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  v2 = *v0;
  v3 = sub_226836918();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2267D2224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23D8, qword_226874A88);
  result = sub_226836928();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2268367D8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_2267D2438(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_226836908();

    if (v7)
    {
      v8 = sub_2267D25C0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_2267D2F1C();
  v11 = *(v3 + 40);
  v12 = sub_2268367D8();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2268367E8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2267D20D4();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2267D2718(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_2267D25C0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2268368D8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2267D1AE8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2268367D8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2267D2F1C();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2268367E8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2267D2718(v9);
  result = sub_2268367E8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2267D2718(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2268368A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2268367D8();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2267D28B8(void *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2263B7458();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_226836038();
  v12 = sub_2268366E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, "ContextualSuggestionServer: incoming connection", v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  v14 = (*(v5 + 8))(v9, v4);
  v15 = *(v2 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock);
  MEMORY[0x28223BE20](v14, v16);
  *(&v28 - 2) = a1;
  os_unfair_lock_lock(v15 + 6);
  sub_2267D2EBC();
  os_unfair_lock_unlock(v15 + 6);
  v17 = sub_226835BC8();
  [a1 setRemoteObjectInterface_];

  v18 = sub_226835BB8();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v19;
  v33 = sub_2267D2F0C;
  v34 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_22679BFD8;
  v32 = &block_descriptor_6;
  v21 = _Block_copy(&aBlock);
  v22 = a1;

  [v22 setInterruptionHandler_];
  _Block_release(v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v33 = sub_2267D2F14;
  v34 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_22679BFD8;
  v32 = &block_descriptor_25;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  [v26 setInvalidationHandler_];
  _Block_release(v25);
  [v26 resume];
  return 1;
}

uint64_t sub_2267D2C70(void (*a1)(uint64_t, void))
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2263B7458();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_226836038();
  v12 = sub_2268366E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, "ContextualSuggestionServer: requestSnapshots(forEndpoints:completion:)", v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  v14 = (*(v5 + 8))(v9, v4);
  v15 = (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_suggestionStore)) + 0xB0))(v14);
  v16 = sub_2263B9870(v15);

  a1(v16, 0);
}

unint64_t sub_2267D2E50()
{
  result = qword_27D7A2338;
  if (!qword_27D7A2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2338);
  }

  return result;
}

unint64_t sub_2267D2F1C()
{
  result = qword_27D7A23D0;
  if (!qword_27D7A23D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A23D0);
  }

  return result;
}

unint64_t sub_2267D2FA0()
{
  result = qword_27D7A23E8;
  if (!qword_27D7A23E8)
  {
    sub_2267D2F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A23E8);
  }

  return result;
}

AppPredictionInternal::EntityActionDataTypes __swiftcall EntityActionDataTypes.init(entities:isSelectedFromUI:isFromPasteboard:)(AppPredictionInternal::EntityActionDataTypes entities, Swift::Bool isSelectedFromUI, Swift::Bool isFromPasteboard)
{
  *v3 = entities.entities._rawValue;
  *(v3 + 8) = isSelectedFromUI;
  *(v3 + 9) = isFromPasteboard;
  entities.isSelectedFromUI = isSelectedFromUI;
  return entities;
}

uint64_t EntityActionDataTypes.debugDescription.getter()
{
  v56 = sub_2268350D8();
  v1 = *(v56 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v56, v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EntityActionDataTypes.EntityType();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = *(v0 + 9);
  v50 = *(v0 + 8);
  v51 = v12;
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v57 = *(v8 + 72);
    v53 = (v1 + 32);
    v54 = 0x80000002268CF430;
    v15 = MEMORY[0x277D84F90];
    v52 = (v1 + 8);
    while (1)
    {
      sub_2267D37CC(v14, v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload > 4)
      {
        v27 = *v10;
        v28 = *(v10 + 1);
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        if (EnumCaseMultiPayload == 5)
        {
          sub_226836968();

          *&v68 = 0xD000000000000011;
          v29 = v54;
        }

        else
        {
          sub_226836968();

          *&v68 = 0x4E20746867696C46;
          v29 = 0xEF203A7265626D75;
        }

LABEL_22:
        *(&v68 + 1) = v29;
        MEMORY[0x22AA7F8E0](v27, v28);
LABEL_23:

        v20 = *(&v68 + 1);
        v19 = v68;
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2267A046C(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v34 = *(v15 + 3);
        v23 = v22 + 1;
        if (v22 >= v34 >> 1)
        {
          v15 = sub_2267A046C((v34 > 1), v22 + 1, 1, v15);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v27 = *v10;
        v28 = *(v10 + 1);
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        sub_226836968();

        *&v68 = 0x617A696E6167724FLL;
        v29 = 0xEE00203A6E6F6974;
        goto LABEL_22;
      }

      (*v53)(v55, v10, v56);
      *&v68 = 0x203A6B6E694CLL;
      *(&v68 + 1) = 0xE600000000000000;
      v18 = sub_226835078();
      MEMORY[0x22AA7F8E0](v18);

      v20 = *(&v68 + 1);
      v19 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2267A046C(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v21 = *(v15 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v15 = sub_2267A046C((v21 > 1), v22 + 1, 1, v15);
      }

      (*v52)(v55, v56);
LABEL_4:
      *(v15 + 2) = v23;
      v16 = &v15[16 * v22];
      *(v16 + 4) = v19;
      *(v16 + 5) = v20;
      v14 += v57;
      if (!--v13)
      {
        goto LABEL_29;
      }
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v30 = *(v10 + 5);
        v72 = *(v10 + 4);
        v73 = v30;
        v31 = *(v10 + 7);
        v74 = *(v10 + 6);
        v75 = v31;
        v32 = *(v10 + 1);
        v68 = *v10;
        v69 = v32;
        v33 = *(v10 + 3);
        v70 = *(v10 + 2);
        v71 = v33;
        v66 = 0;
        v67 = 0xE000000000000000;
        MEMORY[0x22AA7F8E0](0x3A73736572646441, 0xE900000000000020);
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v58 = v68;
        v59 = v69;
        v60 = v70;
        v61 = v71;
        sub_226836A48();
        sub_2267D50A0(&v68);
        v19 = v66;
        v20 = v67;
        goto LABEL_24;
      }

      v24 = *v10;
      v25 = *(v10 + 1);
      v26 = 0x3A6C69616D45;
    }

    else
    {
      v24 = *v10;
      v25 = *(v10 + 1);
      v26 = 0x3A656E6F6850;
    }

    *&v68 = v26 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    *(&v68 + 1) = 0xE700000000000000;
    MEMORY[0x22AA7F8E0](v24, v25);
    goto LABEL_23;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_29:
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_226836968();

  *&v68 = 0xD000000000000012;
  *(&v68 + 1) = 0x80000002268CF3D0;
  if (v50)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v50)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v35, v36);

  v37 = v68;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2267A046C(0, *(v15 + 2) + 1, 1, v15);
  }

  v39 = *(v15 + 2);
  v38 = *(v15 + 3);
  if (v39 >= v38 >> 1)
  {
    v15 = sub_2267A046C((v38 > 1), v39 + 1, 1, v15);
  }

  *(v15 + 2) = v39 + 1;
  *&v15[16 * v39 + 32] = v37;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_226836968();

  *&v68 = 0xD000000000000011;
  *(&v68 + 1) = 0x80000002268CF3F0;
  if (v51)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v51)
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v40, v41);

  v42 = v68;
  v44 = *(v15 + 2);
  v43 = *(v15 + 3);
  if (v44 >= v43 >> 1)
  {
    v15 = sub_2267A046C((v43 > 1), v44 + 1, 1, v15);
  }

  *(v15 + 2) = v44 + 1;
  *&v15[16 * v44 + 32] = v42;
  *&v68 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267D503C();
  v45 = sub_226836388();
  v47 = v46;

  *&v68 = 0xD000000000000018;
  *(&v68 + 1) = 0x80000002268CF410;
  MEMORY[0x22AA7F8E0](v45, v47);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);

  return v68;
}

uint64_t type metadata accessor for EntityActionDataTypes.EntityType()
{
  result = qword_27D7A4150;
  if (!qword_27D7A4150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267D37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityActionDataTypes.EntityType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AddressComponents.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AddressComponents.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AddressComponents.jobTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AddressComponents.jobTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AddressComponents.organization.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AddressComponents.organization.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AddressComponents.street.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AddressComponents.street.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AddressComponents.city.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AddressComponents.city.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AddressComponents.state.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AddressComponents.state.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t AddressComponents.zipCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AddressComponents.zipCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t AddressComponents.country.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t AddressComponents.country.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

void __swiftcall AddressComponents.init(name:jobTitle:organization:street:city:state:zipCode:country:)(AppPredictionInternal::AddressComponents *__return_ptr retstr, Swift::String_optional name, Swift::String_optional jobTitle, Swift::String_optional organization, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional zipCode, Swift::String_optional country)
{
  retstr->name = name;
  retstr->jobTitle = jobTitle;
  retstr->organization = organization;
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->zipCode = zipCode;
  retstr->country = country;
}

unint64_t AddressComponents.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v64 = v0[4];
  v65 = v0[6];
  v3 = v0[7];
  v66 = v0[8];
  v4 = v0[9];
  v67 = v0[10];
  v68 = v0[5];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[14];
  v69 = v5;
  v70 = v0[13];
  v8 = v0[15];
  if (!v0[1])
  {
    v13 = MEMORY[0x277D84F90];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v61 = v0[2];
  v62 = v0[7];
  v9 = v0[9];
  v10 = v0[12];
  v11 = v0[15];
  v12 = v0[14];
  v71[0] = 0x203A656D614ELL;
  v71[1] = 0xE600000000000000;
  MEMORY[0x22AA7F8E0](*v0);
  v13 = sub_2267A046C(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_2267A046C((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = 0x203A656D614ELL;
  *(v16 + 5) = 0xE600000000000000;
  v8 = v11;
  v6 = v10;
  v4 = v9;
  v1 = v61;
  v3 = v62;
  if (v2)
  {
LABEL_7:
    strcpy(v71, "Job Title: ");
    HIDWORD(v71[1]) = -352321536;
    MEMORY[0x22AA7F8E0](v1, v2);
    v17 = v71[0];
    v18 = v71[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v20 = *(v13 + 2);
    v19 = *(v13 + 3);
    if (v20 >= v19 >> 1)
    {
      v13 = sub_2267A046C((v19 > 1), v20 + 1, 1, v13);
    }

    *(v13 + 2) = v20 + 1;
    v21 = &v13[16 * v20];
    *(v21 + 4) = v17;
    *(v21 + 5) = v18;
  }

LABEL_12:
  v22 = v69;
  if (v68)
  {
    v63 = v6;
    v23 = v7;
    v24 = v3;
    sub_226836968();

    strcpy(v71, "Organization: ");
    HIBYTE(v71[1]) = -18;
    MEMORY[0x22AA7F8E0](v64, v68);
    v25 = v71[0];
    v26 = v71[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v28 = *(v13 + 2);
    v27 = *(v13 + 3);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_2267A046C((v27 > 1), v28 + 1, 1, v13);
    }

    *(v13 + 2) = v28 + 1;
    v29 = &v13[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
    v3 = v24;
    v7 = v23;
    v6 = v63;
  }

  v30 = v70;
  if (v3)
  {
    v31 = v8;
    v32 = v6;
    v33 = v7;
    strcpy(v71, "Street: ");
    BYTE1(v71[1]) = 0;
    WORD1(v71[1]) = 0;
    HIDWORD(v71[1]) = -402653184;
    MEMORY[0x22AA7F8E0](v65, v3);
    v34 = v71[0];
    v35 = v71[1];
    v36 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v38 = *(v13 + 2);
    v37 = *(v13 + 3);
    if (v38 >= v37 >> 1)
    {
      v13 = sub_2267A046C((v37 > 1), v38 + 1, 1, v13);
    }

    *(v13 + 2) = v38 + 1;
    v39 = &v13[16 * v38];
    *(v39 + 4) = v34;
    *(v39 + 5) = v35;
    v4 = v36;
    v7 = v33;
    v6 = v32;
    v8 = v31;
    v22 = v69;
    v30 = v70;
  }

  if (v4)
  {
    v71[0] = 0x203A79746943;
    v71[1] = 0xE600000000000000;
    MEMORY[0x22AA7F8E0](v66, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v41 = *(v13 + 2);
    v40 = *(v13 + 3);
    if (v41 >= v40 >> 1)
    {
      v13 = sub_2267A046C((v40 > 1), v41 + 1, 1, v13);
    }

    *(v13 + 2) = v41 + 1;
    v42 = &v13[16 * v41];
    *(v42 + 4) = 0x203A79746943;
    *(v42 + 5) = 0xE600000000000000;
  }

  if (v22)
  {
    strcpy(v71, "State: ");
    v71[1] = 0xE700000000000000;
    MEMORY[0x22AA7F8E0](v67, v22);
    v43 = v71[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v45 = *(v13 + 2);
    v44 = *(v13 + 3);
    if (v45 >= v44 >> 1)
    {
      v13 = sub_2267A046C((v44 > 1), v45 + 1, 1, v13);
    }

    *(v13 + 2) = v45 + 1;
    v46 = &v13[16 * v45];
    *(v46 + 4) = v43;
    *(v46 + 5) = 0xE700000000000000;
  }

  if (v30)
  {
    strcpy(v71, "Zip Code: ");
    BYTE3(v71[1]) = 0;
    HIDWORD(v71[1]) = -369098752;
    MEMORY[0x22AA7F8E0](v6, v30);
    v47 = v71[0];
    v48 = v71[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v50 = *(v13 + 2);
    v49 = *(v13 + 3);
    if (v50 >= v49 >> 1)
    {
      v13 = sub_2267A046C((v49 > 1), v50 + 1, 1, v13);
    }

    *(v13 + 2) = v50 + 1;
    v51 = &v13[16 * v50];
    *(v51 + 4) = v47;
    *(v51 + 5) = v48;
  }

  if (v8)
  {
    strcpy(v71, "Country: ");
    WORD1(v71[1]) = 0;
    HIDWORD(v71[1]) = -385875968;
    MEMORY[0x22AA7F8E0](v7, v8);
    v52 = v71[0];
    v53 = v71[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2267A046C(0, *(v13 + 2) + 1, 1, v13);
    }

    v55 = *(v13 + 2);
    v54 = *(v13 + 3);
    if (v55 >= v54 >> 1)
    {
      v13 = sub_2267A046C((v54 > 1), v55 + 1, 1, v13);
    }

    *(v13 + 2) = v55 + 1;
    v56 = &v13[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267D503C();
  v57 = sub_226836388();
  v59 = v58;

  MEMORY[0x22AA7F8E0](v57, v59);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);

  return 0xD000000000000014;
}

uint64_t sub_2267D432C()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267D43A0()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267D43E4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65646F4370697ALL;
  if (v1 != 6)
  {
    v3 = 0x7972746E756F63;
  }

  v4 = 2037672291;
  if (v1 != 4)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x617A696E6167726FLL;
  if (v1 != 2)
  {
    v5 = 0x746565727473;
  }

  if (*v0)
  {
    v2 = 0x656C746954626F6ALL;
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

uint64_t sub_2267D44D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2267D5AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2267D4510(uint64_t a1)
{
  v2 = sub_2267D5538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2267D454C(uint64_t a1)
{
  v2 = sub_2267D5538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddressComponents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2400, &qword_226874AC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v23[11] = v1[3];
  v23[12] = v9;
  v10 = v1[4];
  v23[9] = v1[5];
  v23[10] = v10;
  v11 = v1[6];
  v23[7] = v1[7];
  v23[8] = v11;
  v12 = v1[9];
  v23[4] = v1[8];
  v23[5] = v12;
  v13 = v1[11];
  v23[2] = v1[10];
  v23[3] = v13;
  v14 = v1[13];
  v23[0] = v1[12];
  v23[1] = v14;
  v15 = v1[15];
  v23[6] = v1[14];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v23 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_2267D5538();
  sub_226836C78();
  v32 = 0;
  v21 = v24;
  sub_226836B08();
  if (v21)
  {
    return (*(v4 + 8))(v20, v3);
  }

  v24 = v15;
  v31 = 1;
  sub_226836B08();
  v30 = 2;
  sub_226836B08();
  v29 = 3;
  sub_226836B08();
  v28 = 4;
  sub_226836B08();
  v27 = 5;
  sub_226836B08();
  v26 = 6;
  sub_226836B08();
  v25 = 7;
  sub_226836B08();
  return (*(v4 + 8))(v20, v3);
}

uint64_t AddressComponents.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v12 = v0[4];
  v13 = v0[6];
  v4 = v0[7];
  v5 = v0[9];
  v14 = v0[8];
  v15 = v0[10];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[13];
  v16 = v0[14];
  v17 = v0[15];
  if (v0[1])
  {
    v9 = *v0;
    sub_226836C28();
    sub_226836498();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_226836C28();
    if (v2)
    {
LABEL_3:
      sub_226836C28();
      sub_226836498();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  sub_226836C28();
  if (v3)
  {
LABEL_4:
    sub_226836C28();
    sub_226836498();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_226836C28();
  if (v4)
  {
LABEL_5:
    sub_226836C28();
    sub_226836498();
    v10 = v17;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_226836C28();
  v10 = v17;
  if (v5)
  {
LABEL_6:
    sub_226836C28();
    sub_226836498();
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_226836C28();
  if (v7)
  {
LABEL_7:
    sub_226836C28();
    sub_226836498();
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_18:
    sub_226836C28();
    if (v10)
    {
      goto LABEL_9;
    }

    return sub_226836C28();
  }

LABEL_17:
  sub_226836C28();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_8:
  sub_226836C28();
  sub_226836498();
  if (!v10)
  {
    return sub_226836C28();
  }

LABEL_9:
  sub_226836C28();

  return sub_226836498();
}

uint64_t AddressComponents.hashValue.getter()
{
  sub_226836C08();
  AddressComponents.hash(into:)();
  return sub_226836C48();
}

uint64_t AddressComponents.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2408, &qword_226874AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2267D5538();
  sub_226836C68();
  if (v2)
  {
    v55 = v2;
    v57 = 0uLL;
    v52 = 0;
    v53 = 0;
    v58 = 0;
    v56 = 0;
    __swift_destroy_boxed_opaque_existential_1(v54);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = v56;
    v76 = v58;
    v77 = v52;
    v78 = v53;
    v79 = v57;
    v80 = 0;
    v81 = 0;
  }

  else
  {
    LOBYTE(v67) = 0;
    v13 = sub_226836AD8();
    v50 = v15;
    v51 = v13;
    LOBYTE(v67) = 1;
    v16 = sub_226836AD8();
    v48 = v17;
    v49 = v16;
    LOBYTE(v67) = 2;
    v18 = sub_226836AD8();
    v47 = v19;
    LOBYTE(v67) = 3;
    v20 = sub_226836AD8();
    v46 = v21;
    LOBYTE(v67) = 4;
    v56 = sub_226836AD8();
    v58 = v22;
    LOBYTE(v67) = 5;
    v23 = sub_226836AD8();
    v53 = v24;
    LOBYTE(v67) = 6;
    v25 = sub_226836AD8();
    v52 = v23;
    *&v57 = v25;
    *(&v57 + 1) = v26;
    v82 = 7;
    v27 = sub_226836AD8();
    v55 = 0;
    v28 = v27;
    v29 = v10;
    v31 = v30;
    (*(v6 + 8))(v29, v5);
    v32 = v50;
    *&v59 = v51;
    *(&v59 + 1) = v50;
    v33 = v48;
    *&v60 = v49;
    *(&v60 + 1) = v48;
    *&v61 = v18;
    v44 = v20;
    v45 = v18;
    v34 = v47;
    *(&v61 + 1) = v47;
    *&v62 = v20;
    v35 = v46;
    *(&v62 + 1) = v46;
    *&v63 = v56;
    *(&v63 + 1) = v58;
    *&v64 = v23;
    v36 = v53;
    *(&v64 + 1) = v53;
    v65 = v57;
    *&v66 = v28;
    *(&v66 + 1) = v31;
    v37 = v59;
    v38 = v60;
    v39 = v62;
    a2[2] = v61;
    a2[3] = v39;
    *a2 = v37;
    a2[1] = v38;
    v40 = v63;
    v41 = v64;
    v42 = v66;
    a2[6] = v65;
    a2[7] = v42;
    a2[4] = v40;
    a2[5] = v41;
    sub_2267D558C(&v59, &v67);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v67 = v51;
    v68 = v32;
    v69 = v49;
    v70 = v33;
    v71 = v45;
    v72 = v34;
    v73 = v44;
    v74 = v35;
    v75 = v56;
    v76 = v58;
    v77 = v52;
    v78 = v36;
    v79 = v57;
    v80 = v28;
    v81 = v31;
  }

  return sub_2267D50A0(&v67);
}

uint64_t sub_2267D4F88()
{
  sub_226836C08();
  AddressComponents.hash(into:)();
  return sub_226836C48();
}

uint64_t sub_2267D4FCC()
{
  sub_226836C08();
  AddressComponents.hash(into:)();
  return sub_226836C48();
}

unint64_t sub_2267D503C()
{
  result = qword_27D7A1A90;
  if (!qword_27D7A1A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A90);
  }

  return result;
}

uint64_t _s21AppPredictionInternal17AddressComponentsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v103 = a1[12];
  v107 = a1[13];
  v14 = a1[14];
  v106 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v18 = a2[3];
  v17 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[12];
  v26 = a2[13];
  v102 = a2[14];
  v105 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v95 = a2[7];
      v98 = a2[8];
      v79 = a1[11];
      v80 = a2[13];
      v77 = a2[2];
      v78 = a1[2];
      v27 = a1[14];
      v84 = a2[5];
      v86 = a1[4];
      v28 = a1[10];
      v90 = a1[6];
      v92 = a2[6];
      v29 = a2[11];
      v30 = a2[10];
      v88 = a1[5];
      v31 = a1[8];
      v32 = a1[9];
      v82 = a2[4];
      v33 = a2[9];
      v34 = a1[7];
      v35 = sub_226836B58();
      v22 = v95;
      v21 = v98;
      v9 = v34;
      v24 = v33;
      v12 = v32;
      v5 = v86;
      v10 = v31;
      v8 = v88;
      v7 = v90;
      v23 = v30;
      v4 = v78;
      v13 = v79;
      v25 = v29;
      v19 = v92;
      v11 = v28;
      v17 = v82;
      v20 = v84;
      v14 = v27;
      v16 = v77;
      v26 = v80;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v4 != v16 || v6 != v18)
    {
      v96 = v22;
      v99 = v21;
      v36 = v14;
      v83 = v17;
      v85 = v20;
      v37 = v11;
      v38 = v13;
      v39 = v25;
      v40 = v23;
      v87 = v5;
      v89 = v8;
      v41 = v10;
      v42 = v12;
      v43 = v24;
      v91 = v7;
      v93 = v19;
      v44 = v9;
      v45 = sub_226836B58();
      v9 = v44;
      v19 = v93;
      v22 = v96;
      v21 = v99;
      v24 = v43;
      v12 = v42;
      v20 = v85;
      v5 = v87;
      v10 = v41;
      v8 = v89;
      v7 = v91;
      v23 = v40;
      v25 = v39;
      v13 = v38;
      v11 = v37;
      v17 = v83;
      v14 = v36;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v17 || v8 != v20)
    {
      v97 = v22;
      v100 = v21;
      v81 = v26;
      v94 = v19;
      v46 = v14;
      v47 = v11;
      v48 = v13;
      v49 = v25;
      v50 = v23;
      v51 = v10;
      v52 = v12;
      v53 = v24;
      v54 = v7;
      v55 = v9;
      v56 = sub_226836B58();
      v22 = v97;
      v21 = v100;
      v9 = v55;
      v7 = v54;
      v24 = v53;
      v12 = v52;
      v10 = v51;
      v23 = v50;
      v25 = v49;
      v13 = v48;
      v11 = v47;
      v14 = v46;
      v19 = v94;
      v26 = v81;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v101 = v21;
      v57 = v14;
      v58 = v11;
      v59 = v13;
      v60 = v25;
      v61 = v23;
      v62 = v10;
      v63 = v12;
      v64 = v24;
      v65 = sub_226836B58();
      v21 = v101;
      v24 = v64;
      v12 = v63;
      v10 = v62;
      v23 = v61;
      v25 = v60;
      v13 = v59;
      v11 = v58;
      v14 = v57;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v66 = v14;
      v67 = v11;
      v68 = v13;
      v69 = v25;
      v70 = v23;
      v71 = sub_226836B58();
      v23 = v70;
      v25 = v69;
      v13 = v68;
      v11 = v67;
      v14 = v66;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v25)
    {
      v72 = v14;
      v73 = sub_226836B58();
      v14 = v72;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v107)
  {
    if (!v26)
    {
      return 0;
    }

    if (v103 != v104 || v107 != v26)
    {
      v74 = v14;
      v75 = sub_226836B58();
      v14 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v106)
  {
    if (v105 && (v14 == v102 && v106 == v105 || (sub_226836B58() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v105)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2267D5538()
{
  result = qword_27D7A3F40[0];
  if (!qword_27D7A3F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A3F40);
  }

  return result;
}

unint64_t sub_2267D55C8()
{
  result = qword_27D7A2410;
  if (!qword_27D7A2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2410);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2267D5630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2267D5678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2267D5718()
{
  result = sub_2268350D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_2267D57B8(uint64_t a1, unsigned int a2)
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

uint64_t sub_2267D5814(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AddressComponents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AddressComponents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2267D59F4()
{
  result = qword_27D7A4260[0];
  if (!qword_27D7A4260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4260);
  }

  return result;
}

unint64_t sub_2267D5A4C()
{
  result = qword_27D7A4370;
  if (!qword_27D7A4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4370);
  }

  return result;
}

unint64_t sub_2267D5AA4()
{
  result = qword_27D7A4378;
  if (!qword_27D7A4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4378);
  }

  return result;
}

uint64_t sub_2267D5AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_226836B58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974 || (sub_226836B58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746565727473 && a2 == 0xE600000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4370697ALL && a2 == 0xE700000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_226836B58();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2267D5D88()
{
  v1 = *(v0 + *(type metadata accessor for MeetingContextDependencies(0) + 20));
}

id sub_2267D5E54()
{
  v1 = *(v0 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));

  return v1;
}

uint64_t sub_2267D5EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = a3(0);
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2267D5F24(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2267D6FEC(a1, v5 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  return v5;
}

uint64_t sub_2267D60AC()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D6204@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_2267D623C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MeetingContext(0);
  sub_2267D79FC(&qword_27D7A1A40, type metadata accessor for MeetingContext);
  result = sub_2263B92B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267D62B4()
{
  v0 = sub_2267D895C();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226872800;
  result = type metadata accessor for MeetingContextStore.GenericMeetingContext(0);
  *(v3 + 32) = result;
  qword_27D7A51B8 = v3;
  return result;
}

uint64_t *sub_2267D6314()
{
  if (qword_27D7A4400 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51B8;
}

uint64_t sub_2267D6364()
{
  if (qword_27D7A4400 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267D63C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies;
  swift_beginAccess();
  return sub_2267D642C(v1 + v3, a1, type metadata accessor for MeetingContextDependencies);
}

uint64_t sub_2267D642C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267D6494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies;
  swift_beginAccess();
  sub_2267D64F4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267D64F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeetingContextDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D65B8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2267D642C(a1, v5 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v6 = *(a1 + *(type metadata accessor for MeetingContextDependencies(0) + 20));
  v8[2] = a1;
  *(v5 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts) = sub_2267D6960(sub_2267D68F4, v8, v6);
  sub_2267D6AD4(a1, type metadata accessor for MeetingContextDependencies);
  return v5;
}

uint64_t sub_2267D66E8(uint64_t a1)
{
  sub_2267D642C(a1, v1 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v3 = *(a1 + *(type metadata accessor for MeetingContextDependencies(0) + 20));
  v5[2] = a1;
  *(v1 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts) = sub_2267D6960(sub_2267D8B3C, v5, v3);
  sub_2267D6AD4(a1, type metadata accessor for MeetingContextDependencies);
  return v1;
}

id sub_2267D6800@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MeetingContext.Dependencies(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_226835228();
  (*(*(v13 - 8) + 16))(v11, a2, v13);
  *&v11[*(v7 + 28)] = v12;
  v14 = type metadata accessor for MeetingContextStore.GenericMeetingContext(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v12;
  result = sub_2267D6C54(v11);
  *a3 = v17;
  return result;
}

uint64_t sub_2267D6920(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2267D6C54(a1);
  return v5;
}

uint64_t sub_2267D6960(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_226836A08();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA7FDD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_2268369E8();
      v12 = *(v16 + 16);
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2267D6AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2267D6B54()
{
  v1 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2267D6B9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2267D6C54(uint64_t a1)
{
  v3 = sub_226835228();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));
  result = [v18 title];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = result;
  v36 = v3;
  v37 = a1;
  v21 = sub_226836408();
  v34 = v22;
  v35 = v21;

  v23 = [v18 location];
  if (v23)
  {
    v24 = v23;
    v25 = sub_226836408();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  result = [v18 startDate];
  if (!result)
  {
    goto LABEL_9;
  }

  v28 = result;
  sub_2268351F8();

  result = [v18 endDate];
  if (result)
  {
    v29 = result;
    sub_2268351F8();

    v30 = v34;
    *v17 = v35;
    v17[1] = v30;
    v17[2] = v25;
    v17[3] = v27;
    v31 = *(v4 + 32);
    v32 = v12;
    v33 = v36;
    v31(v17 + *(v13 + 24), v32, v36);
    v31(v17 + *(v13 + 28), v8, v33);
    sub_2267D6FEC(v17, v1 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
    sub_2267D6FEC(v37, v1 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
    return v1;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2267D6F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v11 = *(v10 + 24);
  v12 = sub_226835228();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a7[v11], a5, v12);
  v13 = &a7[*(v10 + 28)];

  return v15(v13, a6, v12);
}

uint64_t sub_2267D6FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267D7090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2267D70C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0) + 24);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267D713C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0) + 28);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267D71B8()
{
  v1 = 0x656C746974;
  v2 = 0x7461447472617473;
  if (*v0 != 2)
  {
    v2 = 0x65746144646E65;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_2267D7234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2267D89D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2267D7268(uint64_t a1)
{
  v2 = sub_2267D7534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2267D72A4(uint64_t a1)
{
  v2 = sub_2267D7534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2267D72E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2420, &qword_226874DD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2267D7534();
  sub_226836C78();
  v12 = *v3;
  v13 = v3[1];
  v24 = 0;
  sub_226836B18();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v23 = 1;
    sub_226836B08();
    v17 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
    v18 = *(v17 + 24);
    v22 = 2;
    sub_226835228();
    sub_2267D79FC(&qword_27D7A2428, MEMORY[0x277CC9578]);
    sub_226836B28();
    v19 = *(v17 + 28);
    v21 = 3;
    sub_226836B28();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2267D7534()
{
  result = qword_27D7A4408[0];
  if (!qword_27D7A4408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4408);
  }

  return result;
}

uint64_t sub_2267D7588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_226835228();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2430, &qword_226874DE0);
  v48 = *(v51 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v51, v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2267D7534();
  v52 = v15;
  v22 = v53;
  sub_226836C68();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v7;
  v46 = v11;
  v24 = v48;
  v23 = v49;
  v53 = v16;
  v25 = v50;
  v57 = 0;
  v26 = sub_226836AE8();
  v28 = v27;
  *v20 = v26;
  v20[1] = v27;
  v56 = 1;
  v29 = sub_226836AD8();
  v44 = v28;
  v20[2] = v29;
  v20[3] = v30;
  v55 = 2;
  v31 = sub_2267D79FC(&qword_27D7A2438, MEMORY[0x277CC9578]);
  v32 = v46;
  v42 = v31;
  v43 = 0;
  sub_226836AF8();
  v33 = *(v53 + 24);
  v34 = *(v23 + 32);
  v41 = v20;
  v35 = v32;
  v36 = v34;
  v34(v20 + v33, v35, v25);
  v54 = 3;
  v37 = v45;
  sub_226836AF8();
  (*(v24 + 8))(v52, v51);
  v38 = v41;
  v36(v41 + *(v53 + 28), v37, v25);
  sub_2267D642C(v38, v47, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2267D6AD4(v38, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
}

uint64_t sub_2267D79FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267D7A74()
{
  v1 = sub_226835228();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v21 = sub_226834F28();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata;
  v17 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v18 = *(v2 + 16);
  v18(v10, v16 + *(v17 + 24), v1);
  v18(v6, v16 + *(v17 + 28), v1);
  sub_226834F08();
  LOBYTE(v1) = sub_226834F18();
  (*(v11 + 8))(v15, v21);
  return v1 & 1;
}

uint64_t sub_2267D7C84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v1 setDateStyle_];
  [v1 setTimeStyle_];
  sub_226836968();

  v2 = (v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata);
  MEMORY[0x22AA7F8E0](*v2, v2[1]);
  MEMORY[0x22AA7F8E0](0x6574726174732022, 0xED00002074612064);
  v3 = v2 + *(type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0) + 24);
  v4 = sub_2268351A8();
  v5 = [v1 stringFromDate_];

  v6 = sub_226836408();
  v8 = v7;

  MEMORY[0x22AA7F8E0](v6, v8);

  return 34;
}

uint64_t sub_2267D7E0C()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  sub_2267D6AD4(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
  return v0;
}

uint64_t sub_2267D7E6C()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  sub_2267D6AD4(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D7F08()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts);

  return v0;
}

uint64_t sub_2267D7F54()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D7FDC(uint64_t a1)
{
  result = sub_2267D79FC(&qword_27D7A2440, type metadata accessor for MeetingContext);
  *(a1 + 8) = result;
  return result;
}

void sub_2267D8120()
{
  if (!qword_27D7A2448)
  {
    sub_2267D8178();
    v0 = sub_2268365C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A2448);
    }
  }
}

unint64_t sub_2267D8178()
{
  result = qword_27D7A2450;
  if (!qword_27D7A2450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A2450);
  }

  return result;
}

uint64_t sub_2267D81CC()
{
  result = type metadata accessor for MeetingContext.Dependencies(319);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226835228();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2267D8410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_226835228();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2267D84A4()
{
  result = type metadata accessor for MeetingContextDependencies(319);
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

uint64_t sub_2267D8568()
{
  result = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(319);
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

void sub_2267D8620()
{
  sub_2267D86B4();
  if (v0 <= 0x3F)
  {
    sub_226835228();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2267D86B4()
{
  if (!qword_27D7A2458)
  {
    v0 = sub_226836828();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A2458);
    }
  }
}

uint64_t getEnumTagSinglePayload for MeetingContextStore.GenericMeetingContext.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MeetingContextStore.GenericMeetingContext.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2267D8858()
{
  result = qword_27D7A47F0[0];
  if (!qword_27D7A47F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A47F0);
  }

  return result;
}

unint64_t sub_2267D88B0()
{
  result = qword_27D7A4900;
  if (!qword_27D7A4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4900);
  }

  return result;
}

unint64_t sub_2267D8908()
{
  result = qword_27D7A4908[0];
  if (!qword_27D7A4908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4908);
  }

  return result;
}

uint64_t sub_2267D895C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2418, &qword_226874DD0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A2460;
    v3 = &unk_226875068;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267D89D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_226836B58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_226836B58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_226836B58();

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

id sub_2267D8C1C()
{
  v5 = 0;
  type metadata accessor for PListDictionaryUtilities();
  v0 = *sub_2267CA304();

  sub_2267FB75C(v1, 0x6E69646465626D65, 0xEC00000078644967, sub_2267D8CD0, &v5, MEMORY[0x277D83B88], &v6);

  v2 = v6;
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  return [v3 initWithInteger_];
}

id sub_2267D8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  v15 = a3;
  type metadata accessor for PListDictionaryUtilities();
  v9 = *sub_2267CA304();

  sub_2267FB75C(v10, a4, a5, a6, &v15, MEMORY[0x277D83E88], &v16);

  v11 = v16;
  v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v13 = [v12 initWithUnsignedInteger_];

  return v13;
}

id sub_2267D8E98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v12 = a1;
  type metadata accessor for PListDictionaryUtilities();
  v7 = *sub_2267CA304();

  sub_2267FB75C(v8, a2, a3, a4, &v12, MEMORY[0x277D83E88], &v13);

  v9 = v13;
  v10 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  return [v10 initWithUnsignedInteger_];
}

uint64_t sub_2267D8F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 8) = result ^ 1;
  return result;
}

id sub_2267D9084()
{
  v6 = 1064346583;
  type metadata accessor for PListDictionaryUtilities();
  v0 = *sub_2267CA304();

  sub_2267FB75C(v1, 0xD000000000000010, 0x80000002268CF550, sub_2267D914C, &v6, MEMORY[0x277D83A90], &v7);

  v2 = v7;
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v4) = v2;
  return [v3 initWithFloat_];
}

uint64_t sub_2267D914C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 4) = result ^ 1;
  return result;
}

id sub_2267D91B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemanticSearchConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2267D9248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemanticSearchConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267D9280(uint64_t a1, uint64_t a2)
{
  v5 = sub_226835268();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226835258();
  sub_226835238();
  (*(v6 + 8))(v10, v5);
  (*(a2 + 32))(a1, a2);
  if (v2)
  {
  }

  v12 = objc_allocWithZone(sub_226835BF8());
  return sub_226835BE8();
}

uint64_t sub_2267D943C()
{
  v1 = sub_226836068();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267D94F8, 0, 0);
}

uint64_t sub_2267D94F8()
{
  v53 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[7] = v1;
  v2 = sub_2268363F8();
  [v1 setReason_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2268750E0;
  v4 = *MEMORY[0x277CC2770];
  *(v3 + 32) = sub_226836408();
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x277CC2750];
  *(v3 + 48) = sub_226836408();
  *(v3 + 56) = v7;
  v8 = *MEMORY[0x277CC2498];
  *(v3 + 64) = sub_226836408();
  *(v3 + 72) = v9;
  v10 = *MEMORY[0x277CC3038];
  *(v3 + 80) = sub_226836408();
  *(v3 + 88) = v11;
  v12 = *MEMORY[0x277CC2640];
  *(v3 + 96) = sub_226836408();
  *(v3 + 104) = v13;
  v14 = *MEMORY[0x277CC2D10];
  *(v3 + 112) = sub_226836408();
  *(v3 + 120) = v15;
  v16 = *MEMORY[0x277CC2A70];
  *(v3 + 128) = sub_226836408();
  *(v3 + 136) = v17;
  v18 = *MEMORY[0x277CC2678];
  *(v3 + 144) = sub_226836408();
  *(v3 + 152) = v19;
  v20 = *MEMORY[0x277CC31F8];
  *(v3 + 160) = sub_226836408();
  *(v3 + 168) = v21;
  v22 = sub_226836558();

  v50 = v1;
  [v1 setFetchAttributes_];

  v23 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v23)
  {
    v24 = v23;
    v25 = sub_2268363F8();
    v26 = [v24 integerForKey_];

    if (v26 <= 0)
    {
      v27 = 30;
    }

    else
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = 30;
  }

  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[4];
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_226836968();
  v31 = sub_226836408();
  MEMORY[0x22AA7F8E0](v31);

  MEMORY[0x22AA7F8E0](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x22AA7F8E0](0xD00000000000001ELL, 0x80000002268CF5C0);
  MEMORY[0x22AA7F8E0](0x6E49282026262022, 0xEE002865676E6152);
  v32 = sub_226836408();
  MEMORY[0x22AA7F8E0](v32);

  MEMORY[0x22AA7F8E0](0x2E656D697424202CLL, 0xED00002D28776F6ELL);
  v0[2] = v27;
  v33 = sub_226836B48();
  MEMORY[0x22AA7F8E0](v33);

  MEMORY[0x22AA7F8E0](0x6D697424202C2973, 0xEF2929776F6E2E65);
  v35 = v51;
  v34 = v52;
  v0[8] = v52;
  v36 = sub_2267FBC24();
  (*(v29 + 16))(v28, v36, v30);

  v37 = sub_226836038();
  v38 = sub_2268366E8();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[5];
  v41 = v0[6];
  v42 = v0[4];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2263B4D48(v35, v34, &v51);
    _os_log_impl(&dword_2263AA000, v37, v38, "Executing pasteboard query %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA821D0](v44, -1, -1);
    MEMORY[0x22AA821D0](v43, -1, -1);
  }

  (*(v40 + 8))(v41, v42);
  v45 = swift_task_alloc();
  v0[9] = v45;
  v45[2] = v35;
  v45[3] = v34;
  v45[4] = v50;
  v46 = *(MEMORY[0x277D85A40] + 4);
  v47 = swift_task_alloc();
  v0[10] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2468, &qword_226875100);
  *v47 = v0;
  v47[1] = sub_2267D9A6C;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000023, 0x80000002268CF5E0, sub_2267DA2C8, v45, v48);
}

uint64_t sub_2267D9A6C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2267D9C64;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);

    v4 = sub_2267D9B90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267D9B90()
{
  v7 = v0;
  v1 = *(v0 + 88);
  v6 = *(v0 + 24);

  sub_2267DC510(&v6);
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 48);

    v4 = v6;

    v5 = *(v0 + 8);

    return v5(v4);
  }
}

uint64_t sub_2267D9C64()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_2267D9CE8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = sub_226835228();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v27 - v20;
  v22 = type metadata accessor for PasteboardItem();
  sub_2267A1AF8(a1 + *(v22 + 36), v11, &qword_27D7A2530, qword_2268738A0);
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) == 1)
  {
    sub_226835178();
    if (v23(v11, 1, v12) != 1)
    {
      sub_2267A1DC0(v11, &qword_27D7A2530, qword_2268738A0);
    }
  }

  else
  {
    (*(v13 + 32))(v21, v11, v12);
  }

  sub_2267A1AF8(v28 + *(v22 + 36), v7, &qword_27D7A2530, qword_2268738A0);
  if (v23(v7, 1, v12) == 1)
  {
    sub_226835178();
    if (v23(v7, 1, v12) != 1)
    {
      sub_2267A1DC0(v7, &qword_27D7A2530, qword_2268738A0);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v7, v12);
  }

  v24 = sub_2268351B8();
  v25 = *(v13 + 8);
  v25(v17, v12);
  v25(v21, v12);
  return v24 & 1;
}

uint64_t sub_2267D9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &aBlock - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v13 = sub_2268363F8();
  v14 = [v12 initWithQueryString:v13 queryContext:a4];

  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v25 = sub_2267DF3F8;
  v26 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2267DB430;
  v24 = &block_descriptor_7;
  v16 = _Block_copy(&aBlock);

  [v14 setFoundItemsHandler_];
  _Block_release(v16);
  (*(v7 + 16))(v11, a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v11, v6);
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v25 = sub_2267DF400;
  v26 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2267DB4A4;
  v24 = &block_descriptor_12_0;
  v19 = _Block_copy(&aBlock);

  [v14 setCompletionHandler_];
  _Block_release(v19);
  [v14 start];
}

void sub_2267DA2D4(unint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24B0, qword_226875208);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = (&v28 - v6);
  v34 = type metadata accessor for PasteboardItem();
  v32 = *(v34 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v34, v9);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v31 = &v28 - v13;
  v28 = objc_autoreleasePoolPush();
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v15 = 0;
    v16 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = (v32 + 48);
    v19 = MEMORY[0x277D84F90];
    v30 = a1;
    while (1)
    {
      if (v16)
      {
        v20 = MEMORY[0x22AA7FDD0](v15, a1);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_18;
        }

        v20 = *(a1 + 8 * v15 + 32);
      }

      v21 = v20;
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v35 = v20;
      sub_2267DA5D8(&v35, v7);

      if ((*v18)(v7, 1, v34) == 1)
      {
        sub_2267A1DC0(v7, &qword_27D7A24B0, qword_226875208);
      }

      else
      {
        v23 = v31;
        sub_2267DF394(v7, v31);
        sub_2267DF394(v23, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2267DC338(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_2267DC338(v24 > 1, v25 + 1, 1, v19);
        }

        v19[2] = v25 + 1;
        sub_2267DF394(v33, v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25);
        a1 = v30;
      }

      ++v15;
      if (v22 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:
  v26 = v29;
  swift_beginAccess();
  v27 = *(v26 + 16);
  *(v26 + 16) = v19;

  objc_autoreleasePoolPop(v28);
}

uint64_t sub_2267DA5D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v101 = &v94 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v106 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v103 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v94 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v107 = &v94 - v25;
  v26 = sub_226834EE8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [*a1 attributeSet];
  v34 = *MEMORY[0x277CC2750];
  v105 = v33;
  if ([v33 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (!*(&v110 + 1))
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v102 = 0;
    v35 = 0;
    goto LABEL_10;
  }

  v35 = *(&v108 + 1);
  v102 = v108;
  v111 = v108;

  sub_226834ED8();
  sub_22679BAA8();
  sub_226836848();
  (*(v27 + 8))(v32, v26);

  v36 = sub_2268364A8();

  if (!v36)
  {
    v37 = type metadata accessor for PasteboardItem();
    (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

LABEL_10:
  v39 = v105;
  if ([v105 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v100 = v35;
  v111 = v109;
  v112 = v110;
  if (*(&v110 + 1))
  {
    v40 = sub_2268350D8();
    v41 = v107;
    v42 = swift_dynamicCast();
    (*(*(v40 - 8) + 56))(v41, v42 ^ 1u, 1, v40);
  }

  else
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    v43 = sub_2268350D8();
    (*(*(v43 - 8) + 56))(v107, 1, 1, v43);
  }

  if ([v39 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (*(&v110 + 1))
  {
    v44 = swift_dynamicCast();
    if (v44)
    {
      v45 = v108;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = *(&v108 + 1);
    }

    else
    {
      v46 = 0;
    }

    v98 = v46;
    v99 = v45;
  }

  else
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    v98 = 0;
    v99 = 0;
  }

  if ([v39 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (!*(&v110 + 1))
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_47:
    v104 = 0;
    v65 = v101;
    goto LABEL_50;
  }

  v96 = v8;
  v97 = a2;
  v47 = v108;
  v48 = *(v108 + 16);
  if (v48)
  {
    v49 = 0;
    v50 = v108 + 40;
    v94 = v48 - 1;
    v104 = MEMORY[0x277D84F90];
    v95 = v108 + 40;
    do
    {
      v51 = (v50 + 16 * v49);
      v52 = v49;
      while (1)
      {
        if (v52 >= *(v47 + 16))
        {
          __break(1u);
          return result;
        }

        v49 = v52 + 1;
        v53 = *(v51 - 1);
        v54 = *v51;

        sub_2268350B8();
        v55 = sub_2268350D8();
        v56 = *(v55 - 8);
        if ((*(v56 + 48))(v22, 1, v55) != 1)
        {
          break;
        }

        result = sub_2267A1DC0(v22, &qword_27D7A1A10, &qword_226873060);
        v51 += 2;
        ++v52;
        if (v48 == v49)
        {
          goto LABEL_49;
        }
      }

      v57 = sub_2268350A8();
      v59 = v58;

      (*(v56 + 8))(v22, v55);
      result = swift_isUniquelyReferenced_nonNull_native();
      v60 = v59;
      if ((result & 1) == 0)
      {
        result = sub_2267A046C(0, *(v104 + 2) + 1, 1, v104);
        v104 = result;
      }

      v62 = *(v104 + 2);
      v61 = *(v104 + 3);
      if (v62 >= v61 >> 1)
      {
        result = sub_2267A046C((v61 > 1), v62 + 1, 1, v104);
        v104 = result;
      }

      v63 = v104;
      *(v104 + 2) = v62 + 1;
      v64 = &v63[16 * v62];
      *(v64 + 4) = v57;
      *(v64 + 5) = v60;
      v50 = v95;
    }

    while (v94 != v52);
  }

  else
  {
    v104 = MEMORY[0x277D84F90];
  }

LABEL_49:

  a2 = v97;
  v8 = v96;
  v39 = v105;
  v65 = v101;
LABEL_50:
  if ([v39 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (!*(&v110 + 1))
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    v72 = sub_226835228();
    (*(*(v72 - 8) + 56))(v65, 1, 1, v72);
LABEL_57:
    if ([v39 attributeForKey_])
    {
      sub_226836878();
      swift_unknownObjectRelease();
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
    }

    v71 = v103;
    v111 = v109;
    v112 = v110;
    if (*(&v110 + 1))
    {
      v73 = sub_226835228();
      v74 = v106;
      v75 = swift_dynamicCast();
      (*(*(v73 - 8) + 56))(v74, v75 ^ 1u, 1, v73);
    }

    else
    {
      sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
      v73 = sub_226835228();
      (*(*(v73 - 8) + 56))(v106, 1, 1, v73);
    }

    sub_226835228();
    if ((*(*(v73 - 8) + 48))(v65, 1, v73) != 1)
    {
      sub_2267A1DC0(v65, &qword_27D7A2530, qword_2268738A0);
    }

    goto LABEL_65;
  }

  v66 = sub_226835228();
  v67 = swift_dynamicCast();
  v68 = *(v66 - 8);
  v69 = *(v68 + 56);
  v69(v65, v67 ^ 1u, 1, v66);
  if ((*(v68 + 48))(v65, 1, v66) == 1)
  {
    goto LABEL_57;
  }

  v70 = v106;
  (*(v68 + 32))(v106, v65, v66);
  v69(v70, 0, 1, v66);
  v71 = v103;
LABEL_65:
  if ([v39 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (*(&v110 + 1))
  {
    v76 = sub_226835228();
    v77 = swift_dynamicCast();
    (*(*(v76 - 8) + 56))(v8, v77 ^ 1u, 1, v76);
  }

  else
  {
    sub_2267A1DC0(&v111, &qword_27D7A1AA0, &qword_2268732C0);
    v78 = sub_226835228();
    (*(*(v78 - 8) + 56))(v8, 1, 1, v78);
  }

  sub_2267A1AF8(v107, v71, &qword_27D7A1A10, &qword_226873060);
  v79 = sub_2268350D8();
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v71, 1, v79) == 1)
  {
    sub_2267A1DC0(v71, &qword_27D7A1A10, &qword_226873060);
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v81 = sub_226835078();
    v82 = v83;
    (*(v80 + 8))(v71, v79);
  }

  v84 = [v39 relatedAppBundleIdentifier];
  if (v84)
  {
    v85 = v84;
    v86 = sub_226836408();
    v88 = v87;
  }

  else
  {

    v86 = 0;
    v88 = 0;
  }

  v89 = type metadata accessor for PasteboardItem();
  v90 = v106;
  sub_2267A1AF8(v106, a2 + *(v89 + 36), &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(v8, a2 + *(v89 + 40), &qword_27D7A2530, qword_2268738A0);
  v91 = v100;
  *a2 = v102;
  a2[1] = v91;
  a2[2] = v104;
  a2[3] = v81;
  a2[4] = v82;
  a2[5] = v86;
  v92 = v98;
  v93 = v99;
  a2[6] = v88;
  a2[7] = v93;
  a2[8] = v92;
  sub_2267A1DC0(v90, &qword_27D7A2530, qword_2268738A0);
  (*(*(v89 - 8) + 56))(a2, 0, 1, v89);
  sub_2267A1DC0(v8, &qword_27D7A2530, qword_2268738A0);
  return sub_2267A1DC0(v107, &qword_27D7A1A10, &qword_226873060);
}

uint64_t sub_2267DB3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  v13 = type metadata accessor for PasteboardItem();
  sub_2267A5C90(a11, a9 + *(v13 + 36));
  v14 = a9 + *(v13 + 40);

  return sub_2267A5C90(a12, v14);
}

uint64_t sub_2267DB430(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2267DF504();
  v3 = sub_226836568();

  v2(v3);
}

void sub_2267DB4A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2267DB528()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2267DB558()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2267DB588()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

id sub_2267DB648()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27D7A4998 = v0;
  return result;
}

uint64_t PasteboardItem.debugDescription.getter()
{
  v1 = v0;
  v43 = 4271950;
  v2 = sub_226835228();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for PasteboardItem();
  sub_2267A1AF8(v1 + *(v17 + 36), v16, &qword_27D7A2530, qword_2268738A0);
  v18 = *(v3 + 48);
  v19 = &unk_27D7A4000;
  if (v18(v16, 1, v2) == 1)
  {
    v20 = 0xE300000000000000;
    v42 = 4271950;
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    if (qword_27D7A4990 != -1)
    {
      swift_once();
    }

    v21 = qword_27D7A4998;
    v22 = sub_2268351A8();
    v23 = [v21 stringFromDate_];

    v42 = sub_226836408();
    v20 = v24;

    v19 = &unk_27D7A4000;
    (*(v3 + 8))(v7, v2);
  }

  sub_2267A1AF8(v1 + *(v17 + 40), v12, &qword_27D7A2530, qword_2268738A0);
  if (v18(v12, 1, v2) == 1)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    if (qword_27D7A4990 != -1)
    {
      swift_once();
    }

    v26 = v19[307];
    v27 = sub_2268351A8();
    v28 = [v26 stringFromDate_];

    v43 = sub_226836408();
    v25 = v29;

    (*(v3 + 8))(v7, v2);
  }

  v30 = 1701736270;
  if (v1[2])
  {
    v44 = v1[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
    sub_2267D503C();
    v31 = sub_226836388();
    v33 = v32;
  }

  else
  {
    v33 = 0xE400000000000000;
    v31 = 1701736270;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD00000000000001BLL, 0x80000002268CF630);
  if (v1[1])
  {
    v34 = *v1;
    v35 = v1[1];
  }

  else
  {
    v35 = 0xE400000000000000;
    v34 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v34, v35);

  MEMORY[0x22AA7F8E0](0xD00000000000001CLL, 0x80000002268CF650);
  MEMORY[0x22AA7F8E0](v31, v33);

  MEMORY[0x22AA7F8E0](0xD000000000000016, 0x80000002268CF670);
  if (v1[4])
  {
    v36 = v1[3];
    v37 = v1[4];
  }

  else
  {
    v37 = 0xE400000000000000;
    v36 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v36, v37);

  MEMORY[0x22AA7F8E0](0xD00000000000001CLL, 0x80000002268CF690);
  if (v1[6])
  {
    v38 = v1[5];
    v39 = v1[6];
  }

  else
  {
    v39 = 0xE400000000000000;
    v38 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v38, v39);

  MEMORY[0x22AA7F8E0](0xD000000000000012, 0x80000002268CF6B0);
  if (v1[8])
  {
    v30 = v1[7];
    v40 = v1[8];
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x22AA7F8E0](v30, v40);

  MEMORY[0x22AA7F8E0](0xD000000000000016, 0x80000002268CF6D0);
  MEMORY[0x22AA7F8E0](v42, v20);

  MEMORY[0x22AA7F8E0](0xD000000000000018, 0x80000002268CF6F0);
  MEMORY[0x22AA7F8E0](v43, v25);

  MEMORY[0x22AA7F8E0](2689570, 0xE300000000000000);
  return v44;
}

uint64_t PasteboardItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_226835228();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - v14;
  if (v0[1])
  {
    v16 = *v0;
    sub_226836C28();
    sub_226836498();
    v17 = v0[2];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_226836C28();
    if (v0[4])
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_226836C28();
  v17 = v0[2];
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_226836C28();
  MEMORY[0x22AA80040](*(v17 + 16));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = (v17 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_226836498();

      v19 += 2;
      --v18;
    }

    while (v18);
  }

  if (v1[4])
  {
LABEL_7:
    v22 = v1[3];
    sub_226836C28();
    sub_226836498();
    if (v1[6])
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_226836C28();
    if (v1[8])
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  sub_226836C28();
  if (!v1[6])
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v1[5];
  sub_226836C28();
  sub_226836498();
  if (v1[8])
  {
LABEL_9:
    v24 = v1[7];
    sub_226836C28();
    sub_226836498();
    goto LABEL_15;
  }

LABEL_14:
  sub_226836C28();
LABEL_15:
  v25 = type metadata accessor for PasteboardItem();
  sub_2267A1AF8(v1 + *(v25 + 36), v15, &qword_27D7A2530, qword_2268738A0);
  v26 = v31;
  v27 = *(v31 + 48);
  if (v27(v15, 1, v2) == 1)
  {
    sub_226836C28();
    v28 = v31;
  }

  else
  {
    (*(v26 + 32))(v6, v15, v2);
    sub_226836C28();
    sub_2267DF28C(&qword_27D7A22F0, MEMORY[0x277CC9578]);
    sub_226836368();
    v28 = v31;
    (*(v31 + 8))(v6, v2);
  }

  sub_2267A1AF8(v1 + *(v25 + 40), v11, &qword_27D7A2530, qword_2268738A0);
  if (v27(v11, 1, v2) == 1)
  {
    return sub_226836C28();
  }

  (*(v28 + 32))(v6, v11, v2);
  sub_226836C28();
  sub_2267DF28C(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  sub_226836368();
  return (*(v28 + 8))(v6, v2);
}

uint64_t PasteboardItem.hashValue.getter()
{
  sub_226836C08();
  PasteboardItem.hash(into:)();
  return sub_226836C48();
}

uint64_t sub_2267DC124()
{
  sub_226836C08();
  PasteboardItem.hash(into:)();
  return sub_226836C48();
}

uint64_t sub_2267DC168()
{
  sub_226836C08();
  PasteboardItem.hash(into:)();
  return sub_226836C48();
}

uint64_t sub_2267DC1A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_226836B58() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_2267DC234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2490, "bo\n");
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_2267DC338(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2498, "ho\n");
  v10 = *(type metadata accessor for PasteboardItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PasteboardItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2267DC510(void **a1)
{
  v2 = *(type metadata accessor for PasteboardItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2267DE6E8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2267DC604(v5);
  *a1 = v3;
}

uint64_t type metadata accessor for PasteboardItem()
{
  result = qword_27D7A4AA0;
  if (!qword_27D7A4AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2267DC604(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226836B38();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PasteboardItem();
        v6 = sub_226836598();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PasteboardItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2267DCC0C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2267DC730(0, v2, 1, a1);
  }
}

void sub_2267DC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v66 = &v53 - v14;
  v15 = sub_226835228();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v64 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v68 = &v53 - v22;
  v69 = type metadata accessor for PasteboardItem();
  v23 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v24);
  v62 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v70 = &v53 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v67 = &v53 - v32;
  v55 = a2;
  if (a3 != a2)
  {
    v33 = *a4;
    v34 = *(v31 + 72);
    v35 = (v16 + 48);
    v63 = (v16 + 32);
    v36 = (v16 + 8);
    v37 = v33 + v34 * (a3 - 1);
    v60 = -v34;
    v61 = v33;
    v38 = a1 - a3;
    v54 = v34;
    v39 = v33 + v34 * a3;
LABEL_5:
    v58 = v37;
    v59 = a3;
    v56 = v39;
    v57 = v38;
    v40 = v66;
    while (1)
    {
      v41 = v67;
      sub_2267DF2D4(v39, v67);
      sub_2267DF2D4(v37, v70);
      sub_2267A1AF8(v41 + *(v69 + 36), v40, &qword_27D7A2530, qword_2268738A0);
      v42 = *v35;
      if ((*v35)(v40, 1, v15) == 1)
      {
        sub_226835178();
        v43 = v42(v40, 1, v15);
        v44 = v65;
        if (v43 != 1)
        {
          sub_2267A1DC0(v66, &qword_27D7A2530, qword_2268738A0);
        }
      }

      else
      {
        (*v63)(v68, v40, v15);
        v44 = v65;
      }

      sub_2267A1AF8(v70 + *(v69 + 36), v44, &qword_27D7A2530, qword_2268738A0);
      if (v42(v44, 1, v15) == 1)
      {
        v45 = v64;
        sub_226835178();
        if (v42(v44, 1, v15) != 1)
        {
          sub_2267A1DC0(v44, &qword_27D7A2530, qword_2268738A0);
        }
      }

      else
      {
        v45 = v64;
        (*v63)(v64, v44, v15);
      }

      v46 = v68;
      v47 = sub_2268351B8();
      v48 = v45;
      v49 = v47;
      v50 = *v36;
      (*v36)(v48, v15);
      v50(v46, v15);
      sub_2267DF338(v70);
      sub_2267DF338(v67);
      v40 = v66;
      if ((v49 & 1) == 0)
      {
LABEL_4:
        a3 = v59 + 1;
        v37 = v58 + v54;
        v38 = v57 - 1;
        v39 = v56 + v54;
        if (v59 + 1 == v55)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v51 = v62;
      sub_2267DF394(v39, v62);
      swift_arrayInitWithTakeFrontToBack();
      sub_2267DF394(v51, v37);
      v37 += v60;
      v39 += v60;
      if (__CFADD__(v38++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2267DCC0C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v170 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v193 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v166 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v166 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v166 - v20;
  v196 = sub_226835228();
  v22 = *(v196 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v196, v24);
  v192 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v201 = &v166 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v185 = &v166 - v35;
  v199 = type metadata accessor for PasteboardItem();
  v183 = *(v199 - 8);
  v36 = *(v183 + 64);
  MEMORY[0x28223BE20](v199, v37);
  v172 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v191 = &v166 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v202 = &v166 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v200 = &v166 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v188 = &v166 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v166 - v53;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v166 - v57;
  MEMORY[0x28223BE20](v59, v60);
  v181 = &v166 - v61;
  v184 = a3;
  if (a3[1] < 1)
  {
    v64 = MEMORY[0x277D84F90];
LABEL_115:
    v65 = *v170;
    if (!*v170)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v187;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_149:
      v64 = sub_2267DE5F0(v64);
    }

    v203 = v64;
    v162 = *(v64 + 2);
    if (v162 >= 2)
    {
      while (*v184)
      {
        v163 = *&v64[16 * v162];
        v164 = *&v64[16 * v162 + 24];
        sub_2267DDB1C(*v184 + *(v183 + 72) * v163, *v184 + *(v183 + 72) * *&v64[16 * v162 + 16], *v184 + *(v183 + 72) * v164, v65);
        if (v32)
        {
          goto LABEL_127;
        }

        if (v164 < v163)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_2267DE5F0(v64);
        }

        if (v162 - 2 >= *(v64 + 2))
        {
          goto LABEL_143;
        }

        v165 = &v64[16 * v162];
        *v165 = v163;
        *(v165 + 1) = v164;
        v203 = v64;
        sub_2267DE564(v162 - 1);
        v64 = v203;
        v162 = *(v203 + 2);
        if (v162 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_153;
    }

    goto LABEL_127;
  }

  v62 = a3[1];
  v182 = v21;
  v198 = v13;
  v168 = a4;
  v63 = 0;
  v197 = (v22 + 48);
  v194 = (v22 + 8);
  v195 = (v22 + 32);
  v64 = MEMORY[0x277D84F90];
  v177 = v17;
  v65 = v181;
  v179 = v54;
  v178 = v58;
  while (1)
  {
    v66 = v63;
    v67 = v63 + 1;
    if (v63 + 1 < v62)
    {
      v186 = v62;
      v68 = *v184;
      v69 = *(v183 + 72);
      v70 = v66;
      v71 = *v184 + v69 * v67;
      sub_2267DF2D4(v71, v65);
      sub_2267DF2D4(v68 + v69 * v70, v58);
      LODWORD(v189) = sub_2267D9CE8(v65, v58);
      if (!v187)
      {
        sub_2267DF338(v58);
        sub_2267DF338(v65);
        v169 = v70;
        v65 = v70 + 2;
        v72 = v68 + v69 * (v70 + 2);
        v73 = v69;
        v190 = v69;
        v180 = v64;
        while (1)
        {
          v77 = v186;
          if (v186 == v65)
          {
            break;
          }

          sub_2267DF2D4(v72, v54);
          sub_2267DF2D4(v71, v188);
          v78 = &v54[*(v199 + 36)];
          v79 = v182;
          sub_2267A1AF8(v78, v182, &qword_27D7A2530, qword_2268738A0);
          v80 = v196;
          v81 = *v197;
          v82 = (*v197)(v79, 1, v196);
          v83 = v177;
          if (v82 == 1)
          {
            sub_226835178();
            if (v81(v79, 1, v80) != 1)
            {
              sub_2267A1DC0(v182, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v195)(v185, v79, v80);
          }

          sub_2267A1AF8(v188 + *(v199 + 36), v83, &qword_27D7A2530, qword_2268738A0);
          if (v81(v83, 1, v80) == 1)
          {
            sub_226835178();
            if (v81(v83, 1, v80) != 1)
            {
              sub_2267A1DC0(v83, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v195)(v32, v83, v80);
          }

          v74 = v185;
          v75 = sub_2268351B8();
          v76 = *v194;
          (*v194)(v32, v80);
          v76(v74, v80);
          sub_2267DF338(v188);
          v54 = v179;
          sub_2267DF338(v179);
          ++v65;
          v73 = v190;
          v72 += v190;
          v71 += v190;
          v64 = v180;
          v58 = v178;
          if ((v189 ^ v75))
          {
            v77 = v65 - 1;
            break;
          }
        }

        v66 = v169;
        if (v189)
        {
          if (v77 < v169)
          {
            goto LABEL_148;
          }

          if (v169 < v77)
          {
            v167 = v32;
            v84 = v187;
            v65 = v73 * (v77 - 1);
            v85 = v77 * v73;
            v86 = v77;
            v87 = v77;
            v88 = v169;
            v89 = v169 * v73;
            do
            {
              if (v88 != --v87)
              {
                v90 = *v184;
                if (!*v184)
                {
                  goto LABEL_152;
                }

                sub_2267DF394(v90 + v89, v172);
                if (v89 < v65 || v90 + v89 >= (v90 + v85))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v89 != v65)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_2267DF394(v172, v90 + v65);
                v73 = v190;
              }

              ++v88;
              v65 -= v73;
              v85 -= v73;
              v89 += v73;
            }

            while (v88 < v87);
            v187 = v84;
            v64 = v180;
            v32 = v167;
            v54 = v179;
            v58 = v178;
            v66 = v169;
            v77 = v86;
          }
        }

        goto LABEL_32;
      }

      sub_2267DF338(v58);
      sub_2267DF338(v65);
LABEL_127:

      return;
    }

    v77 = v63 + 1;
LABEL_32:
    v91 = v184[1];
    if (v77 >= v91)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v77, v66))
    {
      goto LABEL_145;
    }

    if (v77 - v66 >= v168)
    {
LABEL_41:
      v93 = v77;
      if (v77 < v66)
      {
        goto LABEL_144;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v66, v168))
    {
      goto LABEL_146;
    }

    if (v66 + v168 >= v91)
    {
      v92 = v184[1];
    }

    else
    {
      v92 = v66 + v168;
    }

    if (v92 < v66)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v77 == v92)
    {
      goto LABEL_41;
    }

    v167 = v32;
    v180 = v64;
    v143 = *v184;
    v144 = *(v183 + 72);
    v145 = *v184 + v144 * (v77 - 1);
    v189 = -v144;
    v169 = v66;
    v146 = v66 - v77;
    v190 = v143;
    v171 = v144;
    v147 = v143 + v77 * v144;
    v148 = v193;
    v149 = v199;
    v173 = v92;
LABEL_98:
    v186 = v77;
    v174 = v147;
    v175 = v146;
    v176 = v145;
    v150 = v145;
LABEL_99:
    v151 = v200;
    sub_2267DF2D4(v147, v200);
    sub_2267DF2D4(v150, v202);
    v152 = v151 + *(v149 + 36);
    v153 = v198;
    sub_2267A1AF8(v152, v198, &qword_27D7A2530, qword_2268738A0);
    v154 = v196;
    v155 = *v197;
    if ((*v197)(v153, 1, v196) == 1)
    {
      sub_226835178();
      if (v155(v153, 1, v154) != 1)
      {
        sub_2267A1DC0(v198, &qword_27D7A2530, qword_2268738A0);
      }
    }

    else
    {
      (*v195)(v201, v153, v154);
    }

    sub_2267A1AF8(v202 + *(v149 + 36), v148, &qword_27D7A2530, qword_2268738A0);
    v156 = v155(v148, 1, v154);
    v65 = v192;
    if (v156 == 1)
    {
      sub_226835178();
      if (v155(v148, 1, v154) != 1)
      {
        sub_2267A1DC0(v148, &qword_27D7A2530, qword_2268738A0);
      }
    }

    else
    {
      (*v195)(v192, v148, v154);
    }

    v157 = v201;
    v158 = sub_2268351B8();
    v159 = *v194;
    (*v194)(v65, v154);
    v159(v157, v154);
    sub_2267DF338(v202);
    sub_2267DF338(v200);
    if (v158)
    {
      break;
    }

    v148 = v193;
    v149 = v199;
LABEL_97:
    v77 = v186 + 1;
    v145 = v176 + v171;
    v146 = v175 - 1;
    v147 = v174 + v171;
    v93 = v173;
    if (v186 + 1 != v173)
    {
      goto LABEL_98;
    }

    v64 = v180;
    v32 = v167;
    v54 = v179;
    v58 = v178;
    v66 = v169;
    if (v173 < v169)
    {
      goto LABEL_144;
    }

LABEL_42:
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v93;
    if ((v94 & 1) == 0)
    {
      v64 = sub_2267DC234(0, *(v64 + 2) + 1, 1, v64);
    }

    v96 = *(v64 + 2);
    v95 = *(v64 + 3);
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      v64 = sub_2267DC234((v95 > 1), v96 + 1, 1, v64);
    }

    *(v64 + 2) = v97;
    v98 = &v64[16 * v96];
    v99 = v173;
    *(v98 + 4) = v66;
    *(v98 + 5) = v99;
    if (!*v170)
    {
      goto LABEL_154;
    }

    if (v96)
    {
      v100 = *v170;
      v65 = v181;
      while (1)
      {
        v101 = v97 - 1;
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v102 = *(v64 + 4);
          v103 = *(v64 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_62:
          if (v105)
          {
            goto LABEL_133;
          }

          v118 = &v64[16 * v97];
          v120 = *v118;
          v119 = *(v118 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_136;
          }

          v124 = &v64[16 * v101 + 32];
          v126 = *v124;
          v125 = *(v124 + 1);
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_140;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              v101 = v97 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v128 = &v64[16 * v97];
        v130 = *v128;
        v129 = *(v128 + 1);
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_76:
        if (v123)
        {
          goto LABEL_135;
        }

        v131 = &v64[16 * v101];
        v133 = *(v131 + 4);
        v132 = *(v131 + 5);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_138;
        }

        if (v134 < v122)
        {
          goto LABEL_93;
        }

LABEL_83:
        v65 = v101 - 1;
        if (v101 - 1 >= v97)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
          goto LABEL_147;
        }

        if (!*v184)
        {
          goto LABEL_151;
        }

        v139 = *&v64[16 * v65 + 32];
        v140 = *&v64[16 * v101 + 40];
        v141 = v187;
        sub_2267DDB1C(*v184 + *(v183 + 72) * v139, *v184 + *(v183 + 72) * *&v64[16 * v101 + 32], *v184 + *(v183 + 72) * v140, v100);
        v187 = v141;
        if (v141)
        {
          goto LABEL_127;
        }

        if (v140 < v139)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_2267DE5F0(v64);
        }

        if (v65 >= *(v64 + 2))
        {
          goto LABEL_130;
        }

        v142 = &v64[16 * v65];
        *(v142 + 4) = v139;
        *(v142 + 5) = v140;
        v203 = v64;
        sub_2267DE564(v101);
        v64 = v203;
        v97 = *(v203 + 2);
        v65 = v181;
        if (v97 <= 1)
        {
          goto LABEL_93;
        }
      }

      v106 = &v64[16 * v97 + 32];
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_131;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_132;
      }

      v113 = &v64[16 * v97];
      v115 = *v113;
      v114 = *(v113 + 1);
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_134;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_137;
      }

      if (v117 >= v109)
      {
        v135 = &v64[16 * v101 + 32];
        v137 = *v135;
        v136 = *(v135 + 1);
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_141;
        }

        if (v104 < v138)
        {
          v101 = v97 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

    v65 = v181;
LABEL_93:
    v62 = v184[1];
    v63 = v173;
    if (v173 >= v62)
    {
      goto LABEL_115;
    }
  }

  v149 = v199;
  if (v190)
  {
    v65 = v191;
    sub_2267DF394(v147, v191);
    swift_arrayInitWithTakeFrontToBack();
    sub_2267DF394(v65, v150);
    v150 += v189;
    v147 += v189;
    v160 = __CFADD__(v146++, 1);
    v148 = v193;
    if (v160)
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

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
}

void sub_2267DDB1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v105 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v107 = &v99 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v109 = &v99 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v99 - v20;
  v22 = sub_226835228();
  v102 = *(v22 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v28);
  v111 = &v99 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v108 = &v99 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v113 = &v99 - v35;
  v116 = type metadata accessor for PasteboardItem();
  v36 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v37);
  v106 = (&v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39, v40);
  v110 = &v99 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v114 = &v99 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v112 = &v99 - v47;
  v49 = *(v48 + 72);
  if (!v49)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v49 == -1)
  {
    goto LABEL_77;
  }

  v50 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v49 == -1)
  {
    goto LABEL_78;
  }

  v51 = (a2 - a1) / v49;
  v119 = a1;
  v118 = a4;
  if (v51 >= v50 / v49)
  {
    v53 = v50 / v49 * v49;
    if (a4 < a2 || a2 + v53 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v109 = a2;
    v74 = a4 + v53;
    if (v53 >= 1)
    {
      v115 = a4;
      v75 = -v49;
      v76 = v102;
      v113 = (v102 + 48);
      v114 = -v49;
      v102 += 8;
      v103 = (v76 + 32);
      v77 = a4 + v53;
      v79 = v106;
      v78 = v107;
      v104 = v26;
      do
      {
        v100 = v74;
        v80 = v109;
        v108 = v109;
        v109 += v75;
        while (1)
        {
          if (v80 <= a1)
          {
            v119 = v80;
            v117 = v100;
            goto LABEL_75;
          }

          v83 = a3;
          v101 = v74;
          v112 = v77 + v75;
          v84 = v110;
          sub_2267DF2D4(v77 + v75, v110);
          sub_2267DF2D4(v109, v79);
          sub_2267A1AF8(v84 + *(v116 + 36), v78, &qword_27D7A2530, qword_2268738A0);
          v85 = *v113;
          if ((*v113)(v78, 1, v22) == 1)
          {
            sub_226835178();
            v86 = v85(v78, 1, v22);
            v87 = v105;
            if (v86 != 1)
            {
              sub_2267A1DC0(v78, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v103)(v111, v78, v22);
            v87 = v105;
          }

          sub_2267A1AF8(v79 + *(v116 + 36), v87, &qword_27D7A2530, qword_2268738A0);
          if (v85(v87, 1, v22) == 1)
          {
            v88 = v104;
            sub_226835178();
            v89 = v85(v87, 1, v22);
            v90 = v88;
            if (v89 != 1)
            {
              sub_2267A1DC0(v87, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            v90 = v104;
            (*v103)(v104, v87, v22);
          }

          v91 = &v83[v114];
          v92 = v111;
          v93 = sub_2268351B8();
          v94 = v90;
          v95 = v93;
          v96 = *v102;
          (*v102)(v94, v22);
          v96(v92, v22);
          v79 = v106;
          sub_2267DF338(v106);
          sub_2267DF338(v110);
          if (v95)
          {
            break;
          }

          v97 = v112;
          v74 = v112;
          a3 = v91;
          if (v83 < v77 || v91 >= v77)
          {
            v81 = v112;
            swift_arrayInitWithTakeFrontToBack();
            v74 = v81;
            v78 = v107;
          }

          else
          {
            v78 = v107;
            if (v83 != v77)
            {
              v98 = v112;
              swift_arrayInitWithTakeBackToFront();
              v74 = v98;
            }
          }

          v77 = v74;
          v82 = v97 > v115;
          v75 = v114;
          v80 = v108;
          if (!v82)
          {
            v109 = v108;
            goto LABEL_74;
          }
        }

        a3 = v91;
        if (v83 < v108 || v91 >= v108)
        {
          swift_arrayInitWithTakeFrontToBack();
          v78 = v107;
          v75 = v114;
        }

        else
        {
          v78 = v107;
          v75 = v114;
          if (v83 != v108)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v74 = v101;
      }

      while (v77 > v115);
    }

LABEL_74:
    v119 = v109;
    v117 = v74;
  }

  else
  {
    v52 = v51 * v49;
    if (a4 < a1 || a1 + v52 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v111 = (a4 + v52);
    v117 = a4 + v52;
    if (v52 >= 1 && a2 < a3)
    {
      v55 = (v102 + 48);
      v105 = (v102 + 8);
      v106 = (v102 + 32);
      v110 = a3;
      v107 = v49;
      v104 = (v102 + 48);
      do
      {
        v56 = v112;
        sub_2267DF2D4(a2, v112);
        sub_2267DF2D4(a4, v114);
        sub_2267A1AF8(v56 + *(v116 + 36), v21, &qword_27D7A2530, qword_2268738A0);
        v57 = *v55;
        if ((*v55)(v21, 1, v22) == 1)
        {
          sub_226835178();
          if (v57(v21, 1, v22) != 1)
          {
            sub_2267A1DC0(v21, &qword_27D7A2530, qword_2268738A0);
          }
        }

        else
        {
          (*v106)(v113, v21, v22);
        }

        v58 = a1;
        v59 = v21;
        v115 = a4;
        v60 = v109;
        sub_2267A1AF8(v114 + *(v116 + 36), v109, &qword_27D7A2530, qword_2268738A0);
        v61 = a2;
        if (v57(v60, 1, v22) == 1)
        {
          v62 = v108;
          sub_226835178();
          v63 = v22;
          if (v57(v60, 1, v22) != 1)
          {
            sub_2267A1DC0(v60, &qword_27D7A2530, qword_2268738A0);
          }
        }

        else
        {
          v62 = v108;
          (*v106)(v108, v60, v22);
          v63 = v22;
        }

        v64 = v113;
        v65 = sub_2268351B8();
        v66 = v62;
        v67 = *v105;
        (*v105)(v66, v63);
        v68 = v63;
        v67(v64, v63);
        sub_2267DF338(v114);
        sub_2267DF338(v112);
        v21 = v59;
        if (v65)
        {
          v69 = v61;
          v70 = v107;
          a2 = &v107[v61];
          v71 = v58;
          if (v58 < v61 || v58 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v115;
            v73 = v110;
            v22 = v68;
            goto LABEL_42;
          }

          a4 = v115;
          v22 = v68;
          if (v58 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v70 = v107;
          v72 = &v107[v115];
          v71 = v58;
          a2 = v61;
          if (v58 < v115 || v58 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v22 = v68;
          }

          else
          {
            v22 = v68;
            if (v58 != v115)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v118 = v72;
          a4 = v72;
        }

        v73 = v110;
LABEL_42:
        v55 = v104;
        a1 = &v70[v71];
        v119 = a1;
      }

      while (a4 < v111 && a2 < v73);
    }
  }

LABEL_75:
  sub_2267DE604(&v119, &v118, &v117);
}

uint64_t sub_2267DE564(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2267DE5F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2267DE604(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PasteboardItem();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_2267DE6FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2498, "ho\n");
  v10 = *(type metadata accessor for PasteboardItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PasteboardItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL _s21AppPredictionInternal14PasteboardItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_226835228();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v47[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2480, "fo\n");
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v47[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v47[-v26];
  v28 = a1[1];
  v29 = a2[1];
  if (v28)
  {
    if (!v29 || (*a1 != *a2 || v28 != v29) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = a1[2];
  v31 = a2[2];
  if (v30)
  {
    if (!v31 || (sub_2267DC1A4(v30, v31) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = a1[4];
  v33 = a2[4];
  if (v32)
  {
    if (!v33 || (a1[3] != a2[3] || v32 != v33) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = a1[6];
  v35 = a2[6];
  if (v34)
  {
    if (!v35 || (a1[5] != a2[5] || v34 != v35) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = a1[8];
  v37 = a2[8];
  if (v36)
  {
    if (!v37 || (a1[7] != a2[7] || v36 != v37) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v50 = type metadata accessor for PasteboardItem();
  v38 = *(v19 + 48);
  v52 = *(v50 + 36);
  v53 = v38;
  sub_2267A1AF8(a1 + v52, v27, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(a2 + v52, &v53[v27], &qword_27D7A2530, qword_2268738A0);
  v51 = *(v5 + 48);
  v52 = v5 + 48;
  if (v51(v27, 1, v4) != 1)
  {
    sub_2267A1AF8(v27, v18, &qword_27D7A2530, qword_2268738A0);
    if (v51(&v53[v27], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v53[v27], v4);
      sub_2267DF28C(&qword_27D7A2488, MEMORY[0x277CC9578]);
      v48 = sub_2268363C8();
      v40 = *(v5 + 8);
      v49 = v5 + 8;
      v53 = v40;
      (v40)(v9, v4);
      (v53)(v18, v4);
      sub_2267A1DC0(v27, &qword_27D7A2530, qword_2268738A0);
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_41;
    }

    (*(v5 + 8))(v18, v4);
LABEL_39:
    v39 = v27;
LABEL_47:
    sub_2267A1DC0(v39, &qword_27D7A2480, "fo\n");
    return 0;
  }

  if (v51(&v53[v27], 1, v4) != 1)
  {
    goto LABEL_39;
  }

  sub_2267A1DC0(v27, &qword_27D7A2530, qword_2268738A0);
LABEL_41:
  v41 = *(v50 + 40);
  v42 = *(v19 + 48);
  sub_2267A1AF8(a1 + v41, v23, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(a2 + v41, &v23[v42], &qword_27D7A2530, qword_2268738A0);
  v43 = v51;
  if (v51(v23, 1, v4) == 1)
  {
    if (v43(&v23[v42], 1, v4) == 1)
    {
      sub_2267A1DC0(v23, &qword_27D7A2530, qword_2268738A0);
      return 1;
    }

    goto LABEL_46;
  }

  sub_2267A1AF8(v23, v14, &qword_27D7A2530, qword_2268738A0);
  if (v43(&v23[v42], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_46:
    v39 = v23;
    goto LABEL_47;
  }

  (*(v5 + 32))(v9, &v23[v42], v4);
  sub_2267DF28C(&qword_27D7A2488, MEMORY[0x277CC9578]);
  v45 = sub_2268363C8();
  v46 = *(v5 + 8);
  v46(v9, v4);
  v46(v14, v4);
  sub_2267A1DC0(v23, &qword_27D7A2530, qword_2268738A0);
  return (v45 & 1) != 0;
}

uint64_t dispatch thunk of PasteboardManager.retrieveOrderedPasteboardItems()()
{
  v2 = *(*v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1644;

  return v6();
}

void sub_2267DF12C()
{
  sub_2267D86B4();
  if (v0 <= 0x3F)
  {
    sub_2267DF1D0();
    if (v1 <= 0x3F)
    {
      sub_2267DF234();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2267DF1D0()
{
  if (!qword_27D7A2478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    v0 = sub_226836828();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A2478);
    }
  }
}

void sub_2267DF234()
{
  if (!qword_28138FCB8)
  {
    sub_226835228();
    v0 = sub_226836828();
    if (!v1)
    {
      atomic_store(v0, &qword_28138FCB8);
    }
  }
}

uint64_t sub_2267DF28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267DF2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267DF338(uint64_t a1)
{
  v2 = type metadata accessor for PasteboardItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267DF394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267DF400(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
    return sub_2268365E8();
  }

  else
  {
    v6 = *(v1 + ((((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
    swift_beginAccess();
    v7 = *(v6 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
    return sub_2268365F8();
  }
}

unint64_t sub_2267DF504()
{
  result = qword_27D7A24A8;
  if (!qword_27D7A24A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A24A8);
  }

  return result;
}

uint64_t sub_2267DF578()
{
  swift_beginAccess();
  v0 = *aSports;

  return v0;
}

uint64_t sub_2267DF5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSports = a1;
  qword_27D7A24C0 = a2;
}

uint64_t sub_2267DF63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226872800;
  v1 = sub_2267D0044();
  v3 = *v1;
  v2 = v1[1];
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v4 = sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  return v4;
}

_OWORD *sub_2267DF6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24C8, &qword_226875230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SportsDependencies(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2263B4F20(a3, v35);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v10, 0, 1, v11);
    sub_2267D042C(v10, v16);
    v19 = *v16;
    v20 = v16[1];

    v21 = nullsub_1(v19);
    v23 = v22;
    v24 = sub_2267DF980(&unk_283995EC0);
    v33 = &type metadata for SportsSuggestion;
    v34 = &off_283994230;
    *&v32 = v21;
    *(&v32 + 1) = v23;

    sub_2267CFA38(a1, a2, v24, &v32, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24D0, qword_226875238);
    v25 = swift_allocObject();
    v26 = v35[0];
    v27 = v35[1];
    v25[1] = xmmword_226872800;
    v25[2] = v26;
    v28 = v35[2];
    v29 = v35[3];
    v25[3] = v27;
    v25[4] = v28;
    v25[5] = v29;
    sub_2267DFB1C(v16);
    return v25;
  }

  else
  {
    v18(v10, 1, 1, v11);
    sub_2267DF918(v10);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2267DF918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24C8, &qword_226875230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267DF980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24D8, "6o\n");
    v3 = sub_226836948();
    v4 = v3 + 56;
    v24 = a1 + 32;
    sub_2267DFB9C();
    v5 = 0;
    v23 = v1;
    while (1)
    {
      v10 = (v24 + 16 * v5);
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v3 + 40);
      result = sub_226836358();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v4 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) != 0)
      {
        v22 = v11;
        v20 = ~v15;
        sub_2267D0588();
        while (1)
        {
          v21 = *(v3 + 48) + 16 * v16;
          v25 = *v21;
          v26 = *(v21 + 8);
          result = sub_2268363C8();
          if (result)
          {
            break;
          }

          v16 = (v16 + 1) & v20;
          v17 = v16 >> 6;
          v18 = *(v4 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            v11 = v22;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v17) = v19 | v18;
        v6 = *(v3 + 48) + 16 * v16;
        *v6 = v11;
        *(v6 + 8) = v12;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v5 == v23)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2267DFB1C(uint64_t a1)
{
  v2 = type metadata accessor for SportsDependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2267DFB9C()
{
  result = qword_27D7A24E0;
  if (!qword_27D7A24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A24E0);
  }

  return result;
}

uint64_t BundleIdRedactor.redact(bundleIds:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2267DFC3C, 0, 0);
}

uint64_t sub_2267DFC3C()
{
  v1 = *(v0[3] + OBJC_IVAR___ATXBundleIdRedactor_summarizationPipelineClient);
  v2 = *(MEMORY[0x277D42238] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2267DFCE4;
  v4 = v0[2];

  return MEMORY[0x2821A2B48](v4);
}

uint64_t sub_2267DFCE4(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(v5 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2267DFE20, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2267DFE20()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2267A0578(0, v1, 0);
    v2 = v10;
    v3 = *(v10 + 16);
    v4 = 16 * v3;
    do
    {
      v5 = *(v10 + 24);
      v6 = v3 + 1;
      if (v3 >= v5 >> 1)
      {
        sub_2267A0578((v5 > 1), v3 + 1, 1);
      }

      *(v10 + 16) = v6;
      v7 = v10 + v4;
      *(v7 + 32) = 0xD000000000000013;
      *(v7 + 40) = 0x80000002268CF7A0;
      v4 += 16;
      v3 = v6;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_2267E00DC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836568();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2267E01B0;

  return BundleIdRedactor.redact(bundleIds:)(v5);
}

uint64_t sub_2267E01B0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  v5 = sub_226836558();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

id BundleIdRedactor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleIdRedactor.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___ATXBundleIdRedactor_summarizationPipelineClient;
  sub_226835F58();
  *&v0[v2] = sub_226835F48();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id BundleIdRedactor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267E04A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267E00DC(v2, v3, v4);
}

uint64_t sub_2267E055C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies;
  swift_beginAccess();
  return sub_2267E05B4(v1 + v3, a1);
}

uint64_t sub_2267E05B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267E0638(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies;
  swift_beginAccess();
  sub_2267E0698(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267E0698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267E075C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2268352F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2267E07C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2268352F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2267E0830(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2267E08A4(a1, v5 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies);
  return v5;
}

uint64_t sub_2267E08A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2267E092C()
{
  v1 = sub_226835398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226835378();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LiveActivityContext.Dependencies(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 88))(v15);
  sub_2268352E8();
  v18 = sub_2268352F8();
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_226835368();
  sub_2267E0C28(v11, MEMORY[0x277CB9790]);
  v19 = sub_226835388();
  v21 = v20;
  (*(v2 + 8))(v6, v1);
  v22 = objc_opt_self();
  v23 = sub_2268363F8();
  v24 = [v22 localizedNameForBundle_];

  if (v24)
  {
    v25 = sub_226836408();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_226836968();

  v29 = 0xD000000000000013;
  v30 = 0x80000002268CF830;
  if (v27)
  {

    v21 = v27;
  }

  else
  {
    v25 = v19;
  }

  MEMORY[0x22AA7F8E0](v25, v21);

  return v29;
}

uint64_t sub_2267E0C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2267E0C88()
{
  sub_2267E0C28(v0 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies, type metadata accessor for LiveActivityContext.Dependencies);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2267E0DE4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_2267E0E1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveActivityContext(0);
  sub_2267E12E4(&qword_27D7A24F8);
  result = sub_2263B92B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267E0E80()
{
  v0 = sub_2267E14CC();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226872800;
  result = type metadata accessor for LiveActivityContext(0);
  *(v3 + 32) = result;
  qword_27D7A51E0 = v3;
  return result;
}

uint64_t *sub_2267E0EE0()
{
  if (qword_27D7A4AB0 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51E0;
}

uint64_t sub_2267E0F30()
{
  if (qword_27D7A4AB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267E0F94(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267E0FD4(a1);
  return v2;
}

uint64_t sub_2267E0FD4(uint64_t a1)
{
  v3 = type metadata accessor for LiveActivityContext.Dependencies(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2268352F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = a1;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v28 = v1;
    v31 = MEMORY[0x277D84F90];

    sub_226836A08();
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = *(v16 + 64);
    v27[1] = a1;
    v19 = a1 + ((v18 + 32) & ~v18);
    v29 = *(v16 + 56);
    v30 = v17;
    v20 = (v16 + 16);
    do
    {
      v30(v13, v19, v8);
      (*v20)(v7, v13, v8);
      v21 = type metadata accessor for LiveActivityContext(0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      sub_2267E08A4(v7, v24 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies);
      sub_2268369E8();
      v25 = *(v31 + 16);
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      v19 += v29;
      --v14;
    }

    while (v14);

    v15 = v31;
    v1 = v28;
  }

  *(v1 + 16) = v15;
  return v1;
}

uint64_t sub_2267E1204()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2267E122C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2267E126C(uint64_t a1)
{
  result = sub_2267E12E4(&qword_27D7A24F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267E12E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LiveActivityContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267E1384()
{
  result = sub_2268352F8();
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

uint64_t sub_2267E143C()
{
  result = sub_2268352F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267E14CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2500, &qword_226875470);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A2508;
    v3 = &unk_226875478;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267E154C(id *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v40 - v15;
  v17 = [*a1 executableSpecification];
  v18 = [v17 executableObject];

  if (!v18)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v26 = sub_2267F7768();
    (*(v3 + 16))(v16, v26, v2);
    v27 = sub_226836038();
    v28 = sub_2268366B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2263AA000, v27, v28, "Suggestion is not an ATXAction. Ignoring", v29, 2u);
      MEMORY[0x22AA821D0](v29, -1, -1);
    }

    (*(v3 + 8))(v16, v2);
    return 0;
  }

  v20 = [v19 heuristic];
  if (v20)
  {
    v21 = v20;
    v22 = sub_226836408();
    v24 = v23;

    if (sub_2267B2E88())
    {
      swift_unknownObjectRelease();

      return 1;
    }

    v34 = sub_2267F7768();
    (*(v3 + 16))(v7, v34, v2);

    v35 = sub_226836038();
    v36 = sub_2268366A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v37 = 136315138;
      v39 = sub_2263B4D48(v22, v24, &v41);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_2263AA000, v35, v36, "Event with heuristic %s is not supported on watchOS. Ignoring", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x22AA821D0](v38, -1, -1);
      MEMORY[0x22AA821D0](v37, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v30 = sub_2267F7768();
    (*(v3 + 16))(v11, v30, v2);
    v31 = sub_226836038();
    v32 = sub_2268366B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2263AA000, v31, v32, "Suggestion has no heuristic. Ignoring", v33, 2u);
      MEMORY[0x22AA821D0](v33, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v3 + 8))(v11, v2);
  }

  return 0;
}

id sub_2267E19F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchSmartStackLayoutSelector();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2267E1A64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchSmartStackLayoutSelector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2267E1A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2263B51C8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D70, &unk_226873820);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2267E1B7C(unint64_t a1)
{
  v1 = a1;
  v44 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    if (i)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA7FDD0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v7 = [v4 executableSpecification];
        v8 = [v7 executableType];

        if (v8 == 2)
        {
          sub_2268369E8();
          v9 = v44[2];
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != i);
      v1 = v44;
      v44 = MEMORY[0x277D84F90];
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      v44 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v10 = *(v1 + 16);
          goto LABEL_19;
        }
      }
    }

    v10 = sub_2268368D8();
LABEL_19:
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v12 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AA7FDD0](v12, v1);
        }

        else
        {
          if (v12 >= *(v1 + 16))
          {
            goto LABEL_49;
          }

          v13 = *(v1 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [v13 uiSpecification];
        v17 = [v16 allowedOnLockscreen];

        if (v17)
        {
          sub_2268369E8();
          v18 = v44[2];
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
        }

        else
        {
        }

        ++v12;
        if (v15 == v10)
        {
          v19 = v44;
          v11 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_32:

    v44 = v11;
    if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
    {
      v1 = *(v19 + 16);
      if (!v1)
      {
        break;
      }

      goto LABEL_35;
    }

    v1 = sub_2268368D8();
    if (!v1)
    {
      break;
    }

LABEL_35:
    v20 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x22AA7FDD0](v20, v19);
      }

      else
      {
        if (v20 >= *(v19 + 16))
        {
          goto LABEL_51;
        }

        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v43 = v21;
      if (sub_2267E154C(&v43))
      {
        sub_2268369E8();
        v24 = v44[2];
        sub_226836A18();
        sub_226836A28();
        v11 = &v44;
        sub_2268369F8();
      }

      else
      {
      }

      ++v20;
      if (v23 == v1)
      {
        v25 = v44;
        goto LABEL_56;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_56:

  if (v25 < 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = (v25 >> 62) & 1;
  }

  if (v26 == 1)
  {
    if (sub_2268368D8() <= 0)
    {
      goto LABEL_87;
    }

    v11 = sub_2268368D8();
    result = sub_2268368D8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v27 = sub_2268368D8();
    v28 = v11 != 0;
LABEL_62:
    v29 = v28;
    if (v27 < v28)
    {
      __break(1u);
    }

    else
    {
      if ((v25 & 0xC000000000000001) != 0 && v28)
      {
        sub_2263B51C8();

        v30 = 0;
        do
        {
          v31 = v30 + 1;
          sub_226836998();
          v30 = v31;
        }

        while (v29 != v31);
      }

      else
      {
      }

      if (v26)
      {
        v32 = sub_226836A88();
        v26 = v33;
        v11 = v34;
        v29 = v35;

        v25 = v32;
        if ((v29 & 1) == 0)
        {
LABEL_76:
          sub_2267E1A98(v25, v26, v11, v29);
          goto LABEL_82;
        }
      }

      else
      {
        v11 = 0;
        v26 = v25 + 32;
        if (v29)
        {
          v29 = 3;
        }

        else
        {
          v29 = 1;
        }
      }

      sub_226836B78();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x277D84F90];
      }

      v37 = *(v36 + 16);

      if (!__OFSUB__(v29 >> 1, v11))
      {
        if (v37 == (v29 >> 1) - v11)
        {
          v38 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v38)
          {
LABEL_83:
            v39 = objc_allocWithZone(MEMORY[0x277D420E8]);
            sub_2263B51C8();
            v40 = sub_226836558();

            v41 = [v39 initWithLayoutType:17 oneByOneSuggestions:0 oneByTwoSuggestions:v40 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

            return v41;
          }

LABEL_82:
          swift_unknownObjectRelease();
          goto LABEL_83;
        }

        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_91:
    swift_unknownObjectRelease_n();
    goto LABEL_76;
  }

  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = 1;
    goto LABEL_62;
  }

LABEL_87:

  return [objc_allocWithZone(MEMORY[0x277D420E8]) initWithLayoutType:17 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];
}

uint64_t sub_2267E216C()
{
  v13 = sub_226836718();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226836708();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_2268362B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12[1] = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
  sub_2268362A8();
  v14 = MEMORY[0x277D84F90];
  sub_2267E7194(&qword_28138FE00, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A0610(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0);
  sub_226836888();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v13);
  return sub_226836738();
}

id sub_2267E23D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1CD0]);

  return [v0 init];
}

uint64_t sub_2267E2410()
{
  v1 = *(v0 + 16);

  sub_2267B840C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2267E2450()
{
  v1 = v0;
  v2 = type metadata accessor for MeetingContextDependencies(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226835228();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeOfDayContextDependencies(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2538, qword_226875520);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226873690;
  v18 = type metadata accessor for TimeOfDayContextStore();
  sub_226835218();
  sub_2267EA0F8(v11, v16);
  v19 = sub_2267EAAC8(v16);
  *(v17 + 56) = v18;
  *(v17 + 64) = sub_2267E7194(&qword_27D7A2540, type metadata accessor for TimeOfDayContextStore);
  *(v17 + 32) = v19;
  v20 = type metadata accessor for MeetingContextStore(0);
  sub_226835218();
  v21 = MEMORY[0x277D84F90];
  sub_2267D5DDC(v11, MEMORY[0x277D84F90], v6);
  v22 = sub_2267D65B8(v6);
  *(v17 + 96) = v20;
  *(v17 + 104) = sub_2267E7194(&qword_27D7A2548, type metadata accessor for MeetingContextStore);
  *(v17 + 72) = v22;
  v23 = type metadata accessor for LocationOfInterestContextStore();
  v24 = nullsub_1(0);
  v25 = sub_2267AD2A4(v24);
  *(v17 + 136) = v23;
  *(v17 + 144) = sub_2267E7194(&qword_27D7A2550, type metadata accessor for LocationOfInterestContextStore);
  *(v17 + 112) = v25;
  v26 = type metadata accessor for MotionContextStore();
  v27 = nullsub_1(0);
  v28 = sub_22679A4E4(v27);
  *(v17 + 176) = v26;
  *(v17 + 184) = sub_2267E7194(&qword_27D7A2558, type metadata accessor for MotionContextStore);
  *(v17 + 152) = v28;
  v29 = type metadata accessor for LiveActivityContextStore();
  v30 = nullsub_1(v21);
  v31 = sub_2267E0F94(v30);
  *(v17 + 216) = v29;
  *(v17 + 224) = sub_2267E7194(&qword_27D7A2560, type metadata accessor for LiveActivityContextStore);
  *(v17 + 192) = v31;
  *(v1 + 16) = v17;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v1;
}

uint64_t sub_2267E2794()
{
  type metadata accessor for ContextualEngineContextStore.GuardedData();
  v0 = swift_allocObject();
  sub_2267E2450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2520, &qword_2268754C8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_2267E2814()
{
  v1 = *(v0 + 136);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2267E2944((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t sub_2267E28A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2267E28D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(*a2 + 32) = a1[1];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2267E28EC()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_2267E295C()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock(v1 + 6);
  sub_2267E29BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2267E29D4(uint64_t a1))(__int128 *a1, char a2)
{
  v3 = *(v1 + 136);
  *(a1 + 16) = v3;
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 24));
  sub_2267E75C4((v3 + 16), v5);
  *(a1 + 24) = 0;
  os_unfair_lock_unlock((v3 + 24));

  *a1 = *v5;
  return sub_2267E2A94;
}

uint64_t sub_2267E2A94(__int128 *a1, char a2)
{
  v6 = *a1;
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 6);
    sub_2267E75DC(&v3[4]);
    os_unfair_lock_unlock(v3 + 6);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *a1;
    os_unfair_lock_lock(v3 + 6);
    sub_2267E75DC(&v3[4]);
    os_unfair_lock_unlock(v3 + 6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2267E2B4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(*a1 + 32) = *(v1 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2267E2B74()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);

  v4 = sub_2267E2BDC(v3);

  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

uint64_t sub_2267E2BDC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v38 = *(a1 + 16);
  if (!v38)
  {
    return v1;
  }

  v2 = 0;
  v37 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = (v37 + 40 * v2);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 24))(v6, v7);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
    v8 = sub_226836A38();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v3;
      v43 = v1;
      sub_226836A08();
      v11 = v8 + 32;
      do
      {
        sub_22679CBC4(v11, v40);
        v12 = v41;
        v13 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        (*(v13 + 32))(v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_2268369E8();
        v14 = *(v43 + 16);
        sub_226836A18();
        sub_226836A28();
        sub_2268369F8();
        v11 += 40;
        --v9;
      }

      while (v9);

      v15 = v43;
      v3 = v10;
    }

    else
    {

      v15 = v1;
    }

    v16 = v15 >> 62;
    v17 = v15 >> 62 ? sub_2268368D8() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v3 >> 62;
    if (v3 >> 62)
    {
      v35 = sub_2268368D8();
      v20 = v35 + v17;
      if (__OFADD__(v35, v17))
      {
LABEL_39:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v18)
      {
        goto LABEL_21;
      }

      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v18)
      {
LABEL_21:
        sub_2268368D8();
        goto LABEL_22;
      }

      v21 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v22 = *(v21 + 16);
LABEL_22:
    result = sub_2268369B8();
    v3 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v16)
    {
      break;
    }

    v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v24 >> 1) - v23) < v17)
    {
      goto LABEL_43;
    }

    v39 = v3;
    v27 = v21 + 8 * v23 + 32;
    v36 = v21;
    if (v16)
    {
      if (v25 < 1)
      {
        goto LABEL_45;
      }

      sub_2267A0610(&qword_27D7A2678, &qword_27D7A2670, qword_2268756F8);
      for (i = 0; i != v25; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2670, qword_2268756F8);
        v29 = sub_2267C68AC(v40, i, v15);
        v31 = *v30;
        (v29)(v40, 0);
        *(v27 + 8 * i) = v31;
      }
    }

    else
    {
      sub_226835D28();
      swift_arrayInitWithCopy();
    }

    v3 = v39;
    v1 = MEMORY[0x277D84F90];
    if (v17 >= 1)
    {
      v32 = *(v36 + 16);
      v33 = __OFADD__(v32, v17);
      v34 = v32 + v17;
      if (v33)
      {
        goto LABEL_44;
      }

      *(v36 + 16) = v34;
    }

LABEL_4:
    if (++v2 == v38)
    {
      return v3;
    }
  }

  v26 = v21;
  result = sub_2268368D8();
  v21 = v26;
  v25 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  if (v17 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

char *sub_2267E2FF8()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_20:
    os_unfair_lock_unlock((v1 + 24));
    return v6;
  }

  v17 = *(v2 + 16);
  v18 = v1;
  v5 = v3 + 32;

  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22679CBC4(v5, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    swift_getDynamicType();
    (*(v19[4] + 32))();
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2660, &qword_2268756E8);
    v8 = sub_226836A38();

    result = __swift_destroy_boxed_opaque_existential_1(v19);
    v9 = *(v8 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_2267E6F48(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        v13 = *(v6 + 2);
        if ((*(v6 + 3) >> 1) - v13 < v9)
        {
          goto LABEL_23;
        }

        memcpy(&v6[16 * v13 + 32], (v8 + 32), 16 * v9);

        if (v9)
        {
          v14 = *(v6 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_24;
          }

          *(v6 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_22;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {

      v1 = v18;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_2267E3210()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_20:
    os_unfair_lock_unlock((v1 + 24));
    return v6;
  }

  v18 = *(v2 + 16);
  v19 = v1;
  v5 = v3 + 32;

  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22679CBC4(v5, v20);
    v8 = v21;
    v9 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v10 = sub_2267ADA5C(v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    v11 = *(v10 + 16);
    v12 = v6[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= v6[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_2267E704C(result, v14, 1, v6);
      v6 = result;
      if (*(v10 + 16))
      {
LABEL_14:
        if ((v6[3] >> 1) - v6[2] < v11)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_24;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_22;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {

      v1 = v19;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2267E33D0()
{
  v0 = swift_allocObject();
  sub_2267E3408();
  return v0;
}

void *sub_2267E3408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v39 = v34 - v5;
  v37 = sub_226836068();
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v37, v7);
  v38 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_226836718();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226836708();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v17 = sub_2268362B8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  swift_defaultActor_initialize();
  v20 = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
  v34[0] = "chSmartStackLayoutSelector";
  v34[1] = v20;
  sub_2268362A8();
  v40 = MEMORY[0x277D84F90];
  sub_2267E7194(&qword_28138FE00, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  v21 = v37;
  v22 = v35;
  sub_2267A0610(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0);
  sub_226836888();
  (*(v9 + 104))(v13, *MEMORY[0x277D85260], v36);
  v23 = v38;
  v0[14] = sub_226836738();
  v0[15] = [objc_allocWithZone(MEMORY[0x277CC1CD0]) init];
  v0[16] = 0;
  type metadata accessor for ContextualEngineContextStore.GuardedData();
  v24 = swift_allocObject();
  sub_2267E2450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2520, &qword_2268754C8);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  v1[17] = v25;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  v26 = sub_2263B7458();
  (*(v22 + 16))(v23, v26, v21);
  v27 = sub_226836038();
  v28 = sub_2268366E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2263AA000, v27, v28, "ContextualEngineContextStore init", v29, 2u);
    MEMORY[0x22AA821D0](v29, -1, -1);
  }

  (*(v22 + 8))(v23, v21);
  v30 = sub_226836628();
  v31 = v39;
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v1;

  sub_2267AEA94(0, 0, v31, &unk_226875508, v32);

  return v1;
}

uint64_t sub_2267E392C()
{
  v1 = *(v0 + 16);
  sub_2267E3A20();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2267E398C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2263BA0A4;

  return sub_2267E390C(v3, v4, v5, v2);
}

void sub_2267E3A20()
{
  v1 = v0;
  v2 = sub_226836068();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v38 = sub_226835358();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultCenter];
  v11 = *MEMORY[0x277CC5948];
  v12 = swift_allocObject();
  swift_weakInit();
  v43 = sub_2267E72E8;
  v44 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2267CDCE8;
  v42 = &block_descriptor_8;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  v15 = v0[15];
  v16 = [objc_opt_self() mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  v43 = sub_2267E72F0;
  v44 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2267E4D50;
  v42 = &block_descriptor_40;
  v18 = _Block_copy(&aBlock);

  [v15 startActivityUpdatesToQueue:v16 withHandler:v18];
  _Block_release(v18);

  v19 = v1[14];
  v20 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v21 = sub_2268363F8();
  v22 = [v20 initWithIdentifier:v21 targetQueue:v19];

  v23 = v1[18];
  v1[18] = v22;
  swift_unknownObjectRelease();
  v24 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v25 = [v24 Intent];
  swift_unknownObjectRelease();
  v26 = [v25 DSLPublisherWithUseCase_];

  if (v1[18])
  {
    v27 = [v26 subscribeOn_];

    v43 = nullsub_1;
    v44 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2267B2E84;
    v42 = &block_descriptor_43;
    v28 = _Block_copy(&aBlock);
    v29 = swift_allocObject();
    swift_weakInit();
    v43 = sub_2267E72F8;
    v44 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2267E5340;
    v42 = &block_descriptor_47;
    v30 = _Block_copy(&aBlock);

    v31 = [v27 sinkWithCompletion:v28 receiveInput:v30];
    _Block_release(v30);
    _Block_release(v28);

    v32 = v1[19];
    v1[19] = v31;
    swift_unknownObjectRelease();
    sub_226835338();
    sub_226835328();
    sub_226835348();
    v33 = sub_226835318();
    (*(v5 + 8))(v9, v38);

    aBlock = v33;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2638, &qword_226875680);
    sub_2267A0610(&unk_27D7A2640, &qword_27D7A2638, &qword_226875680);
    v34 = sub_226836128();

    v35 = v1[21];
    v1[21] = v34;
  }

  else
  {
    __break(1u);
  }
}