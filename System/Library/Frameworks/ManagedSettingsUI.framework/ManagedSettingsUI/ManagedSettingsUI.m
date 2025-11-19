double sub_238DA5378@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238DAA4C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v9 = sub_238DAA584();
  __swift_project_value_buffer(v9, qword_27DF6DCF8);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_238DAA564();
  v11 = sub_238DAA614();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136642819;
    sub_238DA67A0(&qword_27DF6DC48, MEMORY[0x277CD4AB0]);
    v14 = sub_238DAA654();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_238DA61AC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_238DA4000, v10, v11, "Returning default configuration for application: %{sensitive}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE77670](v13, -1, -1);
    MEMORY[0x23EE77670](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  return result;
}

double sub_238DA5610@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238DAA4E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238DAA4C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v16 = sub_238DAA584();
  __swift_project_value_buffer(v16, qword_27DF6DCF8);
  (*(v12 + 16))(v15, a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  v17 = sub_238DAA564();
  v18 = sub_238DAA614();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v18;
    v20 = v19;
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136643075;
    sub_238DA67A0(&qword_27DF6DC48, MEMORY[0x277CD4AB0]);
    v32 = v17;
    v21 = sub_238DAA654();
    v23 = v22;
    (*(v12 + 8))(v15, v11);
    v24 = sub_238DA61AC(v21, v23, &v35);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2085;
    sub_238DA67A0(&qword_27DF6DC50, MEMORY[0x277CD4AD0]);
    v25 = sub_238DAA654();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_238DA61AC(v25, v27, &v35);

    *(v20 + 14) = v28;
    v29 = v32;
    _os_log_impl(&dword_238DA4000, v32, v33, "Returning default configuration for application: %{sensitive}s in category: %{sensitive}s", v20, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x23EE77670](v30, -1, -1);
    MEMORY[0x23EE77670](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

double sub_238DA5A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238DAA524();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v9 = sub_238DAA584();
  __swift_project_value_buffer(v9, qword_27DF6DCF8);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_238DAA564();
  v11 = sub_238DAA614();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136642819;
    sub_238DA67A0(&qword_27DF6DC58, MEMORY[0x277CD4B20]);
    v14 = sub_238DAA654();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_238DA61AC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_238DA4000, v10, v11, "Returning default configuration for web domain: %{sensitive}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE77670](v13, -1, -1);
    MEMORY[0x23EE77670](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  return result;
}

double sub_238DA5CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238DAA4E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238DAA524();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v16 = sub_238DAA584();
  __swift_project_value_buffer(v16, qword_27DF6DCF8);
  (*(v12 + 16))(v15, a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  v17 = sub_238DAA564();
  v18 = sub_238DAA614();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v18;
    v20 = v19;
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136643075;
    sub_238DA67A0(&qword_27DF6DC58, MEMORY[0x277CD4B20]);
    v32 = v17;
    v21 = sub_238DAA654();
    v23 = v22;
    (*(v12 + 8))(v15, v11);
    v24 = sub_238DA61AC(v21, v23, &v35);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2085;
    sub_238DA67A0(&qword_27DF6DC50, MEMORY[0x277CD4AD0]);
    v25 = sub_238DAA654();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_238DA61AC(v25, v27, &v35);

    *(v20 + 14) = v28;
    v29 = v32;
    _os_log_impl(&dword_238DA4000, v32, v33, "Returning default configuration for web domain: %{sensitive}s in category: %{sensitive}s", v20, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x23EE77670](v30, -1, -1);
    MEMORY[0x23EE77670](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

id ShieldConfigurationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShieldConfigurationDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShieldConfigurationDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShieldConfigurationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShieldConfigurationDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238DA61AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238DA6278(v11, 0, 0, 1, a1, a2);
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
    sub_238DA6908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_238DA6278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238DA6384(a5, a6);
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
    result = sub_238DAA644();
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

uint64_t sub_238DA6384(uint64_t a1, unint64_t a2)
{
  v4 = sub_238DA63D0(a1, a2);
  sub_238DA6500(&unk_284BA7AD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238DA63D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_238DA65EC(v5, 0);
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

  result = sub_238DAA644();
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
        v10 = sub_238DAA5C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238DA65EC(v10, 0);
        result = sub_238DAA634();
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

uint64_t sub_238DA6500(uint64_t result)
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

  result = sub_238DA6660(result, v12, 1, v3);
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

void *sub_238DA65EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC68, &unk_238DAAC90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238DA6660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC68, &unk_238DAAC90);
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

uint64_t sub_238DA67A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ShieldConfigurationDataSource.configuration(shielding:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

uint64_t dispatch thunk of ShieldConfigurationDataSource.configuration(shielding:in:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
}

uint64_t sub_238DA6908(uint64_t a1, uint64_t a2)
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

void sub_238DA69C4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_238DA6A10()
{
  v0 = sub_238DAA584();
  __swift_allocate_value_buffer(v0, qword_27DF6DCF8);
  __swift_project_value_buffer(v0, qword_27DF6DCF8);
  return sub_238DAA574();
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

__n128 ShieldConfiguration.init(backgroundBlurStyle:backgroundColor:icon:title:subtitle:primaryButtonLabel:primaryButtonBackgroundColor:secondaryButtonLabel:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v10 = *(a5 + 16);
  v11 = *(a6 + 16);
  v12 = *(a7 + 16);
  v13 = a10[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = *a5;
  *(a9 + 48) = v10;
  *(a9 + 56) = *a6;
  *(a9 + 72) = v11;
  *(a9 + 80) = *a7;
  *(a9 + 96) = v12;
  *(a9 + 104) = a8;
  result = *a10;
  *(a9 + 112) = *a10;
  *(a9 + 128) = v13;
  return result;
}

uint64_t ShieldConfiguration.Label.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ManagedSettingsUI::ShieldConfiguration::Label __swiftcall ShieldConfiguration.Label.init(text:color:)(Swift::String text, UIColor color)
{
  *v2 = text;
  *(v2 + 16) = color;
  result.text = text;
  result.color = color;
  return result;
}

uint64_t ShieldConfiguration.backgroundBlurStyle.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void *ShieldConfiguration.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ShieldConfiguration.icon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void ShieldConfiguration.title.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void sub_238DA6C00(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void ShieldConfiguration.subtitle.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void ShieldConfiguration.primaryButtonLabel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void *ShieldConfiguration.primaryButtonBackgroundColor.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void ShieldConfiguration.secondaryButtonLabel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_17ManagedSettingsUI19ShieldConfigurationV5LabelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_238DA6CF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_238DA6D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238DA6DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238DA6E30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_238DA6EA8(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_238DA6F5C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_238DA6FD8()
{
  v1 = *v0;
  sub_238DAA6B4();
  MEMORY[0x23EE772B0](v1);
  return sub_238DAA6D4();
}

uint64_t sub_238DA704C()
{
  v1 = *v0;
  sub_238DAA6B4();
  MEMORY[0x23EE772B0](v1);
  return sub_238DAA6D4();
}

void *sub_238DA70A0()
{
  v1 = OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource;
  v2 = *&v0[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 _principalObject])
    {
      type metadata accessor for ShieldConfigurationDataSource();
      v3 = swift_dynamicCastClass();
      if (!v3)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_238DA81AC(v4);
  }

  sub_238DA81BC(v2);
  return v3;
}

uint64_t sub_238DA739C(void *a1, int a2, int a3, void *a4, void *a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, id, void *))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_238DAA5A4();
  v14 = v13;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  v18 = sub_238DAA474();
  v20 = v19;

  v21 = sub_238DAA5A4();
  v23 = v22;

  _Block_copy(v11);
  a7(v12, v14, v18, v20, v21, v23, v17, v11);
  _Block_release(v11);
  _Block_release(v11);

  sub_238DA9F54(v18, v20);
}

NSData *sub_238DA74B4(double a1, double a2)
{
  v3 = v2;
  v6 = sub_238DAA554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(UIImage *)v3 size];
  if (v11 <= a1 && ([(UIImage *)v3 size], v12 <= a2))
  {
    result = UIImagePNGRepresentation(v3);
    if (result)
    {
      v36 = result;
      v37 = sub_238DAA474();

      return v37;
    }
  }

  else
  {
    v13 = [(UIImage *)v3 CGImage];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
      sub_238DAA544();
      sub_238DAA534();
      (*(v7 + 8))(v10, v6);
      v16 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v17 = sub_238DAA594();

      v18 = [v16 initWithString_];

      v19 = CGImageDestinationCreateWithData(v15, v18, 1uLL, 0);
      if (v19)
      {
        v20 = v19;
        if (a2 < a1)
        {
          a1 = a2;
        }

        v21 = [objc_opt_self() mainScreen];
        [v21 scale];
        v23 = v22;

        sub_238DAA170(0, &qword_27DF6DCC0, 0x277CBEAC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCC8, &qword_238DAAE90);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_238DAAE30;
        v25 = *MEMORY[0x277CD2D40];
        type metadata accessor for CFString(0);
        *(v24 + 56) = v26;
        *(v24 + 32) = v25;
        *(v24 + 88) = MEMORY[0x277D85048];
        *(v24 + 64) = a1 * v23;
        v27 = v25;
        v28 = sub_238DAA604();
        v29 = sub_238DAA5F4();

        CGImageDestinationAddImage(v20, v14, v29);
        if (CGImageDestinationFinalize(v20))
        {
          v30 = v15;
          v31 = sub_238DAA474();

          return v31;
        }

        if (qword_27DF6DC30 != -1)
        {
          swift_once();
        }

        v42 = sub_238DAA584();
        __swift_project_value_buffer(v42, qword_27DF6DCF8);
        v43 = sub_238DAA564();
        v44 = sub_238DAA624();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_238DA4000, v43, v44, "Failed to finalize image destination", v45, 2u);
          MEMORY[0x23EE77670](v45, -1, -1);
        }
      }

      else
      {
        if (qword_27DF6DC30 != -1)
        {
          swift_once();
        }

        v38 = sub_238DAA584();
        __swift_project_value_buffer(v38, qword_27DF6DCF8);
        v39 = sub_238DAA564();
        v40 = sub_238DAA624();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_238DA4000, v39, v40, "Failed to create image destination", v41, 2u);
          MEMORY[0x23EE77670](v41, -1, -1);
        }
      }
    }

    else
    {
      if (qword_27DF6DC30 != -1)
      {
        swift_once();
      }

      v33 = sub_238DAA584();
      __swift_project_value_buffer(v33, qword_27DF6DCF8);
      v15 = sub_238DAA564();
      v34 = sub_238DAA624();
      if (os_log_type_enabled(v15, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_238DA4000, v15, v34, "Failed to get CGImage from UImage", v35, 2u);
        MEMORY[0x23EE77670](v35, -1, -1);
      }
    }

    return 0;
  }

  return result;
}

id sub_238DA7A60(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v2 = sub_238DAA5D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShieldConfigurationExtensionContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInputItems_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_238DA7B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  *&v3[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v10 = sub_238DAA5D4();
  }

  else
  {
    v10 = 0;
  }

  sub_238DAA1B8(a2, v9, &qword_27DF6DC90, &qword_238DAAE78);
  v11 = sub_238DAA4A4();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_238DAA484();
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for ShieldConfigurationExtensionContext();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInputItems_contextUUID_, v10, v13);

  v16 = v15;
  sub_238DAA0A4(a2, &qword_27DF6DC90, &qword_238DAAE78);
  if (v16)
  {
  }

  return v16;
}

