uint64_t sub_23C415AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23C415B9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C415C88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  }

  v2 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23C415CF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C415D3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C415D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_23C436F2C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 16, v3 | v7 | 7);
}

uint64_t sub_23C415F48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C415F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C415FE4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_23C416568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 + 72));
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23C416960(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23C43701C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_23C43700C();
}

uint64_t sub_23C4169F0(uint64_t a1, id *a2)
{
  result = sub_23C43712C();
  *a2 = 0;
  return result;
}

uint64_t sub_23C416A68(uint64_t a1, id *a2)
{
  v3 = sub_23C43713C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23C416AE8@<X0>(uint64_t *a1@<X8>)
{
  sub_23C43714C();
  v2 = sub_23C43711C();

  *a1 = v2;
  return result;
}

uint64_t sub_23C416B2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23C43711C();

  *a2 = v5;
  return result;
}

uint64_t sub_23C416B74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23C43714C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23C416BA0(uint64_t a1)
{
  v2 = sub_23C416CA0(&qword_27E1F44C8);
  v3 = sub_23C416CA0(&qword_27E1F44D0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23C416CA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C416CE4()
{
  v1 = *v0;
  v2 = sub_23C43714C();
  v3 = MEMORY[0x23EED0F70](v2);

  return v3;
}

uint64_t sub_23C416D20()
{
  v1 = *v0;
  sub_23C43714C();
  sub_23C4371AC();
}

uint64_t sub_23C416D74()
{
  v1 = *v0;
  sub_23C43714C();
  sub_23C43757C();
  sub_23C4371AC();
  v2 = sub_23C43759C();

  return v2;
}

uint64_t sub_23C416DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23C43714C();
  v6 = v5;
  if (v4 == sub_23C43714C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23C4374AC();
  }

  return v9 & 1;
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

uint64_t sub_23C416F78(uint64_t a1, int a2)
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

uint64_t sub_23C416F98(uint64_t result, int a2, int a3)
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

void sub_23C416FD4(uint64_t a1, unint64_t *a2)
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

uint64_t ACSEError.nsError.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, a1);
  v9 = *(*(a2 + 8) + 8);
  v10 = sub_23C43748C();
  if (v10)
  {
    v11 = v10;
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v11 = swift_allocError();
    (*(v4 + 32))(v12, v7, a1);
  }

  v13 = sub_23C436E3C();

  return v13;
}

unint64_t ACSEError.userInfo.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F0, &unk_23C438F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23C43714C();
  *(inited + 40) = v6;
  v7 = a2[3](a1, a2);
  v8 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  v10 = *MEMORY[0x277CCA470];
  *(inited + 80) = sub_23C43714C();
  *(inited + 88) = v11;
  v12 = a2[4](a1, a2);
  *(inited + 120) = v8;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  v14 = *MEMORY[0x277CCA498];
  *(inited + 128) = sub_23C43714C();
  *(inited + 136) = v15;
  v16 = a2[5](a1, a2);
  *(inited + 168) = v8;
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  v18 = sub_23C417638(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F8, &qword_23C438140);
  swift_arrayDestroy();
  return v18;
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

uint64_t ACSEError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_23C4372FC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v12 = [a1 domain];
  v13 = sub_23C43714C();
  v15 = v14;

  v16 = *(a3 + 8);
  if (v13 == sub_23C436D8C() && v15 == v17)
  {
  }

  else
  {
    v19 = sub_23C4374AC();

    if ((v19 & 1) == 0)
    {

      v20 = *(a2 - 8);
      goto LABEL_10;
    }
  }

  (*(a3 + 64))([a1 code], a2, a3);

  v20 = *(a2 - 8);
  v21 = v20;
  if (!(*(v20 + 48))(v11, 1, a2))
  {
    v24 = v27;
    (*(v20 + 32))(v27, v11, a2);
    v23 = v24;
    v22 = 0;
    return (*(v21 + 56))(v23, v22, 1, a2);
  }

  (*(v8 + 8))(v11, v7);
LABEL_10:
  v21 = v20;
  v22 = 1;
  v23 = v27;
  return (*(v21 + 56))(v23, v22, 1, a2);
}

uint64_t sub_23C4175B8()
{
  v6 = *v0;
  sub_23C4177E0();
  v1 = sub_23C43748C();
  if (!v1)
  {
    v1 = swift_allocError();
    *v2 = v6;
  }

  v3 = v1;
  v4 = sub_23C436E3C();

  return v4;
}

unint64_t sub_23C417638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4520, &qword_23C438178);
    v3 = sub_23C43743C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C417A7C(v4, &v13, &qword_27E1F44F8, &qword_23C438140);
      v5 = v13;
      v6 = v14;
      result = sub_23C4235F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23C417A6C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23C4177E0()
{
  result = qword_27E1F4500;
  if (!qword_27E1F4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4500);
  }

  return result;
}

unint64_t sub_23C417834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4510, &qword_23C438170);
    v3 = sub_23C43743C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C417A7C(v4, v13, &qword_27E1F4518, &qword_23C438FB0);
      result = sub_23C42399C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23C417A6C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_23C417970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4508, &qword_23C438168);
    v3 = sub_23C43743C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23C4235F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

