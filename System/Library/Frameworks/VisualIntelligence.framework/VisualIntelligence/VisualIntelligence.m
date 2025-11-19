uint64_t SemanticContentDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  *a1 = sub_23B2F7E78();
  a1[1] = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  result = sub_23B2F7E78();
  a1[2] = result;
  return result;
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

uint64_t SemanticContentDescriptorEntity.labels.getter()
{
  v1 = *v0;
  sub_23B2F7E48();
  return v3;
}

uint64_t sub_23B2F4434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_23B2F7E48();
  *a2 = v5;
  return result;
}

uint64_t sub_23B2F4470(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.labels.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_23B2F7E38();
  return sub_23B2F6140;
}

uint64_t SemanticContentDescriptorEntity.textList.getter()
{
  v1 = *(v0 + 8);
  sub_23B2F7E48();
  return v3;
}

uint64_t sub_23B2F45E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_23B2F7E48();
  *a2 = v5;
  return result;
}

uint64_t sub_23B2F4624(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.textList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_23B2F7E38();
  return sub_23B2F6140;
}

uint64_t SemanticContentDescriptorEntity.imageFrameResourceIDString.getter()
{
  v1 = *(v0 + 16);
  sub_23B2F7E48();
  return v3;
}

double sub_23B2F479C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_23B2F7E48();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23B2F47D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.imageFrameResourceIDString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_23B2F7E38();
  return sub_23B2F48F8;
}

void sub_23B2F48FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23B2F496C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  *a1 = sub_23B2F7E78();
  a1[1] = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  result = sub_23B2F7E78();
  a1[2] = result;
  return result;
}

uint64_t sub_23B2F49D4(uint64_t a1)
{
  v2 = sub_23B2F5C54();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_23B2F4A20(uint64_t a1)
{
  v2 = sub_23B2F5C54();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_23B2F4AA4(uint64_t a1)
{
  v2 = sub_23B2F57D0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23B2F4AF0(uint64_t a1)
{
  v2 = sub_23B2F5D6C();

  return MEMORY[0x28210C590](a1, v2);
}

uint64_t sub_23B2F4B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23B2F4C00;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23B2F4C00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B2F4CF4(uint64_t a1)
{
  v2 = sub_23B2F5AD0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SemanticContentDescriptorEntity.convertToSystemIntentValue()@<X0>(void *a1@<X8>)
{
  v80 = a1;
  v2 = sub_23B2F7F58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v72 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD00, &qword_23B2F82A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v77 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = v66 - v16;
  MEMORY[0x28223BE20](v15);
  v78 = v66 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8);
  v18 = *(v83 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v21 = v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD10, &unk_23B2F82B0);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v82 = v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v74 = v66 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v66 - v32;
  v34 = v1[1];
  v75 = *v1;
  v73 = v1[2];
  sub_23B2F7E48();
  v35 = *(v84 + 16);

  v81 = v33;
  if (v35)
  {
    v71 = v8;
    v36 = sub_23B2F7F28();
    v37 = *(*(v36 - 8) + 56);
    v70 = v25;
    v37(v25, 1, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD20, &qword_23B2F82C0);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD28, &qword_23B2F82C8) - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_23B2F8280;
    sub_23B2F7E48();
    v41 = v84;
    v42 = *(v84 + 16);
    if (v42)
    {
      v66[2] = v40;
      v67 = v3;
      v68 = v2;
      v86 = MEMORY[0x277D84F90];
      sub_23B2F5628(0, v42, 0);
      v43 = v86;
      sub_23B2F5648();
      v66[1] = v41;
      v44 = (v41 + 40);
      do
      {
        v45 = *v44;
        v84 = *(v44 - 1);
        v85 = v45;

        sub_23B2F7E28();
        v86 = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_23B2F5628(v46 > 1, v47 + 1, 1);
          v43 = v86;
        }

        *(v43 + 16) = v47 + 1;
        (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v47, v21, v83);
        v44 += 2;
        --v42;
      }

      while (v42);

      v3 = v67;
      v2 = v68;
    }

    else
    {
    }

    sub_23B2F5648();
    sub_23B2F7E88();
    v51 = v74;
    sub_23B2F7E98();
    v48 = 0;
    v8 = v71;
    v50 = v78;
    v49 = v79;
    v33 = v81;
  }

  else
  {
    v48 = 1;
    v50 = v78;
    v49 = v79;
    v51 = v74;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD38, &qword_23B2F82D0);
  (*(*(v52 - 8) + 56))(v51, v48, 1, v52);
  sub_23B2F569C(v51, v33, &qword_27E12FD18, &unk_23B2F86A0);
  sub_23B2F7E48();
  v53 = v76;
  if (v85)
  {
    sub_23B2F7F38();
  }

  else
  {
    (*(v3 + 56))(v76, 1, 1, v2);
  }

  sub_23B2F569C(v53, v50, &qword_27E12FD00, &qword_23B2F82A0);
  sub_23B2F7E48();
  v54 = v84;
  v55 = v81;
  sub_23B2F5704(v81, v82, &qword_27E12FD18, &unk_23B2F86A0);
  sub_23B2F5704(v50, v49, &qword_27E12FD00, &qword_23B2F82A0);
  v56 = v77;
  sub_23B2F5704(v49, v77, &qword_27E12FD00, &qword_23B2F82A0);
  if ((*(v3 + 48))(v56, 1, v2) == 1)
  {
    sub_23B2F576C(v49, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v50, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v55, &qword_27E12FD18, &unk_23B2F86A0);
    sub_23B2F576C(v56, &qword_27E12FD00, &qword_23B2F82A0);
    v57 = 0;
    v58 = -1;
  }

  else
  {
    (*(v3 + 32))(v8, v56, v2);
    (*(v3 + 16))(v72, v8, v2);
    v59 = sub_23B2F7FB8();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v57 = sub_23B2F7F98();
    (*(v3 + 8))(v8, v2);
    sub_23B2F576C(v49, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v50, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v55, &qword_27E12FD18, &unk_23B2F86A0);
    v58 = 0;
  }

  v62 = v80;
  *v80 = v54;
  v63 = type metadata accessor for SemanticContentDescriptor();
  result = sub_23B2F569C(v82, v62 + *(v63 + 20), &qword_27E12FD18, &unk_23B2F86A0);
  v65 = v62 + *(v63 + 24);
  *v65 = v57;
  v65[8] = v58;
  return result;
}

uint64_t sub_23B2F55DC(uint64_t a1)
{
  v2 = sub_23B2F5D6C();

  return MEMORY[0x28210C5A0](a1, v2);
}

size_t sub_23B2F5628(size_t a1, int64_t a2, char a3)
{
  result = sub_23B2F5EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23B2F5648()
{
  result = qword_27E12FD30;
  if (!qword_27E12FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD30);
  }

  return result;
}

uint64_t sub_23B2F569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B2F5704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B2F576C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B2F57D0()
{
  result = qword_27E12FD40;
  if (!qword_27E12FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD40);
  }

  return result;
}

