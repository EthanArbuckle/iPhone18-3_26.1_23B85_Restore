uint64_t sub_23C586718(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *(*((v4 & v3) + 0x68) + 8);
  v7 = *((v4 & v3) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  sub_23C871964();
  v8 = sub_23C871B74();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

uint64_t sub_23C586850(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23C5868C4(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *(*((*MEMORY[0x277D85000] & *v1) + 0x68) + 8);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v7 = sub_23C871964();
  v8 = sub_23C871B74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *((v4 & v3) + 0x70);
  v14 = *(v1 + v13);
  *(v1 + v13) = a1;
  v15 = a1;
  sub_23C588D5C(v14);
  sub_23C5865E8(v12);
  v16 = (*(*(v7 - 8) + 48))(v12, 1, v7);
  result = (*(v9 + 8))(v12, v8);
  if (v16 != 1)
  {
    return [v15 requestDemand_];
  }

  return result;
}

void sub_23C586AB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23C5868C4(v4);
}

uint64_t sub_23C586B1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*((*MEMORY[0x277D85000] & *v2) + 0x68) + 8);
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v6 = sub_23C871964();
  v7 = sub_23C871B74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v33 - v14;
  v16 = *(v6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v33 - v18;
  sub_23C588DC0(a1, v35);
  if (swift_dynamicCast())
  {
    v33[0] = v8;
    v20 = v34;
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
    swift_beginAccess();
    sub_23C871924();
    v33[1] = v20;
    swift_unknownObjectRetain();
    sub_23C871914();
    swift_endAccess();
    sub_23C5865E8(v15);
    if ((*(v16 + 48))(v15, 1, v6) == 1)
    {
      (*(v33[0] + 8))(v15, v7);
    }

    else
    {
      (*(v16 + 32))(v19, v15, v6);
      (*(v16 + 56))(v12, 1, 1, v6);
      sub_23C586718(v12);
      swift_beginAccess();
      swift_getWitnessTable();
      sub_23C871AA4();
      swift_endAccess();
      v35[0] = v34;
      sub_23C871954();
      (*(v16 + 8))(v19, v6);
    }

    v31 = *MEMORY[0x277CF1780];
    swift_unknownObjectRelease();
    return v31;
  }

  else
  {
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
    sub_23C588DC0(a1, v35);
    v23 = sub_23C871634();
    v24 = sub_23C871AD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      __swift_project_boxed_opaque_existential_0(v35, v35[3]);
      v33[2] = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9738, &qword_23C873CD8);
      v27 = sub_23C8717D4();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v35);
      v30 = sub_23C63C388(v27, v29, &v34);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_23C56D000, v23, v24, "BiomeAsyncSubscriber ignored unexpected input type %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EED8240](v26, -1, -1);
      MEMORY[0x23EED8240](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    return BPSDemandMax();
  }
}

uint64_t sub_23C587044(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  v3 = sub_23C586B1C(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

void sub_23C5870B0(void *a1)
{
  v2 = v1;
  v4 = *(*((*MEMORY[0x277D85000] & *v1) + 0x68) + 8);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v6 = sub_23C871964();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v48 - v8;
  v49 = sub_23C871B74();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v50 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v24 = [a1 state];
  if (v24 == 1)
  {
    v29 = [a1 error];
    v28 = v51;
    v30 = (v51 + 48);
    if (v29)
    {
      v31 = v29;
      sub_23C5865E8(v19);
      v32 = (*v30)(v19, 1, v6);
      v25 = MEMORY[0x277D85000];
      if (v32)
      {

        (*(v9 + 8))(v19, v49);
      }

      else
      {
        v40 = v48;
        (*(v28 + 16))(v48, v19, v6);
        (*(v9 + 8))(v19, v49);
        v53 = v31;
        sub_23C871944();
        (*(v28 + 8))(v40, v6);
      }
    }

    else
    {
      sub_23C5865E8(v16);
      v33 = (*v30)(v16, 1, v6);
      v25 = MEMORY[0x277D85000];
      if (v33)
      {
        (*(v9 + 8))(v16, v49);
      }

      else
      {
        v42 = v48;
        (*(v28 + 16))(v48, v16, v6);
        (*(v9 + 8))(v16, v49);
        sub_23C588D6C();
        v43 = swift_allocError();
        *v44 = 0xD00000000000003BLL;
        v44[1] = 0x800000023C8A6CC0;
        v53 = v43;
        sub_23C871944();
        (*(v28 + 8))(v42, v6);
      }
    }

LABEL_19:
    v45 = v50;
    (*(v28 + 56))(v50, 1, 1, v6);
    sub_23C586718(v45);
    goto LABEL_20;
  }

  if (v24)
  {
    sub_23C5865E8(v13);
    v28 = v51;
    if ((*(v51 + 48))(v13, 1, v6))
    {
      (*(v9 + 8))(v13, v49);
    }

    else
    {
      v34 = v48;
      (*(v28 + 16))(v48, v13, v6);
      (*(v9 + 8))(v13, v49);
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_23C871D14();

      v53 = 0xD00000000000001DLL;
      v54 = 0x800000023C8A6CA0;
      v52 = [a1 state];
      type metadata accessor for BPSCompletionState(0);
      v35 = sub_23C8717D4();
      MEMORY[0x23EED7100](v35);

      v36 = v53;
      v37 = v54;
      sub_23C588D6C();
      v38 = swift_allocError();
      *v39 = v36;
      v39[1] = v37;
      v53 = v38;
      sub_23C871944();
      (*(v28 + 8))(v34, v6);
    }

    v25 = MEMORY[0x277D85000];
    goto LABEL_19;
  }

  v25 = MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  v52 = *(v1 + v26);
  sub_23C871924();
  swift_getWitnessTable();
  if (sub_23C871A84())
  {
    sub_23C5865E8(v23);
    v27 = v51;
    if ((*(v51 + 48))(v23, 1, v6))
    {
      (*(v9 + 8))(v23, v49);
    }

    else
    {
      v41 = v48;
      (*(v27 + 16))(v48, v23, v6);
      (*(v9 + 8))(v23, v49);
      v52 = 0;
      sub_23C871954();
      (*(v27 + 8))(v41, v6);
    }

    v28 = v27;
    goto LABEL_19;
  }

LABEL_20:
  v46 = *((*v25 & *v2) + 0x70);
  v47 = *(v2 + v46);
  *(v2 + v46) = 1;
  sub_23C588D5C(v47);
}

void sub_23C5877D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23C5870B0(v4);
}

uint64_t sub_23C58783C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *(*((*MEMORY[0x277D85000] & *v0) + 0x68) + 8);
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v6 = sub_23C871964();
  v29 = sub_23C871B74();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = 0;
  v18 = *((v3 & v2) + 0x70);
  v19 = *(v0 + v18);
  if (v19 >= 2)
  {
    v17 = v19;
  }

  *(v1 + v18) = 1;
  sub_23C588D5C(v19);
  [v17 cancel];
  sub_23C5865E8(v16);
  v20 = *(v6 - 8);
  (*(v20 + 56))(v14, 1, 1, v6);
  sub_23C586718(v14);
  v21 = v29;
  (*(v7 + 16))(v11, v16, v29);
  v22 = (*(v20 + 48))(v11, 1, v6);
  v23 = v7;
  v24 = v21;
  if (v22 != 1)
  {
    sub_23C871974();
    sub_23C5886A4();
    v25 = swift_allocError();
    sub_23C871694();
    v31 = v25;
    sub_23C871944();
    v23 = v20;
    v24 = v6;
  }

  (*(v23 + 8))(v11, v24);
  v26 = sub_23C8718E4();
  sub_23C586850(v26);

  return (*(v7 + 8))(v16, v21);
}

void sub_23C587B68(void *a1)
{
  v1 = a1;
  sub_23C58783C();
}

void sub_23C587BB0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = MEMORY[0x277D85000];
  v4 = *(*((*MEMORY[0x277D85000] & *v1) + 0x68) + 8);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v6 = sub_23C871964();
  v7 = sub_23C871B74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_23C5865E8(&v22 - v13);
  v15 = *(v6 - 8);
  v16 = (*(v15 + 48))(v14, 1, v6);
  (*(v8 + 8))(v14, v7);
  if (v16 == 1)
  {
    v17 = *(v2 + *((*v3 & *v2) + 0x70));
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *((*v3 & *v2) + 0x80);
        swift_beginAccess();
        v23 = *(v2 + v18);
        sub_23C871924();
        swift_getWitnessTable();
        if (sub_23C871A84())
        {
          v23 = 0;
        }

        else
        {
          v20 = *((*v3 & *v2) + 0x80);
          swift_beginAccess();
          swift_getWitnessTable();
          sub_23C871AA4();
          swift_endAccess();
          v23 = v24;
        }

        sub_23C871954();
      }

      else
      {
        v19 = *((*v3 & *v2) + 0x80);
        swift_beginAccess();
        v23 = *(v2 + v19);
        sub_23C588D4C(v17);
        sub_23C871924();
        swift_getWitnessTable();
        if (sub_23C871A84())
        {
          (*(v15 + 16))(v12, v22, v6);
          (*(v15 + 56))(v12, 0, 1, v6);
          sub_23C586718(v12);
          [v17 requestDemand_];
        }

        else
        {
          v21 = *((*v3 & *v2) + 0x80);
          swift_beginAccess();
          swift_getWitnessTable();
          sub_23C871AA4();
          swift_endAccess();
          v23 = v24;
          sub_23C871954();
        }

        sub_23C588D5C(v17);
      }
    }

    else
    {
      (*(v15 + 16))(v12, v22, v6);
      (*(v15 + 56))(v12, 0, 1, v6);
      sub_23C586718(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23C588098()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_23C58783C();
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber();
  return objc_msgSendSuper2(&v5, sel_dealloc, v3, v4);
}

uint64_t sub_23C588148(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];
  sub_23C588D5C(*&a1[*((*MEMORY[0x277D85000] & *a1) + 0x70)]);
  v5 = *((*v2 & *a1) + 0x78);
  v6 = *(*((v4 & v3) + 0x68) + 8);
  v7 = *((v4 & v3) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  sub_23C871964();
  v8 = sub_23C871B74();
  (*(*(v8 - 8) + 8))(&a1[v5], v8);
  v9 = *&a1[*((*v2 & *a1) + 0x80)];

  v10 = *((*v2 & *a1) + 0x88);
  v11 = sub_23C871654();
  v12 = *(*(v11 - 8) + 8);

  return v12(&a1[v10], v11);
}

id sub_23C588300()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  *&v0[*((v3 & v2) + 0x70)] = 0;
  v5 = *((*v1 & *v0) + 0x78);
  v6 = *((v3 & v2) + 0x68);
  v7 = *(v6 + 8);
  v8 = *((v3 & v2) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v9 = sub_23C871964();
  (*(*(v9 - 8) + 56))(&v0[v5], 1, 1, v9);
  v10 = *((*v1 & *v0) + 0x80);
  *&v0[v10] = sub_23C8718E4();
  v11 = *((*v1 & *v0) + 0x88);
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v12 = *(v4 + 96);
  *&v13 = *(v4 + 80);
  *(&v13 + 1) = v8;
  *(&v12 + 1) = v6;
  v15 = v13;
  v16 = v12;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber();
  return objc_msgSendSuper2(&v17, sel_init, v15, v16);
}

uint64_t sub_23C588560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = BiomeAsyncSequence.makeAsyncIterator()(a1);
  v5 = *v2;
  result = swift_unknownObjectRelease();
  *a2 = v4;
  return result;
}

uint64_t sub_23C58859C(void *a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber()) init];
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  [a1 subscribe_];
  return v1;
}

uint64_t sub_23C58862C(void *a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator();
  swift_allocObject();
  return sub_23C58859C(a1);
}

unint64_t sub_23C5886A4()
{
  result = qword_27E1F95A0[0];
  if (!qword_27E1F95A0[0])
  {
    sub_23C871974();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1F95A0);
  }

  return result;
}

uint64_t sub_23C588724()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MessageTypeWrapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MessageTypeWrapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BiomeAsyncSequence.BiomeAsyncIterator.next()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23C58898C;

  return v6();
}

uint64_t sub_23C58898C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23C588A88(uint64_t a1)
{
  v1 = *(*(a1 + 104) + 8);
  v2 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  sub_23C871964();
  result = sub_23C871B74();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_23C871654();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
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

uint64_t sub_23C588C2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_26AIMLInstrumentationStreams18BiomeAsyncSequenceV0cD10SubscriberC17SubscriptionStateOyx_qd___G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23C588C80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C588CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_23C588D4C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_23C588D5C(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_23C588D6C()
{
  result = qword_27E1F9730;
  if (!qword_27E1F9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9730);
  }

  return result;
}

uint64_t sub_23C588DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23C588EAC()
{
  result = qword_2814FABB0;
  if (!qword_2814FABB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FABB0);
  }

  return result;
}