_OWORD *sub_23C417A6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23C417A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4528, &qword_23C438180);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_23C436DFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C436DEC();
  sub_23C436DDC();
  MEMORY[0x23EED0B60](7824750, 0xE300000000000000);
  sub_23C417D34();
  sub_23C436DAC();
  sub_23C436DBC();
  v11 = sub_23C436E8C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_23C41ED98(v5, &qword_27E1F4528, &qword_23C438180);
    sub_23C41A4A4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_23C417D34()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4700, &qword_23C438980) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v382 = &v350 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v381 = &v350 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v378 = &v350 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v403 = &v350 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v373 = &v350 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v372 = &v350 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v350 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v371 = &v350 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v350 - v20;
  v22 = sub_23C436D7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v351 = &v350 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v366 = &v350 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v402 = &v350 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v365 = &v350 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v401 = &v350 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v400 = &v350 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v364 = &v350 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v399 = &v350 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v380 = &v350 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v379 = &v350 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v398 = &v350 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v363 = &v350 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v350 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v396 = &v350 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v362 = &v350 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v395 = &v350 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v394 = &v350 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v361 = &v350 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v393 = &v350 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v392 = &v350 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v360 = &v350 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v391 = &v350 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v377 = &v350 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v376 = &v350 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v390 = &v350 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v359 = &v350 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v389 = &v350 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v388 = &v350 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v358 = &v350 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v387 = &v350 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v386 = &v350 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v357 = &v350 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v385 = &v350 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v375 = &v350 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v374 = &v350 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v384 = &v350 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v356 = &v350 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v383 = &v350 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v355 = &v350 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v354 = &v350 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v353 = &v350 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v352 = &v350 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v370 = &v350 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v369 = &v350 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v368 = &v350 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v367 = &v350 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v119 = &v350 - v118;
  MEMORY[0x28223BE20](v117);
  v121 = &v350 - v120;
  v406 = v23;
  v407 = MEMORY[0x277D84F90];
  if (!v1[3])
  {
    v404 = *(v23 + 56);
    v404(v21, 1, 1, v22);
LABEL_5:
    sub_23C41ED98(v21, &qword_27E1F4700, &qword_23C438980);
    v125 = v403;
    v126 = v1[6];
    if (!v126)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v405 = v17;
  v123 = v1[1];
  v122 = v1[2];
  v124 = *v1;

  sub_23C436D6C();
  v404 = *(v23 + 56);
  v404(v21, 0, 1, v22);

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v17 = v405;
    goto LABEL_5;
  }

  v166 = *(v23 + 32);
  v166(v121, v21, v22);
  (*(v23 + 16))(v119, v121, v22);
  v167 = sub_23C41F51C(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = v167[2];
  v168 = v167[3];
  if (v169 >= v168 >> 1)
  {
    v167 = sub_23C41F51C(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v406 + 8;
  (*(v406 + 8))(v121, v22);
  v167[2] = v169 + 1;
  v171 = v167 + ((*(v170 + 72) + 32) & ~*(v170 + 72));
  v172 = *(v170 + 64);
  v23 = v406;
  v166(&v171[v172 * v169], v119, v22);
  v407 = v167;
  v125 = v403;
  v17 = v405;
  v126 = v1[6];
  if (v126)
  {
LABEL_6:
    v128 = v1[7];
    v127 = v1[8];
    v408 = *(v1 + 2);
    v409 = v126;
    v410 = v128;
    v411 = v127;
    v129 = sub_23C41B89C();
    sub_23C41E3BC(v129);
  }

LABEL_7:
  v130 = v1[9];
  v131 = v1[10];
  v132 = *(v1 + 88);

  v133 = v371;
  sub_23C41DDB4(v132, v371);

  v405 = *(v23 + 48);
  if ((v405)(v133, 1, v22) == 1)
  {
    sub_23C41ED98(v133, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v134 = *(v23 + 32);
    v135 = v367;
    v134(v367, v133, v22);
    (*(v23 + 16))(v368, v135, v22);
    v136 = v407;
    v137 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_23C41F51C(0, *(v136 + 2) + 1, 1, v136);
    }

    v139 = *(v136 + 2);
    v138 = *(v136 + 3);
    if (v139 >= v138 >> 1)
    {
      v136 = sub_23C41F51C(v138 > 1, v139 + 1, 1, v136);
    }

    (*(v23 + 8))(v367, v22);
    *(v136 + 2) = v139 + 1;
    v134(&v136[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v139], v368, v22);
    v407 = v136;
    v17 = v137;
    v125 = v403;
  }

  v140 = v1[12];
  v141 = v1[13];
  v142 = *(v1 + 112);

  sub_23C41DFA8(v142, v17);

  if ((v405)(v17, 1, v22) == 1)
  {
    sub_23C41ED98(v17, &qword_27E1F4700, &qword_23C438980);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v147 = v406;
    v146 = v372;
    v404(v372, 1, 1, v22);
    goto LABEL_29;
  }

  v157 = v406;
  v158 = *(v406 + 32);
  v159 = v369;
  v158(v369, v17, v22);
  (*(v157 + 16))(v370, v159, v22);
  v160 = v407;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_23C41F51C(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_23C41F51C(v161 > 1, v162 + 1, 1, v160);
  }

  (*(v157 + 8))(v369, v22);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v162], v370, v22);
  v407 = v160;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v144 = v1[16];
  v143 = v1[17];
  v145 = v1[15];

  v146 = v372;
  sub_23C436D6C();
  v147 = v406;
  v404(v146, 0, 1, v22);

  if ((v405)(v146, 1, v22) != 1)
  {
    v148 = *(v147 + 32);
    v149 = v352;
    v148(v352, v146, v22);
    (*(v147 + 16))(v353, v149, v22);
    v150 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_23C41F51C(0, v150[2] + 1, 1, v150);
    }

    v152 = v150[2];
    v151 = v150[3];
    if (v152 >= v151 >> 1)
    {
      v150 = sub_23C41F51C(v151 > 1, v152 + 1, 1, v150);
    }

    v153 = v406 + 8;
    (*(v406 + 8))(v352, v22);
    v150[2] = v152 + 1;
    v154 = v150 + ((*(v153 + 72) + 32) & ~*(v153 + 72));
    v155 = *(v153 + 64);
    v147 = v406;
    v148(&v154[v155 * v152], v353, v22);
    v407 = v150;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_23C41ED98(v146, &qword_27E1F4700, &qword_23C438980);
  if (!v1[22])
  {
LABEL_22:
    v156 = v373;
    v404(v373, 1, 1, v22);
LABEL_31:
    sub_23C41ED98(v156, &qword_27E1F4700, &qword_23C438980);
    goto LABEL_41;
  }

LABEL_30:
  v164 = v1[20];
  v163 = v1[21];
  v165 = v1[19];

  v156 = v373;
  sub_23C436D6C();
  v404(v156, 0, 1, v22);

  if ((v405)(v156, 1, v22) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v147 + 32);
  v174 = v354;
  v173(v354, v156, v22);
  (*(v147 + 16))(v355, v174, v22);
  v175 = v407;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_23C41F51C(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_23C41F51C(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v147 + 8))(v354, v22);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v177], v355, v22);
  v407 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_23C41EA04(v181);
  if (v182)
  {
    v183 = v356;
    sub_23C436D6C();

    v184 = v406;
    v185 = *(v406 + 32);
    v186 = v383;
    v185(v383, v183, v22);
    (*(v184 + 16))(v384, v186, v22);
    v187 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v187 = sub_23C41F51C(0, *(v187 + 2) + 1, 1, v187);
    }

    v189 = *(v187 + 2);
    v188 = *(v187 + 3);
    if (v189 >= v188 >> 1)
    {
      v187 = sub_23C41F51C(v188 > 1, v189 + 1, 1, v187);
    }

    (*(v184 + 8))(v383, v22);
    *(v187 + 2) = v189 + 1;
    v185(&v187[((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v189], v384, v22);
    v407 = v187;
  }

  else
  {
  }

  v190 = type metadata accessor for TapToRadarDraft();
  v191 = v1 + v190[11];
  sub_23C41E100(v125);
  if ((v405)(v125, 1, v22) == 1)
  {
    sub_23C41ED98(v125, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v192 = v406;
    v193 = *(v406 + 32);
    v194 = v374;
    v193(v374, v125, v22);
    (*(v192 + 16))(v375, v194, v22);
    v195 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v195 = sub_23C41F51C(0, *(v195 + 2) + 1, 1, v195);
    }

    v197 = *(v195 + 2);
    v196 = *(v195 + 3);
    if (v197 >= v196 >> 1)
    {
      v195 = sub_23C41F51C(v196 > 1, v197 + 1, 1, v195);
    }

    (*(v192 + 8))(v374, v22);
    *(v195 + 2) = v197 + 1;
    v193(&v195[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v197], v375, v22);
    v407 = v195;
  }

  v198 = (v1 + v190[12]);
  v200 = *v198;
  v199 = v198[1];
  v201 = v198[2];

  sub_23C41E7F0(v202);
  if (v203)
  {
    v204 = v357;
    sub_23C436D6C();

    v205 = v406;
    v206 = *(v406 + 32);
    v207 = v385;
    v206(v385, v204, v22);
    (*(v205 + 16))(v386, v207, v22);
    v208 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_23C41F51C(0, *(v208 + 2) + 1, 1, v208);
    }

    v210 = *(v208 + 2);
    v209 = *(v208 + 3);
    if (v210 >= v209 >> 1)
    {
      v208 = sub_23C41F51C(v209 > 1, v210 + 1, 1, v208);
    }

    (*(v205 + 8))(v385, v22);
    *(v208 + 2) = v210 + 1;
    v206(&v208[((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v210], v386, v22);
    v407 = v208;
  }

  else
  {
  }

  v211 = (v1 + v190[13]);
  v213 = *v211;
  v212 = v211[1];
  v214 = v211[2];

  sub_23C41E7F0(v215);
  if (v216)
  {
    v217 = v358;
    sub_23C436D6C();

    v218 = v406;
    v219 = *(v406 + 32);
    v220 = v387;
    v219(v387, v217, v22);
    (*(v218 + 16))(v388, v220, v22);
    v221 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v221 = sub_23C41F51C(0, *(v221 + 2) + 1, 1, v221);
    }

    v223 = *(v221 + 2);
    v222 = *(v221 + 3);
    if (v223 >= v222 >> 1)
    {
      v221 = sub_23C41F51C(v222 > 1, v223 + 1, 1, v221);
    }

    (*(v218 + 8))(v387, v22);
    *(v221 + 2) = v223 + 1;
    v219(&v221[((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v223], v388, v22);
    v407 = v221;
  }

  else
  {
  }

  v224 = (v1 + v190[14]);
  v226 = *v224;
  v225 = v224[1];
  v227 = v224[2];

  sub_23C41E6C0(v228);
  if (v229)
  {
    v230 = v359;
    sub_23C436D6C();

    v231 = v406;
    v232 = *(v406 + 32);
    v233 = v389;
    v232(v389, v230, v22);
    (*(v231 + 16))(v390, v233, v22);
    v234 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v234 = sub_23C41F51C(0, v234[2] + 1, 1, v234);
    }

    v236 = v234[2];
    v235 = v234[3];
    if (v236 >= v235 >> 1)
    {
      v234 = sub_23C41F51C(v235 > 1, v236 + 1, 1, v234);
    }

    v237 = v406 + 8;
    (*(v406 + 8))(v389, v22);
    v234[2] = v236 + 1;
    v238 = v234 + ((*(v237 + 72) + 32) & ~*(v237 + 72));
    v239 = *(v237 + 64);
    v240 = v406;
    v232(&v238[v239 * v236], v390, v22);
    v407 = v234;
  }

  else
  {

    v240 = v406;
  }

  v241 = (v1 + v190[15]);
  v242 = *v241;
  v243 = v241[1];
  *(v241 + 16);

  v244 = v378;
  sub_23C436D6C();

  v403 = (v240 + 56);
  v404(v244, 0, 1, v22);

  if ((v405)(v244, 1, v22) == 1)
  {
    sub_23C41ED98(v244, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v245 = *(v240 + 32);
    v246 = v376;
    v245(v376, v244, v22);
    (*(v240 + 16))(v377, v246, v22);
    v247 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v247 = sub_23C41F51C(0, *(v247 + 2) + 1, 1, v247);
    }

    v249 = *(v247 + 2);
    v248 = *(v247 + 3);
    if (v249 >= v248 >> 1)
    {
      v247 = sub_23C41F51C(v248 > 1, v249 + 1, 1, v247);
    }

    (*(v240 + 8))(v376, v22);
    *(v247 + 2) = v249 + 1;
    v245(&v247[((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v249], v377, v22);
    v407 = v247;
  }

  v250 = (v1 + v190[16]);
  v252 = *v250;
  v251 = v250[1];
  v253 = v250[2];

  sub_23C41E6C0(v254);
  if (v255)
  {
    v256 = v360;
    sub_23C436D6C();

    v257 = v406;
    v258 = *(v406 + 32);
    v259 = v391;
    v258(v391, v256, v22);
    (*(v257 + 16))(v392, v259, v22);
    v260 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v260 = sub_23C41F51C(0, *(v260 + 2) + 1, 1, v260);
    }

    v262 = *(v260 + 2);
    v261 = *(v260 + 3);
    if (v262 >= v261 >> 1)
    {
      v260 = sub_23C41F51C(v261 > 1, v262 + 1, 1, v260);
    }

    (*(v257 + 8))(v391, v22);
    *(v260 + 2) = v262 + 1;
    v258(&v260[((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v262], v392, v22);
    v407 = v260;
  }

  else
  {
  }

  v263 = (v1 + v190[17]);
  v265 = *v263;
  v264 = v263[1];
  v266 = v263[2];

  sub_23C41E4E8(v267);
  if (v268)
  {
    v269 = v361;
    sub_23C436D6C();

    v270 = v406;
    v271 = *(v406 + 32);
    v272 = v393;
    v271(v393, v269, v22);
    (*(v270 + 16))(v394, v272, v22);
    v273 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v273 = sub_23C41F51C(0, *(v273 + 2) + 1, 1, v273);
    }

    v275 = *(v273 + 2);
    v274 = *(v273 + 3);
    if (v275 >= v274 >> 1)
    {
      v273 = sub_23C41F51C(v274 > 1, v275 + 1, 1, v273);
    }

    (*(v270 + 8))(v393, v22);
    *(v273 + 2) = v275 + 1;
    v271(&v273[((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v275], v394, v22);
    v407 = v273;
  }

  else
  {
  }

  v276 = (v1 + v190[18]);
  v278 = *v276;
  v277 = v276[1];
  v279 = v276[2];

  sub_23C41E6C0(v280);
  if (v281)
  {
    v282 = v362;
    sub_23C436D6C();

    v283 = v406;
    v284 = *(v406 + 32);
    v285 = v395;
    v284(v395, v282, v22);
    (*(v283 + 16))(v396, v285, v22);
    v286 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v286 = sub_23C41F51C(0, *(v286 + 2) + 1, 1, v286);
    }

    v288 = *(v286 + 2);
    v287 = *(v286 + 3);
    if (v288 >= v287 >> 1)
    {
      v286 = sub_23C41F51C(v287 > 1, v288 + 1, 1, v286);
    }

    (*(v283 + 8))(v395, v22);
    *(v286 + 2) = v288 + 1;
    v284(&v286[((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v288], v396, v22);
    v407 = v286;
  }

  else
  {
  }

  v289 = (v1 + v190[19]);
  v291 = *v289;
  v290 = v289[1];
  v292 = v289[2];

  sub_23C41CDC4(v292);
  if (v293)
  {
    v294 = v363;
    sub_23C436D6C();

    v295 = v406;
    v296 = *(v406 + 32);
    v297 = v397;
    v296(v397, v294, v22);
    (*(v295 + 16))(v398, v297, v22);
    v298 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v298 = sub_23C41F51C(0, *(v298 + 2) + 1, 1, v298);
    }

    v300 = *(v298 + 2);
    v299 = *(v298 + 3);
    if (v300 >= v299 >> 1)
    {
      v298 = sub_23C41F51C(v299 > 1, v300 + 1, 1, v298);
    }

    (*(v295 + 8))(v397, v22);
    *(v298 + 2) = v300 + 1;
    v296(&v298[((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v300], v398, v22);
    v407 = v298;
  }

  else
  {
  }

  v301 = (v1 + v190[20]);
  v302 = *v301;
  v303 = v301[1];
  *(v301 + 16);

  v304 = v381;
  sub_23C436D6C();

  v404(v304, 0, 1, v22);

  if ((v405)(v304, 1, v22) == 1)
  {
    sub_23C41ED98(v304, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v305 = v406;
    v306 = *(v406 + 32);
    v307 = v379;
    v306(v379, v304, v22);
    (*(v305 + 16))(v380, v307, v22);
    v308 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v308 = sub_23C41F51C(0, *(v308 + 2) + 1, 1, v308);
    }

    v310 = *(v308 + 2);
    v309 = *(v308 + 3);
    if (v310 >= v309 >> 1)
    {
      v308 = sub_23C41F51C(v309 > 1, v310 + 1, 1, v308);
    }

    (*(v305 + 8))(v379, v22);
    *(v308 + 2) = v310 + 1;
    v306(&v308[((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v310], v380, v22);
    v407 = v308;
  }

  v311 = (v1 + v190[21]);
  v313 = *v311;
  v312 = v311[1];
  v314 = *(v311 + 16);

  sub_23C41D534(v314);
  if (v315)
  {
    v316 = v364;
    sub_23C436D6C();

    v317 = v406;
    v318 = *(v406 + 32);
    v319 = v399;
    v318(v399, v316, v22);
    (*(v317 + 16))(v400, v319, v22);
    v320 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v320 = sub_23C41F51C(0, *(v320 + 2) + 1, 1, v320);
    }

    v322 = *(v320 + 2);
    v321 = *(v320 + 3);
    if (v322 >= v321 >> 1)
    {
      v320 = sub_23C41F51C(v321 > 1, v322 + 1, 1, v320);
    }

    (*(v317 + 8))(v399, v22);
    *(v320 + 2) = v322 + 1;
    v318(&v320[((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v322], v400, v22);
    v407 = v320;
  }

  else
  {
  }

  v323 = (v1 + v190[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_23C41E6C0(v327);
  if (v328)
  {
    v329 = v365;
    sub_23C436D6C();

    v330 = v406;
    v331 = *(v406 + 32);
    v332 = v401;
    v331(v401, v329, v22);
    (*(v330 + 16))(v402, v332, v22);
    v333 = v407;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_23C41F51C(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_23C41F51C(v334 > 1, v335 + 1, 1, v333);
    }

    (*(v330 + 8))(v401, v22);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v335], v402, v22);
    v407 = v333;
  }

  else
  {
  }

  v336 = (v1 + v190[23]);
  if (!v336[3])
  {
    v341 = v382;
    v404(v382, 1, 1, v22);
    goto LABEL_140;
  }

  v338 = v336[1];
  v337 = v336[2];
  v339 = *v336;
  v340 = v336[3];

  v341 = v382;
  sub_23C436D6C();
  v404(v341, 0, 1, v22);

  if ((v405)(v341, 1, v22) == 1)
  {
LABEL_140:
    sub_23C41ED98(v341, &qword_27E1F4700, &qword_23C438980);
    return v407;
  }

  v342 = v406;
  v343 = *(v406 + 32);
  v344 = v366;
  v343(v366, v341, v22);
  v345 = v351;
  (*(v342 + 16))(v351, v344, v22);
  v346 = v407;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v346 = sub_23C41F51C(0, *(v346 + 2) + 1, 1, v346);
  }

  v348 = *(v346 + 2);
  v347 = *(v346 + 3);
  if (v348 >= v347 >> 1)
  {
    v346 = sub_23C41F51C(v347 > 1, v348 + 1, 1, v346);
  }

  (*(v342 + 8))(v366, v22);
  *(v346 + 2) = v348 + 1;
  v343(&v346[((*(v342 + 80) + 32) & ~*(v342 + 80)) + *(v342 + 72) * v348], v345, v22);
  return v346;
}

unint64_t sub_23C41A4A4()
{
  result = qword_27E1F4530;
  if (!qword_27E1F4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4530);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27E1F4540;
  if (!qword_27E1F4540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C41A56C()
{
  sub_23C41A9F4(319, &qword_27E1F4550, &qword_27E1F4558, "l#", sub_23C41A910);
  if (v0 <= 0x3F)
  {
    sub_23C41A9A4();
    if (v1 <= 0x3F)
    {
      sub_23C41A9F4(319, &qword_27E1F4570, &qword_27E1F4578, &qword_23C438260, sub_23C41AA64);
      if (v2 <= 0x3F)
      {
        sub_23C41A9F4(319, &qword_27E1F4588, &qword_27E1F4590, &qword_23C438268, sub_23C41AAE0);
        if (v3 <= 0x3F)
        {
          sub_23C41A9F4(319, &qword_27E1F45A0, &qword_27E1F45A8, &unk_23C438270, sub_23C41AB5C);
          if (v4 <= 0x3F)
          {
            sub_23C41A9F4(319, &qword_27E1F45B8, &qword_27E1F45C0, &qword_23C438CB0, sub_23C41ABD8);
            if (v5 <= 0x3F)
            {
              sub_23C41A9F4(319, &qword_27E1F45D0, &qword_27E1F45D8, &qword_23C438280, sub_23C41AC54);
              if (v6 <= 0x3F)
              {
                sub_23C41A9F4(319, &qword_27E1F45E8, &qword_27E1F45F0, &qword_23C438288, sub_23C41ACD0);
                if (v7 <= 0x3F)
                {
                  sub_23C41ADC8(319, &qword_27E1F4600);
                  if (v8 <= 0x3F)
                  {
                    sub_23C41A9F4(319, &qword_27E1F4608, &qword_27E1F4610, &unk_23C438290, sub_23C41AD4C);
                    if (v9 <= 0x3F)
                    {
                      sub_23C41ADC8(319, &qword_27E1F4620);
                      if (v10 <= 0x3F)
                      {
                        sub_23C41ADC8(319, qword_27E1F4628);
                        if (v11 <= 0x3F)
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
      }
    }
  }
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

unint64_t sub_23C41A910()
{
  result = qword_27E1F4560;
  if (!qword_27E1F4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4558, "l#");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4560);
  }

  return result;
}

void sub_23C41A9A4()
{
  if (!qword_27E1F4568)
  {
    v0 = sub_23C4372FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F4568);
    }
  }
}

void sub_23C41A9F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_23C41AA64()
{
  result = qword_27E1F4580;
  if (!qword_27E1F4580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4578, &qword_23C438260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4580);
  }

  return result;
}

unint64_t sub_23C41AAE0()
{
  result = qword_27E1F4598;
  if (!qword_27E1F4598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4590, &qword_23C438268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4598);
  }

  return result;
}

unint64_t sub_23C41AB5C()
{
  result = qword_27E1F45B0;
  if (!qword_27E1F45B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45A8, &unk_23C438270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45B0);
  }

  return result;
}

unint64_t sub_23C41ABD8()
{
  result = qword_27E1F45C8;
  if (!qword_27E1F45C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45C0, &qword_23C438CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45C8);
  }

  return result;
}

unint64_t sub_23C41AC54()
{
  result = qword_27E1F45E0;
  if (!qword_27E1F45E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45D8, &qword_23C438280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45E0);
  }

  return result;
}

unint64_t sub_23C41ACD0()
{
  result = qword_27E1F45F8;
  if (!qword_27E1F45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45F0, &qword_23C438288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45F8);
  }

  return result;
}

unint64_t sub_23C41AD4C()
{
  result = qword_27E1F4618;
  if (!qword_27E1F4618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4610, &unk_23C438290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4618);
  }

  return result;
}

void sub_23C41ADC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestSigningError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestSigningError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23C41B24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23C41B294(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23C41B2F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C41B374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23C41B4F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23C41B89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4708, &qword_23C438988);
  v1 = *(sub_23C436D7C() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C438130;
  v10 = *v0;
  sub_23C43746C();
  sub_23C436D6C();

  v5 = v0[1];
  v6 = v0[2];
  sub_23C436D6C();
  v7 = v0[3];
  v8 = v0[4];
  sub_23C436D6C();
  return v4;
}

uint64_t sub_23C41BA18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  sub_23C4371AC();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41BA98()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x23EED1320](*v0);
  sub_23C4371AC();

  return sub_23C4371AC();
}

uint64_t sub_23C41BB08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  sub_23C4371AC();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41BB84(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_23C4374AC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_23C4374AC();
}

unint64_t sub_23C41BC38(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23C41BD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_23C41BC38(*a1);
  v5 = v4;
  if (v3 == sub_23C41BC38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23C4374AC();
  }

  return v8 & 1;
}

uint64_t sub_23C41BE24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_23C4374AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_23C41C028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000023C4394F0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000023C439510;
    }

    v5 = 0x800000023C4394B0;
    if (a1 != 3)
    {
      v5 = 0x800000023C4394D0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_23C4374AC();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000023C4394F0;
    }

    else
    {
      v10 = 0x800000023C439510;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000023C4394B0;
    }

    else
    {
      v10 = 0x800000023C4394D0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_23C41C200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_23C4374AC();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_23C41C3F8()
{
  v1 = *v0;
  sub_23C43757C();
  sub_23C41BC38(v1);
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C45C()
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C570()
{
  sub_23C41BC38(*v0);
  sub_23C4371AC();
}

uint64_t sub_23C41C5C4()
{
  v1 = *v0;
  sub_23C43757C();
  sub_23C41BC38(v1);
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C624()
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C72C()
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C83C()
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23C41EB94();
  *a2 = result;
  return result;
}

unint64_t sub_23C41C97C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23C41BC38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23C41C9BC()
{
  *v0;
  *v0;
  *v0;
  sub_23C4371AC();
}

uint64_t sub_23C41CAC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23C41EBE0();
  *a2 = result;
  return result;
}

void sub_23C41CAF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23C41CBD4()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_23C4371AC();
}

uint64_t sub_23C41CCD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23C41EC2C();
  *a2 = result;
  return result;
}

void sub_23C41CD00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_23C41CDC4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_23C41F410(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_23C41F410((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_23C41F410((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_23C41F410((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_23C41F410((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_23C41F410((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
            sub_23C41ECC4();
            v1 = sub_23C4370FC();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_23C41F410((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000023C4395E0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_23C41F410((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_23C41F410((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_23C41D294()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

uint64_t sub_23C41D308()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

BOOL sub_23C41D390(void *a1, uint64_t *a2)
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

void *sub_23C41D3C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_23C41D3EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23C41D4C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C41D4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23C41EB5C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23C41D534(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_23C4374AC();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_23C41D704()
{
  *v0;
  sub_23C4371AC();
}

uint64_t sub_23C41D808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23C41EC78();
  *a2 = result;
  return result;
}

void sub_23C41D838(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000023C4394F0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000023C439510;
    }

    v5 = 0x800000023C4394B0;
    if (v2 != 3)
    {
      v5 = 0x800000023C4394D0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_23C41D91C()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

uint64_t sub_23C41D990()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

unint64_t sub_23C41D9D4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

unint64_t sub_23C41DA3C()
{
  result = qword_27E1F46B0;
  if (!qword_27E1F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46B0);
  }

  return result;
}

unint64_t sub_23C41DA94()
{
  result = qword_27E1F46B8;
  if (!qword_27E1F46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46B8);
  }

  return result;
}

unint64_t sub_23C41DAEC()
{
  result = qword_27E1F46C0;
  if (!qword_27E1F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46C0);
  }

  return result;
}

unint64_t sub_23C41DB44()
{
  result = qword_27E1F46C8;
  if (!qword_27E1F46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46C8);
  }

  return result;
}

unint64_t sub_23C41DB9C()
{
  result = qword_27E1F46D0;
  if (!qword_27E1F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46D0);
  }

  return result;
}

unint64_t sub_23C41DBF0()
{
  result = qword_27E1F46D8;
  if (!qword_27E1F46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46D8);
  }

  return result;
}

unint64_t sub_23C41DC48()
{
  result = qword_27E1F46E0;
  if (!qword_27E1F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46E0);
  }

  return result;
}

unint64_t sub_23C41DCA0()
{
  result = qword_27E1F46E8;
  if (!qword_27E1F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46E8);
  }

  return result;
}

unint64_t sub_23C41DCF8()
{
  result = qword_27E1F46F0;
  if (!qword_27E1F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46F0);
  }

  return result;
}

unint64_t sub_23C41DD50()
{
  result = qword_27E1F46F8;
  if (!qword_27E1F46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46F8);
  }

  return result;
}

uint64_t sub_23C41DDB4@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_23C436D6C();

    v3 = 0;
  }

  v4 = sub_23C436D7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_23C41DFA8@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_23C436D6C();

    v3 = 0;
  }

  v4 = sub_23C436D7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_23C41E100@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = sub_23C436F2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
  sub_23C41ED28(v2 + *(v12 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23C41ED98(v6, &qword_27E1F45C0, &qword_23C438CB0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v15 = sub_23C43711C();
    [v14 setDateFormat_];

    [v14 setDoesRelativeDateFormatting_];
    v16 = sub_23C436EDC();
    v17 = [v14 stringFromDate_];

    sub_23C43714C();
    (*(v8 + 8))(v11, v7);
    v18 = *v2;
    v19 = v2[1];
    sub_23C436D6C();

    v13 = 0;
  }

  v20 = sub_23C436D7C();
  return (*(*(v20 - 8) + 56))(a1, v13, 1, v20);
}

uint64_t sub_23C41E3BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_23C41F51C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_23C436D7C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23C41E4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_23C41F410((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v17 = sub_23C4370FC();

  return v17;
}

uint64_t sub_23C41E6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_23C41F410((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v9 = sub_23C4370FC();

  return v9;
}

uint64_t sub_23C41E7F0(uint64_t a1)
{
  v24 = sub_23C436E8C();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_23C436E5C();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23C41F410(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_23C41F410((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v20 = sub_23C4370FC();

  return v20;
}

uint64_t sub_23C41EA04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_23C43746C();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_23C41F410((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v11 = sub_23C4370FC();

  return v11;
}

uint64_t sub_23C41EB5C(uint64_t a1)
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

uint64_t sub_23C41EB94()
{
  v0 = sub_23C43745C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23C41EBE0()
{
  v0 = sub_23C43745C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23C41EC2C()
{
  v0 = sub_23C43745C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23C41EC78()
{
  v0 = sub_23C43745C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23C41ECC4()
{
  result = qword_27E1F4710;
  if (!qword_27E1F4710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45F0, &qword_23C438288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4710);
  }

  return result;
}

uint64_t sub_23C41ED28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C41ED98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_23C41EE40()
{
  result = sub_23C41EE64();
  qword_27E1F4718 = result;
  unk_27E1F4720 = v1;
  return result;
}

char *sub_23C41EE64()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23C436F5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 37;
  v5 = sub_23C4371FC();
  *(v5 + 16) = 37;
  *(v5 + 48) = 0u;
  *(v5 + 61) = 0;
  *(v5 + 32) = 0u;
  v6 = sysctlbyname("kern.bootsessionuuid", (v5 + 32), &v25, 0, 0);
  if (!v6)
  {
    v22 = sub_23C41F740(v5, v7);

LABEL_16:
    v23 = *MEMORY[0x277D85DE8];
    return v22;
  }

  v8 = v6;
  v9 = MEMORY[0x23EED0DC0]();
  result = strerror(v9);
  if (result)
  {
    v11 = sub_23C43710C();
    v13 = v12;

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0x6E776F6E6B6E55;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v16 = sub_23C43701C();
    __swift_project_value_buffer(v16, qword_2814FA208);

    v17 = sub_23C436FFC();
    v18 = sub_23C4372CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 67109378;
      *(v19 + 4) = v8;
      *(v19 + 8) = 2080;
      v21 = sub_23C423048(v14, v15, v26);

      *(v19 + 10) = v21;
      _os_log_impl(&dword_23C414000, v17, v18, "Failed to fetch current boot session UUID with error: %d -> %s", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EED1A40](v20, -1, -1);
      MEMORY[0x23EED1A40](v19, -1, -1);
    }

    else
    {
    }

    sub_23C436F4C();
    v22 = sub_23C436F3C();
    (*(v1 + 8))(v4, v0);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t static SystemProperties.bootSessionUUID.getter()
{
  if (qword_27E1F4498 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1F4718;

  return v0;
}

uint64_t static SystemProperties.getDeviceID()()
{
  v0 = sub_23C43711C();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v7;
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA208);
  v4 = sub_23C436FFC();
  v5 = sub_23C4372CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23C414000, v4, v5, "Failed to fetch unique device ID.", v6, 2u);
    MEMORY[0x23EED1A40](v6, -1, -1);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for SystemProperties(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SystemProperties(_WORD *result, int a2, int a3)
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

char *sub_23C41F410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4728, &qword_23C4389D0);
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

size_t sub_23C41F51C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4708, &qword_23C438988);
  v10 = *(sub_23C436D7C() - 8);
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
  v15 = *(sub_23C436D7C() - 8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23C41F740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_23C41F7A8()
{
  sub_23C43757C();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41F814()
{
  sub_23C43757C();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41F864@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23C43745C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_23C41F8D8()
{
  result = qword_27E1F4730;
  if (!qword_27E1F4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4730);
  }

  return result;
}

uint64_t sub_23C41F954(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  *v8 = v3;
  v8[1] = sub_23C41FA0C;

  return MEMORY[0x282200430](a1, v6, v9, v10, v11);
}

uint64_t sub_23C41FA0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TaskLimiter.__allocating_init(timeout:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F98];
  *(v2 + 120) = a1;
  return v2;
}

uint64_t TaskLimiter.init(timeout:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_23C41FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[34] = a6;
  v7[35] = v6;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C41FC28, v6, 0);
}

uint64_t sub_23C41FC28()
{
  v76 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = *(v1 + 112);

    v6 = sub_23C4235F0(v4, v3);
    if (v7)
    {
      v8 = *(v0 + 272);
      sub_23C423938(*(v2 + 56) + 40 * v6, v0 + 16);

      sub_23C423938(v0 + 16, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4758, &qword_23C439280);
      v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
      sub_23C43729C();
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 224);
        *(v0 + 296) = v10;
        if (qword_2814FA108 != -1)
        {
          swift_once();
        }

        v11 = *(v0 + 248);
        v12 = sub_23C43701C();
        __swift_project_value_buffer(v12, qword_2814FA208);

        v13 = sub_23C436FFC();
        v14 = sub_23C4372BC();

        if (os_log_type_enabled(v13, v14))
        {
          v16 = *(v0 + 240);
          v15 = *(v0 + 248);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v75[0] = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_23C423048(v16, v15, v75);
          _os_log_impl(&dword_23C414000, v13, v14, "TaskLimiter: reusing existing task for identifier %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x23EED1A40](v18, -1, -1);
          MEMORY[0x23EED1A40](v17, -1, -1);
        }

        v19 = *(MEMORY[0x277D857C8] + 4);
        v20 = swift_task_alloc();
        *(v0 + 304) = v20;
        *v20 = v0;
        v20[1] = sub_23C42054C;
        v21 = *(v0 + 272);
        v22 = *(v0 + 232);
        v23 = MEMORY[0x277D84950];
        v24 = v10;
        v25 = v9;
        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 248);
  v27 = sub_23C43701C();
  __swift_project_value_buffer(v27, qword_2814FA208);

  v28 = sub_23C436FFC();
  v29 = sub_23C4372BC();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v75[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_23C423048(v31, v30, v75);
    _os_log_impl(&dword_23C414000, v28, v29, "TaskLimiter: creating new task for identifier %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23EED1A40](v33, -1, -1);
    MEMORY[0x23EED1A40](v32, -1, -1);
  }

  v34 = *(v1 + 112);
  if (!*(v34 + 16))
  {
    goto LABEL_19;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);

  v37 = sub_23C4235F0(v36, v35);
  if ((v38 & 1) == 0)
  {

LABEL_19:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  sub_23C423938(*(v34 + 56) + 40 * v37, v0 + 56);

LABEL_20:
  v40 = *(v0 + 280);
  v39 = *(v0 + 288);
  v42 = *(v0 + 264);
  v41 = *(v0 + 272);
  v43 = *(v0 + 256);
  v74 = *(v0 + 248);
  v44 = sub_23C43726C();
  v45 = *(*(v44 - 8) + 56);
  v45(v39, 1, 1, v44);
  sub_23C417A7C(v0 + 56, v0 + 96, &qword_27E1F4740, &qword_23C438AD8);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = v41;
  v47 = *(v0 + 112);
  *(v46 + 40) = *(v0 + 96);
  *(v46 + 56) = v47;
  *(v46 + 72) = *(v0 + 128);
  *(v46 + 80) = v43;
  *(v46 + 88) = v42;

  v48 = sub_23C4214B8(0, 0, v39, &unk_23C438AE0, v46);
  *(v0 + 320) = v48;
  v45(v39, 1, 1, v44);
  v50 = sub_23C42503C(&qword_27E1F4748, v49, type metadata accessor for TaskLimiter);
  v51 = swift_allocObject();
  v51[2] = v40;
  v51[3] = v50;
  v51[4] = v41;
  v51[5] = v40;
  v51[6] = v48;
  swift_retain_n();

  v52 = sub_23C42120C(0, 0, v39, &unk_23C438AF0, v51);
  *(v0 + 328) = v52;
  v45(v39, 1, 1, v44);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v41;
  v53[5] = v48;
  v53[6] = v52;

  v54 = sub_23C4214B8(0, 0, v39, &unk_23C438B00, v53);
  *(v0 + 336) = v54;

  v55 = sub_23C436FFC();
  v56 = sub_23C4372BC();

  if (os_log_type_enabled(v55, v56))
  {
    v58 = *(v0 + 240);
    v57 = *(v0 + 248);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_23C423048(v58, v57, v75);
    _os_log_impl(&dword_23C414000, v55, v56, "TaskLimiter: storing task for identifier %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EED1A40](v60, -1, -1);
    MEMORY[0x23EED1A40](v59, -1, -1);
  }

  v61 = *(v0 + 272);
  v63 = *(v0 + 240);
  v62 = *(v0 + 248);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v75[3] = sub_23C43729C();
  v75[4] = swift_getWitnessTable();
  v75[0] = v54;
  swift_beginAccess();

  sub_23C422CB0(v75, v63, v62);
  swift_endAccess();

  v65 = sub_23C436FFC();
  v66 = sub_23C4372BC();

  if (os_log_type_enabled(v65, v66))
  {
    v68 = *(v0 + 240);
    v67 = *(v0 + 248);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v75[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_23C423048(v68, v67, v75);
    _os_log_impl(&dword_23C414000, v65, v66, "TaskLimiter: performing task operation for identifier %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x23EED1A40](v70, -1, -1);
    MEMORY[0x23EED1A40](v69, -1, -1);
  }

  v71 = *(MEMORY[0x277D857C8] + 4);
  v72 = swift_task_alloc();
  *(v0 + 344) = v72;
  *v72 = v0;
  v72[1] = sub_23C4206EC;
  v21 = *(v0 + 272);
  v22 = *(v0 + 232);
  v23 = MEMORY[0x277D84950];
  v24 = v54;
  v25 = v64;
LABEL_25:

  return MEMORY[0x282200430](v22, v24, v21, v25, v23);
}

uint64_t sub_23C42054C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_23C4208D8;
  }

  else
  {
    v6 = sub_23C420678;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23C420678()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[36];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C4206EC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_23C42094C;
  }

  else
  {
    v6 = sub_23C420818;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23C420818()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v6, v5);
  v7 = v0[36];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23C4208D8()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[39];
  v3 = v0[36];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C42094C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v6, v5);
  v7 = v0[44];
  v8 = v0[36];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23C420A0C(uint64_t a1, unint64_t a2)
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v4 = sub_23C43701C();
  __swift_project_value_buffer(v4, qword_2814FA208);

  v5 = sub_23C436FFC();
  v6 = sub_23C4372BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v10[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23C423048(a1, a2, v10);
    _os_log_impl(&dword_23C414000, v5, v6, "TaskLimiter: cleaning up task for identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EED1A40](v8, -1, -1);
    MEMORY[0x23EED1A40](v7, -1, -1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();

  sub_23C422CB0(v10, a1, a2);
  return swift_endAccess();
}

uint64_t sub_23C420BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_23C420BC8, 0, 0);
}

uint64_t sub_23C420BC8()
{
  sub_23C417A7C(*(v0 + 96), v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 16);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    v13 = (v3 + *v3);
    v5 = v3[1];
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_23C420E64;

    return v13(boxed_opaque_existential_0, v1, v2);
  }

  else
  {
    sub_23C41ED98(v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v8 = *(v0 + 104);
    sub_23C41ED98(v0 + 56, &qword_27E1F4788, &qword_23C4392C0);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_23C42108C;
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);

    return v14(v12);
  }
}

uint64_t sub_23C420E64()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_23C421180;
  }

  else
  {
    v3 = sub_23C420F78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C420F78()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  sub_23C41ED98((v0 + 7), &qword_27E1F4788, &qword_23C4392C0);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_23C42108C;
  v4 = v0[14];
  v5 = v0[11];

  return v7(v5);
}

uint64_t sub_23C42108C()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C421180()
{
  __swift_deallocate_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2();
}

uint64_t sub_23C42120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23C417A7C(a3, v24 - v10, &qword_27E1F4738, &qword_23C438F40);
  v12 = sub_23C43726C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C41ED98(v11, &qword_27E1F4738, &qword_23C438F40);
  }

  else
  {
    sub_23C43725C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23C43720C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_23C43718C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

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

  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23C4214B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_23C417A7C(a3, &v26[-1] - v11, &qword_27E1F4738, &qword_23C438F40);
  v13 = sub_23C43726C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C41ED98(v12, &qword_27E1F4738, &qword_23C438F40);
  }

  else
  {
    sub_23C43725C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C43720C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C43718C();
      v22 = *(v21 + 16);
      sub_23C422F8C(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

      return v23;
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

  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C42173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_23C4373EC();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C421804, a4, 0);
}

uint64_t sub_23C421804()
{
  v1 = v0[7];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_23C4374FC();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23C4218E8;
  v6 = v0[7];

  return sub_23C435954(v3, v4, 0, 0, 1);
}

uint64_t sub_23C4218E8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_23C421BC4;
  }

  else
  {
    v9 = sub_23C421A70;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_23C421A70()
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23C43701C();
  __swift_project_value_buffer(v1, qword_2814FA208);
  v2 = sub_23C436FFC();
  v3 = sub_23C4372CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C414000, v2, v3, "Task limitier timed out", v4, 2u);
    MEMORY[0x23EED1A40](v4, -1, -1);
  }

  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  sub_23C43728C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_23C421BC4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23C421C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_23C421C4C, 0, 0);
}

uint64_t sub_23C421C4C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_23C421D48;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ELL, 0x800000023C4396C0, sub_23C424C88, v2, v6);
}

uint64_t sub_23C421D48()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23C421E84, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23C421E84()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23C421EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a3;
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v33 = a4;
  v6 = sub_23C43723C();
  v7 = *(v6 - 8);
  v32 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4778, &qword_23C439290);
  v14 = swift_allocObject();
  v28 = v14;
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  v34 = sub_23C43726C();
  v15 = *(v34 - 8);
  v37 = *(v15 + 56);
  v38 = v15 + 56;
  v37(v13, 1, 1, v34);
  v16 = *(v7 + 16);
  v31 = v7 + 16;
  v35 = v16;
  v17 = v6;
  v16(v9, a1, v6);
  v18 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  v20 = v40;
  *(v19 + 5) = v39;
  *(v19 + 6) = v20;
  v21 = v28;
  *(v19 + 7) = v28;
  v29 = *(v7 + 32);
  v30 = v7 + 32;
  v29(&v19[v18], v9, v17);

  v22 = v21;

  sub_23C4330D8(0, 0, v13, &unk_23C438C18, v19);

  v37(v13, 1, 1, v34);
  v35(v9, v36, v17);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v25 = v39;
  v24 = v40;
  *(v23 + 4) = v33;
  *(v23 + 5) = v24;
  *(v23 + 6) = v25;
  *(v23 + 7) = v22;
  v29(&v23[v18], v9, v17);

  sub_23C42120C(0, 0, v13, &unk_23C438C28, v23);
}

uint64_t sub_23C422240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v11 = *(a8 - 8);
  v8[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[7] = v13;
  v14 = *(MEMORY[0x277D857C8] + 4);
  v15 = swift_task_alloc();
  v8[8] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v8[9] = v16;
  *v15 = v8;
  v15[1] = sub_23C422374;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v13, a4, a8, v16, v17);
}

uint64_t sub_23C422374()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23C42259C;
  }

  else
  {
    v3 = sub_23C422488;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23C422488()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v12 = *(v0 + 32);
  sub_23C43728C();
  v6 = swift_task_alloc();
  v6[1] = vextq_s8(v12, v12, 8uLL);
  v6[2].i64[0] = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_23C4250A4((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 56);

    v11 = *(v0 + 8);

    v11();
  }
}

uint64_t sub_23C42259C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  v3[2].i64[0] = v1;
  os_unfair_lock_lock((v2 + 20));
  sub_23C425084((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));

  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

_BYTE *sub_23C422678(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*result & 1) == 0)
  {
    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v12 = sub_23C43701C();
    __swift_project_value_buffer(v12, qword_2814FA208);
    v13 = sub_23C436FFC();
    v14 = sub_23C4372BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23C414000, v13, v14, "Timeoutable task finished before timeout", v15, 2u);
      MEMORY[0x23EED1A40](v15, -1, -1);
    }

    (*(v7 + 16))(v11, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43722C();
  }

  *a1 = 1;
  return result;
}

_BYTE *sub_23C422858(_BYTE *result, int a2, id a3)
{
  v3 = result;
  if ((*result & 1) == 0)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43721C();
  }

  *v3 = 1;
  return result;
}

uint64_t sub_23C4228EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v10 = *(MEMORY[0x277D857C8] + 4);
  v11 = swift_task_alloc();
  v8[6] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v8[7] = v12;
  *v11 = v8;
  v11[1] = sub_23C4229C0;
  v13 = MEMORY[0x277D84950];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v12, a4, v14, v12, v13);
}

uint64_t sub_23C4229C0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23C422BA8;
  }

  else
  {
    v3 = sub_23C422AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23C422AD4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_23C43728C();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  os_unfair_lock_lock((v6 + 20));
  sub_23C425020((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));
  if (!v2)
  {

    v8 = v0[1];

    v8();
  }
}

_BYTE *sub_23C422BC0(_BYTE *result)
{
  v1 = result;
  if ((*result & 1) == 0)
  {
    sub_23C43724C();
    sub_23C42503C(&qword_27E1F4780, 255, MEMORY[0x277D85678]);
    swift_allocError();
    sub_23C4370CC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43721C();
  }

  *v1 = 1;
  return result;
}

uint64_t sub_23C422CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23C424C70(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23C424334(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_23C41ED98(a1, &qword_27E1F4740, &qword_23C438AD8);
    sub_23C423B60(a2, a3, v10);

    return sub_23C41ED98(v10, &qword_27E1F4740, &qword_23C438AD8);
  }

  return result;
}

uint64_t TaskLimiter.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskLimiters.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TaskLimiters.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TaskLimiters.limiter(key:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (*(v8 + 16) && (v9 = sub_23C4235F0(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for TaskLimiter();
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v11 + 112) = MEMORY[0x277D84F98];
    *(v11 + 120) = a3;
    swift_beginAccess();

    v12 = *(v4 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    sub_23C424488(v11, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 112) = v15;
    swift_endAccess();
  }

  return v11;
}

uint64_t _s14ACSEFoundation11TaskLimiterCfD_0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23C422F8C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C423048(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C423114(v11, 0, 0, 1, a1, a2);
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
    sub_23C424C14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C423114(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C423220(a5, a6);
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
    result = sub_23C43737C();
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

uint64_t sub_23C423220(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C42326C(a1, a2);
  sub_23C42339C(&unk_284F075D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23C42326C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23C423488(v5, 0);
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

  result = sub_23C43737C();
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
        v10 = sub_23C4371CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C423488(v10, 0);
        result = sub_23C43735C();
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

uint64_t sub_23C42339C(uint64_t result)
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

  result = sub_23C4234FC(result, v12, 1, v3);
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

void *sub_23C423488(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4768, &qword_23C438C00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C4234FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4768, &qword_23C438C00);
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

unint64_t sub_23C4235F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23C43757C();
  sub_23C4371AC();
  v6 = sub_23C43759C();

  return sub_23C4239E0(a1, a2, v6);
}

uint64_t sub_23C423668(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C4251CC;

  return sub_23C420BA4(a1, v6, v5, (v1 + 5), v7, v8);
}

uint64_t sub_23C423760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C4251CC;

  return sub_23C42173C(a1, v4, v5, v7, v8, v6);
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23C423870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C4251CC;

  return sub_23C421C28(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_23C423938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23C42399C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23C43732C();

  return sub_23C423A98(a1, v5);
}

unint64_t sub_23C4239E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23C4374AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C423A98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23C4247DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EED10D0](v9, a1);
      sub_23C424838(v9);
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

double sub_23C423B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23C4235F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C4248FC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23C424C70((*(v12 + 56) + 40 * v9), a3);
    sub_23C424178(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23C423C0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4770, &qword_23C438C08);
  v36 = a2;
  result = sub_23C43742C();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_23C424C70(v25, v37);
      }

      else
      {
        sub_23C423938(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23C43757C();
      sub_23C4371AC();
      result = sub_23C43759C();
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
      result = sub_23C424C70(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_23C423ED0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4760, &qword_23C438BF8);
  v38 = a2;
  result = sub_23C43742C();
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
      sub_23C43757C();
      sub_23C4371AC();
      result = sub_23C43759C();
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

uint64_t sub_23C424178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C43731C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_23C43757C();

      sub_23C4371AC();
      v15 = sub_23C43759C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23C424334(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C4235F0(a2, a3);
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
      sub_23C4248FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23C423C0C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23C4235F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23C4374CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_23C424C70(a1, v23);
  }

  else
  {
    sub_23C42488C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23C424488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C4235F0(a2, a3);
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
      sub_23C423ED0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23C4235F0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23C4374CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23C424AA4();
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

uint64_t dispatch thunk of TaskLimiter.perform<A>(identifier:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 136);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_23C41FA0C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C42488C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23C424C70(a4, a5[7] + 40 * a1);
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

void *sub_23C4248FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4770, &qword_23C438C08);
  v2 = *v0;
  v3 = sub_23C43741C();
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
        v22 = 40 * v17;
        sub_23C423938(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23C424C70(v25, *(v4 + 56) + v22);
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

void *sub_23C424AA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4760, &qword_23C438BF8);
  v2 = *v0;
  v3 = sub_23C43741C();
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

uint64_t sub_23C424C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C424C70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23C424C94(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v6 = *(sub_23C43723C() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23C41FA0C;

  return sub_23C422240(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v2 = sub_23C43723C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23C424EDC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v6 = *(sub_23C43723C() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23C4251CC;

  return sub_23C4228EC(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

_BYTE *sub_23C425020(_BYTE *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  return sub_23C422BC0(a1);
}

uint64_t sub_23C42503C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23EED1A40);
  }

  return result;
}

double static iCloudTapToRadar.settings.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x4449656C646E7542;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "Classification");
  *(a1 + 87) = -18;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0x6375646F72706552;
  *(a1 + 104) = 0xEF7974696C696269;
  *(a1 + 112) = 6;
  *(a1 + 120) = 0x656C746954;
  *(a1 + 128) = 0xE500000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x7470697263736544;
  *(a1 + 160) = 0xEB000000006E6F69;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0x7364726F7779654BLL;
  *(a1 + 192) = 0xE800000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 200) = MEMORY[0x277D84F90];
  v3 = type metadata accessor for TapToRadarDraft();
  v4 = (a1 + v3[11]);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230) + 36);
  v6 = sub_23C436F2C();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *v4 = 0x7349664F656D6954;
  *(v4 + 1) = 0xEB00000000657573;
  v7 = (a1 + v3[12]);
  *v7 = 0x656D686361747441;
  v7[1] = 0xEB0000000073746ELL;
  v7[2] = v2;
  v8 = (a1 + v3[13]);
  *v8 = 0xD000000000000011;
  v8[1] = 0x800000023C4396E0;
  v8[2] = v2;
  v9 = (a1 + v3[14]);
  *v9 = 0xD000000000000014;
  v9[1] = 0x800000023C439700;
  v9[2] = v2;
  v10 = (a1 + v3[15]);
  strcpy(v10, "DeleteOnAttach");
  v10[15] = -18;
  v10[16] = 0;
  v11 = (a1 + v3[16]);
  *v11 = 0x4449656369766544;
  v11[1] = 0xE900000000000073;
  v11[2] = v2;
  v12 = a1 + v3[17];
  strcpy(v12, "DeviceClasses");
  *(v12 + 14) = -4864;
  *(v12 + 16) = v2;
  v13 = a1 + v3[18];
  strcpy(v13, "DeviceModels");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  *(v13 + 16) = v2;
  v14 = (a1 + v3[19]);
  *v14 = 0xD000000000000016;
  v14[1] = 0x800000023C439720;
  v14[2] = 0;
  v15 = a1 + v3[20];
  *v15 = 0xD00000000000001ALL;
  *(v15 + 8) = 0x800000023C439740;
  *(v15 + 16) = 0;
  v16 = a1 + v3[21];
  *v16 = 0x676169446F747541;
  *(v16 + 8) = 0xEF73636974736F6ELL;
  *(v16 + 16) = 0;
  v17 = (a1 + v3[22]);
  *v17 = 0xD00000000000001BLL;
  v17[1] = 0x800000023C439760;
  v17[2] = v2;
  v18 = (a1 + v3[23]);
  *v18 = 0xD000000000000018;
  v18[1] = 0x800000023C439780;
  v18[2] = 0;
  v18[3] = 0;
  *(v15 + 16) = 1;
  *(a1 + 32) = xmmword_23C438C30;
  *(a1 + 48) = 0x800000023C4397A0;
  *&result = 5459817;
  *(a1 + 56) = xmmword_23C438C40;
  return result;
}

void sub_23C4255A0()
{
  v1 = v0;
  v2 = sub_23C436F7C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23C436FAC();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23C436F2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23C436FDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 aa_addClientInfoHeaders];
  [v1 aa_addMultiUserDeviceHeaderIfEnabled];
  v19 = sub_23C43711C();
  [v1 aa:v19 addContentTypeHeaders:?];

  [v1 ak_addDeviceUDIDHeader];
  v20 = [objc_opt_self() systemTimeZone];
  sub_23C436FCC();

  sub_23C436F1C();
  sub_23C436FBC();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
  if (v22)
  {
    v23 = sub_23C43711C();

    v24 = sub_23C43711C();
    [v1 setValue:v23 forHTTPHeaderField:v24];
  }

  v25 = [objc_opt_self() currentInfo];
  if (!v25)
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = v25;
  v27 = [v25 udid];

  v28 = sub_23C43711C();
  [v1 setValue:v27 forHTTPHeaderField:v28];

  v29 = [objc_opt_self() currentLocale];
  sub_23C436F9C();

  v30 = v45;
  sub_23C436F8C();
  (*(v43 + 8))(v8, v44);
  sub_23C436F6C();
  (*(v46 + 8))(v30, v47);
  v31 = sub_23C43711C();

  v32 = sub_23C43711C();
  [v1 setValue:v31 forHTTPHeaderField:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v33 setDateStyle_];
  [v33 setTimeStyle_];
  v34 = [v33 dateFormat];
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v35 = v34;

  v36 = sub_23C43711C();
  [v1 setValue:v35 forHTTPHeaderField:v36];

  v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v37 setDateStyle_];
  [v37 setTimeStyle_];
  v38 = [v37 dateFormat];
  if (!v38)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v39 = v38;

  v40 = sub_23C43711C();
  [v1 setValue:v39 forHTTPHeaderField:v40];

  v48[3] = &type metadata for SwiftUIFeatures;
  v48[4] = sub_23C426A20();
  LOBYTE(v40) = sub_23C436FEC();
  __swift_destroy_boxed_opaque_existential_0(v48);
  if (v40)
  {
    v41 = sub_23C43711C();
    v42 = sub_23C43711C();
    [v1 setValue:v41 forHTTPHeaderField:v42];
  }
}

uint64_t sub_23C425C24(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_23C425C44, 0, 0);
}

uint64_t sub_23C425C44()
{
  v1 = v0[20];
  v2 = v0[21];
  [v1 aa_needsEmailConfiguration];
  v3 = sub_23C43711C();

  v4 = sub_23C43711C();
  [v2 setValue:v3 forHTTPHeaderField:v4];

  [v1 isEnabledForDataclass_];
  v5 = sub_23C43711C();

  v6 = sub_23C43711C();
  [v2 setValue:v5 forHTTPHeaderField:v6];

  [v1 isEnabledForDataclass_];
  v7 = sub_23C43711C();

  v8 = sub_23C43711C();
  [v2 setValue:v7 forHTTPHeaderField:v8];

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23C43714C();
    v13 = v12;

    if (v11 == 0xD000000000000015 && 0x800000023C439820 == v13)
    {

LABEL_6:
      v15 = sub_23C43711C();
      v16 = [objc_opt_self() containerWithIdentifier_];
      v0[22] = v16;

      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_23C4260F4;
      v17 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4790, &qword_23C438C90);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_23C426590;
      v0[13] = &block_descriptor;
      v0[14] = v17;
      [v16 fetchCurrentDeviceIDWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v14 = sub_23C4374AC();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v18 = sub_23C43701C();
  __swift_project_value_buffer(v18, qword_2814FA1F0);
  v19 = sub_23C436FFC();
  v20 = sub_23C4372CC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_23C414000, v19, v20, "Caller is not running on Settings process. Bailing.", v21, 2u);
    MEMORY[0x23EED1A40](v21, -1, -1);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_23C4260F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_23C4263E4;
  }

  else
  {
    v3 = sub_23C426204;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C426204()
{
  v15 = v0;
  v2 = v0[18];
  v1 = v0[19];
  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA1F0);

  v4 = sub_23C436FFC();
  v5 = sub_23C4372BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23C423048(v2, v1, &v14);
    _os_log_impl(&dword_23C414000, v4, v5, "iCloud backup device id: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EED1A40](v7, -1, -1);
    MEMORY[0x23EED1A40](v6, -1, -1);
  }

  v8 = v0[21];
  v9 = v0[22];
  v10 = sub_23C43711C();

  v11 = sub_23C43711C();
  [v8 setValue:v10 forHTTPHeaderField:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23C4263E4()
{
  v1 = v0[23];
  swift_willThrow();
  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA1F0);
  v4 = v2;
  v5 = sub_23C436FFC();
  v6 = sub_23C4372CC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[22];
  v8 = v0[23];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23C414000, v5, v6, "Failed to fetch iCloud backup device id w/ error: %@", v10, 0xCu);
    sub_23C426824(v11);
    MEMORY[0x23EED1A40](v11, -1, -1);
    MEMORY[0x23EED1A40](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23C426590(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23C43714C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

void sub_23C426664(void *a1)
{
  if (a1 && [a1 signURLRequest:v1 isUserInitiated:1])
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v2 = sub_23C43701C();
    __swift_project_value_buffer(v2, qword_2814FA1F0);
    oslog = sub_23C436FFC();
    v3 = sub_23C4372DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "GS Request signed successfully!";
LABEL_11:
      _os_log_impl(&dword_23C414000, oslog, v3, v5, v4, 2u);
      MEMORY[0x23EED1A40](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v6 = sub_23C43701C();
    __swift_project_value_buffer(v6, qword_2814FA1F0);
    oslog = sub_23C436FFC();
    v3 = sub_23C4372CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to sign grandslam request";
      goto LABEL_11;
    }
  }
}

uint64_t sub_23C426824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4798, &qword_23C438C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C42688C(void *a1)
{
  v1 = [a1 aa_personID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23C43714C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v7 = result;
    v8 = [result aa_primaryAppleAccount];

    if (v8 && (v9 = [v8 aa_personID], v8, v9))
    {
      v10 = sub_23C43714C();
      v12 = v11;

      if (v5)
      {
        v13 = 1702195828;
        if (v10 == v3 && v5 == v12)
        {
        }

        else
        {
          v15 = sub_23C4374AC();

          if ((v15 & 1) == 0)
          {
            return 0x65736C6166;
          }
        }

        return v13;
      }

      v13 = 0x65736C6166;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C426A20()
{
  result = qword_27E1F47A0;
  if (!qword_27E1F47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47A0);
  }

  return result;
}

unint64_t sub_23C426A74(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F0, &unk_23C438F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23C43714C();
  *(inited + 40) = v4;
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x800000023C4399B0;
        v33 = *MEMORY[0x277CCA470];
        *(inited + 80) = sub_23C43714C();
        *(inited + 88) = v34;
        *(inited + 120) = v5;
        *(inited + 96) = 0xD000000000000038;
        *(inited + 104) = 0x800000023C439AD0;
        v35 = *MEMORY[0x277CCA498];
        *(inited + 128) = sub_23C43714C();
        *(inited + 136) = v36;
        v10 = 0x800000023C439BE0;
        v11 = 0xD00000000000001FLL;
        goto LABEL_16;
      }

      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x800000023C4399E0;
      v16 = *MEMORY[0x277CCA470];
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v17;
      *(inited + 120) = v5;
      v11 = 0xD00000000000001CLL;
      *(inited + 96) = 0xD00000000000001CLL;
      *(inited + 104) = 0x800000023C439B10;
      v18 = *MEMORY[0x277CCA498];
      *(inited + 128) = sub_23C43714C();
      *(inited + 136) = v19;
      v20 = "Check logs for error message";
    }

    else
    {
      if (a1 == 3)
      {
        *(inited + 48) = 0xD000000000000015;
        *(inited + 56) = 0x800000023C439A30;
        v6 = *MEMORY[0x277CCA470];
        *(inited + 80) = sub_23C43714C();
        *(inited + 88) = v7;
        *(inited + 120) = v5;
        *(inited + 96) = 0xD000000000000022;
        *(inited + 104) = 0x800000023C439B50;
        v8 = *MEMORY[0x277CCA498];
        *(inited + 128) = sub_23C43714C();
        *(inited + 136) = v9;
        v10 = 0xEC00000072616461;
        v11 = 0x72206120656C6966;
        goto LABEL_16;
      }

      v11 = 0xD000000000000015;
      *(inited + 48) = 0xD000000000000026;
      *(inited + 56) = 0x800000023C439A00;
      v29 = *MEMORY[0x277CCA470];
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v30;
      *(inited + 120) = v5;
      *(inited + 96) = 0xD00000000000001ELL;
      *(inited + 104) = 0x800000023C439B30;
      v31 = *MEMORY[0x277CCA498];
      *(inited + 128) = sub_23C43714C();
      *(inited + 136) = v32;
      v20 = "check string contents";
    }

    v10 = (v20 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *(inited + 48) = 0xD000000000000022;
      *(inited + 56) = 0x800000023C439A80;
      v12 = *MEMORY[0x277CCA470];
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v13;
      v14 = 0x800000023C439BA0;
      *(inited + 120) = v5;
      v15 = 0xD000000000000019;
    }

    else
    {
      *(inited + 48) = 0xD000000000000020;
      *(inited + 56) = 0x800000023C439A50;
      v25 = *MEMORY[0x277CCA470];
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v26;
      v14 = 0x800000023C439B80;
      *(inited + 120) = v5;
      v15 = 0xD00000000000001ALL;
    }

    *(inited + 96) = v15;
    *(inited + 104) = v14;
    v27 = *MEMORY[0x277CCA498];
    *(inited + 128) = sub_23C43714C();
    *(inited + 136) = v28;
    v10 = 0x800000023C439C40;
    v11 = 0xD000000000000018;
  }

  else
  {
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x800000023C439AB0;
    v21 = *MEMORY[0x277CCA470];
    *(inited + 80) = sub_23C43714C();
    *(inited + 88) = v22;
    *(inited + 120) = v5;
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x800000023C439BC0;
    v23 = *MEMORY[0x277CCA498];
    *(inited + 128) = sub_23C43714C();
    *(inited + 136) = v24;
    v10 = 0x800000023C439C60;
    v11 = 0xD000000000000014;
  }

LABEL_16:
  *(inited + 168) = v5;
  *(inited + 144) = v11;
  *(inited + 152) = v10;
  v37 = sub_23C417638(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F8, &qword_23C438140);
  swift_arrayDestroy();
  return v37;
}

uint64_t sub_23C426E94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_23C4371EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void sub_23C426F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_23C4370DC();
  }

  else
  {
    v6 = 0;
  }

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23C426E94;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v7);
}