unint64_t sub_23B2F5828()
{
  result = qword_27E12FD48;
  if (!qword_27E12FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD48);
  }

  return result;
}

unint64_t sub_23B2F5880()
{
  result = qword_27E12FD50;
  if (!qword_27E12FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD50);
  }

  return result;
}

unint64_t sub_23B2F58D8()
{
  result = qword_27E12FD58;
  if (!qword_27E12FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD58);
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

unint64_t sub_23B2F59C8()
{
  result = qword_27E12FD70;
  if (!qword_27E12FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD70);
  }

  return result;
}

unint64_t sub_23B2F5A20()
{
  result = qword_27E12FD78;
  if (!qword_27E12FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD78);
  }

  return result;
}

unint64_t sub_23B2F5A78()
{
  result = qword_27E12FD80;
  if (!qword_27E12FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD80);
  }

  return result;
}

unint64_t sub_23B2F5AD0()
{
  result = qword_27E12FD88;
  if (!qword_27E12FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD88);
  }

  return result;
}

uint64_t sub_23B2F5BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23B2F5BFC()
{
  result = qword_27E12FDA8;
  if (!qword_27E12FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDA8);
  }

  return result;
}

unint64_t sub_23B2F5C54()
{
  result = qword_27E12FDB0;
  if (!qword_27E12FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDB0);
  }

  return result;
}

unint64_t sub_23B2F5CAC()
{
  result = qword_27E12FDB8;
  if (!qword_27E12FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDB8);
  }

  return result;
}

unint64_t sub_23B2F5D6C()
{
  result = qword_27E12FDC0;
  if (!qword_27E12FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDC0);
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

uint64_t sub_23B2F5DD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B2F5E1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23B2F5EB4(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_23B2F5EFC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E12FDD0, "0\a");
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8) - 8);
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

