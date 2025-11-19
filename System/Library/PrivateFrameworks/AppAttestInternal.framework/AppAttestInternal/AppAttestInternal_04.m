__n128 sub_2261D11E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, char a14)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  return result;
}

uint64_t sub_2261D1214()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

double sub_2261D1244@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2261D26C4(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_2261D12E0()
{
  if (*v0)
  {
    result = 0x7374726563;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_2261D131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002261EDCD0 == a2 || (sub_2261E425C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2261E425C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2261D140C(uint64_t a1)
{
  v2 = sub_2261D2CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D1448(uint64_t a1)
{
  v2 = sub_2261D2CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D1484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0D0, &qword_2261E78F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2CD8();
  sub_2261E437C();
  v16 = 0;
  sub_2261E422C();
  if (!v5)
  {
    v15 = 1;
    sub_2261E422C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2261D1618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2261D2D2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2261D1668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2261E410C();

  MEMORY[0x22AA782B0](v1, v2);
  MEMORY[0x22AA782B0](0x3D7374726563202CLL, 0xE800000000000000);
  MEMORY[0x22AA782B0](v3, v4);
  return 0xD000000000000017;
}

uint64_t sub_2261D1778(uint64_t a1)
{
  v2 = sub_2261D2F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D17B4(uint64_t a1)
{
  v2 = sub_2261D2F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D187C()
{
  sub_2261E42EC();
  MEMORY[0x22AA78720](0);
  return sub_2261E430C();
}

uint64_t sub_2261D18C0()
{
  sub_2261E42EC();
  MEMORY[0x22AA78720](0);
  return sub_2261E430C();
}

uint64_t sub_2261D1900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2261E425C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2261D1984(uint64_t a1)
{
  v2 = sub_2261D2F64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D19C0(uint64_t a1)
{
  v2 = sub_2261D2F64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D1A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_2261E436C();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = sub_2261E420C();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_2261D1C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17();
  sub_2261E437C();
  sub_2261E422C();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_2261D1DBC(unint64_t a1)
{
  sub_2261E410C();

  if (a1 >> 62)
  {
    sub_2261E416C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = sub_2261E423C();
  MEMORY[0x22AA782B0](v3);

  return 0xD000000000000012;
}

uint64_t sub_2261D1E7C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2261D1EC4()
{
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EDC90);
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v3);

  MEMORY[0x22AA782B0](0xD000000000000014, 0x80000002261EDCB0);
  v4 = v0[2];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v11 = v0[2];
    }

    sub_2261E416C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_2261E423C();
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](0x706965636572202CLL, 0xEA00000000003D74);
  v7 = v0[3];
  v8 = v0[4];
  v9 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v9);

  MEMORY[0x22AA782B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2261D2028(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2261D2078()
{
  v0 = sub_2261E41EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2261D20C4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2261E3E7C();

    return sub_2261E3EDC();
  }

  return result;
}

unint64_t sub_2261D2160()
{
  result = qword_27D78FF90;
  if (!qword_27D78FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78FF90);
  }

  return result;
}

uint64_t sub_2261D21B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F74736575716572 && a2 == 0xED00006E69676972;
  if (v4 || (sub_2261E425C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_2261E425C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F744B4955747461 && a2 == 0xEB000000004B4942 || (sub_2261E425C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4345444970696863 && a2 == 0xEA00000000004449)
  {

    return 3;
  }

  else
  {
    v6 = sub_2261E425C();

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

uint64_t sub_2261D2330@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E168, &qword_2261E8968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2160();
  sub_2261E436C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_2261E420C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_2261E420C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_2261E420C();
  v27 = v15;
  v35 = 3;
  v16 = sub_2261E420C();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_2261D45A4(&v30, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_2261D45DC(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_2261D2624()
{
  v0 = sub_2261E41EC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2261D2670()
{
  result = qword_28136EA60;
  if (!qword_28136EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA60);
  }

  return result;
}

uint64_t sub_2261D26C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E160, &qword_2261E8960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2670();
  sub_2261E436C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v55[0]) = 0;
  v11 = sub_2261E420C();
  v46 = v12;
  LOBYTE(v55[0]) = 1;
  v13 = sub_2261E420C();
  v45 = v14;
  v43 = v13;
  LOBYTE(v55[0]) = 2;
  v42 = sub_2261E420C();
  v44 = v15;
  LOBYTE(v55[0]) = 3;
  *&v41 = sub_2261E420C();
  *(&v41 + 1) = v16;
  LOBYTE(v55[0]) = 4;
  v17 = sub_2261E420C();
  v19 = v18;
  v37 = v17;
  LOBYTE(v55[0]) = 5;
  v40 = 0;
  v20 = sub_2261E420C();
  v39 = v21;
  v36 = v20;
  LOBYTE(v55[0]) = 6;
  v22 = sub_2261E420C();
  v38 = v23;
  v35 = v22;
  v64 = 7;
  v24 = sub_2261E41FC();
  (*(v6 + 8))(v9, v5);
  *&v47 = v11;
  v25 = v46;
  *(&v47 + 1) = v46;
  *&v48 = v43;
  v26 = v45;
  *(&v48 + 1) = v45;
  *&v49 = v42;
  *(&v49 + 1) = v44;
  v50 = v41;
  *&v51 = v37;
  v34 = v19;
  *(&v51 + 1) = v19;
  v27 = v36;
  *&v52 = v36;
  *(&v52 + 1) = v39;
  v28 = v35;
  *&v53 = v35;
  *(&v53 + 1) = v38;
  v54 = v24;
  sub_2261D453C(&v47, v55);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v55[0] = v11;
  v55[1] = v25;
  v55[2] = v43;
  v55[3] = v26;
  v55[4] = v42;
  v55[5] = v44;
  v56 = v41;
  v57 = v37;
  v58 = v34;
  v59 = v27;
  v60 = v39;
  v61 = v28;
  v62 = v38;
  v63 = v24;
  result = sub_2261D4574(v55);
  v30 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v30;
  *(a2 + 96) = v53;
  *(a2 + 112) = v54;
  v31 = v48;
  *a2 = v47;
  *(a2 + 16) = v31;
  v32 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v32;
  return result;
}

unint64_t sub_2261D2CD8()
{
  result = qword_28136FCD8;
  if (!qword_28136FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCD8);
  }

  return result;
}

uint64_t sub_2261D2D2C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E158, &qword_2261E8958);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2CD8();
  sub_2261E436C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_2261E420C();
    v11 = 1;
    sub_2261E420C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2261D2F10()
{
  result = qword_27D78FFA0;
  if (!qword_27D78FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78FFA0);
  }

  return result;
}

unint64_t sub_2261D2F64()
{
  result = qword_27D78FFA8[0];
  if (!qword_27D78FFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D78FFA8);
  }

  return result;
}

unint64_t sub_2261D2FBC()
{
  result = qword_28136E978;
  if (!qword_28136E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E978);
  }

  return result;
}

unint64_t sub_2261D3010(uint64_t a1)
{
  result = sub_2261AF674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3038(uint64_t a1)
{
  result = sub_2261D3060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3060()
{
  result = qword_27D78E0F8;
  if (!qword_27D78E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E0F8);
  }

  return result;
}

unint64_t sub_2261D30F4()
{
  result = qword_27D78E100;
  if (!qword_27D78E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E100);
  }

  return result;
}

unint64_t sub_2261D3148()
{
  result = qword_27D78E108;
  if (!qword_27D78E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E108);
  }

  return result;
}

unint64_t sub_2261D319C()
{
  result = qword_27D78E110;
  if (!qword_27D78E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E110);
  }

  return result;
}

unint64_t sub_2261D31F4()
{
  result = qword_27D78E118;
  if (!qword_27D78E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E118);
  }

  return result;
}

unint64_t sub_2261D324C()
{
  result = qword_28136EA50;
  if (!qword_28136EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA50);
  }

  return result;
}

unint64_t sub_2261D32A4()
{
  result = qword_28136EA58;
  if (!qword_28136EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA58);
  }

  return result;
}

unint64_t sub_2261D3338()
{
  result = qword_28136EA38;
  if (!qword_28136EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA38);
  }

  return result;
}

unint64_t sub_2261D338C()
{
  result = qword_28136EA40;
  if (!qword_28136EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA40);
  }

  return result;
}

unint64_t sub_2261D33E0()
{
  result = qword_28136EA48;
  if (!qword_28136EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA48);
  }

  return result;
}

unint64_t sub_2261D3474()
{
  result = qword_28136EB30;
  if (!qword_28136EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB30);
  }

  return result;
}

unint64_t sub_2261D34C8()
{
  result = qword_28136EB40;
  if (!qword_28136EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB40);
  }

  return result;
}

unint64_t sub_2261D351C()
{
  result = qword_28136EB48;
  if (!qword_28136EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB48);
  }

  return result;
}

unint64_t sub_2261D35B0()
{
  result = qword_27D78E120;
  if (!qword_27D78E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E120);
  }

  return result;
}

unint64_t sub_2261D3604()
{
  result = qword_27D78E1F0;
  if (!qword_27D78E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1F0);
  }

  return result;
}

unint64_t sub_2261D3658()
{
  result = qword_27D78E128;
  if (!qword_27D78E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E128);
  }

  return result;
}

uint64_t sub_2261D36EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2261D3740()
{
  result = qword_27D78E130;
  if (!qword_27D78E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E130);
  }

  return result;
}

unint64_t sub_2261D3794()
{
  result = qword_27D78E1D0;
  if (!qword_27D78E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1D0);
  }

  return result;
}

unint64_t sub_2261D37E8()
{
  result = qword_27D78E138;
  if (!qword_27D78E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E138);
  }

  return result;
}

unint64_t sub_2261D383C(uint64_t a1)
{
  result = sub_2261D3864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3864()
{
  result = qword_27D78E140;
  if (!qword_27D78E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E140);
  }

  return result;
}

unint64_t sub_2261D38B8(uint64_t a1)
{
  result = sub_2261D38E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D38E0()
{
  result = qword_27D78E148;
  if (!qword_27D78E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E148);
  }

  return result;
}

unint64_t sub_2261D3934(uint64_t a1)
{
  result = sub_2261D395C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D395C()
{
  result = qword_28136EA28;
  if (!qword_28136EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA28);
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

uint64_t sub_2261D39D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2261D3A1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2261D3A8C(uint64_t a1, int a2)
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

uint64_t sub_2261D3AD4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2261D3B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2261D3BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppAttestationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppAttestationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2261D3D68(uint64_t a1, int a2)
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

uint64_t sub_2261D3DB0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2261D3E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2261D3E6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2261D3ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2261D3F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceAttestationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceAttestationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2261D4120()
{
  result = qword_27D790BB0[0];
  if (!qword_27D790BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790BB0);
  }

  return result;
}

unint64_t sub_2261D4178()
{
  result = qword_27D790CC0[0];
  if (!qword_27D790CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790CC0);
  }

  return result;
}

unint64_t sub_2261D41D0()
{
  result = qword_27D790ED0[0];
  if (!qword_27D790ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790ED0);
  }

  return result;
}

unint64_t sub_2261D4228()
{
  result = qword_27D7910E0[0];
  if (!qword_27D7910E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7910E0);
  }

  return result;
}

unint64_t sub_2261D4280()
{
  result = qword_27D7911F0;
  if (!qword_27D7911F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7911F0);
  }

  return result;
}

unint64_t sub_2261D42D8()
{
  result = qword_27D7911F8[0];
  if (!qword_27D7911F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7911F8);
  }

  return result;
}

unint64_t sub_2261D4330()
{
  result = qword_27D791280;
  if (!qword_27D791280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D791280);
  }

  return result;
}

unint64_t sub_2261D4388()
{
  result = qword_27D791288[0];
  if (!qword_27D791288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D791288);
  }

  return result;
}

unint64_t sub_2261D43E0()
{
  result = qword_28136FCC0;
  if (!qword_28136FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCC0);
  }

  return result;
}

unint64_t sub_2261D4438()
{
  result = qword_28136FCC8;
  if (!qword_28136FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCC8);
  }

  return result;
}

unint64_t sub_2261D4490()
{
  result = qword_27D791310;
  if (!qword_27D791310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D791310);
  }

  return result;
}

unint64_t sub_2261D44E8()
{
  result = qword_27D791318[0];
  if (!qword_27D791318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D791318);
  }

  return result;
}

id sub_2261D4654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_logger;
  v11 = sub_2261A5248();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2261D4738(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = sub_2261A09C0();
  if (v6 >> 60 == 15)
  {
    *a2 = 0xD00000000000001FLL;
    *(a2 + 8) = 0x80000002261EDE30;
LABEL_3:
    *(a2 + 16) = 1;
LABEL_19:
    *(a2 + 40) = 1;
    goto LABEL_20;
  }

  v107 = v5;
  v108 = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0x80000002261EDE50;
      sub_2261A28B8(v107, v108);
      v11 = 0xD00000000000001ELL;
LABEL_18:
      *a2 = v11;
      *(a2 + 8) = v10;
      *(a2 + 16) = 0;
      goto LABEL_19;
    }

    sub_2261A6578(a1, &v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (swift_dynamicCast())
    {
      v12 = v120;

      goto LABEL_12;
    }

LABEL_17:
    v10 = 0x80000002261EDE70;
    sub_2261A28B8(v107, v108);
    v11 = 0xD000000000000015;
    goto LABEL_18;
  }

  sub_2261A6578(a1, &v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v128[0] = v122;
  v128[1] = v123;
  v128[2] = v124;
  v128[3] = v125;
  sub_2261AF618(v128, &v122);
  v12 = sub_2261D8C54(v128, v2);
  sub_2261AF6C8(v128);
  if (!v12)
  {
    v42 = sub_2261E3FFC();
    sub_2261A4EAC(v42, 0xD000000000000027, 0x80000002261EDEC0, 0xD00000000000006CLL, 0x80000002261EDEF0, 49);
    sub_2261AF6C8(v128);
    sub_2261A28B8(v107, v108);
    *a2 = 0xD000000000000027;
    *(a2 + 8) = 0x80000002261EDEC0;
    goto LABEL_3;
  }

  sub_2261AF6C8(v128);
LABEL_12:
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v13);
  v15 = (*(v14 + 40))(v13, v14);
  sub_2261D535C(v12);

  v16 = sub_2261E3D4C();

  *&v122 = 0;
  v17 = DeviceIdentityCopyAttestationDictionary();

  v18 = v122;
  if (v17)
  {
    sub_2261E3D6C();
    v19 = v18;

    v20 = objc_opt_self();
    v21 = sub_2261E3D4C();

    *&v122 = 0;
    v22 = [v20 dataWithPropertyList:v21 format:100 options:0 error:&v122];

    v23 = v122;
    if (!v22)
    {
      v41 = v23;
      sub_2261E3AEC();

      swift_willThrow();
      sub_2261A28B8(v107, v108);

      goto LABEL_20;
    }

    v24 = sub_2261E3BBC();
    v105 = v25;

    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v26);
    v28 = (*(v27 + 16))(v26, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = 0x80000002261EDE50;
        sub_2261A28B8(v107, v108);
        sub_22619C840(v24, v105);
        v30 = 0xD00000000000001ELL;
LABEL_34:
        *a2 = v30;
        *(a2 + 8) = v29;
        *(a2 + 16) = 0;
        *(a2 + 40) = 1;

        goto LABEL_20;
      }

      sub_2261A6578(a1, &v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
      if (swift_dynamicCast())
      {
        v45 = 0x69746375646F7270;
        v46 = BYTE1(v118);
        v104 = v19;
        v100 = *(&v119 + 1);
        v47 = sub_2261CF6F4(v118);
        v96 = v48;
        v98 = v47;
        v126[0] = v46;
        LOBYTE(v114) = 1;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        if (v122 == v118)
        {

          v49 = 0xEA00000000006E6FLL;
        }

        else
        {
          v57 = sub_2261E425C();

          if ((v57 & 1) == 0)
          {
            v45 = 0x6D706F6C65766564;
          }

          v49 = 0xEA00000000006E6FLL;
          if ((v57 & 1) == 0)
          {
            v49 = 0xEB00000000746E65;
          }
        }

        v58 = sub_2261E3B9C();
        v60 = v59;
        v61 = sub_2261E3B9C();
        sub_2261D09B0(v98, v96, v45, v49, v58, v60, v61, v62, v111);
        *(&v123 + 1) = &type metadata for DeviceAttestationRequest;
        *&v124 = sub_2261D85E8();
        v63 = swift_allocObject();
        *&v122 = v63;
        sub_2261A28B8(v107, v108);
        sub_22619C840(v24, v105);

        v64 = v111[1];
        v63[1] = v111[0];
        v63[2] = v64;
        v65 = v111[3];
        v63[3] = v111[2];
        v63[4] = v65;
        v66 = &v122;
LABEL_59:
        sub_2261795DC(v66, v127);
        sub_2261795DC(v127, a2);
        *(a2 + 40) = 0;

        goto LABEL_20;
      }

LABEL_33:
      v29 = 0x80000002261EDE70;
      sub_2261A28B8(v107, v108);
      sub_22619C840(v24, v105);
      v30 = 0xD000000000000015;
      goto LABEL_34;
    }

    sub_2261A6578(a1, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (!swift_dynamicCast())
    {
      goto LABEL_33;
    }

    v118 = v122;
    v119 = v123;
    v120 = v124;
    v121 = v125;
    v43 = sub_2261CF6F4(v122);
    v102 = v44;
    v103 = v43;
    sub_22619F798();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (v114 == v109 && v115 == v110)
    {
    }

    else
    {
      v56 = sub_2261E425C();

      if ((v56 & 1) == 0)
      {
        v99 = 0xE000000000000000;
        v101 = 0;
LABEL_49:
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        v104 = v19;
        if (v114 == v109 && v115 == v110)
        {

          v95 = 0xEA00000000006E6FLL;
          v97 = 0x69746375646F7270;
        }

        else
        {
          v67 = sub_2261E425C();

          if (v67)
          {
            v68 = 0x69746375646F7270;
          }

          else
          {
            v68 = 0x6D706F6C65766564;
          }

          v69 = 0xEA00000000006E6FLL;
          if ((v67 & 1) == 0)
          {
            v69 = 0xEB00000000746E65;
          }

          v95 = v69;
          v97 = v68;
        }

        v70 = sub_2261E3B9C();
        v93 = v71;
        v94 = v70;
        v72 = sub_2261E3B9C();
        v91 = v73;
        v92 = v72;
        v74 = sub_2261E3B9C();
        v76 = v75;
        v77 = sub_2261E3B9C();
        v79 = v78;
        v80 = sub_2261A2BA8();
        v81 = *v80;
        v82 = v80[1];

        v83 = sub_2261CF5C8();

        v90.n128_u64[0] = v74;
        v90.n128_u64[1] = v76;
        *&v89 = v92;
        *(&v89 + 1) = v91;
        sub_2261D11E8(v103, v102, v101, v99, v97, v95, v94, v93, v112, v89, v90, v77, v79, v83 & 1);
        v116 = &type metadata for AppAttestationRequest;
        v117 = sub_2261C336C();
        v84 = swift_allocObject();
        v114 = v84;
        sub_2261A28B8(v107, v108);
        sub_22619C840(v24, v105);
        sub_2261AF6C8(&v118);
        v85 = v112[5];
        v86 = v112[6];
        v87 = v112[3];
        *(v84 + 80) = v112[4];
        *(v84 + 96) = v85;
        *(v84 + 112) = v86;
        *(v84 + 128) = v113;
        v88 = v112[1];
        *(v84 + 16) = v112[0];
        *(v84 + 32) = v88;
        *(v84 + 48) = v112[2];
        *(v84 + 64) = v87;
        v66 = &v114;
        goto LABEL_59;
      }
    }

    v99 = v119;
    v101 = *(&v118 + 1);

    goto LABEL_49;
  }

  v32 = v122;
  v33 = sub_2261E3CBC();
  v34 = sub_2261E3FFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v122 = v36;
    *v35 = 136315138;
    if (v32)
    {
      v106 = v32;
      v37 = [v32 localizedDescription];
      v38 = sub_2261E3DDC();
      v40 = v39;

      v32 = v106;
    }

    else
    {
      v38 = 0;
      v40 = 0xE000000000000000;
    }

    v50 = sub_2261A4344(v38, v40, &v122);

    *(v35 + 4) = v50;
    _os_log_impl(&dword_226177000, v33, v34, "Failed to copy attestation dictionary. { error=%s }", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA792E0](v36, -1, -1);
    MEMORY[0x22AA792E0](v35, -1, -1);
  }

  v51 = 0xE000000000000000;
  *&v122 = 0;
  *(&v122 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EDE90);
  if (v32)
  {
    v52 = [v32 localizedDescription];
    v53 = sub_2261E3DDC();
    v51 = v54;
  }

  else
  {
    v53 = 0;
  }

  MEMORY[0x22AA782B0](v53, v51);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A28B8(v107, v108);
  v55 = *(&v122 + 1);
  *a2 = v122;
  *(a2 + 8) = v55;
  *(a2 + 16) = 1;
  *(a2 + 40) = 1;