id BAARequestSigner.__allocating_init(date:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  v7 = objc_allocWithZone(v1);
  sub_23C417A7C(a1, v6, &qword_27E1F45C0, &qword_23C438CB0);
  v8 = type metadata accessor for BAARequestSigner();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v9 = objc_allocWithZone(v8);
  v10 = sub_23C427658(v6, v14);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  v11 = *((*MEMORY[0x277D85000] & *v7) + 0x30);
  v12 = *((*MEMORY[0x277D85000] & *v7) + 0x34);
  swift_deallocPartialClassInstance();
  return v10;
}

id BAARequestSigner.init(date:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  sub_23C417A7C(a1, v14 - v6, &qword_27E1F45C0, &qword_23C438CB0);
  v8 = type metadata accessor for BAARequestSigner();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v9 = objc_allocWithZone(v8);
  v10 = sub_23C427658(v7, v14);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  v11 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v12 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t type metadata accessor for BAARequestSigner()
{
  result = qword_27E1F47E0;
  if (!qword_27E1F47E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23C427658(uint64_t a1, uint64_t a2)
{
  sub_23C417A7C(a1, v2 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date, &qword_27E1F45C0, &qword_23C438CB0);
  sub_23C417A7C(a2, &v8, &qword_27E1F4828, &qword_23C438FB8);
  if (v9)
  {
    sub_23C424C70(&v8, &v10);
  }

  else
  {
    v11 = &type metadata for DeviceIdentityCertificateFetcher;
    v12 = &off_284F080B8;
  }

  sub_23C424C70(&v10, v2 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_baaCertificateFetcher);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BAARequestSigner();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_23C41ED98(a2, &qword_27E1F4828, &qword_23C438FB8);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  return v5;
}

uint64_t sub_23C42775C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4528, &qword_23C438180) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C4277FC, 0, 0);
}