void type metadata accessor for CVBuffer()
{
  if (!qword_2814F8838)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814F8838);
    }
  }
}

uint64_t sub_23B2F6154(uint64_t a1)
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

uint64_t sub_23B2F61C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23B2F6304(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t static SemanticContentDescriptor.defaultResolverSpecification.getter()
{
  type metadata accessor for SemanticContentDescriptor();
  sub_23B2F6C18(&qword_27E12FE58);

  return sub_23B2F7ED8();
}

uint64_t sub_23B2F6668(uint64_t a1)
{
  v2 = sub_23B2F6C18(&qword_27E12FE70);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SemanticContentDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B2F7F58();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  v11 = sub_23B2F7E78();
  v12 = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  v13 = sub_23B2F7E78();
  v30 = *v1;

  sub_23B2F7E58();
  v14 = type metadata accessor for SemanticContentDescriptor();
  sub_23B2F69B8(v1 + *(v14 + 20), v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD38, &qword_23B2F82D0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_23B2F6A28(v10);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = sub_23B2F7EA8();
    (*(v16 + 8))(v10, v15);
  }

  v30 = v17;
  sub_23B2F7E58();
  v18 = v2 + *(v14 + 24);
  v19 = v18[8];
  if (v19 == 255 || (v19 & 1) != 0)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = *v18;
    v23 = v27;
    sub_23B2F7F88();
    v20 = sub_23B2F7F48();
    v21 = v24;
    (*(v28 + 8))(v23, v29);
  }

  v30 = v20;
  v31 = v21;
  sub_23B2F7E58();

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  return result;
}

uint64_t sub_23B2F69B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2F6A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B2F6C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SemanticContentDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B2F6C80()
{
  result = qword_27E12FE90;
  if (!qword_27E12FE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FE98, &qword_23B2F8898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FE90);
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

uint64_t sub_23B2F6D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B2F6D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t SemanticContentDescriptor.init(labels:list:imageFrameResourceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD00, &qword_23B2F82A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_23B2F7F58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_23B2F5704(a3, v10, &qword_27E12FD00, &qword_23B2F82A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23B2F576C(a3, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v10, &qword_27E12FD00, &qword_23B2F82A0);
    v19 = 0;
    v20 = -1;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    (*(v12 + 16))(v16, v18, v11);
    v21 = sub_23B2F7FB8();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v19 = sub_23B2F7F98();
    sub_23B2F576C(a3, &qword_27E12FD00, &qword_23B2F82A0);
    (*(v12 + 8))(v18, v11);
    v20 = 0;
  }

  *a4 = a1;
  v24 = type metadata accessor for SemanticContentDescriptor();
  result = sub_23B2F7084(v28, a4 + *(v24 + 20));
  v26 = a4 + *(v24 + 24);
  *v26 = v19;
  v26[8] = v20;
  return result;
}

uint64_t type metadata accessor for SemanticContentDescriptor()
{
  result = qword_27E12FEB0;
  if (!qword_27E12FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B2F7084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SemanticContentDescriptor.imageFrameResourceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SemanticContentDescriptor() + 24));
  v4 = *(v3 + 8);
  if (v4 == 255 || (v4 & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = *v3;
    sub_23B2F7F88();
    v5 = 0;
  }

  v7 = sub_23B2F7F58();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v5, 1, v7);
}

uint64_t SemanticContentDescriptor.pixelBuffer.getter()
{
  v1 = sub_23B2F7F78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FEA0, &qword_23B2F8960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_23B2F7FC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = v0 + *(type metadata accessor for SemanticContentDescriptor() + 24);
  v19 = *(v18 + 8);
  if (v19 != 255)
  {
    v32 = v2;
    v20 = *v18;
    v21 = *v18;
    if (v19)
    {
      sub_23B2F75A0(v21, 1);
      v22 = v20;
LABEL_4:
      v23 = sub_23B2F7FE8();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = sub_23B2F7FD8();
      sub_23B2F75AC(v20, v19);
      return v26;
    }

    sub_23B2F75A0(v21, 0);
    sub_23B2F7FA8();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_23B2F75AC(v20, v19);
      sub_23B2F576C(v9, &qword_27E12FEA0, &qword_23B2F8960);
    }

    else
    {
      (*(v11 + 32))(v17, v9, v10);
      (*(v11 + 16))(v15, v17, v10);
      if ((*(v11 + 88))(v15, v10) == *MEMORY[0x277D78CD0])
      {
        (*(v11 + 96))(v15, v10);
        v28 = v32;
        (*(v32 + 32))(v5, v15, v1);
        v29 = sub_23B2F7F68();
        (*(v28 + 8))(v5, v1);
        (*(v11 + 8))(v17, v10);
        if (v29)
        {
          goto LABEL_4;
        }

        sub_23B2F75AC(v20, v19);
      }

      else
      {
        sub_23B2F75AC(v20, v19);
        v30 = *(v11 + 8);
        v30(v17, v10);
        v30(v15, v10);
      }
    }
  }

  return 0;
}

