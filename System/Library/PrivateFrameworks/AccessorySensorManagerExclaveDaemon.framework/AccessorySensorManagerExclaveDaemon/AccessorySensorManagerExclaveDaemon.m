uint64_t sub_23DC35E78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23DC35EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23DC367F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_23DC36810();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DC36800();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_23DC35FE0@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30BFE8, &qword_23DC36A38) - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v36 = &v32[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v32[-v11];
  v13 = sub_23DC367D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v39 = v13;
  v40 = v12;
  v35 = v15;
  (v15)(v12, 1, 1);
  LOBYTE(v12) = sub_23DC3650C();
  v16 = v3[6];
  v17 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v16);
  if (v12)
  {
    (*(v17 + 16))(v16, v17);
    v18 = v38;
    sub_23DC367B0();
    if (!v18)
    {
      v34 = a2;
LABEL_8:
      v26 = v39;
      v35(v8, 0, 1, v39);
      v27 = *(v14 + 48);
      v28 = v40;
      if (v27(v40, 1, v26) != 1)
      {
        sub_23DC3665C(v28);
      }

      sub_23DC366C4(v8, v28);
      v29 = v27(v28, 1, v26);
      v30 = v29;
      if (v29 != 1)
      {
        if (v29)
        {
          sub_23DC3665C(v28);
          v30 = 1;
        }

        else
        {
          sub_23DC367C0();
        }
      }

      v31 = sub_23DC367E0();
      return (*(*(v31 - 8) + 56))(v34, v30, 1, v31);
    }
  }

  else
  {
    v34 = a2;
    v41 = sub_23DC36780();
    v33 = sub_23DC36790();
    v19 = sub_23DC36790();
    v20 = sub_23DC36790();
    v21 = sub_23DC36790();
    (*(v17 + 8))(v41 & 1, v33, v19, v20, v21, v16, v17);
    v8 = v36;
    v22 = v38;
    sub_23DC367B0();
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v23 = v42;
  v24 = v40;
  result = (*(v14 + 48))(v40, 1, v39);
  if (result != 1)
  {
    result = sub_23DC3665C(v24);
  }

  *v37 = v23;
  return result;
}

uint64_t sub_23DC36344()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23DC36384@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = sub_23DC35FE0(&v7, a2);
  if (v3)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_23DC36470()
{
  result = qword_27E30BFE0;
  if (!qword_27E30BFE0)
  {
    type metadata accessor for AccessorySensorManager.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30BFE0);
  }

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

uint64_t sub_23DC3650C()
{
  v0 = sub_23DC367A0();
  if (v0 == 0xC74CB01366047049)
  {
    return 0;
  }

  if (v0 == 0x24107A167161F192)
  {
    return 1;
  }

  sub_23DC36830();
  MEMORY[0x23EEFA4B0](0xD000000000000035, 0x800000023DC36B90);
  v2 = sub_23DC36850();
  MEMORY[0x23EEFA4B0](v2);

  result = sub_23DC36840();
  __break(1u);
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

uint64_t sub_23DC3665C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30BFE8, &qword_23DC36A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DC366C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30BFE8, &qword_23DC36A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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