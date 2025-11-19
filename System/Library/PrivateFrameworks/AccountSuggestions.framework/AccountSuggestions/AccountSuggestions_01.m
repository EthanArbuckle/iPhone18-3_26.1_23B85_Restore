uint64_t sub_23DC7A130(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_23DC82C90();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_23DC7A1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE70, &qword_23DC838A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE78, &qword_23DC838B0);
    v8 = sub_23DC82EC0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23DC7C224(v10, v6, &qword_27E30CE70, &qword_23DC838A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23DC7F118(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AccountSuggestion();
      result = sub_23DC7A6E8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23DC7A3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE60, &qword_23DC83898);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE68, &qword_23DC838A0);
    v8 = sub_23DC82EC0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23DC7C224(v10, v6, &qword_27E30CE60, &qword_23DC83898);
      v12 = *v6;
      v13 = v6[1];
      result = sub_23DC7F118(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_23DC82A40();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_23DC7A5E8()
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

uint64_t sub_23DC7A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DC7A68C(uint64_t a1)
{
  v2 = type metadata accessor for AccountSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DC7A6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSuggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DC7A754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DC7A79C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23DC7A804()
{
  v1 = *(type metadata accessor for AccountSuggestion() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23DC6B9F8(v2, v3);
}

uint64_t sub_23DC7A86C()
{
  v1 = *(type metadata accessor for AccountSuggestion() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = *(v3 + *(v1 + 64));

  return sub_23DC712BC(v2, v3, v4);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for AccountSuggestionManager()
{
  result = qword_281303DD0;
  if (!qword_281303DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DC7A9B0()
{
  sub_23DC7B0E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DC7B0E0()
{
  if (!qword_281303A38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30CDB0, &qword_23DC83670);
    v0 = sub_23DC82B40();
    if (!v1)
    {
      atomic_store(v0, qword_281303A38);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountSuggestionManager.Flags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccountSuggestionManager.Flags(_WORD *result, int a2, int a3)
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

unint64_t sub_23DC7B238()
{
  result = qword_27E30CDD8;
  if (!qword_27E30CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30CDD8);
  }

  return result;
}

unint64_t sub_23DC7B28C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE40, &qword_23DC83878);
    v3 = sub_23DC82EC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DC7C224(v4, &v13, &qword_27E30CE48, &qword_23DC83880);
      v5 = v13;
      v6 = v14;
      result = sub_23DC7F118(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23DC7BDA4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_23DC7B3BC()
{
  v1 = v0;
  v2 = sub_23DC82B50();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DC82B80();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DC82AB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281303DE8);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_23DC82A90();
  v17 = sub_23DC82D40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23DC66000, v16, v17, "reload delay", v18, 2u);
    MEMORY[0x23EEFC160](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v19 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  aBlock[4] = sub_23DC7C0DC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_105;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  sub_23DC82B60();
  v27 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v9, v5, v20);
  _Block_release(v20);

  (*(v26 + 8))(v5, v2);
  (*(v24 + 8))(v9, v25);
}

uint64_t sub_23DC7B7E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
    v3 = sub_23DC82E50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_23DC82F40();

      sub_23DC82C70();
      result = sub_23DC82F60();
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
          result = sub_23DC82EF0();
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

BOOL sub_23DC7B948(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DC83590;
  v3 = *MEMORY[0x277CB8E78];
  *(inited + 32) = sub_23DC82C50();
  *(inited + 40) = v4;
  *(inited + 48) = 0x656D616E72657375;
  *(inited + 56) = 0xE800000000000000;
  v5 = sub_23DC7B7E0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_23DC835A0;
  v7 = *MEMORY[0x277CB8AB8];
  *(v6 + 32) = sub_23DC82C50();
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x277CB8AB0];
  *(v6 + 48) = sub_23DC82C50();
  *(v6 + 56) = v10;
  v11 = *MEMORY[0x277CB8B08];
  *(v6 + 64) = sub_23DC82C50();
  *(v6 + 72) = v12;
  v13 = *MEMORY[0x277CB8AF0];
  *(v6 + 80) = sub_23DC82C50();
  *(v6 + 88) = v14;
  v15 = *MEMORY[0x277CB8B10];
  *(v6 + 96) = sub_23DC82C50();
  *(v6 + 104) = v16;
  v17 = *MEMORY[0x277CB8AE8];
  *(v6 + 112) = sub_23DC82C50();
  *(v6 + 120) = v18;
  v19 = *MEMORY[0x277CB8AC8];
  *(v6 + 128) = sub_23DC82C50();
  *(v6 + 136) = v20;
  v21 = *MEMORY[0x277CB8B20];
  *(v6 + 144) = sub_23DC82C50();
  *(v6 + 152) = v22;
  v23 = *MEMORY[0x277CB8B60];
  *(v6 + 160) = sub_23DC82C50();
  *(v6 + 168) = v24;
  v25 = *MEMORY[0x277CB8B48];
  *(v6 + 176) = sub_23DC82C50();
  *(v6 + 184) = v26;
  v27 = *MEMORY[0x277CB8B50];
  *(v6 + 192) = sub_23DC82C50();
  *(v6 + 200) = v28;
  v29 = *MEMORY[0x277CB8A68];
  *(v6 + 208) = sub_23DC82C50();
  *(v6 + 216) = v30;
  v31 = *MEMORY[0x277CB8A70];
  *(v6 + 224) = sub_23DC82C50();
  *(v6 + 232) = v32;
  v33 = *MEMORY[0x277CB8B68];
  *(v6 + 240) = sub_23DC82C50();
  *(v6 + 248) = v34;
  v35 = *MEMORY[0x277CB8A80];
  *(v6 + 256) = sub_23DC82C50();
  *(v6 + 264) = v36;
  v37 = *MEMORY[0x277CB8A78];
  *(v6 + 272) = sub_23DC82C50();
  *(v6 + 280) = v38;
  v39 = *MEMORY[0x277CB8B30];
  *(v6 + 288) = sub_23DC82C50();
  *(v6 + 296) = v40;
  v41 = *MEMORY[0x277CB8B38];
  *(v6 + 304) = sub_23DC82C50();
  *(v6 + 312) = v42;
  v43 = *MEMORY[0x277CB8B40];
  *(v6 + 320) = sub_23DC82C50();
  *(v6 + 328) = v44;
  v45 = *MEMORY[0x277CB8AD0];
  *(v6 + 336) = sub_23DC82C50();
  *(v6 + 344) = v46;
  v47 = *MEMORY[0x277CB8AD8];
  *(v6 + 352) = sub_23DC82C50();
  *(v6 + 360) = v48;
  v49 = *MEMORY[0x277CB8AE0];
  *(v6 + 368) = sub_23DC82C50();
  *(v6 + 376) = v50;
  v51 = *MEMORY[0x277CB8B58];
  *(v6 + 384) = sub_23DC82C50();
  *(v6 + 392) = v52;
  v53 = *MEMORY[0x277CB8AA8];
  *(v6 + 400) = sub_23DC82C50();
  *(v6 + 408) = v54;
  v55 = *MEMORY[0x277CB8A98];
  *(v6 + 416) = sub_23DC82C50();
  *(v6 + 424) = v56;
  v57 = sub_23DC7B7E0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = [a1 dirtyProperties];
  if (v58)
  {
    v59 = v58;
    v60 = sub_23DC82D10();

    v61 = sub_23DC79B68(v5, v60);

    v62 = *(v61 + 16);

    if (v62)
    {

      return 1;
    }
  }

  else
  {
  }

  v64 = [a1 dirtyAccountProperties];
  if (v64)
  {
    v65 = v64;
    v66 = sub_23DC82D10();

    v67 = sub_23DC79B68(v57, v66);

    v68 = *(v67 + 16);

    return v68 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_23DC7BD48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_23DC7BDA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23DC7BE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSuggestion();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DC7BEAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_23DC7BF10()
{
  result = qword_281303A28;
  if (!qword_281303A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281303A28);
  }

  return result;
}

uint64_t sub_23DC7BF64(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DC82EF0() & 1;
  }
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_281303A00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281303A00);
    }
  }
}

uint64_t objectdestroy_95Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DC7C068()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23DC6EC58();
}

uint64_t sub_23DC7C074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DC7C0F4(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[1] = *a1;
  return v2(sub_23DC7C144, v5);
}

uint64_t sub_23DC7C144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23DC7C16C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DC7C224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
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

uint64_t AccountSuggestion.init(with:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = sub_23DC82AB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSuggestion();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  v74 = v9[14];
  *(v74 + v13) = 0;
  if (*(a1 + 16))
  {
    v15 = sub_23DC7F118(0x4449657571696E75, 0xE800000000000000);
    if (v16)
    {
      sub_23DC7BD48(*(a1 + 56) + 32 * v15, v77);
      if (swift_dynamicCast())
      {
        v17 = a1;
        v18 = v10;
        v19 = a2;
        v20 = v76;
        if (*(v17 + 16))
        {
          v73 = v75;
          v21 = sub_23DC7F118(0xD000000000000015, 0x800000023DC840B0);
          if (v22)
          {
            sub_23DC7BD48(*(v17 + 56) + 32 * v21, v77);
            if (swift_dynamicCast())
            {
              if (*(v17 + 16))
              {
                v71 = v75;
                v72 = v76;
                v23 = sub_23DC7F118(0x656D616E72657375, 0xE800000000000000);
                if (v24)
                {
                  sub_23DC7BD48(*(v17 + 56) + 32 * v23, v77);
                  if (swift_dynamicCast())
                  {
                    v25 = v75;
                    v26 = v76;
                    *v13 = v73;
                    v13[1] = v20;
                    v27 = v72;
                    v13[2] = v71;
                    v13[3] = v27;
                    v13[4] = v25;
                    v13[5] = v26;
                    v28 = *(v17 + 16);
                    if (v28)
                    {
                      v29 = sub_23DC7F118(0x4E79616C70736964, 0xEB00000000656D61);
                      v30 = v19;
                      if (v31)
                      {
                        v32 = v17;
                        sub_23DC7BD48(*(v17 + 56) + 32 * v29, v77);
                        v33 = swift_dynamicCast();
                        v28 = v75;
                        v34 = v76;
                        if (!v33)
                        {
                          v28 = 0;
                          v34 = 0;
                        }
                      }

                      else
                      {
                        v32 = v17;
                        v28 = 0;
                        v34 = 0;
                      }
                    }

                    else
                    {
                      v32 = v17;
                      v34 = 0;
                      v30 = v19;
                    }

                    v13[6] = v28;
                    v13[7] = v34;
                    v52 = v32;
                    if (*(v32 + 16) && (v53 = sub_23DC7F118(0x6E6F697461657263, 0xEC00000065746144), (v54 & 1) != 0) && (sub_23DC7BD48(*(v32 + 56) + 32 * v53, v77), (swift_dynamicCast() & 1) != 0))
                    {
                      v55 = v13 + v9[8];
                      sub_23DC82A10();
                    }

                    else
                    {
                      v56 = v13 + v9[8];
                      sub_23DC82A30();
                    }

                    if (*(v32 + 16) && (v57 = sub_23DC7F118(0x656372756F73, 0xE600000000000000), (v58 & 1) != 0) && (sub_23DC7BD48(*(v32 + 56) + 32 * v57, v77), (swift_dynamicCast() & 1) != 0))
                    {
                      v59 = v75;
                      if (v75 >= 3)
                      {
                        v59 = 2;
                      }
                    }

                    else
                    {
                      v59 = 2;
                    }

                    *(v13 + v9[9]) = v59;
                    if (*(v32 + 16) && (v60 = sub_23DC7F118(0xD000000000000014, 0x800000023DC840D0), (v61 & 1) != 0) && (sub_23DC7BD48(*(v32 + 56) + 32 * v60, v77), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE58, &qword_23DC83890), (swift_dynamicCast() & 1) != 0))
                    {
                      v62 = v75;
                    }

                    else
                    {
                      v62 = MEMORY[0x277D84F90];
                    }

                    v63 = sub_23DC82404(v62);

                    *(v13 + v9[10]) = v63;
                    if (*(v52 + 16) && (v64 = sub_23DC7F118(0x69747265706F7270, 0xEA00000000007365), (v65 & 1) != 0) && (sub_23DC7BD48(*(v52 + 56) + 32 * v64, v77), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950), (swift_dynamicCast() & 1) != 0))
                    {
                      v66 = v75;
                    }

                    else
                    {
                      v66 = sub_23DC7B28C(MEMORY[0x277D84F90]);
                    }

                    *(v13 + v9[11]) = v66;
                    if (*(v52 + 16) && (v67 = sub_23DC7F118(0x676E696F6774756FLL, 0xEF746E756F636341), (v68 & 1) != 0) && (sub_23DC7BD48(*(v52 + 56) + 32 * v67, v77), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950), (swift_dynamicCast() & 1) != 0))
                    {
                      v69 = v75;
                    }

                    else
                    {
                      v69 = sub_23DC7B28C(MEMORY[0x277D84F90]);
                    }

                    v70 = v9[13];
                    *(v13 + v9[12]) = v69;
                    *(v13 + v70) = v52;
                    *(v74 + v13) = sub_23DC7E284() & 1;
                    sub_23DC7A628(v13, v30);
                    (*(v18 + 56))(v30, 0, 1, v9);
                    return sub_23DC7A68C(v13);
                  }
                }
              }
            }
          }
        }

        a2 = v19;
        v10 = v18;
      }
    }
  }

  v35 = v4;
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v4, qword_281303DE8);
  swift_beginAccess();
  v37 = v5;
  (*(v5 + 16))(v8, v36, v35);

  v38 = sub_23DC82A90();
  v39 = sub_23DC82D40();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v73 = a2;
    v74 = v9;
    v41 = v40;
    v42 = swift_slowAlloc();
    v72 = v14;
    v43 = v42;
    v75 = v42;
    *v41 = 136315138;
    v44 = sub_23DC82C20();
    v71 = v35;
    v45 = v44;
    v46 = v10;
    v48 = v47;

    v49 = sub_23DC7EAC4(v45, v48, &v75);
    v10 = v46;

    *(v41 + 4) = v49;
    _os_log_impl(&dword_23DC66000, v38, v39, "unable to initialize with dictionary: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x23EEFC160](v43, -1, -1);
    v50 = v41;
    a2 = v73;
    v9 = v74;
    MEMORY[0x23EEFC160](v50, -1, -1);

    (*(v37 + 8))(v8, v71);
  }

  else
  {

    (*(v37 + 8))(v8, v35);
  }

  return (*(v10 + 56))(a2, 1, 1, v9);
}