uint64_t sub_23C588F2C()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x646C656966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_23C588F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23C595760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23C588FB8(uint64_t a1)
{
  v2 = sub_23C5891F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C588FF4(uint64_t a1)
{
  v2 = sub_23C5891F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.ExtractorIn.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9740, &qword_23C873D30);
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
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5891F4();
  sub_23C872154();
  v18 = 0;
  v13 = v15[5];
  sub_23C871F44();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23C871F44();
  v16 = 2;
  sub_23C871F44();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23C5891F4()
{
  result = qword_27E1F9748;
  if (!qword_27E1F9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9748);
  }

  return result;
}

uint64_t BiomeEventGraph.ExtractorIn.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9750, &qword_23C873D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5891F4();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_23C871ED4();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23C871ED4();
  v23 = v14;
  v25 = 2;
  v15 = sub_23C871ED4();
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

uint64_t sub_23C5894F4()
{
  if (*v0)
  {
    result = 0x74757074756FLL;
  }

  else
  {
    result = 0x7475706E69;
  }

  *v0;
  return result;
}

uint64_t sub_23C589528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_23C872014() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23C872014();

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

uint64_t sub_23C5895FC(uint64_t a1)
{
  v2 = sub_23C5898A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C589638(uint64_t a1)
{
  v2 = sub_23C5898A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Extractor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9758, &qword_23C873D40);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v17 = v1[2];
  v18 = v7;
  v10 = v1[4];
  v11 = v1[5];
  v15 = v1[6];
  v16 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5898A8();

  sub_23C872154();
  v21 = v18;
  v22 = v8;
  v23 = v17;
  v24 = v9;
  v25 = v16;
  v26 = v11;
  v27 = 0;
  sub_23C5898FC();
  v13 = v19;
  sub_23C871F94();

  if (!v13)
  {
    v21 = v15;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
    sub_23C589C40(&qword_27E1F9778);
    sub_23C871F94();
  }

  return (*(v20 + 8))(v6, v3);
}

unint64_t sub_23C5898A8()
{
  result = qword_27E1F9760;
  if (!qword_27E1F9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9760);
  }

  return result;
}

unint64_t sub_23C5898FC()
{
  result = qword_27E1F9768;
  if (!qword_27E1F9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9768);
  }

  return result;
}

uint64_t BiomeEventGraph.Extractor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9780, &qword_23C873D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5898A8();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  sub_23C589BEC();
  sub_23C871F24();
  v11 = v22;
  v18 = v23;
  v19 = v21;
  v20 = v24;
  v12 = v26;
  v17 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
  v27 = 1;
  sub_23C589C40(&qword_27E1F9790);
  sub_23C871F24();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v13 = v21;
  v15 = v18;
  *a2 = v19;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v14;
  a2[4] = v17;
  a2[5] = v12;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23C589BEC()
{
  result = qword_27E1F9788;
  if (!qword_27E1F9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9788);
  }

  return result;
}

uint64_t sub_23C589C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9770, &qword_23C873D48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C589CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23C872014();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23C589D7C(uint64_t a1)
{
  v2 = sub_23C589FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C589DB8(uint64_t a1)
{
  v2 = sub_23C589FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Joining.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9798, &qword_23C873D58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C589FA0();

  sub_23C872154();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97A8, &qword_23C873D60);
  sub_23C58A258(&qword_27E1F97B0, sub_23C589FF4);
  sub_23C871F94();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23C589FA0()
{
  result = qword_27E1F97A0;
  if (!qword_27E1F97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97A0);
  }

  return result;
}

unint64_t sub_23C589FF4()
{
  result = qword_27E1F97B8;
  if (!qword_27E1F97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97C0, &qword_23C873D68);
    sub_23C58A388(&qword_27E1F97C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97B8);
  }

  return result;
}

uint64_t BiomeEventGraph.Joining.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97D8, &qword_23C873D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C589FA0();
  sub_23C872144();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97A8, &qword_23C873D60);
    sub_23C58A258(&qword_27E1F97E0, sub_23C58A2DC);
    sub_23C871F24();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58A258(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97A8, &qword_23C873D60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C58A2DC()
{
  result = qword_27E1F97E8;
  if (!qword_27E1F97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97C0, &qword_23C873D68);
    sub_23C58A388(&qword_27E1F97F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97E8);
  }

  return result;
}

uint64_t sub_23C58A388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97D0, &qword_23C873D70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C58A424()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x6973736553776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_23C58A47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23C595874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23C58A4A4(uint64_t a1)
{
  v2 = sub_23C58A718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58A4E0(uint64_t a1)
{
  v2 = sub_23C58A718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.SessionMeta.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97F8, &qword_23C873D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58A718();
  sub_23C872154();
  v20 = 0;
  sub_23C870AE4();
  sub_23C58ABD4(&qword_27E1F9808, MEMORY[0x277CC9578]);
  sub_23C871F94();
  if (!v2)
  {
    v11 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
    v12 = *(v11 + 20);
    v19 = 1;
    sub_23C871F94();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v18 = 2;
    sub_23C871F44();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23C58A718()
{
  result = qword_27E1F9800;
  if (!qword_27E1F9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9800);
  }

  return result;
}

uint64_t BiomeEventGraph.SessionMeta.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = sub_23C870AE4();
  v36 = *(v38 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9810, &qword_23C873D88);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58A718();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = v16;
  v34 = a1;
  v32 = v13;
  v43 = 0;
  sub_23C58ABD4(&qword_27E1F9818, MEMORY[0x277CC9578]);
  v18 = v37;
  v19 = v38;
  sub_23C871F24();
  v37 = *(v36 + 32);
  (v37)(v33, v18, v19);
  v42 = 1;
  v20 = v7;
  sub_23C871F24();
  v22 = v32;
  v21 = v33;
  (v37)(&v33[*(v32 + 20)], v20, v19);
  v41 = 2;
  v23 = sub_23C871ED4();
  v24 = v21;
  v25 = v34;
  v26 = v23;
  v28 = v27;
  (*(v39 + 8))(v12, v40);
  v29 = (v24 + *(v22 + 24));
  *v29 = v26;
  v29[1] = v28;
  sub_23C594F64(v24, v35, type metadata accessor for BiomeEventGraph.SessionMeta);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_23C594FCC(v24, type metadata accessor for BiomeEventGraph.SessionMeta);
}

uint64_t sub_23C58ABD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoAppRequirementEnumO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C58AC94()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C58ACD8()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_23C58AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_23C872014() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEB00000000734E70)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23C872014();

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

uint64_t sub_23C58ADF4(uint64_t a1)
{
  v2 = sub_23C58B000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58AE30(uint64_t a1)
{
  v2 = sub_23C58B000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.PerfEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9820, &qword_23C873D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B000();
  sub_23C872154();
  v15 = 0;
  v11 = v13[1];
  sub_23C871F74();
  if (!v11)
  {
    v14 = 1;
    sub_23C871FA4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23C58B000()
{
  result = qword_27E1F9828;
  if (!qword_27E1F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9828);
  }

  return result;
}

uint64_t BiomeEventGraph.PerfEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9830, &qword_23C873D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B000();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_23C871F04();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_23C871F34();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58B260()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x49747865746E6F63;
  v4 = 0x7472617473;
  if (v1 != 3)
  {
    v4 = 6581861;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23C58B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23C59598C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23C58B328(uint64_t a1)
{
  v2 = sub_23C58B678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58B364(uint64_t a1)
{
  v2 = sub_23C58B678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.PerfEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9838, &qword_23C873DA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v36 = *(v1 + 24);
  v11 = v1[5];
  v30 = v1[4];
  v31 = v10;
  v12 = v1[7];
  v28 = v1[6];
  v29 = v11;
  v13 = v1[9];
  v26 = v1[8];
  v27 = v12;
  v15 = v1[10];
  v14 = v1[11];
  v23 = v13;
  v24 = v15;
  v25 = v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B678();
  sub_23C872154();
  LOBYTE(v33) = 0;
  v17 = v32;
  sub_23C871F44();
  if (!v17)
  {
    v19 = v26;
    v18 = v27;
    v20 = v28;
    LOBYTE(v33) = 1;
    sub_23C871F64();
    LOBYTE(v33) = 2;
    sub_23C871F44();
    v33 = v20;
    v34 = v18;
    v35 = v19;
    v37 = 3;
    sub_23C58B6CC();

    sub_23C871F54();

    v33 = v23;
    v34 = v24;
    v35 = v25;
    v37 = 4;

    sub_23C871F54();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23C58B678()
{
  result = qword_27E1F9840;
  if (!qword_27E1F9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9840);
  }

  return result;
}

unint64_t sub_23C58B6CC()
{
  result = qword_27E1F9848;
  if (!qword_27E1F9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9848);
  }

  return result;
}

uint64_t BiomeEventGraph.PerfEntry.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9850, &qword_23C873DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B678();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v43) = 0;
  v11 = sub_23C871ED4();
  v13 = v12;
  v14 = v11;
  LOBYTE(v43) = 1;
  v35 = sub_23C871EF4();
  v55 = v15 & 1;
  LOBYTE(v43) = 2;
  v33 = sub_23C871ED4();
  v36 = v16;
  LOBYTE(v37) = 3;
  v34 = sub_23C58BB80();
  sub_23C871EE4();
  v32 = v43;
  v31 = v44;
  v56 = 4;
  sub_23C871EE4();
  (*(v6 + 8))(v9, v5);
  v29 = v53;
  v27 = *(&v54 + 1);
  v28 = v54;
  v30 = v14;
  *&v37 = v14;
  *(&v37 + 1) = v13;
  *&v38 = v35;
  LODWORD(v34) = v55;
  BYTE8(v38) = v55;
  v17 = v33;
  *&v39 = v33;
  v18 = v36;
  *(&v39 + 1) = v36;
  v19 = v32;
  v40 = v32;
  v20 = v31;
  *&v41 = v31;
  *(&v41 + 1) = v53;
  v42 = v54;
  v21 = v38;
  *a2 = v37;
  a2[1] = v21;
  v22 = v39;
  v23 = v40;
  v24 = v42;
  a2[4] = v41;
  a2[5] = v24;
  a2[2] = v22;
  a2[3] = v23;
  sub_23C58BBD4(&v37, &v43);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v43 = v30;
  *(&v43 + 1) = v13;
  v44 = v35;
  v45 = v34;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v50 = v29;
  v51 = v28;
  v52 = v27;
  return sub_23C58BC0C(&v43);
}

unint64_t sub_23C58BB80()
{
  result = qword_27E1F9858;
  if (!qword_27E1F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9858);
  }

  return result;
}

uint64_t sub_23C58BC6C()
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](0);
  return sub_23C872124();
}

uint64_t sub_23C58BCB0()
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](0);
  return sub_23C872124();
}

uint64_t sub_23C58BD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7274656D656C6574 && a2 == 0xE900000000000079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23C872014();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23C58BD9C(uint64_t a1)
{
  v2 = sub_23C58BFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58BDD8(uint64_t a1)
{
  v2 = sub_23C58BFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Perf.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9860, &qword_23C873DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58BFB8();

  sub_23C872154();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9870, &qword_23C873DB8);
  sub_23C58C210(&qword_27E1F9878, sub_23C58C00C);
  sub_23C871F94();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23C58BFB8()
{
  result = qword_27E1F9868;
  if (!qword_27E1F9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9868);
  }

  return result;
}

unint64_t sub_23C58C00C()
{
  result = qword_27E1F9880;
  if (!qword_27E1F9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9880);
  }

  return result;
}

