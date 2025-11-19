uint64_t sub_221D95BB0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221D96B50;

  return sub_221D8DFC0(v4, v5, v6, v2, v3);
}

unint64_t sub_221D95C74()
{
  result = qword_27CFE8840;
  if (!qword_27CFE8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8840);
  }

  return result;
}

unint64_t sub_221D95CCC()
{
  result = qword_27CFE8848;
  if (!qword_27CFE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8848);
  }

  return result;
}

unint64_t sub_221D95D24()
{
  result = qword_27CFE8850;
  if (!qword_27CFE8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8850);
  }

  return result;
}

unint64_t sub_221D95D7C()
{
  result = qword_27CFE8858;
  if (!qword_27CFE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCEventSubscriberFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCEventSubscriberFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221D95E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_221D95E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_221D95EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_221D95F38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for XPCEventSubscriberAccountType.keys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCEventSubscriberAccountType.keys(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for ACDXPCEventPublisher()
{
  result = qword_281303818;
  if (!qword_281303818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221D961A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221D96280(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221D962D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221D96328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_221D963D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_221D96434(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_221D964DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_221D90888(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_221D96434(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_221D965DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_221D96644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221D96B50;

  return sub_221D90330(a1, v5);
}

uint64_t sub_221D966FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221D967B4;

  return sub_221D90330(a1, v5);
}

uint64_t sub_221D967B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_221D968A8()
{
  result = qword_281303200;
  if (!qword_281303200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281303200);
  }

  return result;
}

uint64_t sub_221D968F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_221D9693C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221D96B50;

  return sub_221D8D810();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221D969E8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221D967B4;

  return sub_221D8EAA0(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_221D96A98()
{
  result = qword_2813031B8;
  if (!qword_2813031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813031B8);
  }

  return result;
}

void sub_221D96B00(uint64_t a1, unint64_t *a2)
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

uint64_t sub_221D96B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_221D96B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_221D96C30()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_221D96C68(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

id ACDAsyncAuthenticationPluginManager.__allocating_init(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F90];
  v3[15] = sub_221D9F388(MEMORY[0x277D84F90]);
  v3[16] = sub_221D9F48C(v4);
  v3[14] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ACDAsyncAuthenticationPluginManager.init(with:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_221D9F388(MEMORY[0x277D84F90]);
  v1[16] = sub_221D9F48C(v3);
  v1[14] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ACDAsyncAuthenticationPluginManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_221D96E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[81] = v3;
  v4[80] = a3;
  v4[79] = a2;
  v4[78] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570) - 8) + 64) + 15;
  v4[82] = swift_task_alloc();
  v6 = sub_221DAC238();
  v4[83] = v6;
  v7 = *(v6 - 8);
  v4[84] = v7;
  v8 = *(v7 + 64) + 15;
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D96FD4);
}

uint64_t sub_221D96FD4()
{
  v289 = v0;
  v1 = v0;
  v2 = [*(v0 + 624) accountType];
  if (!v2)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v7 = v2;
  v8 = [v2 identifier];

  if (!v8)
  {
    v34 = *(v0 + 696);
    v35 = *(v0 + 672);
    v36 = v1[83];
    v37 = v1[78];
    v38 = sub_221DA02C0();
    swift_beginAccess();
    (*(v35 + 16))(v34, v38, v36);
    v39 = v37;
    v40 = sub_221DAC218();
    v41 = sub_221DAC558();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v1[87];
    v44 = v1[84];
    v45 = v1[83];
    if (v42)
    {
      v282 = v1[87];
      v46 = v1[78];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v287 = v48;
      *v47 = 136315138;
      v49 = v46;
      v50 = [v49 description];
      v51 = v1;
      v52 = sub_221DAC3B8();
      v278 = v45;
      v54 = v53;

      v55 = v52;
      v1 = v51;
      v56 = sub_221D909D4(v55, v54, &v287);

      *(v47 + 4) = v56;
      _os_log_impl(&dword_221D2F000, v40, v41, "ACDAsyncAuthenticationPluginManager: no account type on %s, bailing!", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x223DAA350](v48, -1, -1);
      MEMORY[0x223DAA350](v47, -1, -1);

      (*(v44 + 8))(v282, v278);
    }

    else
    {

      (*(v44 + 8))(v43, v45);
    }

    v284 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:0];
    goto LABEL_66;
  }

  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v11 = sub_221DAC3B8();
  v13 = v12;

  v14 = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))(v10);
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v15 = v2;
  v16 = [v2 valueForManagedDefault_];

  if (v16)
  {
    LOBYTE(v287) = 2;
    MEMORY[0x223DA91C0](v16, &v287);

    if (v287 != 2 && (v287 & 1) != 0)
    {
      v17 = v1[93];
      v18 = v1[84];
      v19 = v1[83];

      v20 = sub_221DA02C0();
      swift_beginAccess();
      (*(v18 + 16))(v17, v20, v19);
      v21 = sub_221DAC218();
      v22 = sub_221DAC558();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v1[93];
      v25 = v1[84];
      v26 = v1[83];
      if (v23)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_221D2F000, v21, v22, "Password dialogs suppressed, force-rejecting renewal request.", v27, 2u);
        MEMORY[0x223DAA350](v27, -1, -1);
      }

      (*(v25 + 8))(v24, v26);
      goto LABEL_113;
    }
  }

  v28 = *MEMORY[0x277CB90A0];
  v29 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v31 = sub_221D9295C(v29, v30);
    v33 = v32;

    if (v33)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v31, (v1 + 18));
      if (swift_dynamicCast())
      {
        v273 = *(v1 + 859);
        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  v273 = 0;
LABEL_18:
  v57 = *MEMORY[0x277CB9098];
  v58 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v60 = sub_221D9295C(v58, v59);
    v62 = v61;

    if (v62)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v60, (v1 + 22));
      if (swift_dynamicCast())
      {
        v270 = *(v1 + 858);
        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v270 = 0;
LABEL_24:
  v63 = *MEMORY[0x277CB9050];
  v64 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v66 = sub_221D9295C(v64, v65);
    v68 = v67;

    if (v68)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v66, (v1 + 26));
      if (swift_dynamicCast())
      {
        v283 = *(v1 + 857);
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v283 = 0;
LABEL_30:
  v69 = *MEMORY[0x277CB9088];
  v70 = sub_221DAC3B8();
  v267 = v11;
  if (*(v14 + 16))
  {
    v72 = sub_221D9295C(v70, v71);
    v74 = v73;

    if (v74)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v72, (v1 + 30));
      v75 = swift_dynamicCast();
      v76 = v1[75];
      if (!v75)
      {
        v76 = 0;
      }

      v269 = v76;
      if (v75)
      {
        v77 = v1[76];
      }

      else
      {
        v77 = 0;
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  v269 = 0;
  v77 = 0;
LABEL_39:
  v78 = v1[92];
  v79 = v1[84];
  v80 = v1[83];
  v81 = v1[79];
  v82 = v1[78];
  v83 = sub_221DA02C0();
  v1[94] = v83;
  swift_beginAccess();
  v84 = *(v79 + 16);
  v1[95] = v84;
  v1[96] = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v275 = v83;
  v274 = v84;
  v84(v78, v83, v80);

  v85 = v82;
  v86 = v81;
  v87 = sub_221DAC218();
  v88 = v77;
  v89 = sub_221DAC568();

  v90 = os_log_type_enabled(v87, v89);
  v91 = v1[92];
  v92 = v1[84];
  v93 = v1[83];
  v277 = v13;
  v279 = v14;
  v276 = v88;
  if (v90)
  {
    v94 = v1[79];
    v95 = v1[78];
    v96 = v1;
    v97 = swift_slowAlloc();
    v265 = v91;
    v98 = swift_slowAlloc();
    v263 = v93;
    v99 = swift_slowAlloc();
    v287 = v99;
    *v97 = 138413314;
    *(v97 + 4) = v95;
    *v98 = v95;
    *(v97 + 12) = 2114;
    v100 = v95;
    v101 = [v94 client];
    *(v97 + 14) = v101;
    v98[1] = v101;
    *(v97 + 22) = 2080;
    v96[73] = v269;
    v96[74] = v88;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v102 = sub_221DAC3C8();
    v104 = sub_221D909D4(v102, v103, &v287);

    *(v97 + 24) = v104;
    *(v97 + 32) = 2082;
    v105 = sub_221DA035C(v273);
    v107 = sub_221D909D4(v105, v106, &v287);

    *(v97 + 34) = v107;
    *(v97 + 42) = 2082;
    v108 = sub_221DA035C(v270);
    v110 = sub_221D909D4(v108, v109, &v287);

    *(v97 + 44) = v110;
    v13 = v277;
    _os_log_impl(&dword_221D2F000, v87, v89, "ACDAsyncAuthenticationPluginManager renewCredential %@ was called by client %{public}@ with reason %s shouldForce %{public}s shouldAvoidUI %{public}s", v97, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v98, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v99, -1, -1);
    v111 = v97;
    v1 = v96;
    MEMORY[0x223DAA350](v111, -1, -1);

    v112 = *(v92 + 8);
    v112(v265, v263);
  }

  else
  {

    v112 = *(v92 + 8);
    v112(v91, v93);
  }

  v1[97] = v112;
  if (v283)
  {

    v271 = v267;
    v113 = v13;
  }

  else
  {
    v271 = (*((*MEMORY[0x277D85000] & *v1[81]) + 0xC0))(v1[78]);
    v113 = v114;
  }

  v115 = v1[91];
  v116 = v1[83];
  swift_beginAccess();
  v274(v115, v275, v116);

  v117 = sub_221DAC218();
  v118 = sub_221DAC548();

  v119 = os_log_type_enabled(v117, v118);
  v120 = v1[91];
  v121 = v1[84];
  v122 = v1[83];
  v266 = v112;
  if (v119)
  {
    v264 = v1[91];
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v287 = v124;
    *v123 = 136315138;
    *(v123 + 4) = sub_221D909D4(v271, v113, &v287);
    _os_log_impl(&dword_221D2F000, v117, v118, "ACDAsyncAuthenticationPluginManager renewCredential using authType: %s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v124);
    v125 = v124;
    v13 = v277;
    MEMORY[0x223DAA350](v125, -1, -1);
    MEMORY[0x223DAA350](v123, -1, -1);

    v112(v264, v122);
  }

  else
  {

    v112(v120, v122);
  }

  v126 = *(v1[81] + 112);
  v127 = sub_221DAC388();
  v128 = [v126 pluginForAuthenticationType_];
  v1[98] = v128;

  if (v128)
  {
    if (v283)
    {
      v129 = v1[78];
    }

    else
    {
      v129 = (*((*MEMORY[0x277D85000] & *v1[81]) + 0xC8))(v1[78]);
    }

    v142 = v129;
    v1[99] = v129;
    if ([v128 respondsToSelector_])
    {
      if (([v128 respondsToSelector_] & 1) == 0)
      {
LABEL_69:
        v147 = MEMORY[0x277D84F90];
        goto LABEL_70;
      }

      v143 = v1[79];
      v144 = v142;
      sub_221D99490(v279);
      v145 = sub_221DAC348();
      v146 = [v128 renewalIDsForAccount:v144 accountStore:v143 options:v145];

      if (v146)
      {
        v147 = sub_221DAC498();

LABEL_70:
        if (!*(v147 + 16))
        {
          v183 = [v142 identifier];
          if (v183)
          {
            v287 = 0;
            v288 = 0;
            v184 = v183;
            sub_221DAC3A8();

            v185 = v288;
            if (v288)
            {
              v186 = v287;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
              v147 = swift_allocObject();
              *(v147 + 16) = xmmword_221DB1CC0;
              *(v147 + 32) = v186;
              *(v147 + 40) = v185;
            }
          }
        }

        v272 = v128;
        v1[77] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89E8, &qword_221DB1CF8);
        v164 = sub_221DAC3C8();
        v285 = v165;
        v166 = *(v147 + 16);
        v167 = MEMORY[0x277D84F90];
        v268 = v142;
        v281 = v1;
        if (v166)
        {
          v168 = v164;
          v286 = MEMORY[0x277D84F90];
          sub_221D9F25C(0, v166, 0);
          v167 = v286;
          v169 = (v147 + 40);
          do
          {
            v170 = *(v169 - 1);
            v171 = *v169;
            v287 = v168;
            v288 = v285;

            MEMORY[0x223DA9120](46, 0xE100000000000000);
            MEMORY[0x223DA9120](v170, v171);

            v173 = v287;
            v172 = v288;
            v175 = v286[2];
            v174 = v286[3];
            if (v175 >= v174 >> 1)
            {
              sub_221D9F25C((v174 > 1), v175 + 1, 1);
            }

            v286[2] = v175 + 1;
            v176 = &v286[2 * v175];
            v176[4] = v173;
            v176[5] = v172;
            v169 += 2;
            --v166;
          }

          while (v166);
        }

        v177 = *MEMORY[0x277CB9048];
        v178 = sub_221DAC3B8();
        if (*(v279 + 16) && (v180 = sub_221D9295C(v178, v179), (v181 & 1) != 0))
        {
          sub_221D963D4(*(v279 + 56) + 32 * v180, (v1 + 38));
        }

        else
        {
          *(v1 + 19) = 0u;
          *(v1 + 20) = 0u;
        }

        if (v1[41])
        {
          v2 = swift_dynamicCast();
          if (v2 && (v1[107] & 1) != 0)
          {
            goto LABEL_99;
          }

          v182 = v167[2];
          if (!v182)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v2 = sub_221D96328((v1 + 38), &qword_27CFE89F0, &unk_221DB1D00);
          v182 = v167[2];
          if (!v182)
          {
LABEL_99:
            v1 = v281;
            if ((v273 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v281[81]) + 0xD0))(v281[78], v281[79]) & 1) == 0)
            {
              v233 = v281[89];
              v234 = v281[83];
              v235 = v281[78];

              swift_beginAccess();
              v274(v233, v275, v234);
              v236 = v235;
              v237 = sub_221DAC218();
              v238 = sub_221DAC568();

              if (os_log_type_enabled(v237, v238))
              {
                v239 = v281[78];
                v240 = swift_slowAlloc();
                v241 = swift_slowAlloc();
                *v240 = 138412290;
                *(v240 + 4) = v239;
                *v241 = v239;
                v242 = v239;
                _os_log_impl(&dword_221D2F000, v237, v238, "ACDAsyncAuthenticationPluginManager limit renewal for account %@", v240, 0xCu);
                sub_221D96328(v241, &unk_27CFE8890, &unk_221DB1B70);
                MEMORY[0x223DAA350](v241, -1, -1);
                MEMORY[0x223DAA350](v240, -1, -1);

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                v237 = v268;
              }

              v243 = v281[89];
              v244 = v281[84];
              v245 = v281[83];

              v266(v243, v245);
LABEL_113:
              v284 = 0;
              v163 = 1;
              goto LABEL_114;
            }

            v206 = [objc_opt_self() expirerWithTimeout_];
            v281[103] = v206;
            v207 = swift_allocObject();
            v207[2] = v206;
            v207[3] = v272;
            v207[4] = 3600;
            v281[16] = sub_221D9F6E4;
            v281[17] = v207;
            v281[12] = MEMORY[0x277D85DD0];
            v281[13] = 1107296256;
            v281[14] = sub_221D999D4;
            v281[15] = &block_descriptor_0;
            v208 = _Block_copy(v281 + 12);
            v209 = v281[17];
            v210 = v206;
            swift_unknownObjectRetain();

            [v210 scheduleExpiration_];
            _Block_release(v208);
            if (v167[2])
            {
              v211 = v167[4];
              v212 = v167[5];

LABEL_105:
              v215 = v281[82];
              v216 = v281[81];
              v217 = v281[79];
              v218 = sub_221DAC4E8();
              (*(*(v218 - 8) + 56))(v215, 1, 1, v218);
              v219 = sub_221D9F708();
              v220 = swift_allocObject();
              v220[2] = v216;
              v220[3] = v219;
              v220[4] = v216;
              v220[5] = v211;
              v220[6] = v212;
              v220[7] = v272;
              v220[8] = v268;
              v220[9] = v217;
              v220[10] = v279;
              v220[11] = v269;
              v220[12] = v276;
              swift_retain_n();
              v221 = v217;
              v222 = v268;
              swift_unknownObjectRetain();

              v223 = sub_221D9B820(0, 0, v215, &unk_221DB1D18, v220);
              v281[104] = v223;
              v224 = *((*MEMORY[0x277D85000] & *v216) + 0x98);

              v225 = v224(v281 + 34);
              v227 = v226;
              v228 = *v226;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v287 = *v227;
              *v227 = 0x8000000000000000;
              sub_221D9ED60(v223, v211, v212, isUniquelyReferenced_nonNull_native);

              *v227 = v287;
              v225(v281 + 34, 0);
              v230 = *(MEMORY[0x277D857C8] + 4);
              v231 = swift_task_alloc();
              v281[105] = v231;
              v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
              v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
              *v231 = v281;
              v231[1] = sub_221D98D40;
              v6 = MEMORY[0x277D84950];
              v2 = v281 + 69;
              v3 = v223;
              v4 = v232;
LABEL_106:

              return MEMORY[0x282200430](v2, v3, v4, v5, v6);
            }

            v2 = [v268 identifier];
            if (v2)
            {
              v213 = v2;

              v211 = sub_221DAC3B8();
              v212 = v214;

              goto LABEL_105;
            }

LABEL_122:
            __break(1u);
            return MEMORY[0x282200430](v2, v3, v4, v5, v6);
          }
        }

        v187 = 0;
        v188 = v167 + 5;
        while (1)
        {
          if (v187 >= v167[2])
          {
            __break(1u);
            goto LABEL_120;
          }

          v190 = *(v188 - 1);
          v189 = *v188;
          v191 = *((*MEMORY[0x277D85000] & *v281[81]) + 0x88);

          if (*(v191(v192) + 16))
          {
            sub_221D9295C(v190, v189);
            if (v193)
            {
              break;
            }
          }

          ++v187;

          v188 += 2;
          if (v182 == v187)
          {
            goto LABEL_99;
          }
        }

        v194 = v281[81];

        v196 = v191(v195);
        if (!*(v196 + 16) || (v197 = sub_221D9295C(v190, v189), (v198 & 1) == 0))
        {

          goto LABEL_99;
        }

        v199 = v197;
        v200 = v281[90];
        v201 = v281[83];

        v202 = *(*(v196 + 56) + 8 * v199);
        v281[100] = v202;

        swift_beginAccess();
        v274(v200, v275, v201);
        v203 = sub_221DAC218();
        v204 = sub_221DAC568();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          *v205 = 0;

          _os_log_impl(&dword_221D2F000, v203, v204, "ACDAsyncAuthenticationPluginManager renew already running, awaiting that", v205, 2u);
          MEMORY[0x223DAA350](v205, -1, -1);
        }

        else
        {
        }

        v259 = v281[84] + 8;
        v266(v281[90], v281[83]);
        v260 = *(MEMORY[0x277D857C8] + 4);
        v261 = swift_task_alloc();
        v281[101] = v261;
        v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
        *v261 = v281;
        v261[1] = sub_221D98AF8;
        v6 = MEMORY[0x277D84950];
        v2 = v281 + 71;
        v3 = v202;
        v4 = v262;
        goto LABEL_106;
      }
    }

    else
    {
      if (![v128 respondsToSelector_] || (objc_msgSend(v128, sel_respondsToSelector_, sel_renewalIDForAccount_) & 1) == 0)
      {
        goto LABEL_69;
      }

      v144 = v142;
      v148 = [v128 renewalIDForAccount_];
      if (v148)
      {
        v149 = v148;
        v150 = sub_221DAC3B8();
        v152 = v151;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_221DB1CC0;
        *(v153 + 32) = v150;
        *(v153 + 40) = v152;
        v147 = v153;
        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v130 = v1[88];
  v131 = v1[83];

  swift_beginAccess();
  v274(v130, v275, v131);

  v132 = sub_221DAC218();
  v133 = sub_221DAC558();

  v134 = os_log_type_enabled(v132, v133);
  v135 = v1[88];
  v136 = v1[84];
  v137 = v1[83];
  if (v134)
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v287 = v139;
    *v138 = 136315138;
    v140 = v267;
    *(v138 + 4) = sub_221D909D4(v267, v277, &v287);
    _os_log_impl(&dword_221D2F000, v132, v133, "ACDAsyncAuthenticationPluginManager: no auth plugin to renew credentials for accounts of type %s, bailing!", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v139);
    v141 = v139;
    v13 = v277;
    MEMORY[0x223DAA350](v141, -1, -1);
    MEMORY[0x223DAA350](v138, -1, -1);

    v266(v135, v137);
  }

  else
  {

    v112(v135, v137);
    v140 = v267;
  }

  v287 = 0;
  v288 = 0xE000000000000000;
  sub_221DAC648();
  MEMORY[0x223DA9120](0xD000000000000039, 0x8000000221DBE3A0);
  MEMORY[0x223DA9120](v140, v13);

  v155 = v287;
  v154 = v288;
  v156 = *MEMORY[0x277CB8DC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D8, &qword_221DB1CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221DB1CC0;
  v158 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_221DAC3B8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v159;
  *(inited + 48) = v155;
  *(inited + 56) = v154;
  v160 = v156;
  sub_221D9F5B4(inited);
  swift_setDeallocating();
  sub_221D96328(inited + 32, &qword_27CFE89E0, &unk_221DB1CE8);
  v161 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v162 = sub_221DAC348();

  v284 = [v161 initWithDomain:v160 code:4 userInfo:v162];

LABEL_66:
  v163 = 2;
LABEL_114:
  v280 = v163;
  v246 = v1[93];
  v247 = v1[92];
  v248 = v1[91];
  v249 = v1[90];
  v250 = v1[89];
  v251 = v1[88];
  v252 = v1[87];
  v253 = v1;
  v254 = v1[86];
  v255 = v253[85];
  v256 = v253[82];

  v257 = v253[1];

  return v257(v280, v284);
}

uint64_t sub_221D98AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *v1;
  *(*v1 + 816) = v0;

  v5 = *(v2 + 648);
  if (v0)
  {
    v6 = sub_221D98F9C;
  }

  else
  {
    v6 = sub_221D98C24;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_221D98C24()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 784);

  swift_unknownObjectRelease();
  v15 = *(v0 + 576);
  v16 = *(v0 + 568);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 680);
  v12 = *(v0 + 656);

  v13 = *(v0 + 8);

  return v13(v16, v15);
}

