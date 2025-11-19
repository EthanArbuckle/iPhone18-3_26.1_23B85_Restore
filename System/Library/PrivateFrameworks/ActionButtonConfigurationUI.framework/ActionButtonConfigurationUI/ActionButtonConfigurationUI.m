id static Preloader.shared.getter()
{
  if (qword_2812185F8 != -1)
  {
    swift_once();
  }

  v1 = qword_281218600;

  return v1;
}

id sub_23DDC72F8()
{
  result = [objc_allocWithZone(type metadata accessor for Preloader()) init];
  qword_281218600 = result;
  return result;
}

uint64_t sub_23DDC73C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v10 = a1;
    v11 = a2;
    *&v8 = MEMORY[0x277D85DD0];
    *(&v8 + 1) = 1107296256;
    *&v9 = sub_23DDE3E94;
    *(&v9 + 1) = &block_descriptor_5;
    v4 = _Block_copy(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = ABLoadResourcesWithCompletion();
  _Block_release(v4);
  if (v5)
  {
    sub_23DE05FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v6 = OBJC_IVAR___BCPreloader_resourceLoadToken;
  swift_beginAccess();
  sub_23DDC765C(&v8, v3 + v6);
  swift_endAccess();
  if (qword_2812186B8 != -1)
  {
    swift_once();
  }

  *&v8 = sub_23DDC785C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326580, &qword_23DE08AC8);
  sub_23DDC7D70();
  sub_23DE054F8();

  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DDC765C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326578, &qword_23DE08AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDC76CC()
{
  type metadata accessor for StaccatoStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_23DDC773C(MEMORY[0x277D84F90]);
  *(v0 + 24) = result;
  qword_281218858 = v0;
  return result;
}

unint64_t sub_23DDC7764(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_23DE06258();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

uint64_t sub_23DDC785C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326848, &qword_23DE08EA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326850, &qword_23DE08EA8);
  v25 = *(v23 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v20 = &v19 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326858, &unk_23DE08EB0);
  v24 = *(v22 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  *(v11 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326860, &unk_23DE09330);
  sub_23DDC7D28(&qword_2812185D8, &qword_27E326860, &unk_23DE09330);
  sub_23DE05488();
  sub_23DDC7D28(&qword_281218530, &qword_27E326848, &qword_23DE08EA0);
  v12 = sub_23DE05498();
  (*(v3 + 8))(v6, v2);
  v26 = v12;

  v19 = sub_23DE053C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326868, &unk_23DE08EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326870, &qword_23DE09300);
  sub_23DDC7D28(&qword_281218560, &qword_27E326868, &unk_23DE08EC0);
  sub_23DDC7D28(&qword_281218590, &qword_27E326870, &qword_23DE09300);
  v13 = v20;
  sub_23DE05548();

  sub_23DDC7D28(&qword_281218588, &qword_27E326850, &qword_23DE08EA8);
  v14 = v21;
  v15 = v23;
  sub_23DE054C8();
  (*(v25 + 8))(v13, v15);
  sub_23DDC7D28(&qword_2812185D0, &qword_27E326858, &unk_23DE08EB0);
  v16 = v22;
  v17 = sub_23DE05498();
  (*(v24 + 8))(v14, v16);
  return v17;
}

uint64_t sub_23DDC7CF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDC7D28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23DDC7D70()
{
  result = qword_281218550;
  if (!qword_281218550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E326580, &qword_23DE08AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218550);
  }

  return result;
}

uint64_t sub_23DDC7DD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v58 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326898, &qword_23DE08EF0);
  v71 = *(v73 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268A0, &qword_23DE08EF8);
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268A8, &qword_23DE08F00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v58 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268B0, &qword_23DE08F08);
  v61 = *(v59 - 8);
  v18 = *(v61 + 64);
  v19 = MEMORY[0x28223BE20](v59);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268B8, &qword_23DE08F10);
  v65 = *(v22 - 8);
  v66 = v22;
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v22);
  v64 = v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268C0, &qword_23DE08F18);
  v68 = *(v25 - 8);
  v69 = v25;
  v26 = *(v68 + 64);
  MEMORY[0x28223BE20](v25);
  v67 = v58 - v27;
  if (a1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a2 + 16);
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v29 = sub_23DE052B8();
  __swift_project_value_buffer(v29, qword_281218840);

  v30 = sub_23DE05298();
  v31 = sub_23DE05C38();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v58[1] = a2;
    v33 = v32;
    v34 = swift_slowAlloc();
    v77 = v34;
    *v33 = 136315138;
    if (v28)
    {
      v35 = 0x676E697375;
    }

    else
    {
      v35 = 0x2074756F68746977;
    }

    v58[0] = v13;
    if (v28)
    {
      v36 = 0xE500000000000000;
    }

    else
    {
      v36 = 0xED0000676E697375;
    }

    v37 = sub_23DDC8940(v35, v36, &v77);
    v13 = v58[0];

    *(v33 + 4) = v37;
    _os_log_impl(&dword_23DDC5000, v30, v31, "Loading actions %s cache", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x23EF014D0](v34, -1, -1);
    MEMORY[0x23EF014D0](v33, -1, -1);
  }

  v77 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268C8, &unk_23DE08F20);
  sub_23DE05458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
  v38 = v62;
  sub_23DE05438();
  (*(v14 + 8))(v17, v13);
  v39 = v59;
  v40 = v60;
  sub_23DE05FA8();
  v41 = *(v61 + 8);
  v41(v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
  sub_23DDC7D28(&qword_2812184B0, &qword_27E3268B0, &qword_23DE08F08);
  v42 = v64;
  sub_23DE055D8();
  v41(v40, v39);

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268D0, &qword_23DE08F30);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v77 = sub_23DE05478();
  sub_23DDC7D28(&qword_281218548, &qword_27E3268D0, &qword_23DE08F30);
  v46 = sub_23DE05498();

  v77 = v46;
  *(swift_allocObject() + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326868, &unk_23DE08EC0);
  sub_23DDC7D28(&qword_281218560, &qword_27E326868, &unk_23DE08EC0);
  v47 = v70;
  sub_23DE05528();

  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  v48 = sub_23DE05CB8();
  v77 = v48;
  v49 = sub_23DE05C78();
  v50 = v72;
  (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
  sub_23DDC7D28(&qword_2812185A0, &qword_27E326898, &qword_23DE08EF0);
  sub_23DDC9218(&qword_281218510, &qword_281218508, 0x277D85C78);
  v51 = v73;
  v52 = v74;
  sub_23DE05568();
  sub_23DDC925C(v50, &qword_27E3267C8, &qword_23DE092B0);

  (*(v71 + 8))(v47, v51);
  sub_23DDC7D28(&qword_2812185C0, &qword_27E3268B8, &qword_23DE08F10);
  sub_23DDC7D28(&qword_281218578, &qword_27E3268A0, &qword_23DE08EF8);
  v54 = v66;
  v53 = v67;
  v55 = v76;
  sub_23DE05508();
  (*(v75 + 8))(v52, v55);
  (*(v65 + 8))(v42, v54);
  swift_allocObject();
  swift_weakInit();
  sub_23DDC7D28(&qword_2812185A8, &qword_27E3268C0, &qword_23DE08F18);
  v56 = v69;
  sub_23DE054B8();

  return (*(v68 + 8))(v53, v56);
}

uint64_t sub_23DDC8894()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDC88CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23DDC8940(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DDC8B88(v11, 0, 0, 1, a1, a2);
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
    sub_23DDC8F3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_23DDC8A0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DDC8A58(a1, a2);
  sub_23DDC8D0C(&unk_285018130);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DDC8A58(uint64_t a1, unint64_t a2)
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

  v6 = sub_23DDC8C94(v5, 0);
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

  result = sub_23DE060F8();
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
        v10 = sub_23DE05AA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DDC8C94(v10, 0);
        result = sub_23DE060B8();
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

unint64_t sub_23DDC8B88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DDC8A0C(a5, a6);
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
    result = sub_23DE060F8();
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

void *sub_23DDC8C94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326E38, &unk_23DE09B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_23DDC8D0C(uint64_t result)
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

  result = sub_23DE018E4(result, v12, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23DDC8E50()
{
  v0 = sub_23DE052B8();
  __swift_allocate_value_buffer(v0, qword_281218840);
  __swift_project_value_buffer(v0, qword_281218840);

  return sub_23DE052A8();
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

uint64_t sub_23DDC8F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23DDC8FA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2812185E8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23DE052B8();
  __swift_project_value_buffer(v6, qword_281218840);
  v7 = sub_23DE05298();
  v8 = sub_23DE05C38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DDC5000, v7, v8, "Fetching actions...", v9, 2u);
    MEMORY[0x23EF014D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() standardClient];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23DDC9D6C;
  *(v11 + 24) = v4;
  v13[4] = sub_23DDC981C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23DDC930C;
  v13[3] = &block_descriptor_18;
  v12 = _Block_copy(v13);

  [v10 fetchAvailableStaccatoActions_];
  _Block_release(v12);
}

uint64_t sub_23DDC918C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDC91D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23DDC9218(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23DDC91D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DDC925C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DDC930C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
    sub_23DDC94A4();
    v4 = sub_23DE059F8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_23DDC93E4()
{
  v1 = *v0;
  sub_23DE05A48();
  sub_23DE063A8();
  sub_23DE05A88();
  v2 = sub_23DE063C8();

  return v2;
}

void sub_23DDC9458(uint64_t a1, unint64_t *a2)
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

unint64_t sub_23DDC94A4()
{
  result = qword_2812184F0;
  if (!qword_2812184F0)
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812184F0);
  }

  return result;
}

void sub_23DDC94FC(uint64_t a1, void *a2, void (*a3)(unint64_t, uint64_t))
{
  if (a1)
  {
    v4 = sub_23DDC98B4(a1);
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v5 = sub_23DE052B8();
    __swift_project_value_buffer(v5, qword_281218840);

    v6 = sub_23DE05298();
    v7 = sub_23DE05C38();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (v4 >> 62)
      {
        v9 = sub_23DE06038();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_23DDC5000, v6, v7, "Successfully fetched %ld actions", v8, 0xCu);
      MEMORY[0x23EF014D0](v8, -1, -1);
    }

    else
    {
    }

    a3(v4, 0);
  }

  else
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v11 = sub_23DE052B8();
    __swift_project_value_buffer(v11, qword_281218840);
    v12 = a2;
    v13 = sub_23DE05298();
    v14 = sub_23DE05C38();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_23DDC5000, v13, v14, "Failed to fetch actions: %@", v15, 0xCu);
      sub_23DDCF3FC(v16);
      MEMORY[0x23EF014D0](v16, -1, -1);
      MEMORY[0x23EF014D0](v15, -1, -1);
    }

    v20 = a2;
    if (!a2)
    {
      sub_23DDCF3A8();
      v20 = swift_allocError();
      *v21 = 0;
    }

    v22 = a2;
    a3(v20, 1);
  }
}

uint64_t sub_23DDC986C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DDC98B4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v37 = v6;
  v34 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11 >> 62;
    v13 = v11;
    if (v11 >> 62)
    {
      v14 = sub_23DE06038();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_23DE06038();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v14;
    v16 = __OFADD__(result, v14);
    v17 = result + v14;
    if (v16)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v15)
      {
LABEL_22:
        sub_23DE06038();
      }

      else
      {
        v18 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v19 = *(v18 + 16);
      }

      result = sub_23DE060E8();
      v38 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v15)
    {
      goto LABEL_22;
    }

    v18 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v38 = v9;