id sub_238DA7E34(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  *&v4[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v12 = sub_238DAA5D4();
  }

  else
  {
    v12 = 0;
  }

  sub_238DAA1B8(a3, v11, &qword_27DF6DC90, &qword_238DAAE78);
  v13 = sub_238DAA4A4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_238DAA484();
    (*(v14 + 8))(v11, v13);
  }

  v16 = type metadata accessor for ShieldConfigurationExtensionContext();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithInputItems_listenerEndpoint_contextUUID_, v12, a2, v15);

  v18 = v17;
  sub_238DAA0A4(a3, &qword_27DF6DC90, &qword_238DAAE78);
  if (v18)
  {
  }

  return v18;
}

id sub_238DA8144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShieldConfigurationExtensionContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_238DA81AC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_238DA81BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_238DA81CC(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_238DAA1B8(a1, v26, &qword_27DF6DCA8, &qword_238DAAE88);
  if (!v27)
  {
    sub_238DAA0A4(v26, &qword_27DF6DCA8, &qword_238DAAE88);
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  sub_238DAA220(v26, v28);
  v1 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v28, v29);
  v2 = sub_238DAA664();
  v26[0] = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v26];
  swift_unknownObjectRelease();
  v4 = v26[0];
  if (!v3)
  {
    v7 = v4;
    v8 = sub_238DAA454();

    swift_willThrow();
    if (qword_27DF6DC30 != -1)
    {
      swift_once();
    }

    v9 = sub_238DAA584();
    __swift_project_value_buffer(v9, qword_27DF6DCF8);
    sub_238DA6908(v28, v26);
    v10 = v8;
    v11 = sub_238DAA564();
    v12 = sub_238DAA624();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446466;
      sub_238DA6908(v26, &v24);
      v15 = sub_238DAA5B4();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(v26);
      v18 = sub_238DA61AC(v15, v17, &v25);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v24 = v8;
      v19 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCD0, &qword_238DAAE98);
      v20 = sub_238DAA5B4();
      v22 = sub_238DA61AC(v20, v21, &v25);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_238DA4000, v11, v12, "Failed to archive %{public}s: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE77670](v14, -1, -1);
      MEMORY[0x23EE77670](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    __swift_destroy_boxed_opaque_existential_0(v28);
    goto LABEL_11;
  }

  v5 = sub_238DAA474();

  __swift_destroy_boxed_opaque_existential_0(v28);
  result = v5;
LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DA8504(uint64_t *a1, uint64_t a2)
{
  v108 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v10 = a1[8];
  v9 = a1[9];
  v87 = a1[11];
  v88 = a1[10];
  v11 = a1[13];
  v99 = a1[12];
  v89 = a1[14];
  v96 = a1[15];
  v91 = a1[7];
  log = a1[16];
  if (v5)
  {
    v12 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
  }

  else
  {
    v12 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v5;
  v107 = v12;
  v13 = v5;
  v94 = sub_238DA81CC(&v104);
  v98 = v14;
  sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
  if (v3)
  {
    v15 = 0;
    v103 = 0xF000000000000000;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v30 = [objc_opt_self() effectWithStyle_];
    v107 = sub_238DAA170(0, &qword_27DF6DCB8, 0x277D75210);
    v104 = v30;
    v15 = sub_238DA81CC(&v104);
    v103 = v31;
    sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
    if (v4)
    {
LABEL_6:
      v101 = sub_238DA74B4(120.0, 120.0);
      v102 = v16;
      v95 = v15;
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  v101 = 0;
  v102 = 0xF000000000000000;
  v95 = v15;
  if (v6)
  {
LABEL_7:
    v107 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v104 = v8;
    v17 = v8;
    sub_238DA6C00(v7, v6, v8);
    v18 = sub_238DA81CC(&v104);
    v20 = v19;
    sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
    v21 = sub_238DAA594();
    v22 = 0;
    if (v20 >> 60 != 15)
    {
      v22 = sub_238DAA464();
      sub_238DAA118(v18, v20);
    }

    v90 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v21 colorData:v22];

    sub_238DAA12C(v7, v6, v8);
    v15 = v95;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v90 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_10:
  v107 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
  v104 = v9;
  v23 = v9;
  sub_238DA6C00(v91, v10, v9);
  v24 = sub_238DA81CC(&v104);
  v26 = v25;
  sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
  v27 = sub_238DAA594();
  v28 = 0;
  if (v26 >> 60 != 15)
  {
    v28 = sub_238DAA464();
    sub_238DAA118(v24, v26);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v27 colorData:v28];

  sub_238DAA12C(v91, v10, v9);
LABEL_17:
  if (v87)
  {
    v107 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v104 = v99;
    v32 = v99;
    sub_238DA6C00(v88, v87, v99);
    v33 = sub_238DA81CC(&v104);
    v35 = v34;
    sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
    v36 = sub_238DAA594();
    v37 = 0;
    if (v35 >> 60 != 15)
    {
      v37 = sub_238DAA464();
      sub_238DAA118(v33, v35);
    }

    v38 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v36 colorData:v37];

    sub_238DAA12C(v88, v87, v99);
    v39 = v96;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v38 = 0;
    v39 = v96;
    if (v11)
    {
LABEL_21:
      v40 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
      goto LABEL_24;
    }
  }

  v40 = 0;
  v105 = 0;
  v106 = 0;
LABEL_24:
  v104 = v11;
  v107 = v40;
  v41 = v11;
  v100 = sub_238DA81CC(&v104);
  v43 = v42;
  sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
  if (v39)
  {
    v107 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v104 = log;
    v44 = log;
    sub_238DA6C00(v89, v39, log);
    v45 = sub_238DA81CC(&v104);
    v47 = v46;
    sub_238DAA0A4(&v104, &qword_27DF6DCA8, &qword_238DAAE88);
    v48 = sub_238DAA594();
    v49 = 0;
    if (v47 >> 60 != 15)
    {
      v49 = sub_238DAA464();
      sub_238DAA118(v45, v47);
    }

    v50 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v48 colorData:v49];

    sub_238DAA12C(v89, v96, log);
  }

  else
  {
    v50 = 0;
  }

  sub_238DAA104(v15, v103);
  sub_238DAA104(v101, v102);
  v51 = v90;
  v52 = v29;
  v53 = v38;
  sub_238DAA104(v100, v43);
  v54 = v50;
  if (v98 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    sub_238DAA104(v94, v98);
    v55 = sub_238DAA464();
    sub_238DAA118(v94, v98);
  }

  if (v103 >> 60 == 15)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_238DAA464();
    sub_238DAA118(v15, v103);
  }

  if (v102 >> 60 == 15)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_238DAA464();
    sub_238DAA118(v101, v102);
  }

  if (v43 >> 60 == 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_238DAA464();
    sub_238DAA118(v100, v43);
  }

  v59 = [objc_allocWithZone(MEMORY[0x277D26580]) initWithBackgroundColorData:v55 backgroundEffectData:v56 iconData:v57 title:v51 subtitle:v52 primaryButtonLabel:v53 primaryButtonColorData:v58 secondaryButtonLabel:v54];

  v60 = objc_opt_self();
  v104 = 0;
  v61 = [v60 archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v104];
  v62 = v104;
  if (!v61)
  {
    v68 = v62;
    v69 = sub_238DAA454();

    swift_willThrow();
LABEL_62:
    v83 = v69;
    v84 = sub_238DAA444();
    (*(a2 + 16))(a2, 0, v84);

    sub_238DAA118(v95, v103);
    sub_238DAA118(v94, v98);
    sub_238DAA118(v101, v102);
    sub_238DAA118(v100, v43);

    goto LABEL_63;
  }

  v63 = sub_238DAA474();
  v65 = v64;

  v66 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v66 != 2)
    {
      goto LABEL_56;
    }

    v71 = *(v63 + 16);
    v70 = *(v63 + 24);
    v72 = __OFSUB__(v70, v71);
    v67 = v70 - v71;
    if (!v72)
    {
LABEL_49:
      if (v67 < 1000001)
      {
        goto LABEL_56;
      }

      if (qword_27DF6DC30 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_66;
    }
  }

  else
  {
    if (!v66)
    {
      goto LABEL_56;
    }

    LODWORD(v67) = HIDWORD(v63) - v63;
    if (!__OFSUB__(HIDWORD(v63), v63))
    {
      v67 = v67;
      goto LABEL_49;
    }

    __break(1u);
  }

  __break(1u);