uint64_t sub_221D98D40()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;
  *(*v1 + 848) = v0;

  v5 = *(v2 + 648);
  if (v0)
  {
    v6 = sub_221D99218;
  }

  else
  {
    v6 = sub_221D98E6C;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_221D98E6C()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[99];
  v4 = v0[98];

  v17 = v0[70];
  v18 = v0[69];
  [v2 cancelTimer];

  swift_unknownObjectRelease();
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[87];
  v12 = v0[86];
  v13 = v0[85];
  v14 = v0[82];

  v15 = v0[1];

  return v15(v18, v17);
}

uint64_t sub_221D98F9C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  v5 = *(v0 + 688);
  v6 = *(v0 + 664);
  swift_beginAccess();
  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_221DAC218();
  v9 = sub_221DAC558();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 816);
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    v13 = *(v0 + 784);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_221D2F000, v8, v9, "ACDAsyncAuthenticationPluginManager renewal failed in an unexpected way %@", v14, 0xCu);
    sub_221D96328(v15, &unk_27CFE8890, &unk_221DB1B70);
    MEMORY[0x223DAA350](v15, -1, -1);
    MEMORY[0x223DAA350](v14, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = *(v0 + 800);
    v19 = *(v0 + 784);

    swift_unknownObjectRelease();
  }

  v33 = *(v0 + 816);
  v20 = *(v0 + 672) + 8;
  (*(v0 + 776))(*(v0 + 688), *(v0 + 664));
  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = *(v0 + 728);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);
  v29 = *(v0 + 680);
  v30 = *(v0 + 656);

  v31 = *(v0 + 8);

  return v31(2, v33);
}