uint64_t AccountSuggestion.dictionaryRepresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for AccountSuggestion();
  v3 = *(v0 + v2[13]);
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D837D0];
  *&v42 = v4;
  *(&v42 + 1) = v5;
  sub_23DC7BDA4(&v42, v45);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v3;
  sub_23DC80858(v45, 0x4449657571696E75, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v46;
  v9 = v1[2];
  v10 = v1[3];
  v43 = v6;
  *&v42 = v9;
  *(&v42 + 1) = v10;
  sub_23DC7BDA4(&v42, v45);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v46 = v8;
  sub_23DC80858(v45, 0xD000000000000015, 0x800000023DC840B0, v11);
  v12 = v46;
  v13 = v1[4];
  v14 = v1[5];
  v43 = v6;
  *&v42 = v13;
  *(&v42 + 1) = v14;
  sub_23DC7BDA4(&v42, v45);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v12;
  sub_23DC80858(v45, 0x656D616E72657375, 0xE800000000000000, v15);
  v16 = v44;
  v46 = v44;
  v17 = v1[7];
  if (v17)
  {
    v18 = v1[6];
    v43 = v6;
    *&v42 = v18;
    *(&v42 + 1) = v17;
    sub_23DC7BDA4(&v42, v45);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    sub_23DC80858(v45, 0x4E79616C70736964, 0xEB00000000656D61, v19);
    v20 = v44;
  }

  else
  {
    sub_23DC7F354(0x4E79616C70736964, 0xEB00000000656D61, &v42);
    sub_23DC7C16C(&v42, &qword_27E30CDE0, &qword_23DC83960);
    v20 = v46;
  }

  v21 = v1 + v2[8];
  sub_23DC82A20();
  v43 = MEMORY[0x277D839F8];
  *&v42 = v22;
  sub_23DC7BDA4(&v42, v45);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v20;
  sub_23DC80858(v45, 0x6E6F697461657263, 0xEC00000065746144, v23);
  v24 = v44;
  v25 = *(v1 + v2[9]);
  v43 = MEMORY[0x277D83B88];
  *&v42 = v25;
  sub_23DC7BDA4(&v42, v45);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v24;
  sub_23DC80858(v45, 0x656372756F73, 0xE600000000000000, v26);
  v41 = v44;
  v27 = *(v1 + v2[10]);
  v28 = *(v27 + 16);
  if (!v28)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_8:
    *&v42 = v29;
    sub_23DC8164C(&v42);
    v31 = sub_23DC82CE0();

    v43 = sub_23DC7BEAC(0, &qword_2813039F8, 0x277CBEA60);
    *&v42 = v31;
    sub_23DC7BDA4(&v42, v45);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v41;
    sub_23DC80858(v45, 0xD000000000000014, 0x800000023DC840D0, v32);
    v33 = v44;
    v34 = *(v1 + v2[11]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950);
    v43 = v35;
    *&v42 = v34;
    sub_23DC7BDA4(&v42, v45);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v33;
    sub_23DC80858(v45, 0x69747265706F7270, 0xEA00000000007365, v36);
    v37 = v44;
    v38 = *(v1 + v2[12]);
    v43 = v35;
    *&v42 = v38;
    sub_23DC7BDA4(&v42, v45);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v37;
    sub_23DC80858(v45, 0x676E696F6774756FLL, 0xEF746E756F636341, v39);
    return v44;
  }

  v29 = sub_23DC7E8C0(v28, 0);
  v30 = sub_23DC822AC(&v42, v29 + 4, v28, v27);

  sub_23DC7C00C();
  if (v30 == v28)
  {
    goto LABEL_8;
  }

  __break(1u);

  __break(1u);
  return result;
}