LABEL_24:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v13;
    if (v12)
    {
      v24 = v18;
      result = sub_23DE06038();
      v18 = v24;
      v22 = v13;
      v23 = result;
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v36 = v18;
      v41 = v22;
      if (v12)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_23DDC9C10(&qword_281218520, &qword_27E325CE8, &unk_23DE07BC8);
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
          v27 = v23;
          v28 = v25;
          v29 = sub_23DDC9C6C(v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
        swift_arrayInitWithCopy();
      }

      v9 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v16 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v16)
        {
          goto LABEL_44;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v9 = v38;
      v6 = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23DDC9C10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void (*sub_23DDC9C6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF00A60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23DDC9D64;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDC9CEC(uint64_t a1, id *a2)
{
  result = sub_23DE05A28();
  *a2 = 0;
  return result;
}

uint64_t sub_23DDC9D70(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_23DDC9DB8(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;

  v4 = sub_23DDEB71C(v3);

  v6 = sub_23DDEB71C(v5);

  sub_23DDEA6D8(v4, v6);
  LOBYTE(v2) = v7;

  return (v2 ^ 1) & 1;
}

uint64_t sub_23DDC9E5C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    *(result + 16) = v1;
  }

  return result;
}

uint64_t sub_23DDC9ED4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v67 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A0, &qword_23DE08E08);
  v4 = *(v71 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v62 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326798, &qword_23DE08E00);
  v7 = *(v69 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v69);
  v68 = &v62 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326878, &qword_23DE08ED0);
  v65 = *(v66 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v11;
  v12 = *a1;
  v82 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_46;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v62 = v7;
    v63 = v4;
    v4 = 0;
    v74 = v12 & 0xFFFFFFFFFFFFFF8;
    v75 = v12 & 0xC000000000000001;
    v73 = 0x800000023DE0B5E0;
    do
    {
      if (v75)
      {
        v15 = MEMORY[0x23EF00A60](v4, v12);
      }

      else
      {
        if (v4 >= *(v74 + 16))
        {
          goto LABEL_44;
        }

        v15 = *(v12 + 8 * v4 + 32);
      }

      v16 = v15;
      v17 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_43;
      }

      v7 = v13;
      v76 = @"Focus";
      v77 = 0xD000000000000031;
      v78 = v73;
      v79 = @"Camera";
      v80 = 0x746F685072616572;
      v81 = 0xE90000000000006FLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326880, &qword_23DE08ED8);
      v18 = sub_23DE06258();
      v19 = @"Focus";
      v20 = @"Camera";

      v21 = v77;
      v22 = v78;
      v23 = v76;

      v24 = sub_23DDCA864(v23);
      if (v25)
      {
        goto LABEL_41;
      }

      *(v18 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v24;
      *(v18[6] + 8 * v24) = v23;
      v26 = (v18[7] + 16 * v24);
      *v26 = v21;
      v26[1] = v22;
      v27 = v18[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_42;
      }

      v18[2] = v29;
      v30 = v80;
      v31 = v81;
      v32 = v79;

      v33 = sub_23DDCA864(v32);
      if (v34)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v13 = sub_23DE06038();
        goto LABEL_3;
      }

      *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
      *(v18[6] + 8 * v33) = v32;
      v35 = (v18[7] + 16 * v33);
      *v35 = v30;
      v35[1] = v31;
      v36 = v18[2];
      v28 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v28)
      {
        goto LABEL_42;
      }

      v18[2] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326790, &qword_23DE08DF8);
      swift_arrayDestroy();
      v38 = [v16 sectionIdentifier];
      v39 = v38;
      if (v18[2] && (sub_23DDCA864(v38), (v40 & 1) != 0))
      {

        sub_23DE06108();
        v41 = *(v82 + 16);
        sub_23DE06138();
        sub_23DE06148();
        sub_23DE06118();
      }

      else
      {
      }

      ++v4;
      v13 = v7;
    }

    while (v17 != v7);
    v42 = v82;
    v4 = v63;
    v7 = v62;
    v14 = MEMORY[0x277D84F90];
    if ((v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    v58 = v14;
    v59 = sub_23DE06038();
    v14 = v58;
    v12 = v59;
    if (!v59)
    {
      goto LABEL_48;
    }

LABEL_24:
    v82 = v14;
    result = sub_23DE06128();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v44 = 0;
      v45 = (v4 + 8);
      v74 = (v7 + 1);
      v75 = v42 & 0xC000000000000001;
      while (1)
      {
        if (v75)
        {
          v48 = MEMORY[0x23EF00A60](v44, v42);
        }

        else
        {
          v48 = *(v42 + 8 * v44 + 32);
        }

        v7 = v48;
        v49 = [v48 parameters];
        sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
        v50 = sub_23DE05AF8();

        if (v50 >> 62)
        {
          if (sub_23DE06038())
          {
LABEL_33:
            if ((v50 & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x23EF00A60](0, v50);
            }

            else
            {
              if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v51 = *(v50 + 32);
            }

            v52 = v51;

            v53 = swift_allocObject();
            *(v53 + 16) = 1;
            *(v53 + 24) = v72;
            *(v53 + 32) = v7;
            *(v53 + 40) = v52;

            v54 = v7;
            v55 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A8, &unk_23DE08E10);
            sub_23DDC7D28(&qword_2812185E0, &qword_27E3267A8, &unk_23DE08E10);
            v4 = v70;
            sub_23DE05488();
            sub_23DDC7D28(&qword_281218538, &qword_27E3267A0, &qword_23DE08E08);
            v56 = v71;
            sub_23DE05498();

            (*v45)(v4, v56);
            goto LABEL_27;
          }
        }

        else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
        v46 = v68;
        sub_23DE05468();
        sub_23DDC7D28(&qword_27E3267C0, &qword_27E326798, &qword_23DE08E00);
        v4 = v69;
        sub_23DE05498();

        (*v74)(v46, v4);
LABEL_27:
        ++v44;
        sub_23DE06108();
        v47 = *(v82 + 16);
        sub_23DE06138();
        sub_23DE06148();
        sub_23DE06118();
        if (v12 == v44)
        {

          v57 = v82;
          goto LABEL_49;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    if ((v42 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v12 = *(v42 + 16);
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_48:

    v57 = MEMORY[0x277D84F90];
LABEL_49:
    v82 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326888, &unk_23DE08EE0);
    sub_23DDC7D28(&qword_281218528, &qword_27E326888, &unk_23DE08EE0);
    v60 = v64;
    sub_23DE05AC8();

    sub_23DE053C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
    sub_23DDC7D28(&qword_281218580, &qword_27E326878, &qword_23DE08ED0);
    sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170);
    v61 = v66;
    sub_23DE055F8();
    return (*(v65 + 8))(v60, v61);
  }

  return result;
}

unint64_t sub_23DDCA874(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23DE05A48();
  sub_23DE063A8();
  sub_23DE05A88();
  v4 = sub_23DE063C8();

  return sub_23DDCA904(a1, v4);
}

unint64_t sub_23DDCA904(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23DE05A48();
      v9 = v8;
      if (v7 == sub_23DE05A48() && v9 == v10)
      {
        break;
      }

      v12 = sub_23DE06318();

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

uint64_t sub_23DDCAA14@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v117 = a2;
  v102 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267D0, &qword_23DE08E30);
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267D8, &qword_23DE08E38);
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13);
  v108 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267E0, &qword_23DE08E40);
  v114 = *(v16 - 8);
  v115 = v16;
  v17 = *(v114 + 64);
  MEMORY[0x28223BE20](v16);
  v113 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267E8, &qword_23DE08E48);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v97 = &v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267F0, &qword_23DE08E50);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v96 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v92 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267F8, &qword_23DE08E58);
  v105 = *(v30 - 8);
  v106 = v30;
  v31 = *(v105 + 64);
  MEMORY[0x28223BE20](v30);
  v99 = &v92 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326800, &qword_23DE08E60);
  v109 = *(v33 - 8);
  v110 = v33;
  v34 = *(v109 + 64);
  MEMORY[0x28223BE20](v33);
  v107 = &v92 - v35;
  if (a1)
  {
    v36 = 0;
  }

  else
  {
    v37 = v117;
    swift_beginAccess();
    v38 = *(v37 + 24);
    if (*(v38 + 16) && (v39 = sub_23DE01698(a3), (v40 & 1) != 0))
    {
      v36 = *(*(v38 + 56) + 8 * v39);
    }

    else
    {
      v36 = 0;
    }

    swift_endAccess();
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v41 = sub_23DE052B8();
  __swift_project_value_buffer(v41, qword_281218840);

  v42 = a3;
  v43 = sub_23DE05298();
  v44 = sub_23DE05C38();

  v45 = os_log_type_enabled(v43, v44);
  v98 = v42;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v94 = v29;
    v47 = v46;
    v48 = swift_slowAlloc();
    v118[0] = v48;
    *v47 = 136315394;
    v49 = [v42 sectionIdentifier];
    v95 = v23;
    v93 = v24;
    v50 = v49;
    v51 = sub_23DE05A48();
    v92 = v19;
    v52 = v51;
    v53 = v20;
    v54 = v36;
    v56 = v55;

    v57 = sub_23DDC8940(v52, v56, v118);
    v36 = v54;
    v20 = v53;

    *(v47 + 4) = v57;
    *(v47 + 12) = 2080;
    if (v36)
    {
      v58 = 0x676E697375;
    }

    else
    {
      v58 = 0x2074756F68746977;
    }

    if (v36)
    {
      v59 = 0xE500000000000000;
    }

    else
    {
      v59 = 0xED0000676E697375;
    }

    v60 = sub_23DDC8940(v58, v59, v118);
    v19 = v92;

    *(v47 + 14) = v60;
    v24 = v93;
    v23 = v95;
    _os_log_impl(&dword_23DDC5000, v43, v44, "Loading parameter values for %s %s cache", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF014D0](v48, -1, -1);
    v61 = v47;
    v29 = v94;
    MEMORY[0x23EF014D0](v61, -1, -1);
  }

  v118[0] = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326808, &qword_23DE08E68);
  v62 = v97;
  sub_23DE05458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
  v63 = v96;
  sub_23DE05438();
  (*(v20 + 8))(v62, v19);
  sub_23DE05FA8();
  v64 = *(v24 + 8);
  v64(v63, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
  sub_23DDC7D28(&qword_2812184B8, &qword_27E3267F0, &qword_23DE08E50);
  v65 = v36;
  v66 = v99;
  sub_23DE055D8();
  v64(v29, v23);

  v67 = swift_allocObject();
  v68 = v100;
  *(v67 + 16) = v100;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326810, &qword_23DE08E70);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = v68;
  v118[0] = sub_23DE05478();
  sub_23DDC7D28(&qword_281218540, &qword_27E326810, &qword_23DE08E70);
  v73 = sub_23DE05498();

  v118[0] = v73;
  *(swift_allocObject() + 16) = v72;
  v74 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326818, &qword_23DE08E78);
  sub_23DDC7D28(&qword_281218558, &qword_27E326818, &qword_23DE08E78);
  v75 = v101;
  sub_23DE054E8();

  *(swift_allocObject() + 16) = v65;
  sub_23DDC7D28(&qword_2812185B8, &qword_27E3267D0, &qword_23DE08E30);
  v76 = v108;
  v77 = v104;
  sub_23DE05528();

  (*(v103 + 8))(v75, v77);
  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  v78 = sub_23DE05CB8();
  v118[0] = v78;
  v79 = sub_23DE05C78();
  v80 = v116;
  (*(*(v79 - 8) + 56))(v116, 1, 1, v79);
  sub_23DDC7D28(&qword_281218598, &qword_27E3267D8, &qword_23DE08E38);
  sub_23DDC9218(&qword_281218510, &qword_281218508, 0x277D85C78);
  v81 = v112;
  v82 = v113;
  sub_23DE05568();
  sub_23DDC925C(v80, &qword_27E3267C8, &qword_23DE092B0);

  (*(v111 + 8))(v76, v81);
  sub_23DDC7D28(&qword_2812185C8, &qword_27E3267F8, &qword_23DE08E58);
  sub_23DDC7D28(&qword_281218570, &qword_27E3267E0, &qword_23DE08E40);
  v84 = v106;
  v83 = v107;
  v85 = v115;
  sub_23DE05508();
  (*(v114 + 8))(v82, v85);
  (*(v105 + 8))(v66, v84);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  v88 = v98;
  *(v87 + 16) = v86;
  *(v87 + 24) = v88;
  sub_23DDC7D28(&qword_2812185B0, &qword_27E326800, &qword_23DE08E60);
  v89 = v88;
  v90 = v110;
  sub_23DE054B8();

  return (*(v109 + 8))(v83, v90);
}

uint64_t sub_23DDCB770()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCB7A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23DDCB800(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_2812185E8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_23DE052B8();
  __swift_project_value_buffer(v8, qword_281218840);
  v9 = a3;
  v10 = sub_23DE05298();
  v11 = sub_23DE05C38();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    v14 = [v9 actionIdentifier];
    v15 = sub_23DE05A48();
    v17 = v16;

    v18 = sub_23DDC8940(v15, v17, v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_23DDC5000, v10, v11, "Fetching values for parameter %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EF014D0](v13, -1, -1);
    MEMORY[0x23EF014D0](v12, -1, -1);
  }

  v19 = [objc_opt_self() standardClient];
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = sub_23DDCF750;
  v20[4] = v6;
  v23[4] = sub_23DDCF39C;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_23DDCE9F8;
  v23[3] = &block_descriptor;
  v21 = _Block_copy(v23);
  v22 = v9;

  [v19 fetchAllValueSectionsForStaccatoParameter:v22 completion:v21];
  _Block_release(v21);
}

uint64_t sub_23DDCBAA4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

BOOL sub_23DDCBB20(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23DDCBBA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23DDCBBD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23DE05A48();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23DDCBBFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DDCBC1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23DDCBC44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DDCBCE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CF8, &unk_23DE07C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DDCBD9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CF8, &unk_23DE07C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DDCBE58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE05698();
  *a1 = result;
  return result;
}

uint64_t sub_23DDCBE84(uint64_t *a1)
{
  v1 = *a1;

  return sub_23DE056A8();
}

void sub_23DDCBEDC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_23DE05A18();
  [v4 setIdentifier_];
}

uint64_t sub_23DDCBF40()
{
  v1 = (type metadata accessor for GroupedParameterConfigurationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DE05658();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_23DDCC098()
{
  v1 = *(v0 + 24);

  MEMORY[0x23EF01590](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC0D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DDCC0E8()
{
  v1 = *(v0 + 24);

  MEMORY[0x23EF01590](v0 + 32);
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DDCC130()
{
  MEMORY[0x23EF01590](v0 + 16);
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC170()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC1A8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC1E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC220()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DDCC2D8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC33C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DDCC384()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC3BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC3FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC444()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC47C()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC4B8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC4F8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC530()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC578()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC5B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC5F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC630()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC668()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC6A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC6DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC760()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC79C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DDCC7F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC87C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC8B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC8EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 48);

  v7 = sub_23DE051E8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DDCCA14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DDCCA5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCCA9C()
{
  v1 = *(v0 + 24);

  MEMORY[0x23EF01590](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCCB20()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCCB58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCCB90()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DDCCD14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DDCCD34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23DDCCD9C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0xC014000000000000;
  if (v0)
  {
    v2 = 0;
  }

  qword_27E326ED8 = v2;
  byte_27E326EE0 = v0 & 1;
  return result;
}

uint64_t sub_23DDCCE0C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0x4014000000000000;
  if (v0)
  {
    v2 = 0;
  }

  qword_27E326EE8 = v2;
  byte_27E326EF0 = v0 & 1;
  return result;
}

uint64_t sub_23DDCCE7C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0x4018000000000000;
  if ((v0 & 1) == 0)
  {
    v2 = 0;
  }

  qword_27E326EF8 = v2;
  byte_27E326F00 = (v0 & 1) == 0;
  return result;
}

void sub_23DDCCEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_23DE05A18();
  v13 = [v11 initWithString_];

  v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v15 = v14;
  if ((a4 & 1) == 0)
  {
    [v14 setLineSpacing_];
  }

  if (a6)
  {
    goto LABEL_7;
  }

  v16 = [v6 font];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = *&a5;
  [v16 pointSize];
  v20 = v19;

  [v15 setMinimumLineHeight_];
  v21 = [v6 font];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 pointSize];
  v24 = v23;

  [v15 setMaximumLineHeight_];
LABEL_7:
  [v15 setAlignment_];
  [v15 setLineBreakStrategy_];
  v25 = *MEMORY[0x277D74118];
  v26 = v15;
  v27 = v13;
  [v27 addAttribute:v25 value:v26 range:{0, objc_msgSend(v27, sel_length)}];

  [v6 setAttributedText_];
}

uint64_t sub_23DDCD10C(uint64_t a1, id *a2)
{
  v3 = sub_23DE05A38();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DDCD18C@<X0>(uint64_t *a1@<X8>)
{
  sub_23DE05A48();
  v2 = sub_23DE05A18();

  *a1 = v2;
  return result;
}

void *sub_23DDCD1F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23DDCD224@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23DDCD2D4()
{
  v1 = *v0;
  v2 = sub_23DE05A48();
  v3 = MEMORY[0x23EF00440](v2);

  return v3;
}

uint64_t sub_23DDCD310()
{
  v1 = *v0;
  sub_23DE05A48();
  sub_23DE05A88();
}

uint64_t sub_23DDCD364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23DDCDE70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23DDCD3A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23DE05A48();
  v6 = v5;
  if (v4 == sub_23DE05A48() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23DE06318();
  }

  return v9 & 1;
}

uint64_t sub_23DDCD42C(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_2812184F0, type metadata accessor for WFStaccatoActionSectionIdentifier);
  v3 = sub_23DDC986C(&qword_27E325C18, type metadata accessor for WFStaccatoActionSectionIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DDCD578(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_27E325C60, type metadata accessor for Key);
  v3 = sub_23DDC986C(&qword_27E325C68, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DDCD634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23DE05A18();

  *a2 = v5;
  return result;
}

uint64_t sub_23DDCD67C(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter);
  v3 = sub_23DDC986C(&unk_27E325C08, type metadata accessor for ABDeviceSceneParameter);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_23DDCD930(uint64_t a1)
{
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v2];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v7 = [v6 scaledFontForFont_];

  return v7;
}

void *sub_23DDCDA5C(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = v2;
  if (a1)
  {
    v16 = &type metadata for Features;
    v4 = sub_23DDCDEA8();
    v17 = v4;
    LOBYTE(v15[0]) = 0;
    v5 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    [v3 setTextAlignment_];
    v16 = &type metadata for Features;
    v17 = v4;
    LOBYTE(v15[0]) = 1;
    v7 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = MEMORY[0x277D76A20];
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x277D76A08];
    }

    v9 = *v8;
    v10 = MEMORY[0x277D743F8];
    if ((v7 & 1) == 0)
    {
      v10 = MEMORY[0x277D74420];
    }
  }

  else
  {
    [v2 setTextAlignment_];
    v9 = *MEMORY[0x277D76A08];
    v10 = MEMORY[0x277D74420];
  }

  v11 = *v10;
  v12 = sub_23DDCD930(v9);
  [v3 setFont_];

  v13 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setLineBreakMode_];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  return v3;
}

void *sub_23DDCDC44(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = v2;
  if (a1)
  {
    v18 = &type metadata for Features;
    v4 = sub_23DDCDEA8();
    v19 = v4;
    LOBYTE(v17[0]) = 0;
    v5 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    [v3 setTextAlignment_];
    v18 = &type metadata for Features;
    v19 = v4;
    LOBYTE(v17[0]) = 1;
    v7 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v17);
    v8 = MEMORY[0x277D76A20];
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x277D769D0];
    }

    v9 = *v8;
    v10 = MEMORY[0x277D74418];
    if ((v7 & 1) == 0)
    {
      v10 = MEMORY[0x277D74410];
    }
  }

  else
  {
    [v2 setTextAlignment_];
    v9 = *MEMORY[0x277D769D0];
    v10 = MEMORY[0x277D74410];
  }

  v11 = *v10;
  v12 = sub_23DDCD930(v9);
  [v3 setFont_];

  v18 = &type metadata for Features;
  v19 = sub_23DDCDEA8();
  LOBYTE(v17[0]) = 1;
  LOBYTE(v12) = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v12)
  {
    v13 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.6];
  }

  v14 = v13;
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v15 = [v3 layer];
  [v15 setCompositingFilter_];

  return v3;
}