LABEL_20:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2261D535C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E238, &qword_2261E8B88);
    v2 = sub_2261E41CC();
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
    sub_226198CB8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22619A7A4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22619A7A4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22619A7A4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2261E40BC();
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
    result = sub_22619A7A4(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2261D5624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  v8 = sub_2261E3CDC();
  v7[94] = v8;
  v9 = *(v8 - 8);
  v7[95] = v9;
  v10 = *(v9 + 64) + 15;
  v7[96] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
  v7[97] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[98] = swift_task_alloc();
  v13 = sub_2261E393C();
  v7[99] = v13;
  v14 = *(v13 - 8);
  v7[100] = v14;
  v15 = *(v14 + 64) + 15;
  v7[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2261D5794, 0, 0);
}

uint64_t sub_2261D5794()
{
  v1 = *(v0 + 744);
  sub_2261D7344(*(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 736), *(v0 + 784));
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = *(v2 + 16);
    *(v0 + 520) = *v2;
    *(v0 + 528) = v5;
    *(v0 + 536) = v6;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    v8 = *(v0 + 808);
    v9 = *(v0 + 784);
    v10 = *(v0 + 768);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = 0xD00000000000001CLL;
    v14 = *(v0 + 712);
    (*(*(v0 + 800) + 32))(*(v0 + 808), v2, *(v0 + 792));
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_0(v14, v15);
    *(v0 + 538) = (*(v16 + 24))(v15, v16) & 1;
    *(v0 + 572) = 1;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*(v0 + 608) == *(v0 + 576) && *(v0 + 616) == *(v0 + 584))
    {
      v17 = *(v0 + 584);

      v18 = "x-apple-client-appid";
    }

    else
    {
      v19 = *(v0 + 616);
      v20 = *(v0 + 584);
      v21 = sub_2261E425C();

      if (v21)
      {
        v18 = "x-apple-client-appid";
      }

      else
      {
        v13 = 0xD000000000000028;
        v18 = "register.appattest.apple.com";
      }
    }

    v22 = *(v0 + 760);
    v23 = *(v0 + 752);
    v24 = *(v0 + 744);
    v25 = v18 | 0x8000000000000000;
    v26 = *(v24 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16);
    *(v0 + 540) = *(v24 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
    *(v0 + 556) = v26;
    v27 = type metadata accessor for AttestationManager.URLDelegate(0);
    v28 = objc_allocWithZone(v27);
    v29 = OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_logger;
    v30 = sub_2261A5248();
    v31 = *(v22 + 16);
    *(v0 + 816) = v31;
    *(v0 + 824) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(&v28[v29], v30, v23);
    *&v28[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate____lazy_storage___securityController] = 0;
    v32 = &v28[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host];
    *v32 = v13;
    v32[1] = v25;
    v33 = &v28[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_auditToken];
    v34 = *(v0 + 556);
    *v33 = *(v0 + 540);
    *(v33 + 1) = v34;
    *(v0 + 592) = v28;
    *(v0 + 600) = v27;
    v35 = objc_msgSendSuper2((v0 + 592), sel_init);
    *(v0 + 832) = v35;
    v36 = [objc_opt_self() defaultSessionConfiguration];
    v37 = [objc_opt_self() sessionWithConfiguration:v36 delegate:v35 delegateQueue:0];
    *(v0 + 840) = v37;

    v38 = [v37 configuration];
    [v38 setTimeoutIntervalForResource_];

    v39 = *(MEMORY[0x277CC9D18] + 4);
    v40 = swift_task_alloc();
    *(v0 + 848) = v40;
    *v40 = v0;
    v40[1] = sub_2261D5BC8;
    v41 = *(v0 + 808);

    return MEMORY[0x28211ECF8](v41, 0);
  }
}

uint64_t sub_2261D5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 848);
  v9 = *v4;
  v5[107] = a1;
  v5[108] = a2;
  v5[109] = a3;
  v5[110] = v3;

  if (v3)
  {
    v7 = sub_2261D7274;
  }

  else
  {
    v7 = sub_2261D5CE8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2261D5CE8()
{
  v1 = *(v0 + 872);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v196 = *(v0 + 872);
    v201 = *(v0 + 856);
    v21 = *(v0 + 744);
    v22 = *(v0 + 736);
    v205 = *(v0 + 864);
    v209 = *(v0 + 728);
    v23 = *(v0 + 720);
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    v26 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261EDF60);
    v27 = *(v22 + 8);
    v28 = sub_2261E423C();
    MEMORY[0x22AA782B0](v28);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v26, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 134);

    sub_22619C840(v201, v205);
    *v25 = 0xD000000000000037;
    *(v25 + 8) = 0x80000002261EDFA0;
    *(v25 + 16) = 0x80;
LABEL_59:
    sub_2261E406C();
    sub_2261C3440();
    sub_2261E434C();
LABEL_35:
    swift_storeEnumTagMultiPayload();
    v79 = *(v0 + 840);
    v80 = *(v0 + 832);
    v81 = *(v0 + 808);
    v82 = *(v0 + 800);
    v83 = *(v0 + 792);
    v84 = *(v0 + 784);
    v85 = *(v0 + 768);
    [v79 finishTasksAndInvalidate];

    (*(v82 + 8))(v81, v83);

    v86 = *(v0 + 8);
    goto LABEL_40;
  }

  v3 = v2;
  if ([v2 statusCode] != 200)
  {
    v29 = sub_2261E3DAC();
    v30 = [v3 valueForHTTPHeaderField_];

    if (v30)
    {
      v31 = sub_2261E3DDC();
      v197 = v32;
      v202 = v31;
    }

    else
    {
      v197 = 0;
      v202 = 0;
    }

    v33 = sub_2261E3DAC();
    v34 = [v3 valueForHTTPHeaderField_];

    if (v34)
    {
      v35 = sub_2261E3DDC();
      v183 = v36;
      v185 = v35;
    }

    else
    {
      v183 = 0;
      v185 = 0;
    }

    v37 = *(v0 + 824);
    v38 = *(v0 + 768);
    v39 = *(v0 + 760);
    v210 = *(v0 + 752);
    v189 = *(v0 + 736);
    v192 = *(v0 + 720);
    v187 = *(v0 + 704);
    (*(v0 + 816))(v38, *(v0 + 744) + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_logger);
    v206 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EDFE0);
    *(v0 + 656) = [v3 &selRef_initWithDomain_code_userInfo_];
    v40 = sub_2261E423C();
    MEMORY[0x22AA782B0](v40);

    MEMORY[0x22AA782B0](0x737574617473202CLL, 0xE90000000000003DLL);
    v41 = [objc_opt_self() localizedStringForStatusCode_];
    v42 = sub_2261E3DDC();
    v44 = v43;

    MEMORY[0x22AA782B0](v42, v44);

    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EE020);
    if (v197)
    {
      v45 = v202;
    }

    else
    {
      v45 = 7104878;
    }

    if (v197)
    {
      v46 = v197;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v45, v46);

    MEMORY[0x22AA782B0](0x496563617274202CLL, 0xEA00000000003D44);
    if (v183)
    {
      v47 = v185;
    }

    else
    {
      v47 = 7104878;
    }

    if (v183)
    {
      v48 = v183;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v47, v48);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v49 = *(v189 + 8);
    v50 = sub_2261E423C();
    MEMORY[0x22AA782B0](v50);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v206, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 141);

    (*(v39 + 8))(v38, v210);
    if ([v3 &selRef_initWithDomain_code_userInfo_] >= 500 && objc_msgSend(v3, &selRef_initWithDomain_code_userInfo_) <= 599)
    {
      v76 = *(v0 + 864);
      v77 = *(v0 + 856);
      v78 = *(v0 + 728);
      v54 = *(v0 + 696);

      sub_22619C840(v77, v76);
      *v54 = 0xD000000000000016;
      *(v54 + 8) = 0x80000002261EE040;
      v55 = 0x80;
    }

    else
    {
      v51 = *(v0 + 864);
      v52 = *(v0 + 856);
      v53 = *(v0 + 728);
      v54 = *(v0 + 696);

      sub_22619C840(v52, v51);
      *v54 = 0xD000000000000016;
      *(v54 + 8) = 0x80000002261EE040;
      v55 = 64;
    }

    *(v54 + 16) = v55;
    sub_2261E406C();
    sub_2261C3440();
    sub_2261E434C();
    goto LABEL_35;
  }

  v4 = *(v0 + 744);
  v5 = *(v0 + 712);
  v208 = sub_2261E400C();
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261EE060);
  *(v0 + 664) = [v3 statusCode];
  v6 = sub_2261E423C();
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](0x737574617473202CLL, 0xE90000000000003DLL);
  v7 = [objc_opt_self() localizedStringForStatusCode_];
  v8 = sub_2261E3DDC();
  v10 = v9;

  MEMORY[0x22AA782B0](v8, v10);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v208, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 150);

  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v11);
  v13 = (*(v12 + 16))(v11, v12);
  v14 = *(v0 + 880);
  v15 = *(v0 + 864);
  v16 = *(v0 + 856);
  if (v13)
  {
    if (v13 == 1)
    {
      v17 = (v0 + 344);
      v18 = sub_2261E396C();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_2261E395C();
      *(v0 + 368) = &type metadata for WebAttestation;
      *(v0 + 376) = sub_2261D9C78();
      sub_2261D3604();
    }

    else
    {
      v17 = (v0 + 304);
      v66 = sub_2261E396C();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      sub_2261E395C();
      *(v0 + 328) = &type metadata for DeviceAttestation;
      *(v0 + 336) = sub_2261D9BD4();
      sub_2261D3794();
    }

    sub_2261E394C();
    if (v14)
    {
      v69 = *(v0 + 864);
      v70 = *(v0 + 856);
      v71 = *(v0 + 840);
      v72 = *(v0 + 832);
      v73 = *(v0 + 808);
      v74 = *(v0 + 800);
      v75 = *(v0 + 792);

      sub_22619C840(v70, v69);

      __swift_deallocate_boxed_opaque_existential_1(v17);
      [v71 finishTasksAndInvalidate];

      (*(v74 + 8))(v73, v75);
      goto LABEL_39;
    }

LABEL_36:

    sub_2261795DC(v17, v0 + 264);
    v87 = *(v0 + 288);
    v88 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_0((v0 + 264), v87);
    (*(v88 + 32))(v87, v88);
    v89 = sub_2261E3B5C();
    v91 = v90;

    if (v91 >> 60 == 15)
    {
LABEL_37:
      v203 = *(v0 + 864);
      v193 = *(v0 + 872);
      v198 = *(v0 + 856);
      v92 = *(v0 + 736);
      v211 = *(v0 + 728);
      v93 = *(v0 + 720);
      v94 = *(v0 + 704);
      v95 = *(v0 + 696);
      v96 = sub_2261E3FFC();
      sub_2261E410C();

      v97 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_0((v0 + 264), *(v0 + 288));
      v98 = *(v97 + 8);
      v99 = sub_2261E423C();
      MEMORY[0x22AA782B0](v99);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v100 = *(v92 + 8);
      v101 = sub_2261E423C();
      MEMORY[0x22AA782B0](v101);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v96, 0xD000000000000025, 0x80000002261EE0A0, 0xD00000000000006CLL, 0x80000002261EDEF0, 164);

      sub_22619C840(v198, v203);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *v95 = 0xD000000000000022;
      *(v95 + 8) = 0x80000002261EE0D0;
      *(v95 + 16) = 1;
      goto LABEL_59;
    }

    v102 = *(v0 + 744);
    v103 = sub_2261D83B0(&OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController, &OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
    v108 = sub_2261A180C();

    if (!v108)
    {
      sub_2261A28B8(v89, v91);
      goto LABEL_37;
    }

    v109 = *(v0 + 712);
    v110 = v109[3];
    v111 = v109[4];
    __swift_project_boxed_opaque_existential_0(v109, v110);
    *(v0 + 575) = (*(v111 + 16))(v110, v111);
    *(v0 + 574) = 1;
    sub_2261D2FBC();
    if (sub_2261E3D9C())
    {
      v112 = *(v0 + 872);
      v113 = *(v0 + 864);
      v114 = *(v0 + 856);
      v115 = *(v0 + 728);
      v116 = *(v0 + 696);
      v117 = nullsub_1(v108);
      sub_2261A28B8(v89, v91);

      sub_22619C840(v114, v113);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *(v0 + 672) = v117;
LABEL_49:
      v125 = swift_dynamicCast();
      (*(*(v115 - 8) + 56))(v116, v125 ^ 1u, 1, v115);
      goto LABEL_59;
    }

    v118 = *(v0 + 712);
    v119 = v118[3];
    v120 = v118[4];
    __swift_project_boxed_opaque_existential_0(v118, v119);
    *(v0 + 573) = (*(v120 + 16))(v119, v120);
    *(v0 + 888) = 2;
    if (sub_2261E3D9C())
    {
      v121 = *(v0 + 872);
      v122 = *(v0 + 864);
      v123 = *(v0 + 856);
      v115 = *(v0 + 728);
      v116 = *(v0 + 696);
      v124 = nullsub_1(v108);
      sub_2261A28B8(v89, v91);

      sub_22619C840(v123, v122);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *(v0 + 680) = v124;
      goto LABEL_49;
    }

    v126 = *(v0 + 712);
    v127 = v126[3];
    v128 = v126[4];
    __swift_project_boxed_opaque_existential_0(v126, v127);
    *(v0 + 539) = (*(v128 + 16))(v127, v128);
    *(v0 + 537) = 0;
    sub_22619F798();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*(v0 + 624) == *(v0 + 640) && *(v0 + 632) == *(v0 + 648))
    {
      v129 = *(v0 + 648);
    }

    else
    {
      v130 = *(v0 + 632);
      v131 = *(v0 + 648);
      v132 = sub_2261E425C();

      if ((v132 & 1) == 0)
      {
LABEL_58:

        v191 = *(v0 + 872);
        v195 = *(v0 + 864);
        v149 = *(v0 + 856);
        v150 = *(v0 + 736);
        v200 = *(v0 + 728);
        v151 = *(v0 + 720);
        v152 = *(v0 + 704);
        v153 = *(v0 + 696);
        v154 = sub_2261E3FFC();
        sub_2261E410C();

        v155 = *(v150 + 8);
        v156 = sub_2261E423C();
        MEMORY[0x22AA782B0](v156);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v154, 0xD000000000000018, 0x80000002261EE100, 0xD00000000000006CLL, 0x80000002261EDEF0, 180);

        sub_2261A28B8(v89, v91);

        sub_22619C840(v149, v195);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        *v153 = 0xD000000000000015;
        *(v153 + 8) = 0x80000002261EE120;
        *(v153 + 16) = 1;
        goto LABEL_59;
      }
    }

    sub_2261A6578(*(v0 + 712), v0 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (swift_dynamicCast())
    {
      v184 = *(v0 + 176);
      v186 = *(v0 + 184);
      v188 = *(v0 + 200);
      v190 = *(v0 + 192);
      v194 = *(v0 + 216);
      v199 = *(v0 + 208);
      sub_2261A6578(v0 + 264, v0 + 424);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E1E0, &qword_2261E89A8);
      if ((swift_dynamicCast() & 1) != 0 && (v133 = *(v0 + 464), v134 = *(v0 + 472), v135 = *(v0 + 488), v136 = sub_2261E3B5C(), v138 = v137, , , v138 >> 60 != 15))
      {
        v178 = v138;
        v180 = v136;
        v157 = *(v0 + 744);
        v158 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController;
        v159 = *(v157 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController);
        v160 = sub_2261B515C();

        if (v160)
        {
          v161 = *(v157 + v158);
          v182 = sub_2261A2234();
          v163 = v162;
          v165 = v164;
          v167 = v166;

          v204 = v163;
          v207 = v165;
          v176 = v167;
        }

        else
        {
          v182 = 0;
          v176 = 0;
          v204 = 0xF000000000000000;
          v207 = 0;
        }

        v168 = *(v0 + 872);
        v169 = *(v0 + 864);
        v170 = *(v0 + 856);
        v171 = *(v0 + 728);
        v212 = *(v0 + 696);
        sub_22619D8F4(v190, v188);
        sub_22619D664(v190, v188, v108, v180, v178, v182, v204, v207, (v0 + 16), v176);
        sub_2261A28B8(v89, v91);

        sub_22619C840(v170, v169);

        sub_22619C840(v190, v188);
        sub_22619C840(v199, v194);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        v172 = *(v0 + 16);
        *(v0 + 104) = *(v0 + 32);
        v173 = *(v0 + 64);
        *(v0 + 120) = *(v0 + 48);
        *(v0 + 136) = v173;
        *(v0 + 152) = *(v0 + 80);
        *(v0 + 88) = v172;
        v174 = swift_dynamicCast();
        (*(*(v171 - 8) + 56))(v212, v174 ^ 1u, 1, v171);
      }

      else
      {

        v175 = *(v0 + 872);
        v177 = *(v0 + 856);
        v139 = *(v0 + 736);
        v179 = *(v0 + 864);
        v181 = *(v0 + 728);
        v140 = *(v0 + 720);
        v141 = *(v0 + 704);
        v142 = *(v0 + 696);
        v143 = sub_2261E3FFC();
        sub_2261E410C();

        v144 = *(v0 + 296);
        __swift_project_boxed_opaque_existential_0((v0 + 264), *(v0 + 288));
        v145 = *(v144 + 8);
        v146 = sub_2261E423C();
        MEMORY[0x22AA782B0](v146);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v147 = *(v139 + 8);
        v148 = sub_2261E423C();
        MEMORY[0x22AA782B0](v148);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v143, 0xD00000000000001BLL, 0x80000002261EE140, 0xD00000000000006CLL, 0x80000002261EDEF0, 186);

        sub_2261A28B8(v89, v91);

        sub_22619C840(v177, v179);

        sub_22619C840(v190, v188);
        sub_22619C840(v199, v194);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        *v142 = 0xD000000000000018;
        *(v142 + 8) = 0x80000002261EE160;
        *(v142 + 16) = 1;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v17 = (v0 + 224);
  v56 = sub_2261E396C();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_2261E395C();
  *(v0 + 248) = &type metadata for AppAttestation;
  *(v0 + 256) = sub_2261D9CCC();
  *(v0 + 224) = swift_allocObject();
  sub_2261D34C8();
  sub_2261E394C();
  if (!v14)
  {
    goto LABEL_36;
  }

  v59 = *(v0 + 864);
  v60 = *(v0 + 856);
  v61 = *(v0 + 840);
  v62 = *(v0 + 832);
  v63 = *(v0 + 808);
  v64 = *(v0 + 800);
  v65 = *(v0 + 792);

  sub_22619C840(v60, v59);

  __swift_deallocate_boxed_opaque_existential_1((v0 + 224));
  [v61 finishTasksAndInvalidate];

  (*(v64 + 8))(v63, v65);
LABEL_39:
  v104 = *(v0 + 808);
  v105 = *(v0 + 784);
  v106 = *(v0 + 768);

  v86 = *(v0 + 8);
LABEL_40:

  return v86();
}