id AccountSuggestion.init(with:computerID:source:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a3;
  v82 = a5;
  v8 = sub_23DC82AB0();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DC82A70();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountSuggestion();
  v84 = *(v16 - 8);
  v17 = *(v84 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *a4;
  v21 = *(v18 + 52);
  v83 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  v78 = v21;
  *&v20[v21] = v83;
  v85 = v16;
  v77 = *(v16 + 56);
  v20[v77] = 0;
  v22 = a1;
  result = [a1 accountType];
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result identifier];

  if (v25)
  {
    v76 = a2;
    v26 = sub_23DC82C50();
    v28 = v27;

    v29 = [a1 username];
    if (v29)
    {
      v30 = v29;
      v31 = sub_23DC82C50();
      v33 = v32;

      sub_23DC82A60();
      v34 = sub_23DC82A50();
      v36 = v35;
      (*(v80 + 8))(v15, v12);
      *v20 = v34;
      *(v20 + 1) = v36;
      v81 = v26;
      *(v20 + 2) = v26;
      *(v20 + 3) = v28;
      *(v20 + 4) = v31;
      *(v20 + 5) = v33;
      v37 = v85;
      v20[v85[9]] = v79;
      *(v20 + 3) = xmmword_23DC83940;
      v38 = v37[8];

      sub_23DC82A30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23DC83570;
      *(inited + 32) = v76;
      *(inited + 40) = v86;

      v40 = sub_23DC82404(inited);
      swift_setDeallocating();
      sub_23DC7C1CC(inited + 32);
      *&v20[v37[10]] = v40;
      v41 = [a1 accountProperties];
      if (!v41 || (*&v89[0] = 0, v42 = v41, sub_23DC82C00(), v42, (v43 = *&v89[0]) == 0))
      {
        v43 = sub_23DC7B28C(MEMORY[0x277D84F90]);
      }

      *&v20[v37[11]] = v43;
      v44 = *MEMORY[0x277CB8C60];
      v45 = sub_23DC82C50();
      v47 = v81;
      if (v81 != v45 || v28 != v46)
      {
        v57 = sub_23DC82EF0();

        if (v57)
        {
          goto LABEL_18;
        }

        v67 = *MEMORY[0x277CB8CD8];
        if (v47 != sub_23DC82C50() || v28 != v68)
        {
          v69 = sub_23DC82EF0();

          if ((v69 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }
      }

LABEL_18:

LABEL_19:
      v58 = *MEMORY[0x277CB8B58];
      *&v87 = sub_23DC82C50();
      *(&v87 + 1) = v59;
      v60 = [a1 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v60)
      {
        sub_23DC82DE0();
        swift_unknownObjectRelease();
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
      }

      v89[0] = v87;
      v89[1] = v88;
      if (!*(&v88 + 1))
      {

        sub_23DC7C16C(v89, &qword_27E30CDE0, &qword_23DC83960);
        goto LABEL_34;
      }

      if (swift_dynamicCast())
      {
        result = [objc_opt_self() defaultStore];
        if (result)
        {
          v61 = result;

          v62 = sub_23DC82C40();

          v63 = [v61 accountWithIdentifier_];

          if (v63)
          {
            v64 = [v63 accountProperties];
            if (v64 && (*&v89[0] = 0, v65 = v64, sub_23DC82C00(), v65, *&v89[0]))
            {
              v66 = *&v89[0];
            }

            else
            {
              v66 = sub_23DC7B28C(MEMORY[0x277D84F90]);
            }

            v70 = v66;
            goto LABEL_35;
          }

LABEL_34:
          v70 = sub_23DC7B28C(MEMORY[0x277D84F90]);
LABEL_35:
          v71 = v84;
          v72 = v78;
          *&v20[v37[12]] = v70;
          v73 = AccountSuggestion.dictionaryRepresentation()();

          *&v20[v72] = v73;
          v20[v77] = 1;
          v74 = v82;
          sub_23DC7A628(v20, v82);
          (*(v71 + 56))(v74, 0, 1, v37);
          return sub_23DC7A68C(v20);
        }

        goto LABEL_39;
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v48 = v82;
  v49 = __swift_project_value_buffer(v8, qword_281303DE8);
  swift_beginAccess();
  v50 = v81;
  (*(v81 + 16))(v11, v49, v8);
  v51 = v22;
  v52 = sub_23DC82A90();
  v53 = sub_23DC82D40();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_23DC66000, v52, v53, "unable to initialize with the acount: %@", v54, 0xCu);
    sub_23DC7C16C(v55, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v55, -1, -1);
    MEMORY[0x23EEFC160](v54, -1, -1);
  }

  else
  {
    v56 = v52;
    v52 = v51;
  }

  (*(v50 + 8))(v11, v8);

  return (*(v84 + 56))(v48, 1, 1, v85);
}

void ACAccount.init(accountType:suggestion:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountType_];
  if (!v3)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v3;
  v7 = sub_23DC82C40();
  [v6 setUsername_];

  v24 = a2;
  v8 = *(a2 + *(type metadata accessor for AccountSuggestion() + 44));
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (!v11)
  {
LABEL_6:
    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        goto LABEL_14;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  while (1)
  {
    v14 = v13;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v8 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    sub_23DC7BD48(*(v8 + 56) + 32 * v18, v26);
    *&v27 = v20;
    *(&v27 + 1) = v21;
    sub_23DC7BDA4(v26, &v28);

    v16 = v14;
LABEL_14:
    v30 = v27;
    v31[0] = v28;
    v31[1] = v29;
    if (!*(&v27 + 1))
    {
      break;
    }

    sub_23DC7BDA4(v31, &v27);
    __swift_project_boxed_opaque_existential_0(&v27, *(&v28 + 1));
    v22 = sub_23DC82EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    v23 = sub_23DC82C40();

    [v6 setAccountProperty:v22 forKey:{v23, v24}];
    swift_unknownObjectRelease();

    v13 = v16;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  sub_23DC7A68C(v24);
}

uint64_t static AccountSuggestion.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DC82EF0();
  }
}

AccountSuggestions::AccountSuggestion::Source_optional __swiftcall AccountSuggestion.Source.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for AccountSuggestion()
{
  result = qword_281303ED8;
  if (!qword_281303ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DC7DCE0()
{
  v1 = *v0;
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](v1);
  return sub_23DC82F60();
}

uint64_t sub_23DC7DD54()
{
  v1 = *v0;
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](v1);
  return sub_23DC82F60();
}

uint64_t AccountSuggestion.accountTypeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AccountSuggestion.username.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AccountSuggestion.displayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AccountSuggestion.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountSuggestion() + 32);
  v4 = sub_23DC82A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountSuggestion.computersWithAccount.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountSuggestion() + 40));
}