LABEL_66:
  swift_once();
LABEL_51:
  v73 = sub_238DAA584();
  __swift_project_value_buffer(v73, qword_27DF6DCF8);
  sub_238DA9FFC(v63, v65);
  v74 = sub_238DAA564();
  v97 = sub_238DAA624();
  if (!os_log_type_enabled(v74, v97))
  {
    sub_238DA9F54(v63, v65);
LABEL_61:

    sub_238DA9FA8();
    v69 = swift_allocError();
    *v82 = 1;
    swift_willThrow();
    sub_238DA9F54(v63, v65);
    goto LABEL_62;
  }

  loga = v74;
  v75 = swift_slowAlloc();
  v76 = v75;
  *v75 = 134349056;
  if (v66 != 2)
  {
    LODWORD(v79) = HIDWORD(v63) - v63;
    if (__OFSUB__(HIDWORD(v63), v63))
    {
      __break(1u);
    }

    v79 = v79;
    goto LABEL_60;
  }

  v78 = *(v63 + 16);
  v77 = *(v63 + 24);
  v72 = __OFSUB__(v77, v78);
  v79 = v77 - v78;
  if (!v72)
  {
LABEL_60:
    *(v75 + 4) = v79;
    sub_238DA9F54(v63, v65);
    _os_log_impl(&dword_238DA4000, loga, v97, "Serialized shield configuration too large:  %{public}ld bytes", v76, 0xCu);
    v81 = v76;
    v74 = loga;
    MEMORY[0x23EE77670](v81, -1, -1);
    goto LABEL_61;
  }

  __break(1u);
