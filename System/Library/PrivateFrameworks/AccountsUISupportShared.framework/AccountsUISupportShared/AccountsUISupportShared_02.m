uint64_t sub_23DD9BC34(uint64_t a1)
{
  v2 = sub_23DD9C3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9BC70(uint64_t a1)
{
  v2 = sub_23DD9C354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9BCAC(uint64_t a1)
{
  v2 = sub_23DD9C354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9BCE8(uint64_t a1)
{
  v2 = sub_23DD9C300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9BD24(uint64_t a1)
{
  v2 = sub_23DD9C300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Provider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EC8, &qword_23DDAB560);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313ED0, &qword_23DDAB568);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313ED8, &qword_23DDAB570);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EE0, &qword_23DDAB578);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EE8, &qword_23DDAB580);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EF0, &qword_23DDAB588);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_23DD9C2AC();
  sub_23DDA4BF0();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_23DD9C3FC();
      v38 = v52;
      sub_23DDA4A80();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_23DD9C450();
      v38 = v52;
      sub_23DDA4A80();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_23DD9C3A8();
      v29 = v40;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_23DD9C354();
      v29 = v43;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_23DD9C300();
      v29 = v46;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_23DD9C2AC()
{
  result = qword_27E313EF8;
  if (!qword_27E313EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313EF8);
  }

  return result;
}

unint64_t sub_23DD9C300()
{
  result = qword_27E313F00;
  if (!qword_27E313F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F00);
  }

  return result;
}

unint64_t sub_23DD9C354()
{
  result = qword_27E313F08;
  if (!qword_27E313F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F08);
  }

  return result;
}

unint64_t sub_23DD9C3A8()
{
  result = qword_27E313F10;
  if (!qword_27E313F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F10);
  }

  return result;
}

unint64_t sub_23DD9C3FC()
{
  result = qword_27E313F18;
  if (!qword_27E313F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F18);
  }

  return result;
}

unint64_t sub_23DD9C450()
{
  result = qword_27E313F20;
  if (!qword_27E313F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F20);
  }

  return result;
}

uint64_t Provider.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

uint64_t Provider.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F28, &qword_23DDAB590);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F30, &qword_23DDAB598);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F38, &qword_23DDAB5A0);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F40, &qword_23DDAB5A8);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F48, &qword_23DDAB5B0);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313F50, &unk_23DDAB5B8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23DD9C2AC();
  v26 = v69;
  sub_23DDA4BD0();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_23DDA4A70();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_23DD7C4A4();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_23DDA49D0();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v41 = &type metadata for Provider;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_23DD9C3FC();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_23DDA49F0();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_23DD9C450();
      v45 = v54;
      sub_23DDA49F0();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_23DD9C3A8();
    v46 = v31;
    v47 = v54;
    sub_23DDA49F0();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_23DD9C300();
    v49 = v64;
    v50 = v54;
    sub_23DDA49F0();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_23DD9C354();
  v38 = v54;
  sub_23DDA49F0();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

AccountsUISupportShared::Provider_optional __swiftcall Provider.init(webService:)(Swift::String webService)
{
  v2 = v1;
  v3 = sub_23DDA4920();
  v5 = v4;

  if (v3 == 0x65676E6168637865 && v5 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (v3 == 7106401 && v5 == 0xE300000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    v7 = 1;
  }

  else if (v3 == 0x656C676F6F67 && v5 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    v7 = 2;
  }

  else if (v3 == 0x64756F6C6369 && v5 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    v7 = 3;
  }

  else if (v3 == 0x6F6F686179 && v5 == 0xE500000000000000)
  {

    v7 = 4;
  }

  else
  {
    v8 = sub_23DDA4B00();

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  *v2 = v7;
  return result;
}

unint64_t sub_23DD9CF2C()
{
  result = qword_27E313F58;
  if (!qword_27E313F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F58);
  }

  return result;
}

unint64_t sub_23DD9CF84()
{
  result = qword_27E313F60;
  if (!qword_27E313F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E313F68, &qword_23DDAB680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F60);
  }

  return result;
}

unint64_t sub_23DD9D05C()
{
  result = qword_27E313F70;
  if (!qword_27E313F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F70);
  }

  return result;
}

unint64_t sub_23DD9D0B4()
{
  result = qword_27E313F78;
  if (!qword_27E313F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F78);
  }

  return result;
}

unint64_t sub_23DD9D10C()
{
  result = qword_27E313F80;
  if (!qword_27E313F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F80);
  }

  return result;
}

unint64_t sub_23DD9D164()
{
  result = qword_27E313F88;
  if (!qword_27E313F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F88);
  }

  return result;
}

unint64_t sub_23DD9D1BC()
{
  result = qword_27E313F90;
  if (!qword_27E313F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F90);
  }

  return result;
}

unint64_t sub_23DD9D214()
{
  result = qword_27E313F98;
  if (!qword_27E313F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313F98);
  }

  return result;
}

unint64_t sub_23DD9D26C()
{
  result = qword_27E313FA0;
  if (!qword_27E313FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FA0);
  }

  return result;
}

unint64_t sub_23DD9D2C4()
{
  result = qword_27E313FA8;
  if (!qword_27E313FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FA8);
  }

  return result;
}