uint64_t sub_23C4277FC()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_23C436D3C();
  v3 = sub_23C436E8C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_23C41ED98(v0[11], &qword_27E1F4528, &qword_23C438180);
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v7 = sub_23C43701C();
    __swift_project_value_buffer(v7, qword_2814FA1F0);
    v8 = sub_23C436FFC();
    v9 = sub_23C4372CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23C414000, v8, v9, "Attempted to BAA sign request with no path", v10, 2u);
      MEMORY[0x23EED1A40](v10, -1, -1);
    }

    sub_23C4177E0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[11];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = sub_23C436E6C();
    v19 = v18;
    v0[12] = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_23C436D5C();
    v0[13] = v20;
    v21 = *(v20 - 8);
    v0[14] = v21;
    (*(v21 + 16))(v16, v15, v20);
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v22 = sub_23C43701C();
    __swift_project_value_buffer(v22, qword_2814FA1F0);
    v23 = sub_23C436FFC();
    v24 = sub_23C4372BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23C414000, v23, v24, "Fetching BAA signing credentials", v25, 2u);
      MEMORY[0x23EED1A40](v25, -1, -1);
    }

    v26 = v0[10];

    v27 = v26 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date;
    v28 = v26 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_baaCertificateFetcher;
    v29 = swift_task_alloc();
    v0[15] = v29;
    v29[2] = v28;
    v29[3] = v27;
    v29[4] = v17;
    v29[5] = v19;
    v30 = *(MEMORY[0x277D85A40] + 4);
    v31 = swift_task_alloc();
    v0[16] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F47B0, &qword_23C438CC8);
    *v31 = v0;
    v31[1] = sub_23C427C10;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x800000023C439950, sub_23C42A004, v29, v32);
  }
}