id sub_23B2F75A0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23B2F75AC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_23B2F75C4(a1, a2 & 1);
  }
}

void sub_23B2F75C4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t SemanticContentDescriptor.description.getter()
{
  v1 = v0;
  v2 = sub_23B2F795C(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_23B2F795C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v6 = &v2[16 * v4];
  *(v6 + 4) = 0xD00000000000001BLL;
  *(v6 + 5) = 0x800000023B2F8AD0;
  if (*(*v1 + 16))
  {
    v7 = MEMORY[0x23EE99800]();
    MEMORY[0x23EE997F0](v7);

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    v5 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v2 = sub_23B2F795C((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
    v10 = &v2[16 * v9];
    *(v10 + 4) = 0x3A736C6562616C09;
    *(v10 + 5) = 0xE900000000000020;
  }

  v11 = v1 + *(type metadata accessor for SemanticContentDescriptor() + 24);
  v12 = *(v11 + 8);
  if (v12 == 255)
  {
    v21 = *(v2 + 3);
    if (v5 >= v21 >> 1)
    {
      v2 = sub_23B2F795C((v21 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v22 = &v2[16 * v5];
    *(v22 + 4) = 0xD000000000000014;
    *(v22 + 5) = 0x800000023B2F8AF0;
    v17 = *(v2 + 2);
  }

  else
  {
    v13 = *v11;
    v14 = *v11;
    if (v12)
    {
      sub_23B2F75A0(v14, 1);
      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v2 = sub_23B2F795C((v15 > 1), v16 + 1, 1, v2);
      }

      sub_23B2F75AC(v13, v12);
      v18 = 0x800000023B2F8B10;
      *(v2 + 2) = v17;
      v19 = &v2[16 * v16];
      v20 = 0xD000000000000015;
    }

    else
    {
      sub_23B2F75A0(v14, 0);
      v24 = *(v2 + 2);
      v23 = *(v2 + 3);
      v17 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v2 = sub_23B2F795C((v23 > 1), v24 + 1, 1, v2);
      }

      sub_23B2F75AC(v13, v12);
      v18 = 0x800000023B2F8B30;
      *(v2 + 2) = v17;
      v19 = &v2[16 * v24];
      v20 = 0xD000000000000016;
    }

    *(v19 + 4) = v20;
    *(v19 + 5) = v18;
  }

  v25 = *(v2 + 3);
  if (v17 >= v25 >> 1)
  {
    v2 = sub_23B2F795C((v25 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v26 = &v2[16 * v17];
  *(v26 + 4) = 125;
  *(v26 + 5) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FEA8, &qword_23B2F8968);
  sub_23B2F7A68();
  v27 = sub_23B2F7FF8();

  return v27;
}

uint64_t SemanticContentDescriptor.init(labels:list:pixelBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  *a4 = a1;
  v8 = type metadata accessor for SemanticContentDescriptor();
  result = sub_23B2F7084(a2, a4 + *(v8 + 20));
  v10 = a4 + *(v8 + 24);
  *v10 = a3;
  v10[8] = v7;
  return result;
}

char *sub_23B2F795C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12FED0, &qword_23B2F89F8);
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

unint64_t sub_23B2F7A68()
{
  result = qword_2814F8840;
  if (!qword_2814F8840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FEA8, &qword_23B2F8968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F8840);
  }

  return result;
}

uint64_t sub_23B2F7AE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B2F7BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B2F7C60()
{
  sub_23B2F7DA8(319, &qword_2814F8848, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23B2F7D44();
    if (v1 <= 0x3F)
    {
      sub_23B2F7DA8(319, &qword_27E12FEC8, &type metadata for PixelBufferProxy, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B2F7D44()
{
  if (!qword_27E12FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FD38, &qword_23B2F82D0);
    v0 = sub_23B2F8028();
    if (!v1)
    {
      atomic_store(v0, &qword_27E12FEC0);
    }
  }
}

void sub_23B2F7DA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}