uint64_t sub_221D99218()
{
  v1 = v0[106];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[85];
  v6 = v0[83];
  swift_beginAccess();
  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_221DAC218();
  v9 = sub_221DAC558();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[106];
    v11 = v0[104];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221D2F000, v8, v9, "ACDAsyncAuthenticationPluginManager renewal failed in an unexpected way %@", v12, 0xCu);
    sub_221D96328(v13, &unk_27CFE8890, &unk_221DB1B70);
    MEMORY[0x223DAA350](v13, -1, -1);
    MEMORY[0x223DAA350](v12, -1, -1);
  }

  else
  {
    v16 = v0[104];
  }

  v32 = v0[106];
  v17 = v0[103];
  v18 = v0[99];
  v19 = v0[98];
  (*(v0[84] + 8))(v0[85], v0[83]);
  [v17 cancelTimer];

  swift_unknownObjectRelease();
  v20 = v0[93];
  v21 = v0[92];
  v22 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[82];

  v30 = v0[1];

  return v30(2, v32);
}

uint64_t sub_221D99490(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A38, &qword_221DB1E88);
    v2 = sub_221DAC688();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_221D963D4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_221D9F868(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_221D9F868(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_221D9F868(v32, v33);
    v17 = *(v2 + 40);
    result = sub_221DAC5F8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_221D9F868(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_221D99758(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_221DAC238();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 cancelTimer];
  v11 = sub_221DA02C0();
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  swift_unknownObjectRetain();
  v12 = sub_221DAC218();
  v13 = sub_221DAC558();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    if ([a2 respondsToSelector_])
    {
      v16 = [a2 debugDescription];
      v26 = a3;
      v17 = v16;
      v18 = sub_221DAC3B8();
      v20 = v19;

      a3 = v26;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v27 = v18;
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v21 = sub_221DAC3C8();
    v23 = sub_221D909D4(v21, v22, &v29);

    *(v14 + 4) = v23;
    *(v14 + 12) = 2050;
    *(v14 + 14) = a3;
    _os_log_impl(&dword_221D2F000, v12, v13, "ACDAsyncAuthenticationPluginManager renew for plugin %s failed to complete in expected time %{public}llu.", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DAA350](v15, -1, -1);
    MEMORY[0x223DAA350](v14, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_221D999D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_221D99A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v15;
  *(v8 + 240) = v16;
  *(v8 + 216) = v14;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a1;
  *(v8 + 176) = a4;
  v9 = sub_221DAC238();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D99AF8);
}

uint64_t sub_221D99AF8()
{
  v1 = *(v0 + 240);
  v11 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 272) = v4;
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v0 + 280) = v5;
  *(v5 + 16) = 0;
  sub_221D9F708();
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  v7 = *(v0 + 208);
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v7;
  *(v6 + 64) = v11;
  *(v6 + 80) = v1;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_221D99C74;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_221D99C74()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221D99DA0);
}