uint64_t sub_2261D7274()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  [v1 finishTasksAndInvalidate];

  (*(v4 + 8))(v3, v5);
  v6 = v0[110];
  v7 = v0[101];
  v8 = v0[98];
  v9 = v0[96];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2261D7344@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v125 = a2;
  v123 = a5;
  v8 = sub_2261E393C();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v109 - v13;
  v15 = sub_2261E3B2C();
  v122 = *(v15 - 8);
  v16 = *(v122 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v109 - v20;
  v22 = sub_2261E398C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_2261E39CC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2261E39BC();
  sub_2261E397C();
  sub_2261E399C();
  v28 = *(a4 + 24);
  v29 = v126;
  v30 = sub_2261E39AC();
  if (v29)
  {
  }

  v111 = v19;
  v112 = v14;
  v115 = a4;
  v116 = a1;
  v118 = a3;
  v113 = v21;
  v114 = v15;
  v126 = v27;
  v117 = 0;
  v32 = v31;
  v33 = v125;
  v34 = v125[3];
  v35 = v125[4];
  v36 = v30;
  __swift_project_boxed_opaque_existential_0(v125, v34);
  v37 = (*(v35 + 40))(v34, v35);
  v38 = sub_2261E3B8C();
  v39 = sub_2261C8E9C(v37, v38);
  v41 = v40;
  v43 = v42;

  if ((v43 & 0x100) != 0)
  {
    *atoken.val = v39;
    *&atoken.val[2] = v41;
    v46 = v43 & 1;
    LOBYTE(atoken.val[4]) = v46;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v47 = v39;
    *(v47 + 8) = v41;
    *(v47 + 16) = v46;
    sub_22619C840(v36, v32);
  }

  v44 = v36;
  v110 = v32;
  if (!v39)
  {
LABEL_10:
    v49 = sub_2261E3FEC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD00000000000001ALL;
    *&atoken.val[2] = 0x80000002261EE180;
    v50 = *(v115 + 8);
    v51 = sub_2261E423C();
    MEMORY[0x22AA782B0](v51);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v49, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 243);

    v52 = 0x80000002261EE1A0;
    sub_22619C840(v36, v110);

    v53 = 0xD000000000000017;
LABEL_11:
    v54 = v123;
    *v123 = v53;
    v54[1] = v52;
    *(v54 + 16) = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
    return swift_storeEnumTagMultiPayload();
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_2261795CC(v39, v41, v43, 0);
    goto LABEL_10;
  }

  *atoken.val = xmmword_2261E6D40;
  sub_2261E3BAC();
  sub_2261795CC(v39, v41, v43, 0);
  v45 = *&atoken.val[2];
  if (*&atoken.val[2] >> 60 == 15)
  {
    goto LABEL_10;
  }

  v55 = *atoken.val;
  v56 = sub_2261A2B90();
  v58 = *v56;
  v57 = *(v56 + 1);

  sub_2261CF300(MEMORY[0x277D837D0], &atoken);

  v109 = v55;
  if (*&atoken.val[2])
  {
    v59 = *&atoken.val[2];
    v60 = *atoken.val;
    v61 = sub_2261E400C();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD00000000000001DLL;
    *&atoken.val[2] = 0x80000002261EE260;
    MEMORY[0x22AA782B0](v60, v59);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v61, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 252);

    v62 = v114;
    v63 = v122;
    v64 = v113;
    v65 = v112;
    v66 = v111;
  }

  else
  {
    v67 = v33[3];
    v68 = v33[4];
    __swift_project_boxed_opaque_existential_0(v33, v67);
    LOBYTE(v127) = (*(v68 + 24))(v67, v68) & 1;
    v132 = 1;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    v62 = v114;
    if (*atoken.val == v130 && *&atoken.val[2] == v131)
    {

      v66 = v111;
    }

    else
    {
      sub_2261E425C();

      v66 = v111;
    }

    v63 = v122;
    v64 = v113;
    v65 = v112;
  }

  sub_2261E3B1C();

  if ((*(v63 + 48))(v65, 1, v62) == 1)
  {
    sub_2261D9D20(v65);
    v69 = sub_2261E3FEC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000018;
    *&atoken.val[2] = 0x80000002261EE1C0;
    v70 = *(v115 + 8);
    v71 = sub_2261E423C();
    MEMORY[0x22AA782B0](v71);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v69, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 259);

    sub_22619C840(v44, v110);
    sub_2261A28B8(v109, v45);

    v72 = v123;
    *v123 = 0xD000000000000015;
    v72[1] = 0x80000002261EE1E0;
    *(v72 + 16) = 1;
    goto LABEL_12;
  }

  v118 = v45;
  (*(v63 + 32))(v64, v65, v62);
  (*(v63 + 16))(v66, v64, v62);
  v73 = v121;
  sub_2261E390C();
  sub_2261E38FC();
  v74 = v125[3];
  v75 = v125[4];
  __swift_project_boxed_opaque_existential_0(v125, v74);
  (*(v75 + 32))(v74, v75);
  sub_2261E392C();

  result = sub_2261E392C();
  v130 = 0;
  v131 = 0xE000000000000000;
  v76 = v110;
  v77 = v110 >> 62;
  if ((v110 >> 62) > 1)
  {
    v79 = 0;
    v78 = v44;
    if (v77 != 2)
    {
      goto LABEL_33;
    }

    v81 = *(v44 + 16);
    v80 = *(v44 + 24);
    v82 = __OFSUB__(v80, v81);
    v79 = v80 - v81;
    if (!v82)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    v78 = v44;
    if (!v77)
    {
      v79 = BYTE6(v110);
LABEL_33:
      *atoken.val = v79;
      v83 = sub_2261E423C();
      MEMORY[0x22AA782B0](v83);

      sub_2261E392C();

      sub_22619D8F4(v78, v76);
      sub_2261E391C();
      v84 = v109;
      v85 = v118;
      sub_2261E3B9C();
      sub_2261E392C();

      v86 = *(v124 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16);
      *atoken.val = *(v124 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
      *&atoken.val[4] = v86;
      v87 = audit_token_to_pid(&atoken);
      v88 = sub_2261A0BA4(v87);
      if (v89)
      {
        v90 = v89;
        v91 = v88;
        sub_2261D8278();
        v92 = sub_2261A3D28();
        v94 = v93;

        *atoken.val = 0;
        *&atoken.val[2] = 0xE000000000000000;
        sub_2261E410C();

        *atoken.val = 0x7365747441707041;
        *&atoken.val[2] = 0xEB00000000282074;
        if (v94)
        {
          v95 = v125[3];
          v96 = v125[4];
          __swift_project_boxed_opaque_existential_0(v125, v95);
          v97 = (*(v96 + 16))(v95, v96);
          v98 = sub_2261CF6F4(v97);
          MEMORY[0x22AA782B0](v98);

          MEMORY[0x22AA782B0](0x202D2029302E312DLL, 0xE800000000000000);
          v127 = 30240;
          v128 = 0xE200000000000000;
          MEMORY[0x22AA782B0](v92, v94);

          v100 = v127;
          v99 = v128;
          v127 = v91;
          v128 = v90;

          MEMORY[0x22AA782B0](v100, v99);

          MEMORY[0x22AA782B0](v127, v128);

          v101 = v121;
          sub_2261E392C();

          sub_2261A28B8(v109, v118);
        }

        else
        {
          v105 = v125[3];
          v106 = v125[4];
          __swift_project_boxed_opaque_existential_0(v125, v105);
          v107 = (*(v106 + 16))(v105, v106);
          v108 = sub_2261CF6F4(v107);
          MEMORY[0x22AA782B0](v108);

          MEMORY[0x22AA782B0](0x202D2029302E312DLL, 0xE800000000000000);
          MEMORY[0x22AA782B0](v91, v90);

          v101 = v121;
          sub_2261E392C();

          sub_2261A28B8(v109, v118);
        }

        sub_22619C840(v44, v110);
        (*(v122 + 8))(v113, v114);
        (*(v119 + 32))(v123, v101, v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
        return swift_storeEnumTagMultiPayload();
      }

      v125 = v78;
      v102 = sub_2261E3FEC();
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_2261E410C();

      *atoken.val = 0xD000000000000023;
      *&atoken.val[2] = 0x80000002261EE200;
      sub_2261DA494(&unk_27D78E200, MEMORY[0x277CC8678]);
      v103 = v120;
      v104 = sub_2261E423C();
      MEMORY[0x22AA782B0](v104);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v102, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 273);

      v52 = 0x80000002261EE230;
      sub_2261A28B8(v84, v85);
      sub_22619C840(v125, v110);
      (*(v119 + 8))(v73, v103);
      (*(v122 + 8))(v113, v114);
      v53 = 0xD000000000000020;
      goto LABEL_11;
    }
  }

  LODWORD(v79) = HIDWORD(v78) - v78;
  if (__OFSUB__(HIDWORD(v78), v78))
  {
    goto LABEL_40;
  }

  v79 = v79;
LABEL_32:
  if ((v79 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

char *sub_2261D8278()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController);
  }

  else
  {
    type metadata accessor for BundleRecordController();
    v3 = v0;
    v2 = sub_2261A2BE4(*(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 24));
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2261D83B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    type metadata accessor for SecurityController();
    v7 = (v2 + *a2);
    v8 = v2;
    v9 = sub_2261A0FCC(*v7, v7[1], v7[2], v7[3]);
    v10 = *(v2 + v3);
    *(v8 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_2261D8464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttestationManager.URLDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2261D85E8()
{
  result = qword_27D78E198;
  if (!qword_27D78E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E198);
  }

  return result;
}

uint64_t sub_2261D863C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
  v36 = a2;
  result = sub_2261E41AC();
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
        sub_22619A7A4(v25, v37);
      }

      else
      {
        sub_226198CB8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2261E42EC();
      sub_2261E3E6C();
      result = sub_2261E430C();
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
      result = sub_22619A7A4(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_2261D88F4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2261A48EC(a2, a3);
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
      sub_2261D8AB0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2261D863C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2261A48EC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2261E428C();
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

    return sub_22619A7A4(a1, v23);
  }

  else
  {
    sub_2261D8A44(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2261D8A44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22619A7A4(a4, (a5[7] + 32 * a1));
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

void *sub_2261D8AB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
  v2 = *v0;
  v3 = sub_2261E419C();
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
        sub_226198CB8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22619A7A4(v25, (*(v4 + 56) + v22));
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

unint64_t sub_2261D8C54(__int128 *a1, uint64_t a2)
{
  v124 = &type metadata for AppAttestationRequestContext;
  v4 = sub_2261AF5C4();
  v125 = v4;
  v5 = swift_allocObject();
  v123[0] = v5;
  v6 = *a1;
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  v8 = a1[2];
  v9 = a1[3];
  v5[3] = v8;
  v5[4] = v9;
  v126[0] = v6;
  v126[1] = v7;
  v126[2] = v8;
  v126[3] = v9;
  sub_2261AF618(a1, &v119);
  v10 = sub_2261D97B8(v126);
  if (v11 >> 60 == 15)
  {
    v12 = sub_2261E3FFC();
    sub_2261A4EAC(v12, 0xD000000000000019, 0x80000002261EE3A0, 0xD00000000000006CLL, 0x80000002261EDEF0, 297);
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v108[1] = a2;
  v109 = v11;
  v110 = v10;
  v13 = *(v4 + 16);
  LOBYTE(v113) = v13(&type metadata for AppAttestationRequestContext, v4);
  LOBYTE(v111) = 0;
  sub_22619F798();
  sub_2261E3EFC();
  sub_2261E3EFC();
  if (v119 == v115)
  {

    goto LABEL_6;
  }

  v14 = sub_2261E425C();

  if (v14)
  {
LABEL_6:
    v15 = (*(v4 + 40))(&type metadata for AppAttestationRequestContext, v4);
    v16 = SecKeyCopyAttributes(v15);

    if (v16)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v119 = 0;
        sub_2261E3D5C();

        v17 = v119;
        if (v119)
        {
          v18 = *MEMORY[0x277CDBEC0];
          v19 = sub_2261E3DDC();
          if (*(v17 + 16))
          {
            v21 = sub_2261A48EC(v19, v20);
            v23 = v22;

            if (v23)
            {
              sub_226198CB8(*(v17 + 56) + 32 * v21, &v113);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_2261E8980;
              v25 = *MEMORY[0x277D04950];
              *(v24 + 32) = sub_2261E3DDC();
              v108[0] = v24 + 32;
              *(v24 + 72) = MEMORY[0x277D83B88];
              *(v24 + 40) = v26;
              *(v24 + 48) = 1440;
              v27 = *MEMORY[0x277D04928];
              *(v24 + 80) = sub_2261E3DDC();
              *(v24 + 88) = v28;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_2261E6810;
              v30 = *MEMORY[0x277D04918];
              *(v29 + 32) = sub_2261E3DDC();
              *(v29 + 40) = v31;
              v32 = *MEMORY[0x277D04908];
              *(v29 + 48) = sub_2261E3DDC();
              *(v29 + 56) = v33;
              v34 = *MEMORY[0x277D04920];
              *(v29 + 64) = sub_2261E3DDC();
              *(v29 + 72) = v35;
              v36 = *MEMORY[0x277D048F8];
              *(v29 + 80) = sub_2261E3DDC();
              *(v29 + 88) = v37;
              *(v24 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
              *(v24 + 96) = v29;
              v38 = *MEMORY[0x277D048F0];
              *(v24 + 128) = sub_2261E3DDC();
              *(v24 + 136) = v39;
              *(v24 + 168) = MEMORY[0x277CC9318];
              v40 = v109;
              *(v24 + 144) = v110;
              *(v24 + 152) = v40;
              v41 = *MEMORY[0x277D048A0];
              *(v24 + 176) = sub_2261E3DDC();
              *(v24 + 184) = v42;
              sub_226198CB8(&v113, v24 + 192);
              v43 = *MEMORY[0x277D048A8];
              *(v24 + 224) = sub_2261E3DDC();
              *(v24 + 232) = v44;
              v45 = *(v4 + 32);
              sub_22619D8F4(v110, v40);
              v46 = v45(&type metadata for AppAttestationRequestContext, v4);
              *(v24 + 264) = MEMORY[0x277D837D0];
              *(v24 + 240) = v46;
              *(v24 + 248) = v47;
              v48 = sub_2261A9F20(v24);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              __swift_destroy_boxed_opaque_existential_0(&v113);
              goto LABEL_13;
            }
          }

          else
          {
          }

          v96 = sub_2261E3FFC();
          *&v119 = 0;
          *(&v119 + 1) = 0xE000000000000000;
          sub_2261E410C();

          v111 = 0xD00000000000002ELL;
          v112 = 0x80000002261EE3F0;
          v97 = v124;
          v98 = __swift_project_boxed_opaque_existential_0(v123, v124);
          v99 = *(v97[-1].Description + 8);
          MEMORY[0x28223BE20](v98);
          v101 = (v108 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v102 + 16))(v101);
          v103 = v101[1];
          v115 = *v101;
          v116 = v103;
          v104 = v101[3];
          v117 = v101[2];
          v118 = v104;
          sub_2261AF674();
          v105 = sub_2261E423C();
          v107 = v106;
          v119 = v115;
          v120 = v116;
          v121 = v117;
          v122 = v118;
          sub_2261AF6C8(&v119);
          MEMORY[0x22AA782B0](v105, v107);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v64 = v111;
          v65 = v96;
          v66 = v112;
          v67 = 311;
LABEL_17:
          sub_2261A4EAC(v65, v64, v66, 0xD00000000000006CLL, 0x80000002261EDEF0, v67);
          sub_2261A28B8(v110, v109);

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v52 = sub_2261E3FFC();
    *&v119 = 0;
    *(&v119 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v113 = 0xD00000000000002ALL;
    v114 = 0x80000002261EE3C0;
    v53 = v124;
    v54 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v55 = *(v53[-1].Description + 8);
    MEMORY[0x28223BE20](v54);
    v57 = (v108 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = v57[1];
    v115 = *v57;
    v116 = v59;
    v60 = v57[3];
    v117 = v57[2];
    v118 = v60;
    sub_2261AF674();
    v61 = sub_2261E423C();
    v63 = v62;
    v119 = v115;
    v120 = v116;
    v121 = v117;
    v122 = v118;
    sub_2261AF6C8(&v119);
    MEMORY[0x22AA782B0](v61, v63);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v64 = v113;
    v65 = v52;
    v66 = v114;
    v67 = 306;
    goto LABEL_17;
  }

  v48 = MEMORY[0x277D84F98];
LABEL_13:
  LOBYTE(v113) = v13(&type metadata for AppAttestationRequestContext, v4);
  LOBYTE(v111) = 1;
  sub_2261E3EFC();
  sub_2261E3EFC();
  v49 = MEMORY[0x277D04950];
  if (v119 == v115)
  {

    v50 = v109;
    v51 = v110;
LABEL_21:
    v71 = MEMORY[0x277D83B88];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2261E5760;
    v73 = *v49;
    *(inited + 32) = sub_2261E3DDC();
    *(inited + 72) = v71;
    *(inited + 40) = v74;
    *(inited + 48) = 1440;
    v75 = *MEMORY[0x277D04928];
    *(inited + 80) = sub_2261E3DDC();
    *(inited + 88) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_2261E6DF0;
    v78 = *MEMORY[0x277D04920];
    *(v77 + 32) = sub_2261E3DDC();
    *(v77 + 40) = v79;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
    *(inited + 96) = v77;
    v80 = *MEMORY[0x277D048F0];
    *(inited + 128) = sub_2261E3DDC();
    *(inited + 136) = v81;
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v51;
    *(inited + 152) = v50;
    sub_2261A74CC(v51, v50);
    v48 = sub_2261A9F20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
    v70 = swift_arrayDestroy();
    goto LABEL_22;
  }

  v69 = sub_2261E425C();

  v50 = v109;
  v51 = v110;
  if (v69)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ((MEMORY[0x22AA788B0](v70) & 1) == 0)
  {
    v82 = *MEMORY[0x277D04948];
    v83 = sub_2261E3DDC();
    v85 = v84;
    *(&v120 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v119) = 1;
    sub_22619A7A4(&v119, &v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v48;
    sub_2261D88F4(&v115, v83, v85, isUniquelyReferenced_nonNull_native);

    v48 = v113;
  }

  v87 = sub_2261D83B0(&OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController, &OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
  v88 = MEMORY[0x277D83B88];
  v89 = isRunningInRecovery();
  sub_2261A10B4(0xD000000000000032, 0x80000002261EDDF0, v89 & 1, v88, &v119);

  if (BYTE8(v119))
  {
    sub_2261A28B8(v51, v50);
  }

  else
  {
    v90 = v119;
    v91 = *v49;
    v92 = sub_2261E3DDC();
    v94 = v93;
    *(&v120 + 1) = v88;
    *&v119 = v90;
    sub_22619A7A4(&v119, &v115);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v48;
    sub_2261D88F4(&v115, v92, v94, v95);
    sub_2261A28B8(v51, v50);

    v48 = v113;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v123);
  return v48;
}

uint64_t sub_2261D97B8(_OWORD *a1)
{
  v2 = sub_2261E3D3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2261E3D2C();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = &type metadata for AppAttestationRequestContext;
  v39[4] = sub_2261AF5C4();
  v12 = swift_allocObject();
  v39[0] = v12;
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v14 = a1[3];
  v12[3] = a1[2];
  v12[4] = v14;
  sub_2261A6578(v39, &v38);
  sub_2261AF618(a1, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
  if (swift_dynamicCast())
  {
    v29 = v32[2];
    v28 = v33;
    v27 = v34;
    v26 = v35;
    v25 = v36;
    v24 = v37;
    v30 = v34;
    v31 = v35;
    sub_22619D8F4(v34, v35);
    sub_2261E3BCC();
    v23 = v11;
    v15 = v3;
    v16 = v30;
    v17 = v31;
    sub_2261DA494(&qword_28136E230, MEMORY[0x277CC5540]);
    sub_2261E3D1C();
    sub_22619D8F4(v16, v17);
    sub_22619D714(v16, v17);
    sub_22619C840(v16, v17);
    v18 = v23;
    sub_2261E3D0C();
    (*(v15 + 8))(v6, v2);
    v33 = v7;
    v34 = sub_2261DA494(&qword_28136E238, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(v8 + 16))(boxed_opaque_existential_1, v18, v7);
    __swift_project_boxed_opaque_existential_0(v32, v33);
    sub_2261E3ADC();

    sub_22619C840(v27, v26);
    sub_22619C840(v25, v24);
    (*(v8 + 8))(v18, v7);
    sub_22619C840(v30, v31);
    v20 = v38;
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v20 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v20;
}

unint64_t sub_2261D9BD4()
{
  result = qword_27D78E1C8;
  if (!qword_27D78E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1C8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA792E0);
  }

  return result;
}

unint64_t sub_2261D9C78()
{
  result = qword_27D78E1E8;
  if (!qword_27D78E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1E8);
  }

  return result;
}

unint64_t sub_2261D9CCC()
{
  result = qword_28136EB28;
  if (!qword_28136EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB28);
  }

  return result;
}

uint64_t sub_2261D9D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261D9DB0()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261D9E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2261D9EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2261D9F58()
{
  result = sub_2261E3CDC();
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

void sub_2261DA004(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2261A2B9C();
  v7 = *v6;
  v8 = v6[1];

  LOBYTE(v7) = sub_2261CF5C8();

  if (v7)
  {
    v9 = sub_2261E400C();
    sub_2261A4EAC(v9, 0xD000000000000020, 0x80000002261EE370, 0xD00000000000006CLL, 0x80000002261EDEF0, 422);
LABEL_18:
    v37 = *(a3 + 16);

    v37(a3, 1, 0);
    return;
  }

  v10 = [a1 protectionSpace];
  v11 = [v10 authenticationMethod];

  v12 = sub_2261E3DDC();
  v14 = v13;

  v15 = *MEMORY[0x277CCA720];
  if (v12 == sub_2261E3DDC() && v14 == v16)
  {
  }

  else
  {
    v18 = sub_2261E425C();

    if ((v18 & 1) == 0)
    {
      v19 = a1;
      v20 = sub_2261E3CBC();
      v21 = sub_2261E3FFC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v43 = v23;
        *v22 = 136315138;
        v24 = [v19 protectionSpace];
        v25 = [v24 authenticationMethod];

        v26 = sub_2261E3DDC();
        v28 = v27;

        v29 = sub_2261A4344(v26, v28, &v43);

        *(v22 + 4) = v29;
        _os_log_impl(&dword_226177000, v20, v21, "Authentication method does not involve server trust. { authMethod=%s }", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA792E0](v23, -1, -1);
LABEL_16:
        MEMORY[0x22AA792E0](v22, -1, -1);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v30 = [a1 protectionSpace];
  v42 = [v30 serverTrust];

  if (!v42)
  {
    v20 = sub_2261E3CBC();
    v36 = sub_2261E3FFC();
    if (os_log_type_enabled(v20, v36))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226177000, v20, v36, "Failed to fetch trust object from challenge.", v22, 2u);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v31 = sub_2261D839C();
  v32 = *(a2 + OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host);
  v33 = *(a2 + OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host + 8);
  v34 = sub_2261A1E9C(v42);

  if (v34)
  {
    v41 = [objc_allocWithZone(MEMORY[0x277CCACF0]) initWithTrust_];
    (*(a3 + 16))(a3, 0, v41);

    v35 = v41;
  }

  else
  {
    v38 = sub_2261E3CBC();
    v39 = sub_2261E3FFC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_226177000, v38, v39, "Failed to set certificate pinning policy.", v40, 2u);
      MEMORY[0x22AA792E0](v40, -1, -1);
    }

    (*(a3 + 16))(a3, 1, 0);
    v35 = v42;
  }
}

uint64_t sub_2261DA494(unint64_t *a1, void (*a2)(uint64_t))
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

id DeviceAttestHandler.__allocating_init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
  v11 = sub_2261A5328();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id DeviceAttestHandler.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
  v11 = sub_2261A5328();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  v13 = &v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Bool __swiftcall DeviceAttestHandler.isSupported()()
{
  v1 = sub_2261E3CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261DA974();
  v6 = sub_22619DFA0();

  if ((v6 & 1) == 0)
  {
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger, v1);
    v7 = sub_2261E3FFC();
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2261E410C();

    v13 = 0xD000000000000024;
    v14 = 0x80000002261EE420;
    v8 = j__getpid();
    v9 = sub_2261A0BA4(v8);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 7104878;
      v11 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v9, v11);

    MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
    sub_2261A4EAC(v7, v13, v14, 0xD000000000000064, 0x80000002261EE450, 30);

    (*(v2 + 8))(v5, v1);
  }

  return v6 & 1;
}

uint64_t sub_2261DA974()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager);
  }

  else
  {
    type metadata accessor for EligibilityManager();
    v3 = v0;
    v2 = sub_22619DE4C(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24), 2);
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void DeviceAttestHandler.attestKey(with:options:completion:)(__SecKey *a1, void *a2, void (*a3)(void, __SecKey *), uint64_t a4)
{
  v75 = a3;
  v76 = a1;
  v7 = sub_2261E3CDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = v72 - v17;
  sub_2261DA974();
  v18 = sub_22619DFA0();

  if ((v18 & 1) == 0)
  {
    (*(v8 + 16))(v12, &v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v7);
    v33 = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v96 = 0xD000000000000024;
    *(&v96 + 1) = 0x80000002261EE420;
    v34 = j__getpid();
    v35 = sub_2261A0BA4(v34);
    if (!v36)
    {
      v35 = 7104878;
    }

    v37 = 0xE300000000000000;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v35, v38);

    MEMORY[0x22AA782B0](0x3D79656B20, 0xE500000000000000);
    v39 = sub_2261C9E2C();
    if (v40)
    {
      v37 = v40;
    }

    else
    {
      v39 = 7104878;
    }

    MEMORY[0x22AA782B0](v39, v37);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v33, v96, *(&v96 + 1), 0xD000000000000064, 0x80000002261EE450, 46);

    (*(v8 + 8))(v12, v7);
    v41 = 0xD000000000000015;
    v42 = 0x80000002261EE4C0;
    v43 = 3;
    goto LABEL_27;
  }

  if ((sub_2261C9EA0(v76) & 1) == 0)
  {
    (*(v8 + 16))(v14, &v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v7);
    v44 = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v96 = 0xD000000000000013;
    *(&v96 + 1) = 0x80000002261EE4E0;
    v45 = sub_2261C9E2C();
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v45 = 7104878;
      v47 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v45, v47);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v44, v96, *(&v96 + 1), 0xD000000000000064, 0x80000002261EE450, 52);

    (*(v8 + 8))(v14, v7);
    v41 = 0x2064696C61766E49;
    v42 = 0xEC0000002E79656BLL;
    goto LABEL_26;
  }

  if ((sub_2261DC394(a2) & 1) == 0)
  {
    v76 = sub_2261A9CDC(1, 0xD000000000000010, 0x80000002261EE500);
    v75(0, v76);
    v48 = v76;

    return;
  }

  v19 = sub_2261DB7B8();
  sub_22619D218(v85, v19);

  if (*(&v85[0] + 1) == 1)
  {
LABEL_25:
    v41 = 0xD000000000000023;
    v42 = 0x80000002261EE520;
LABEL_26:
    v43 = 1;
LABEL_27:
    v49 = sub_2261A9CDC(v43, v41, v42);
    v50 = v49;
LABEL_28:
    v75(0, v50);

    return;
  }

  v88 = v85[0];
  v89 = v85[1];
  v90 = v85[2];
  v20 = sub_2261A54B0();
  if (!v21)
  {
    v83 = v88;
    sub_22619A7B4(&v83, &qword_27D78DE20, &unk_2261E6280);
    v77 = v89;
    sub_22619A7B4(&v77, &qword_27D78DE20, &unk_2261E6280);
    v96 = v90;
    sub_22619A7B4(&v96, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_25;
  }

  v22 = v20;
  v23 = v21;
  v73 = a4;
  *&v96 = 0;
  sub_2261E3D5C();
  v24 = v96;
  if (!v96)
  {

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v81 = 0xD000000000000013;
    v82 = 0x80000002261EE550;
    v86[0] = v90;
    v83 = v89;
    v77 = v88;
    v96 = v88;
    *v97 = v89;
    *&v97[16] = v90;
    sub_22619C894();
    v51 = sub_2261E423C();
    v53 = v52;
    sub_22619A7B4(&v77, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v83, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(v86, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v51, v53);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v49 = sub_2261A9CDC(1, v81, v82);

    v50 = v49;
    goto LABEL_28;
  }

  v91 = v88;
  sub_22619A7B4(&v91, &qword_27D78DE20, &unk_2261E6280);
  v92 = v89;
  sub_22619A7B4(&v92, &qword_27D78DE20, &unk_2261E6280);
  v93 = v90;
  sub_22619A7B4(&v93, &qword_27D78DE20, &unk_2261E6280);
  v25 = v4;
  v26 = *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager];

  v27 = sub_22619C044();

  sub_2261D04FC(2, v27 & 1, v22, v23, v76, v24, v86);
  v28 = sub_2261DB840();
  v95 = *(v86 + 8);
  v29 = *(&v86[1] + 1);
  v94 = v87;
  *(&v78 + 1) = &type metadata for DeviceAttestationRequestContext;
  *&v79 = sub_2261DC494();
  v30 = swift_allocObject();
  *&v77 = v30;
  v31 = v86[1];
  *(v30 + 16) = v86[0];
  *(v30 + 32) = v31;
  *(v30 + 48) = v87;
  sub_2261AF3FC(&v95, &v81);
  v32 = v29;
  sub_22619A73C(&v94, &v81, &qword_27D78E2C8, &qword_2261E8B90);
  sub_2261D4738(&v77, &v96);

  __swift_destroy_boxed_opaque_existential_0(&v77);
  v83 = v96;
  v84[0] = *v97;
  *(v84 + 9) = *&v97[9];
  sub_22619A73C(&v83, &v96, &qword_27D78E2D8, &unk_2261E8BA0);
  v54 = v75;
  if (v97[24])
  {
    v77 = v96;
    LOBYTE(v78) = v97[0];
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_22619C830();
  }

  else
  {
    sub_2261795DC(&v96, &v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
    if (swift_dynamicCast())
    {
      v96 = v77;
      *v97 = v78;
      *&v97[16] = v79;
      v98 = v80;
      v55 = sub_2261E3FAC();
      v56 = v74;
      (*(*(v55 - 8) + 56))(v74, 1, 1, v55);
      v57 = swift_allocObject();
      v58 = *v97;
      *(v57 + 40) = v96;
      *(v57 + 56) = v58;
      v59 = v98;
      *(v57 + 72) = *&v97[16];
      *(v57 + 88) = v59;
      v60 = v86[1];
      *(v57 + 104) = v86[0];
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      *(v57 + 32) = v25;
      *(v57 + 120) = v60;
      *(v57 + 136) = v87;
      *(v57 + 144) = v54;
      *(v57 + 152) = v73;
      sub_2261AF3FC(&v95, &v77);
      v61 = v32;
      sub_22619A73C(&v94, &v77, &qword_27D78E2C8, &qword_2261E8B90);
      v62 = v25;

      sub_2261B0BA4(0, 0, v56, &unk_2261E8BB8, v57);

      sub_2261A04D8(&v95);

LABEL_36:
      sub_22619A7B4(&v94, &qword_27D78E2C8, &qword_2261E8B90);
      sub_22619A7B4(&v83, &qword_27D78E2D8, &unk_2261E8BA0);
      return;
    }
  }

  sub_22619A73C(&v83, &v96, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v97[24] == 1)
  {
    v63 = v96;
    v64 = v97[0];
    v76 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
    LODWORD(v74) = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v72[1] = v25;
    *&v77 = 0xD00000000000002DLL;
    *(&v77 + 1) = 0x80000002261EE5A0;
    v96 = v63;
    v97[0] = v64;
    sub_22619C7B4();
    v65 = sub_2261E429C();
    MEMORY[0x22AA782B0](v65);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v74, v77, *(&v77 + 1), 0xD000000000000064, 0x80000002261EE450, 82);

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v77 = 0xD00000000000002DLL;
    *(&v77 + 1) = 0x80000002261EE5A0;
    v96 = v63;
    v97[0] = v64;
    v66 = sub_2261E429C();
    v68 = v67;
    sub_22619C830();
    MEMORY[0x22AA782B0](v66, v68);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v69 = sub_2261A9CDC(0, v77, *(&v77 + 1));

    v75(0, v69);

    sub_2261A04D8(&v95);
    goto LABEL_36;
  }

  sub_22619A7B4(&v96, &qword_27D78E2D8, &unk_2261E8BA0);
  v70 = sub_2261E3FFC();
  sub_2261A4EAC(v70, 0xD000000000000024, 0x80000002261EE570, 0xD000000000000064, 0x80000002261EE450, 87);
  v71 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EE570);
  v54(0, v71);

  sub_2261A04D8(&v95);
  sub_22619A7B4(&v94, &qword_27D78E2C8, &qword_2261E8B90);
  sub_22619A7B4(&v83, &qword_27D78E2D8, &unk_2261E8BA0);
}

char *sub_2261DB7B8()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager);
  }

  else
  {
    type metadata accessor for IdentityManager();
    v3 = v0;
    v2 = sub_22619AB84(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24));
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2261DB840()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager);
  }

  else
  {
    type metadata accessor for AttestationManager(0);
    v4 = v0;
    v5 = sub_2261D4654(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2261DB8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  return MEMORY[0x2822009F8](sub_2261DB8F0, 0, 0);
}

uint64_t sub_2261DB8F0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  *(v0 + 280) = sub_2261DB840();
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v4;
  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 192) = *(v2 + 8);
  v7 = *(v2 + 24);
  *(v0 + 224) = *(v2 + 32);
  *(v0 + 104) = &type metadata for DeviceAttestationRequestContext;
  *(v0 + 112) = sub_2261DC494();
  v8 = swift_allocObject();
  *(v0 + 80) = v8;
  v9 = *(v2 + 32);
  v10 = *(v2 + 16);
  *(v8 + 16) = *v2;
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  sub_2261AF3FC(v0 + 192, v0 + 208);
  v11 = v7;
  sub_22619A73C(v0 + 224, v0 + 232, &qword_27D78E2C8, &qword_2261E8B90);
  v12 = swift_task_alloc();
  *(v0 + 288) = v12;
  v13 = sub_2261D85E8();
  sub_2261DD62C();
  *v12 = v0;
  v12[1] = sub_2261DBA68;

  return sub_2261D5624(v0 + 120, v0 + 16, v0 + 80, &type metadata for DeviceAttestationRequest, &type metadata for DeviceAttestationObjectContext, v13);
}