LABEL_56:
  sub_238DA9FFC(v63, v65);
  v80 = sub_238DAA464();
  (*(a2 + 16))(a2, v80, 0);

  sub_238DAA118(v95, v103);
  sub_238DAA118(v94, v98);
  sub_238DAA118(v101, v102);
  sub_238DAA118(v100, v43);

  sub_238DA9F54(v63, v65);
  sub_238DA9F54(v63, v65);
LABEL_63:
  v85 = *MEMORY[0x277D85DE8];
}

void sub_238DA8F6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v35 = a5;
  v36 = a6;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE0, &qword_238DAAEA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v31 - v11;
  v13 = sub_238DAA4C4();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE8, &qword_238DAAEB0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v31 - v20;
  v38 = a8;
  _Block_copy(a8);
  v22 = sub_238DA70A0();
  if (v22)
  {
    v23 = v22;
    v31 = v13;
    sub_238DA9FFC(a3, v32);
    sub_238DAA4F4();
    v24 = v21;
    (*(v18 + 16))(v12, v21, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    v25 = v17;
    v26 = v38;

    sub_238DAA4B4();
    (*((*MEMORY[0x277D85000] & *v23) + 0x50))(v41, v16);
    v39[6] = v41[6];
    v39[7] = v41[7];
    v40 = v42;
    v39[2] = v41[2];
    v39[3] = v41[3];
    v39[4] = v41[4];
    v39[5] = v41[5];
    v39[0] = v41[0];
    v39[1] = v41[1];
    _Block_copy(v26);
    sub_238DA8504(v39, v26);
    _Block_release(v26);

    (*(v37 + 8))(v16, v31);
    (*(v18 + 8))(v24, v25);
    sub_238DAA050(v41);
    _Block_release(v26);
  }

  else
  {
    sub_238DA9FA8();
    v27 = swift_allocError();
    *v28 = 0;
    v29 = sub_238DAA444();
    v30 = v38;
    (*(v38 + 2))(v38, 0, v29);

    _Block_release(v30);
  }
}