uint64_t sub_23DDCDE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_23DDCDEA8()
{
  result = qword_27E325C20;
  if (!qword_27E325C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325C20);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_23DDCE0C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DDCE11C()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E326F08 = result;
  return result;
}

uint64_t sub_23DDCE174()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

uint64_t sub_23DDCE1BC()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

unint64_t sub_23DDCE210(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EF00A60](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject values];
      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      v8 = sub_23DE05AF8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_23DE06038();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_23DE06038();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_23DE060E8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_23DDC9C10(&qword_281218518, &qword_27E325CD8, &qword_23DE07BB8);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CD8, &qword_23DE07BB8);
              v20 = sub_23DDF692C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_23DE06038();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

void sub_23DDCE590(unint64_t a1, void *a2, void *a3, void (*a4)(unint64_t, void))
{
  if (a1)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v7 = sub_23DE052B8();
    __swift_project_value_buffer(v7, qword_281218840);
    swift_bridgeObjectRetain_n();
    v8 = a3;
    v9 = sub_23DE05298();
    v10 = sub_23DE05C38();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v41 = v12;
      *v11 = 134218242;
      v13 = sub_23DDCE210(a1);
      if (v13 >> 62)
      {
        v14 = sub_23DE06038();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v14;

      *(v11 + 12) = 2080;
      v15 = [v8 actionIdentifier];
      v16 = sub_23DE05A48();
      v18 = v17;

      v19 = sub_23DDC8940(v16, v18, &v41);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_23DDC5000, v9, v10, "Successfully fetched %ld parameter values for %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x23EF014D0](v12, -1, -1);
      MEMORY[0x23EF014D0](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    a4(a1, 0);
  }

  else
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v21 = sub_23DE052B8();
    __swift_project_value_buffer(v21, qword_281218840);
    v22 = a3;
    v23 = a2;
    v24 = sub_23DE05298();
    v25 = sub_23DE05C38();

    if (os_log_type_enabled(v24, v25))
    {
      v40 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v26 = 136315394;
      v29 = [v22 actionIdentifier];
      v30 = sub_23DE05A48();
      v32 = v31;

      v33 = sub_23DDC8940(v30, v32, &v41);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      if (a2)
      {
        v34 = a2;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      a4 = v40;
      *(v26 + 14) = v35;
      *v27 = v36;
      _os_log_impl(&dword_23DDC5000, v24, v25, "Failed to fetch parameter values for %s: %@", v26, 0x16u);
      sub_23DDCF3FC(v27);
      MEMORY[0x23EF014D0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EF014D0](v28, -1, -1);
      MEMORY[0x23EF014D0](v26, -1, -1);
    }

    v37 = a2;
    if (!a2)
    {
      sub_23DDCF3A8();
      v37 = swift_allocError();
      *v38 = 1;
    }

    v39 = a2;
    a4(v37, 1);
  }
}

uint64_t sub_23DDCE9F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_23DDC91D0(0, &qword_2812184C0, 0x277D7A130);
    v4 = sub_23DE05AF8();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_23DDCEA9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2812185E8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23DE052B8();
  __swift_project_value_buffer(v6, qword_281218840);
  v7 = sub_23DE05298();
  v8 = sub_23DE05C38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DDC5000, v7, v8, "Fetching default action...", v9, 2u);
    MEMORY[0x23EF014D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() standardClient];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23DDCF750;
  *(v11 + 24) = v4;
  v13[4] = sub_23DDCF580;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23DDCF020;
  v13[3] = &block_descriptor_27;
  v12 = _Block_copy(v13);

  [v10 defaultStaccatoActionWithCompletion_];
  _Block_release(v12);
}

void sub_23DDCEC80(void *a1, void *a2, void (*a3)(id, uint64_t))
{
  if (a1 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    if (!a2)
    {
      v33 = v6;
      v7 = qword_2812185E8;
      v8 = a1;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = sub_23DE052B8();
      __swift_project_value_buffer(v9, qword_281218840);
      v10 = v8;
      v11 = sub_23DE05298();
      v12 = sub_23DE05C38();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        v15 = [v33 sectionIdentifier];
        v16 = sub_23DE05A48();
        v18 = v17;

        v19 = sub_23DDC8940(v16, v18, &v35);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_23DDC5000, v11, v12, "Fetched %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x23EF014D0](v14, -1, -1);
        MEMORY[0x23EF014D0](v13, -1, -1);
      }

      v34 = v10;
      a3(v33, 0);

      v20 = v34;

      goto LABEL_10;
    }
  }

  else if (!a2)
  {
    sub_23DDCF3A8();
    v21 = swift_allocError();
    *v22 = 2;
    goto LABEL_14;
  }

  v21 = a2;
LABEL_14:
  v23 = a2;
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v24 = sub_23DE052B8();
  __swift_project_value_buffer(v24, qword_281218840);
  v25 = v21;
  v26 = sub_23DE05298();
  v27 = sub_23DE05C38();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_23DDC5000, v26, v27, "Failed to fetch default action %@", v28, 0xCu);
    sub_23DDCF3FC(v29);
    MEMORY[0x23EF014D0](v29, -1, -1);
    MEMORY[0x23EF014D0](v28, -1, -1);
  }

  v32 = v21;
  a3(v21, 1);

  v20 = v21;

LABEL_10:
}

void sub_23DDCF020(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_23DDCF0AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
  v11 = sub_23DE059E8();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_23DDCF4F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DDCF020;
  aBlock[3] = &block_descriptor_9;
  v14 = _Block_copy(aBlock);

  [a2 configuredStaccatoActionFromTemplate:a3 valuesByParameterKey:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_23DDCF2B0(void *a1, id a2)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
    return sub_23DE05B78();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D7A388] code:0 userInfo:0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
    return sub_23DE05B68();
  }
}

unint64_t sub_23DDCF3A8()
{
  result = qword_27E325CD0;
  if (!qword_27E325CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325CD0);
  }

  return result;
}

uint64_t sub_23DDCF3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E325FC0, &qword_23DE07BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_23DDCF4F4(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0) - 8) + 80);

  return sub_23DDCF2B0(a1, a2);
}

uint64_t _s6ErrorsOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6ErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DDCF6EC()
{
  result = qword_27E325CF0;
  if (!qword_27E325CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325CF0);
  }

  return result;
}

uint64_t type metadata accessor for GroupedParameterConfigurationView()
{
  result = qword_27E325D00;
  if (!qword_27E325D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DDCF7C8()
{
  sub_23DDCF88C();
  if (v0 <= 0x3F)
  {
    sub_23DDCF8F4();
    if (v1 <= 0x3F)
    {
      sub_23DDCF958();
      if (v2 <= 0x3F)
      {
        sub_23DDCF9A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DDCF88C()
{
  if (!qword_27E325D10)
  {
    sub_23DDC91D0(255, &qword_2812184C0, 0x277D7A130);
    v0 = sub_23DE05B48();
    if (!v1)
    {
      atomic_store(v0, &qword_27E325D10);
    }
  }
}

void sub_23DDCF8F4()
{
  if (!qword_27E325D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D20, qword_23DE07CC8);
    v0 = sub_23DE05918();
    if (!v1)
    {
      atomic_store(v0, &qword_27E325D18);
    }
  }
}

unint64_t sub_23DDCF958()
{
  result = qword_27E325D28;
  if (!qword_27E325D28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E325D28);
  }

  return result;
}

void sub_23DDCF9A8()
{
  if (!qword_27E325D30)
  {
    sub_23DE05658();
    v0 = sub_23DE05638();
    if (!v1)
    {
      atomic_store(v0, &qword_27E325D30);
    }
  }
}

uint64_t sub_23DDCFA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DE056F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for GroupedParameterConfigurationView();
  sub_23DDD2850(v1 + *(v11 + 32), v10, &qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23DE05658();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_23DE05C28();
    v15 = sub_23DE05768();
    sub_23DE05288();

    sub_23DE056E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23DDCFC24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_23DE05708();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D48, &qword_23DE07D30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D40, &qword_23DE07D28);
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24);
  v15 = &v24 - v14;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D68, &qword_23DE07D40);
  sub_23DDD2124(&qword_27E325D70, &qword_27E325D68, &qword_23DE07D40, sub_23DDD1E88);
  sub_23DE057A8();
  v16 = a1[1];
  v29 = *a1;
  v30 = v16;
  v17 = sub_23DDC7D28(&qword_27E325D50, &qword_27E325D48, &qword_23DE07D30);
  v18 = sub_23DDD1E2C();
  v19 = MEMORY[0x277D837D0];
  sub_23DE05838();
  (*(v8 + 8))(v11, v7);
  v21 = v25;
  v20 = v26;
  (*(v25 + 104))(v6, *MEMORY[0x277CDDDC0], v26);
  v29 = v7;
  v30 = v19;
  v31 = v17;
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  v22 = v24;
  sub_23DE05858();
  (*(v21 + 8))(v6, v20);
  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_23DDCFF80(uint64_t a1)
{
  v2 = type metadata accessor for GroupedParameterConfigurationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + 16);
  swift_getKeyPath();
  sub_23DDD2264(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23DDD22C8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E10, &unk_23DE091F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D80, &qword_23DE07D48);
  sub_23DDC7D28(&qword_27E325E18, &qword_27E325E10, &unk_23DE091F0);
  sub_23DDD2344();
  sub_23DDD1E88();
  return sub_23DE05938();
}

void sub_23DDD0140(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23DE05A48();
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

void sub_23DDD01A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_23DE05A18();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTitle_];
}

uint64_t sub_23DDD0218@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v27 = sub_23DE05618();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D88, &qword_23DE07D50);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v25 - v11;
  v13 = *a1;
  v29 = a2;
  v30 = v13;
  v14 = sub_23DE05718();
  v33 = 1;
  sub_23DDD0820(v13, &v34);
  v42 = v35[3];
  v43 = v35[4];
  v44 = v35[5];
  v45 = *&v35[6];
  v38 = v34;
  v39 = v35[0];
  v40 = v35[1];
  v41 = v35[2];
  v46[0] = v34;
  v46[1] = v35[0];
  v46[2] = v35[1];
  v46[3] = v35[2];
  v46[4] = v35[3];
  v46[5] = v35[4];
  v46[6] = v35[5];
  v47 = *&v35[6];
  sub_23DDD2850(&v38, &v31, &qword_27E325E28, &qword_23DE07DD8);
  sub_23DDC925C(v46, &qword_27E325E28, &qword_23DE07DD8);
  *(&v32[4] + 7) = v42;
  *(&v32[5] + 7) = v43;
  *(&v32[6] + 7) = v44;
  *(v32 + 7) = v38;
  *(&v32[1] + 7) = v39;
  *(&v32[2] + 7) = v40;
  *(&v32[7] + 7) = v45;
  *(&v32[3] + 7) = v41;
  v15 = v33;
  v16 = sub_23DE05898();
  KeyPath = swift_getKeyPath();
  *(&v35[4] + 1) = v32[4];
  *(&v35[5] + 1) = v32[5];
  *(&v35[6] + 1) = v32[6];
  v35[7] = *(&v32[6] + 15);
  *(v35 + 1) = v32[0];
  *(&v35[1] + 1) = v32[1];
  *(&v35[2] + 1) = v32[2];
  v34 = v14;
  LOBYTE(v35[0]) = v15;
  *(&v35[3] + 1) = v32[3];
  v36 = KeyPath;
  v37 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DA0, &qword_23DE07D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DD0, &qword_23DE07D70);
  sub_23DDD2040();
  sub_23DDD2124(&qword_27E325DC8, &qword_27E325DD0, &qword_23DE07D70, sub_23DDD21A0);
  sub_23DE05948();
  v18 = v27;
  (*(v5 + 104))(v8, *MEMORY[0x277CDF350], v27);
  sub_23DDD1F7C();
  v19 = v28;
  v20 = v26;
  sub_23DE05848();
  (*(v5 + 8))(v8, v18);
  (*(v9 + 8))(v12, v20);
  v21 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D80, &qword_23DE07D48) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E00, &unk_23DE07D88) + 28);
  v23 = sub_23DE057D8();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  result = swift_getKeyPath();
  *v21 = result;
  return result;
}

uint64_t sub_23DDD0624(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [a2 values];
  sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
  v8 = sub_23DE05AF8();

  v12[1] = v8;
  swift_getKeyPath();
  sub_23DDD2264(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23DDD22C8(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CD8, &qword_23DE07BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DE0, &qword_23DE07D78);
  sub_23DDC7D28(&qword_27E325E40, &qword_27E325CD8, &qword_23DE07BB8);
  sub_23DDD21A0();
  return sub_23DE05938();
}

uint64_t sub_23DDD0820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  v5 = 0;
  if (v4 && (v6 = v4, v7 = [v4 platformImage], v6, v7))
  {
    v8 = v7;
    v48 = sub_23DE058A8();
    sub_23DE05968();
    v5 = v9;
    v11 = v10;
    v12 = sub_23DE05778();
    sub_23DE05608();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [a1 title];
  }

  else
  {
    v48 = 0;
    v11 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v21 = [a1 title];
  }

  v22 = v21;
  if (v22)
  {
    v23 = v22;
    sub_23DE05A48();
  }

  sub_23DDD1E2C();
  v24 = sub_23DE057F8();
  v26 = v25;
  v28 = v27;
  sub_23DE05798();
  v29 = sub_23DE057E8();
  v31 = v30;
  v33 = v32;

  sub_23DDD2470(v24, v26, v28 & 1);

  sub_23DE05788();
  v34 = sub_23DE057B8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23DDD2470(v29, v31, v33 & 1);

  *&v49 = v48;
  *(&v49 + 1) = v46;
  *&v50 = v46;
  *(&v50 + 1) = v5;
  *&v51 = v11;
  *(&v51 + 1) = v47;
  *&v52 = v14;
  *(&v52 + 1) = v16;
  *&v53 = v18;
  *(&v53 + 1) = v20;
  v54 = 0;
  LOBYTE(v60) = 0;
  v58 = v52;
  v59 = v53;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  v41 = v50;
  v42 = v51;
  *a2 = v49;
  *(a2 + 16) = v41;
  v43 = v59;
  v44 = v60;
  *(a2 + 48) = v58;
  *(a2 + 64) = v43;
  *(a2 + 32) = v42;
  *(a2 + 80) = v44;
  *(a2 + 88) = v34;
  *(a2 + 96) = v36;
  *(a2 + 104) = v38 & 1;
  *(a2 + 112) = v40;
  sub_23DDD2850(&v49, v61, &qword_27E325E38, qword_23DE07E48);
  sub_23DDD2480(v34, v36, v38 & 1);

  sub_23DDD2470(v34, v36, v38 & 1);

  v61[0] = v48;
  v61[1] = v46;
  v61[2] = v46;
  v61[3] = v5;
  v61[4] = v11;
  v61[5] = v47;
  v61[6] = v14;
  v61[7] = v16;
  v61[8] = v18;
  v61[9] = v20;
  v62 = 0;
  return sub_23DDC925C(v61, &qword_27E325E38, qword_23DE07E48);
}

void sub_23DDD0B3C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_23DE05A48();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_23DDD0B94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GroupedParameterConfigurationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_23DDD2264(a2, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_23DDD22C8(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v17 = v9;
  v18 = a2;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E48, &qword_23DE07E90);
  sub_23DDC7D28(&qword_27E325E50, &qword_27E325E48, &qword_23DE07E90);
  sub_23DE05928();
  v13 = sub_23DE05728();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DE0, &qword_23DE07D78);
  v15 = (a3 + *(result + 36));
  *v15 = v13;
  v15[1] = sub_23DDD1C08;
  v15[2] = 0;
  return result;
}