uint64_t sub_2261DBA68()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v5 = sub_2261DBFA8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 80));
    v5 = sub_2261DBBA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2261DBBA4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  LOBYTE(v3) = *(v0 + 136);
  if (*(v0 + 137))
  {
    v33 = *(v0 + 264);
    v35 = *(v0 + 272);
    v31 = *(v0 + 240);
    v4 = sub_2261E3FFC();
    sub_2261E410C();

    *(v0 + 144) = v1;
    *(v0 + 152) = v2;
    *(v0 + 160) = v3;
    sub_2261C3440();
    v5 = sub_2261E429C();
    MEMORY[0x22AA782B0](v5);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v4, 0xD00000000000001ELL, 0x80000002261EE6C0, 0xD000000000000064, 0x80000002261EE450, 96);

    sub_2261E410C();

    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    *(v0 + 184) = v3;
    v6 = sub_2261E429C();
    v8 = v7;
    sub_2261DD680(v1, v2, v3, 1);
    MEMORY[0x22AA782B0](v6, v8);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v9 = sub_2261A9CDC(0, 0xD00000000000001ELL, 0x80000002261EE6C0);

    v33(0, v9);
  }

  else if (v1)
  {
    v10 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2261E416C())
    {
      v29 = v2;
      v30 = v3;
      v32 = v0;
      if (!i)
      {
        break;
      }

      v12 = 0;
      v36 = v1 & 0xC000000000000001;
      v13 = MEMORY[0x277D84F90];
      v34 = v1;
      v14 = v10;
      while (1)
      {
        if (v36)
        {
          v15 = MEMORY[0x22AA78540](v12, v1);
        }

        else
        {
          if (v12 >= v10[2])
          {
            goto LABEL_26;
          }

          v15 = *(v1 + 8 * v12 + 32);
        }

        v10 = v15;
        v0 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v3 = sub_2261A2658();
        v2 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2261DC288(0, *(v13 + 2) + 1, 1, v13);
        }

        v18 = *(v13 + 2);
        v17 = *(v13 + 3);
        if (v18 >= v17 >> 1)
        {
          v13 = sub_2261DC288((v17 > 1), v18 + 1, 1, v13);
        }

        *(v13 + 2) = v18 + 1;
        v19 = &v13[16 * v18];
        *(v19 + 4) = v3;
        *(v19 + 5) = v2;

        ++v12;
        v1 = v34;
        v10 = v14;
        if (v0 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_21:
    v0 = v32;
    v25 = *(v32 + 264);
    v26 = *(v32 + 272);
    sub_2261DD680(v1, v29, v30, 0);
    v25(v13, 0);
  }

  else
  {
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v22 = *(v0 + 240);
    v23 = sub_2261E3FFC();
    sub_2261A4EAC(v23, 0xD000000000000023, 0x80000002261EE690, 0xD000000000000064, 0x80000002261EE450, 103);
    v24 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261EE690);
    v21(0, v24);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2261DBFA8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v1 = v0[1];
  v2 = v0[37];

  return v1();
}