void sub_238DA932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v49 = a7;
  v50 = a8;
  v45 = a5;
  v46 = a6;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v10 = sub_238DAA4E4();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC98, &qword_238DAAE80);
  v44 = *(v51 - 8);
  v14 = *(v44 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE0, &qword_238DAAEA8);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v38 - v22;
  v24 = sub_238DAA4C4();
  v47 = *(v24 - 8);
  v48 = v24;
  v25 = *(v47 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a10;
  _Block_copy(a10);
  v28 = sub_238DA70A0();
  if (v28)
  {
    v29 = v28;
    v39 = v17;
    v40 = v10;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE8, &qword_238DAAEB0);
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);

    sub_238DAA4B4();
    sub_238DA9FFC(v45, v46);
    sub_238DAA4F4();
    v31 = v44;
    v32 = v51;
    (*(v44 + 16))(v39, v19, v51);
    v33 = v53;
    v46 = v19;

    sub_238DAA4D4();
    (*((*MEMORY[0x277D85000] & *v29) + 0x58))(v56, v27, v13);
    v54[6] = v56[6];
    v54[7] = v56[7];
    v55 = v57;
    v54[2] = v56[2];
    v54[3] = v56[3];
    v54[4] = v56[4];
    v54[5] = v56[5];
    v54[0] = v56[0];
    v54[1] = v56[1];
    _Block_copy(v33);
    sub_238DA8504(v54, v33);
    _Block_release(v33);

    (*(v52 + 8))(v13, v40);
    (*(v31 + 8))(v46, v32);
    (*(v47 + 8))(v27, v48);
    sub_238DAA050(v56);
    _Block_release(v33);
  }

  else
  {
    sub_238DA9FA8();
    v34 = swift_allocError();
    *v35 = 0;
    v36 = sub_238DAA444();
    v37 = v53;
    (*(v53 + 2))(v53, 0, v36);

    _Block_release(v37);
  }
}