uint64_t BiomeEventGraph.Perf.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9888, &unk_23C873DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58BFB8();
  sub_23C872144();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9870, &qword_23C873DB8);
    sub_23C58C210(&qword_27E1F9890, sub_23C58C288);
    sub_23C871F24();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58C210(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9870, &qword_23C873DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C58C288()
{
  result = qword_27E1F9898;
  if (!qword_27E1F9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9898);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventGraph.Events.toJson(humanReadable:)(Swift::Bool humanReadable)
{
  v4 = v2;
  v97 = humanReadable;
  v114[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23C8717C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_23C871414();
  v99 = *(v93 - 8);
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v93);
  v110 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_23C871604();
  v101 = *(v103 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v94 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_23C870FC4();
  v12 = *(v111 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v111);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for TranscriptProtoEvent(0);
  v16 = *(v109 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v109);
  v95 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[1];
  v98 = *v1;
  v20 = v1[3];
  v102 = v1[2];
  v21 = *(v19 + 16);
  v22 = MEMORY[0x277D84F90];
  v100 = v20;
  if (v21)
  {
    v112 = MEMORY[0x277D84F90];
    sub_23C592B40(0, v21, 0);
    v23 = 0;
    v22 = v112;
    v24 = *(v16 + 80);
    v106 = v16;
    v107 = v19 + ((v24 + 32) & ~v24);
    v108 = (v12 + 8);
    v25 = v95;
    v104 = v21;
    v105 = v19;
    while (1)
    {
      if (v23 >= *(v19 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v26 = v22;
      sub_23C594F64(v107 + *(v16 + 72) * v23, v25, type metadata accessor for TranscriptProtoEvent);
      sub_23C870FB4();
      sub_23C58ABD4(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent);
      v27 = sub_23C8711B4();
      v12 = v4;
      if (v4)
      {
        break;
      }

      v29 = v27;
      v30 = v28;
      v31 = v15;
      (*v108)(v15, v111);
      sub_23C594FCC(v25, type metadata accessor for TranscriptProtoEvent);
      v22 = v26;
      v112 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v3 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_23C592B40((v32 > 1), v33 + 1, 1);
        v25 = v95;
        v22 = v112;
      }

      ++v23;
      *(v22 + 16) = v3;
      v34 = v22 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v30;
      v4 = 0;
      v15 = v31;
      v19 = v105;
      v16 = v106;
      if (v104 == v23)
      {
        v20 = v100;
        goto LABEL_10;
      }
    }

    (*v108)(v15, v111);
    sub_23C594FCC(v25, type metadata accessor for TranscriptProtoEvent);
  }

  else
  {
LABEL_10:
    v112 = v22;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
    v105 = sub_23C59502C();
    v106 = v37;
    v95 = sub_23C871704();
    v104 = v38;

    v39 = v102;
    v40 = v103;
    v41 = *(v102 + 16);
    v42 = MEMORY[0x277D84F90];
    v12 = v110;
    if (v41)
    {
      v3 = v4;
      v112 = MEMORY[0x277D84F90];
      v108 = v41;
      sub_23C592B40(0, v41, 0);
      v43 = 0;
      v42 = v112;
      v111 = v39 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v109 = (v101 + 16);
      v44 = (v101 + 8);
      v45 = v94;
      while (1)
      {
        if (v43 >= *(v39 + 16))
        {
          goto LABEL_55;
        }

        (*(v101 + 16))(v45, v111 + *(v101 + 72) * v43, v40);
        v46 = sub_23C8715F4();
        if (v3)
        {
          break;
        }

        v48 = v46;
        v4 = v47;
        (*v44)(v45, v40);
        v112 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_23C592B40((v49 > 1), v50 + 1, 1);
          v45 = v94;
          v42 = v112;
        }

        ++v43;
        *(v42 + 16) = v50 + 1;
        v51 = v42 + 16 * v50;
        *(v51 + 32) = v48;
        *(v51 + 40) = v4;
        v12 = v110;
        v39 = v102;
        v40 = v103;
        if (v108 == v43)
        {
          v4 = 0;
          v20 = v100;
          goto LABEL_20;
        }
      }

      (*v44)(v45, v40);

LABEL_19:
    }

    else
    {
LABEL_20:
      v112 = v42;
      v102 = sub_23C871704();
      v103 = v52;

      v3 = *(v20 + 16);
      v53 = MEMORY[0x277D84F90];
      if (v3)
      {
        v111 = v4;
        v112 = MEMORY[0x277D84F90];
        sub_23C592B40(0, v3, 0);
        v54 = 0;
        v53 = v112;
        v108 = (v20 + ((*(v99 + 80) + 32) & ~*(v99 + 80)));
        v107 = v99 + 16;
        v109 = (v99 + 8);
        v55 = v93;
        while (1)
        {
          if (v54 >= *(v20 + 16))
          {
            goto LABEL_56;
          }

          (*(v99 + 16))(v12, v108 + *(v99 + 72) * v54, v55);
          v56 = v111;
          v57 = sub_23C871394();
          v111 = v56;
          if (v56)
          {
            break;
          }

          v59 = v57;
          v4 = v58;
          (*v109)(v12, v55);
          v112 = v53;
          v61 = *(v53 + 16);
          v60 = *(v53 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_23C592B40((v60 > 1), v61 + 1, 1);
            v55 = v93;
            v53 = v112;
          }

          ++v54;
          *(v53 + 16) = v61 + 1;
          v62 = v53 + 16 * v61;
          *(v62 + 32) = v59;
          *(v62 + 40) = v4;
          v12 = v110;
          v20 = v100;
          if (v3 == v54)
          {
            v3 = v111;
            goto LABEL_30;
          }
        }

        (*v109)(v12, v55);
      }

      else
      {
        v3 = v4;
LABEL_30:
        v112 = v53;
        v12 = sub_23C871704();
        v4 = v63;

        if (v98 >> 62)
        {
          goto LABEL_59;
        }

        for (i = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
        {
          v65 = MEMORY[0x277D84F90];
          if (!i)
          {
            break;
          }

          v100 = v12;
          v101 = v4;
          v111 = v3;
          v112 = MEMORY[0x277D84F90];
          sub_23C592B40(0, i & ~(i >> 63), 0);
          if (i < 0)
          {
            __break(1u);
LABEL_61:
            __break(1u);
          }

          v3 = 0;
          v65 = v112;
          v66 = v98;
          v108 = i;
          v109 = (v98 & 0xC000000000000001);
          v107 = v98 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v4 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (v109)
            {
              v67 = MEMORY[0x23EED7610](v3);
            }

            else
            {
              if (v3 >= *(v107 + 16))
              {
                goto LABEL_58;
              }

              v67 = *(v66 + 8 * v3 + 32);
            }

            v110 = (v3 + 1);
            if (v97)
            {
              v68 = objc_opt_self();
              TimestampedOrderedEvent.dictionaryRepresentation()();
              v69 = sub_23C8716A4();

              v114[0] = 0;
              v70 = [v68 dataWithJSONObject:v69 options:2 error:v114];

              v71 = v114[0];
              if (!v70)
              {
                v90 = v71;
                sub_23C8709B4();

                swift_willThrow();

                goto LABEL_19;
              }

              v72 = sub_23C870A34();
              v12 = v73;
            }

            else
            {
              v74 = sub_23C870964();
              v75 = *(v74 + 48);
              v76 = *(v74 + 52);
              swift_allocObject();
              sub_23C870954();
              v114[0] = v67;
              type metadata accessor for TimestampedOrderedEvent();
              sub_23C58ABD4(&qword_27E1F98B8, type metadata accessor for TimestampedOrderedEvent);
              v77 = v111;
              v78 = sub_23C870944();
              v111 = v77;
              if (v77)
              {

                goto LABEL_53;
              }

              v72 = v78;
              v12 = v79;
            }

            sub_23C8717B4();
            v80 = sub_23C8717A4();
            if (!v81)
            {
              goto LABEL_61;
            }

            v82 = v80;
            v83 = v81;
            sub_23C595090(v72, v12);

            v112 = v65;
            v85 = *(v65 + 16);
            v84 = *(v65 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_23C592B40((v84 > 1), v85 + 1, 1);
              v65 = v112;
            }

            *(v65 + 16) = v85 + 1;
            v86 = v65 + 16 * v85;
            *(v86 + 32) = v82;
            *(v86 + 40) = v83;
            ++v3;
            v66 = v98;
            if (v110 == v108)
            {
              v12 = v100;
              v4 = v101;
              goto LABEL_50;
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          ;
        }

LABEL_50:
        v112 = v65;
        v87 = sub_23C871704();
        v89 = v88;

        v112 = 0;
        v113 = 0xE000000000000000;
        sub_23C871D14();
        MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8A6D20);
        MEMORY[0x23EED7100](v102, v103);

        MEMORY[0x23EED7100](0xD000000000000017, 0x800000023C8A6D40);
        MEMORY[0x23EED7100](v12, v4);

        MEMORY[0x23EED7100](0xD000000000000018, 0x800000023C8A6D60);
        MEMORY[0x23EED7100](v95, v104);

        MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A6D80);
        MEMORY[0x23EED7100](v87, v89);

        MEMORY[0x23EED7100](0x7D20200A5DLL, 0xE500000000000000);
        v35 = v112;
        v36 = v113;
      }
    }
  }

LABEL_53:
  v91 = *MEMORY[0x277D85DE8];
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t sub_23C58CF64()
{
  v1 = 1718379891;
  v2 = 6907495;
  if (*v0 != 2)
  {
    v2 = 0x7274656D656C6574;
  }

  if (*v0)
  {
    v1 = 0x697263736E617274;
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

uint64_t sub_23C58CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23C595B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23C58D00C(uint64_t a1)
{
  v2 = sub_23C5950E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58D048(uint64_t a1)
{
  v2 = sub_23C5950E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.EventIds.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98C0, &qword_23C873DD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17 = v1[2];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5950E4();

  sub_23C872154();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C595138(&qword_27E1F98D0);
  sub_23C871F94();

  if (!v2)
  {
    v13 = v16;
    v14 = v17;
    v20 = v18;
    v19 = 1;
    sub_23C871F94();
    v20 = v14;
    v19 = 2;
    sub_23C871F94();
    v20 = v13;
    v19 = 3;
    sub_23C871F94();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t BiomeEventGraph.EventIds.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98D8, &qword_23C873DD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5950E4();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  v19 = 0;
  sub_23C595138(&qword_27E1F98E0);
  sub_23C871F24();
  v18 = v20;
  v19 = 1;
  sub_23C871F24();
  v16 = 0;
  v17 = v20;
  v19 = 2;
  sub_23C871F24();
  v15 = v20;
  v19 = 3;
  sub_23C871F24();
  (*(v6 + 8))(v9, v5);
  v12 = v20;
  v13 = v17;
  *a2 = v18;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventGraph.SessionDescription.toJson(humanReadable:)(Swift::Bool humanReadable)
{
  v4 = v1;
  v5 = humanReadable;
  v6 = sub_23C8717C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23C870964();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23C870954();
  v104 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98E8, &qword_23C873DE0);
  sub_23C5951A4();
  v14 = v13;
  v15 = sub_23C870944();
  if (v2)
  {
  }

  else
  {
    v17 = v15;
    v18 = v16;
    LODWORD(object) = v5;

    sub_23C8717B4();
    v19 = sub_23C8717A4();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v108 = v4;
    v104 = *(v4 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98F8, &qword_23C873DE8);
    v23 = v18;
    sub_23C595228();
    v24 = sub_23C870944();
    v25 = v9;
    v26 = v24;
    v28 = v27;
    v98 = v21;
    v100 = v22;
    v101 = v23;
    v102 = v17;
    v29 = v25;

    sub_23C8717B4();
    v99 = v29;
    v30 = sub_23C8717A4();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = v28;
    v104 = *(v108 + 16);
    sub_23C59538C();

    v35 = v13;
    v36 = sub_23C870944();
    v38 = v37;
    v96 = v34;
    v97 = v26;
    v95 = v33;

    sub_23C8717B4();
    v39 = sub_23C8717A4();
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v93 = v41;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    v43 = v36;
    v94 = type metadata accessor for BiomeEventGraph.SessionDescription(0);
    v44 = v94[7];
    type metadata accessor for BiomeEventGraph.SessionMeta(0);
    sub_23C58ABD4(&qword_27E1F9928, type metadata accessor for BiomeEventGraph.SessionMeta);
    v45 = sub_23C870944();
    v47 = v46;
    v89 = v32;
    v90 = v43;
    v91 = v38;
    v92 = v42;
    v48 = v45;
    sub_23C8717B4();
    v49 = sub_23C8717A4();
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v104 = *(v108 + v94[8]);
    sub_23C595438();

    v3 = sub_23C870944();
    v86 = v52;
    v87 = v48;
    v88 = v47;
    v83 = v35;
    v56 = v55;

    sub_23C8717B4();
    v85 = v56;
    v57 = sub_23C8717A4();
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0;
    }

    v82 = v59;
    v60 = 0xE000000000000000;
    if (v58)
    {
      v60 = v58;
    }

    v84 = v60;
    v61 = (v108 + v94[9]);
    v62 = v61[1];
    v63 = v61[2];
    v64 = v61[3];
    v104 = *v61;
    v105 = v62;
    v106 = v63;
    v107 = v64;

    v65 = BiomeEventGraph.Events.toJson(humanReadable:)(object & 1);
    v14 = v92;
    if (v66)
    {

      sub_23C595090(v3, v85);
      sub_23C595090(v87, v88);
      sub_23C595090(v90, v91);
      sub_23C595090(v97, v96);
      sub_23C595090(v102, v101);
    }

    else
    {
      v81 = v3;
      countAndFlagsBits = v65._countAndFlagsBits;
      object = v65._object;
      v80 = v51;

      v67 = (v108 + v94[10]);
      v68 = v67[1];
      v70 = v67[2];
      v69 = v67[3];
      v104 = *v67;
      v105 = v68;
      v106 = v70;
      v107 = v69;
      sub_23C59548C();

      v71 = sub_23C870944();
      v108 = v72;

      sub_23C8717B4();
      v73 = sub_23C8717A4();
      if (v74)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      v99 = v75;
      if (v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = 0xE000000000000000;
      }

      v104 = 0;
      v105 = 0xE000000000000000;
      sub_23C871D14();
      MEMORY[0x23EED7100](0x756F632220200A7BLL, 0xEE00203A2273746ELL);
      MEMORY[0x23EED7100](v98, v100);

      MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A6DA0);
      v77 = v92;
      MEMORY[0x23EED7100](v89, v95);

      MEMORY[0x23EED7100](0x696F6A2220200A2CLL, 0xEF203A22676E696ELL);
      MEMORY[0x23EED7100](v93, v77);

      MEMORY[0x23EED7100](0x74656D2220200A2CLL, 0xEC000000203A2261);
      MEMORY[0x23EED7100](v80, v86);

      MEMORY[0x23EED7100](0x7265702220200A2CLL, 0xEC000000203A2266);
      MEMORY[0x23EED7100](v82, v84);

      MEMORY[0x23EED7100](0x6576652220200A2CLL, 0xEE00203A2273746ELL);
      MEMORY[0x23EED7100](countAndFlagsBits, object);

      MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8A6DC0);
      MEMORY[0x23EED7100](v99, v76);

      MEMORY[0x23EED7100](32010, 0xE200000000000000);
      sub_23C595090(v71, v108);
      sub_23C595090(v81, v85);
      sub_23C595090(v87, v88);
      sub_23C595090(v90, v91);
      sub_23C595090(v97, v96);
      v14 = v104;
      v3 = v105;
      sub_23C595090(v102, v101);
    }
  }

  v53 = v14;
  v54 = v3;
  result._object = v54;
  result._countAndFlagsBits = v53;
  return result;
}

double BiomeEventGraph.makeDescription(includeEvents:includeEventIds:)@<D0>(char a1@<W0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v32 = a2;
  v6 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9940, &qword_23C873DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  *(inited + 32) = 0x697263736E617274;
  *(inited + 40) = 0xEA00000000007470;
  v11 = sub_23C59ACE8()[2];

  *(inited + 48) = v11;
  *(inited + 56) = 0x7274656D656C6574;
  *(inited + 64) = 0xE900000000000079;
  v12 = sub_23C59B4E4()[2];

  *(inited + 72) = v12;
  *(inited + 80) = 1718379891;
  *(inited + 88) = 0xE400000000000000;
  v13 = sub_23C59AA64();
  if (v13 >> 62)
  {
    v14 = sub_23C871C34();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 96) = v14;
  *(inited + 104) = 6907495;
  *(inited + 112) = 0xE300000000000000;
  v15 = sub_23C59B0C8()[2];

  *(inited + 120) = v15;
  v31 = sub_23C59985C(inited, &qword_27E1F9C80, &unk_23C874D60);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9948, &unk_23C873E00);
  swift_arrayDestroy();
  v16 = BiomeEventGraph.extractors()();
  BiomeEventGraph.joiningIds()(&v34);
  v17 = v34;
  BiomeEventGraph.meta()(v9);
  v18 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents;
  v19 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents);

  v21 = sub_23C614D24(v20);

  if (a1)
  {
    v22 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
    v23 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);
    v24 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents);
    v25 = *(v3 + v18);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
  }

  BiomeEventGraph.eventIdsDescription(includeEventIds:)(v32 & 1, v33);
  *a3 = v31;
  a3[1] = v16;
  a3[2] = v17;
  v26 = type metadata accessor for BiomeEventGraph.SessionDescription(0);
  sub_23C5983E4(v9, a3 + v26[7], type metadata accessor for BiomeEventGraph.SessionMeta);
  *(a3 + v26[8]) = v21;
  v27 = (a3 + v26[9]);
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  v28 = (a3 + v26[10]);
  result = *v33;
  v30 = v33[1];
  *v28 = v33[0];
  v28[1] = v30;
  return result;
}

uint64_t BiomeEventGraph.extractors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v103 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v94 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v93 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v93 - v13;
  v15 = type metadata accessor for TranscriptProtoEvent(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v0;
  v20 = sub_23C59ACE8();
  v21 = v20[2];
  if (!v21)
  {

    v61 = MEMORY[0x277D84F90];
LABEL_28:
    v62 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v62;
    sub_23C5948D8(v61, 0xD000000000000012, 0x800000023C8A6DE0, isUniquelyReferenced_nonNull_native, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
    v108 = v114;
    v64 = sub_23C59B900();
    v47 = v64;
    if (v64 >> 62)
    {
      goto LABEL_59;
    }

    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v65)
    {
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  v96 = v5;
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v93 = v20;
  v23 = v20 + v22;
  v101 = MEMORY[0x277D84F90];
  v24 = *(v15 + 44);
  v107 = *(v16 + 72);
  v108 = v24;
  v95 = xmmword_23C873D00;
  v25 = v103;
  v102 = v19;
  while (1)
  {
    *&v109 = v21;
    sub_23C594F64(v23, v19, type metadata accessor for TranscriptProtoEvent);
    sub_23C5855B0(v19 + v108, v25, &qword_27E1F9950, &unk_23C87CFF0);
    v29 = type metadata accessor for TranscriptProtoPayload(0);
    v30 = *(*(v29 - 8) + 48);
    if (v30(v25, 1, v29) != 1)
    {
      break;
    }

    sub_23C585C34(v25, &qword_27E1F9950, &unk_23C87CFF0);
    v26 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    v27 = v14;
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
LABEL_4:
    sub_23C585C34(v27, &qword_27E1F9958, &qword_23C873E10);
LABEL_5:
    v14 = v27;
    sub_23C594FCC(v19, type metadata accessor for TranscriptProtoEvent);
    v28 = v109;
LABEL_6:
    v23 += v107;
    v21 = v28 - 1;
    if (!v21)
    {

      v61 = v101;
      goto LABEL_28;
    }
  }

  v27 = v14;
  sub_23C5855B0(v25, v14, &qword_27E1F9958, &qword_23C873E10);
  sub_23C594FCC(v25, type metadata accessor for TranscriptProtoPayload);
  v31 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v32 = *(v31 - 8);
  v106 = *(v32 + 48);
  v105 = v32 + 48;
  if (v106(v14, 1, v31) == 1)
  {
    goto LABEL_4;
  }

  sub_23C5855B0(v14, v104, &qword_27E1F9958, &qword_23C873E10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 20)
  {
    sub_23C594FCC(v104, type metadata accessor for TranscriptProtoPayloadEnum);
    v19 = v102;
    goto LABEL_4;
  }

  sub_23C594FCC(v104, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
  v19 = v102;
  v34 = sub_23C86D0C0();
  v25 = v103;
  if (!v35)
  {
    goto LABEL_5;
  }

  v99 = v35;
  v100 = v34;
  v36 = v19[1];
  v98 = *v19;
  v37 = v96;
  sub_23C5855B0(v19 + v108, v96, &qword_27E1F9950, &unk_23C87CFF0);
  if (v30(v37, 1, v29) == 1)
  {

    v38 = v37;
    v39 = &qword_27E1F9950;
    v40 = &unk_23C87CFF0;
    goto LABEL_17;
  }

  v41 = v94;
  sub_23C5855B0(v37, v94, &qword_27E1F9958, &qword_23C873E10);

  sub_23C594FCC(v37, type metadata accessor for TranscriptProtoPayload);
  if (v106(v41, 1, v31) == 1)
  {
    v40 = &qword_23C873E10;
    v38 = v41;
    v39 = &qword_27E1F9958;
LABEL_17:
    sub_23C585C34(v38, v39, v40);
    v42 = 0;
    v106 = 0;
  }

  else
  {
    v42 = TranscriptProtoPayloadEnum.eventTypeString.getter();
    v106 = v43;
    sub_23C594FCC(v41, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  v110 = 1954047348;
  v111 = 0xE400000000000000;
  v112 = v100;
  v113 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9970, &unk_23C873E30);
  v44 = sub_23C871E94();

  v45 = v110;
  v46 = v111;
  v48 = v112;
  v47 = v113;

  v49 = sub_23C5FF898(v45, v46);
  if (v50)
  {
    goto LABEL_57;
  }

  v44[(v49 >> 6) + 8] |= 1 << v49;
  v51 = (v44[6] + 16 * v49);
  *v51 = v45;
  v51[1] = v46;
  v52 = (v44[7] + 16 * v49);
  *v52 = v48;
  v52[1] = v47;
  v53 = v44[2];
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (!v54)
  {
    v44[2] = v55;

    sub_23C585C34(&v110, &qword_27E1F9968, &unk_23C873E20);
    sub_23C594FCC(v19, type metadata accessor for TranscriptProtoEvent);
    v56 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_23C584700(0, *(v56 + 2) + 1, 1, v56);
    }

    v28 = v109;
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_23C584700((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v101 = v56;
    v59 = &v56[56 * v58];
    *(v59 + 4) = v98;
    *(v59 + 5) = v36;
    v60 = v106;
    *(v59 + 6) = v42;
    *(v59 + 7) = v60;
    *(v59 + 4) = v95;
    *(v59 + 10) = v44;
    v25 = v103;
    goto LABEL_6;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  v65 = sub_23C871C34();
  if (v65)
  {
LABEL_30:
    v66 = 0;
    *&v109 = v47 & 0xC000000000000001;
    v67 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v109)
      {
        v68 = MEMORY[0x23EED7610](v66, v47);
      }

      else
      {
        if (v66 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v68 = *(v47 + 8 * v66 + 32);
      }

      v69 = v68;
      v70 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v71 = sub_23C6037E0();

      v72 = *(v71 + 16);
      v73 = *(v67 + 2);
      v74 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_53;
      }

      v75 = swift_isUniquelyReferenced_nonNull_native();
      if (v75 && v74 <= *(v67 + 3) >> 1)
      {
        if (*(v71 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v73 <= v74)
        {
          v76 = v73 + v72;
        }

        else
        {
          v76 = v73;
        }

        v67 = sub_23C584700(v75, v76, 1, v67);
        if (*(v71 + 16))
        {
LABEL_46:
          if ((*(v67 + 3) >> 1) - *(v67 + 2) < v72)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();

          if (v72)
          {
            v77 = *(v67 + 2);
            v54 = __OFADD__(v77, v72);
            v78 = v77 + v72;
            if (v54)
            {
              goto LABEL_56;
            }

            *(v67 + 2) = v78;
          }

          goto LABEL_32;
        }
      }

      if (v72)
      {
        goto LABEL_54;
      }

LABEL_32:
      ++v66;
      if (v70 == v65)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_60:
  v67 = MEMORY[0x277D84F90];
LABEL_61:

  v79 = v108;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v79;
  sub_23C5948D8(v67, 0x52525341464C4553, 0xEF73747365757165, v80, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
  v81 = v114;
  v82 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents;
  v83 = v97;
  if (*(*(v97 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents) + 16))
  {
    v84 = BiomeEventGraph.rawSessionId()();
    v85 = *(v83 + v82);
    type metadata accessor for SpanGraph();
    swift_allocObject();

    sub_23C6581F8(v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
    inited = swift_initStackObject();
    v109 = xmmword_23C873D10;
    *(inited + 16) = xmmword_23C873D10;
    *(inited + 32) = 0x706172476E617073;
    *(inited + 40) = 0xE900000000000068;
    *(inited + 48) = sub_23C659620();
    *(inited + 56) = v88;
    v89 = sub_23C5967FC(inited);
    swift_setDeallocating();
    sub_23C585C34(inited + 32, &qword_27E1F9968, &unk_23C873E20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9508, &qword_23C873A38);
    v90 = swift_allocObject();
    *(v90 + 16) = v109;
    *(v90 + 32) = v84;
    *(v90 + 48) = 0xD000000000000015;
    *(v90 + 56) = 0x800000023C8A6E00;
    *(v90 + 64) = 0;
    *(v90 + 72) = 0;
    *(v90 + 80) = v89;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v81;
    sub_23C5948D8(v90, 0x706172476E617053, 0xE900000000000068, v91, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
    return v114;
  }

  return v81;
}

uint64_t BiomeEventGraph.joiningIds()@<X0>(unint64_t *a1@<X8>)
{
  v168 = a1;
  v182 = sub_23C870B74();
  v171 = *(v182 - 8);
  v2 = *(v171 + 64);
  MEMORY[0x28223BE20](v182);
  v176 = v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9280, &unk_23C8734C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v177 = v166 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9288, &unk_23C873E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v179 = v166 - v9;
  v183 = sub_23C871414();
  v172 = *(v183 - 8);
  v10 = *(v172 + 64);
  v11 = MEMORY[0x28223BE20](v183);
  v191 = v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = v166 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v166 - v16);
  v195 = sub_23C8715C4();
  v170 = *(v195 - 1);
  v18 = *(v170 + 64);
  v19 = MEMORY[0x28223BE20](v195);
  v189 = v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v188 = v166 - v21;
  v22 = sub_23C871604();
  v193 = *(v22 - 8);
  v23 = *(v193 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v187 = v166 - v26;
  v27 = type metadata accessor for TranscriptProtoEvent(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v32 = v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v166 - v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9978, &qword_23C873E50);
  inited = swift_initStackObject();
  v174 = xmmword_23C873D20;
  *(inited + 16) = xmmword_23C873D20;
  *(inited + 32) = 0x6973736553776172;
  v185 = inited + 32;
  v186 = inited;
  *(inited + 40) = 0xEC00000064496E6FLL;
  v178 = v1;
  v36 = sub_23C59ACE8();
  v37 = v17;
  v38 = v36[2];
  v190 = v37;
  v194 = v22;
  v184 = v28;
  if (v38)
  {
    v39 = *(v28 + 80);
    v173 = v36;
    v40 = v36 + ((v39 + 32) & ~v39);
    v192 = *(v28 + 72);
    v41 = MEMORY[0x277D84F90];
    do
    {
      sub_23C594F64(v40, v34, type metadata accessor for TranscriptProtoEvent);
      v43 = *(v34 + 2);
      v42 = *(v34 + 3);

      sub_23C594FCC(v34, type metadata accessor for TranscriptProtoEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_23C5844DC(0, *(v41 + 2) + 1, 1, v41);
      }

      v45 = *(v41 + 2);
      v44 = *(v41 + 3);
      if (v45 >= v44 >> 1)
      {
        v41 = sub_23C5844DC((v44 > 1), v45 + 1, 1, v41);
      }

      *(v41 + 2) = v45 + 1;
      v46 = &v41[16 * v45];
      *(v46 + 4) = v43;
      *(v46 + 5) = v42;
      v40 += v192;
      --v38;
    }

    while (v38);

    v22 = v194;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v48 = v22;
  v49 = 0;
  v50 = *(v41 + 2);
  v51 = v41 + 40;
  v52 = MEMORY[0x277D84F90];
LABEL_11:
  v53 = &v51[16 * v49];
  while (1)
  {
    if (v50 == v49)
    {

      v60 = sub_23C596984(v52);

      v61 = v186;
      v186[6] = v60;
      v61[7] = 0x6552746E65696C63;
      v61[8] = 0xEF64497473657571;
      result = *(v178 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);
      v62 = *(result + 16);
      if (v62)
      {
        v63 = result + ((*(v184 + 80) + 32) & ~*(v184 + 80));
        v64 = *(v184 + 72);
        v192 = *(v178 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);

        v65 = MEMORY[0x277D84F90];
        do
        {
          sub_23C594F64(v63, v32, type metadata accessor for TranscriptProtoEvent);
          v67 = *(v32 + 4);
          v66 = *(v32 + 5);

          sub_23C594FCC(v32, type metadata accessor for TranscriptProtoEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_23C5844DC(0, *(v65 + 2) + 1, 1, v65);
          }

          v69 = *(v65 + 2);
          v68 = *(v65 + 3);
          if (v69 >= v68 >> 1)
          {
            v65 = sub_23C5844DC((v68 > 1), v69 + 1, 1, v65);
          }

          *(v65 + 2) = v69 + 1;
          v70 = &v65[16 * v69];
          *(v70 + 4) = v67;
          *(v70 + 5) = v66;
          v63 += v64;
          --v62;
        }

        while (v62);

        v71 = v194;
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
        v71 = v48;
      }

      v72 = 0;
      v73 = *(v65 + 2);
      v74 = MEMORY[0x277D84F90];
LABEL_32:
      v75 = &v65[16 * v72 + 40];
      while (v73 != v72)
      {
        if (v72 >= *(v65 + 2))
        {
          goto LABEL_95;
        }

        ++v72;
        v77 = *(v75 - 1);
        v76 = *v75;
        v75 += 16;
        v78 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v78 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (v78)
        {

          result = swift_isUniquelyReferenced_nonNull_native();
          v196 = v74;
          if ((result & 1) == 0)
          {
            result = sub_23C592B40(0, *(v74 + 16) + 1, 1);
            v74 = v196;
          }

          v80 = *(v74 + 16);
          v79 = *(v74 + 24);
          if (v80 >= v79 >> 1)
          {
            result = sub_23C592B40((v79 > 1), v80 + 1, 1);
            v74 = v196;
          }

          *(v74 + 16) = v80 + 1;
          v81 = v74 + 16 * v80;
          *(v81 + 32) = v77;
          *(v81 + 40) = v76;
          v71 = v194;
          goto LABEL_32;
        }
      }

      v82 = sub_23C596984(v74);

      v83 = v186;
      v186[9] = v82;
      v167 = sub_23C598564(v83, &unk_27E1FBE20, &qword_23C874D40);
      swift_setDeallocating();
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9980, &qword_23C873E58);
      swift_arrayDestroy();
      v84 = swift_initStackObject();
      *(v84 + 32) = 0xD000000000000017;
      v166[2] = v84 + 32;
      *(v84 + 16) = v174;
      *(v84 + 40) = 0x800000023C8A6E20;
      v85 = sub_23C59B0C8();
      v86 = v85[2];
      v169 = v84;
      if (v86)
      {
        v87 = *(v193 + 16);
        v88 = *(v193 + 80);
        v166[1] = v85;
        v89 = v85 + ((v88 + 32) & ~v88);
        v185 = *(v193 + 72);
        v186 = v87;
        v184 = v170 + 8;
        v192 = (v193 + 16);
        v90 = (v193 + 8);
        v91 = MEMORY[0x277D84F90];
        do
        {
          v93 = v187;
          (v186)(v187, v89, v71);
          v94 = v71;
          v95 = v188;
          sub_23C8715D4();
          v96 = sub_23C8715A4();
          v98 = v97;
          v99 = v95;
          v71 = v94;
          (*v184)(v99, v195);
          (*v90)(v93, v94);
          if (v98)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v91 = sub_23C5844DC(0, *(v91 + 2) + 1, 1, v91);
            }

            v101 = *(v91 + 2);
            v100 = *(v91 + 3);
            if (v101 >= v100 >> 1)
            {
              v91 = sub_23C5844DC((v100 > 1), v101 + 1, 1, v91);
            }

            *(v91 + 2) = v101 + 1;
            v92 = &v91[16 * v101];
            *(v92 + 4) = v96;
            *(v92 + 5) = v98;
            v71 = v194;
          }

          v89 += v185;
          --v86;
        }

        while (v86);

        v84 = v169;
      }

      else
      {

        v91 = MEMORY[0x277D84F90];
      }

      v102 = sub_23C596984(v91);

      *(v84 + 48) = v102;
      *(v84 + 56) = 0xD000000000000026;
      *(v84 + 64) = 0x800000023C8A6E40;
      v103 = *(v178 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents);
      v104 = *(v103 + 16);
      if (v104)
      {
        v192 = *(v193 + 16);
        v193 += 16;
        v105 = v103 + ((*(v193 + 64) + 32) & ~*(v193 + 64));
        v106 = *(v193 + 56);
        v187 = (v170 + 8);
        v188 = v106;
        v185 = v193 - 8;
        v186 = (v171 + 48);
        v184 = v171 + 8;
        v170 = v103;

        v107 = MEMORY[0x277D84F90];
        v108 = v182;
        v109 = v180;
        do
        {
          (v192)(v109, v105, v71);
          v110 = v189;
          sub_23C8715D4();
          v111 = v190;
          sub_23C8715B4();
          (*v187)(v110, v195);
          if ((*v186)(v111, 1, v108) == 1)
          {
            (*v185)(v109, v71);
            sub_23C585C34(v111, &qword_27E1F92A0, &qword_23C8734E0);
          }

          else
          {
            v112 = v111;
            v113 = sub_23C870B04();
            v114 = v108;
            v116 = v115;
            (*v185)(v109, v71);
            (*v184)(v112, v114);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v107 = sub_23C5844DC(0, *(v107 + 2) + 1, 1, v107);
            }

            v118 = *(v107 + 2);
            v117 = *(v107 + 3);
            if (v118 >= v117 >> 1)
            {
              v107 = sub_23C5844DC((v117 > 1), v118 + 1, 1, v107);
            }

            *(v107 + 2) = v118 + 1;
            v119 = &v107[16 * v118];
            *(v119 + 4) = v113;
            *(v119 + 5) = v116;
            v108 = v182;
            v71 = v194;
            v109 = v180;
          }

          v105 += v188;
          --v104;
        }

        while (v104);

        v84 = v169;
      }

      else
      {
        v107 = MEMORY[0x277D84F90];
      }

      v120 = sub_23C596984(v107);

      *(v84 + 72) = v120;
      v188 = sub_23C598564(v84, &unk_27E1FBE20, &qword_23C874D40);
      swift_setDeallocating();
      swift_arrayDestroy();
      v121 = swift_initStackObject();
      *(v121 + 16) = v174;
      *(v121 + 32) = 0x496E6F6973736573;
      v187 = (v121 + 32);
      *(v121 + 40) = 0xE900000000000064;
      v122 = sub_23C59B4E4();
      v123 = v122[2];
      v124 = v183;
      v125 = v181;
      v189 = v121;
      if (!v123)
      {

        v149 = MEMORY[0x277D84F90];
LABEL_82:
        v150 = sub_23C596984(v149);

        *(v121 + 48) = v150;
        *(v121 + 56) = 0x49747865746E6F63;
        *(v121 + 64) = 0xE900000000000064;
        v151 = *(v178 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents);
        v152 = *(v151 + 16);
        if (v152)
        {
          v153 = *(v172 + 16);
          v154 = v151 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
          v194 = *(v172 + 72);
          v195 = v153;
          v155 = (v172 + 8);
          v193 = v151;

          v156 = MEMORY[0x277D84F90];
          do
          {
            v157 = v191;
            v195(v191, v154, v124);
            v158 = IntelligenceFlowTelemetry.contextId()();
            (*v155)(v157, v124);
            if (v158.value._object)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v156 = sub_23C5844DC(0, *(v156 + 2) + 1, 1, v156);
              }

              v160 = *(v156 + 2);
              v159 = *(v156 + 3);
              if (v160 >= v159 >> 1)
              {
                v156 = sub_23C5844DC((v159 > 1), v160 + 1, 1, v156);
              }

              *(v156 + 2) = v160 + 1;
              *&v156[16 * v160 + 32] = v158;
              v124 = v183;
            }

            v154 += v194;
            --v152;
          }

          while (v152);

          v121 = v189;
        }

        else
        {
          v156 = MEMORY[0x277D84F90];
        }

        v161 = sub_23C596984(v156);

        *(v121 + 72) = v161;
        v162 = sub_23C598564(v121, &unk_27E1FBE20, &qword_23C874D40);
        swift_setDeallocating();
        swift_arrayDestroy();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9988, &qword_23C873E60);
        v163 = swift_initStackObject();
        *(v163 + 32) = 0x697263736E617274;
        *(v163 + 16) = xmmword_23C873CF0;
        *(v163 + 40) = 0xEA00000000007470;
        *(v163 + 48) = v167;
        *(v163 + 56) = 0x7274656D656C6574;
        *(v163 + 64) = 0xE900000000000079;
        *(v163 + 72) = v162;
        *(v163 + 80) = 6907495;
        v164 = v188;
        *(v163 + 88) = 0xE300000000000000;
        *(v163 + 96) = v164;
        *(v163 + 104) = 1718379891;
        *(v163 + 112) = 0xE400000000000000;
        *(v163 + 120) = BiomeEventGraph.selfIds()();
        v165 = sub_23C598564(v163, &qword_27E1F9C60, &qword_23C874D38);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9990, &qword_23C873E68);
        result = swift_arrayDestroy();
        *v168 = v165;
        return result;
      }

      v194 = *(v172 + 16);
      v126 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v186 = v122;
      v127 = v122 + v126;
      v190 = (v171 + 8);
      v128 = (v172 + 8);
      v195 = (v172 + 16);
      v129 = *(v172 + 72);
      v192 = MEMORY[0x277D84F90];
      v193 = v129;
      v130 = v177;
      (v194)(v181, v127, v183);
      while (1)
      {
        sub_23C8713E4();
        v134 = sub_23C8713D4();
        v135 = *(v134 - 8);
        if ((*(v135 + 48))(v130, 1, v134) == 1)
        {
          break;
        }

        v136 = v179;
        sub_23C8713B4();
        v137 = v136;
        (*(v135 + 8))(v130, v134);
        v138 = sub_23C871434();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v136, 1, v138) == 1)
        {
          v125 = v181;
          (*v128)(v181, v124);
          v131 = v137;
          v132 = &qword_27E1F9288;
          v133 = &unk_23C873E40;
          goto LABEL_69;
        }

        v140 = v176;
        sub_23C871424();
        (*(v139 + 8))(v136, v138);
        v141 = sub_23C870B04();
        v143 = v142;
        (*v190)(v140, v182);
        v125 = v181;
        (*v128)(v181, v124);
        v144 = v192;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_23C5844DC(0, *(v144 + 2) + 1, 1, v144);
        }

        v146 = *(v144 + 2);
        v145 = *(v144 + 3);
        v192 = v144;
        v130 = v177;
        if (v146 >= v145 >> 1)
        {
          v192 = sub_23C5844DC((v145 > 1), v146 + 1, 1, v192);
        }

        v147 = v192;
        *(v192 + 2) = v146 + 1;
        v148 = &v147[16 * v146];
        *(v148 + 4) = v141;
        *(v148 + 5) = v143;
        v124 = v183;
LABEL_70:
        v127 += v193;
        if (!--v123)
        {

          v121 = v189;
          v149 = v192;
          goto LABEL_82;
        }

        (v194)(v125, v127, v124);
      }

      (*v128)(v125, v124);
      v131 = v130;
      v132 = &qword_27E1F9280;
      v133 = &unk_23C8734C0;
LABEL_69:
      sub_23C585C34(v131, v132, v133);
      goto LABEL_70;
    }

    if (v49 >= *(v41 + 2))
    {
      break;
    }

    ++v49;
    v55 = *(v53 - 1);
    v54 = *v53;
    v53 += 16;
    v56 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v56 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v196 = v52;
      v192 = v51;
      if ((result & 1) == 0)
      {
        result = sub_23C592B40(0, *(v52 + 16) + 1, 1);
        v52 = v196;
      }

      v58 = *(v52 + 16);
      v57 = *(v52 + 24);
      if (v58 >= v57 >> 1)
      {
        result = sub_23C592B40((v57 > 1), v58 + 1, 1);
        v52 = v196;
      }

      *(v52 + 16) = v58 + 1;
      v59 = v52 + 16 * v58;
      *(v59 + 32) = v55;
      *(v59 + 40) = v54;
      v48 = v194;
      v51 = v192;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t BiomeEventGraph.meta()@<X0>(char *a1@<X8>)
{
  v3 = sub_23C870AE4();
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - v8;
  v69 = v1;
  v9 = sub_23C59A99C();
  v10 = v9;
  v65 = v3;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_70:
    v12 = sub_23C871C34();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v7;
  v66 = a1;
  if (!v12)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v7 = 0;
  v13 = MEMORY[0x277D84F90];
  while (2)
  {
    v67 = v13;
    v14 = v7;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x23EED7610](v14, v10);
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_67;
        }

        v17 = *(v10 + 8 * v14 + 32);
      }

      a1 = v17;
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v18 = *&v17[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
      if (v18)
      {
        v19 = *(v18 + 24);
        v20 = *&v17[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

        result = sub_23C870CA4();
        if (!result)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          return result;
        }

        v22 = result;

        ObjectType = swift_getObjectType();

        if (ObjectType == sub_23C596DCC())
        {

          goto LABEL_7;
        }
      }

      v15 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
      v16 = a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

      if ((v16 & 1) == 0)
      {
        break;
      }

LABEL_7:
      ++v14;
      if (v7 == v12)
      {
        v13 = v67;
        goto LABEL_25;
      }
    }

    v13 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_23C5845FC(0, *(v13 + 2) + 1, 1, v13);
    }

    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    a1 = (v25 + 1);
    if (v25 >= v24 >> 1)
    {
      v13 = sub_23C5845FC((v24 > 1), v25 + 1, 1, v13);
    }

    *(v13 + 2) = a1;
    *&v13[8 * v25 + 32] = v15;
    if (v7 != v12)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v26 = *(v13 + 2);
  if (v26)
  {
    v27 = *(v13 + 4);
    v28 = v26 - 1;
    a1 = v69;
    if (v28)
    {
      v29 = (v13 + 40);
      do
      {
        v30 = *v29++;
        v31 = v30;
        if (v30 < v27)
        {
          v27 = v31;
        }

        --v28;
      }

      while (v28);
    }

    v32 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp];
    sub_23C870A54();
  }

  else
  {

    a1 = v69;
    v33 = *&v69[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp];
    sub_23C870AB4();
  }

  v34 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events];
  v11 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    if (v34 < 0)
    {
      v61 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events];
    }

    v35 = sub_23C871C34();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35)
  {
    v7 = 0;
    v10 = v34 & 0xC000000000000001;
    v36 = MEMORY[0x277D84F90];
LABEL_37:
    v67 = v36;
    v37 = v7;
    while (1)
    {
      if (v10)
      {
        v40 = MEMORY[0x23EED7610](v37, v34);
      }

      else
      {
        if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v40 = *(v34 + 8 * v37 + 32);
      }

      a1 = v40;
      v7 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v41 = *&v40[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
      if (!v41)
      {
        goto LABEL_38;
      }

      v42 = *(v41 + 24);
      v43 = *&v40[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

      result = sub_23C870CA4();
      if (!result)
      {
        goto LABEL_75;
      }

      v44 = result;

      v45 = swift_getObjectType();

      if (v45 == sub_23C596DCC())
      {
      }

      else
      {
LABEL_38:
        v38 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
        v39 = a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

        if ((v39 & 1) == 0)
        {
          v36 = v67;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_23C5845FC(0, *(v36 + 2) + 1, 1, v36);
          }

          v47 = *(v36 + 2);
          v46 = *(v36 + 3);
          a1 = (v47 + 1);
          if (v47 >= v46 >> 1)
          {
            v36 = sub_23C5845FC((v46 > 1), v47 + 1, 1, v36);
          }

          *(v36 + 2) = a1;
          *&v36[8 * v47 + 32] = v38;
          if (v7 != v35)
          {
            goto LABEL_37;
          }

          goto LABEL_57;
        }
      }

      ++v37;
      if (v7 == v35)
      {
        v36 = v67;
        goto LABEL_57;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_57:

  v48 = *(v36 + 2);
  if (v48)
  {
    v49 = *(v36 + 4);
    v50 = v48 - 1;
    v52 = v65;
    v51 = v66;
    v54 = v63;
    v53 = v64;
    if (v50)
    {
      v55 = (v36 + 40);
      do
      {
        v56 = *v55++;
        v57 = v56;
        if (v49 < v56)
        {
          v49 = v57;
        }

        --v50;
      }

      while (v50);
    }

    sub_23C870A54();
  }

  else
  {

    v54 = v63;
    sub_23C870AB4();
    v52 = v65;
    v51 = v66;
    v53 = v64;
  }

  v58 = BiomeEventGraph.rawSessionId()();
  v59 = *(v53 + 32);
  v59(v51, v68, v52);
  v60 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  result = (v59)(&v51[*(v60 + 20)], v54, v52);
  *&v51[*(v60 + 24)] = v58;
  return result;
}

uint64_t BiomeEventGraph.perf()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23C59B4E4();
  v3 = sub_23C614D24(v2);

  *a1 = v3;
  return result;
}

void *BiomeEventGraph.eventsDescription(includeEvents:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_23C59AA64();
    v4 = sub_23C59ACE8();
    v5 = sub_23C59B0C8();
    result = sub_23C59B4E4();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    result = MEMORY[0x277D84F90];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = result;
  return result;
}

uint64_t BiomeEventGraph.eventIdsDescription(includeEventIds:)@<X0>(char a1@<W0>, char **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9280, &unk_23C8734C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v117 = &v98 - v7;
  v107 = sub_23C8715C4();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v107);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23C871414();
  v116 = *(v12 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v109 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoEvent(0);
  v111 = *(v15 - 8);
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_23C871604();
  v115 = *(v106 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23);
  v114 = &v98 - v27;
  result = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  if (a1)
  {
    v110 = v8;
    v101 = v2;
    v31 = sub_23C59AA64();
    v32 = v31;
    if (v31 >> 62)
    {
LABEL_64:
      v113 = v32 & 0xFFFFFFFFFFFFFF8;
      v33 = sub_23C871C34();
    }

    else
    {
      v113 = v31 & 0xFFFFFFFFFFFFFF8;
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v103 = v25;
    v104 = v11;
    v108 = v12;
    v100 = a2;
    if (v33)
    {
      a2 = 0;
      v112 = (v32 & 0xC000000000000001);
      v102 = MEMORY[0x277D84F90];
      do
      {
        v11 = a2;
        while (1)
        {
          if (v112)
          {
            v12 = MEMORY[0x23EED7610](v11, v32);
            a2 = (v11 + 1);
            if (__OFADD__(v11, 1))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v11 >= *(v113 + 16))
            {
              goto LABEL_63;
            }

            v12 = *(v32 + 8 * v11 + 32);

            a2 = (v11 + 1);
            if (__OFADD__(v11, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          v25 = v33;
          v34 = *(v12 + 24);
          sub_23C870CC4();
          v35 = sub_23C870B74();
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(v30, 1, v35) != 1)
          {
            break;
          }

          sub_23C585C34(v30, &qword_27E1F92A0, &qword_23C8734E0);
          ++v11;
          v33 = v25;
          if (a2 == v25)
          {
            goto LABEL_25;
          }
        }

        v37 = sub_23C870B04();
        v39 = v38;

        (*(v36 + 8))(v30, v35);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v102;
        }

        else
        {
          v40 = sub_23C5844DC(0, *(v102 + 2) + 1, 1, v102);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        v12 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v40 = sub_23C5844DC((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 2) = v12;
        v102 = v40;
        v43 = &v40[16 * v42];
        *(v43 + 4) = v37;
        *(v43 + 5) = v39;
        v33 = v25;
      }

      while (a2 != v25);
    }

    else
    {
      v102 = MEMORY[0x277D84F90];
    }

LABEL_25:

    v48 = sub_23C59ACE8();
    v49 = v48[2];
    v50 = v107;
    if (v49)
    {
      v118 = MEMORY[0x277D84F90];
      sub_23C592B40(0, v49, 0);
      v45 = v118;
      v51 = *(v111 + 80);
      v113 = v48;
      v52 = v48 + ((v51 + 32) & ~v51);
      v53 = *(v111 + 72);
      do
      {
        sub_23C594F64(v52, v18, type metadata accessor for TranscriptProtoEvent);
        v55 = *v18;
        v54 = v18[1];

        sub_23C594FCC(v18, type metadata accessor for TranscriptProtoEvent);
        v118 = v45;
        v57 = *(v45 + 16);
        v56 = *(v45 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_23C592B40((v56 > 1), v57 + 1, 1);
          v45 = v118;
        }

        *(v45 + 16) = v57 + 1;
        v58 = v45 + 16 * v57;
        *(v58 + 32) = v55;
        *(v58 + 40) = v54;
        v52 += v53;
        --v49;
      }

      while (v49);

      v50 = v107;
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    v59 = sub_23C59B0C8();
    v60 = v59[2];
    v61 = v117;
    v62 = v104;
    if (v60)
    {
      v98 = v59;
      v99 = v45;
      v63 = *(v115 + 16);
      v64 = v59 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v111 = *(v115 + 72);
      v112 = v63;
      ++v110;
      v115 += 16;
      v65 = (v115 - 8);
      v113 = MEMORY[0x277D84F90];
      v67 = v105;
      v66 = v106;
      v63(v105, v64, v106);
      while (1)
      {
        sub_23C8715D4();
        v68 = v114;
        sub_23C8715B4();
        v69 = v68;
        (*v110)(v62, v50);
        v70 = sub_23C870B74();
        v71 = *(v70 - 8);
        if ((*(v71 + 48))(v69, 1, v70) == 1)
        {
          (*v65)(v67, v66);
          sub_23C585C34(v69, &qword_27E1F92A0, &qword_23C8734E0);
          v61 = v117;
        }

        else
        {
          v72 = sub_23C870B04();
          v74 = v73;
          (*v65)(v67, v66);
          (*(v71 + 8))(v69, v70);
          v75 = v113;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_23C5844DC(0, *(v75 + 2) + 1, 1, v75);
          }

          v61 = v117;
          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          if (v77 >= v76 >> 1)
          {
            v75 = sub_23C5844DC((v76 > 1), v77 + 1, 1, v75);
          }

          *(v75 + 2) = v77 + 1;
          v113 = v75;
          v78 = &v75[16 * v77];
          *(v78 + 4) = v72;
          *(v78 + 5) = v74;
          v66 = v106;
          v50 = v107;
          v62 = v104;
          v67 = v105;
        }

        v64 += v111;
        if (!--v60)
        {
          break;
        }

        v112(v67, v64, v66);
      }

      v45 = v99;
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    v79 = sub_23C59B4E4();
    v80 = *(v79 + 2);
    v81 = v108;
    if (v80)
    {
      v115 = *(v116 + 16);
      v82 = *(v116 + 80);
      v112 = v79;
      v83 = v79 + ((v82 + 32) & ~v82);
      v84 = (v116 + 8);
      v47 = MEMORY[0x277D84F90];
      v116 += 16;
      v114 = *(v116 + 56);
      v85 = v109;
      (v115)(v109, v83, v108);
      while (1)
      {
        sub_23C8713E4();
        v86 = sub_23C8713D4();
        v87 = v81;
        v88 = *(v86 - 8);
        if ((*(v88 + 48))(v61, 1, v86) == 1)
        {
          (*v84)(v85, v87);
          sub_23C585C34(v61, &qword_27E1F9280, &unk_23C8734C0);
          v81 = v87;
        }

        else
        {
          v89 = v103;
          sub_23C8713C4();
          (*(v88 + 8))(v61, v86);
          v90 = sub_23C870B74();
          v91 = *(v90 - 8);
          if ((*(v91 + 48))(v89, 1, v90) == 1)
          {
            v81 = v108;
            v85 = v109;
            (*v84)(v109, v108);
            sub_23C585C34(v89, &qword_27E1F92A0, &qword_23C8734E0);
            v61 = v117;
          }

          else
          {
            v92 = sub_23C870B04();
            v94 = v93;
            (*v84)(v109, v108);
            (*(v91 + 8))(v89, v90);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_23C5844DC(0, *(v47 + 2) + 1, 1, v47);
            }

            v96 = *(v47 + 2);
            v95 = *(v47 + 3);
            if (v96 >= v95 >> 1)
            {
              v47 = sub_23C5844DC((v95 > 1), v96 + 1, 1, v47);
            }

            *(v47 + 2) = v96 + 1;
            v97 = &v47[16 * v96];
            *(v97 + 4) = v92;
            *(v97 + 5) = v94;
            v61 = v117;
            v81 = v108;
            v85 = v109;
          }
        }

        v83 = &v114[v83];
        if (!--v80)
        {
          break;
        }

        (v115)(v85, v83, v81);
      }
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    a2 = v100;
    v44 = v102;
    v46 = v113;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
  }

  *a2 = v44;
  a2[1] = v45;
  a2[2] = v46;
  a2[3] = v47;
  return result;
}

uint64_t BiomeEventGraph.startTime()()
{
  v0 = sub_23C59A99C();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_25:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        v29 = v5;
        v6 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EED7610](v6, v1);
          }

          else
          {
            if (v6 >= *(v2 + 16))
            {
              goto LABEL_24;
            }

            v9 = *(v1 + 8 * v6 + 32);
          }

          v10 = v9;
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v11 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
          if (v11)
          {
            v12 = *(v11 + 24);
            v13 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v15 = result;

            ObjectType = swift_getObjectType();

            if (ObjectType == sub_23C596DCC())
            {

              goto LABEL_6;
            }
          }

          v7 = *&v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
          v8 = v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

          if ((v8 & 1) == 0)
          {
            break;
          }

LABEL_6:
          ++v6;
          if (v4 == v3)
          {
            v5 = v29;
            goto LABEL_27;
          }
        }

        v17 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_23C5845FC(0, *(v29 + 2) + 1, 1, v29);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v20 = v17;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_23C5845FC((v18 > 1), v19 + 1, 1, v17);
        }

        *(v20 + 2) = v19 + 1;
        v5 = v20;
        *&v20[8 * v19 + 32] = v7;
        if (v4 == v3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_27:

  v21 = *(v5 + 2);
  if (v21)
  {
    v22 = *(v5 + 4);
    v23 = v21 - 1;
    if (v23)
    {
      v24 = (v5 + 40);
      do
      {
        v25 = *v24++;
        v26 = v25;
        if (v25 < v22)
        {
          v22 = v26;
        }

        --v23;
      }

      while (v23);
    }

    return sub_23C870A54();
  }

  else
  {

    v27 = *(v28 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp);

    return sub_23C870AB4();
  }
}

void sub_23C5916F4(uint64_t a1)
{
  v42 = sub_23C870B74();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = v37 - v6;
  v44 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C58ABD4(&qword_27E1F9B00, MEMORY[0x277D56708]);
    sub_23C871A14();
    v7 = v48;
    v9 = v49;
    v8 = v50;
    v10 = v51;
    v44 = v47;
    if (v47 < 0)
    {
      v36 = sub_23C871C64();
      if (!v36)
      {
        goto LABEL_34;
      }

      v45 = v36;
      swift_dynamicCast();
      v43 = 0;
      v19 = v46;
      v13 = v8;
      v11 = v10;
      if (!v46)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

    if (v51)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = -1 << *(v44 + 32);
    v7 = v44 + 56;
    v9 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v10 = v16 & *(v44 + 56);

    v8 = 0;
    if (v10)
    {
LABEL_4:
      v11 = (v10 - 1) & v10;
      v12 = __clz(__rbit64(v10)) | (v8 << 6);
      v13 = v8;
      goto LABEL_14;
    }
  }

  v17 = v8;
  do
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    if (v13 >= ((v9 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v18 = *(v7 + 8 * v13);
    ++v17;
  }

  while (!v18);
  v11 = (v18 - 1) & v18;
  v12 = __clz(__rbit64(v18)) | (v13 << 6);
LABEL_14:
  v19 = *(*(v44 + 48) + 8 * v12);
  v43 = 1;
  if (!v19)
  {
LABEL_34:
    sub_23C56EF08();
    return;
  }

LABEL_15:
  v37[1] = v9;
  v38 = v7;
  v20 = (v9 + 64) >> 6;
  v39 = (v2 + 8);
  if (!v43)
  {
    goto LABEL_22;
  }

LABEL_16:
  v21 = v13;
  v22 = v11;
  v23 = v13;
  if (v11)
  {
LABEL_20:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v44 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v27 = sub_23C870DF4();
      if (v27 == sub_23C870DF4())
      {
        v28 = v40;
        sub_23C870E24();
        v29 = v41;
        sub_23C870E24();
        v30 = MEMORY[0x23EED6420](v28, v29);
        v31 = *v39;
        v32 = v29;
        v33 = v42;
        (*v39)(v32, v42);
        v34 = v28;
        v7 = v38;
        v31(v34, v33);
        if (v30)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v35 = sub_23C870DF4();
        if (v35 < sub_23C870DF4())
        {
LABEL_30:

          v19 = v25;
          goto LABEL_27;
        }
      }

LABEL_27:
      v13 = v23;
      v11 = v24;
      if (v43)
      {
        goto LABEL_16;
      }

LABEL_22:
      v26 = sub_23C871C64();
      if (v26)
      {
        v45 = v26;
        sub_23C870E34();
        swift_dynamicCast();
        v25 = v46;
        v23 = v13;
        v24 = v11;
        if (v46)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_34;
    }

    v22 = *(v7 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_23C591B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_23C591B98(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v11 = (*(a1 + 48) + 32 * v6);
    v28 = *v11;
    v29 = v11[1];
    v13 = v11[2];
    v12 = v11[3];

    v27 = a1;

    while (v7)
    {
      result = v27;
LABEL_17:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (*(result + 48) + ((v5 << 11) | (32 * v17)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v21 == v13 && v22 == v12;
      if (v23 || (v24 = v18[2], v25 = v18[3], (sub_23C872014() & 1) != 0))
      {
        if (v19 == v28 && v20 == v29)
        {
          continue;
        }
      }

      if (sub_23C872014())
      {

        v13 = v21;
        v12 = v22;
        v28 = v19;
        v29 = v20;
      }
    }

    result = v27;
    while (1)
    {
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v16 >= v8)
      {

        return v28;
      }

      v7 = *(v1 + 8 * v16);
      ++v5;
      if (v7)
      {
        v5 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v4)
    {
      v5 = v4 + 1;
      v10 = *(a1 + 64 + 8 * v4);
      v9 -= 64;
      ++v4;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        v6 = __clz(__rbit64(v10)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_23C591DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v18 = &v35 - v17;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  if (v21)
  {
    v37 = a2;
    v38 = v15;
    v22 = 0;
    v23 = __clz(__rbit64(v21));
    v24 = (v21 - 1) & v21;
    v25 = (v19 + 63) >> 6;
LABEL_9:
    v28 = *(a1 + 48);
    v36 = v16;
    v29 = *(v16 + 72);
    sub_23C594F64(v28 + v29 * v23, v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C5983E4(v14, v18, type metadata accessor for SiriConversationPublisher.GraphUUID);

    if (v24)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v31 >= v25)
      {

        v33 = v37;
        sub_23C5983E4(v18, v37, type metadata accessor for SiriConversationPublisher.GraphUUID);
        return (*(v36 + 56))(v33, 0, 1, v38);
      }

      v24 = *(a1 + 56 + 8 * v31);
      ++v22;
      if (v24)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          sub_23C594F64(*(a1 + 48) + (v32 | (v31 << 6)) * v29, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C5983E4(v8, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
          if (MEMORY[0x23EED6420](v11, v18))
          {
            sub_23C594FCC(v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
            result = sub_23C5983E4(v11, v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v22 = v31;
            if (!v24)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_23C594FCC(v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v22 = v31;
            if (!v24)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
    v25 = (v19 + 63) >> 6;
    while (v25 - 1 != v21)
    {
      v22 = v21 + 1;
      v27 = *(a1 + 64 + 8 * v21);
      v26 -= 64;
      ++v21;
      if (v27)
      {
        v37 = a2;
        v38 = v15;
        v24 = (v27 - 1) & v27;
        v23 = __clz(__rbit64(v27)) - v26;
        goto LABEL_9;
      }
    }

    v34 = *(v16 + 56);

    return v34(a2, 1, 1);
  }

  return result;
}

uint64_t BiomeEventGraph.endTime()()
{
  v0 = sub_23C59A99C();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_25:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        v29 = v5;
        v6 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EED7610](v6, v1);
          }

          else
          {
            if (v6 >= *(v2 + 16))
            {
              goto LABEL_24;
            }

            v9 = *(v1 + 8 * v6 + 32);
          }

          v10 = v9;
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v11 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
          if (v11)
          {
            v12 = *(v11 + 24);
            v13 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v15 = result;

            ObjectType = swift_getObjectType();

            if (ObjectType == sub_23C596DCC())
            {

              goto LABEL_6;
            }
          }

          v7 = *&v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
          v8 = v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

          if ((v8 & 1) == 0)
          {
            break;
          }

LABEL_6:
          ++v6;
          if (v4 == v3)
          {
            v5 = v29;
            goto LABEL_27;
          }
        }

        v17 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_23C5845FC(0, *(v29 + 2) + 1, 1, v29);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v20 = v17;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_23C5845FC((v18 > 1), v19 + 1, 1, v17);
        }

        *(v20 + 2) = v19 + 1;
        v5 = v20;
        *&v20[8 * v19 + 32] = v7;
        if (v4 == v3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_27:

  v21 = *(v5 + 2);
  if (v21)
  {
    v22 = *(v5 + 4);
    v23 = v21 - 1;
    if (v23)
    {
      v24 = (v5 + 40);
      do
      {
        v25 = *v24++;
        v26 = v25;
        if (v22 < v25)
        {
          v22 = v26;
        }

        --v23;
      }

      while (v23);
    }

    return sub_23C870A54();
  }

  else
  {

    v27 = *(v28 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp);

    return sub_23C870AB4();
  }
}

Swift::String_optional __swiftcall BiomeEventGraph.rawSessionId()()
{
  v0 = type metadata accessor for TranscriptProtoEvent(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23C59ACE8();
  v6 = v5[2];
  if (v6)
  {
    v7 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_23C594F64(v7, v4, type metadata accessor for TranscriptProtoEvent);
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);

      sub_23C594FCC(v4, type metadata accessor for TranscriptProtoEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_23C5844DC(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_23C5844DC((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v7 += v8;
      --v6;
    }

    while (v6);

    if (*(v9 + 2))
    {
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = *(v9 + 4);
  v16 = *(v9 + 5);

LABEL_12:

  v17 = v15;
  v18 = v16;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t BiomeEventGraph.sessionGraph()@<X0>(Swift::String_optional *a1@<X8>)
{
  v2 = BiomeEventGraph.rawSessionId()();
  v3 = sub_23C59ACE8();
  type metadata accessor for SpanGraph();
  swift_allocObject();
  sub_23C6581F8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = 0x706172476E617073;
  *(inited + 40) = 0xE900000000000068;
  *(inited + 48) = sub_23C659620();
  *(inited + 56) = v5;
  v6 = sub_23C5967FC(inited);
  swift_setDeallocating();
  sub_23C585C34(inited + 32, &qword_27E1F9968, &unk_23C873E20);

  *a1 = v2;
  a1[1].value._countAndFlagsBits = 0xD000000000000015;
  a1[1].value._object = 0x800000023C8A6E00;
  a1[2].value._countAndFlagsBits = 0;
  a1[2].value._object = 0;
  a1[3].value._countAndFlagsBits = v6;
  return result;
}

void *BiomeEventGraph.selfIds()()
{
  v0 = sub_23C59B900();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_23C592BC4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v17;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = sub_23C6031E4();

      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_23C592BC4((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      ++v4;
      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v8;
    }

    while (v2 != v4);

    v11 = *(v5 + 16);
    if (!v11)
    {
      break;
    }

    while (1)
    {
      v12 = 0;
      v1 = 0;
      v13 = MEMORY[0x277D84F98];
      while (v12 < *(v5 + 16))
      {
        v14 = v12 + 1;
        v15 = *(v5 + 32 + 8 * v12);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v13;
        sub_23C596B20(v15, sub_23C5955E8, 0, isUniquelyReferenced_nonNull_native, &v17);

        v13 = v17;
        v12 = v14;
        if (v11 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      v2 = sub_23C871C34();
      if (v2)
      {
        break;
      }

LABEL_18:

      v5 = MEMORY[0x277D84F90];
      v11 = *(MEMORY[0x277D84F90] + 16);
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v13 = MEMORY[0x277D84F98];
LABEL_20:

  return v13;
}

void sub_23C592900(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C870E34();
  v4 = sub_23C58ABD4(&qword_27E1F9B00, MEMORY[0x277D56708]);
  v5 = 0;
  v12[1] = MEMORY[0x23EED72E0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_23C64E050(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_23C592A44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C59A6F0();
  result = MEMORY[0x23EED72E0](v2, &type metadata for MessageTypeWrapper, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_23C64E73C(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_23C592B40(char *a1, int64_t a2, char a3)
{
  result = sub_23C592D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23C592B60(size_t a1, int64_t a2, char a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F9490, &qword_23C8739C0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_23C592BA4(char *a1, int64_t a2, char a3)
{
  result = sub_23C593048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592BC4(void *a1, int64_t a2, char a3)
{
  result = sub_23C593C88(a1, a2, a3, *v3, &qword_27E1F9C58, &qword_23C874D30, &qword_27E1F97C0, &qword_23C873D68);
  *v3 = result;
  return result;
}

char *sub_23C592C04(char *a1, int64_t a2, char a3)
{
  result = sub_23C593298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C592C24(char *a1, int64_t a2, char a3)
{
  result = sub_23C5933B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592C44(void *a1, int64_t a2, char a3)
{
  result = sub_23C59360C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C592C64(char *a1, int64_t a2, char a3)
{
  result = sub_23C593754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23C592C84(size_t a1, int64_t a2, char a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F9AE0, &unk_23C874B50, type metadata accessor for EventTypeIdPair);
  *v3 = result;
  return result;
}

size_t sub_23C592CC8(size_t a1, int64_t a2, char a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &unk_27E1F9420, &qword_23C8739B0, type metadata accessor for SiriConversationPublisher.GraphUUID);
  *v3 = result;
  return result;
}

void *sub_23C592D0C(void *a1, int64_t a2, char a3)
{
  result = sub_23C593C88(a1, a2, a3, *v3, &qword_27E1F9C68, &qword_23C874D48, &qword_27E1F9C70, &qword_23C874D50);
  *v3 = result;
  return result;
}

size_t sub_23C592D4C(size_t a1, int64_t a2, char a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F94E8, &unk_23C874C40, type metadata accessor for TranscriptProtoEvent);
  *v3 = result;
  return result;
}

char *sub_23C592D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
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

void *sub_23C592F14(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF0, &qword_23C874B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF8, &unk_23C874B70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA0, &qword_23C874C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C593154(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA8, &unk_23C874C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB0, &qword_23C87D000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C78, &qword_23C874D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C5933B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9510, &qword_23C873A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C5934C4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B10, &unk_23C874B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF0, &qword_23C87BEC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C59360C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C38, &qword_23C874CE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C08, &unk_23C874CB0);
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

size_t sub_23C5938A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_23C593AA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23C593C88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_OWORD *sub_23C593DBC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23C5FF9C4(a2);
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
      sub_23C642E3C();
      goto LABEL_7;
    }

    sub_23C63C9D0(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_23C5FF9C4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23C59A4C0(a2, v22);
      return sub_23C64272C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_23C872064();
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
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_23C59A4B0(a1, v17);
}

unint64_t sub_23C593F08(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_23C5FFA08(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      v16 = result;
      sub_23C642FE0();
      result = v16;
      goto LABEL_8;
    }

    sub_23C63CC88(v13, a2 & 1);
    v17 = *v4;
    result = sub_23C5FFA08(a1);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_23C870E34();
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {
    sub_23C6427A8(result, a1, v19, a3);

    return a1;
  }

  return result;
}

id sub_23C594024(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23C5FFA08(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_23C64313C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_23C63CEF0(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_23C5FFA08(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_23C870E34();
      sub_23C872064();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_23C6427EC(v8, a2, a1, v19);

  return a2;
}

uint64_t sub_23C594158(uint64_t *a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for EventTypeIdPair();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23C5FFA4C(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_23C6432B0();
      goto LABEL_7;
    }

    sub_23C63D16C(result, a2 & 1);
    v21 = *v4;
    result = sub_23C5FFA4C(a1);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_23C594F64(a1, v11, type metadata accessor for EventTypeIdPair);
      return sub_23C64285C(v14, v11, v20, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C5942CC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_23C870B74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23C5FFB04(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_23C64372C();
      goto LABEL_7;
    }

    sub_23C63D934(result, a2 & 1);
    v22 = *v4;
    result = sub_23C5FFB04(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_23C642940(v15, v12, v21, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C594470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v16 = *v9;
  v18 = sub_23C5FFB88(a5, a6, a7, a8);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a9 & 1) == 0)
  {
    if (v23 >= v21 && (a9 & 1) == 0)
    {
      sub_23C643E14();
      goto LABEL_9;
    }

    sub_23C63E460(v21, a9 & 1);
    v24 = *v10;
    v25 = sub_23C5FFB88(a5, a6, a7, a8);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = *v10;
  if (v22)
  {
    v28 = (v27[7] + 32 * v18);
    v29 = v28[1];
    v30 = v28[3];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  else
  {
    sub_23C642A44(v18, a5, a6, a7, a8, a1, a2, a3, a4, v27);
  }
}

uint64_t sub_23C59461C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_23C5FFB88(a1, a2, a3, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = result;
      sub_23C643FB4();
      result = v23;
      goto LABEL_8;
    }

    sub_23C63E768(v20, a5 & 1);
    v24 = *v7;
    result = sub_23C5FFB88(a1, a2, a3, a4);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    *(v26[7] + 8 * result) = a6;
  }

  else
  {
    sub_23C642AA0(result, a1, a2, a3, a4, v26, a6);
  }

  return result;
}

uint64_t sub_23C594770(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23C5FF898(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_23C6442B8();
      result = v19;
      goto LABEL_8;
    }

    sub_23C63ED18(v16, a3 & 1);
    v20 = *v5;
    result = sub_23C5FF898(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_23C642AEC(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_23C5948D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_23C5FF898(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_23C5FF898(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_23C594A44(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23C5FFCB8(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_23C644B24();
      goto LABEL_7;
    }

    sub_23C63FF74(result, a2 & 1);
    v21 = *v4;
    result = sub_23C5FFCB8(a1);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_23C594F64(a1, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
      return sub_23C642B7C(v14, v11, v20, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C594BB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23C5FFCB8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23C644D60();
      goto LABEL_7;
    }

    sub_23C64033C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23C5FFCB8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23C594F64(a2, v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
      return sub_23C642C5C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + *(v9 + 72) * v15;

  return sub_23C598380(a1, v22);
}

_OWORD *sub_23C594D8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C5FF898(a2, a3);
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
      sub_23C645214();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23C640B38(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23C5FF898(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23C872064();
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

    return sub_23C59A4B0(a1, v23);
  }

  else
  {
    sub_23C642DD0(v11, a2, a3, a1, v22);
  }
}

uint64_t (*sub_23C594EDC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EED7610](a2, a3);
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
    *v3 = v5;
    return sub_23C594F5C;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C594F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C594FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C59502C()
{
  result = qword_27E1F98B0;
  if (!qword_27E1F98B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98A8, &qword_23C8A6A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98B0);
  }

  return result;
}

uint64_t sub_23C595090(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_23C5950E4()
{
  result = qword_27E1F98C8;
  if (!qword_27E1F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98C8);
  }

  return result;
}

uint64_t sub_23C595138(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98A8, &qword_23C8A6A70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C5951A4()
{
  result = qword_27E1F98F0;
  if (!qword_27E1F98F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98E8, &qword_23C873DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98F0);
  }

  return result;
}

unint64_t sub_23C595228()
{
  result = qword_27E1F9900;
  if (!qword_27E1F9900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98F8, &qword_23C873DE8);
    sub_23C5952B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9900);
  }

  return result;
}

unint64_t sub_23C5952B4()
{
  result = qword_27E1F9908;
  if (!qword_27E1F9908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9910, &qword_23C873DF0);
    sub_23C595338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9908);
  }

  return result;
}

unint64_t sub_23C595338()
{
  result = qword_27E1F9918;
  if (!qword_27E1F9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9918);
  }

  return result;
}

unint64_t sub_23C59538C()
{
  result = qword_27E1F9920;
  if (!qword_27E1F9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9920);
  }

  return result;
}

uint64_t sub_23C595400(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23C595438()
{
  result = qword_27E1F9930;
  if (!qword_27E1F9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9930);
  }

  return result;
}

unint64_t sub_23C59548C()
{
  result = qword_27E1F9938;
  if (!qword_27E1F9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9938);
  }

  return result;
}

void (*sub_23C5954E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](a2, a3);
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
    return sub_23C595560;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23C595568(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](a2, a3);
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
    return sub_23C59A780;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5955E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_23C595658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_23C871E94();
  v15 = *(a1 + 32);
  result = sub_23C5FF958(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = sub_23C5FF958(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C595760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C656966 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23C872014();

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

uint64_t sub_23C595874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736553776172 && a2 == 0xEC00000064496E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_23C872014();

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

uint64_t sub_23C59598C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEA0000000000734ELL || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064 || (sub_23C872014() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23C872014();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23C595B44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718379891 && a2 == 0xE400000000000000;
  if (v3 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6907495 && a2 == 0xE300000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_23C872014();

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

unint64_t sub_23C595CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
    v3 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23C5FFA08(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_23C595DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
    v3 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23C5FFA08(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_23C595EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BE0, &unk_23C874C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9BE0, &unk_23C874C80);
      result = sub_23C5FFB04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23C870B74();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_23C5960B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD0, &qword_23C874C70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9BD0, &qword_23C874C70);
      result = sub_23C5FFB04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23C870B74();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_23C596298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC0, &unk_23C874C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9BC0, &unk_23C874C60);
      result = sub_23C5FFA4C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EventTypeIdPair();
      result = sub_23C5983E4(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for EventTypeIdPair);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_23C59647C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB8, &qword_23C874C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
    v8 = sub_23C871E94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v10, v6, &qword_27E1F9BB8, &qword_23C874C50);
      result = sub_23C5FFA4C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EventTypeIdPair();
      result = sub_23C5983E4(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for EventTypeIdPair);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_23C596660(uint64_t a1)
{
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_23C58ABD4(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  result = MEMORY[0x23EED72E0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_23C64E07C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_23C5967FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9970, &unk_23C873E30);
    v3 = sub_23C871E94();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23C5FF898(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_23C596910(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EED72E0](v2, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23C64E334(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23C596984(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EED72E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23C64E414(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_23C596A30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_23C5FFA08(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_23C596B20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v50[0] = *v19;
    v50[1] = v20;
    v50[2] = v21;

    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_23C5FF898(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_23C643C34();
      }
    }

    else
    {
      v32 = v51;
      sub_23C63E0E8(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_23C5FF898(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = sub_23C6320F4(v24, v12);

      v14 = v36[7];
      v15 = *(v14 + 8 * v27);
      *(v14 + 8 * v27) = v13;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v16;
    v6 = v43;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_23C56EF08();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_23C872064();
  __break(1u);
  return result;
}

unint64_t sub_23C596DCC()
{
  result = qword_27E1F9998;
  if (!qword_27E1F9998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9998);
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

uint64_t sub_23C596E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_23C596E88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_23C596F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C596F5C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

void sub_23C596FF0()
{
  sub_23C870AE4();
  if (v0 <= 0x3F)
  {
    sub_23C597074();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C597074()
{
  if (!qword_2814FAF78)
  {
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_2814FAF78);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23C5970D8(uint64_t a1, int a2)
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

uint64_t sub_23C597120(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_23C59718C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_23C5971E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23C597284(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23C5972CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_23C597344()
{
  sub_23C597404();
  if (v0 <= 0x3F)
  {
    sub_23C597464();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BiomeEventGraph.SessionMeta(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C597404()
{
  if (!qword_27E1F99C0)
  {
    v0 = sub_23C8716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F99C0);
    }
  }
}

void sub_23C597464()
{
  if (!qword_27E1F99C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9910, &qword_23C873DF0);
    v0 = sub_23C8716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F99C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContextProtoRetrievedTool.Stage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextProtoRetrievedTool.Stage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TimestampedOrderedEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimestampedOrderedEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23C5979F0(unsigned __int8 *a1, unsigned int a2)
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