unint64_t sub_23DD9D31C()
{
  result = qword_27E313FB0;
  if (!qword_27E313FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FB0);
  }

  return result;
}

unint64_t sub_23DD9D374()
{
  result = qword_27E313FB8;
  if (!qword_27E313FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FB8);
  }

  return result;
}

unint64_t sub_23DD9D3CC()
{
  result = qword_27E313FC0;
  if (!qword_27E313FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FC0);
  }

  return result;
}

unint64_t sub_23DD9D424()
{
  result = qword_27E313FC8;
  if (!qword_27E313FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FC8);
  }

  return result;
}

unint64_t sub_23DD9D47C()
{
  result = qword_27E313FD0;
  if (!qword_27E313FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FD0);
  }

  return result;
}

uint64_t sub_23DD9D4D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6168637865 && a2 == 0xE800000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7106401 && a2 == 0xE300000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C676F6F67 && a2 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64756F6C4369 && a2 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6F686179 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

void *IncomingServer.init(name:port:)@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  *(a3 + 18) = BYTE2(a2) & 1;
  return result;
}

uint64_t IncomingServer.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t IncomingServer.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t IncomingServer.port.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 18) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_23DD9D758(uint64_t a1)
{
  v2 = sub_23DDA200C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9D794(uint64_t a1)
{
  v2 = sub_23DDA200C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9D9B0(uint64_t a1)
{
  v2 = sub_23DDA2194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9D9EC(uint64_t a1)
{
  v2 = sub_23DDA2194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9DA6C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = *v4;
  v11 = v4[1];
  v21 = *(v4 + 8);
  v15[1] = *(v4 + 18);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();

  sub_23DDA4BF0();
  v19 = v10;
  v20 = v11;
  v22 = 0;
  sub_23DDA2060();
  v13 = v17;
  sub_23DDA4AD0();

  if (!v13)
  {
    LOBYTE(v19) = 1;
    sub_23DDA4AB0();
  }

  return (*(v18 + 8))(v9, v6);
}

uint64_t _s23AccountsUISupportShared14IncomingServerV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  sub_23DDA4940();
  if (v4 == 1)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  return sub_23DDA4BA0();
}

uint64_t _s23AccountsUISupportShared14IncomingServerV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v4 != 1)
  {
    sub_23DDA4BA0();
  }

  return sub_23DDA4BB0();
}

uint64_t sub_23DD9DD50@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23DDA4BD0();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v19;
  v13 = v20;
  v23 = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v15 = v21;
  v16 = v22;
  LOBYTE(v21) = 1;
  v17 = sub_23DDA4A30();
  (*(v14 + 8))(v11, v8);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  *(v13 + 18) = BYTE2(v17) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DD9DF50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v4 != 1)
  {
    sub_23DDA4BA0();
  }

  return sub_23DDA4BB0();
}

uint64_t _s23AccountsUISupportShared14IncomingServerV11descriptionSSvg_0()
{
  v1 = *v0;
  if (*(v0 + 18))
  {
    v2 = v0[1];
  }

  else
  {
    v3 = *(v0 + 8);
    v6 = *v0;
    v7 = v0[1];

    MEMORY[0x23EEFF270](58, 0xE100000000000000);
    v4 = sub_23DDA4AF0();
    MEMORY[0x23EEFF270](v4);

    return v6;
  }

  return v1;
}

uint64_t ServerName.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BE0();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_23DDA4B20();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t ServerName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BC0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_23DDA4B10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ServerName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t ServerName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t ServerName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ServerName.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23DD9E2C8()
{
  if (*v0)
  {
    result = 7368560;
  }

  else
  {
    result = 1885433193;
  }

  *v0;
  return result;
}