void sub_238DA97F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, const void *a6)
{
  v29[1] = a1;
  v29[2] = a2;
  v9 = sub_238DAA524();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCD8, &qword_238DAAEA0);
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v30);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  v32 = a6;
  _Block_copy(a6);
  v20 = sub_238DA70A0();
  if (v20)
  {
    v21 = v20;
    sub_238DA9FFC(a3, a4);
    v22 = v9;
    sub_238DAA4F4();
    v23 = v30;
    (*(v13 + 16))(v17, v19, v30);

    sub_238DAA504();
    (*((*MEMORY[0x277D85000] & *v21) + 0x60))(v35, v12);
    v33[6] = v35[6];
    v33[7] = v35[7];
    v34 = v36;
    v33[2] = v35[2];
    v33[3] = v35[3];
    v33[4] = v35[4];
    v33[5] = v35[5];
    v33[0] = v35[0];
    v33[1] = v35[1];
    v24 = v32;
    _Block_copy(v32);
    sub_238DA8504(v33, v24);
    _Block_release(v24);

    (*(v31 + 8))(v12, v22);
    (*(v13 + 8))(v19, v23);
    sub_238DAA050(v35);
    _Block_release(v24);
  }

  else
  {
    sub_238DA9FA8();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = sub_238DAA444();
    v28 = v32;
    (*(v32 + 2))(v32, 0, v27);

    _Block_release(v28);
  }
}

void sub_238DA9B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void))
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v9 = sub_238DAA4E4();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC98, &qword_238DAAE80);
  v34 = *(v41 - 8);
  v13 = *(v34 + 64);
  v14 = MEMORY[0x28223BE20](v41);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_238DAA524();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = *(v39 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a8);
  v23 = sub_238DA70A0();
  if (v23)
  {
    v24 = v23;
    v43 = v9;

    sub_238DAA514();
    v32 = a8;
    v33 = v18;
    v25 = v34;
    sub_238DA9FFC(v35, v36);
    sub_238DAA4F4();
    v26 = v18;
    v27 = v41;
    (*(v25 + 16))(v16, v26, v41);

    sub_238DAA4D4();
    (*((*MEMORY[0x277D85000] & *v24) + 0x68))(v46, v22, v12);
    v44[6] = v46[6];
    v44[7] = v46[7];
    v45 = v47;
    v44[2] = v46[2];
    v44[3] = v46[3];
    v44[4] = v46[4];
    v44[5] = v46[5];
    v44[0] = v46[0];
    v44[1] = v46[1];
    v28 = v32;
    _Block_copy(v32);
    sub_238DA8504(v44, v28);
    _Block_release(v28);

    (*(v42 + 8))(v12, v43);
    (*(v25 + 8))(v33, v27);
    (*(v39 + 8))(v22, v40);
    sub_238DAA050(v46);
    _Block_release(v28);
  }

  else
  {
    sub_238DA9FA8();
    v29 = swift_allocError();
    *v30 = 0;
    v31 = sub_238DAA444();
    (a8)[2](a8, 0, v31);

    _Block_release(a8);
  }
}

uint64_t sub_238DA9F54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238DA9FA8()
{
  result = qword_27DF6DCA0;
  if (!qword_27DF6DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6DCA0);
  }

  return result;
}

uint64_t sub_238DA9FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_238DAA0A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238DAA104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238DA9FFC(a1, a2);
  }

  return a1;
}

uint64_t sub_238DAA118(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238DA9F54(a1, a2);
  }

  return a1;
}

void sub_238DAA12C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_238DAA170(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_238DAA1B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_238DAA220(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShieldConfigurationExtensionContext.ExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShieldConfigurationExtensionContext.ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238DAA3F0()
{
  result = qword_27DF6DCF0;
  if (!qword_27DF6DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6DCF0);
  }

  return result;
}