uint64_t sub_23DDD0D68(uint64_t a1, void *a2)
{
  v4 = sub_23DE05658();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v12[1] = a2;
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E88, &qword_23DE07EC8);
  sub_23DE05908();
  v10 = *(a1 + 48);
  (*(a1 + 40))(a2);
  sub_23DDCFA1C(v8);
  sub_23DE05648();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23DDD0E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23DE05718();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E58, &qword_23DE07E98);
  return sub_23DDD0EF4(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_23DDD0EF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E60, &qword_23DE07EA0);
  v6 = (*(*(v94 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v90 = &v87 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E68, &qword_23DE07EA8);
  v8 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v87 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E70, &qword_23DE07EB0);
  v89 = *(v93 - 8);
  v11 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v88 = &v87 - v12;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E78, &qword_23DE07EB8) - 8) + 64);
  v14 = (MEMORY[0x28223BE20])();
  v95 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E80, &qword_23DE07EC0);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v87 - v19;
  v21 = [a1 image];
  if (v21 && (v22 = v21, v23 = [v21 UIImage], v22, v23))
  {
    v87 = sub_23DE05738();
    LOBYTE(v127[0]) = 1;
    v24 = v23;
    sub_23DE058A8();
    v25 = *MEMORY[0x277CE1020];
    v26 = sub_23DE058D8();
    v27 = *(v26 - 8);
    v91 = a2;
    v28 = v27;
    (*(v27 + 104))(v20, v25, v26);
    (*(v28 + 56))(v20, 0, 1, v26);
    v29 = sub_23DE058C8();

    sub_23DDC925C(v20, &qword_27E325E80, &qword_23DE07EC0);
    v30 = sub_23DE05878();
    KeyPath = swift_getKeyPath();
    sub_23DE05968();
    v33 = v32;
    v35 = v34;
    LOBYTE(v28) = v127[0];
    sub_23DE05958();
    sub_23DE05688();
    v36 = sub_23DE05778();
    sub_23DE05608();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    LOBYTE(v97) = 0;
    v133 = v87;
    LOBYTE(v134) = v28;
    a2 = v91;
    *(&v134 + 1) = v29;
    *&v135 = KeyPath;
    *(&v135 + 1) = v30;
    v136 = vdupq_n_s64(0x3FF6666666666666uLL);
    *&v137 = v33;
    *(&v137 + 1) = v35;
    v142 = v115;
    v143 = v116;
    v144 = v117;
    v138 = v111;
    v139 = v112;
    v140 = v113;
    v141 = v114;
    LOBYTE(v145) = v36;
    *(&v145 + 1) = v38;
    *&v146[0] = v40;
    *(&v146[0] + 1) = v42;
    *&v146[1] = v44;
    BYTE8(v146[1]) = 0;
    nullsub_1(&v133);
    v161 = v145;
    v162[0] = v146[0];
    *(v162 + 9) = *(v146 + 9);
    v157 = v141;
    v158 = v142;
    v160 = v144;
    v159 = v143;
    v153 = v137;
    v154 = v138;
    v156 = v140;
    v155 = v139;
    v149 = v133;
    v150 = v134;
    v152 = v136;
    v151 = v135;
  }

  else
  {
    sub_23DDD2718(&v149);
  }

  v91 = sub_23DE05738();
  LOBYTE(v133) = 1;
  sub_23DDD19A0(a1, v148);
  *&v147[7] = v148[0];
  *&v147[23] = v148[1];
  *&v147[39] = v148[2];
  *&v147[55] = v148[3];
  v45 = v133;
  v46 = [a1 identifier];
  v47 = sub_23DE05A48();
  v49 = v48;

  v133 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E88, &qword_23DE07EC8);
  sub_23DE058F8();
  v50 = v111;
  if (!v111)
  {

    goto LABEL_12;
  }

  v51 = [v111 identifier];

  v52 = sub_23DE05A48();
  v54 = v53;

  if (v47 != v52 || v49 != v54)
  {
    v55 = sub_23DE06318();

    if (v55)
    {
      goto LABEL_11;
    }

LABEL_12:
    *&v133 = sub_23DE058B8();
    v63 = MEMORY[0x277CE1088];
    v64 = MEMORY[0x277CE1078];
    v65 = v90;
    sub_23DE05868();

    sub_23DDD2850(v65, v10, &qword_27E325E60, &qword_23DE07EA0);
    swift_storeEnumTagMultiPayload();
    *&v133 = v63;
    *(&v133 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    sub_23DDD2740();
    sub_23DE05758();
    sub_23DDC925C(v65, &qword_27E325E60, &qword_23DE07EA0);
    goto LABEL_13;
  }

LABEL_11:
  *&v133 = sub_23DE058B8();
  v56 = MEMORY[0x277CE1088];
  v57 = MEMORY[0x277CE1078];
  v58 = v45;
  v59 = v88;
  sub_23DE05868();

  v60 = v89;
  v61 = v93;
  (*(v89 + 16))(v10, v59, v93);
  swift_storeEnumTagMultiPayload();
  *&v133 = v56;
  *(&v133 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  sub_23DDD2740();
  sub_23DE05758();
  v62 = v59;
  v45 = v58;
  (*(v60 + 8))(v62, v61);
LABEL_13:
  v109 = v161;
  v110[0] = v162[0];
  *(v110 + 9) = *(v162 + 9);
  v105 = v157;
  v106 = v158;
  v107 = v159;
  v108 = v160;
  v101 = v153;
  v102 = v154;
  v103 = v155;
  v104 = v156;
  v97 = v149;
  v98 = v150;
  v99 = v151;
  v100 = v152;
  v66 = v95;
  sub_23DDD2850(v96, v95, &qword_27E325E78, &qword_23DE07EB8);
  v67 = v110[0];
  v123 = v109;
  v124[0] = v110[0];
  *(v124 + 9) = *(v110 + 9);
  v68 = v105;
  v69 = v106;
  v119 = v105;
  v120 = v106;
  v71 = v107;
  v70 = v108;
  v121 = v107;
  v122 = v108;
  v72 = v101;
  v73 = v102;
  v115 = v101;
  v116 = v102;
  v75 = v103;
  v74 = v104;
  v117 = v103;
  v118 = v104;
  v76 = v97;
  v77 = v98;
  v111 = v97;
  v112 = v98;
  v79 = v99;
  v78 = v100;
  v113 = v99;
  v114 = v100;
  *(a3 + 192) = v109;
  *(a3 + 208) = v67;
  *(a3 + 217) = *(v110 + 9);
  *(a3 + 128) = v68;
  *(a3 + 144) = v69;
  *(a3 + 160) = v71;
  *(a3 + 176) = v70;
  *(a3 + 64) = v72;
  *(a3 + 80) = v73;
  *(a3 + 96) = v75;
  *(a3 + 112) = v74;
  *a3 = v76;
  *(a3 + 16) = v77;
  *(a3 + 32) = v79;
  *(a3 + 48) = v78;
  v80 = v91;
  v125[0] = v91;
  v125[1] = 0;
  v126[0] = v45;
  *&v126[1] = *v147;
  *&v126[17] = *&v147[16];
  *&v126[33] = *&v147[32];
  *&v126[49] = *&v147[48];
  v81 = *&v147[63];
  *&v126[64] = *&v147[63];
  v82 = *v126;
  *(a3 + 240) = v91;
  *(a3 + 256) = v82;
  v83 = *&v126[16];
  v84 = *&v126[48];
  *(a3 + 288) = *&v126[32];
  *(a3 + 304) = v84;
  *(a3 + 272) = v83;
  *(a3 + 320) = v81;
  *(a3 + 328) = 0;
  *(a3 + 336) = 1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325EA0, &qword_23DE07ED0);
  sub_23DDD2850(v66, a3 + *(v85 + 80), &qword_27E325E78, &qword_23DE07EB8);
  sub_23DDD2850(&v111, &v133, &qword_27E325EA8, &qword_23DE07ED8);
  sub_23DDD2850(v125, &v133, &qword_27E325EB0, &qword_23DE07EE0);
  sub_23DDC925C(v96, &qword_27E325E78, &qword_23DE07EB8);
  sub_23DDC925C(v66, &qword_27E325E78, &qword_23DE07EB8);
  v127[0] = v80;
  v127[1] = 0;
  v128 = v45;
  v130 = *&v147[16];
  v131 = *&v147[32];
  *v132 = *&v147[48];
  *&v132[15] = *&v147[63];
  v129 = *v147;
  sub_23DDC925C(v127, &qword_27E325EB0, &qword_23DE07EE0);
  v145 = v109;
  v146[0] = v110[0];
  *(v146 + 9) = *(v110 + 9);
  v141 = v105;
  v142 = v106;
  v143 = v107;
  v144 = v108;
  v137 = v101;
  v138 = v102;
  v139 = v103;
  v140 = v104;
  v133 = v97;
  v134 = v98;
  v135 = v99;
  v136 = v100;
  return sub_23DDC925C(&v133, &qword_27E325EA8, &qword_23DE07ED8);
}

uint64_t sub_23DDD19A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 localizedTitle];
  sub_23DE05A48();

  sub_23DDD1E2C();
  v5 = sub_23DE057F8();
  v7 = v6;
  v9 = v8;
  sub_23DE05898();
  v10 = sub_23DE057C8();
  v32 = v11;
  v31 = v12;
  v14 = v13;

  sub_23DDD2470(v5, v7, v9 & 1);

  v15 = [a1 localizedSubtitle];
  if (v15)
  {
    v16 = v15;
    sub_23DE05A48();

    v17 = sub_23DE057F8();
    v19 = v18;
    v21 = v20;
    sub_23DE05888();
    v22 = sub_23DE057C8();
    v24 = v23;
    v30 = v25;
    v27 = v26;

    sub_23DDD2470(v17, v19, v21 & 1);

    v28 = v30 & 1;
    sub_23DDD2480(v22, v24, v30 & 1);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v28 = 0;
    v27 = 0;
  }

  sub_23DDD2480(v10, v32, v31 & 1);

  sub_23DDD28B8(v22, v24, v28, v27);
  sub_23DDD28FC(v22, v24, v28, v27);
  *a2 = v10;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  sub_23DDD28FC(v22, v24, v28, v27);
  sub_23DDD2470(v10, v32, v31 & 1);
}

uint64_t sub_23DDD1C54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D38, &qword_23DE07D20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D40, &qword_23DE07D28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D48, &qword_23DE07D30);
  sub_23DDC7D28(&qword_27E325D50, &qword_27E325D48, &qword_23DE07D30);
  sub_23DDD1E2C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_23DE05668();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D60, &qword_23DE07D38) + 36);
  v3 = *MEMORY[0x277CDF3C0];
  v4 = sub_23DE05628();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a1 + v2, v3, v4);
  return (*(v5 + 56))(a1 + v2, 0, 1, v4);
}

unint64_t sub_23DDD1E2C()
{
  result = qword_27E325D58;
  if (!qword_27E325D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D58);
  }

  return result;
}

unint64_t sub_23DDD1E88()
{
  result = qword_27E325D78;
  if (!qword_27E325D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D80, &qword_23DE07D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D88, &qword_23DE07D50);
    sub_23DDD1F7C();
    swift_getOpaqueTypeConformance2();
    sub_23DDC7D28(&qword_27E325DF8, &qword_27E325E00, &unk_23DE07D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D78);
  }

  return result;
}

unint64_t sub_23DDD1F7C()
{
  result = qword_27E325D90;
  if (!qword_27E325D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D88, &qword_23DE07D50);
    sub_23DDD2040();
    sub_23DDD2124(&qword_27E325DC8, &qword_27E325DD0, &qword_23DE07D70, sub_23DDD21A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D90);
  }

  return result;
}

unint64_t sub_23DDD2040()
{
  result = qword_27E325D98;
  if (!qword_27E325D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325DA0, &qword_23DE07D58);
    sub_23DDC7D28(&qword_27E325DA8, &qword_27E325DB0, &qword_23DE07D60);
    sub_23DDC7D28(&qword_27E325DB8, &qword_27E325DC0, &qword_23DE07D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D98);
  }

  return result;
}

uint64_t sub_23DDD2124(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DDD21A0()
{
  result = qword_27E325DD8;
  if (!qword_27E325DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325DE0, &qword_23DE07D78);
    sub_23DDC7D28(&qword_27E325DE8, &qword_27E325DF0, &qword_23DE07D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325DD8);
  }

  return result;
}

uint64_t sub_23DDD2264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDD22C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDD2344()
{
  result = qword_27E325E20;
  if (!qword_27E325E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E3261D0, &qword_23DE07DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E20);
  }

  return result;
}

uint64_t sub_23DDD23C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E30, &qword_23DE07E40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DDD2850(a1, &v6 - v4, &qword_27E325E30, &qword_23DE07E40);
  return sub_23DE056D8();
}

uint64_t sub_23DDD2470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DDD2480(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for GroupedParameterConfigurationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DE05658();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DDD25F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GroupedParameterConfigurationView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23DDD2684()
{
  v1 = *(type metadata accessor for GroupedParameterConfigurationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23DDD0D68(v0 + v2, v3);
}

double sub_23DDD2718(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23DDD2740()
{
  result = qword_27E325E90;
  if (!qword_27E325E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325E60, &qword_23DE07EA0);
    swift_getOpaqueTypeConformance2();
    sub_23DDD27FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E90);
  }

  return result;
}

unint64_t sub_23DDD27FC()
{
  result = qword_27E325E98;
  if (!qword_27E325E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E98);
  }

  return result;
}

uint64_t sub_23DDD2850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DDD28B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DDD2480(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23DDD28FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DDD2470(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23DDD2940()
{
  result = qword_27E325EB8;
  if (!qword_27E325EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D60, &qword_23DE07D38);
    sub_23DDC7D28(&qword_27E325EC0, &qword_27E325EC8, &qword_23DE07EE8);
    sub_23DDC7D28(&qword_27E325ED0, &qword_27E325ED8, &unk_23DE07EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325EB8);
  }

  return result;
}

unint64_t ConfigurationViewController.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23DDD2A38()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

uint64_t sub_23DDD2AAC()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

uint64_t *sub_23DDD2AF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ConfigurationViewController.init(mode:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___BCConfigurationViewController_viewModel] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_selectorViewController] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_welcomeView] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_actionDetailsView] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides] = xmmword_23DE07F00;
  *&v3[OBJC_IVAR___BCConfigurationViewController_cancellableBag] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor] = 0;
  v3[OBJC_IVAR___BCConfigurationViewController_isAppeared] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_mode] = a1;
  v4 = &v3[OBJC_IVAR___BCConfigurationViewController_dismissHandler];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ConfigurationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23DDD2CF4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_23DDD34BC();
  v1 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v1 configureWithTransparentBackground];
  v2 = [v0 navigationItem];
  [v2 setStandardAppearance_];

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];

    [v0 setOverrideUserInterfaceStyle_];
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 setAccessibilityIgnoresInvertColors_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DDD2E94(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (!*&v1[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      v6 = [v5 tintColor];
    }

    else
    {
      v6 = 0;
    }

    v7 = *&v1[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
    *&v1[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor] = v6;

    v8 = [v1 navigationController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 navigationBar];

      v11 = [objc_opt_self() whiteColor];
      [v10 setTintColor_];
    }
  }
}