uint64_t sub_23C427C10()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_23C427F10;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);

    v4 = sub_23C427D38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23C427D38()
{
  v1 = v0[7];
  v2 = v0[8];
  v18 = v0[2];
  v19 = v0[11];
  v3 = v0[4];
  v16 = v3;
  v17 = v0[3];
  v15 = v0[5];
  v4 = v0[6];
  sub_23C436EAC();
  sub_23C436D4C();

  sub_23C436EAC();
  sub_23C436D4C();

  v5 = SecCertificateCopyData(v4);
  v6 = sub_23C436EBC();
  v8 = v7;

  v20 = v6;
  v21 = v8;
  v9 = SecCertificateCopyData(v1);
  v10 = sub_23C436EBC();
  v12 = v11;

  sub_23C436ECC();
  sub_23C436EAC();
  sub_23C436D4C();

  sub_23C42A010(v10, v12);

  sub_23C42A010(v16, v15);
  sub_23C42A010(v18, v17);
  sub_23C42A010(v20, v21);

  v13 = v0[1];

  return v13();
}

uint64_t sub_23C427F10()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];

  (*(v2 + 8))(v5, v4);
  v6 = v0[17];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23C428134(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_23C436D5C();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  v3[7] = _Block_copy(a2);
  sub_23C436D2C();
  a3;
  v11 = swift_task_alloc();
  v3[8] = v11;
  *v11 = v3;
  v11[1] = sub_23C428280;

  return sub_23C42775C(v10, v9);
}