void sub_2261DC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_2261E3F1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

id DeviceAttestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceAttestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2261DC288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2E8, &unk_2261E8C20);
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

uint64_t sub_2261DC394(void *a1)
{
  v2 = *MEMORY[0x277D04938];
  *&v7 = sub_2261E3DDC();
  *(&v7 + 1) = v3;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_2261E409C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v6)
    {
      return 1;
    }
  }

  else
  {
    sub_22619A7B4(v9, &qword_27D78E0B8, &unk_2261E78B0);
  }

  return 0;
}

unint64_t sub_2261DC494()
{
  result = qword_27D78E2C0;
  if (!qword_27D78E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2C0);
  }

  return result;
}

uint64_t sub_2261DC4E8()
{
  v2 = v0[4];
  v3 = v0[18];
  v4 = v0[19];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C3494;

  return sub_2261DB8C8(v5, v6, v7, v2, (v0 + 5), (v0 + 13), v3, v4);
}

uint64_t type metadata accessor for DeviceAttestHandler()
{
  result = qword_27D7913A8;
  if (!qword_27D7913A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261DC5EC()
{
  result = sub_2261E3CDC();
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

void sub_2261DC6C0(__SecKey *a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v68[-v9];
  v10 = sub_2261E3CDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v68[-v16];
  v72 = swift_allocObject();
  *(v72 + 16) = a4;
  _Block_copy(a4);
  sub_2261DA974();
  v18 = sub_22619DFA0();

  if ((v18 & 1) == 0)
  {
    (*(v11 + 16))(v17, &a3[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v10);
    LODWORD(v71) = sub_2261E3FFC();
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v93 = 0xD000000000000024;
    *(&v93 + 1) = 0x80000002261EE420;
    v32 = j__getpid();
    v33 = sub_2261A0BA4(v32);
    if (!v34)
    {
      v33 = 7104878;
    }

    v35 = a4;
    v36 = 0xE300000000000000;
    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v33, v37);

    MEMORY[0x22AA782B0](0x3D79656B20, 0xE500000000000000);
    v38 = sub_2261C9E2C();
    if (v39)
    {
      v36 = v39;
    }

    else
    {
      v38 = 7104878;
    }

    MEMORY[0x22AA782B0](v38, v36);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v71, v93, *(&v93 + 1), 0xD000000000000064, 0x80000002261EE450, 46);

    (*(v11 + 8))(v17, v10);
    v40 = sub_2261A9CDC(3, 0xD000000000000015, 0x80000002261EE4C0);
    (v35)[2](v35, 0, v40);
    goto LABEL_29;
  }

  if ((sub_2261C9EA0(v73) & 1) == 0)
  {
    (*(v11 + 16))(v15, &a3[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v10);
    v41 = sub_2261E3FFC();
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v93 = 0xD000000000000013;
    *(&v93 + 1) = 0x80000002261EE4E0;
    v42 = sub_2261C9E2C();
    if (!v43)
    {
      v42 = 7104878;
    }

    v44 = a4;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v42, v45);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v41, v93, *(&v93 + 1), 0xD000000000000064, 0x80000002261EE450, 52);

    (*(v11 + 8))(v15, v10);
    v40 = sub_2261A9CDC(1, 0x2064696C61766E49, 0xEC0000002E79656BLL);
    (v44)[2](v44, 0, v40);
    goto LABEL_29;
  }

  if ((sub_2261DC394(a2) & 1) == 0)
  {
    v73 = sub_2261A9CDC(1, 0xD000000000000010, 0x80000002261EE500);
    (a4)[2](a4, 0, v73);

    v46 = v73;

    return;
  }

  v19 = sub_2261DB7B8();
  sub_22619D218(v82, v19);

  if (*(&v82[0] + 1) == 1)
  {
LABEL_28:
    v40 = sub_2261A9CDC(1, 0xD000000000000023, 0x80000002261EE520);
    (a4)[2](a4, 0, v40);
LABEL_29:

    return;
  }

  v85 = v82[0];
  v86 = v82[1];
  v87 = v82[2];
  v20 = sub_2261A54B0();
  if (!v21)
  {
    v80 = v85;
    sub_22619A7B4(&v80, &qword_27D78DE20, &unk_2261E6280);
    v74 = v86;
    sub_22619A7B4(&v74, &qword_27D78DE20, &unk_2261E6280);
    v93 = v87;
    sub_22619A7B4(&v93, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_28;
  }

  v22 = v20;
  v23 = v21;
  v70 = a4;
  *&v93 = 0;
  sub_2261E3D5C();
  v24 = v93;
  if (!v93)
  {

    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v78 = 0xD000000000000013;
    v79 = 0x80000002261EE550;
    v83[0] = v87;
    v80 = v86;
    v74 = v85;
    v93 = v85;
    *v94 = v86;
    *&v94[16] = v87;
    sub_22619C894();
    v47 = sub_2261E423C();
    v49 = v48;
    sub_22619A7B4(&v74, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v80, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(v83, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v47, v49);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v50 = sub_2261A9CDC(1, v78, v79);

    (v70)[2](v70, 0, v50);

    return;
  }

  v88 = v85;
  sub_22619A7B4(&v88, &qword_27D78DE20, &unk_2261E6280);
  v89 = v86;
  sub_22619A7B4(&v89, &qword_27D78DE20, &unk_2261E6280);
  v90 = v87;
  sub_22619A7B4(&v90, &qword_27D78DE20, &unk_2261E6280);
  v25 = *&a3[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager];

  v26 = sub_22619C044();

  sub_2261D04FC(2, v26 & 1, v22, v23, v73, v24, v83);
  v27 = sub_2261DB840();
  v92 = *(v83 + 8);
  v28 = *(&v83[1] + 1);
  v91 = v84;
  *(&v75 + 1) = &type metadata for DeviceAttestationRequestContext;
  *&v76 = sub_2261DC494();
  v29 = swift_allocObject();
  *&v74 = v29;
  v30 = v83[1];
  *(v29 + 16) = v83[0];
  *(v29 + 32) = v30;
  *(v29 + 48) = v84;
  sub_2261AF3FC(&v92, &v78);
  v31 = v28;
  sub_22619A73C(&v91, &v78, &qword_27D78E2C8, &qword_2261E8B90);
  sub_2261D4738(&v74, &v93);

  __swift_destroy_boxed_opaque_existential_0(&v74);
  v80 = v93;
  v81[0] = *v94;
  *(v81 + 9) = *&v94[9];
  sub_22619A73C(&v80, &v93, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v94[24])
  {
    v74 = v93;
    LOBYTE(v75) = v94[0];
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_22619C830();
  }

  else
  {
    sub_2261795DC(&v93, &v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
    if (swift_dynamicCast())
    {
      v93 = v74;
      *v94 = v75;
      *&v94[16] = v76;
      v95 = v77;
      v51 = sub_2261E3FAC();
      v52 = v71;
      (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
      v53 = swift_allocObject();
      v54 = *v94;
      *(v53 + 40) = v93;
      *(v53 + 56) = v54;
      v55 = v95;
      *(v53 + 72) = *&v94[16];
      *(v53 + 88) = v55;
      v56 = v83[1];
      *(v53 + 104) = v83[0];
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = a3;
      *(v53 + 120) = v56;
      *(v53 + 136) = v84;
      *(v53 + 144) = sub_2261DD4F4;
      *(v53 + 152) = v72;
      sub_2261AF3FC(&v92, &v74);
      v57 = v31;
      sub_22619A73C(&v91, &v74, &qword_27D78E2C8, &qword_2261E8B90);
      v58 = a3;

      sub_2261B0BA4(0, 0, v52, &unk_2261E8C18, v53);

      sub_2261A04D8(&v92);

      sub_22619A7B4(&v91, &qword_27D78E2C8, &qword_2261E8B90);
      sub_22619A7B4(&v80, &qword_27D78E2D8, &unk_2261E8BA0);

      return;
    }
  }

  sub_22619A73C(&v80, &v93, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v94[24] == 1)
  {
    v59 = v93;
    v60 = v94[0];
    v71 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
    v69 = sub_2261E3FFC();
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v73 = v31;
    *&v74 = 0xD00000000000002DLL;
    *(&v74 + 1) = 0x80000002261EE5A0;
    v93 = v59;
    v94[0] = v60;
    sub_22619C7B4();
    v61 = sub_2261E429C();
    MEMORY[0x22AA782B0](v61);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v69, v74, *(&v74 + 1), 0xD000000000000064, 0x80000002261EE450, 82);

    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v74 = 0xD00000000000002DLL;
    *(&v74 + 1) = 0x80000002261EE5A0;
    v93 = v59;
    v94[0] = v60;
    v62 = sub_2261E429C();
    v64 = v63;
    sub_22619C830();
    MEMORY[0x22AA782B0](v62, v64);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v65 = sub_2261A9CDC(0, v74, *(&v74 + 1));

    (v70)[2](v70, 0, v65);

    sub_2261A04D8(&v92);
  }

  else
  {
    sub_22619A7B4(&v93, &qword_27D78E2D8, &unk_2261E8BA0);
    v66 = sub_2261E3FFC();
    sub_2261A4EAC(v66, 0xD000000000000024, 0x80000002261EE570, 0xD000000000000064, 0x80000002261EE450, 87);
    v67 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EE570);
    (v70)[2](v70, 0, v67);

    sub_2261A04D8(&v92);
  }

  sub_22619A7B4(&v91, &qword_27D78E2C8, &qword_2261E8B90);
  sub_22619A7B4(&v80, &qword_27D78E2D8, &unk_2261E8BA0);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2261DD57C()
{
  v2 = v0[4];
  v3 = v0[18];
  v4 = v0[19];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C31BC;

  return sub_2261DB8C8(v5, v6, v7, v2, (v0 + 5), (v0 + 13), v3, v4);
}

unint64_t sub_2261DD62C()
{
  result = qword_27D78E2E0;
  if (!qword_27D78E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2E0);
  }

  return result;
}

uint64_t sub_2261DD680(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_2261DD68C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_2261DD68C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_22619C830();
  }
}

char *sub_2261DD6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  type metadata accessor for KeychainController();
  v12 = sub_2261A2B48();
  v13 = *v12;
  v14 = v12[1];

  *(v11 + 6) = sub_2261DFDC8(v13, v14);
  *(v11 + 7) = 0;
  v15 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v16 = sub_2261A51A0();
  v17 = sub_2261E3CDC();
  (*(*(v17 - 8) + 16))(&v11[v15], v16, v17);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

uint64_t sub_2261DD794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2261E406C();
  v83 = *(v6 - 8);
  v7 = *(v83 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v85 = &v74 - v9;
  v84 = *(a2 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2F0, &unk_2261E8C30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AppUUID(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A6578(a1, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (!v24)
  {
    v25(v18, 1, 1, v19);
    sub_22619A7B4(v18, &qword_27D78E2F0, &unk_2261E8C30);
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v80 = v6;
  v81 = a3;
  v25(v18, 0, 1, v19);
  sub_2261DE1B8(v18, v23);
  v26 = &v23[*(v19 + 20)];
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v30 = v29;
  }

  if (!v30)
  {
    v36 = sub_2261E3FEC();
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_2261E410C();

    v87 = 0xD000000000000027;
    v88 = 0x80000002261EBA30;
    sub_2261DF364();
    v37 = sub_2261E423C();
    MEMORY[0x22AA782B0](v37);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v36, v87, v88, 0xD00000000000006CLL, 0x80000002261EE710, 32);

    sub_2261DE6A0(v23);
    v38 = v81;
    *v81 = 0xD000000000000024;
    v38[1] = 0x80000002261EBAD0;
    *(v38 + 16) = 0;
    goto LABEL_10;
  }

  sub_2261C34C0(v16);
  v25(v16, 0, 1, v19);
  v31 = v86;
  v32 = v90;
  v33 = sub_2261DE21C();
  if (!v32)
  {
    v40 = v33;
    v41 = v34;
    v42 = v35;
    sub_22619A7B4(v16, &qword_27D78E2F0, &unk_2261E8C30);
    if ((v42 & 0x100) != 0)
    {
      v87 = v40;
      v88 = v41;
      v50 = v42 & 1;
      v89 = v42 & 1;
      sub_22619C7B4();
      v51 = v40;
    }

    else
    {
      v78 = v40;
      v90 = 0;
      v44 = sub_2261DEFE0(v23);
      v79 = v45;
      v46 = v43;
      if ((v43 & 0x100) == 0)
      {
        if (v79 >> 60 != 15)
        {
          v75 = v43;
          v53 = *(v31 + 48);
          v54 = sub_2261E3B8C();
          v76 = v44;
          v55 = v54;
          type metadata accessor for CFData(0);
          v56 = v78;
          v77 = sub_2261E09C4(v55, v78, v41, v57);
          v74 = v58;
          v60 = v59;
          sub_22619C81C(v56, v41, v42, 0);

          if ((v60 & 0x100) != 0)
          {
            v68 = v77;
            v69 = v74;
            v87 = v77;
            v88 = v74;
            v89 = v60 & 1;
            sub_22619C838();
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            swift_allocError();
            *v70 = v68;
            *(v70 + 8) = v69;
            *(v70 + 16) = v60 & 1;
            sub_2261CDCA0(v76, v79, v75, 0);
            sub_2261795CC(v68, v69, v60, 1);
            return sub_2261DE6A0(v23);
          }

          v87 = v77;
          v61 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E300, &unk_2261E8C40);
          v62 = v85;
          if (swift_dynamicCast())
          {
            sub_2261795CC(v77, v74, v60, 0);
            sub_2261CDCA0(v76, v79, v75, 0);
            v63 = v84;
            v64 = *(v84 + 56);
            v64(v62, 0, 1, a2);
            sub_2261DE6A0(v23);
            v65 = *(v63 + 32);
            v66 = v82;
            v65(v82, v62, a2);
            v67 = v81;
            v65(v81, v66, a2);
            v64(v67, 0, 1, a2);
            sub_22619C7B4();
            sub_2261E434C();
            return swift_storeEnumTagMultiPayload();
          }

          (*(v84 + 56))(v62, 1, 1, a2);
          (*(v83 + 8))(v62, v80);
          v71 = sub_2261E3FEC();
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261ED240);
          sub_2261DF364();
          v72 = sub_2261E423C();
          MEMORY[0x22AA782B0](v72);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v71, v87, v88, 0xD00000000000006CLL, 0x80000002261EE710, 46);

          sub_2261CDCA0(v76, v79, v75, 0);
          sub_2261795CC(v77, v74, v60, 0);
          sub_2261DE6A0(v23);
          v73 = v81;
          *v81 = 0xD00000000000002FLL;
          v73[1] = 0x80000002261EE7B0;
          *(v73 + 16) = 1;
          sub_22619C7B4();
          goto LABEL_11;
        }

        sub_22619C81C(v78, v41, v42, 0);
        v47 = sub_2261E3FEC();
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_2261E410C();

        v87 = 0xD000000000000023;
        v88 = 0x80000002261EE6E0;
        sub_2261DF364();
        v48 = sub_2261E423C();
        MEMORY[0x22AA782B0](v48);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v47, v87, v88, 0xD00000000000006CLL, 0x80000002261EE710, 39);

        sub_2261DE6A0(v23);
        v49 = v81;
        *v81 = 0xD000000000000020;
        v49[1] = 0x80000002261EE780;
        *(v49 + 16) = 1;
LABEL_10:
        sub_22619C7B4();
LABEL_11:
        sub_2261E434C();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22619C81C(v78, v41, v42, 0);
      v41 = v79;
      v87 = v44;
      v88 = v79;
      v50 = v46 & 1;
      v89 = v46 & 1;
      sub_22619C7B4();
      v51 = v44;
    }

    swift_willThrowTypedImpl();
    swift_allocError();
    *v52 = v51;
    *(v52 + 8) = v41;
    *(v52 + 16) = v50;
    return sub_2261DE6A0(v23);
  }

  sub_22619A7B4(v16, &qword_27D78E2F0, &unk_2261E8C30);
  return sub_2261DE6A0(v23);
}

uint64_t sub_2261DE1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppUUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261DE21C()
{
  v1 = v0;
  sub_2261A9864();
  sub_2261A2CB8(v29);

  if (*(&v29[0] + 1) == 1)
  {
    return 0xD000000000000031;
  }

  v30 = v29[0];
  v31 = v29[1];
  v32 = v29[2];
  v3 = *(v0 + 56);

  v4 = sub_2261A30F4();

  if (sub_2261A3324(v4, 4u))
  {
    v5 = sub_2261A5588();
    if (!v6)
    {
      v21 = sub_2261E3FEC();
      sub_2261E410C();

      v42 = v32;
      v43 = v31;
      v44 = v30;
      sub_22619C894();
      v22 = sub_2261E423C();
      v24 = v23;
      sub_22619A7B4(&v44, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v43, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v22, v24);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v21, 0xD000000000000020, 0x80000002261EE7E0, 0xD00000000000006CLL, 0x80000002261EE710, 95);

      return 0xD00000000000001DLL;
    }

    v7 = v5;
    v8 = v6;
    v9 = &v35;
    v10 = &v34;
    v11 = &v33;
  }

  else
  {
    v12 = sub_2261A54B0();
    if (!v13)
    {
      v25 = sub_2261E3FEC();
      sub_2261E410C();

      v39 = v32;
      v40 = v31;
      v41 = v30;
      sub_22619C894();
      v26 = sub_2261E423C();
      v28 = v27;
      sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v40, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v39, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v26, v28);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v25, 0xD000000000000019, 0x80000002261EBB90, 0xD00000000000006CLL, 0x80000002261EE710, 102);

      return 0xD000000000000016;
    }

    v7 = v12;
    v8 = v13;
    v9 = &v38;
    v10 = &v37;
    v11 = &v36;
  }

  *v11 = v30;
  sub_22619A7B4(v11, &qword_27D78DE20, &unk_2261E6280);
  *v10 = v31;
  sub_22619A7B4(v10, &qword_27D78DE20, &unk_2261E6280);
  *v9 = v32;
  sub_22619A7B4(v9, &qword_27D78DE20, &unk_2261E6280);
  v14 = *(v1 + 48);
  v15 = sub_2261E1EC4(v7, v8);
  v17 = v16;
  v19 = v18;

  if ((v19 & 0x100) == 0)
  {
    return v15;
  }

  sub_22619C7B4();
  swift_willThrowTypedImpl();
  result = swift_allocError();
  *v20 = v15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v19 & 1;
  return result;
}