void sub_23DDD3038(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v13, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR___BCConfigurationViewController_viewModel];
  if (v4)
  {
    v5 = *(v4 + 224);
    v6 = *&v2[OBJC_IVAR___BCConfigurationViewController_viewModel];

    sub_23DDEE5A8();

    if (!*&v2[OBJC_IVAR___BCConfigurationViewController_mode])
    {
      v7 = [v2 navigationController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 navigationBar];

        v10 = *&v2[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
        if (v10)
        {
          v11 = *&v2[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
        }

        else
        {
          v11 = [objc_opt_self() systemBlueColor];
          v10 = 0;
        }

        v12 = v10;
        [v9 setTintColor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23DDD31B4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v1[OBJC_IVAR___BCConfigurationViewController_isAppeared] = 1;
  v3 = *&v1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
  if (v3)
  {
    [v3 loadViewIfNeeded];
  }

  if (!*&v1[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = [objc_opt_self() whiteColor];
      [v6 setTintColor_];
    }

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23DDD3340()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  if (!*&v0[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      v4 = [objc_opt_self() whiteColor];
      [v3 setTintColor_];
    }
  }
}

void sub_23DDD3458(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  v5 = *(v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  v6 = *(v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8);
  *v4 = v3;
  v4[1] = v2;

  sub_23DDD6454(v5);

  sub_23DDD4FB0();
}

uint64_t sub_23DDD34BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326008, &qword_23DE08090);
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326010, &qword_23DE08098);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326018, &qword_23DE080A0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326020, &qword_23DE080A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *&v0[OBJC_IVAR___BCConfigurationViewController_mode] != 0;
  v19 = v0;
  sub_23DDD3F14(v19);
  v50[3] = &type metadata for ConfigurationViewController.Router;
  v50[4] = &off_2850189A0;
  v50[0] = swift_allocObject();
  sub_23DDD6B7C(v51, v50[0] + 16);
  type metadata accessor for ConfigurationViewModel();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for ConfigurationViewController.Router);
  swift_cvw_initWithCopy();
  v21 = sub_23DDD6498(v18, v49, v20);
  sub_23DDD70F0(v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v22 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  v23 = *&v19[OBJC_IVAR___BCConfigurationViewController_viewModel];
  *&v19[OBJC_IVAR___BCConfigurationViewController_viewModel] = v21;

  v24 = *&v19[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel];
  *&v19[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel] = v21;

  sub_23DDF8768();

  v48 = v22;
  v26 = *&v19[v22];
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  v50[0] = *(*(v26 + 144) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326028, &qword_23DE080B0);
  sub_23DDC7D28(&qword_27E326030, &qword_27E326028, &qword_23DE080B0);
  v50[0] = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326038, &qword_23DE080B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326040, &qword_23DE080C0);
  sub_23DDC7D28(&qword_27E326048, &qword_27E326038, &qword_23DE080B8);
  sub_23DE054A8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E326050, &qword_27E326020, &qword_23DE080A8);
  sub_23DE055E8();

  (*(v14 + 8))(v17, v13);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v27 = *&v19[v48];
  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v50[0] = *(*(v27 + 152) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326058, &qword_23DE080C8);
  sub_23DDC7D28(&qword_27E326060, &qword_27E326058, &qword_23DE080C8);
  v50[0] = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326068, &unk_23DE080D0);
  sub_23DDC7D28(&qword_27E326070, &qword_27E326068, &unk_23DE080D0);
  sub_23DE054A8();

  sub_23DDC7D28(&qword_27E326078, &qword_27E326010, &qword_23DE08098);
  v28 = v44;
  v29 = v45;
  sub_23DE055A8();
  (*(v43 + 8))(v9, v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E326080, &qword_27E326018, &qword_23DE080A0);
  v30 = v47;
  sub_23DE055E8();

  (*(v46 + 8))(v29, v30);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v31 = *&v19[v48];
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v50[0] = *(*(v31 + 16) + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  v46 = sub_23DDC7D28(&qword_27E326090, &qword_27E326088, &unk_23DE091C0);
  v47 = v32;
  v50[0] = sub_23DE05498();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326098, &qword_23DE080E0);
  sub_23DDC7D28(&qword_27E3260A0, &qword_27E326098, &qword_23DE080E0);
  v34 = v40;
  v45 = v33;
  sub_23DE055A8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E3260A8, &qword_27E326008, &qword_23DE08090);
  v35 = v42;
  sub_23DE055E8();

  v36 = *(v41 + 8);
  v36(v34, v35);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v37 = *&v19[v48];
  if (v37)
  {
    v50[0] = *(*(v37 + 168) + 24);
    v50[0] = sub_23DE05498();
    v38 = v39;
    sub_23DE055A8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_23DE055E8();

    v36(v38, v35);
    swift_beginAccess();
    sub_23DE053D8();
    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_23DDD3F14(char *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (*&a1[OBJC_IVAR___BCConfigurationViewController_mode] == 1)
  {
    v2 = MEMORY[0x277D7D818];
  }

  else
  {
    v2 = MEMORY[0x277D7D810];
  }

  v3 = *v2;
  v4 = [objc_allocWithZone(type metadata accessor for ShortcutsConfigurationViewController()) initWithConfigurationContext_];

  v5 = *&a1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
  *&a1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController] = v4;
}

void sub_23DDD3FD8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v4 && (v5 = *(Strong + OBJC_IVAR___BCConfigurationViewController_actionDetailsView)) != 0)
    {
      v6 = v4;
      v7 = v5;

      if (v1 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
        sub_23DE06218();
      }

      else
      {
        sub_23DE06328();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
      v8 = sub_23DE05AE8();

      if (v3[OBJC_IVAR___BCConfigurationViewController_isAppeared] != 1)
      {
        v10 = 0;
        goto LABEL_13;
      }

      v9 = *&v3[OBJC_IVAR___BCConfigurationViewController_viewModel];
      if (v9)
      {
        v10 = *(*(v9 + 168) + 16);
LABEL_13:
        [v4 updateActionItems:v8 animated:v10];

        v13 = sub_23DDD41A0(v1);
        sub_23DE026B0(v13);

LABEL_14:

        return;
      }
    }

    else
    {
      v11 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (v11)
      {
        v12 = *(v11 + 152);
        if ((*(v12 + 24) & 1) == 0)
        {
          sub_23DDD47CC(v1, *(v12 + 16));
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void *sub_23DDD41A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23DE06038();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v37 = MEMORY[0x277D84F90];
  result = sub_23DDF3D9C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v37;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x23EF00A60](v5, a1);
        v7 = type metadata accessor for ActionSelectorItem();
        v35 = v7;
        v36 = &off_285019058;
        v34[0] = v6;
        v37 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        v10 = v7;
        if (v9 >= v8 >> 1)
        {
          sub_23DDF3D9C((v8 > 1), v9 + 1, 1);
          v10 = v35;
        }

        ++v5;
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v10);
        v12 = *(*(v10 - 8) + 64);
        MEMORY[0x28223BE20](v11);
        v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v15 + 16))(v14);
        v16 = *v14;
        v32 = v7;
        v33 = &off_285019058;
        *&v31 = v16;
        v3 = v37;
        *(v37 + 16) = v9 + 1;
        sub_23DDD6F30(&v31, v3 + 40 * v9 + 32);
        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      while (v2 != v5);
    }

    else
    {
      v17 = (a1 + 32);
      v18 = type metadata accessor for ActionSelectorItem();
      do
      {
        v19 = *v17;
        v35 = v18;
        v36 = &off_285019058;
        v34[0] = v19;
        v37 = v3;
        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v22 = v19;
        v23 = v18;
        if (v21 >= v20 >> 1)
        {
          sub_23DDF3D9C((v20 > 1), v21 + 1, 1);
          v23 = v35;
        }

        v24 = __swift_mutable_project_boxed_opaque_existential_1(v34, v23);
        v25 = *(*(v23 - 8) + 64);
        MEMORY[0x28223BE20](v24);
        v27 = (&v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v28 + 16))(v27);
        v29 = *v27;
        v32 = v18;
        v33 = &off_285019058;
        *&v31 = v29;
        v3 = v37;
        *(v37 + 16) = v21 + 1;
        sub_23DDD6F30(&v31, v3 + 40 * v21 + 32);
        __swift_destroy_boxed_opaque_existential_1(v34);
        ++v17;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDD44CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void sub_23DDD44E0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v4 && (v5 = *(Strong + OBJC_IVAR___BCConfigurationViewController_actionDetailsView)) != 0)
    {
      if (*(Strong + OBJC_IVAR___BCConfigurationViewController_isAppeared) == 1)
      {
        v6 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
        if (!v6)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v7 = *(*(v6 + 168) + 16);
      }

      else
      {
        v7 = 0;
      }

      v13 = v5;
      v12 = v4;
      [v12 selectActionItemWithIndex:v1 animated:v7];
      v14 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl;
      v15 = *&v13[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
      if (v15)
      {
        if ([v15 currentPage] == v1)
        {
LABEL_16:

LABEL_17:
          return;
        }

        v16 = *&v13[v14];
        if (v16)
        {
          [v16 setCurrentPage_];
          [v13 setNeedsLayout];
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (v8)
      {
        v9 = *(v8 + 144);
        if (*(v9 + 16))
        {
          v10 = *(v9 + 16);

          sub_23DDD47CC(v11, v1);
        }

        v12 = v3;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_23DDD465C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = *(*(v3 + 16) + 16);
      v5 = v2;
      v6 = v5;
      v7 = &selRef_resumeSceneUpdates;
      if (!v4)
      {
        v7 = &selRef_pauseSceneUpdates;
      }

      [v5 *v7];
    }
  }
}

void sub_23DDD470C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v2)
    {
      v3 = v2;
      v4 = [v3 view];
      if (v4)
      {
        v5 = *&v1[OBJC_IVAR___BCConfigurationViewController_viewModel];
        if (v5)
        {
          v6 = v4;
          [v4 setUserInteractionEnabled_];

          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

void sub_23DDD47CC(unint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  v4 = *&v2[OBJC_IVAR___BCConfigurationViewController_viewModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_44;
  }

  v5 = v4[15];
  if (v5)
  {
    v6 = v4[16];
    if (v6)
    {
      v7 = v4[17];
      if (v7)
      {
        v8 = v2;
        v11 = v4[17];

        v12 = sub_23DDD41A0(a1);
        v13 = *&v2[v3];
        if (v13)
        {
          v14 = v12;
          v15 = *(v13 + 112);
          v16 = type metadata accessor for ActionDetailsView();
          v17 = objc_allocWithZone(v16);
          v18 = &v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
          *v18 = 0;
          *(v18 + 1) = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton] = 0;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_cancellableBag] = MEMORY[0x277D84FA0];
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions] = v14;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_initialIndex] = a2;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButtonViewModel] = v15;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButtonViewModel] = v5;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButtonViewModel] = v6;
          *&v17[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButtonViewModel] = v7;
          v75.receiver = v17;
          v75.super_class = v16;
          swift_retain_n();

          v19 = objc_msgSendSuper2(&v75, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
          v20 = *MEMORY[0x277D76818];
          v21 = v19;
          [v21 setMaximumContentSizeCategory_];
          sub_23DE02744();

          v22 = OBJC_IVAR___BCConfigurationViewController_actionDetailsView;
          v23 = *&v8[OBJC_IVAR___BCConfigurationViewController_actionDetailsView];
          *&v8[OBJC_IVAR___BCConfigurationViewController_actionDetailsView] = v21;

          v24 = *&v8[OBJC_IVAR___BCConfigurationViewController_mode];
          v25 = 0x27E325000uLL;
          if (v24 == 1)
          {

            if (a1 >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
              sub_23DE06218();
            }

            else
            {
              sub_23DE06328();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
            v38 = sub_23DE05AE8();

            v39 = *&v8[v22];
            if (!v39)
            {
              goto LABEL_50;
            }

            v37 = [objc_opt_self() settingsSelectorWithActionItems:v38 selectedIndex:a2 detailsView:v39];
          }

          else
          {
            if (v24)
            {
              goto LABEL_21;
            }

            v26 = *&v8[v3];
            if (!v26)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v27 = *(v26 + 96);
            if (!v27 || (v28 = *(v26 + 104)) == 0)
            {

LABEL_39:

              return;
            }

            objc_allocWithZone(type metadata accessor for WelcomeView());
            swift_retain_n();
            swift_retain_n();
            v29 = sub_23DDE1534(v27, v28);
            v30 = OBJC_IVAR___BCConfigurationViewController_welcomeView;
            v31 = *&v8[OBJC_IVAR___BCConfigurationViewController_welcomeView];
            *&v8[OBJC_IVAR___BCConfigurationViewController_welcomeView] = v29;

            if (a1 >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
              sub_23DE06218();
            }

            else
            {
              sub_23DE06328();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
            v74 = sub_23DE05AE8();

            v32 = *&v8[v30];
            if (!v32)
            {
              goto LABEL_54;
            }

            v33 = *&v8[v22];
            if (!v33)
            {
LABEL_55:
              __break(1u);
              return;
            }

            v34 = objc_opt_self();
            v35 = v32;
            v36 = v33;
            v37 = [v34 assistantSelectorWithActionItems:v74 selectedIndex:a2 welcomeView:v35 detailsView:v36];

            v25 = 0x27E325000;
          }

          v40 = *(v25 + 3816);
          v41 = *&v8[v40];
          *&v8[v40] = v37;

LABEL_21:
          v42 = *(v25 + 3816);
          v43 = *&v8[v42];
          if (!v43)
          {
LABEL_36:

            v68 = *&v8[v22];
            if (!v68)
            {
              return;
            }

            v69 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v70 = &v68[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
            v71 = *&v68[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
            v72 = *&v68[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler + 8];
            *v70 = sub_23DDD6ED8;
            v70[1] = v69;
            v73 = v68;

            sub_23DDCC0D8(v71);

            goto LABEL_39;
          }

          v44 = v43;
          [v8 addChildViewController_];
          v45 = [v44 view];
          if (v45)
          {
            v46 = v45;
            v47 = [v8 view];
            if (v47)
            {
              v48 = v47;
              [v47 frame];
              v50 = v49;
              v52 = v51;
              v54 = v53;
              v56 = v55;

              [v46 setFrame_];
              v57 = [v8 view];
              if (v57)
              {
                v58 = v57;
                v59 = [v44 view];

                if (v59)
                {
                  [v58 addSubview_];

                  [v44 didMoveToParentViewController_];
                  sub_23DDD4FB0();
                  v60 = *&v8[v42];
                  if (!v60)
                  {
LABEL_35:
                    [v44 setDelegate_];

                    goto LABEL_36;
                  }

                  v61 = *&v8[v3];
                  if (v61)
                  {
                    if (*(*(v61 + 16) + 16))
                    {
                      v62 = &selRef_resumeSceneUpdates;
                    }

                    else
                    {
                      v62 = &selRef_pauseSceneUpdates;
                    }

                    [v60 *v62];
                    v63 = *&v8[v42];
                    if (!v63)
                    {
                      goto LABEL_35;
                    }

                    v64 = v63;
                    v65 = [v64 view];
                    if (v65)
                    {
                      v66 = *&v8[v3];
                      if (v66)
                      {
                        v67 = v65;
                        [v65 setUserInteractionEnabled_];

                        goto LABEL_35;
                      }

                      goto LABEL_53;
                    }

LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

                goto LABEL_48;
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }
  }
}

void sub_23DDD4F20(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      [v5 selectActionItemWithIndex:a1 animated:1];
    }
  }
}

void sub_23DDD4FB0()
{
  v1 = *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  if (v2 == 1)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8);
  v46 = *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
  v47 = v3;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FF0, &qword_23DE08088);
    v4 = sub_23DE06238();
    v5 = v3 + 64;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    sub_23DDD7060(v2);
    v9 = (v6 + 63) >> 6;
    v10 = v1;
    for (i = 0; v8; v4[2] = v23)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v15 = v12 | (i << 6);
      v16 = *(v47[6] + 8 * v15);
      v17 = *(v47[7] + 8 * v15);
      v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v19 = v16;
      v20 = [v18 initWithDouble_];
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v4[6] + 8 * v15) = v19;
      *(v4[7] + 8 * v15) = v20;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_38;
      }
    }

    v13 = i;
    while (1)
    {
      i = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (i >= v9)
      {
        break;
      }

      v14 = *(v5 + 8 * i);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    type metadata accessor for ABDeviceSceneParameter(0);
    sub_23DDC91D0(0, &unk_27E325FF8, 0x277CCABB0);
    sub_23DDD70A8(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter);
    v24 = sub_23DE059E8();

    v1 = v46;
    if (!v2)
    {
      goto LABEL_32;
    }

LABEL_18:
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FF0, &qword_23DE08088);
    v25 = sub_23DE06238();
    v26 = v25;
    v27 = 0;
    v28 = 1 << *(v2 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v2 + 64);
    v31 = (v28 + 63) >> 6;
    for (j = v25 + 64; v30; v26[2] = v43)
    {
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
LABEL_27:
      v36 = v33 | (v27 << 6);
      v37 = *(*(v2 + 48) + 8 * v36);
      v38 = *(*(v2 + 56) + 8 * v36);
      v39 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v40 = v37;
      v41 = [v39 initWithDouble_];
      *(j + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(v26[6] + 8 * v36) = v40;
      *(v26[7] + 8 * v36) = v41;
      v42 = v26[2];
      v22 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v22)
      {
        goto LABEL_39;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        sub_23DDD6454(v2);
        type metadata accessor for ABDeviceSceneParameter(0);
        sub_23DDC91D0(0, &unk_27E325FF8, 0x277CCABB0);
        sub_23DDD70A8(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter);
        v48 = sub_23DE059E8();

        v24 = v45;
        v1 = v46;
        goto LABEL_33;
      }

      v35 = *(v2 + 64 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v30 = (v35 - 1) & v35;
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  sub_23DDD7060(v2);
  v44 = v1;
  v24 = 0;
  if (v2)
  {
    goto LABEL_18;
  }

LABEL_32:
  sub_23DDD6454(0);
  v48 = 0;
LABEL_33:
  [v1 overrideSceneParamsWithZoomedOutParams:v24 zoomedInParams:v48];
}

void sub_23DDD54AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_23DE052D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_23DDD6B7C(v6, v29);
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    sub_23DDD6BB4(v29, (v16 + 4));
    v16[5] = a4;
    v16[6] = a5;
    objc_allocWithZone(type metadata accessor for ControlPickerViewController());

    v17 = sub_23DDDCD4C(sub_23DDD6C0C, v16);
    [v17 setOverrideUserInterfaceStyle_];
    v18 = v17;
    if (a1)
    {
      v19 = a1;
      v20 = [v19 controlType];
      v21 = [v20 unsignedIntegerValue];

      v22 = objc_allocWithZone(MEMORY[0x277CFC9E8]);
      v23 = sub_23DDD9150();
    }

    [v17 setSelectedControl_];

    v24 = [v17 sheetPresentationController];
    if (v24)
    {
      v25 = v24;
      sub_23DE05D58();
      sub_23DE052C8();
      sub_23DE05D68();

      sub_23DE05D78();
      [v25 setPrefersGrabberVisible_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_23DE07F10;
      sub_23DDC91D0(0, &qword_27E325FB8, 0x277D75A28);
      *(v26 + 32) = sub_23DE05D98();
      v27 = sub_23DE05AE8();

      [v25 setDetents_];
    }

    v28 = [v17 presentationController];

    if (v28)
    {
      [v28 setDelegate_];
    }

    [v15 presentViewController:v17 animated:1 completion:0];
  }
}

void sub_23DDD583C(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *a2;
    v22 = a2[1];
    v23 = v12;
    v21 = a2[2];
    objc_allocWithZone(type metadata accessor for ControlConfigurationViewController());
    sub_23DDD6AB0(&v23, v20);
    v13 = a1;
    sub_23DDD6B0C(&v22, v20);
    sub_23DDD6B0C(&v21, v20);
    v14 = sub_23DDDC3A0(v13, a2);
    [v14 setOverrideUserInterfaceStyle_];
    sub_23DDD6B7C(v5, v20);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_23DDD6BB4(v20, v15 + 32);
    v16 = &v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
    v17 = *&v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler + 8];
    *v16 = sub_23DDD6BEC;
    v16[1] = v15;

    sub_23DDCC0D8(v17);
    v19 = [v14 presentationController];

    if (v19)
    {
      [v19 setDelegate_];
    }

    [v11 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_23DDD59E4(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
    a2();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR___BCConfigurationViewController_viewModel;
    v7 = *(result + OBJC_IVAR___BCConfigurationViewController_viewModel);
    if (v7)
    {
      v8 = *(v7 + 72);

      sub_23DE053E8();

      v9 = *&v5[v6];
      if (v9)
      {
        v10 = *(v9 + 80);

        sub_23DE053E8();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_23DDD5AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
    if (v9)
    {
      v16 = Strong;
      v10 = v9;
      [v10 setModalPresentationStyle_];
      swift_unknownObjectWeakAssign();
      [v10 setSelectedAction_];
      sub_23DDD6B7C(v4, v18);
      v11 = swift_allocObject();
      sub_23DDD6BB4(v18, v11 + 16);
      *(v11 + 24) = a2;
      *(v11 + 32) = a3;
      v12 = &v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler];
      v13 = *&v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler];
      v14 = *&v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler + 8];
      *v12 = sub_23DDD6EC0;
      v12[1] = v11;

      sub_23DDCC0D8(v13);
      v15 = [v10 presentationController];

      if (v15)
      {
        [v15 setDelegate_];
      }

      [v16 presentViewController:v10 animated:1 completion:{0, v16}];
    }

    else
    {
    }
  }
}

void sub_23DDD5C54(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v38 = a4;
  v39 = sub_23DE05978();
  v42 = *(v39 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DE059A8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DE059C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v43 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (a2)
    {
      sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
      v37 = sub_23DE05CB8();
      sub_23DE059B8();
      sub_23DE059D8();
      v38 = *(v15 + 8);
      v38(v19, v14);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      aBlock[4] = sub_23DDD6ED0;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DDD6170;
      aBlock[3] = &block_descriptor_0;
      v36 = _Block_copy(aBlock);
      v25 = v23;

      sub_23DE05998();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23DDD70A8(&qword_27E325FD0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FD8, &unk_23DE08070);
      sub_23DDC7D28(&qword_27E325FE0, &qword_27E325FD8, &unk_23DE08070);
      v26 = v39;
      sub_23DE05FE8();
      v28 = v36;
      v27 = v37;
      MEMORY[0x23EF005F0](v21, v13, v9, v36);
      _Block_release(v28);

      (*(v42 + 8))(v9, v26);
      (*(v40 + 8))(v13, v41);
      v38(v21, v14);
    }

    else
    {
      (v38)(a1);
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (!v29)
    {
      goto LABEL_9;
    }

    v30 = v29;
    v31 = OBJC_IVAR___BCConfigurationViewController_viewModel;
    v32 = *(v29 + OBJC_IVAR___BCConfigurationViewController_viewModel);
    if (v32)
    {
      v33 = *(v32 + 72);

      sub_23DE053E8();

      v34 = *&v30[v31];
      if (v34)
      {
        v35 = *(v34 + 80);

        sub_23DE053E8();

LABEL_9:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_23DDD60D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___BCConfigurationViewController_mode) == 1)
  {
    v2 = MEMORY[0x277D7D818];
  }

  else
  {
    v2 = MEMORY[0x277D7D810];
  }

  v3 = *v2;
  v4 = [objc_allocWithZone(type metadata accessor for ShortcutsConfigurationViewController()) initWithConfigurationContext_];

  v5 = *(a1 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController);
  *(a1 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController) = v4;
}

uint64_t sub_23DDD6170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id ConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23DE05A18();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_23DDD628C()
{
  v1 = *(v0 + OBJC_IVAR___BCConfigurationViewController_dismissHandler + 8);

  v2 = *(v0 + OBJC_IVAR___BCConfigurationViewController_viewModel);

  v3 = *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8);
  sub_23DDD6454(*(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides));
  v4 = *(v0 + OBJC_IVAR___BCConfigurationViewController_cancellableBag);

  v5 = *(v0 + OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor);
}

id ConfigurationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DeviceSceneParameters.init(zoomedInParameters:zoomedOutParameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23DDD6454(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_23DDD6498(char a1, uint64_t a2, uint64_t a3)
{
  v26[3] = &type metadata for ConfigurationViewController.Router;
  v26[4] = &off_2850189A0;
  v26[0] = swift_allocObject();
  sub_23DDD6BB4(a2, v26[0] + 16);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3260B0, &qword_23DE080E8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326028, &qword_23DE080B0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v6 + 24) = sub_23DE05418();
  *(a3 + 144) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3260B8, &unk_23DE080F0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326058, &qword_23DE080C8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v10 + 32) = sub_23DE05418();
  *(a3 + 152) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3260C0, &qword_23DE08CB0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v14 + 24) = sub_23DE05418();
  *(a3 + 160) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  *(v18 + 24) = sub_23DE05418();
  *(a3 + 168) = v18;
  *(a3 + 240) = MEMORY[0x277D84FA0];
  *(a3 + 176) = a1 & 1;
  sub_23DDD7140(v26, a3 + 184);
  type metadata accessor for ControlAttributesStore();
  v21 = swift_allocObject();
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  *(a3 + 232) = v21;
  type metadata accessor for ActionStore();
  swift_allocObject();

  v23 = sub_23DDF6AB8(v22, a1 & 1);

  *(a3 + 224) = v23;
  v24 = sub_23DDE73DC();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v24;
}

void sub_23DDD672C()
{
  *(v0 + OBJC_IVAR___BCConfigurationViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_welcomeView) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_actionDetailsView) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides) = xmmword_23DE07F00;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_cancellableBag) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_isAppeared) = 0;
  sub_23DE06208();
  __break(1u);
}