uint64_t sub_23DD9E2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1885433193 && a2 == 0xE400000000000000;
  if (v5 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7368560 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9E3D0(uint64_t a1)
{
  v2 = sub_23DDA28F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E40C(uint64_t a1)
{
  v2 = sub_23DDA28F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9E448(uint64_t a1)
{
  v2 = sub_23DDA2A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E484(uint64_t a1)
{
  v2 = sub_23DDA2A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9E4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9E59C(uint64_t a1)
{
  v2 = sub_23DDA2948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E5D8(uint64_t a1)
{
  v2 = sub_23DDA2948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.encode(to:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314018, &qword_23DDABBD0);
  v31 = *(v39 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314020, &qword_23DDABBD8);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314028, &qword_23DDABBE0);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[3];
  v43 = v1[2];
  v44 = v15;
  v16 = v1[5];
  v45 = v1[4];
  v46 = v16;
  v17 = v1[7];
  v47 = v1[6];
  v33 = v17;
  v18 = v1[9];
  v34 = v1[8];
  v19 = v1[11];
  v35 = v1[10];
  v36 = v19;
  v20 = v1[13];
  v37 = v1[12];
  v38 = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA28F4();
  sub_23DDA4BF0();
  v32 = v18;
  if (v18 < 0)
  {
    v26 = v31;
    LOBYTE(v51) = 1;
    sub_23DDA2948();
    v27 = v50;
    sub_23DDA4A80();
    v51 = v13;
    v52 = v14;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v57 = v47;
    v58 = 0;
    sub_23DDA299C();
    v28 = v39;
    v29 = v48;
    sub_23DDA4AD0();
    if (v29)
    {
      (*(v26 + 8))(v42, v28);
    }

    else
    {
      v51 = v33;
      v52 = v34;
      v53 = v32 & 0x7FFFFFFFFFFFFFFFLL;
      v54 = v35;
      v55 = v36;
      v56 = v37;
      v57 = v38;
      v58 = 1;
      sub_23DDA29F0();
      v30 = v42;
      sub_23DDA4AD0();
      (*(v26 + 8))(v30, v28);
    }

    return (*(v49 + 8))(v12, v27);
  }

  else
  {
    LOBYTE(v51) = 0;
    sub_23DDA2A44();
    v22 = v50;
    sub_23DDA4A80();
    v51 = v13;
    v52 = v14;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v57 = v47;
    v58 = 0;
    sub_23DDA2A98();
    v23 = v41;
    v24 = v48;
    sub_23DDA4AD0();
    if (!v24)
    {
      v51 = v33;
      v52 = v34;
      v53 = v32;
      v54 = v35;
      v55 = v36;
      v56 = v37;
      v57 = v38;
      v58 = 1;
      sub_23DDA29F0();
      sub_23DDA4AD0();
    }

    (*(v40 + 8))(v8, v23);
    return (*(v49 + 8))(v12, v22);
  }
}

uint64_t ResolvedServerConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[9];
  v11 = v0[6];
  v12 = v0[8];
  v14 = v0[11];
  v13 = v0[7];
  v8 = v0[13];
  v10 = v0[10];
  MEMORY[0x23EEFF490](v7 < 0);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](BYTE2(v4));
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](BYTE2(v7));
  if (!v14)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.hashValue.getter()
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314060, &qword_23DDABBE8);
  v43 = *(v41 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314068, &qword_23DDABBF0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314070, &unk_23DDABBF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_23DDA28F4();
  v17 = v45;
  sub_23DDA4BD0();
  if (!v17)
  {
    v45 = v6;
    v18 = v44;
    v19 = v11;
    v20 = sub_23DDA4A70();
    v21 = (2 * *(v20 + 16)) | 1;
    v58 = v20;
    v59 = v20 + 32;
    v60 = 0;
    v61 = v21;
    v22 = sub_23DD7C4A8();
    if (v22 == 2 || v60 != v61 >> 1)
    {
      v25 = sub_23DDA49D0();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v27 = &type metadata for ResolvedServerConfiguration;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v19 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v54) = 1;
        sub_23DDA2948();
        sub_23DDA49F0();
        v53 = 0;
        sub_23DDA2AEC();
        v23 = v41;
        v24 = v5;
        sub_23DDA4A50();
        v31 = v18;
        v51 = v54;
        *v52 = v55;
        *&v52[16] = v56;
        *&v52[32] = v57;
        v46 = 1;
        sub_23DDA2B40();
        sub_23DDA4A50();
        (*(v43 + 8))(v24, v23);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v33 = v47;
        v34 = v49;
        v35 = v50;
        v36 = v51;
        v37 = *v52;
        v38 = *&v52[8];
        v39 = *&v52[24];
        v40 = *&v48 & 0x3FFFFLL | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_23DDA2A44();
        sub_23DDA49F0();
        v29 = v18;
        v53 = 0;
        sub_23DDA2BC4();
        v30 = v45;
        sub_23DDA4A50();
        v31 = v29;
        v51 = v54;
        *v52 = v55;
        *&v52[16] = v56;
        *&v52[32] = v57;
        v46 = 1;
        sub_23DDA2B40();
        sub_23DDA4A50();
        (*(v42 + 8))(v9, v30);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v33 = v47;
        v34 = v49;
        v35 = v50;
        v36 = v51;
        v37 = *v52;
        v38 = *&v52[8];
        v39 = *&v52[24];
        v40 = *&v48 & 0x3FFFFLL;
      }

      *v31 = v36;
      *(v31 + 16) = *&v37 & 0x3FFFFLL;
      *(v31 + 24) = v38;
      *(v31 + 40) = v39;
      *(v31 + 56) = v33;
      *(v31 + 72) = v40;
      *(v31 + 80) = v34;
      *(v31 + 96) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_23DD9F380()
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD9F3C4()
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.POP.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ResolvedServerConfiguration.POP.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_23DD9F540(uint64_t a1)
{
  v2 = sub_23DDA2C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9F57C(uint64_t a1)
{
  v2 = sub_23DDA2C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.POP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140A8, &qword_23DDABC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2C48();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v12 = v26;
  v11 = v27;
  LOBYTE(v26) = 1;
  v37 = sub_23DDA4A60();
  LOBYTE(v22) = 2;
  sub_23DD8C4CC();
  sub_23DDA4A50();
  v21 = v26;
  v38 = 3;
  sub_23DDA2CF0();
  sub_23DDA4A50();
  (*(v6 + 8))(v9, v5);
  v19 = v35;
  v20 = v34;
  v13 = *(&v35 + 1);
  v14 = v36;
  *&v22 = v12;
  *(&v22 + 1) = v11;
  v15 = v37;
  LOWORD(v23) = v37;
  v16 = v21;
  BYTE2(v23) = v21;
  *(&v23 + 1) = v34;
  v24 = v35;
  v25 = v36;
  *(a2 + 48) = v36;
  v17 = v23;
  *a2 = v22;
  *(a2 + 16) = v17;
  *(a2 + 32) = v24;
  sub_23DDA2D44(&v22, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v12;
  v27 = v11;
  v28 = v15;
  v29 = v16;
  v30 = v20;
  v31 = v19;
  v32 = v13;
  v33 = v14;
  return sub_23DDA2B94(&v26);
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV11credentialsAC11CredentialsVvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV11credentialsAC11CredentialsVvs_0(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);

  result = v7;
  *(v1 + 24) = v7;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_23DD9FA28(uint64_t a1)
{
  v2 = sub_23DDA2D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9FA64(uint64_t a1)
{
  v2 = sub_23DDA2D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9FAE4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v30 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *v4;
  v9 = v4[1];
  v36 = *(v4 + 8);
  v29 = *(v4 + 18);
  v11 = v4[3];
  v27 = v4[4];
  v28 = v11;
  v12 = v4[5];
  v25 = v4[6];
  v26 = v12;
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  v30();

  sub_23DDA4BF0();
  v32 = v10;
  v33 = v9;
  v37 = 0;
  sub_23DDA2060();
  v18 = v31;
  sub_23DDA4AD0();
  if (!v18)
  {
    v19 = v29;
    v21 = v26;
    v20 = v27;
    v22 = v28;

    LOBYTE(v32) = 1;
    sub_23DDA4AE0();
    LOBYTE(v32) = v19;
    v37 = 2;
    sub_23DD8C280();
    sub_23DDA4AD0();
    v32 = v22;
    v33 = v20;
    v34 = v21;
    v35 = v25;
    v37 = 3;
    sub_23DDA2C9C();

    sub_23DDA4AD0();
  }

  return (*(v7 + 8))(v17, v6);
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.IMAP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140C8, &qword_23DDABC20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2D7C();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v12 = v26;
  v11 = v27;
  LOBYTE(v26) = 1;
  v37 = sub_23DDA4A60();
  LOBYTE(v22) = 2;
  sub_23DD8C4CC();
  sub_23DDA4A50();
  v21 = v26;
  v38 = 3;
  sub_23DDA2CF0();
  sub_23DDA4A50();
  (*(v6 + 8))(v9, v5);
  v19 = v35;
  v20 = v34;
  v13 = *(&v35 + 1);
  v14 = v36;
  *&v22 = v12;
  *(&v22 + 1) = v11;
  v15 = v37;
  LOWORD(v23) = v37;
  v16 = v21;
  BYTE2(v23) = v21;
  *(&v23 + 1) = v34;
  v24 = v35;
  v25 = v36;
  *(a2 + 48) = v36;
  v17 = v23;
  *a2 = v22;
  *(a2 + 16) = v17;
  *(a2 + 32) = v24;
  sub_23DDA2DD0(&v22, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v12;
  v27 = v11;
  v28 = v15;
  v29 = v16;
  v30 = v20;
  v31 = v19;
  v32 = v13;
  v33 = v14;
  return sub_23DDA2C18(&v26);
}

uint64_t sub_23DDA0178()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.SMTP.credentials.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_23DDA2E08(v2, v3);
}

__n128 ResolvedServerConfiguration.SMTP.credentials.setter(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_23DDA2E4C(v1[3], v1[4]);
  result = *a1;
  *(v1 + 5) = *(a1 + 16);
  *(v1 + 3) = result;
  return result;
}

uint64_t sub_23DDA0328(uint64_t a1)
{
  v2 = sub_23DDA2E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA0364(uint64_t a1)
{
  v2 = sub_23DDA2E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.SMTP.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140D0, &qword_23DDABC28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v33 = *(v1 + 16);
  v28 = *(v1 + 18);
  v11 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = v11;
  v12 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_23DDA2E90();

  sub_23DDA4BF0();
  v29 = v10;
  v30 = v9;
  v34 = 0;
  sub_23DDA2060();
  sub_23DDA4AD0();

  if (!v2)
  {
    v18 = v28;
    v20 = v25;
    v19 = v26;
    v21 = v27;
    LOBYTE(v29) = 1;
    sub_23DDA4AE0();
    LOBYTE(v29) = v18;
    v34 = 2;
    sub_23DD8C280();
    sub_23DDA4AD0();
    v29 = v21;
    v30 = v19;
    v31 = v20;
    v32 = v24;
    v34 = 3;
    sub_23DDA2E08(v21, v19);
    sub_23DDA2C9C();
    sub_23DDA4AA0();
    sub_23DDA2E4C(v29, v30);
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t ResolvedServerConfiguration.SMTP.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  if (!v5)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.SMTP.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  sub_23DDA4B90();
  if (v5)
  {
    sub_23DDA4940();
    sub_23DDA4940();
  }

  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.SMTP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140E0, &qword_23DDABC30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2E90();
  sub_23DDA4BD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23DDA2E4C(0, 0);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_23DDA20B4();
    sub_23DDA4A50();
    v12 = v27;
    v11 = v28;
    LOBYTE(v27) = 1;
    v39 = sub_23DDA4A60();
    LOBYTE(v23) = 2;
    sub_23DD8C4CC();
    sub_23DDA4A50();
    v22 = v27;
    v40 = 3;
    sub_23DDA2CF0();
    sub_23DDA4A20();
    (*(v6 + 8))(v9, v5);
    v14 = v35;
    v13 = v36;
    v15 = v38;
    v20 = v37;
    v21 = v35;
    sub_23DDA2E4C(0, 0);
    *&v23 = v12;
    *(&v23 + 1) = v11;
    LOWORD(v24) = v39;
    v16 = v22;
    BYTE2(v24) = v22;
    *(&v24 + 1) = v14;
    *&v25 = v13;
    v17 = v20;
    *(&v25 + 1) = v20;
    v26 = v15;
    *(a2 + 48) = v15;
    v18 = v24;
    *a2 = v23;
    *(a2 + 16) = v18;
    *(a2 + 32) = v25;
    sub_23DDA2EE4(&v23, &v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = v12;
    v28 = v11;
    v29 = v39;
    v30 = v16;
    v31 = v21;
    v32 = v13;
    v33 = v17;
    v34 = v15;
    return sub_23DDA2F1C(&v27);
  }
}

uint64_t sub_23DDA0AA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  if (!v5)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t sub_23DDA0B64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 18);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 8);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v3);
  sub_23DDA4B90();
  if (v5)
  {
    sub_23DDA4940();
    sub_23DDA4940();
  }

  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.Credentials.username.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ResolvedServerConfiguration.Credentials.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResolvedServerConfiguration.Credentials.password.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ResolvedServerConfiguration.Credentials.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ResolvedServerConfiguration.Credentials.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DDA4B00(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DDA4B00();
    }
  }

  return result;
}

uint64_t sub_23DDA0E18()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_23DDA0E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DDA0F28(uint64_t a1)
{
  v2 = sub_23DDA2F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA0F64(uint64_t a1)
{
  v2 = sub_23DDA2F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.Credentials.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140E8, &qword_23DDABC38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2F4C();
  sub_23DDA4BF0();
  v16 = 0;
  v12 = v14[3];
  sub_23DDA4AC0();
  if (!v12)
  {
    v15 = 1;
    sub_23DDA4AC0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ResolvedServerConfiguration.Credentials.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.Credentials.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.Credentials.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140F8, &qword_23DDABC40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2F4C();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_23DDA4A40();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_23DDA4A40();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DDA1430()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_23DDA1484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DDA4654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DDA14AC(uint64_t a1)
{
  v2 = sub_23DDA2FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA14E8(uint64_t a1)
{
  v2 = sub_23DDA2FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA1524(uint64_t a1)
{
  v2 = sub_23DDA309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA1560(uint64_t a1)
{
  v2 = sub_23DDA309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA159C(uint64_t a1)
{
  v2 = sub_23DDA3048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA15D8(uint64_t a1)
{
  v2 = sub_23DDA3048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA1614(uint64_t a1)
{
  v2 = sub_23DDA2FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA1650(uint64_t a1)
{
  v2 = sub_23DDA2FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TLSConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314100, &qword_23DDABC48);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314108, &qword_23DDABC50);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314110, &qword_23DDABC58);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314118, &qword_23DDABC60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2FA0();
  sub_23DDA4BF0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23DDA3048();
      v12 = v26;
      sub_23DDA4A80();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23DDA2FF4();
      v12 = v29;
      sub_23DDA4A80();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23DDA309C();
    sub_23DDA4A80();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t TLSConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

uint64_t TLSConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314140, &qword_23DDABC68);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314148, &qword_23DDABC70);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314150, &qword_23DDABC78);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314158, &qword_23DDABC80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23DDA2FA0();
  v20 = v43;
  sub_23DDA4BD0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_23DDA4A70();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_23DD7C4A0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_23DDA49D0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v30 = &type metadata for TLSConfiguration;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_23DDA3048();
          sub_23DDA49F0();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_23DDA2FF4();
          v33 = v22;
          sub_23DDA49F0();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23DDA309C();
        sub_23DDA49F0();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_23DDA200C()
{
  result = qword_27E313FE0;
  if (!qword_27E313FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FE0);
  }

  return result;
}

unint64_t sub_23DDA2060()
{
  result = qword_27E313FE8;
  if (!qword_27E313FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FE8);
  }

  return result;
}

unint64_t sub_23DDA20B4()
{
  result = qword_27E313FF8;
  if (!qword_27E313FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313FF8);
  }

  return result;
}

uint64_t sub_23DDA2108(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a2 + 16);
  v5 = *(a2 + 18);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_23DDA4B00(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_23DDA2194()
{
  result = qword_27E314008;
  if (!qword_27E314008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314008);
  }

  return result;
}

BOOL _s23AccountsUISupportShared27ResolvedServerConfigurationO4SMTPV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 18);
  v9 = *(a2 + 32);
  v22 = *(a2 + 24);
  v23 = *(a1 + 48);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_23DDA4B00();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v5)
    {
      v14 = v4;
      v15 = v9;
      if (v9)
      {
        if (v4 == v22 && v5 == v9 || (sub_23DDA4B00() & 1) != 0)
        {
          if (v6 == v10 && v23 == v11)
          {
            sub_23DDA2E08(v4, v5);
            sub_23DDA2E08(v22, v9);
            sub_23DDA2E08(v4, v5);
            sub_23DDA2E4C(v22, v9);

            v16 = v4;
            v17 = v5;
LABEL_24:
            sub_23DDA2E4C(v16, v17);
            return 1;
          }

          v21 = sub_23DDA4B00();
          sub_23DDA2E08(v4, v5);
          sub_23DDA2E08(v22, v9);
          sub_23DDA2E08(v4, v5);
          sub_23DDA2E4C(v22, v9);

          sub_23DDA2E4C(v4, v5);
          return (v21 & 1) != 0;
        }

        sub_23DDA2E08(v4, v5);
        sub_23DDA2E08(v22, v9);
        sub_23DDA2E08(v4, v5);
        sub_23DDA2E4C(v22, v9);

        v19 = v4;
        v20 = v5;
LABEL_19:
        sub_23DDA2E4C(v19, v20);
        return 0;
      }

      sub_23DDA2E08(v4, v5);
      v18 = v22;
      sub_23DDA2E08(v22, 0);
      sub_23DDA2E08(v4, v5);
    }

    else
    {
      v14 = v4;
      sub_23DDA2E08(v4, 0);
      if (!v9)
      {
        sub_23DDA2E08(v22, 0);
        v16 = v4;
        v17 = 0;
        goto LABEL_24;
      }

      v15 = v9;
      v18 = v22;
      sub_23DDA2E08(v22, v9);
    }

    sub_23DDA2E4C(v14, v5);
    v19 = v18;
    v20 = v15;
    goto LABEL_19;
  }

  return result;
}

BOOL sub_23DDA2588(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a2 + 18);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_23DDA4B00();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v6 && v3 == v7)
  {
    return (v4 == v8 && v5 == v9 || (sub_23DDA4B00() & 1) != 0) && (v14 == v11 && v15 == v10 || (sub_23DDA4B00() & 1) != 0);
  }

  return result;
}