uint64_t sub_221D99DA0()
{
  v53 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 208);
  v7 = sub_221DA02C0();
  swift_beginAccess();
  (*(v4 + 16))(v3, v7, v5);

  v8 = v6;

  v9 = sub_221DAC218();
  v10 = sub_221DAC548();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 208);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v13 = 138412802;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v16 = *(v11 + 16);
    v17 = 0xE600000000000000;
    v18 = 0x44454C494146;
    v19 = 0xE700000000000000;
    v20 = 0x4E574F4E4B4E55;
    if (v16 == 1)
    {
      v20 = 0x44455443454A4552;
      v19 = 0xE800000000000000;
    }

    if (v16 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (v16)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0x444557454E4552;
    }

    if (v16)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v25 = *(v0 + 208);

    v26 = sub_221D909D4(v21, v22, &v52);

    *(v13 + 14) = v26;
    *(v13 + 22) = 2112;
    swift_beginAccess();
    v27 = *(v24 + 16);
    if (v27)
    {
      v28 = v27;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v36 = *(v0 + 256);
    v35 = *(v0 + 264);
    v37 = *(v0 + 248);
    *(v13 + 24) = v29;
    v14[1] = v30;
    _os_log_impl(&dword_221D2F000, v9, v10, "ACDAsyncAuthenticationPluginManager renew account %@ finished with result %s and error %@", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DAA350](v15, -1, -1);
    MEMORY[0x223DAA350](v13, -1, -1);

    (*(v36 + 8))(v35, v37);
  }

  else
  {
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);

    (*(v34 + 8))(v32, v33);
  }

  v38 = *(v0 + 272);
  v39 = *(v0 + 280);
  v40 = *(v0 + 176);
  swift_beginAccess();
  v41 = *(v38 + 16);
  swift_beginAccess();
  v42 = *(v39 + 16);
  *(v0 + 304) = v42;
  v43 = *((*MEMORY[0x277D85000] & *v40) + 0xB0);
  v44 = v42;
  v51 = (v43 + *v43);
  v45 = v43[1];
  v46 = swift_task_alloc();
  *(v0 + 312) = v46;
  *v46 = v0;
  v46[1] = sub_221D9A1F4;
  v48 = *(v0 + 208);
  v47 = *(v0 + 216);
  v49 = *(v0 + 176);

  return v51(v48, v41, v47, v42);
}