void sub_23DDD680C(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BCConfigurationViewController_viewModel);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(*(*(v2 + 224) + 16) + 16);
  if (!v3)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v3 + 24 * a1;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);

  sub_23DDD6F58(v5, v6, v7);
  sub_23DDED81C(v5, v6, v7, 1);

  sub_23DDD6FDC(v5, v6, v7);
}

unint64_t sub_23DDD68EC()
{
  result = qword_27E325F38;
  if (!qword_27E325F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325F38);
  }

  return result;
}

uint64_t sub_23DDD69F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23DDD6A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DDD6B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3261D0, &qword_23DE07DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDD6C0C(void *a1, char a2)
{
  v3 = *(v2 + 48);
  v4 = sub_23DDD6C50(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + 32, *(v2 + 40));
  sub_23DDD6EA4(v4);
  return v4;
}

uint64_t sub_23DDD6C50(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v8 = sub_23DE052B8();
    __swift_project_value_buffer(v8, qword_281218840);
    v9 = a1;
    v10 = sub_23DE05298();
    v11 = sub_23DE05C18();
    sub_23DDD6EB4(a1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_23DDC8940(0xD00000000000001BLL, 0x800000023DE09F30, &v24);
      *(v12 + 12) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_23DDC5000, v10, v11, "%s finished with error: %@", v12, 0x16u);
      sub_23DDCF3FC(v13);
      MEMORY[0x23EF014D0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x23EF014D0](v14, -1, -1);
      MEMORY[0x23EF014D0](v12, -1, -1);
    }
  }

  else if (a1)
  {
    a3(a1);
    sub_23DDD6EB4(a1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return a6;
  }

  v18 = result;
  v19 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  v20 = *(result + OBJC_IVAR___BCConfigurationViewController_viewModel);
  if (v20)
  {
    v21 = *(v20 + 72);

    sub_23DE053E8();

    v22 = *&v18[v19];
    if (v22)
    {
      v23 = *(v22 + 80);

      sub_23DE053E8();

      return a6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDD6EA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23DDD6F30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_23DDD6F58(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {

    return result;
  }

  if (a3 == 2)
  {
    v4 = result;
  }

  else if (a3 == 3)
  {

    return result;
  }

  return result;
}

void sub_23DDD6FDC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a3 == 2)
  {
  }

  else if (a3 == 3)
  {

    goto LABEL_4;
  }
}

uint64_t sub_23DDD7060(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23DDD70A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DDD7140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DDD71A4(uint64_t a1, int a2)
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

uint64_t sub_23DDD71C4(uint64_t result, int a2, int a3)
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

uint64_t sub_23DDD7200()
{
  v0 = sub_23DE051B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_23DE051A8();
  result = sub_23DE05A58();
  qword_27E3260D0 = result;
  *algn_27E3260D8 = v3;
  return result;
}

uint64_t sub_23DDD7294(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_23DDD8F6C(v7, v8) & 1;
}

uint64_t sub_23DDD72DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_23DDD8F20();
  return sub_23DE05DC8() & (v3 == v5);
}

uint64_t *sub_23DDD7330(uint64_t *result)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    v9 = v1[4];
    v8 = v1[5];
    v11 = v1[6];
    v10 = v1[7];
    v48 = v1[2];
    if (v4)
    {
      v44 = result[5];
      v46 = v1[6];
      v49 = v1[5];
      v47 = v1[4];
      v12 = v1[2];
      v13 = v1[3];
      if (v12 == *result && v2 == v4 || (v14 = result[2], v15 = result[1], v16 = sub_23DE06318(), v5 = v14, (v16 & 1) != 0))
      {
        v17 = v6;
        v18 = v10;
        if (v49)
        {
          if (!v17)
          {

            v13 = v2;

            v21 = v49;

            v36 = v12;
            v9 = v47;
            v37 = v12;
            v11 = v46;
            sub_23DDD904C(v36, v2);
            sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

            v25 = v37;
LABEL_25:
            v26 = v2;
            goto LABEL_26;
          }

          v19 = v44;
          if ((v47 != v5 || v49 != v17) && (sub_23DE06318() & 1) == 0)
          {

            v20 = v2;

            v21 = v49;

            v22 = v12;
            v23 = v2;
            v9 = v47;
            v24 = v12;
            v11 = v46;
            sub_23DDD904C(v22, v23);
            sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);
            v13 = v20;

            v25 = v24;
            v26 = v20;
LABEL_26:
            sub_23DDD909C(v25, v26);
            goto LABEL_27;
          }

LABEL_15:
          if (!v18)
          {
            if (!v19)
            {
              sub_23DDD904C(v12, v2);
              sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

              return sub_23DDD909C(v12, v2);
            }

            v21 = v49;

            v38 = v2;

            v39 = v12;
            v40 = v2;
            v9 = v47;
            v41 = v12;
            v11 = v46;
            sub_23DDD904C(v39, v40);
            sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

            v13 = v38;

            sub_23DDD909C(v41, v38);
            goto LABEL_27;
          }

          if (v19)
          {
            if (v46 == v7 && v18 == v19)
            {

              sub_23DDD904C(v12, v2);
              sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);
            }

            else
            {
              v45 = sub_23DE06318();
              v21 = v49;

              v9 = v47;
              sub_23DDD904C(v12, v2);
              sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

              if ((v45 & 1) == 0)
              {
                sub_23DDD909C(v12, v2);
                v11 = v46;
                v13 = v2;
                goto LABEL_27;
              }
            }

            return sub_23DDD909C(v12, v2);
          }

          v21 = v49;

          v42 = v12;
          v9 = v47;
          v43 = v12;
          v11 = v46;
          sub_23DDD904C(v42, v2);
          sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

          v13 = v2;

          v25 = v43;
          goto LABEL_25;
        }

        v19 = v44;
        if (!v17)
        {
          goto LABEL_15;
        }

        v29 = v2;

        v30 = v12;
        v31 = v2;
        v9 = v47;
        v32 = v12;
        v11 = v46;
        sub_23DDD904C(v30, v31);
        sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

        v13 = v29;

        sub_23DDD909C(v32, v29);
        v21 = 0;
      }

      else
      {

        v21 = v49;

        v33 = v12;
        v34 = v2;
        v9 = v47;
        v35 = v12;
        v11 = v46;
        sub_23DDD904C(v33, v34);
        sub_23DDD2850(v3, v50, &qword_27E3261B0, &qword_23DE08268);

        v18 = v10;

        sub_23DDD909C(v35, v13);
      }
    }

    else
    {
      v27 = v1[2];
      v28 = *result;

      sub_23DDD904C(v27, v2);
      sub_23DDD909C(v27, v2);
      sub_23DDD909C(v28, 0);
      v21 = v8;
      v13 = v2;
      v18 = v10;
    }

LABEL_27:
    sub_23DDD7AAC();
    v50[0] = v48;
    v50[1] = v13;
    v50[2] = v9;
    v50[3] = v21;
    v50[4] = v11;
    v50[5] = v18;
    sub_23DE05408();
  }

  return result;
}