BOOL _s23AccountsUISupportShared27ResolvedServerConfigurationO2eeoiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v47 = a1[4];
  v48 = v3;
  v4 = a1[5];
  v49 = a1[6];
  v5 = a1[1];
  v44[0] = *a1;
  v44[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v45 = a1[2];
  v46 = v6;
  v9 = a2[1];
  v50[0] = *a2;
  v50[1] = v9;
  v10 = a2[5];
  v55 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v53 = a2[4];
  v54 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v51 = a2[2];
  v52 = v13;
  v16 = a1[1];
  v56[0] = *a1;
  v56[1] = v16;
  v17 = a1[5];
  v56[4] = a1[4];
  v56[5] = v17;
  v18 = a1[3];
  v56[2] = a1[2];
  v56[3] = v18;
  v56[8] = v15;
  v56[9] = v51;
  v56[6] = a1[6];
  v56[7] = v14;
  v19 = a2[6];
  v56[12] = v10;
  v56[13] = v19;
  v56[10] = v11;
  v56[11] = v53;
  v56[14] = v8;
  v56[15] = v7;
  v20 = a1[6];
  *&v57[32] = v4;
  *&v57[48] = v20;
  *v57 = v2;
  *&v57[16] = v47;
  v56[16] = v45;
  if ((*(&v47 + 1) & 0x8000000000000000) != 0)
  {
    *&v57[24] = *(&v47 + 1) & 0x7FFFFFFFFFFFFFFFLL;
    v24 = a2[5];
    *&v43[16] = a2[4];
    *&v43[32] = v24;
    *&v43[48] = a2[6];
    v25 = a2[1];
    v40 = *a2;
    v41 = v25;
    v26 = a2[3];
    v42 = a2[2];
    *v43 = v26;
    if ((*&v43[24] & 0x8000000000000000) == 0)
    {
LABEL_5:
      sub_23DD8CA08(v50, &v40);
      v27 = &v40;
LABEL_10:
      sub_23DD8CA08(v44, v27);
      sub_23DDA476C(v56);
      return 0;
    }

    *&v43[24] &= ~0x8000000000000000;
  }

  else
  {
    v21 = a2[5];
    *&v43[16] = a2[4];
    *&v43[32] = v21;
    *&v43[48] = a2[6];
    v22 = a2[1];
    v40 = *a2;
    v41 = v22;
    v23 = a2[3];
    v42 = a2[2];
    *v43 = v23;
    if ((*&v43[24] & 0x8000000000000000) != 0)
    {
      goto LABEL_5;
    }
  }

  v28 = a1[1];
  v34[0] = *a1;
  v34[1] = v28;
  v34[2] = a1[2];
  v35 = *(a1 + 6);
  v29 = a2[1];
  v36 = *a2;
  v37 = v29;
  v38 = a2[2];
  v39 = *(a2 + 6);
  if (!sub_23DDA2588(v34, &v36))
  {
    sub_23DD8CA08(v50, v34);
    v27 = v34;
    goto LABEL_10;
  }

  v36 = *&v57[8];
  v37 = *&v57[24];
  v38 = *&v57[40];
  v39 = *&v57[56];
  v32[0] = *&v43[8];
  v32[1] = *&v43[24];
  v32[2] = *&v43[40];
  v33 = *&v43[56];
  sub_23DD8CA08(v50, v34);
  sub_23DD8CA08(v44, v34);
  sub_23DDA2EE4(&v57[8], v34);
  sub_23DDA2EE4(&v43[8], v34);
  v30 = _s23AccountsUISupportShared27ResolvedServerConfigurationO4SMTPV2eeoiySbAE_AEtFZ_0(&v36, v32);
  sub_23DDA476C(v56);
  sub_23DDA2F1C(&v43[8]);
  sub_23DDA2F1C(&v57[8]);
  return v30;
}