uint64_t sub_221D9A1F4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_221D9A434;
  }

  else
  {
    v6 = *(v2 + 176);

    v5 = sub_221D9A31C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_221D9A31C()
{
  v1 = v0[35];
  v2 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  *v5 = *(v0[34] + 16);
  v7 = *(v1 + 16);
  v5[1] = v7;
  v8 = v7;

  v9 = (*((*MEMORY[0x277D85000] & *v6) + 0x98))(v0 + 2);
  sub_221D9E2B8(v4, v3);

  v9(v0 + 2, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_221D9A434()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  *v8 = *(*(v0 + 272) + 16);
  v10 = *(v4 + 16);
  v8[1] = v10;
  v11 = v10;

  v12 = (*((*MEMORY[0x277D85000] & *v9) + 0x98))(v0 + 16);
  sub_221D9E2B8(v7, v6);

  v12(v0 + 16, 0);

  v13 = *(v0 + 8);

  return v13();
}

void sub_221D9A568(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v87 = a8;
  v90 = a6;
  v91 = a7;
  v93 = a5;
  v94 = a2;
  v89 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v82 - v14;
  v85 = sub_221DAC238();
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v86 = (v23 + 16);
  v24 = *(v18 + 16);
  v95 = v17;
  v24(v22, a1, v17);
  v92 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24(v92, v22, v17);
  v25 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v31 = v94;
  v30 = v95;
  *(v29 + 2) = v23;
  *(v29 + 3) = v31;
  *(v29 + 4) = a3;
  v88 = v18;
  (*(v18 + 32))(&v29[v25], v22, v30);
  v33 = v89;
  v32 = v90;
  *&v29[v26] = v89;
  *&v29[v27] = v93;
  *&v29[v28] = v32;
  v34 = v91;
  *&v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8] = v91;
  v35 = v34;
  v36 = v32;

  swift_unknownObjectRetain();
  v90 = a3;

  v37 = v94;

  v91 = v23;

  v38 = v33;
  if ([v33 respondsToSelector_])
  {
    (*(v88 + 8))(v92, v95);
    sub_221D99490(v87);
    v39 = v36;
    v40 = sub_221DAC348();

    v41 = swift_allocObject();
    *(v41 + 16) = sub_221D9FF54;
    *(v41 + 24) = v29;
    v100 = sub_221DA00F4;
    v101 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_221D9B7A8;
    v99 = &block_descriptor_67;
    v42 = _Block_copy(&aBlock);

    [v33 renewCredentialsForAccount:v39 accountStore:v35 options:v40 completion:v42];
LABEL_12:

    _Block_release(v42);

    return;
  }

  v43 = v95;
  v87 = v35;
  v44 = v88;
  if ([v33 respondsToSelector_])
  {
    v40 = a10;
    (*(v44 + 8))(v92, v43);
    v45 = v36;
    if (a10)
    {
      v40 = sub_221DAC388();
    }

    v66 = v87;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_221D9FF54;
    *(v67 + 24) = v29;
    v100 = sub_221DA0238;
    v101 = v67;
    aBlock = MEMORY[0x277D85DD0];
    v97 = 1107296256;
    v98 = sub_221D9B7A8;
    v99 = &block_descriptor_61_0;
    v42 = _Block_copy(&aBlock);

    [v33 renewCredentialsForAccount:v45 accountStore:v66 reason:v40 completion:v42];
    goto LABEL_12;
  }

  v46 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
  v47 = v86;
  swift_beginAccess();
  if (*v47 == 1)
  {
    v90 = v46;
    v94 = v36;
    v48 = sub_221DA02C0();
    swift_beginAccess();
    v49 = v84;
    v50 = v83;
    v51 = v85;
    (*(v84 + 16))(v83, v48, v85);
    swift_unknownObjectRetain();
    v52 = sub_221DAC218();
    v53 = sub_221DAC558();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v52, v53))
    {
      v86 = v29;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v102[0] = v55;
      *v54 = 136315138;
      if ([v38 respondsToSelector_])
      {
        v56 = [v38 debugDescription];
        v57 = sub_221DAC3B8();
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      v68 = v83;
      v102[1] = v57;
      v102[2] = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
      v69 = sub_221DAC3C8();
      v71 = sub_221D909D4(v69, v70, v102);

      *(v54 + 4) = v71;
      _os_log_impl(&dword_221D2F000, v52, v53, "ACDAsyncAuthenticationPluginManager error in %s renewCredentials implementation, called completion handler twice", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x223DAA350](v55, -1, -1);
      MEMORY[0x223DAA350](v54, -1, -1);

      (*(v84 + 8))(v68, v85);
      v43 = v95;
    }

    else
    {

      (*(v49 + 8))(v50, v51);
    }

    v72 = v92;
    v73 = sub_221DAC4E8();
    v74 = v82;
    (*(*(v73 - 8) + 56))(v82, 1, 1, v73);
    v75 = swift_allocObject();
    v75[2] = 0;
    v75[3] = 0;
    v76 = v94;
    v75[4] = v93;
    v75[5] = v76;
    v75[6] = 2;
    v77 = v87;
    v78 = v90;
    v75[7] = v87;
    v75[8] = v78;
    v79 = v77;
    v80 = v76;

    v81 = v78;
    sub_221D8DBBC(0, 0, v74, &unk_221DB1EA8, v75);

    sub_221D96328(v74, &qword_27CFE89D0, &qword_221DB1570);
    (*(v44 + 8))(v72, v43);
  }

  else
  {
    v91[16] = 1;
    swift_beginAccess();
    v37[2] = 2;
    v60 = objc_opt_self();
    v61 = sub_221DAC188();
    v62 = [v60 _sanitizeError_];

    v63 = v90;
    swift_beginAccess();
    v64 = v63[2];
    v63[2] = v62;

    v65 = v92;
    sub_221DAC4C8();

    (*(v44 + 8))(v65, v43);
  }
}