uint64_t sub_2261DE6A0(uint64_t a1)
{
  v2 = type metadata accessor for AppUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261DE6FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_2261E406C();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v74 = *(a1 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A9864();
  sub_2261A2CB8(v55);

  if (*(&v55[0] + 1) == 1)
  {
    *a2 = 0xD000000000000031;
    *(a2 + 8) = 0x80000002261ED310;
    *(a2 + 16) = 1;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v47 = a1;
  v48 = a2;
  v49 = v3;
  v56 = v55[0];
  v57 = v55[1];
  v58 = v55[2];
  v16 = *(v2 + 56);

  v17 = sub_2261A30F4();

  if (sub_2261A3324(v17, 4u))
  {
    v18 = sub_2261A5588();
    if (!v19)
    {
      v20 = sub_2261E3FEC();
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v54 = 0xD000000000000020;
      *(&v54 + 1) = 0x80000002261EE7E0;
      v71 = v58;
      v72 = v57;
      v73 = v56;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      sub_22619C894();
      v21 = sub_2261E423C();
      v23 = v22;
      sub_22619A7B4(&v73, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v72, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v71, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v21, v23);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v20, v54, *(&v54 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 95);

      v24 = 0x80000002261EE810;
      v25 = 0xD00000000000001DLL;
LABEL_12:
      v41 = v48;
      *v48 = v25;
      v41[1] = v24;
      *(v41 + 16) = 1;
      sub_22619C7B4();
LABEL_14:
      sub_2261E434C();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v18 = sub_2261A54B0();
    if (!v19)
    {
      v37 = sub_2261E3FEC();
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v54 = 0xD000000000000019;
      *(&v54 + 1) = 0x80000002261EBB90;
      v68 = v58;
      v69 = v57;
      v70 = v56;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      sub_22619C894();
      v38 = sub_2261E423C();
      v40 = v39;
      sub_22619A7B4(&v70, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v69, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v68, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v38, v40);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v37, v54, *(&v54 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 102);

      v24 = 0x80000002261EBBB0;
      v25 = 0xD000000000000016;
      goto LABEL_12;
    }
  }

  v26 = *(v4 + 48);
  v27 = sub_2261E1EC4(v18, v19);
  v29 = v28;
  v31 = v30;

  if ((v31 & 0x100) != 0)
  {
    v59 = v56;
    sub_22619A7B4(&v59, &qword_27D78DE20, &unk_2261E6280);
    v60 = v57;
    sub_22619A7B4(&v60, &qword_27D78DE20, &unk_2261E6280);
    v61 = v58;
    sub_22619A7B4(&v61, &qword_27D78DE20, &unk_2261E6280);
    *&v51 = v27;
    *(&v51 + 1) = v29;
    v35 = v31 & 1;
    LOBYTE(v52) = v35;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v36 = v27;
    *(v36 + 8) = v29;
    *(v36 + 16) = v35;
    return result;
  }

  *&v51 = v27;
  *(&v51 + 1) = v29;

  v32 = v47;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v74 + 56))(v11, 1, 1, v32);
    (*(v50 + 8))(v11, v7);
    v42 = sub_2261E3FEC();
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v54 = v51;
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
    MEMORY[0x22AA782B0](v27, v29);
    sub_22619C81C(v27, v29, v31, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v65 = v58;
    v66 = v57;
    v67 = v56;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    sub_22619C894();
    v43 = sub_2261E423C();
    v45 = v44;
    sub_22619A7B4(&v67, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v66, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v65, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v43, v45);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v42, v54, *(&v54 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 111);

    v46 = v48;
    *v48 = 0xD000000000000025;
    v46[1] = 0x80000002261EBC60;
    *(v46 + 16) = 1;
    sub_22619C7B4();
    goto LABEL_14;
  }

  sub_22619C81C(v27, v29, v31, 0);
  v62 = v56;
  sub_22619A7B4(&v62, &qword_27D78DE20, &unk_2261E6280);
  v63 = v57;
  sub_22619A7B4(&v63, &qword_27D78DE20, &unk_2261E6280);
  v64 = v58;
  sub_22619A7B4(&v64, &qword_27D78DE20, &unk_2261E6280);
  v33 = v74;
  (*(v74 + 56))(v11, 0, 1, v32);
  v34 = *(v33 + 32);
  v34(v14, v11, v32);
  v34(v48, v14, v32);
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2261DEFE0(uint64_t a1)
{
  v3 = sub_2261E3E2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppUUID(0);
  v9 = (a1 + *(v8 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    return 0xD000000000000024;
  }

  v30 = v8;
  sub_2261A9864();
  sub_2261A2CB8(v33);

  if (*(&v33[0] + 1) == 1)
  {
    goto LABEL_7;
  }

  v34 = v33[0];
  v35 = v33[1];
  v36 = v33[2];
  v28 = sub_2261A54B0();
  v29 = v1;
  v13 = v3;
  v15 = v14;
  v37 = v34;
  sub_22619A7B4(&v37, &qword_27D78DE20, &unk_2261E6280);
  v38 = v35;
  sub_22619A7B4(&v38, &qword_27D78DE20, &unk_2261E6280);
  v39 = v36;
  v16 = v4;
  v17 = v15;
  v18 = v13;
  v19 = v29;
  sub_22619A7B4(&v39, &qword_27D78DE20, &unk_2261E6280);
  if (!v17)
  {
LABEL_7:
    v24 = 0xD000000000000016;
    v25 = sub_2261E3FEC();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2261E410C();

    v31 = 0xD000000000000019;
    v32 = 0x80000002261EBB90;
    sub_2261DF364();
    v26 = sub_2261E423C();
    MEMORY[0x22AA782B0](v26);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v25, v31, v32, 0xD00000000000006CLL, 0x80000002261EE710, 130);
  }

  else
  {
    v20 = *(v19 + 56);

    v21 = sub_2261A30F4();

    v22 = sub_2261A3324(v21, 4u);
    v31 = sub_22619A85C(v22);
    v32 = v23;
    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    MEMORY[0x22AA782B0](v28, v17);

    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    MEMORY[0x22AA782B0](v10, v11);
    sub_2261E3E1C();
    v24 = sub_2261E3DEC();

    (*(v16 + 8))(v7, v18);
  }

  return v24;
}

unint64_t sub_2261DF364()
{
  result = qword_27D78E2F8;
  if (!qword_27D78E2F8)
  {
    type metadata accessor for AppUUID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2F8);
  }

  return result;
}

void sub_2261DF3BC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = sub_2261E406C();
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v7 = &v62 - v6;
  v8 = sub_2261E3E2C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2F0, &unk_2261E8C30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v62 - v18;
  sub_2261C34C0(&v62 - v18);
  v20 = type metadata accessor for AppUUID(0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = sub_2261DE21C();
  v72 = v3;
  if (v3)
  {
    sub_22619A7B4(v19, &qword_27D78E2F0, &unk_2261E8C30);
    return;
  }

  v24 = v21;
  v25 = v22;
  v26 = v23;
  v64 = v15;
  v65 = v12;
  v66 = v7;
  v67 = a1;
  v27 = v71;
  sub_22619A7B4(v19, &qword_27D78E2F0, &unk_2261E8C30);
  if ((v26 & 0x100) != 0)
  {
    v73 = v24;
    v74 = v25;
    v75 = v26 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v56 = v24;
    *(v56 + 8) = v25;
    *(v56 + 16) = v26 & 1;
    return;
  }

  v28 = *(v2 + 48);
  v29 = sub_2261E1EC4(v24, v25);
  v31 = v30;
  v33 = v32;
  sub_22619C81C(v24, v25, v26, 0);
  if ((v33 & 0x100) != 0)
  {
    v73 = v29;
    v74 = v31;
    v57 = v33 & 1;
    v75 = v57;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v58 = v29;
    *(v58 + 8) = v31;
    *(v58 + 16) = v57;
    return;
  }

  type metadata accessor for CFData(0);
  v35 = sub_2261DFE64(v29, v31, v34);
  v36 = v31;
  v37 = v35;
  v39 = v38;
  v41 = v40;
  sub_22619C81C(v29, v36, v33, 0);
  if ((v41 & 0x100) != 0)
  {
    v73 = v37;
    v74 = v39;
    v75 = v41 & 1;
    sub_22619C838();
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v59 = v37;
    *(v59 + 8) = v39;
    *(v59 + 16) = v41 & 1;
    sub_2261795CC(v37, v39, v41, 1);
    return;
  }

  if (v37)
  {
    v62 = v37;
    v42 = sub_2261E3BBC();
    v44 = v43;
    v63 = v37;
    sub_2261795CC(v37, v39, v41, 0);
    sub_2261E3E1C();
    v45 = sub_2261E3DFC();
    LODWORD(v65) = v41;
    v47 = v46;
    sub_22619C840(v42, v44);
    v73 = v45;
    v74 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v48 = v66;
    v49 = v67;
    v50 = swift_dynamicCast();
    v51 = v70;
    if ((v50 & 1) == 0)
    {
      v60 = *(v69 + 56);
      v69 = v39;
      v60(v48, 1, 1, v49);
      (*(v68 + 8))(v48, v51);
      v61 = sub_2261E3FFC();
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261EE830);
      v76 = v62;
      sub_2261E413C();
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v61, v73, v74, 0xD00000000000006CLL, 0x80000002261EE710, 71);

      sub_2261795CC(v63, v69, v65, 0);
      *v27 = 0xD000000000000027;
      *(v27 + 8) = 0x80000002261EE870;
      *(v27 + 16) = 1;
      sub_22619C7B4();
      sub_2261E434C();
      goto LABEL_15;
    }

    sub_2261795CC(v63, v39, v65, 0);
    v52 = v69;
    v53 = *(v69 + 56);
    v53(v48, 0, 1, v49);
    v54 = *(v52 + 32);
    v55 = v64;
    v54(v64, v48, v49);
    v54(v27, v55, v49);
    v53(v27, 0, 1, v49);
    sub_22619C7B4();
  }

  else
  {
    (*(v69 + 56))(v27, 1, 1, v67);
    sub_22619C7B4();
  }

  sub_2261E434C();