unint64_t sub_23DDA28F4()
{
  result = qword_27E314030;
  if (!qword_27E314030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314030);
  }

  return result;
}

unint64_t sub_23DDA2948()
{
  result = qword_27E314038;
  if (!qword_27E314038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314038);
  }

  return result;
}

unint64_t sub_23DDA299C()
{
  result = qword_27E314040;
  if (!qword_27E314040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314040);
  }

  return result;
}

unint64_t sub_23DDA29F0()
{
  result = qword_27E314048;
  if (!qword_27E314048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314048);
  }

  return result;
}

unint64_t sub_23DDA2A44()
{
  result = qword_27E314050;
  if (!qword_27E314050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314050);
  }

  return result;
}

unint64_t sub_23DDA2A98()
{
  result = qword_27E314058;
  if (!qword_27E314058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314058);
  }

  return result;
}

unint64_t sub_23DDA2AEC()
{
  result = qword_27E314078;
  if (!qword_27E314078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314078);
  }

  return result;
}

unint64_t sub_23DDA2B40()
{
  result = qword_27E314080;
  if (!qword_27E314080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314080);
  }

  return result;
}

unint64_t sub_23DDA2BC4()
{
  result = qword_27E314088;
  if (!qword_27E314088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314088);
  }

  return result;
}