uint64_t sub_23DDD7AAC()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    if (qword_27E325AE0 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261B8, &qword_23DE08270);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v1 = sub_23DE05418();
    v6 = *(v2 + 72);
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_23DDD7B90(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326170, &qword_23DE08248);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326178, &qword_23DE08250);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = v13;
  v16 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326180, &qword_23DE08258);
  sub_23DDC7D28(&qword_27E326188, &qword_27E326180, &qword_23DE08258);
  sub_23DE05488();
  sub_23DDC7D28(&qword_27E326190, &qword_27E326170, &qword_23DE08248);
  swift_retain_n();
  sub_23DE054B8();

  (*(v5 + 8))(v8, v4);
  sub_23DDC7D28(&qword_27E326198, &qword_27E326178, &qword_23DE08250);
  v17 = v21;
  v18 = sub_23DE05498();
  (*(v9 + 8))(v12, v17);

  return v18;
}

uint64_t sub_23DDD7EE8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261A0, &qword_23DE08260);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_23DDD81A8(a1, a2);
    v14 = OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance;
    v15 = *&v13[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance];
    sub_23DDD8630(v23);
    v16 = v23[1];
    v17 = *(v12 + 16);
    v18 = *(v12 + 48);
    v26[1] = *(v12 + 32);
    v26[2] = v18;
    v26[0] = v17;
    *(v12 + 16) = v23[0];
    *(v12 + 24) = v16;
    v19 = v25;
    *(v12 + 32) = v24;
    *(v12 + 48) = v19;
    sub_23DDD7330(v26);
    sub_23DDC925C(v26, &qword_27E3261B0, &qword_23DE08268);
    if ((v13[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] & 1) == 0)
    {
      v13[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 1;
      [*&v13[v14] registerObserver_];
      [*&v13[v14] activate];
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v22[1] = sub_23DDD7AAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261B8, &qword_23DE08270);
    sub_23DDC7D28(&qword_27E3261C0, &qword_27E3261B8, &qword_23DE08270);
    v20 = sub_23DE05498();
  }

  else
  {
    sub_23DE05468();
    sub_23DDC7D28(&qword_27E3261A8, &qword_27E3261A0, &qword_23DE08260);
    v20 = sub_23DE05498();
    result = (*(v7 + 8))(v10, v6);
  }

  *a3 = v20;
  return result;
}

char *sub_23DDD81A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 64);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control];
    v8 = *&v6[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control + 8];
    sub_23DDD8F20();
    v9 = v6;
    v10 = v7;
    v11 = sub_23DE05DC8();

    if ((v11 & 1) != 0 && v8 == a2)
    {
      return v9;
    }

    v13 = *(v3 + 64);
    if (v13)
    {
      if (*(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
      {
        *(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
        [*(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
      }
    }
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = type metadata accessor for ControlObserver();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 0;
  v17 = &v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control];
  *v17 = a1;
  v17[1] = a2;
  v18 = objc_allocWithZone(MEMORY[0x277CFA230]);
  v19 = a1;
  v20 = [v18 initWithControl:v19 contentType:1 hostIdentifier:0 configurationIdentifier:0];
  v21 = [objc_opt_self() instanceOfType:a2 instanceIdentity:v20];

  *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance] = v21;
  v22 = &v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_updateHandler];
  *v22 = sub_23DDD90EC;
  v22[1] = v14;
  v26.receiver = v16;
  v26.super_class = v15;
  v23 = objc_msgSendSuper2(&v26, sel_init);

  v24 = *(v3 + 64);
  *(v3 + 64) = v23;
  v25 = v23;

  return v25;
}

void sub_23DDD83A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
    {
      *(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
      [*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
    }
  }
}

void sub_23DDD8428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
    {
      *(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
      [*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
    }
  }
}

uint64_t sub_23DDD84AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a1 + 2);
  v9 = *(a1 + 2);
  v10 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);
    v7 = *(result + 48);
    v15[1] = *(result + 32);
    v15[2] = v7;
    v15[0] = v6;
    *(result + 16) = v2;
    *(result + 24) = v3;
    *(result + 32) = v10;
    *(result + 48) = v9;
    v8 = *a1;
    v13 = *v4;
    v14 = v8;
    v12 = *(a1 + 2);
    sub_23DDD6AB0(&v14, v11);
    sub_23DDD2850(&v13, v11, &unk_27E3261D0, &qword_23DE07DD0);
    sub_23DDD2850(&v12, v11, &unk_27E3261D0, &qword_23DE07DD0);
    sub_23DDD7330(v15);
    sub_23DDC925C(v15, &qword_27E3261B0, &qword_23DE08268);
  }

  return result;
}

uint64_t sub_23DDD85BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_23DDD909C(*(v0 + 16), *(v0 + 24));

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_23DDD8630(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DDD8B14();
  v6 = v5;
  v7 = [v2 descriptor];
  if (v7 && (v8 = v7, v9 = [v7 displayName], v8, v9))
  {
    v10 = sub_23DE05A48();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v2 descriptor];
  if (v13 && (v14 = v13, v15 = [v13 widgetDescription], v14, v15))
  {
    v16 = sub_23DE05A48();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v16;
  a1[5] = v18;
}

id sub_23DDD8740()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] == 1)
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 0;
    [*&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance] unregisterObserver_];
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23DDD88A8(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_updateHandler];
  v4 = *&a1[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_updateHandler + 8];
  v6 = a3;
  v7 = a1;
  sub_23DDD8630(v8);
  v5(v8);

  v11 = v8[0];
  sub_23DDD90F4(&v11);
  v10 = v8[1];
  sub_23DDC925C(&v10, &unk_27E3261D0, &qword_23DE07DD0);
  v9 = v8[2];
  sub_23DDC925C(&v9, &unk_27E3261D0, &qword_23DE07DD0);
}

uint64_t sub_23DDD89C8(uint64_t *a1, int a2)
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

uint64_t sub_23DDD8A10(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DDD8A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23DDD8AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DDD8B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - v4;
  v6 = sub_23DDD8DD8();
  if (v6)
  {
    v7 = [v6 title];
    swift_unknownObjectRelease();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [v0 descriptor];
  if (v8)
  {
    v9 = v8;
    v7 = [v8 displayName];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v11 = [v0 control];
  v12 = [v11 extensionIdentity];

  v13 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v5, &v12[v13], v1);

  sub_23DE05258();
  v14 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v15 = sub_23DDD8E54();
  if (v15)
  {
    v17 = v15;
    v18 = [v15 containingBundleRecord];

    (*(v2 + 8))(v5, v1);
    if (v18)
    {
      v7 = [v18 localizedName];

LABEL_5:
      v10 = sub_23DE05A48();

      return v10;
    }
  }

  else
  {
    (*(v2 + 8))(v5, v1);
  }

  if (qword_27E325AE0 != -1)
  {
    swift_once();
  }

  v10 = qword_27E3260D0;

  return v10;
}

id sub_23DDD8DD8()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  return result;
}

id sub_23DDD8E54()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23DE05A18();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_23DE05198();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_23DDD8F20()
{
  result = qword_27E326168;
  if (!qword_27E326168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E326168);
  }

  return result;
}

uint64_t sub_23DDD8F6C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23DE06318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23DE06318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23DE06318() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23DDD9030@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_23DDD7EE8(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_23DDD904C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23DDD909C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_23DDD9150()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = [v1 extensionBundleIdentifier];
  sub_23DE05A48();

  sub_23DE05248();
  v9 = [v1 containerBundleIdentifier];
  if (v9)
  {

    result = [v1 containerBundleIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    sub_23DE05A48();

    sub_23DE05248();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  (*(*(v13 - 8) + 56))(v5, v12, 1, v13);
  sub_23DE05CF8();
  v14 = sub_23DE05CE8();
  v15 = [v1 kind];
  if (!v15)
  {
    sub_23DE05A48();
    v15 = sub_23DE05A18();
  }

  v16 = [v1 intent];
  v17 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v14 kind:v15 intent:v16];

  return v17;
}

id sub_23DDD93D4(void *a1)
{
  v2 = [a1 identity];
  v3 = [v2 intentReference];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 intent];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23DE05A18();
  v7 = [v2 extensionIdentity];
  v8 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  sub_23DE05258();
  v9 = sub_23DE05A18();
  swift_endAccess();

  v10 = [v2 extensionIdentity];
  v11 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  if ((*(*(v12 - 8) + 48))(&v10[v11], 1, v12))
  {
    swift_endAccess();

    v13 = 0;
  }

  else
  {
    sub_23DE05258();
    swift_endAccess();

    v13 = sub_23DE05A18();
  }

  v14 = [v2 kind];
  if (!v14)
  {
    sub_23DE05A48();
    v14 = sub_23DE05A18();
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = [a1 type];
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v18 = [v15 initWithIntent:v5 named:v6 extensionBundleIdentifier:v9 containerBundleIdentifier:v13 kind:v14 controlType:v17];

  return v18;
}

id sub_23DDD96A0(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 name];
  if (!v4)
  {
    sub_23DE05A48();
    v4 = sub_23DE05A18();
  }

  v5 = [v2 extensionBundleIdentifier];
  if (!v5)
  {
    sub_23DE05A48();
    v5 = sub_23DE05A18();
  }

  v6 = [v2 containerBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    sub_23DE05A48();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 kind];
  if (!v10)
  {
    sub_23DE05A48();
    v10 = sub_23DE05A18();
  }

  v11 = [v2 controlType];
  if (v9)
  {
    v12 = sub_23DE05A18();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D79E60]) initWithIntent:a1 named:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v12 kind:v10 controlType:v11];

  return v13;
}

id sub_23DDD984C()
{
  v1 = v0;
  v2 = [v0 intent];
  v3 = [v0 extensionBundleIdentifier];
  if (!v3)
  {
    sub_23DE05A48();
    v3 = sub_23DE05A18();
  }

  v4 = [v1 containerBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_23DE05A48();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v1 kind];
  if (!v8)
  {
    sub_23DE05A48();
    v8 = sub_23DE05A18();
  }

  v9 = [v1 controlType];
  v10 = sub_23DE05A18();
  if (v7)
  {
    v11 = sub_23DE05A18();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D79E60]) initWithIntent:v2 named:v10 extensionBundleIdentifier:v3 containerBundleIdentifier:v11 kind:v8 controlType:v9];

  return v12;
}

void sub_23DDD99FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v18 = *a1;
  v19 = v4;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v5 = v21;
  v6 = v18;
  v7 = v4;
  v8 = v20;
  v9 = v3[2];
  v15 = v3[4];
  v16 = v3[3];
  v13 = v3[6];
  v14 = v3[5];
  v11 = v3[8];
  v12 = v3[7];
  *(v3 + 1) = v18;
  *(v3 + 2) = v4;
  *(v3 + 3) = v8;
  v3[8] = v5;

  sub_23DDD9D10(a1, v17);
  sub_23DDD9D80(v6, *(&v6 + 1), v7);
  sub_23DDD9DE0(v9, v16, v15);
  v10 = v3[9];

  sub_23DE05408();

  sub_23DDC925C(a1, &qword_27E3261E0, "hc");

  sub_23DDD9DE0(v18, *(&v18 + 1), v19);
}

uint64_t sub_23DDD9B30(__int128 *a1)
{
  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v8 = a1[2];
  v9 = *(a1 + 6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4[0] = v6;
    v4[1] = v7;
    v4[2] = v8;
    v5 = v9;
    sub_23DDD9CD8(&v6, &v3);
    sub_23DDD99FC(v4);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23DDD9C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DDD9C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DDD9D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261E0, "hc");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDD9D80(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
  }

  return result;
}

void sub_23DDD9DE0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_23DDD9E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261E8, "hc");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_23DE05F68();
  v12 = swift_allocBox();
  v14 = v13;
  sub_23DE05F78();
  v15 = *(v11 - 8);
  if ((*(v15 + 48))(v10, 1, v11) == 1)
  {
    sub_23DDC925C(v10, &qword_27E3261F0, &unk_23DE08AB0);
    swift_deallocBox();
    result = sub_23DE06208();
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v14, v10, v11);
    v21 = *(*(a1 + 16) + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
    sub_23DDC7D28(&qword_27E326200, &qword_27E3261F8, &qword_23DE08310);
    v21 = sub_23DE05498();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326208, &unk_23DE08318);
    sub_23DDC7D28(&qword_27E326210, &qword_27E326208, &unk_23DE08318);
    sub_23DE054A8();

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v12;
    sub_23DDC7D28(&qword_27E326218, &qword_27E3261E8, "hc");

    v18 = sub_23DE055E8();

    (*(v3 + 8))(v6, v2);

    return v18;
  }

  return result;
}

uint64_t sub_23DDDA220@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return sub_23DDD9D80(v3, v2, v4);
}

void sub_23DDDA248(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 24);
  v10 = *(a1 + 25);
  v11 = a1[4];
  v12 = sub_23DE05F68();
  v13 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  swift_beginAccess();

  sub_23DE05F38();
  v16 = v8;
  sub_23DE05F08();
  swift_endAccess();
  swift_beginAccess();
  v17 = *(v12 - 8);
  (*(v17 + 16))(v5, v13, v12);
  (*(v17 + 56))(v5, 0, 1, v12);
  sub_23DE05F88();
  v18 = v15;
  [v18 setEnabled_];
  if (!v10)
  {
    swift_beginAccess();
    v21 = v18;
    sub_23DE05F28();
    v23 = v22;
    swift_endAccess();
    if (!v23)
    {
      goto LABEL_10;
    }

    swift_beginAccess();
    v24 = sub_23DE05F28();
    v26 = v25;
    swift_endAccess();
    if (!v26)
    {
      __break(1u);
      return;
    }

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
LABEL_10:
      swift_beginAccess();
      v28 = sub_23DE05EF8();
      swift_endAccess();
      if (!v28)
      {
        goto LABEL_4;
      }
    }

    v20 = 0;
    goto LABEL_13;
  }

  v19 = v18;
LABEL_4:
  v20 = 1;
LABEL_13:
  [v18 setHidden_];

  v29 = *(v11 + 16);
  if (v29)
  {
    v48 = v18;
    v51 = MEMORY[0x277D84F90];
    sub_23DE06128();
    v50 = sub_23DDC91D0(0, &qword_27E326220, 0x277D750C8);
    v30 = (v11 + 72);
    v49 = xmmword_23DE07F10;
    v47 = v29;
    do
    {
      v32 = *(v30 - 5);
      v33 = *(v30 - 4);
      v34 = *(v30 - 3);
      v35 = *(v30 - 16);
      v36 = *(v30 - 15);
      v38 = *(v30 - 1);
      v37 = *v30;
      v39 = swift_allocObject();
      *(v39 + 16) = v32;
      *(v39 + 24) = v33;
      *(v39 + 32) = v34;
      *(v39 + 40) = v35;
      *(v39 + 41) = v36;
      *(v39 + 42) = v52;
      *(v39 + 46) = v53;
      *(v39 + 48) = v38;
      *(v39 + 56) = v37;
      v40 = v34;
      swift_bridgeObjectRetain_n();
      v41 = v40;
      swift_retain_n();
      v42 = v41;
      v43 = sub_23DE05DD8();
      if (v36 == 1)
      {
        sub_23DDC91D0(0, &qword_27E326228, 0x277D75710);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
        v44 = swift_allocObject();
        *(v44 + 16) = v49;
        *(v44 + 32) = v43;
        v45 = v43;
        sub_23DE05DA8();
      }

      v30 += 6;

      sub_23DE06108();
      v31 = *(v51 + 16);
      sub_23DE06138();
      sub_23DE06148();
      sub_23DE06118();
      --v29;
    }

    while (v29);
    sub_23DDC91D0(0, &qword_27E326228, 0x277D75710);
    v46 = sub_23DE05DA8();
    v18 = v48;
    [v48 setMenu_];

    v29 = v47;
  }

  else
  {
    [v18 setMenu_];
  }

  [v18 setShowsMenuAsPrimaryAction_];

  [v18 setPreferredMenuElementOrder_];
  [v18 setNeedsUpdateConfiguration];
  [v18 invalidateIntrinsicContentSize];
}