uint64_t sub_23C428280()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v5 + 8);
  v9(v4, v6);

  if (v0)
  {
    v10 = sub_23C436E3C();

    v11 = v10;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v14 = v2[6];
    v15 = v2[3];
    v13 = sub_23C436D1C();
    v9(v14, v15);
    v12 = v13;
    v11 = 0;
  }

  v17 = v2[6];
  v16 = v2[7];
  v18 = v2[5];
  (v16)[2](v16, v12, v11);

  _Block_release(v16);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_23C428484(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v47 = *(v6 - 8);
  v45 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v40 - v10;
  v11 = sub_23C4370BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4810, &qword_23C438FA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  v17 = *MEMORY[0x277D048E0];
  v51 = sub_23C43714C();
  v52 = v18;
  v19 = MEMORY[0x277D837D0];
  sub_23C43734C();
  *(inited + 96) = v19;
  *(inited + 72) = 4608835;
  *(inited + 80) = 0xE300000000000000;
  v20 = *MEMORY[0x277D04950];
  v51 = sub_23C43714C();
  v52 = v21;
  sub_23C43734C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 129600;
  v22 = *MEMORY[0x277D04928];
  v51 = sub_23C43714C();
  v52 = v23;
  sub_23C43734C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4728, &qword_23C4389D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23C438CA0;
  v25 = *MEMORY[0x277D04930];
  *(v24 + 32) = sub_23C43714C();
  *(v24 + 40) = v26;
  v27 = *MEMORY[0x277D04908];
  *(v24 + 48) = sub_23C43714C();
  *(v24 + 56) = v28;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  *(inited + 216) = v24;
  v41 = sub_23C417834(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4518, &qword_23C438FB0);
  swift_arrayDestroy();
  v40[1] = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_23C42B02C();
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v29 = sub_23C4372EC();
  (*(v12 + 8))(v15, v11);
  v31 = v42;
  v30 = v43;
  (*(v8 + 16))(v42, v46, v43);
  v32 = v44;
  sub_23C417A7C(v48, v44, &qword_27E1F45C0, &qword_23C438CB0);
  v33 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v34 = (v9 + *(v47 + 80) + v33) & ~*(v47 + 80);
  v35 = (v45 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v8 + 32))(v36 + v33, v31, v30);
  sub_23C42B078(v32, v36 + v34);
  v37 = (v36 + v35);
  v38 = v50;
  *v37 = v49;
  v37[1] = v38;

  sub_23C426F48(v29, v41, sub_23C42B0E8, v36);
}