unint64_t sub_23DDA2C48()
{
  result = qword_27E314098;
  if (!qword_27E314098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314098);
  }

  return result;
}

unint64_t sub_23DDA2C9C()
{
  result = qword_27E3140A0;
  if (!qword_27E3140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3140A0);
  }

  return result;
}

unint64_t sub_23DDA2CF0()
{
  result = qword_27E3140B0;
  if (!qword_27E3140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3140B0);
  }

  return result;
}

unint64_t sub_23DDA2D7C()
{
  result = qword_27E3140C0;
  if (!qword_27E3140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3140C0);
  }

  return result;
}

uint64_t sub_23DDA2E08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23DDA2E4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23DDA2E90()
{
  result = qword_27E3140D8;
  if (!qword_27E3140D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3140D8);
  }

  return result;
}

unint64_t sub_23DDA2F4C()
{
  result = qword_27E3140F0;
  if (!qword_27E3140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3140F0);
  }

  return result;
}

unint64_t sub_23DDA2FA0()
{
  result = qword_27E314120;
  if (!qword_27E314120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314120);
  }

  return result;
}

unint64_t sub_23DDA2FF4()
{
  result = qword_27E314128;
  if (!qword_27E314128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314128);
  }

  return result;
}

unint64_t sub_23DDA3048()
{
  result = qword_27E314130;
  if (!qword_27E314130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314130);
  }

  return result;
}