uint64_t sub_23DDDA7D0(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

void sub_23DDDA834(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23DDDA248(a1);
}

uint64_t sub_23DDDA83C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t getEnumTagSinglePayload for ConfigurationViewModel.ConfigurationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationViewModel.ConfigurationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DDDA9D4()
{
  result = qword_27E326230;
  if (!qword_27E326230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326230);
  }

  return result;
}

const char *sub_23DDDAA40()
{
  if (*v0)
  {
    return "SwiftUI";
  }

  else
  {
    return "OnBoardingKit";
  }
}

const char *sub_23DDDAA70()
{
  if (*v0)
  {
    return "Solarium";
  }

  else
  {
    return "NaturalUI";
  }
}

uint64_t sub_23DDDAAC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = a5;
  v44 = a4;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326238, &unk_23DE08BA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326240, &qword_23DE08418);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = sub_23DE05F68();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE05F78();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_23DDDB20C(v20);
  }

  (*(v22 + 32))(v25, v20, v21);
  v27 = a2;
  sub_23DE05EB8();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v42;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  v31 = v30;
  sub_23DE05348();
  v32 = sub_23DE05338();
  (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
  v33 = sub_23DE05DF8();
  sub_23DE05308();
  v33(v45, 0);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v36 = v43;
  v37 = v44;
  v35[3] = v44;
  v35[4] = v36;
  v38 = v36;
  v39 = v37;
  sub_23DE05368();
  v40 = sub_23DE05358();
  (*(*(v40 - 8) + 56))(v9, 0, 1, v40);
  sub_23DE05ED8();
  (*(v22 + 16))(v18, v25, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  sub_23DE05F88();
  return (*(v22 + 8))(v25, v21);
}

id sub_23DDDAF08(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isEnabled];

    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = a1;
    if (!v7)
    {
      v8 = a3;
    }
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

uint64_t sub_23DDDAFA4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_23DE05178();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v9 + 16);
  if (!Strong)
  {
    return v14(a4, a1, v8);
  }

  v15 = Strong;
  v14(v12, a1, v8);
  v16 = [v15 isEnabled];
  if (a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    a3 = a2;
  }

  v18 = a3;
  v20 = a3;
  sub_23DDDB288();
  sub_23DE05188();

  return (*(v9 + 32))(a4, v12, v8);
}

uint64_t sub_23DDDB130()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 38.0;
  if ((v0 & 1) == 0)
  {
    v2 = 24.0;
  }

  qword_27E326F10 = *&v2;
  return result;
}

uint64_t sub_23DDDB1A0()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 5.0;
  if (v0)
  {
    v2 = 10.0;
  }

  qword_27E326F18 = *&v2;
  return result;
}

uint64_t sub_23DDDB20C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DDDB288()
{
  result = qword_27E326248;
  if (!qword_27E326248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326248);
  }

  return result;
}

id sub_23DDDB2DC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for HighlightAnimatingMenuButton();
  objc_msgSendSuper2(&v9, sel_setNeedsLayout);
  v1 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker;
  result = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker];
  if (result)
  {
    return [result setNeedsLayout];
  }

  type metadata accessor for CommitTrackingView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 addSubview_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler];
  v6 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler];
  v7 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler + 8];
  *v5 = sub_23DDDC390;
  v5[1] = v4;

  sub_23DDCC0D8(v6);

  v8 = *&v0[v1];
  *&v0[v1] = v3;

  result = *&v0[v1];
  if (result)
  {
    return [result setNeedsLayout];
  }

  __break(1u);
  return result;
}

void sub_23DDDB3F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23DDDB494();
  }
}

id sub_23DDDB494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &aBlock - v3;
  if (sub_23DDDB778())
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 1;
    if ([v0 state] == 1)
    {
      v5 = 0.17;
    }

    else
    {
      v5 = 0.3;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v26 = sub_23DDDC318;
    v27 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_23DDD6170;
    v25 = &block_descriptor_1;
    v8 = _Block_copy(&aBlock);
    v9 = v0;

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v26 = sub_23DDDC35C;
    v27 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_23DDE3E94;
    v25 = &block_descriptor_26;
    v11 = _Block_copy(&aBlock);
    v12 = v9;

    [v6 transitionWithView:v12 duration:5242880 options:v8 animations:v11 completion:v5];
    _Block_release(v11);
    _Block_release(v8);
  }

  else if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] == 1)
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] = 1;
  }

  else
  {
    v13 = type metadata accessor for HighlightAnimatingMenuButton();
    v28.receiver = v0;
    v28.super_class = v13;
    objc_msgSendSuper2(&v28, sel_layoutSubviews);
  }

  v14 = [v0 state];
  *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState] = v14;
  sub_23DE05F78();
  v15 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  swift_beginAccess();
  sub_23DDDC2A8(v4, &v0[v15]);
  swift_endAccess();
  result = [v0 bounds];
  v17 = &v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  *v17 = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  return result;
}

uint64_t sub_23DDDB778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - v6;
  v8 = sub_23DE05F68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating])
  {
    return 0;
  }

  v16 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState];
  if ((v16 ^ (([v0 state] & 1) == 0)))
  {
    return 0;
  }

  v17 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  v18 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 8];
  v19 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 16];
  v20 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 24];
  [v0 bounds];
  v47.origin.x = v21;
  v47.origin.y = v22;
  v47.size.width = v23;
  v47.size.height = v24;
  v46.origin.x = v17;
  v46.origin.y = v18;
  v46.size.width = v19;
  v46.size.height = v20;
  result = CGRectEqualToRect(v46, v47);
  if (!result)
  {
    return result;
  }

  v26 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  swift_beginAccess();
  sub_23DDDC1EC(&v0[v26], v7);
  v27 = *(v9 + 48);
  if (v27(v7, 1, v8) == 1)
  {
    v28 = v7;
LABEL_8:
    sub_23DDDB20C(v28);
    return 0;
  }

  v29 = v7;
  v30 = *(v9 + 32);
  v30(v15, v29, v8);
  sub_23DE05F78();
  if (v27(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v28 = v5;
    goto LABEL_8;
  }

  v30(v13, v5, v8);
  v31 = sub_23DE05F28();
  v33 = v32;
  v34 = sub_23DE05F28();
  if (!v33)
  {
    if (!v35)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v35)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v31 == v34 && v33 == v35)
  {

    goto LABEL_20;
  }

  v37 = sub_23DE06318();

  if ((v37 & 1) == 0)
  {
LABEL_18:
    v36 = *(v9 + 8);
    v36(v13, v8);
    v36(v15, v8);
    return 0;
  }

LABEL_20:
  v38 = sub_23DE05EF8();
  v39 = sub_23DE05EF8();
  v40 = v39;
  if (!v38)
  {
    v43 = *(v9 + 8);
    v43(v13, v8);
    v43(v15, v8);
    if (v40)
    {

      return 0;
    }

    return 1;
  }

  if (!v39)
  {
    v44 = *(v9 + 8);
    v44(v13, v8);
    v44(v15, v8);

    return 0;
  }

  sub_23DDDC25C();
  v41 = sub_23DE05DC8();
  v42 = *(v9 + 8);
  v42(v13, v8);
  v42(v15, v8);

  return (v41 & 1) != 0;
}

id sub_23DDDBCE0(void *a1)
{
  v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 0;
  v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] = 0;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState] = 0;
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  v4 = sub_23DE05F68();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  *v5 = 0u;
  v5[1] = 0u;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HighlightAnimatingMenuButton();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_23DDDBDFC()
{
  sub_23DDDB20C(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration);
  v1 = *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker);
}

id sub_23DDDBE3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAnimatingMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightAnimatingMenuButton()
{
  result = qword_27E326280;
  if (!qword_27E326280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DDDBF14()
{
  sub_23DDDBFD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DDDBFD4()
{
  if (!qword_27E326290)
  {
    sub_23DE05F68();
    v0 = sub_23DE05FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E326290);
    }
  }
}

uint64_t sub_23DDDC1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDDC25C()
{
  result = qword_27E3262A0;
  if (!qword_27E3262A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3262A0);
  }

  return result;
}

uint64_t sub_23DDDC2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_23DDDC318()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for HighlightAnimatingMenuButton();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

_BYTE *sub_23DDDC35C()
{
  result = *(v0 + 16);
  result[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 0;
  if (result[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] == 1)
  {
    return [result setNeedsLayout];
  }

  return result;
}

id sub_23DDDC3A0(void *a1, __int128 *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277D7D7E8]);
  v8 = a1;
  v9 = [v7 init];
  v10 = [v8 intent];
  [v9 setIntent_];

  [v9 setWidgetConfigurationType_];
  if (*(a2 + 3))
  {
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);

    v13 = sub_23DE05A18();
  }

  else
  {
    v13 = 0;
  }

  [v9 setWidgetDisplayName_];

  if (*(a2 + 5))
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);

    v16 = sub_23DE05A18();
    v20 = *a2;
    sub_23DDD90F4(&v20);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v20 = *a2;
    sub_23DDD90F4(&v20);
    v16 = 0;
  }

  [v9 setWidgetDescription_];

  v19.receiver = v2;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithOptions_, v9);
  [v17 setDelegate_];

  return v17;
}

id sub_23DDDC60C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23DDDC744(char a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewIsAppearing_, a1 & 1);
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion;
  if (!*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion])
  {
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {
        v7 = [v6 _rootSheetPresentationController];

        if (v7)
        {
          [v7 _setShouldScaleDownBehindDescendantSheets_];
          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v9 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

          v10 = sub_23DE05A18();
          v11 = sub_23DE05A18();
          v15[4] = sub_23DDDCCDC;
          v15[5] = v8;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 1107296256;
          v15[2] = sub_23DDDCCE4;
          v15[3] = &block_descriptor_2;
          v12 = _Block_copy(v15);
          v13 = [v9 initWithIdentifier:v10 forReason:v11 invalidationBlock:v12];

          _Block_release(v12);

          v14 = *&v1[v3];
          *&v1[v3] = v13;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23DDDC96C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _setShouldScaleDownBehindDescendantSheets_];
  }
}

uint64_t sub_23DDDCA20(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion;
  v4 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion];
  if (v4)
  {
    [v4 invalidate];
    v5 = *&v1[v3];
  }

  *&v1[v3] = 0;
  return swift_unknownObjectRelease();
}

void sub_23DDDCAE4(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 _indexingHash];
  v7 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction;
  v8 = [*(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction) intent];
  if (v8 && (v9 = v8, v10 = [v8 _indexingHash], v9, v6 == v10))
  {
    v15 = 0;
  }

  else
  {
    v11 = *(v3 + v7);
    v15 = sub_23DDD96A0(a2);
  }

  v12 = v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler;
  v13 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler);
  if (v13)
  {
    v14 = *(v12 + 8);

    v13(v15);
    sub_23DDD71FC(v13, v14);
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_23DDDCCE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_23DDDCD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI27ControlPickerViewController_completionHandler];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = objc_allocWithZone(MEMORY[0x277CFC9F0]);

  v15 = [v14 init];
  sub_23DE05D88();
  if (sub_23DDDD688())
  {
    sub_23DDC91D0(0, &qword_27E3263C0, 0x277CFA228);
    v16 = sub_23DE05AE8();
  }

  else
  {
    v16 = 0;
  }

  [v15 setDisallowedControlIdentities_];

  sub_23DE05CF8();
  sub_23DE05248();
  sub_23DE05248();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = sub_23DE05CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DE07F10;
  *(v19 + 32) = v18;
  v20 = sub_23DE05AE8();

  [v15 setDisallowedExtensionIdentities_];

  if (sub_23DDDDD20())
  {
    sub_23DE05D48();
    v21 = sub_23DE05AE8();
  }

  else
  {
    v21 = 0;
  }

  [v15 setSuggestedControls_];

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v24, sel_initWithConfiguration_, v15);
  [v22 setDelegate_];

  return v22;
}

void sub_23DDDD098(void *a1, void *a2, id a3)
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else if (a2)
  {
    sub_23DDC91D0(0, &qword_27E3263C8, 0x277D79E60);
    v9 = a2;
    v7 = sub_23DDD93D4([v9 control]);
    v10 = v7;
    v6 = [v9 promptsForUserConfiguration];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI27ControlPickerViewController_completionHandler);
  v12 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI27ControlPickerViewController_completionHandler + 8);
  v13 = a3;
  v14 = a3;

  v15 = v11(v7, a3 != 0);
  v17 = v16;

  sub_23DDD6EB4(v7);
  if (v6)
  {
    sub_23DDD6EA4(v15);
    v18 = v15;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = [a1 presentingViewController];
  if (v20)
  {
    v21 = v20;
    if (v18)
    {
      v23[4] = v18;
      v23[5] = v19;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_23DDD6170;
      v23[3] = &block_descriptor_3;
      v22 = _Block_copy(v23);
    }

    else
    {
      v22 = 0;
    }

    [v21 dismissViewControllerAnimated:1 completion:v22];
    sub_23DDD6EB4(v7);
    sub_23DDCC0D8(v15);
    sub_23DDCC0D8(v18);
    _Block_release(v22);
  }

  else
  {
    sub_23DDD6EB4(v7);
    sub_23DDCC0D8(v15);

    sub_23DDCC0D8(v18);
  }
}

id sub_23DDDD42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  if (a4)
  {

    sub_23DE05248();
    sub_23DDDE344(v15);
    v17(v13, 0, 1, v16);
    sub_23DDDE3AC(v13, v15);
  }

  sub_23DE05CF8();

  sub_23DE05248();
  sub_23DDDE2D4(v15, v13);
  v18 = sub_23DE05CE8();
  v19 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v20 = sub_23DE05A18();
  v21 = [v19 initWithExtensionIdentity:v18 kind:v20 intent:{0, v23, v24}];

  sub_23DDDE344(v15);
  return v21;
}

uint64_t sub_23DDDD688()
{
  v22 = MEMORY[0x277D84F90];
  v0 = sub_23DDDD42C(0xD00000000000001DLL, 0x800000023DE0A900, 0xD000000000000010, 0x800000023DE0A920, 0xD00000000000002BLL, 0x800000023DE0A940);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  v21 = v0;
  sub_23DE05B38();
  v1 = sub_23DDDD42C(0xD000000000000029, 0x800000023DE0A970, 0xD000000000000010, 0x800000023DE0A9A0, 0xD000000000000020, 0x800000023DE0A9C0);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v2 = sub_23DDDD42C(0xD000000000000036, 0x800000023DE0A850, 0xD000000000000015, 0x800000023DE0A890, 0xD000000000000041, 0x800000023DE0A9F0);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  v20 = v2;
  sub_23DE05B38();
  v3 = sub_23DDDD42C(0xD000000000000036, 0x800000023DE0A850, 0xD000000000000015, 0x800000023DE0A890, 0xD000000000000041, 0x800000023DE0AA40);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v4 = sub_23DDDD42C(0xD000000000000021, 0x800000023DE0AA90, 0xD000000000000014, 0x800000023DE0AAC0, 0xD000000000000037, 0x800000023DE0AAE0);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v5 = sub_23DDDD42C(0xD000000000000033, 0x800000023DE0AB20, 0xD00000000000001ALL, 0x800000023DE0AB60, 0xD00000000000003ALL, 0x800000023DE0AB80);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v6 = sub_23DDDD42C(0xD000000000000026, 0x800000023DE0ABC0, 0xD000000000000013, 0x800000023DE0ABF0, 0xD000000000000031, 0x800000023DE0AC10);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v7 = sub_23DDDD42C(0xD000000000000023, 0x800000023DE0AC50, 0xD000000000000013, 0x800000023DE0AC80, 0x437070416E65704FLL, 0xEE006C6F72746E6FLL);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v8 = sub_23DDDD42C(0xD000000000000023, 0x800000023DE0AC50, 0xD000000000000013, 0x800000023DE0AC80, 0xD000000000000010, 0x800000023DE0ACA0);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v9 = sub_23DDDD42C(0xD00000000000002CLL, 0x800000023DE0ACC0, 0xD000000000000013, 0x800000023DE0ACF0, 0xD000000000000028, 0x800000023DE0AD10);
  MEMORY[0x23EF00460]();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();

  return v22;
}