uint64_t AccountSuggestion.computersWithAccount.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountSuggestion() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccountSuggestion.propertiesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountSuggestion() + 44));
}

uint64_t AccountSuggestion.propertiesDictionary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountSuggestion() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccountSuggestion.outgoingAccountProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountSuggestion() + 48));
}

uint64_t AccountSuggestion.outgoingAccountProperties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountSuggestion() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccountSuggestion.hasAccountLocally.setter(char a1)
{
  result = type metadata accessor for AccountSuggestion();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_23DC7E284()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23DC83570;
  v4 = *(v0 + 24);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 40) = v4;

  v5 = sub_23DC82CE0();

  v17[0] = 0;
  v6 = [v2 accountsWithAccountTypeIdentifiers:v5 error:v17];

  v7 = v17[0];
  if (!v6)
  {
    v13 = v17[0];
    v14 = sub_23DC829E0();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_23DC7BEAC(0, &qword_2813039F0, 0x277CB8F30);
  v8 = sub_23DC82CF0();
  v9 = v7;

  MEMORY[0x28223BE20](v10);
  v16[2] = v0;
  v11 = sub_23DC7E50C(sub_23DC8299C, v16, v8);

  if (!v11)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = 1;
LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23DC7E464(id *a1, uint64_t a2)
{
  v3 = [*a1 username];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23DC82C50();
    v7 = v6;

    if (v5 == *(a2 + 32) && v7 == *(a2 + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_23DC82EF0();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *sub_23DC7E50C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DC82E90())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEFBB70](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

NSArray __swiftcall AccountSuggestion.sortedComputers()()
{
  v1 = *(v0 + *(type metadata accessor for AccountSuggestion() + 40));
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23DC7E8C0(*(v1 + 16), 0);
  v4 = sub_23DC822AC(&v7, v3 + 4, v2, v1);

  sub_23DC7C00C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_23DC8164C(&v7);
  v5 = sub_23DC82CE0();

  return v5;
}

uint64_t AccountSuggestion.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AccountSuggestion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DC82C70();
}

uint64_t AccountSuggestion.hashValue.getter()
{
  sub_23DC82F40();
  v1 = *v0;
  v2 = v0[1];
  sub_23DC82C70();
  return sub_23DC82F60();
}

uint64_t sub_23DC7E7AC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23DC7E7B8()
{
  sub_23DC82F40();
  v1 = *v0;
  v2 = v0[1];
  sub_23DC82C70();
  return sub_23DC82F60();
}

uint64_t sub_23DC7E7FC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DC82C70();
}

uint64_t sub_23DC7E804()
{
  sub_23DC82F40();
  v1 = *v0;
  v2 = v0[1];
  sub_23DC82C70();
  return sub_23DC82F60();
}

uint64_t sub_23DC7E844(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DC82EF0();
  }
}