unint64_t sub_23DDA309C()
{
  result = qword_27E314138;
  if (!qword_27E314138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314138);
  }

  return result;
}

unint64_t sub_23DDA30F4()
{
  result = qword_27E314160;
  if (!qword_27E314160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314160);
  }

  return result;
}

unint64_t sub_23DDA314C()
{
  result = qword_27E314168;
  if (!qword_27E314168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314168);
  }

  return result;
}

unint64_t sub_23DDA31A4()
{
  result = qword_27E314170;
  if (!qword_27E314170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314170);
  }

  return result;
}

unint64_t sub_23DDA31FC()
{
  result = qword_27E314178;
  if (!qword_27E314178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314178);
  }

  return result;
}

unint64_t sub_23DDA3254()
{
  result = qword_27E314180;
  if (!qword_27E314180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314180);
  }

  return result;
}

unint64_t sub_23DDA32AC()
{
  result = qword_27E314188;
  if (!qword_27E314188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314188);
  }

  return result;
}

unint64_t sub_23DDA3304()
{
  result = qword_27E314190;
  if (!qword_27E314190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314190);
  }

  return result;
}

unint64_t sub_23DDA335C()
{
  result = qword_27E314198;
  if (!qword_27E314198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314198);
  }

  return result;
}

unint64_t sub_23DDA33B4()
{
  result = qword_27E3141A0;
  if (!qword_27E3141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141A0);
  }

  return result;
}

unint64_t sub_23DDA340C()
{
  result = qword_27E3141A8;
  if (!qword_27E3141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141A8);
  }

  return result;
}

unint64_t sub_23DDA3464()
{
  result = qword_27E3141B0;
  if (!qword_27E3141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141B0);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_23DDA34DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_23DDA3524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_23DDA35AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 18;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_23DDA35FC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 18;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DDA368C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72) & 0x3FFFFLL | (a2 << 63);
  *(result + 16) &= 0x3FFFFuLL;
  *(result + 72) = v2;
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

uint64_t sub_23DDA36F8(uint64_t a1, int a2)
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

uint64_t sub_23DDA3740(uint64_t result, int a2, int a3)
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

unint64_t sub_23DDA3890()
{
  result = qword_27E3141B8;
  if (!qword_27E3141B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141B8);
  }

  return result;
}