uint64_t sub_221D9AF34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v53 = a6;
  v54 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = sub_221DAC238();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v52 = a1;
    v53 = a2;
    v26 = a9;
    v25 = a10;
    v27 = sub_221DA02C0();
    swift_beginAccess();
    (*(v21 + 16))(v24, v27, v20);
    swift_unknownObjectRetain();
    v28 = sub_221DAC218();
    v29 = sub_221DAC558();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v28, v29))
    {
      v50 = a9;
      v51 = a10;
      v30 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55[0] = v49;
      *v30 = 136315138;
      if ([a7 respondsToSelector_])
      {
        v31 = [a7 debugDescription];
        v32 = sub_221DAC3B8();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v55[3] = v32;
      v55[4] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
      v39 = sub_221DAC3C8();
      v41 = sub_221D909D4(v39, v40, v55);

      *(v30 + 4) = v41;
      _os_log_impl(&dword_221D2F000, v28, v29, "ACDAsyncAuthenticationPluginManager error in %s renewCredentials implementation, called completion handler twice", v30, 0xCu);
      v42 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x223DAA350](v42, -1, -1);
      MEMORY[0x223DAA350](v30, -1, -1);

      (*(v21 + 8))(v24, v20);
      v26 = v50;
      v25 = v51;
    }

    else
    {

      (*(v21 + 8))(v24, v20);
    }

    v43 = sub_221DAC4E8();
    (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v53;
    v44[4] = v54;
    v44[5] = v26;
    v44[6] = v52;
    v44[7] = v25;
    v44[8] = v45;

    v46 = v26;
    v47 = v25;
    v48 = v45;
    sub_221D8DBBC(0, 0, v19, &unk_221DB1EB8, v44);

    return sub_221D96328(v19, &qword_27CFE89D0, &qword_221DB1570);
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    *(a4 + 16) = a1;
    if (a2)
    {
      v35 = sub_221DAC188();
    }

    else
    {
      v35 = 0;
    }

    v36 = [objc_opt_self() _sanitizeError_];

    swift_beginAccess();
    v37 = *(a5 + 16);
    *(a5 + 16) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98);
    return sub_221DAC4C8();
  }
}

uint64_t sub_221D9B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_221DAC238();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D9B488);
}

uint64_t sub_221D9B488()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_221DA02C0();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_221DAC218();
  v6 = sub_221DAC548();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_221D2F000, v5, v6, "Saving despite multiple callbacks out of an abundance of conforming to prior behavior", v7, 2u);
    MEMORY[0x223DAA350](v7, -1, -1);
  }

  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v11 = v0[5];

  (*(v9 + 8))(v8, v10);
  v12 = *((*MEMORY[0x277D85000] & *v11) + 0xB0);
  v21 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_221D9B694;
  v15 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  return v21(v18, v17, v15, v16);
}

uint64_t sub_221D9B694()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 96);

  v6 = *(v4 + 8);

  return v6();
}

void sub_221D9B7A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_221D9B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_221D965DC(a3, v24 - v10, &qword_27CFE89D0, &qword_221DB1570);
  v12 = sub_221DAC4E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_221D96328(v11, &qword_27CFE89D0, &qword_221DB1570);
  }

  else
  {
    sub_221DAC4D8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_221DAC4B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_221DAC3D8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);

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

  sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_221D9BC84(void *a1, void *a2, int a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = sub_221DAC358();
  v5[6] = v8;
  v9 = a1;
  v10 = a2;

  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_221D9BD98;

  return sub_221D96E70(v9, v10, v8);
}

uint64_t sub_221D9BD98(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  if (a2)
  {
    v12 = a2;
    v13 = sub_221DAC188();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v5 + 40);
  (v14)[2](v14, a1, v13);

  _Block_release(v14);
  v15 = *(v11 + 8);

  return v15();
}

uint64_t sub_221D9BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_221DAC238();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v9 = sub_221DAC208();
  v5[33] = v9;
  v10 = *(v9 - 8);
  v5[34] = v10;
  v11 = *(v10 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D9C0A0);
}

uint64_t sub_221D9C0A0()
{
  v1 = *(v0 + 200);
  if (!(*(v0 + 216) | v1))
  {
    [*(v0 + 192) setAuthenticated_];
LABEL_5:
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 192);
    v12 = sub_221DA02C0();
    *(v0 + 288) = v12;
    swift_beginAccess();
    v13 = *(v10 + 16);
    *(v0 + 296) = v13;
    *(v0 + 304) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v12, v9);
    v14 = v11;
    v15 = sub_221DAC218();
    v16 = sub_221DAC548();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 192);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&dword_221D2F000, v15, v16, "ACDAsyncAuthenticationPluginManager renewCredentials is saving account %@", v19, 0xCu);
      sub_221D96328(v20, &unk_27CFE8890, &unk_221DB1B70);
      MEMORY[0x223DAA350](v20, -1, -1);
      MEMORY[0x223DAA350](v19, -1, -1);
    }

    *(v0 + 312) = v18;
    v22 = *(v0 + 256);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v26 = *(v0 + 192);
    v27 = *(v24 + 8);
    *(v0 + 320) = v27;
    *(v0 + 328) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v22, v23);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 344;
    *(v0 + 24) = sub_221D9C3DC;
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A18, &qword_221DB1D48);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221D9C780;
    *(v0 + 104) = &block_descriptor_9;
    *(v0 + 112) = v28;
    [v25 saveVerifiedAccount:v26 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v2 = *(v0 + 280);
  if (v1 == 1)
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 192);
    v6 = *(v0 + 280);
    sub_221DAC1F8();
    v7 = sub_221DAC1D8();
    (*(v4 + 8))(v2, v3);
    [v5 setLastCredentialRenewalRejectionDate_];

    goto LABEL_5;
  }

  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  v31 = *(v0 + 280);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_221D9C3DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 224);
  if (v3)
  {
    v5 = sub_221D9C574;
  }

  else
  {
    v5 = sub_221D9C4FC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_221D9C4FC()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221D9C574()
{
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[24];
  swift_willThrow();
  swift_beginAccess();
  v3(v5, v4, v6);
  v8 = v7;
  v9 = v1;
  v10 = sub_221DAC218();
  v11 = sub_221DAC558();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[42];
    v13 = v0[39];
    v14 = v0[24];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v13;
    *(v15 + 12) = 2112;
    v17 = v14;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_221D2F000, v10, v11, "ACDAsyncAuthenticationPluginManager renewCredentials failed to save account: %@ error: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v16, -1, -1);
    MEMORY[0x223DAA350](v15, -1, -1);
  }

  v21 = v0[41];
  v20 = v0[42];
  v22 = v0[40];
  v23 = v0[35];
  v25 = v0[31];
  v24 = v0[32];
  v26 = v0[29];

  v22(v25, v26);
  swift_willThrow();

  v27 = v0[1];
  v28 = v0[42];

  return v27();
}