LABEL_15:
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261DFAC0()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v4 = sub_2261E3CDC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261DFB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  type metadata accessor for KeychainController();
  v14 = sub_2261A2B48();
  v15 = *v14;
  v16 = v14[1];

  *(v13 + 6) = sub_2261DFDC8(v15, v16);
  *(v13 + 7) = 0;
  v17 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v18 = sub_2261A51A0();
  v19 = sub_2261E3CDC();
  result = (*(*(v19 - 8) + 16))(&v13[v17], v18, v19);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = a4;
  *a5 = v13;
  return result;
}

uint64_t type metadata accessor for AppUUIDDataManager()
{
  result = qword_28136F920;
  if (!qword_28136F920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261DFD14()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261DFDC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger;
  v9 = sub_2261A50F8();
  v10 = sub_2261E3CDC();
  (*(*(v10 - 8) + 16))(v7 + v8, v9, v10);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

_OWORD *sub_2261DFE64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v90 = a3;
  v96 = *MEMORY[0x277D85DE8];
  v7 = sub_2261E3CDC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v86 - v13;
  if (!a2 && !*(v3 + 24))
  {
    v69 = sub_2261E3FFC();
    sub_2261A4EAC(v69, 0xD000000000000040, 0x80000002261EE8D0, 0xD00000000000006FLL, 0x80000002261EE920, 30);
    v42 = 0xD000000000000013;
    goto LABEL_40;
  }

  v91 = a1;
  v88 = v12;
  v89 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v16 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v17 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  v19 = v18;
  *(inited + 40) = v17;
  v20 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v21 = sub_2261E0978();
  v86 = v16;
  v22 = v17;
  v23 = v20;
  v24 = sub_2261E402C();
  *(inited + 104) = v21;
  *(inited + 80) = v24;
  v25 = sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  swift_arrayDestroy();
  if (!a2)
  {
    v35 = *MEMORY[0x277CDC550];
    v36 = sub_2261E402C();
    v95 = v21;
    *&v94 = v36;
    sub_22619A7A4(&v94, result);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v25;
    sub_2261CAD8C(result, v35, isUniquelyReferenced_nonNull_native);
    v31 = v92;
    v33 = *MEMORY[0x277CDC428];
    v38 = *MEMORY[0x277CDC430];
    v95 = v19;
    *&v94 = v38;
    sub_22619A7A4(&v94, result);
    v39 = v38;
    goto LABEL_10;
  }

  v26 = HIBYTE(a2) & 0xF;
  v27 = v91;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    v55 = v88;
    v56 = v89;
    (*(v88 + 16))(v14, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v89);

    v57 = sub_2261E3FFC();
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000020, 0x80000002261EEA10);
    MEMORY[0x22AA782B0](v27, a2);

    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    v58 = *(v4 + 24);
    if (v58)
    {
      v59 = *(v4 + 16);
      v60 = *(v4 + 24);
    }

    else
    {
      v59 = 7104878;
      v58 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v59, v58);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v57, v94, *(&v94 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 41);

    (*(v55 + 8))(v14, v56);
    v42 = 0xD000000000000017;
    goto LABEL_40;
  }

  v28 = *MEMORY[0x277CDC080];
  v29 = MEMORY[0x277D837D0];
  v95 = MEMORY[0x277D837D0];
  *&v94 = v91;
  *(&v94 + 1) = a2;
  sub_22619A7A4(&v94, result);
  swift_bridgeObjectRetain_n();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v25;
  sub_2261CAD8C(result, v28, v30);
  v31 = v92;
  type metadata accessor for CFData(0);
  if (v32 != v90)
  {

    v33 = *MEMORY[0x277CDC568];
    v34 = sub_2261E402C();
    v95 = v21;
    *&v94 = v34;
    sub_22619A7A4(&v94, result);
LABEL_10:
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v31;
    v41 = v33;
    goto LABEL_11;
  }

  v70 = *MEMORY[0x277CDBFB8];
  v95 = v29;
  *&v94 = v27;
  *(&v94 + 1) = a2;
  sub_22619A7A4(&v94, result);

  v71 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v31;
  sub_2261CAD8C(result, v70, v71);
  v72 = v92;
  v73 = *MEMORY[0x277CDBF20];
  v95 = v29;
  *&v94 = v27;
  *(&v94 + 1) = a2;
  sub_22619A7A4(&v94, result);

  v74 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v72;
  sub_2261CAD8C(result, v73, v74);
  v75 = v92;
  v76 = *MEMORY[0x277CDC120];
  v95 = v29;
  *&v94 = v27;
  *(&v94 + 1) = a2;
  sub_22619A7A4(&v94, result);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v75;
  sub_2261CAD8C(result, v76, v77);
  v78 = v92;
  v79 = *MEMORY[0x277CDC558];
  v80 = sub_2261E402C();
  v95 = v21;
  *&v94 = v80;
  sub_22619A7A4(&v94, result);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v78;
  sub_2261CAD8C(result, v79, v81);
  v82 = v92;
  v83 = *MEMORY[0x277CDC238];
  v95 = v19;
  *&v94 = v83;
  sub_22619A7A4(&v94, result);
  v84 = v83;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v82;
  v41 = v86;
LABEL_11:
  v42 = sub_2261CAD8C(result, v41, v40);
  v43 = v92;
  v44 = *(v4 + 16);
  v45 = *(v4 + 24);
  if (!v45)
  {
    goto LABEL_16;
  }

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    v42 = 0xD00000000000001ELL;
LABEL_40:
    v85 = *MEMORY[0x277D85DE8];
    return v42;
  }

  v47 = *MEMORY[0x277CDBEC8];
  v95 = MEMORY[0x277D837D0];
  *&v94 = v44;
  *(&v94 + 1) = v45;
  sub_22619A7A4(&v94, result);

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v43;
  v42 = sub_2261CAD8C(result, v47, v48);
  v43 = v92;
LABEL_16:
  if (*MEMORY[0x277CDC5D0])
  {
    v49 = *MEMORY[0x277CDC5D0];
    v50 = sub_2261E402C();
    v95 = v21;
    *&v94 = v50;
    sub_22619A7A4(&v94, result);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v43;
    sub_2261CAD8C(result, v49, v51);

    result[0] = 0;
    sub_2261E2428(&qword_28136E200, type metadata accessor for CFString);
    v52 = sub_2261E3D4C();
    v53 = SecItemCopyMatching(v52, result);

    if (v53 != -25300 && v53)
    {
      v61 = v44;
      v62 = 7104878;
      (*(v88 + 16))(v87, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v89);
      v63 = sub_2261E3FFC();
      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EE990);
      LODWORD(v92) = v53;
      v64 = sub_2261E423C();
      MEMORY[0x22AA782B0](v64);

      MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
      if (a2)
      {
        v65 = v91;
      }

      else
      {
        v65 = 7104878;
      }

      v66 = 0xE300000000000000;
      if (a2)
      {
        v67 = a2;
      }

      else
      {
        v67 = 0xE300000000000000;
      }

      MEMORY[0x22AA782B0](v65, v67);

      MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
      if (v45)
      {

        v62 = v61;
        v66 = v45;
      }

      MEMORY[0x22AA782B0](v62, v66);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v68 = v87;
      sub_2261A4EAC(v63, v94, *(&v94 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 78);

      (*(v88 + 8))(v68, v89);
      swift_unknownObjectRelease();
      v42 = 0xD000000000000020;
    }

    else
    {

      v42 = result[0];
      if (result[0])
      {
        *&v94 = result[0];
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v54 = v92;
          swift_unknownObjectRelease();
          v42 = v54;
        }

        else
        {
          swift_unknownObjectRelease();
          v42 = 0;
        }
      }
    }

    goto LABEL_40;
  }

  __break(1u);
  return v42;
}

unint64_t sub_2261E0978()
{
  result = qword_28136E1A0;
  if (!qword_28136E1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1A0);
  }

  return result;
}

_OWORD *sub_2261E09C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v100 = *MEMORY[0x277D85DE8];
  v10 = sub_2261E3CDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v21 = sub_2261E3FFC();
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v98 = 0xD000000000000020;
    *(&v98 + 1) = 0x80000002261EEA10;
    MEMORY[0x22AA782B0](a2, a3);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v21, v98, *(&v98 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 94);

    v20 = 0xD000000000000017;
    goto LABEL_27;
  }

  v16 = sub_2261E14D0(a2, a3, a4);
  if (v18 != -1)
  {
    sub_2261E2410(v16, v17, v18);
    v19 = sub_2261E3FFC();
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v98 = 0xD00000000000002ELL;
    *(&v98 + 1) = 0x80000002261EEAC0;
    MEMORY[0x22AA782B0](a2, a3);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v19, v98, *(&v98 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 99);

    v20 = 0xD000000000000025;
LABEL_27:
    v88 = *MEMORY[0x277D85DE8];
    return v20;
  }

  v93 = a1;
  v94 = a4;
  v90 = v14;
  v91 = v11;
  v92 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  v20 = swift_allocObject();
  v20[1] = xmmword_2261E5760;
  v22 = *MEMORY[0x277CDC080];
  *(v20 + 4) = *MEMORY[0x277CDC080];
  v23 = MEMORY[0x277D837D0];
  *(v20 + 5) = a2;
  *(v20 + 6) = a3;
  v24 = *MEMORY[0x277CDBED8];
  *(v20 + 8) = v23;
  *(v20 + 9) = v24;
  v25 = *MEMORY[0x277CDBF00];
  if (*MEMORY[0x277CDBF00])
  {
    v26 = v20;
    type metadata accessor for CFString(0);
    v26[10] = v25;
    v27 = *MEMORY[0x277CDC5C8];
    v95 = v28;
    v26[13] = v28;
    v26[14] = v27;
    v29 = sub_2261E0978();
    v30 = v22;

    v31 = v24;
    v32 = v27;
    v33 = v25;
    v34 = sub_2261E402C();
    v26[18] = v29;
    v26[15] = v34;
    v35 = sub_2261CB294(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
    swift_arrayDestroy();
    v20 = swift_deallocClassInstance();
    if (*MEMORY[0x277CDC5D0])
    {
      v36 = *MEMORY[0x277CDC5D0];
      v37 = sub_2261E402C();
      v99 = v29;
      *&v98 = v37;
      sub_22619A7A4(&v98, result);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v35;
      sub_2261CAD8C(result, v36, isUniquelyReferenced_nonNull_native);

      v39 = v96;
      type metadata accessor for CFData(0);
      v41 = v93;
      v40 = v94;
      if (v42 == v94)
      {
        v52 = *MEMORY[0x277CDBFB8];
        v53 = MEMORY[0x277D837D0];
        v99 = MEMORY[0x277D837D0];
        *&v98 = a2;
        *(&v98 + 1) = a3;
        sub_22619A7A4(&v98, result);

        v54 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v39;
        sub_2261CAD8C(result, v52, v54);
        v55 = v96;
        v56 = *MEMORY[0x277CDBF20];
        v99 = v53;
        *&v98 = a2;
        *(&v98 + 1) = a3;
        sub_22619A7A4(&v98, result);

        v57 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v55;
        sub_2261CAD8C(result, v56, v57);
        v58 = v96;
        v59 = *MEMORY[0x277CDC120];
        v99 = v53;
        *&v98 = a2;
        *(&v98 + 1) = a3;
        sub_22619A7A4(&v98, result);

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v58;
        sub_2261CAD8C(result, v59, v60);
        v61 = v96;
        v62 = *MEMORY[0x277CDC228];
        v63 = *MEMORY[0x277CDC238];
        v99 = v95;
        *&v98 = v63;
        sub_22619A7A4(&v98, result);
        v64 = v63;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v61;
        sub_2261CAD8C(result, v62, v65);
        v66 = v96;
        v67 = *MEMORY[0x277CDC5E8];
        v99 = v40;
        *&v98 = v41;
        sub_22619A7A4(&v98, result);
        swift_unknownObjectRetain();
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v66;
        sub_2261CAD8C(result, v67, v68);
        v50 = v96;
        v51 = MEMORY[0x277CDC560];
      }

      else
      {
        v43 = *MEMORY[0x277CDC228];
        v44 = *MEMORY[0x277CDC250];
        v99 = v95;
        *&v98 = v44;
        sub_22619A7A4(&v98, result);
        v45 = v44;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v39;
        sub_2261CAD8C(result, v43, v46);
        v47 = v96;
        v48 = *MEMORY[0x277CDC5F8];
        v99 = v40;
        *&v98 = v41;
        sub_22619A7A4(&v98, result);
        swift_unknownObjectRetain();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v47;
        sub_2261CAD8C(result, v48, v49);
        v50 = v96;
        v51 = MEMORY[0x277CDC568];
      }

      v69 = *v51;
      v70 = sub_2261E402C();
      v99 = v29;
      *&v98 = v70;
      sub_22619A7A4(&v98, result);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v50;
      sub_2261CAD8C(result, v69, v71);
      v72 = v96;
      v74 = *(v5 + 16);
      v73 = *(v5 + 24);
      if (v73)
      {
        v75 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v75 = v74 & 0xFFFFFFFFFFFFLL;
        }

        if (!v75)
        {
          v83 = *(v5 + 24);

          v84 = sub_2261E3FFC();
          *&v98 = 0;
          *(&v98 + 1) = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000027, 0x80000002261EEA90);
          MEMORY[0x22AA782B0](a2, a3);
          MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
          MEMORY[0x22AA782B0](v74, v73);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v84, v98, *(&v98 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 130);

          v20 = 0xD00000000000001ELL;
          goto LABEL_27;
        }

        v76 = *MEMORY[0x277CDBEC8];
        v99 = MEMORY[0x277D837D0];
        v77 = v74;
        *&v98 = v74;
        *(&v98 + 1) = v73;
        sub_22619A7A4(&v98, result);

        v78 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v72;
        sub_2261CAD8C(result, v76, v78);
      }

      else
      {
        v77 = *(v5 + 16);
      }

      result[0] = 0;
      sub_2261E2428(&qword_28136E200, type metadata accessor for CFString);
      v79 = sub_2261E3D4C();
      v80 = SecItemAdd(v79, result);

      if (v80)
      {
        (*(v91 + 16))(v90, v5 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v92);
        LODWORD(v95) = sub_2261E3FFC();
        *&v98 = 0;
        *(&v98 + 1) = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EEA60);
        LODWORD(v96) = v80;
        v81 = sub_2261E423C();
        MEMORY[0x22AA782B0](v81);

        MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
        MEMORY[0x22AA782B0](a2, a3);
        MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
        if (v73)
        {
        }

        else
        {
          v73 = 0xE300000000000000;
          v77 = 7104878;
        }

        MEMORY[0x22AA782B0](v77, v73);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v85 = v90;
        sub_2261A4EAC(v95, v98, *(&v98 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 140);

        (*(v91 + 8))(v85, v92);
        *&v98 = 0;
        *(&v98 + 1) = 0xE000000000000000;
        sub_2261E410C();

        *&v98 = 0xD00000000000002ALL;
        *(&v98 + 1) = 0x80000002261EEA60;
        LODWORD(v96) = v80;
        v86 = sub_2261E423C();
        MEMORY[0x22AA782B0](v86);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v87 = v98;
        swift_unknownObjectRelease();
        v20 = v87;
      }

      else
      {

        v20 = result[0];
        if (result[0])
        {
          *&v98 = result[0];
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v82 = v96;
            swift_unknownObjectRelease();
            v20 = v82;
          }

          else
          {
            swift_unknownObjectRelease();
            v20 = 0;
          }
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v20;
}

uint64_t sub_2261E14D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v66 = sub_2261E3CDC();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  v8 = MEMORY[0x28223BE20](v66);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v62 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v12 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v13 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  v15 = v14;
  *(inited + 40) = v13;
  v16 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = sub_2261E0978();
  v63 = v12;
  v18 = v13;
  v19 = v16;
  v20 = sub_2261E402C();
  *(inited + 104) = v17;
  *(inited + 80) = v20;
  v21 = sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  result = swift_arrayDestroy();
  if (!*MEMORY[0x277CDC5D0])
  {
    __break(1u);
    return result;
  }

  v23 = *MEMORY[0x277CDC5D0];
  v24 = sub_2261E402C();
  v71 = v17;
  *&v70 = v24;
  sub_22619A7A4(&v70, v69);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v21;
  sub_2261CAD8C(v69, v23, isUniquelyReferenced_nonNull_native);

  v26 = v68;
  if (a2)
  {
    v27 = HIBYTE(a2) & 0xF;
    v28 = a1;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v27 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {

      v35 = sub_2261E3FFC();
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v70 = 0xD000000000000020;
      *(&v70 + 1) = 0x80000002261EEA10;
      MEMORY[0x22AA782B0](a1, a2);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v35, v70, *(&v70 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 169);

      return 0xD000000000000017;
    }

    type metadata accessor for CFData(0);
    v29 = *MEMORY[0x277CDC080];
    if (v30 == v67)
    {
      v36 = MEMORY[0x277D837D0];
      v71 = MEMORY[0x277D837D0];
      *&v70 = v28;
      *(&v70 + 1) = a2;
      sub_22619A7A4(&v70, v69);
      swift_bridgeObjectRetain_n();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v26;
      sub_2261CAD8C(v69, v29, v37);
      v38 = v68;
      v39 = *MEMORY[0x277CDBFB8];
      v71 = v36;
      *&v70 = v28;
      *(&v70 + 1) = a2;
      sub_22619A7A4(&v70, v69);

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v38;
      sub_2261CAD8C(v69, v39, v40);
      v41 = v68;
      v42 = *MEMORY[0x277CDBF20];
      v71 = v36;
      *&v70 = v28;
      *(&v70 + 1) = a2;
      sub_22619A7A4(&v70, v69);

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v41;
      sub_2261CAD8C(v69, v42, v43);
      v44 = v68;
      v45 = *MEMORY[0x277CDC120];
      v71 = v36;
      *&v70 = v28;
      *(&v70 + 1) = a2;
      sub_22619A7A4(&v70, v69);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v44;
      v32 = v45;
    }

    else
    {
      v71 = MEMORY[0x277D837D0];
      *&v70 = a1;
      *(&v70 + 1) = a2;
      sub_22619A7A4(&v70, v69);

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v26;
      v32 = v29;
    }

    sub_2261CAD8C(v69, v32, v31);
    v26 = v68;
    v34 = *(v4 + 16);
    v33 = *(v4 + 24);
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = a1;
    v34 = *(v4 + 16);
    v33 = *(v4 + 24);
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  v46 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v46 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
    v58 = v62;
    (*(v65 + 16))(v62, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v66);

    v59 = sub_2261E3FFC();
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000027, 0x80000002261EEA90);
    if (a2)
    {
    }

    else
    {
      v28 = 7104878;
      a2 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v28, a2);

    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    MEMORY[0x22AA782B0](v34, v33);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v59, v70, *(&v70 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 185);

    (*(v65 + 8))(v58, v66);
    return 0xD00000000000001ELL;
  }

  v47 = *MEMORY[0x277CDBEC8];
  v71 = MEMORY[0x277D837D0];
  *&v70 = v34;
  *(&v70 + 1) = v33;
  sub_22619A7A4(&v70, v69);

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v26;
  sub_2261CAD8C(v69, v47, v48);
  v26 = v68;