unint64_t sub_23DDA38E8()
{
  result = qword_27E3141C0;
  if (!qword_27E3141C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141C0);
  }

  return result;
}

unint64_t sub_23DDA3940()
{
  result = qword_27E3141C8;
  if (!qword_27E3141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141C8);
  }

  return result;
}

unint64_t sub_23DDA3998()
{
  result = qword_27E3141D0;
  if (!qword_27E3141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141D0);
  }

  return result;
}

unint64_t sub_23DDA39F0()
{
  result = qword_27E3141D8;
  if (!qword_27E3141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141D8);
  }

  return result;
}

unint64_t sub_23DDA3A48()
{
  result = qword_27E3141E0;
  if (!qword_27E3141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141E0);
  }

  return result;
}

unint64_t sub_23DDA3AA0()
{
  result = qword_27E3141E8;
  if (!qword_27E3141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141E8);
  }

  return result;
}

unint64_t sub_23DDA3AF8()
{
  result = qword_27E3141F0;
  if (!qword_27E3141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141F0);
  }

  return result;
}

unint64_t sub_23DDA3B50()
{
  result = qword_27E3141F8;
  if (!qword_27E3141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3141F8);
  }

  return result;
}

unint64_t sub_23DDA3BA8()
{
  result = qword_27E314200;
  if (!qword_27E314200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314200);
  }

  return result;
}

unint64_t sub_23DDA3C00()
{
  result = qword_27E314208;
  if (!qword_27E314208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314208);
  }

  return result;
}

unint64_t sub_23DDA3C58()
{
  result = qword_27E314210;
  if (!qword_27E314210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314210);
  }

  return result;
}

unint64_t sub_23DDA3CB0()
{
  result = qword_27E314218;
  if (!qword_27E314218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314218);
  }

  return result;
}

unint64_t sub_23DDA3D08()
{
  result = qword_27E314220;
  if (!qword_27E314220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314220);
  }

  return result;
}

unint64_t sub_23DDA3D60()
{
  result = qword_27E314228;
  if (!qword_27E314228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314228);
  }

  return result;
}

unint64_t sub_23DDA3DB8()
{
  result = qword_27E314230;
  if (!qword_27E314230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314230);
  }

  return result;
}

unint64_t sub_23DDA3E10()
{
  result = qword_27E314238;
  if (!qword_27E314238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314238);
  }

  return result;
}

unint64_t sub_23DDA3E68()
{
  result = qword_27E314240;
  if (!qword_27E314240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314240);
  }

  return result;
}

unint64_t sub_23DDA3EC0()
{
  result = qword_27E314248;
  if (!qword_27E314248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314248);
  }

  return result;
}

unint64_t sub_23DDA3F18()
{
  result = qword_27E314250;
  if (!qword_27E314250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314250);
  }

  return result;
}

unint64_t sub_23DDA3F70()
{
  result = qword_27E314258;
  if (!qword_27E314258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314258);
  }

  return result;
}

unint64_t sub_23DDA3FC8()
{
  result = qword_27E314260;
  if (!qword_27E314260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314260);
  }

  return result;
}

unint64_t sub_23DDA4020()
{
  result = qword_27E314268;
  if (!qword_27E314268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314268);
  }

  return result;
}

unint64_t sub_23DDA4078()
{
  result = qword_27E314270;
  if (!qword_27E314270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314270);
  }

  return result;
}

unint64_t sub_23DDA40D0()
{
  result = qword_27E314278;
  if (!qword_27E314278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314278);
  }

  return result;
}

unint64_t sub_23DDA4128()
{
  result = qword_27E314280;
  if (!qword_27E314280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314280);
  }

  return result;
}

unint64_t sub_23DDA4180()
{
  result = qword_27E314288;
  if (!qword_27E314288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314288);
  }

  return result;
}

unint64_t sub_23DDA41D8()
{
  result = qword_27E314290;
  if (!qword_27E314290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314290);
  }

  return result;
}

unint64_t sub_23DDA4230()
{
  result = qword_27E314298;
  if (!qword_27E314298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E314298);
  }

  return result;
}

unint64_t sub_23DDA4288()
{
  result = qword_27E3142A0;
  if (!qword_27E3142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142A0);
  }

  return result;
}

unint64_t sub_23DDA42E0()
{
  result = qword_27E3142A8;
  if (!qword_27E3142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142A8);
  }

  return result;
}

unint64_t sub_23DDA4338()
{
  result = qword_27E3142B0;
  if (!qword_27E3142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142B0);
  }

  return result;
}

unint64_t sub_23DDA4390()
{
  result = qword_27E3142B8;
  if (!qword_27E3142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142B8);
  }

  return result;
}

unint64_t sub_23DDA43E8()
{
  result = qword_27E3142C0;
  if (!qword_27E3142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142C0);
  }

  return result;
}

unint64_t sub_23DDA4440()
{
  result = qword_27E3142C8;
  if (!qword_27E3142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142C8);
  }

  return result;
}

unint64_t sub_23DDA4498()
{
  result = qword_27E3142D0;
  if (!qword_27E3142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3142D0);
  }

  return result;
}

uint64_t sub_23DDA44EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DDA4654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DDA476C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3142D8, &qword_23DDAD3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}