uint64_t sub_23DC7E874(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_23DC7E8C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_23DC7E944(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
  v4 = *(type metadata accessor for AccountSuggestion() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DC7EA68(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23DC7EAC4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23DC7EAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DC7EB90(v11, 0, 0, 1, a1, a2);
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
    sub_23DC7BD48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23DC7EB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DC7EC9C(a5, a6);
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
    result = sub_23DC82E80();
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

uint64_t sub_23DC7EC9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DC7ECE8(a1, a2);
  sub_23DC7EE18(&unk_2850043F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DC7ECE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23DC7EF04(v5, 0);
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

  result = sub_23DC82E80();
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
        v10 = sub_23DC82CB0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DC7EF04(v10, 0);
        result = sub_23DC82E60();
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

uint64_t sub_23DC7EE18(uint64_t result)
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

  result = sub_23DC7EF78(result, v12, 1, v3);
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

void *sub_23DC7EF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE98, &qword_23DC83B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DC7EF78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE98, &qword_23DC83B60);
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

_BYTE **sub_23DC7F06C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_23DC7F0A4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_23DC7F118(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23DC82F40();
  sub_23DC82C70();
  v6 = sub_23DC82F60();

  return sub_23DC7F1D4(a1, a2, v6);
}

unint64_t sub_23DC7F190(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23DC82E10();

  return sub_23DC7F28C(a1, v5);
}

unint64_t sub_23DC7F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23DC82EF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23DC7F28C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23DC828EC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEFBB20](v9, a1);
      sub_23DC82948(v9);
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

double sub_23DC7F354@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23DC7F118(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23DC80E88();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23DC7BDA4((*(v12 + 56) + 32 * v9), a3);
    sub_23DC80304(v9, v12);
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

uint64_t sub_23DC7F3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23DC7F118(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23DC8102C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for AccountSuggestion();
    v22 = *(v15 - 8);
    sub_23DC7A6E8(v14 + *(v22 + 72) * v9, a3);
    sub_23DC804B4(v9, v12, type metadata accessor for AccountSuggestion);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AccountSuggestion();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23DC7F564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23DC7F118(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23DC8125C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_23DC82A40();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_23DC804B4(v9, v12, MEMORY[0x277CC9578]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23DC82A40();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23DC7F6E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE40, &qword_23DC83878);
  v36 = a2;
  result = sub_23DC82EB0();
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
        sub_23DC7BDA4(v25, v37);
      }

      else
      {
        sub_23DC7BD48(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
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
      result = sub_23DC7BDA4(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_23DC7F9A0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AccountSuggestion();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE78, &qword_23DC838B0);
  v44 = a2;
  result = sub_23DC82EB0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_23DC7A6E8(v31, v45);
      }

      else
      {
        sub_23DC7A628(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_23DC7A6E8(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23DC7FCDC(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_23DC82A40();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE68, &qword_23DC838A0);
  v46 = a2;
  result = sub_23DC82EB0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23DC8005C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE90, &unk_23DC83B50);
  v38 = a2;
  result = sub_23DC82EB0();
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
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
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

uint64_t sub_23DC80304(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DC82E00() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23DC82F40();

      sub_23DC82C70();
      v14 = sub_23DC82F60();

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

unint64_t sub_23DC804B4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_23DC82E00() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_23DC82F40();

      sub_23DC82C70();
      v15 = sub_23DC82F60();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23DC806A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DC82E00() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23DC82F40();

      sub_23DC82C70();
      v13 = sub_23DC82F60();

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

_OWORD *sub_23DC80858(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DC7F118(a2, a3);
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
      sub_23DC80E88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23DC7F6E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23DC7F118(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23DC82F30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_23DC7BDA4(a1, v23);
  }

  else
  {
    sub_23DC80C8C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23DC809A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23DC7F118(a2, a3);
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
      sub_23DC8102C();
      goto LABEL_7;
    }

    sub_23DC7F9A0(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_23DC7F118(a2, a3);
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
    result = sub_23DC82F30();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AccountSuggestion() - 8) + 72) * v12;

    return sub_23DC7BE44(a1, v20);
  }

LABEL_13:
  sub_23DC80CF8(v12, a2, a3, a1, v18);
}

uint64_t sub_23DC80B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23DC7F118(a2, a3);
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
      sub_23DC8125C();
      goto LABEL_7;
    }

    sub_23DC7FCDC(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_23DC7F118(a2, a3);
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
    result = sub_23DC82F30();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23DC82A40();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23DC80D90(v12, a2, a3, a1, v18);
}

_OWORD *sub_23DC80C8C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23DC7BDA4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_23DC80CF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AccountSuggestion();
  result = sub_23DC7A6E8(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_23DC80D90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23DC82A40();
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

unint64_t sub_23DC80E40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_23DC80E88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE40, &qword_23DC83878);
  v2 = *v0;
  v3 = sub_23DC82EA0();
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
        sub_23DC7BD48(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23DC7BDA4(v25, (*(v4 + 56) + v22));
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

void *sub_23DC8102C()
{
  v1 = v0;
  v2 = type metadata accessor for AccountSuggestion();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE78, &qword_23DC838B0);
  v5 = *v0;
  v6 = sub_23DC82EA0();
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
        sub_23DC7A628(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_23DC7A6E8(v26, *(v28 + 56) + v27);
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

char *sub_23DC8125C()
{
  v1 = v0;
  v36 = sub_23DC82A40();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE68, &qword_23DC838A0);
  v4 = *v0;
  v5 = sub_23DC82EA0();
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

void *sub_23DC814DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE90, &unk_23DC83B50);
  v2 = *v0;
  v3 = sub_23DC82EA0();
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

uint64_t sub_23DC8164C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23DC7A11C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23DC816B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23DC816B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23DC82ED0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23DC82D00();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23DC81880(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_23DC817B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DC817B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23DC82EF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DC81880(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_23DC78EBC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_23DC81E5C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23DC82EF0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23DC82EF0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23DC75B28(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23DC75B28((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_23DC81E5C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23DC78EBC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_23DC78E30(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23DC82EF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_23DC81E5C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_23DC82EF0() & 1) != 0)
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
      if (!v21 && (sub_23DC82EF0() & 1) != 0)
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

uint64_t sub_23DC82084(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AccountSuggestion();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_23DC7A628(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_23DC7A6E8(v12, v15);
      sub_23DC7A6E8(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_23DC822AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_23DC82404(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EEFBA20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23DC75E04(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_23DC824A0()
{
  result = qword_27E30CE80;
  if (!qword_27E30CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30CE80);
  }

  return result;
}

unint64_t sub_23DC82504()
{
  result = qword_27E30CE88;
  if (!qword_27E30CE88)
  {
    type metadata accessor for AccountSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30CE88);
  }

  return result;
}

void sub_23DC82584()
{
  sub_23DC82664();
  if (v0 <= 0x3F)
  {
    sub_23DC82A40();
    if (v1 <= 0x3F)
    {
      sub_23DC826B4();
      if (v2 <= 0x3F)
      {
        sub_23DC8270C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DC82664()
{
  if (!qword_281303E20)
  {
    v0 = sub_23DC82DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_281303E20);
    }
  }
}

void sub_23DC826B4()
{
  if (!qword_281303E18)
  {
    v0 = sub_23DC82D30();
    if (!v1)
    {
      atomic_store(v0, &qword_281303E18);
    }
  }
}

void sub_23DC8270C()
{
  if (!qword_281303E28[0])
  {
    v0 = sub_23DC82C30();
    if (!v1)
    {
      atomic_store(v0, qword_281303E28);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountSuggestion.Source(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountSuggestion.Source(uint64_t result, unsigned int a2, unsigned int a3)
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