void sub_23C428964(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a7;
  v112 = a6;
  v116 = a4;
  error[1] = *MEMORY[0x277D85DE8];
  v11 = sub_23C43717C();
  v114 = *(v11 - 8);
  v12 = *(v114 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23C436F2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v111 - v22;
  v115 = a1;
  if (a1)
  {
    if (a3)
    {
      v24 = v115;
      v25 = v115;
      v26 = a3;
      if (qword_2814FA100 != -1)
      {
        swift_once();
      }

      v27 = sub_23C43701C();
      __swift_project_value_buffer(v27, qword_2814FA1F0);
      v28 = a3;
      v29 = sub_23C436FFC();
      v30 = sub_23C4372CC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v118 = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = sub_23C43752C();
        v35 = sub_23C423048(v33, v34, &v118);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_23C414000, v29, v30, "Unable to get BAA certificates. Error: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x23EED1A40](v32, -1, -1);
        MEMORY[0x23EED1A40](v31, -1, -1);
      }

      sub_23C4177E0();
      v36 = swift_allocError();
      *v37 = 1;
      v118 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
      sub_23C43721C();

      goto LABEL_30;
    }

    if (!a2)
    {
      v59 = v115;
      goto LABEL_25;
    }

    Signature = v115;
    v51 = sub_23C429774(a2);
    if (!v51)
    {
LABEL_25:
      if (qword_2814FA100 != -1)
      {
        swift_once();
      }

      v60 = sub_23C43701C();
      __swift_project_value_buffer(v60, qword_2814FA1F0);
      v61 = sub_23C436FFC();
      v62 = sub_23C4372CC();
      v63 = os_log_type_enabled(v61, v62);
      v24 = v115;
      if (v63)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_23C414000, v61, v62, "Unable to get BAA certificates. Unknown error.", v64, 2u);
        MEMORY[0x23EED1A40](v64, -1, -1);
      }

      sub_23C4177E0();
      v65 = swift_allocError();
      *v66 = 1;
      v118 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
      sub_23C43721C();
      goto LABEL_30;
    }

    v52 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      v68 = v51;
      v69 = sub_23C43740C();
      v51 = v68;
      if (v69 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_18:

      goto LABEL_25;
    }

    v111 = v51;
    sub_23C417A7C(a5, v23, &qword_27E1F45C0, &qword_23C438CB0);
    if ((*(v16 + 48))(v23, 1, v15) == 1)
    {
      sub_23C41ED98(v23, &qword_27E1F45C0, &qword_23C438CB0);
      sub_23C436F0C();
      v23 = v19;
    }

    sub_23C436EEC();
    v71 = v70;
    v73 = *(v16 + 8);
    v72 = v16 + 8;
    v73(v23, v15);
    v74 = v71 * 1000.0;
    if (COERCE__INT64(fabs(v71 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -1.0)
    {
      if (v74 < 1.84467441e19)
      {
        v118 = v74;
        v118 = sub_23C43746C();
        v119 = v75;

        MEMORY[0x23EED0F50](59, 0xE100000000000000);

        MEMORY[0x23EED0F50](v112, v113);

        sub_23C43716C();
        v72 = sub_23C43715C();
        v19 = v76;

        (*(v114 + 8))(v14, v11);
        if (v19 >> 60 == 15)
        {

          sub_23C4177E0();
          v77 = swift_allocError();
          *v78 = 4;
          v118 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
          sub_23C43721C();

          goto LABEL_31;
        }

        error[0] = 0;
        v79 = *MEMORY[0x277CDC300];
        v80 = sub_23C436E9C();
        Signature = SecKeyCreateSignature(Signature, v79, v80, error);

        if (!Signature)
        {

          v86 = error[0];
          if (!error[0])
          {
            if (qword_2814FA100 != -1)
            {
              swift_once();
            }

            v105 = sub_23C43701C();
            __swift_project_value_buffer(v105, qword_2814FA1F0);
            v106 = sub_23C436FFC();
            v107 = sub_23C4372CC();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              *v108 = 0;
              _os_log_impl(&dword_23C414000, v106, v107, "BAA signature was empty", v108, 2u);
              MEMORY[0x23EED1A40](v108, -1, -1);
            }

            sub_23C4177E0();
            v109 = swift_allocError();
            *v110 = 3;
            v118 = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
            sub_23C43721C();
            sub_23C42B21C(v72, v19);
            v24 = v115;
            goto LABEL_30;
          }

          if (qword_2814FA100 == -1)
          {
            goto LABEL_51;
          }

          goto LABEL_67;
        }

        if (qword_2814FA100 == -1)
        {
LABEL_42:
          v81 = sub_23C43701C();
          __swift_project_value_buffer(v81, qword_2814FA1F0);
          v82 = sub_23C436FFC();
          v83 = sub_23C4372BC();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_23C414000, v82, v83, "Successfully fetched BAA signing credentials", v84, 2u);
            MEMORY[0x23EED1A40](v84, -1, -1);
          }

          sub_23C42B288(v72, v19);
          v85 = Signature;
          v86 = sub_23C436EBC();
          v88 = v87;

          v89 = v111;
          if ((v111 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x23EED1100](0, v111);
            v93 = MEMORY[0x23EED1100](1, v89);
            goto LABEL_48;
          }

          v90 = *(v52 + 16);
          if (v90)
          {
            if (v90 != 1)
            {
              v91 = *(v111 + 40);
              v92 = *(v111 + 32);
              v93 = v91;
LABEL_48:
              v94 = v93;

              v118 = v72;
              v119 = v19;
              v120 = v86;
              v121 = v88;
              v122 = v92;
              v123 = v94;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
              sub_23C43722C();
LABEL_54:
              sub_23C42B21C(v72, v19);

              v24 = v115;
LABEL_30:

              goto LABEL_31;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_67:
          swift_once();
LABEL_51:
          v95 = sub_23C43701C();
          __swift_project_value_buffer(v95, qword_2814FA1F0);
          v85 = v86;
          v96 = sub_23C436FFC();
          v97 = sub_23C4372CC();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v118 = v99;
            *v98 = 136315138;
            v117 = v85;
            type metadata accessor for CFError(0);
            sub_23C42B230();
            v100 = sub_23C43752C();
            v102 = sub_23C423048(v100, v101, &v118);

            *(v98 + 4) = v102;
            _os_log_impl(&dword_23C414000, v96, v97, "Unable to create BAA signature: %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x23EED1A40](v99, -1, -1);
            MEMORY[0x23EED1A40](v98, -1, -1);
          }

          sub_23C4177E0();
          v103 = swift_allocError();
          *v104 = 5;
          v118 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
          sub_23C43721C();
          goto LABEL_54;
        }

LABEL_63:
        swift_once();
        goto LABEL_42;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (a3)
  {
    v38 = a3;
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v39 = sub_23C43701C();
    __swift_project_value_buffer(v39, qword_2814FA1F0);
    v40 = a3;
    v41 = sub_23C436FFC();
    v42 = sub_23C4372CC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v118 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = sub_23C43752C();
      v47 = sub_23C423048(v45, v46, &v118);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_23C414000, v41, v42, "Unable to get BAA signing keys. Error: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23EED1A40](v44, -1, -1);
      MEMORY[0x23EED1A40](v43, -1, -1);
    }

    sub_23C4177E0();
    v48 = swift_allocError();
    *v49 = 2;
    v118 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
    sub_23C43721C();
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v53 = sub_23C43701C();
    __swift_project_value_buffer(v53, qword_2814FA1F0);
    v54 = sub_23C436FFC();
    v55 = sub_23C4372CC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23C414000, v54, v55, "Unable to get BAA signing keys. Unknown error.", v56, 2u);
      MEMORY[0x23EED1A40](v56, -1, -1);
    }

    sub_23C4177E0();
    v57 = swift_allocError();
    *v58 = 2;
    v118 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
    sub_23C43721C();
  }

LABEL_31:
  v67 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C429774(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23C4373AC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23C424C14(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23C43738C();
    v4 = *(v7 + 16);
    sub_23C4373BC();
    sub_23C4373CC();
    sub_23C43739C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id BAARequestSigner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BAARequestSigner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BAARequestSigner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C42997C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C41FA0C;

  return sub_23C42775C(a1, a2);
}

unint64_t RequestSigningError.errorDescription.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000002ELL;
  }

  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000022;
  if (v2 != 1)
  {
    v5 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
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

unint64_t RequestSigningError.failureReason.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000038;
  }

  v4 = 0xD000000000000022;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
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

unint64_t RequestSigningError.recoverySuggestion.getter()
{
  v1 = *v0;
  v2 = 0x72206120656C6966;
  v3 = 0xD00000000000001CLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

ACSEFoundation::RequestSigningError_optional __swiftcall RequestSigningError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23C429CD8()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000002ELL;
  }

  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000022;
  if (v2 != 1)
  {
    v5 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
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

unint64_t sub_23C429DA0()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000038;
  }

  v4 = 0xD000000000000022;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
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

unint64_t sub_23C429E68()
{
  v1 = *v0;
  v2 = 0x72206120656C6966;
  v3 = 0xD00000000000001CLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}