LABEL_17:
  type metadata accessor for CFData(0);
  if (v49 == v67)
  {
    v50 = *MEMORY[0x277CDC238];
    v71 = v15;
    *&v70 = v50;
    sub_22619A7A4(&v70, v69);
    v51 = v50;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v26;
    sub_2261CAD8C(v69, v63, v52);
  }

  sub_2261E2428(&qword_28136E200, type metadata accessor for CFString);
  v53 = sub_2261E3D4C();
  v54 = SecItemDelete(v53);

  if (v54 != -25300 && v54)
  {
    (*(v65 + 16))(v64, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v66);
    v55 = sub_2261E3FFC();
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EEB20);
    LODWORD(v69[0]) = v54;
    v56 = sub_2261E423C();
    MEMORY[0x22AA782B0](v56);

    MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
    if (a2)
    {
      v57 = a2;
    }

    else
    {
      v28 = 0;
      v57 = 0xE000000000000000;
    }

    MEMORY[0x22AA782B0](v28, v57);

    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    if (v33)
    {
    }

    else
    {
      v34 = 7104878;
      v33 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v34, v33);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v60 = v64;
    sub_2261A4EAC(v55, v70, *(&v70 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 198);

    (*(v65 + 8))(v60, v66);
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v70 = 0xD00000000000002ELL;
    *(&v70 + 1) = 0x80000002261EEB50;
    LODWORD(v69[0]) = v54;
    v61 = sub_2261E423C();
    MEMORY[0x22AA782B0](v61);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    return v70;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2261E1EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2261E3D3C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2261E3D2C();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2261E3E2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261E3E1C();
  v16 = a1;
  v17 = a2;
  v18 = sub_2261E3DEC();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  v36 = v20 >> 60;
  if (v20 >> 60 == 15)
  {
    v21 = 0xD000000000000012;
    v22 = sub_2261E3FFC();
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_2261E410C();

    v39 = 0xD00000000000002ELL;
    v40 = 0x80000002261EEB80;
    MEMORY[0x22AA782B0](v16, v17);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v22, v39, v40, 0xD00000000000006FLL, 0x80000002261EE920, 207);
  }

  else
  {
    sub_2261E2428(&qword_28136E230, MEMORY[0x277CC5540]);
    sub_2261E3D1C();
    sub_22619D8F4(v18, v20);
    sub_22619D714(v18, v20);
    sub_2261A28B8(v18, v20);
    v23 = v33;
    sub_2261E3D0C();
    (*(v34 + 8))(v7, v4);
    v41 = v8;
    v42 = sub_2261E2428(&qword_28136E238, MEMORY[0x277CC5290]);
    v24 = __swift_allocate_boxed_opaque_existential_1(&v39);
    v25 = v35;
    (*(v35 + 16))(v24, v23, v8);
    __swift_project_boxed_opaque_existential_0(&v39, v41);
    sub_2261E3ADC();
    (*(v25 + 8))(v23, v8);
    v26 = v37;
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_0(&v39);
    v28 = sub_2261A2B54();
    v30 = *v28;
    v29 = *(v28 + 1);
    v39 = v30;
    v40 = v29;

    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    v31 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v31);

    sub_22619C840(v26, v27);
    sub_2261A28B8(v18, v20);
    return v39;
  }

  return v21;
}

uint64_t sub_2261E236C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger;
  v3 = sub_2261E3CDC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261E2410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22619C830();
  }

  return result;
}

uint64_t sub_2261E2428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for KeychainController()
{
  result = qword_28136EF48;
  if (!qword_28136EF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261E24C4()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261E2560(uint64_t *a1)
{
  v4 = sub_2261E2AE0(a1);
  if (v2)
  {
    return v1;
  }

  v5 = v4;
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E5760;
  v7 = sub_2261E3DAC();
  v8 = objc_opt_self();
  v9 = [v8 cborWithUTF8String_];

  *(inited + 32) = v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = sub_2261E3B8C();
  v13 = [v8 cborWithData_];

  *(inited + 40) = v13;
  v14 = sub_2261E3DAC();
  v15 = [v8 cborWithUTF8String_];

  *(inited + 48) = v15;
  v16 = sub_2261E3DAC();
  v17 = [v8 cborWithUTF8String_];

  *(inited + 56) = v17;
  v18 = sub_2261E3DAC();
  v19 = [v8 cborWithUTF8String_];

  *(inited + 64) = v19;
  *(inited + 72) = v5;
  v51 = v5;
  sub_2261CEFA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v20 = sub_2261E3D4C();

  v21 = [v8 cborWithDictionary_];

  v22 = a1[6];
  if (v22 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v23 = a1[5];
  v25 = a1[7];
  v24 = a1[8];
  sub_22619D8F4(v23, a1[6]);
  sub_22619D8F4(v25, v24);
  v49 = v21;
  v26 = [v21 dictionary];
  if (!v26)
  {
    v34 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
    v35 = sub_2261E3FFC();
    v1 = v50 + v34;
    sub_2261A4EAC(v35, 0xD000000000000029, 0x80000002261EDB20, 0xD000000000000070, 0x80000002261EEC10, 57);
    sub_22619C7B4();
    swift_allocError();
    *v36 = 0xD000000000000029;
    *(v36 + 8) = 0x80000002261EDB20;
    *(v36 + 16) = 1;
    swift_willThrow();

    sub_2261B52AC(v23, v22, v25, v24);
    v37 = v49;
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_2261E3D6C();

  v47 = v24;
  v48 = v25;
  v29 = sub_2261E335C();
  v30 = sub_2261E3DAC();
  v31 = [v8 cborWithUTF8String_];

  if ((v28 & 0xC000000000000001) == 0)
  {
    v38 = v29;
    goto LABEL_11;
  }

  if (v28 >= 0)
  {
    v28 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v32 = v29;
  result = sub_2261E416C();
  if (!__OFADD__(result, 1))
  {
    sub_2261CE790(v28, result + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CEC14(v29, v31, isUniquelyReferenced_nonNull_native);

    v40 = sub_2261E3D4C();

    v21 = [v8 cborWithDictionary_];

    sub_2261B52AC(v23, v22, v48, v47);
LABEL_12:
    v41 = v21;
    v42 = sub_2261E3B4C();
    if (v43 >> 60 != 15)
    {
      v1 = v42;

      return v1;
    }

    v44 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
    v45 = sub_2261E3FFC();
    v1 = v50 + v44;
    sub_2261A4EAC(v45, 0xD00000000000001FLL, 0x80000002261EDA90, 0xD000000000000070, 0x80000002261EEC10, 80);
    sub_22619C7B4();
    swift_allocError();
    *v46 = 0xD00000000000001FLL;
    *(v46 + 8) = 0x80000002261EDA90;
    *(v46 + 16) = 1;
    swift_willThrow();

    v37 = v51;
LABEL_14:

    return v1;
  }

  __break(1u);
  return result;
}

char *sub_2261E2AE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v19 = *(a1 + 16);
    }

    v20 = v2;
    v21 = sub_2261E416C();
    v2 = v20;
    v3 = v21;
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = v2;
      *&v60[0] = MEMORY[0x277D84F90];
      result = sub_2261E3230(0, v3 & ~(v3 >> 63), 0);
      if ((v3 & 0x8000000000000000) == 0)
      {
        v54 = a1;
        v6 = 0;
        v7 = *&v60[0];
        v8 = v4;
        v62 = v4 & 0xC000000000000001;
        v9 = v4;
        do
        {
          if (v62)
          {
            v10 = MEMORY[0x22AA78540](v6, v8);
          }

          else
          {
            v10 = *(v8 + 8 * v6 + 32);
          }

          v11 = v10;
          v12 = sub_2261A2658();
          v14 = v13;

          *&v60[0] = v7;
          v16 = v7[2];
          v15 = v7[3];
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_2261E3230((v15 > 1), v16 + 1, 1);
            v7 = *&v60[0];
          }

          ++v6;
          v7[2] = v17;
          v18 = &v7[2 * v16];
          v18[4] = v12;
          v18[5] = v14;
          v8 = v9;
        }

        while (v3 != v6);
        goto LABEL_17;
      }

      __break(1u);
      return result;
    }
  }

  v7 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (v17)
  {
    v54 = a1;
LABEL_17:
    v22 = v7[4];
    v23 = v7[5];
    v24 = &v7[2 * v17 + 4];
    v25 = *(v24 - 16);
    v26 = *(v24 - 8);
    sub_22619D8F4(v22, v23);
    sub_22619D8F4(v25, v26);

    sub_22619D8F4(v22, v23);
    v27 = sub_2261E3B8C();
    v28 = objc_opt_self();
    v29 = [v28 cborWithData_];

    sub_22619C840(v22, v23);
    sub_22619D8F4(v25, v26);
    v62 = v25;
    v30 = sub_2261E3B8C();
    v31 = [v28 &selRef:v30 base64EncodedStringWithOptions:? + 6];

    sub_22619C840(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E308, qword_2261E8D30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2261E8D20;
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    sub_2261CF098();
    v53 = v29;
    v52 = v31;
    v33 = sub_2261E3F1C();

    v34 = [v28 cborWithArray_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2261E6800;
    v36 = sub_2261E3DAC();
    v37 = [v28 cborWithUTF8String_];

    *(inited + 32) = v37;
    *(inited + 40) = v34;
    v51 = v34;
    v38 = sub_2261E3DAC();
    v39 = [v28 cborWithUTF8String_];

    *(inited + 48) = v39;
    v40 = *(v54 + 24);
    v41 = *(v54 + 32);
    v42 = sub_2261E3B8C();
    v43 = [v28 cborWithData_];

    *(inited + 56) = v43;
    sub_2261CEFA0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
    swift_arrayDestroy();
    sub_2261CF0E4();
    v44 = sub_2261E3D4C();

    v45 = [v28 cborWithDictionary_];

    sub_22619C840(v22, v23);
    sub_22619C840(v62, v26);

    return v45;
  }

  v46 = sub_2261E3FFC();
  *&v60[0] = 0;
  *(&v60[0] + 1) = 0xE000000000000000;
  sub_2261E410C();

  v57 = *(a1 + 32);
  v58 = *(a1 + 48);
  v59 = *(a1 + 64);
  v55 = *a1;
  v56 = *(a1 + 16);
  sub_2261E355C(a1, v60);
  sub_2261D395C();
  v47 = sub_2261E423C();
  v49 = v48;
  v60[2] = v57;
  v60[3] = v58;
  v61 = v59;
  v60[0] = v55;
  v60[1] = v56;
  sub_2261E35B8(v60);
  MEMORY[0x22AA782B0](v47, v49);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v46, 0xD000000000000020, 0x80000002261EEC90, 0xD000000000000070, 0x80000002261EEC10, 95);

  sub_22619C7B4();
  swift_allocError();
  *v50 = 0xD00000000000001DLL;
  *(v50 + 8) = 0x80000002261EECC0;
  *(v50 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2261E30C4()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261E3160()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
  v5 = sub_2261A5280();
  v6 = sub_2261E3CDC();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  return v3;
}

uint64_t sub_2261E31E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *v1;
  return sub_2261E2560(v6);
}

char *sub_2261E3230(char *a1, int64_t a2, char a3)
{
  result = sub_2261E3250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2261E3250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2E8, &unk_2261E8C20);
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

id sub_2261E335C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v1 = sub_2261E3DAC();
  v2 = objc_opt_self();
  v3 = [v2 cborWithUTF8String_];

  *(inited + 32) = v3;
  v4 = sub_2261E3B8C();
  v5 = [v2 cborWithData_];

  *(inited + 40) = v5;
  v6 = sub_2261E3DAC();
  v7 = [v2 cborWithUTF8String_];

  *(inited + 48) = v7;
  v8 = sub_2261E3B8C();
  v9 = [v2 cborWithData_];

  *(inited + 56) = v9;
  sub_2261CEFA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v10 = sub_2261E3D4C();

  v11 = [v2 cborWithDictionary_];

  return v11;
}

uint64_t type metadata accessor for AttestationCBORManager()
{
  result = qword_28136EEA0;
  if (!qword_28136EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AppAttest_WebAuthentication_AttestKey_cold_2(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_226177000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
}