uint64_t sub_221D9C780(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_221D9C84C(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8FD8];
  v3 = sub_221DAC3B8();
  if (!*(a1 + 16))
  {

LABEL_7:

    return a1;
  }

  v5 = sub_221D9295C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_221D963D4(*(a1 + 56) + 32 * v5, &v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v17[0];
  v18 = a1;
  v9 = sub_221DAC3B8();
  v11 = v10;

  v12 = sub_221DAC1A8();
  v13 = unserializeSecCertificates();

  if (v13)
  {
    v14 = sub_221DAC358();

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A20, &qword_221DB1D50);
    *&v19 = v14;
    sub_221D9F868(&v19, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_221D9EC10(v17, v9, v11, isUniquelyReferenced_nonNull_native);
    sub_221D962D4(v8, *(&v8 + 1));
  }

  else
  {
    sub_221D9E214(v9, v11, v17);
    sub_221D962D4(v8, *(&v8 + 1));

    sub_221D96328(v17, &qword_27CFE89F0, &unk_221DB1D00);
    return v18;
  }

  return a1;
}

void sub_221D9CA2C(void *a1)
{
  v3 = sub_221DAC238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = [a1 authenticationType];
  if (!v14)
  {
    v28 = sub_221DA02C0();
    swift_beginAccess();
    (*(v4 + 16))(v8, v28, v3);
    v29 = a1;
    v30 = sub_221DAC218();
    v31 = sub_221DAC548();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v32 = 136315138;
      v33 = [v29 accountType];

      if (!v33)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v55 = v3;
      v34 = [v33 identifier];

      if (v34)
      {
        v35 = sub_221DAC3B8();
        v37 = v36;
      }

      else
      {
        v37 = 0xE600000000000000;
        v35 = 0x296C6C756E28;
      }

      v51 = sub_221D909D4(v35, v37, &v57);

      *(v32 + 4) = v51;
      _os_log_impl(&dword_221D2F000, v30, v31, "Returning account's accountType as the authentication type: %s", v32, 0xCu);
      v52 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x223DAA350](v52, -1, -1);
      MEMORY[0x223DAA350](v32, -1, -1);

      (*(v4 + 8))(v8, v55);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    v53 = [v29 accountType];
    if (v53)
    {
      v54 = v53;
      v50 = [v53 identifier];

      if (!v50)
      {
        return;
      }

LABEL_27:
      sub_221DAC3B8();

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  v16 = sub_221DAC3B8();
  v18 = v17;

  v19 = *MEMORY[0x277CB90B8];
  if (v16 == sub_221DAC3B8() && v18 == v20)
  {

LABEL_15:
    v38 = v1;
    v39 = sub_221DA02C0();
    swift_beginAccess();
    (*(v4 + 16))(v13, v39, v3);
    v40 = a1;
    v41 = sub_221DAC218();
    v42 = sub_221DAC548();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_221D2F000, v41, v42, "Account %@ depends on parent for Authentication", v43, 0xCu);
      sub_221D96328(v44, &unk_27CFE8890, &unk_221DB1B70);
      MEMORY[0x223DAA350](v44, -1, -1);
      MEMORY[0x223DAA350](v43, -1, -1);
    }

    (*(v4 + 8))(v13, v3);
    v46 = [v40 parentAccount];
    if (v46)
    {
      v47 = v46;

      (*((*MEMORY[0x277D85000] & *v38) + 0xC0))(v47);

      return;
    }

    v48 = [v40 accountType];
    if (v48)
    {
      v49 = v48;

      v50 = [v49 identifier];

      if (!v50)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return;
  }

  v22 = sub_221DAC6C8();

  if (v22)
  {
    goto LABEL_15;
  }

  v23 = sub_221DA02C0();
  swift_beginAccess();
  (*(v4 + 16))(v11, v23, v3);

  v24 = sub_221DAC218();
  v25 = sub_221DAC548();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v57 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_221D909D4(v16, v18, &v57);
    _os_log_impl(&dword_221D2F000, v24, v25, "Returning account's authenticationType: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DAA350](v27, -1, -1);
    MEMORY[0x223DAA350](v26, -1, -1);
  }

  (*(v4 + 8))(v11, v3);
}

id sub_221D9D0D0(void *a1)
{
  v2 = [a1 authenticationType];
  if (!v2)
  {
    v12 = *MEMORY[0x277CB90B8];
    sub_221DAC3B8();
    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_221DAC3B8();
  v6 = v5;

  v7 = *MEMORY[0x277CB90B8];
  v8 = sub_221DAC3B8();
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v4 == v8 && v6 == v9)
  {
  }

  else
  {
    v11 = sub_221DAC6C8();

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14 = [a1 parentAccount];
  if (v14)
  {
    v15 = v14;
    v16 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();

    return v16;
  }

LABEL_11:

  return a1;
}

uint64_t sub_221D9D238(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_221DAC238();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v91 - v10;
  v12 = sub_221DAC208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v91 - v18;
  v93 = a1;
  v20 = [a1 identifier];
  if (!v20)
  {
    sub_221D9F878();
    v20 = sub_221DAC5A8();
  }

  v21 = [a2 accountWithIdentifier_];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 lastCredentialRenewalRejectionDate];
    if (v23)
    {
      v24 = v23;
      sub_221DAC1E8();

      sub_221DAC1F8();
      sub_221DAC1C8();
      v26 = v25;
      v27 = *(v13 + 8);
      v27(v17, v12);
      if (v26 < 86400.0)
      {
        v94 = v27;
        v28 = sub_221DA02C0();
        swift_beginAccess();
        v29 = v95;
        (*(v95 + 16))(v11, v28, v96);
        v30 = v20;
        v31 = sub_221DAC218();
        v32 = sub_221DAC568();

        LODWORD(v93) = v32;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v91 = v33;
          v92 = swift_slowAlloc();
          v97[0] = v92;
          *v33 = 136315138;
          v34 = v30;
          v35 = [v34 description];
          v36 = sub_221DAC3B8();
          v38 = v37;

          v39 = sub_221D909D4(v36, v38, v97);

          v40 = v91;
          *(v91 + 1) = v39;
          v41 = v40;
          _os_log_impl(&dword_221D2F000, v31, v93, "The user has declined an identical request to renew credentials for %s within the past 24 hours. Suppressing the password prompt and failing immediately.", v40, 0xCu);
          v42 = v92;
          __swift_destroy_boxed_opaque_existential_0(v92);
          MEMORY[0x223DAA350](v42, -1, -1);
          MEMORY[0x223DAA350](v41, -1, -1);

          (*(v95 + 8))(v11, v96);
        }

        else
        {

          (*(v29 + 8))(v11, v96);
        }

        (v94)(v19, v12);
        return 0;
      }

      v27(v19, v12);
    }
  }

  v43 = 0x296C6C756E28;
  v44 = [a2 client];
  if (v44 && (v45 = v44, v46 = [v44 bundleID], v45, v46))
  {
    v43 = sub_221DAC3B8();
    v48 = v47;
  }

  else
  {
    v48 = 0xE600000000000000;
  }

  v99 = v43;
  v100 = v48;
  MEMORY[0x223DA9120](46, 0xE100000000000000);
  v49 = v20;
  v50 = [v49 description];
  v51 = sub_221DAC3B8();
  v53 = v52;

  MEMORY[0x223DA9120](v51, v53);

  MEMORY[0x223DA9120](46, 0xE100000000000000);
  v54 = *(v3 + 112);
  v55 = sub_221DA035C([v54 _ac_DMIsMigrationNeeded]);
  MEMORY[0x223DA9120](v55);

  MEMORY[0x223DA9120](41, 0xE100000000000000);
  v57 = v99;
  v56 = v100;
  v58 = [v54 renewalRateLimiter];
  v59 = sub_221DAC388();
  v60 = [v58 reservePerformActionForKey_];

  if (v60)
  {

    return 1;
  }

  v92 = v49;
  v62 = sub_221DA02C0();
  swift_beginAccess();
  v63 = v94;
  v64 = v95;
  v65 = v96;
  (*(v95 + 16))(v94, v62, v96);
  swift_retain_n();

  v66 = v93;
  v67 = sub_221DAC218();
  v68 = sub_221DAC558();

  LODWORD(v93) = v68;
  if (!os_log_type_enabled(v67, v68))
  {

    (*(v64 + 8))(v63, v65);
    return 0;
  }

  v69 = v67;
  v70 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  v98 = v71;
  *v70 = 136446978;
  v72 = sub_221D909D4(v57, v56, &v98);

  *(v70 + 4) = v72;
  *(v70 + 12) = 2082;
  v73 = [v66 accountType];

  if (v73)
  {
    v74 = [v73 identifier];

    v75 = v94;
    if (v74)
    {
      v76 = sub_221DAC3B8();
      v78 = v77;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    v97[0] = v76;
    v97[1] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v79 = sub_221DAC3C8();
    v81 = sub_221D909D4(v79, v80, &v98);

    *(v70 + 14) = v81;
    *(v70 + 22) = 2082;
    v82 = [v54 renewalRateLimiter];
    v83 = [v82 maximum];

    v97[0] = v83;
    v84 = sub_221DAC6A8();
    v86 = sub_221D909D4(v84, v85, &v98);

    *(v70 + 24) = v86;
    *(v70 + 32) = 2082;
    v87 = [v54 renewalRateLimiter];
    [v87 timeInterval];

    v88 = sub_221DAC508();
    v90 = sub_221D909D4(v88, v89, &v98);

    *(v70 + 34) = v90;
    _os_log_impl(&dword_221D2F000, v69, v93, "%{public}s (%{public}s exceeded %{public}s renewals per %{public}s minutes -- rejecting", v70, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v71, -1, -1);
    MEMORY[0x223DAA350](v70, -1, -1);

    (*(v95 + 8))(v75, v96);
    return 0;
  }

  __break(1u);
  return result;
}

void ACDAsyncAuthenticationPluginManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ACDAsyncAuthenticationPluginManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ACDAsyncAuthenticationPluginManager.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ACDAsyncAuthenticationPluginManager.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221D9DC50(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_221D96B50;

  return v7();
}

uint64_t sub_221D9DD38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_221D967B4;

  return v8();
}

uint64_t sub_221D9DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_221D965DC(a3, v25 - v11, &qword_27CFE89D0, &qword_221DB1570);
  v13 = sub_221DAC4E8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_221D96328(v12, &qword_27CFE89D0, &qword_221DB1570);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_221DAC4D8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_221DAC4B8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_221DAC3D8() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);

    return v23;
  }

LABEL_8:
  sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_221D9E11C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221DA023C;

  return v7(a1);
}

double sub_221D9E214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_221D9295C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221D9EF48();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_221D9F868((*(v12 + 56) + 32 * v9), a3);
    sub_221D9E8B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_221D9E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_221D9295C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_221D9F0EC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_221D9EA60(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_221D9E350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
  v36 = a2;
  result = sub_221DAC678();
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
        sub_221D9F868(v25, v37);
      }

      else
      {
        sub_221D963D4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
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
      result = sub_221D9F868(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_221D9E608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
  v38 = a2;
  result = sub_221DAC678();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_221D9E8B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221DAC5E8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_221DAC718();

      sub_221DAC3F8();
      v14 = sub_221DAC728();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221D9EA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221DAC5E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_221DAC718();

      sub_221DAC3F8();
      v13 = sub_221DAC728();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_221D9EC10(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221D9295C(a2, a3);
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
      sub_221D9EF48();
      v11 = v19;
      goto LABEL_8;
    }

    sub_221D9E350(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_221D9295C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_221DAC6E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_221D9F868(a1, v23);
  }

  else
  {
    sub_221D9EEDC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_221D9ED60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221D9295C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221D9E608(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_221D9295C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_221DAC6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_221D9F0EC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_221D9EEDC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_221D9F868(a4, (a5[7] + 32 * a1));
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

void *sub_221D9EF48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
  v2 = *v0;
  v3 = sub_221DAC668();
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
        sub_221D963D4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_221D9F868(v25, (*(v4 + 56) + v22));
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

void *sub_221D9F0EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
  v2 = *v0;
  v3 = sub_221DAC668();
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

char *sub_221D9F25C(char *a1, int64_t a2, char a3)
{
  result = sub_221D9F27C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221D9F27C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
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

unint64_t sub_221D9F388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A58, &qword_221DB1EC8);
    v3 = sub_221DAC688();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_221D9295C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221D9F48C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
    v3 = sub_221DAC688();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_221D9295C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221D9F5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
    v3 = sub_221DAC688();
    v4 = a1 + 32;

    while (1)
    {
      sub_221D965DC(v4, &v13, &qword_27CFE89E0, &unk_221DB1CE8);
      v5 = v13;
      v6 = v14;
      result = sub_221D9295C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221D9F868(&v15, (v3[7] + 32 * result));
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221D9F708()
{
  result = qword_281303230[0];
  if (!qword_281303230[0])
  {
    type metadata accessor for ACDAsyncAuthenticationPluginManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281303230);
  }

  return result;
}

uint64_t sub_221D9F75C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v15 = *(v1 + 72);
  v10 = *(v1 + 88);
  v9 = *(v1 + 96);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_221D967B4;

  return sub_221D99A18(a1, v11, v12, v4, v5, v6, v7, v8);
}

_OWORD *sub_221D9F868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_221D9F878()
{
  result = qword_27CFE8A28;
  if (!qword_27CFE8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFE8A28);
  }

  return result;
}

uint64_t dispatch thunk of ACDAsyncAuthenticationPluginManager.renewCredential(for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_221D9FA38;

  return v12(a1, a2, a3);
}

uint64_t sub_221D9FA38(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void type metadata accessor for ACAccountCredentialRenewResult()
{
  if (!qword_2813031C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813031C8);
    }
  }
}

uint64_t sub_221D9FB8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D96B50;

  return sub_221D9BC84(v2, v3, v4, v5, v6);
}

uint64_t sub_221D9FC54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221D96B50;

  return sub_221D9DC50(v2, v3, v5);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_221D9FD54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221D96B50;

  return sub_221D9DD38(a1, v4, v5, v7);
}

uint64_t sub_221D9FE20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221D96B50;

  return sub_221D9E11C(a1, v5);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_221D9FF54(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_221D9AF34(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_221DA0038()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D96B50;

  return sub_221D9B3C0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_221DA00F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_221DA0174()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D967B4;

  return sub_221D9B3C0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_221DA024C()
{
  v0 = sub_221DAC238();
  __swift_allocate_value_buffer(v0, qword_281303988);
  __swift_project_value_buffer(v0, qword_281303988);
  return sub_221DAC228();
}

uint64_t sub_221DA02C0()
{
  if (qword_281303868 != -1)
  {
    swift_once();
  }

  v0 = sub_221DAC238();

  return __swift_project_value_buffer(v0, qword_281303988);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_221DA035C(char a1)
{
  if (a1)
  {
    return 5457241;
  }

  else
  {
    return 20302;
  }
}

uint64_t sub_221DA0380(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x6465646461;
    }

    if (a1 == 2)
    {
      return 0x6465696669646F6DLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return 0x646574656C6564;
      case 4:
        return 0x64656C696166;
      case 5:
        return 0x55676E696D726177;
    }
  }

  return 0x6E776F6E6B6E75;
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

void _ACDLazyArrayInitializeIfNecessary_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _ACDLazyArrayInitializeIfNecessary(ACDLazyArray * _Nonnull __strong)"];
  [v1 handleFailureInFunction:v0 file:@"ACDLazyArray.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

void _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE_cold_1(void *a1, const char *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 136315394;
  ClassName = object_getClassName(a1);
  v8 = 2080;
  Name = sel_getName(a2);
  _os_log_fault_impl(&dword_221D2F000, a3, OS_LOG_TYPE_FAULT, "Authentication plugin '%s' indicated failure but provided no error! (selector: %s)", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __getSimulateCrashSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CrashReporterSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ACDEventLedger.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}