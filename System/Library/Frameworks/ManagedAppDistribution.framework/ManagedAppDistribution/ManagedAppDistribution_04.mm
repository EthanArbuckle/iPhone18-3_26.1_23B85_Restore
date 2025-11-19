uint64_t sub_1D959975C(uint64_t a1)
{
  v2 = sub_1D959DA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599798(uint64_t a1)
{
  v2 = sub_1D959DA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07488, &qword_1D95CA368);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DA48();
  sub_1D95C05BC();
  v12 = v8;
  sub_1D959DA9C();
  sub_1D95C03CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074A0, &qword_1D95CA370);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DA48();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D959DAF0();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D9599AD0()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1D9599B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D959E630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9599B4C(uint64_t a1)
{
  v2 = sub_1D959DB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599B88(uint64_t a1)
{
  v2 = sub_1D959DB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599BC4(uint64_t a1)
{
  v2 = sub_1D959DBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599C00(uint64_t a1)
{
  v2 = sub_1D959DBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599C3C(uint64_t a1)
{
  v2 = sub_1D959DC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599C78(uint64_t a1)
{
  v2 = sub_1D959DC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599CB4(uint64_t a1)
{
  v2 = sub_1D959DB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599CF0(uint64_t a1)
{
  v2 = sub_1D959DB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074B0, &qword_1D95CA378);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074B8, &qword_1D95CA380);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074C0, &qword_1D95CA388);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074C8, &qword_1D95CA390);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DB44();
  sub_1D95C05BC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D959DBEC();
      v12 = v26;
      sub_1D95C034C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D959DB98();
      v12 = v29;
      sub_1D95C034C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D959DC40();
    sub_1D95C034C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074F0, &qword_1D95CA398);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074F8, &qword_1D95CA3A0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07500, &qword_1D95CA3A8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07508, &qword_1D95CA3B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_1D959DB44();
  v20 = v43;
  sub_1D95C059C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D95C032C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D954A26C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D95C01FC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v30 = &type metadata for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
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
          sub_1D959DBEC();
          sub_1D95C027C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D959DB98();
          v33 = v22;
          sub_1D95C027C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D959DC40();
        sub_1D95C027C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

unint64_t sub_1D959A668()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x65756C6156776172;
  }

  *v0;
  return result;
}

uint64_t sub_1D959A6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0CB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D959A78C(uint64_t a1)
{
  v2 = sub_1D959DC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959A7C8(uint64_t a1)
{
  v2 = sub_1D959DC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07510, &qword_1D95CA3B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DC94();
  sub_1D95C05BC();
  v13[2] = v8;
  v14 = v9;
  v18 = 0;
  sub_1D959DCE8();
  v11 = v13[1];
  sub_1D95C03CC();
  if (!v11)
  {
    v17 = v15;
    v16 = 1;
    sub_1D959DD3C();
    sub_1D95C03CC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07530, &qword_1D95CA3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DC94();
  sub_1D95C059C();
  if (!v2)
  {
    v19 = 0;
    sub_1D959DD90();
    sub_1D95C030C();
    v11 = v15;
    v12 = v16;
    v17 = 1;
    sub_1D959DDE4();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    v13 = v18;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 9) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D959ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684633189 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D959AC54(uint64_t a1)
{
  v2 = sub_1D959DE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959AC90(uint64_t a1)
{
  v2 = sub_1D959DE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D95D0CD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D95C041C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D959AD7C(uint64_t a1)
{
  v2 = sub_1D959DE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959ADB8(uint64_t a1)
{
  v2 = sub_1D959DE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehaviorEnum.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07548, &qword_1D95CA3C8);
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07550, &qword_1D95CA3D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v16 = *v1;
  v15[3] = *(v1 + 8);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DE38();
  sub_1D95C05BC();
  sub_1D959DE8C();
  sub_1D95C034C();
  v13 = v17;
  sub_1D95C037C();
  (*(v3 + 8))(v6, v13);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ManagedAppDeclaration.UpdateBehaviorEnum.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07568, &qword_1D95CA3D8);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07570, &qword_1D95CA3E0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DE38();
  sub_1D95C059C();
  if (v2)
  {
    goto LABEL_6;
  }

  v30 = a1;
  v13 = v37;
  v14 = v32;
  v15 = sub_1D95C032C();
  v16 = (2 * *(v15 + 16)) | 1;
  v33 = v15;
  v34 = v15 + 32;
  v35 = 0;
  v36 = v16;
  v17 = v11;
  if (sub_1D954217C() || v35 != v36 >> 1)
  {
    v18 = sub_1D95C01FC();
    swift_allocError();
    v19 = v8;
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v21 = &type metadata for ManagedAppDeclaration.UpdateBehaviorEnum;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v18 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v19);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_6:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  sub_1D959DE8C();
  sub_1D95C027C();
  v24 = sub_1D95C02BC();
  v26 = v25;
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v17, v8);
  swift_unknownObjectRelease();
  v27 = v30;
  v28 = v31;
  *v31 = v24;
  *(v28 + 8) = v26 & 1;
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t ManagedAppDeclaration.RemovalBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 1;
  return result;
}

unint64_t sub_1D959B41C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746172616C636564;
    v6 = 0x656D6567616E616DLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x654270756B636162;
    v2 = 0x6542657461647075;
    if (a1 != 7)
    {
      v2 = 0x6D726F6674616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0x426C6C6174736E69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D959B57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1D959B5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D959E748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D959B5E0(uint64_t a1)
{
  v2 = sub_1D959DEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959B61C(uint64_t a1)
{
  v2 = sub_1D959DEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07578, &qword_1D95CA3E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DEE0();
  sub_1D95C05BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v25) = 1;
    sub_1D95C038C();
    LOBYTE(v25) = *(v3 + 32);
    v27 = 2;
    sub_1D956C130();
    sub_1D95C03CC();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v25) = 3;
    sub_1D95C035C();
    v18 = v3[8];
    v25 = v3[7];
    v26 = v18;
    v27 = 4;
    sub_1D957E2D0(v25, v18);
    sub_1D959DF34();
    sub_1D95C036C();
    sub_1D955F8FC(v25, v26);
    v19 = type metadata accessor for ManagedAppDeclaration(0);
    v20 = v19[9];
    LOBYTE(v25) = 5;
    type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    sub_1D959D604(&qword_1ECB07590, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
    sub_1D95C03CC();
    LOBYTE(v25) = *(v3 + v19[10]);
    v27 = 6;
    sub_1D959DF88();
    sub_1D95C03CC();
    v21 = v3 + v19[11];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v21) = *(v21 + 9);
    v25 = v22;
    LOBYTE(v26) = v23;
    BYTE1(v26) = v21;
    v27 = 7;
    sub_1D959DFDC();
    sub_1D95C03CC();
    v25 = *(v3 + v19[12]);
    v27 = 8;
    sub_1D9547C90();
    sub_1D95C03CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ManagedAppDeclaration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075A8, &qword_1D95CA3F0);
  v33 = *(v35 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = v32 - v9;
  v11 = type metadata accessor for ManagedAppDeclaration(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + 7) = xmmword_1D95CA220;
  v15 = a1[3];
  v16 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_1D959DEE0();
  v36 = v10;
  sub_1D95C059C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);

    return sub_1D955F8FC(v14[7], v14[8]);
  }

  else
  {
    v32[2] = v4;
    v17 = v7;
    v18 = v33;
    v19 = v34;
    LOBYTE(v38) = 0;
    v20 = v14;
    *v14 = sub_1D95C02CC();
    v14[1] = v21;
    LOBYTE(v38) = 1;
    v14[2] = sub_1D95C02CC();
    v14[3] = v22;
    v40 = 2;
    sub_1D956C834();
    sub_1D95C030C();
    MEMORY[0x20] = v38;
    LOBYTE(v38) = 3;
    v14[5] = sub_1D95C029C();
    v14[6] = v24;
    v32[1] = v24;
    v40 = 4;
    sub_1D959E030();
    sub_1D95C02AC();
    v25 = v38;
    v26 = v39;
    sub_1D955F8FC(*(v20 + 56), *(v20 + 64));
    *(v20 + 56) = v25;
    *(v20 + 64) = v26;
    v27 = v36;
    LOBYTE(v38) = 5;
    sub_1D959D604(&qword_1ECB075B8, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
    sub_1D95C030C();
    sub_1D959D0B0(v17, v20 + v11[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
    v40 = 6;
    sub_1D959E084();
    sub_1D95C030C();
    *(v20 + v11[10]) = v38;
    v40 = 7;
    sub_1D959E0D8();
    v28 = v35;
    sub_1D95C030C();
    v29 = v39;
    v30 = BYTE1(v39);
    v31 = v20 + v11[11];
    *v31 = v38;
    *(v31 + 8) = v29;
    *(v31 + 9) = v30;
    v40 = 8;
    sub_1D9547F0C();
    sub_1D95C030C();
    (*(v18 + 8))(v27, v28);
    *(v20 + v11[12]) = v38;
    sub_1D959CFC0(v20, v19, type metadata accessor for ManagedAppDeclaration);
    __swift_destroy_boxed_opaque_existential_0(v37);
    return sub_1D959D994(v20, type metadata accessor for ManagedAppDeclaration);
  }
}

uint64_t StoreAppIdentifier.bundleID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t StoreAppIdentifier.itemID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t static StoreAppIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1D95C041C();
}

uint64_t sub_1D959C0EC(uint64_t a1)
{
  v2 = sub_1D959E180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C128(uint64_t a1)
{
  v2 = sub_1D959E180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959C164()
{
  if (*v0)
  {
    result = 0x4449656C646E7562;
  }

  else
  {
    result = 0x44496D657469;
  }

  *v0;
  return result;
}

uint64_t sub_1D959C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D959C274(uint64_t a1)
{
  v2 = sub_1D959E12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C2B0(uint64_t a1)
{
  v2 = sub_1D959E12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959C2EC(uint64_t a1)
{
  v2 = sub_1D959E1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C328(uint64_t a1)
{
  v2 = sub_1D959E1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoreAppIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a2;
  v25 = a4;
  v22 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075D0, &qword_1D95CA3F8);
  v21 = *(v23 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075D8, &qword_1D95CA400);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075E0, &qword_1D95CA408);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959E12C();
  sub_1D95C05BC();
  if (v25)
  {
    v27 = 1;
    sub_1D959E180();
    sub_1D95C034C();
    v18 = v23;
    sub_1D95C038C();
    (*(v21 + 8))(v7, v18);
  }

  else
  {
    v26 = 0;
    sub_1D959E1D4();
    sub_1D95C034C();
    sub_1D95C03DC();
    (*(v20 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t StoreAppIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA732B80](1);

    return sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    return MEMORY[0x1DA732BA0](a2);
  }
}

uint64_t StoreAppIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D95C051C();
  if (a3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](a1);
  }

  return sub_1D95C055C();
}

uint64_t StoreAppIdentifier.init(from:)(uint64_t *a1)
{
  result = sub_1D959EA78(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D959C7A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D95C051C();
  if (v3 == 1)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v1);
  }

  return sub_1D95C055C();
}

uint64_t sub_1D959C828()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1DA732B80](1);

    return sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    return MEMORY[0x1DA732BA0](v1);
  }
}

uint64_t sub_1D959C8B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D95C051C();
  if (v3 == 1)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v1);
  }

  return sub_1D95C055C();
}

uint64_t sub_1D959C934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D959EA78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D959C988(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t StoreAppIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_1D959EFAC();
    return sub_1D95C00DC();
  }
}

uint64_t sub_1D959CA48()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    sub_1D959EFAC();
    return sub_1D95C00DC();
  }
}

uint64_t sub_1D959CAB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07910, &qword_1D95CCD00);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07918, &qword_1D95CCD08);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB07920, &unk_1D95CCD10);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9594990();
  v15 = v32;
  sub_1D95C059C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1D95C032C();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1D954A268();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1D95C01FC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v24 = &type metadata for ManagedAppDeclaration.ManagementScope;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1D95949E4();
    sub_1D95C027C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D9594A38();
    sub_1D95C027C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_1D959CF6C()
{
  result = qword_1ECB07298;
  if (!qword_1ECB07298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07298);
  }

  return result;
}

uint64_t sub_1D959CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D959D048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D959D0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D959D118()
{
  result = qword_1ECB072C0;
  if (!qword_1ECB072C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072C0);
  }

  return result;
}

unint64_t sub_1D959D16C()
{
  result = qword_1ECB072C8;
  if (!qword_1ECB072C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072C8);
  }

  return result;
}

unint64_t sub_1D959D1C0()
{
  result = qword_1ECB072D0;
  if (!qword_1ECB072D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072D0);
  }

  return result;
}

unint64_t sub_1D959D214()
{
  result = qword_1ECB07310;
  if (!qword_1ECB07310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07310);
  }

  return result;
}

unint64_t sub_1D959D268()
{
  result = qword_1ECB07318;
  if (!qword_1ECB07318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07318);
  }

  return result;
}

unint64_t sub_1D959D2BC()
{
  result = qword_1ECB07320;
  if (!qword_1ECB07320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07320);
  }

  return result;
}

unint64_t sub_1D959D310()
{
  result = qword_1ECB07328;
  if (!qword_1ECB07328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07328);
  }

  return result;
}

unint64_t sub_1D959D364()
{
  result = qword_1ECB07370;
  if (!qword_1ECB07370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07370);
  }

  return result;
}

unint64_t sub_1D959D3B8()
{
  result = qword_1ECB07378;
  if (!qword_1ECB07378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07378);
  }

  return result;
}

unint64_t sub_1D959D40C()
{
  result = qword_1ECB07380;
  if (!qword_1ECB07380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07380);
  }

  return result;
}

unint64_t sub_1D959D460()
{
  result = qword_1ECB07388;
  if (!qword_1ECB07388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07388);
  }

  return result;
}

unint64_t sub_1D959D4B4()
{
  result = qword_1ECB07390;
  if (!qword_1ECB07390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07390);
  }

  return result;
}

unint64_t sub_1D959D508()
{
  result = qword_1ECB07398;
  if (!qword_1ECB07398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07398);
  }

  return result;
}

unint64_t sub_1D959D55C()
{
  result = qword_1ECB073A0;
  if (!qword_1ECB073A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073A0);
  }

  return result;
}

unint64_t sub_1D959D5B0()
{
  result = qword_1ECB073C8;
  if (!qword_1ECB073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073C8);
  }

  return result;
}

uint64_t sub_1D959D604(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D959D64C()
{
  result = qword_1ECB073D0;
  if (!qword_1ECB073D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073D0);
  }

  return result;
}

unint64_t sub_1D959D6A0()
{
  result = qword_1ECB073D8;
  if (!qword_1ECB073D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073D8);
  }

  return result;
}

unint64_t sub_1D959D6F4()
{
  result = qword_1ECB073F8;
  if (!qword_1ECB073F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073F8);
  }

  return result;
}

unint64_t sub_1D959D748()
{
  result = qword_1ECB07400;
  if (!qword_1ECB07400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07400);
  }

  return result;
}

unint64_t sub_1D959D79C()
{
  result = qword_1ECB07408;
  if (!qword_1ECB07408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07408);
  }

  return result;
}

unint64_t sub_1D959D7F0()
{
  result = qword_1ECB07430;
  if (!qword_1ECB07430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07430);
  }

  return result;
}

unint64_t sub_1D959D844()
{
  result = qword_1ECB07438;
  if (!qword_1ECB07438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07438);
  }

  return result;
}

unint64_t sub_1D959D898()
{
  result = qword_1ECB07440;
  if (!qword_1ECB07440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07440);
  }

  return result;
}

unint64_t sub_1D959D8EC()
{
  result = qword_1ECB07458;
  if (!qword_1ECB07458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07458);
  }

  return result;
}

unint64_t sub_1D959D940()
{
  result = qword_1ECB07460;
  if (!qword_1ECB07460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07460);
  }

  return result;
}

uint64_t sub_1D959D994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D959D9F4()
{
  result = qword_1ECB07478;
  if (!qword_1ECB07478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07478);
  }

  return result;
}

unint64_t sub_1D959DA48()
{
  result = qword_1ECB07490;
  if (!qword_1ECB07490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07490);
  }

  return result;
}

unint64_t sub_1D959DA9C()
{
  result = qword_1ECB07498;
  if (!qword_1ECB07498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07498);
  }

  return result;
}

unint64_t sub_1D959DAF0()
{
  result = qword_1ECB074A8;
  if (!qword_1ECB074A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB074A8);
  }

  return result;
}

unint64_t sub_1D959DB44()
{
  result = qword_1ECB074D0;
  if (!qword_1ECB074D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB074D0);
  }

  return result;
}

unint64_t sub_1D959DB98()
{
  result = qword_1ECB074D8;
  if (!qword_1ECB074D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB074D8);
  }

  return result;
}

unint64_t sub_1D959DBEC()
{
  result = qword_1ECB074E0;
  if (!qword_1ECB074E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB074E0);
  }

  return result;
}

unint64_t sub_1D959DC40()
{
  result = qword_1ECB074E8;
  if (!qword_1ECB074E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB074E8);
  }

  return result;
}

unint64_t sub_1D959DC94()
{
  result = qword_1ECB07518;
  if (!qword_1ECB07518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07518);
  }

  return result;
}

unint64_t sub_1D959DCE8()
{
  result = qword_1ECB07520;
  if (!qword_1ECB07520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07520);
  }

  return result;
}

unint64_t sub_1D959DD3C()
{
  result = qword_1ECB07528;
  if (!qword_1ECB07528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07528);
  }

  return result;
}

unint64_t sub_1D959DD90()
{
  result = qword_1ECB07538;
  if (!qword_1ECB07538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07538);
  }

  return result;
}

unint64_t sub_1D959DDE4()
{
  result = qword_1ECB07540;
  if (!qword_1ECB07540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07540);
  }

  return result;
}

unint64_t sub_1D959DE38()
{
  result = qword_1ECB07558;
  if (!qword_1ECB07558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07558);
  }

  return result;
}

unint64_t sub_1D959DE8C()
{
  result = qword_1ECB07560;
  if (!qword_1ECB07560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07560);
  }

  return result;
}

unint64_t sub_1D959DEE0()
{
  result = qword_1ECB07580;
  if (!qword_1ECB07580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07580);
  }

  return result;
}

unint64_t sub_1D959DF34()
{
  result = qword_1ECB07588;
  if (!qword_1ECB07588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07588);
  }

  return result;
}

unint64_t sub_1D959DF88()
{
  result = qword_1ECB07598;
  if (!qword_1ECB07598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07598);
  }

  return result;
}

unint64_t sub_1D959DFDC()
{
  result = qword_1ECB075A0;
  if (!qword_1ECB075A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075A0);
  }

  return result;
}

unint64_t sub_1D959E030()
{
  result = qword_1ECB075B0;
  if (!qword_1ECB075B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075B0);
  }

  return result;
}

unint64_t sub_1D959E084()
{
  result = qword_1ECB075C0;
  if (!qword_1ECB075C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075C0);
  }

  return result;
}

unint64_t sub_1D959E0D8()
{
  result = qword_1ECB075C8;
  if (!qword_1ECB075C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075C8);
  }

  return result;
}

unint64_t sub_1D959E12C()
{
  result = qword_1ECB075E8;
  if (!qword_1ECB075E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075E8);
  }

  return result;
}

unint64_t sub_1D959E180()
{
  result = qword_1ECB075F0;
  if (!qword_1ECB075F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075F0);
  }

  return result;
}

unint64_t sub_1D959E1D4()
{
  result = qword_1ECB075F8;
  if (!qword_1ECB075F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB075F8);
  }

  return result;
}

uint64_t sub_1D959E228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961776C61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74655365726F7473 && a2 == 0xED000073676E6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D959E340(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0840 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D959E460(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D95D0C70 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xED0000676E696D69 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D95D0C90 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEE00646F6874654DLL || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D959E630(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28271 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74655365726F7473 && a2 == 0xED000073676E6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D959E748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6567616E616DLL && a2 == 0xEF65706F6353746ELL || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0CF0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x426C6C6174736E69 && a2 == 0xEF726F6976616865 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654270756B636162 && a2 == 0xEE00726F69766168 || (sub_1D95C041C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6542657461647075 && a2 == 0xEE00726F69766168 || (sub_1D95C041C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D959EA78(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB078F8, &qword_1D95CCCE8);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07900, &qword_1D95CCCF0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07908, &qword_1D95CCCF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v35 = a1;
  v17 = __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_1D959E12C();
  v18 = v34;
  sub_1D95C059C();
  if (!v18)
  {
    v19 = v33;
    v34 = v11;
    v20 = sub_1D95C032C();
    v21 = (2 * *(v20 + 16)) | 1;
    v36 = v20;
    v37 = v20 + 32;
    v38 = 0;
    v39 = v21;
    v22 = sub_1D954A268();
    if (v22 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_1D95C01FC();
      swift_allocError();
      v26 = v25;
      v27 = v10;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v26 = &type metadata for StoreAppIdentifier;
      v17 = v14;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v34 + 8))(v14, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v22;
      if (v22)
      {
        v41 = 1;
        sub_1D959E180();
        sub_1D95C027C();
        v23 = v34;
        v17 = sub_1D95C02CC();
        (*(v32 + 8))(v5, v19);
      }

      else
      {
        v41 = 0;
        sub_1D959E1D4();
        sub_1D95C027C();
        v23 = v34;
        v17 = sub_1D95C031C();
        (*(v31 + 8))(v9, v6);
      }

      (*(v23 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v17;
}

unint64_t sub_1D959EFAC()
{
  result = qword_1ECB07600;
  if (!qword_1ECB07600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07600);
  }

  return result;
}

unint64_t sub_1D959F004()
{
  result = qword_1ECB07608;
  if (!qword_1ECB07608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07608);
  }

  return result;
}

unint64_t sub_1D959F05C()
{
  result = qword_1ECB07610;
  if (!qword_1ECB07610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07610);
  }

  return result;
}

unint64_t sub_1D959F0B4()
{
  result = qword_1ECB07618;
  if (!qword_1ECB07618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07618);
  }

  return result;
}

unint64_t sub_1D959F10C()
{
  result = qword_1ECB07620;
  if (!qword_1ECB07620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07620);
  }

  return result;
}

unint64_t sub_1D959F164()
{
  result = qword_1ECB07628;
  if (!qword_1ECB07628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07628);
  }

  return result;
}

unint64_t sub_1D959F1BC()
{
  result = qword_1ECB07630;
  if (!qword_1ECB07630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07630);
  }

  return result;
}

void sub_1D959F238()
{
  sub_1D959F4CC(319, &qword_1EDCF9B28);
  if (v0 <= 0x3F)
  {
    sub_1D959F4CC(319, &qword_1ECB07638);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ManagedAppDeclaration.InstallBehavior(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D959F338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D959F38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1D959F410()
{
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(319);
  if (v0 <= 0x3F)
  {
    sub_1D959F4CC(319, &qword_1EDCF9AF8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D959F4CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D95C00CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D959F5A0()
{
  result = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D959F65C()
{
  sub_1D959F6D8();
  if (v0 <= 0x3F)
  {
    sub_1D95BFBAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D959F6D8()
{
  if (!qword_1ECB07650)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECB07650);
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppDeclaration.UpdateBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppDeclaration.UpdateBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
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

uint64_t getEnumTagSinglePayload for ManagedAppDeclaration.UpdateBehaviorEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ManagedAppDeclaration.UpdateBehaviorEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D959F898(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D959F954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D959F99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D959FC00()
{
  result = qword_1ECB07658;
  if (!qword_1ECB07658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07658);
  }

  return result;
}

unint64_t sub_1D959FC58()
{
  result = qword_1ECB07660;
  if (!qword_1ECB07660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07660);
  }

  return result;
}

unint64_t sub_1D959FCB0()
{
  result = qword_1ECB07668;
  if (!qword_1ECB07668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07668);
  }

  return result;
}

unint64_t sub_1D959FD08()
{
  result = qword_1ECB07670;
  if (!qword_1ECB07670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07670);
  }

  return result;
}

unint64_t sub_1D959FD60()
{
  result = qword_1ECB07678;
  if (!qword_1ECB07678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07678);
  }

  return result;
}

unint64_t sub_1D959FDB8()
{
  result = qword_1ECB07680;
  if (!qword_1ECB07680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07680);
  }

  return result;
}

unint64_t sub_1D959FE10()
{
  result = qword_1ECB07688;
  if (!qword_1ECB07688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07688);
  }

  return result;
}

unint64_t sub_1D959FE68()
{
  result = qword_1ECB07690;
  if (!qword_1ECB07690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07690);
  }

  return result;
}

unint64_t sub_1D959FEC0()
{
  result = qword_1ECB07698;
  if (!qword_1ECB07698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07698);
  }

  return result;
}

unint64_t sub_1D959FF18()
{
  result = qword_1ECB076A0;
  if (!qword_1ECB076A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076A0);
  }

  return result;
}

unint64_t sub_1D959FF70()
{
  result = qword_1ECB076A8;
  if (!qword_1ECB076A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076A8);
  }

  return result;
}

unint64_t sub_1D959FFC8()
{
  result = qword_1ECB076B0;
  if (!qword_1ECB076B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076B0);
  }

  return result;
}

unint64_t sub_1D95A0020()
{
  result = qword_1ECB076B8;
  if (!qword_1ECB076B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076B8);
  }

  return result;
}

unint64_t sub_1D95A0078()
{
  result = qword_1ECB076C0;
  if (!qword_1ECB076C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076C0);
  }

  return result;
}

unint64_t sub_1D95A00D0()
{
  result = qword_1ECB076C8;
  if (!qword_1ECB076C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076C8);
  }

  return result;
}

unint64_t sub_1D95A0128()
{
  result = qword_1ECB076D0;
  if (!qword_1ECB076D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076D0);
  }

  return result;
}

unint64_t sub_1D95A0180()
{
  result = qword_1ECB076D8;
  if (!qword_1ECB076D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076D8);
  }

  return result;
}

unint64_t sub_1D95A01D8()
{
  result = qword_1ECB076E0;
  if (!qword_1ECB076E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076E0);
  }

  return result;
}

unint64_t sub_1D95A0230()
{
  result = qword_1ECB076E8;
  if (!qword_1ECB076E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076E8);
  }

  return result;
}

unint64_t sub_1D95A0288()
{
  result = qword_1ECB076F0;
  if (!qword_1ECB076F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076F0);
  }

  return result;
}

unint64_t sub_1D95A02E0()
{
  result = qword_1ECB076F8;
  if (!qword_1ECB076F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB076F8);
  }

  return result;
}

unint64_t sub_1D95A0338()
{
  result = qword_1ECB07700;
  if (!qword_1ECB07700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07700);
  }

  return result;
}

unint64_t sub_1D95A0390()
{
  result = qword_1ECB07708;
  if (!qword_1ECB07708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07708);
  }

  return result;
}

unint64_t sub_1D95A03E8()
{
  result = qword_1ECB07710;
  if (!qword_1ECB07710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07710);
  }

  return result;
}

unint64_t sub_1D95A0440()
{
  result = qword_1ECB07718;
  if (!qword_1ECB07718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07718);
  }

  return result;
}

unint64_t sub_1D95A0498()
{
  result = qword_1ECB07720;
  if (!qword_1ECB07720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07720);
  }

  return result;
}

unint64_t sub_1D95A04F0()
{
  result = qword_1ECB07728;
  if (!qword_1ECB07728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07728);
  }

  return result;
}

unint64_t sub_1D95A0548()
{
  result = qword_1ECB07730;
  if (!qword_1ECB07730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07730);
  }

  return result;
}

unint64_t sub_1D95A05A0()
{
  result = qword_1ECB07738;
  if (!qword_1ECB07738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07738);
  }

  return result;
}

unint64_t sub_1D95A05F8()
{
  result = qword_1ECB07740;
  if (!qword_1ECB07740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07740);
  }

  return result;
}

unint64_t sub_1D95A0650()
{
  result = qword_1ECB07748;
  if (!qword_1ECB07748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07748);
  }

  return result;
}

unint64_t sub_1D95A06A8()
{
  result = qword_1ECB07750;
  if (!qword_1ECB07750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07750);
  }

  return result;
}

unint64_t sub_1D95A0700()
{
  result = qword_1ECB07758;
  if (!qword_1ECB07758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07758);
  }

  return result;
}

unint64_t sub_1D95A0758()
{
  result = qword_1ECB07760;
  if (!qword_1ECB07760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07760);
  }

  return result;
}

unint64_t sub_1D95A07B0()
{
  result = qword_1ECB07768;
  if (!qword_1ECB07768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07768);
  }

  return result;
}

unint64_t sub_1D95A0808()
{
  result = qword_1ECB07770;
  if (!qword_1ECB07770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07770);
  }

  return result;
}

unint64_t sub_1D95A0860()
{
  result = qword_1ECB07778;
  if (!qword_1ECB07778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07778);
  }

  return result;
}

unint64_t sub_1D95A08B8()
{
  result = qword_1ECB07780;
  if (!qword_1ECB07780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07780);
  }

  return result;
}

unint64_t sub_1D95A0910()
{
  result = qword_1ECB07788;
  if (!qword_1ECB07788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07788);
  }

  return result;
}

unint64_t sub_1D95A0968()
{
  result = qword_1ECB07790;
  if (!qword_1ECB07790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07790);
  }

  return result;
}

unint64_t sub_1D95A09C0()
{
  result = qword_1ECB07798;
  if (!qword_1ECB07798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07798);
  }

  return result;
}

unint64_t sub_1D95A0A18()
{
  result = qword_1ECB077A0;
  if (!qword_1ECB077A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077A0);
  }

  return result;
}

unint64_t sub_1D95A0A70()
{
  result = qword_1ECB077A8;
  if (!qword_1ECB077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077A8);
  }

  return result;
}

unint64_t sub_1D95A0AC8()
{
  result = qword_1ECB077B0;
  if (!qword_1ECB077B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077B0);
  }

  return result;
}

unint64_t sub_1D95A0B20()
{
  result = qword_1ECB077B8;
  if (!qword_1ECB077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077B8);
  }

  return result;
}

unint64_t sub_1D95A0B78()
{
  result = qword_1ECB077C0;
  if (!qword_1ECB077C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077C0);
  }

  return result;
}

unint64_t sub_1D95A0BD0()
{
  result = qword_1ECB077C8;
  if (!qword_1ECB077C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077C8);
  }

  return result;
}

unint64_t sub_1D95A0C28()
{
  result = qword_1ECB077D0;
  if (!qword_1ECB077D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077D0);
  }

  return result;
}

unint64_t sub_1D95A0C80()
{
  result = qword_1ECB077D8;
  if (!qword_1ECB077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077D8);
  }

  return result;
}

unint64_t sub_1D95A0CD8()
{
  result = qword_1ECB077E0;
  if (!qword_1ECB077E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077E0);
  }

  return result;
}

unint64_t sub_1D95A0D30()
{
  result = qword_1ECB077E8;
  if (!qword_1ECB077E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077E8);
  }

  return result;
}

unint64_t sub_1D95A0D88()
{
  result = qword_1ECB077F0;
  if (!qword_1ECB077F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077F0);
  }

  return result;
}

unint64_t sub_1D95A0DE0()
{
  result = qword_1ECB077F8;
  if (!qword_1ECB077F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB077F8);
  }

  return result;
}

unint64_t sub_1D95A0E38()
{
  result = qword_1ECB07800;
  if (!qword_1ECB07800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07800);
  }

  return result;
}

unint64_t sub_1D95A0E90()
{
  result = qword_1ECB07808;
  if (!qword_1ECB07808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07808);
  }

  return result;
}

unint64_t sub_1D95A0EE8()
{
  result = qword_1ECB07810;
  if (!qword_1ECB07810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07810);
  }

  return result;
}

unint64_t sub_1D95A0F40()
{
  result = qword_1ECB07818;
  if (!qword_1ECB07818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07818);
  }

  return result;
}

unint64_t sub_1D95A0F98()
{
  result = qword_1ECB07820;
  if (!qword_1ECB07820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07820);
  }

  return result;
}

unint64_t sub_1D95A0FF0()
{
  result = qword_1ECB07828;
  if (!qword_1ECB07828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07828);
  }

  return result;
}

unint64_t sub_1D95A1048()
{
  result = qword_1ECB07830;
  if (!qword_1ECB07830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07830);
  }

  return result;
}

unint64_t sub_1D95A10A0()
{
  result = qword_1ECB07838;
  if (!qword_1ECB07838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07838);
  }

  return result;
}

unint64_t sub_1D95A10F8()
{
  result = qword_1ECB07840;
  if (!qword_1ECB07840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07840);
  }

  return result;
}

unint64_t sub_1D95A1150()
{
  result = qword_1ECB07848;
  if (!qword_1ECB07848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07848);
  }

  return result;
}

unint64_t sub_1D95A11A8()
{
  result = qword_1ECB07850;
  if (!qword_1ECB07850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07850);
  }

  return result;
}

unint64_t sub_1D95A1200()
{
  result = qword_1ECB07858;
  if (!qword_1ECB07858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07858);
  }

  return result;
}

unint64_t sub_1D95A1258()
{
  result = qword_1ECB07860;
  if (!qword_1ECB07860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07860);
  }

  return result;
}

unint64_t sub_1D95A12B0()
{
  result = qword_1ECB07868;
  if (!qword_1ECB07868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07868);
  }

  return result;
}

unint64_t sub_1D95A1308()
{
  result = qword_1ECB07870;
  if (!qword_1ECB07870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07870);
  }

  return result;
}

unint64_t sub_1D95A1360()
{
  result = qword_1ECB07878;
  if (!qword_1ECB07878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07878);
  }

  return result;
}

unint64_t sub_1D95A13B8()
{
  result = qword_1ECB07880;
  if (!qword_1ECB07880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07880);
  }

  return result;
}

unint64_t sub_1D95A1410()
{
  result = qword_1ECB07888;
  if (!qword_1ECB07888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07888);
  }

  return result;
}

unint64_t sub_1D95A1468()
{
  result = qword_1ECB07890;
  if (!qword_1ECB07890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07890);
  }

  return result;
}

unint64_t sub_1D95A14C0()
{
  result = qword_1ECB07898;
  if (!qword_1ECB07898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07898);
  }

  return result;
}

unint64_t sub_1D95A1518()
{
  result = qword_1ECB078A0;
  if (!qword_1ECB078A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078A0);
  }

  return result;
}

unint64_t sub_1D95A1570()
{
  result = qword_1ECB078A8;
  if (!qword_1ECB078A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078A8);
  }

  return result;
}

unint64_t sub_1D95A15C8()
{
  result = qword_1ECB078B0;
  if (!qword_1ECB078B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078B0);
  }

  return result;
}

unint64_t sub_1D95A1620()
{
  result = qword_1ECB078B8;
  if (!qword_1ECB078B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078B8);
  }

  return result;
}

unint64_t sub_1D95A1678()
{
  result = qword_1ECB078C0;
  if (!qword_1ECB078C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078C0);
  }

  return result;
}

unint64_t sub_1D95A16D0()
{
  result = qword_1ECB078C8;
  if (!qword_1ECB078C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078C8);
  }

  return result;
}

unint64_t sub_1D95A1728()
{
  result = qword_1ECB078D0;
  if (!qword_1ECB078D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078D0);
  }

  return result;
}

unint64_t sub_1D95A1780()
{
  result = qword_1ECB078D8;
  if (!qword_1ECB078D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078D8);
  }

  return result;
}

unint64_t sub_1D95A17D8()
{
  result = qword_1ECB078E0;
  if (!qword_1ECB078E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078E0);
  }

  return result;
}

unint64_t sub_1D95A1830()
{
  result = qword_1ECB078E8;
  if (!qword_1ECB078E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078E8);
  }

  return result;
}

unint64_t sub_1D95A1888()
{
  result = qword_1ECB078F0;
  if (!qword_1ECB078F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB078F0);
  }

  return result;
}

uint64_t AsyncStreamListener.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *(*v5 + 88);
  v7 = *(*v5 + 80);
  v8 = sub_1D95BFFDC();
  (*(*(v8 - 8) + 32))(v5 + v6, a1, v8);
  return v5;
}

uint64_t AsyncStreamListener.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = sub_1D95BFFDC();
  (*(*(v5 - 8) + 32))(v1 + v3, a1, v5);
  return v1;
}

uint64_t AsyncStreamListener.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1D95BFFDC();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t AsyncStreamListener.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1D95BFFDC();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t AsyncStreamListener.hashValue.getter()
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v0);
  return sub_1D95C055C();
}

uint64_t sub_1D95A1C68()
{
  sub_1D95C051C();
  v1 = *v0;
  AsyncStreamListener.hash(into:)();
  return sub_1D95C055C();
}

uint64_t sub_1D95A1CE8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1D95BFFDC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static LocalizedStringResource.BundleDescription.madFramework.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1D95BFB6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6968F58]);
  v10 = sub_1D95BFBAC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1D95BFB9C();
  v11 = *MEMORY[0x1E6968DF8];
  v12 = sub_1D95BFAFC();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

void NSBundle.preferredLocalization.getter()
{
  v1 = [v0 localizations];
  if (!v1)
  {
    sub_1D95BFEDC();
    v1 = sub_1D95BFECC();
  }

  v2 = objc_opt_self();
  sub_1D95BFBEC();
  v3 = sub_1D95BFECC();

  v4 = [v2 preferredLocalizationsFromArray:v1 forPreferences:v3];

  v5 = sub_1D95BFEDC();
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D95A20B0()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95A29A8;

  return sub_1D9552E90(1, 1, sub_1D95A24D4, 0);
}

uint64_t sub_1D95A21C8()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95A22CC;

  return sub_1D9552E90(1, 1, sub_1D95A24D4, 0);
}

uint64_t sub_1D95A22CC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void *DDMDeclarationKeysRequest.request()()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  return sub_1D95733E8(1, 1, sub_1D95A24E0, 0);
}

void *DDMDeclarationKeysRequest.send(to:)(char a1)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    swift_once();
  }

  return sub_1D95733E8(1, 1, sub_1D95A24E0, 0);
}

void sub_1D95A24EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[4] = a4;
  v8[5] = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D95A3C64;
  v8[3] = a6;
  v7 = _Block_copy(v8);

  [a1 currentDeclarationKeysWithReply_];
  _Block_release(v7);
}

uint64_t sub_1D95A259C(uint64_t a1)
{
  v2 = sub_1D95A2728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95A25D8(uint64_t a1)
{
  v2 = sub_1D95A2728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMDeclarationKeysRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB079A8, &qword_1D95CCDD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A2728();
  sub_1D95C05BC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D95A2728()
{
  result = qword_1ECB079B0;
  if (!qword_1ECB079B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB079B0);
  }

  return result;
}

uint64_t sub_1D95A27A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB079A8, &qword_1D95CCDD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A2728();
  sub_1D95C05BC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D95A28DC()
{
  result = qword_1ECB079B8;
  if (!qword_1ECB079B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB079B8);
  }

  return result;
}

unint64_t sub_1D95A2934()
{
  result = qword_1ECB079C0;
  if (!qword_1ECB079C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB079C0);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95A2EA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D95BFC8C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D95BFC7C();
}

uint64_t sub_1D95A2F40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D95BFC8C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t sub_1D95A3064(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_1D95BFD9C();

  return v3;
}

uint64_t ComposedIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    sub_1D95C042C();
    v6 = objc_opt_self();
    v7 = sub_1D95BFD8C();

    v8 = [v6 newComposedIdentifier_];

    if (v8)
    {
      *a2 = v8;
    }

    else
    {
      sub_1D955A9C4();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ComposedIdentifier.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v4 = [v2 composedIdentifier];
  sub_1D95BFD9C();

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D95C045C();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1D95A32D4(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v4 = [v2 composedIdentifier];
  sub_1D95BFD9C();

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D95C045C();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1D95A33A0(uint64_t *a1, int a2)
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

uint64_t sub_1D95A33E8(uint64_t result, int a2, int a3)
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

uint64_t ManagedPackageCancelRequest.request()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D95A3450, 0, 0);
}

uint64_t sub_1D95A3450()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954B83C(1, v2, v3, sub_1D95A3578, 0);
}

uint64_t ManagedPackageCancelRequest.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1D95A3578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_16;
  v9 = _Block_copy(v10);

  [a1 cancelManagedPackage:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95A3654(uint64_t a1)
{
  v2 = sub_1D95A3808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95A3690(uint64_t a1)
{
  v2 = sub_1D95A3808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageCancelRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07A70, &qword_1D95CCFA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A3808();
  sub_1D95C05BC();
  sub_1D95C038C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D95A3808()
{
  result = qword_1ECB07A78;
  if (!qword_1ECB07A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07A78);
  }

  return result;
}

uint64_t ManagedPackageCancelRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07A80, &qword_1D95CCFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A3808();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C02CC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95A39E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07A70, &qword_1D95CCFA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A3808();
  sub_1D95C05BC();
  sub_1D95C038C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D95A3B48()
{
  result = qword_1ECB07A88;
  if (!qword_1ECB07A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07A88);
  }

  return result;
}

unint64_t sub_1D95A3BA0()
{
  result = qword_1ECB07A90;
  if (!qword_1ECB07A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07A90);
  }

  return result;
}

unint64_t sub_1D95A3BF8()
{
  result = qword_1ECB07A98;
  if (!qword_1ECB07A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07A98);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95A3C64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_1D95BFBCC();
  v8 = v7;

  v4(v6, v8);
  sub_1D955AA18(v6, v8);
}

void XPCClient.unregisterAppInstallStateListener(_:for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95A5E58(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

void XPCClient.registerAppInstallStateListener(_:for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95A5E84(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

id static XPCClient.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_1D95A3E10()
{
  result = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  qword_1EDCFA1A8 = result;
  return result;
}

id static XPCClient.shared.getter()
{
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCFA1A8;

  return v1;
}

uint64_t XPCClient.MessageRegistrationState.registrations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1D95A3F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172747369676572 && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95A3FC0(uint64_t a1)
{
  v2 = sub_1D95A5EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95A3FFC(uint64_t a1)
{
  v2 = sub_1D95A5EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCClient.MessageRegistrationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AA0, &qword_1D95CD190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A5EDC();

  sub_1D95C05BC();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AA8, &qword_1D95CD198);
  sub_1D95A5F84(&qword_1EDCFA198, sub_1D95A5F30);
  sub_1D95C03CC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t XPCClient.MessageRegistrationState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AB0, &qword_1D95CD1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95A5EDC();
  sub_1D95C059C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AA8, &qword_1D95CD198);
    sub_1D95A5F84(&qword_1EDCFA170, sub_1D95A5FFC);
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id sub_1D95A43BC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage;
  v10 = 1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1D953FB84(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE0, &unk_1D95CD3B0);
  v5 = swift_allocObject();
  *(v5 + 104) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = MEMORY[0x1E69E7CD0];
  *(v5 + 40) = v3;
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 48) = v3;
  *(v5 + 56) = v6;
  *(v5 + 64) = v4;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *&v0[v2] = v5;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1D95A49E4(0xD000000000000028, 0x80000001D95D0D80, v7);

  return v7;
}

void sub_1D95A44C8(const char *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = sub_1D95BFCAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  sub_1D95B1600();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7FA0], v4);
  v9 = sub_1D95C00BC();
  (*(v5 + 8))(v8, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  aBlock[4] = sub_1D95B164C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95A4990;
  aBlock[3] = &block_descriptor_17;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  v13 = notify_register_dispatch(a1, &out_token, v9, v11);
  _Block_release(v11);

  if (v13)
  {
    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D95BFC8C();
    __swift_project_value_buffer(v14, qword_1EDCFA2D0);
    v15 = sub_1D95BFC6C();
    v16 = sub_1D95C009C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_1D953A000, v15, v16, "Failed to register for daemon launch notifications with status code %u", v17, 8u);
      MEMORY[0x1DA733200](v17, -1, -1);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1D95A478C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = *&v0[OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage];
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 24);
  os_unfair_lock_unlock((v5 + 104));
  if (v6)
  {
    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D95BFC8C();
    __swift_project_value_buffer(v7, qword_1EDCFA2D0);
    v15 = sub_1D95BFC6C();
    v8 = sub_1D95C007C();
    if (os_log_type_enabled(v15, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D953A000, v15, v8, "Not keeping track of daemon instance identifier yet; no need to update it.", v9, 2u);
      MEMORY[0x1DA733200](v9, -1, -1);
    }

    v10 = v15;
  }

  else
  {
    v11 = sub_1D95BFF8C();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v0;
    v13 = v0;
    sub_1D95A9304(0, 0, v4, &unk_1D95CD3C8, v12);
  }
}

uint64_t sub_1D95A4990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1D95A49E4(uint64_t a1, uint64_t a2, void *a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_1D95C01AC();
    goto LABEL_7;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_1D95A44C8(v4, a3);
LABEL_7:
}

uint64_t sub_1D95A4AA0(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 < 0)
  {
    v7 = *(a1 + 24);
  }

  result = sub_1D95C022C();
  if (!result)
  {
LABEL_3:

    MEMORY[0x1DA732510](v5);
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D95BFEFC();
    }

    sub_1D95BFF0C();
    v6 = sub_1D95B1B2C(&unk_1F54E8D18);
    sub_1D95B2014(&unk_1F54E8D38);
    sub_1D95A4BB0(v6, 0, a1, 0, 0);
  }

  return result;
}

uint64_t sub_1D95A4BB0(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v38 - v14;
  if ((a2 & 1) == 0)
  {
    v16 = *(a3 + 16);
    if (*(v16 + 16) <= *(a1 + 16) >> 3)
    {
      v41 = a1;

      sub_1D95AF614(v16);
      a1 = v41;
      if (*(v41 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {

      a1 = sub_1D95AF774(v16, a1);
      if (*(a1 + 16))
      {
        goto LABEL_6;
      }
    }

LABEL_18:
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_6:
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D95BFC8C();
  __swift_project_value_buffer(v17, qword_1EDCFA2D0);

  v18 = sub_1D95BFC6C();
  v19 = sub_1D95C00AC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315394;
    if (a2)
    {
      v23 = 0x29646563726F6628;
    }

    else
    {
      v23 = 0;
    }

    v40 = a5;
    if (a2)
    {
      v24 = 0xE900000000000020;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_1D95A9D84(v23, v24, &v41);
    v39 = v15;
    v26 = a2;
    v27 = v6;
    v28 = a4;
    v29 = v25;

    *(v21 + 4) = v29;
    *(v21 + 12) = 2082;
    sub_1D95B1818();
    v30 = sub_1D95C003C();
    v32 = sub_1D95A9D84(v30, v31, &v41);
    a5 = v40;

    *(v21 + 14) = v32;
    a4 = v28;
    v6 = v27;
    a2 = v26;
    v15 = v39;
    _os_log_impl(&dword_1D953A000, v18, v19, "Registering %s#listener for messages: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA733200](v22, -1, -1);
    MEMORY[0x1DA733200](v21, -1, -1);
  }

  sub_1D95A7FD4(v33);
  v34 = sub_1D95BFF8C();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = a1;
  *(v35 + 40) = v6;
  *(v35 + 48) = a2 & 1;
  *(v35 + 56) = a4;
  *(v35 + 64) = a5;
  v36 = v6;
  sub_1D953CF64(a4);
  sub_1D95A9304(0, 0, v15, &unk_1D95CD418, v35);
}

uint64_t sub_1D95A4F6C(uint64_t a1, uint64_t a2)
{

  v4 = sub_1D95B209C((a1 + 24), a2);

  v5 = *(a1 + 24);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 0)
  {
    v9 = *(a1 + 24);
  }

  v6 = sub_1D95C022C();
  if (v6 < v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1D95B22C4(v4, v6, &qword_1ECB06298, &qword_1D95C2B00);
  v7 = *(a1 + 24);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_11:
  result = sub_1D95C022C();
  if (!result)
  {
LABEL_5:
    sub_1D95A5074(&unk_1F54E8D50, a1);
    return sub_1D95B2014(&unk_1F54E8D70);
  }

  return result;
}

void sub_1D95A5074(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];

  v5 = sub_1D95B0B48(a1, v4);
  if (*(v5 + 16))
  {
    if (qword_1EDCFA278 != -1)
    {
      swift_once();
    }

    v6 = sub_1D9573AC8(1, v5, sub_1D95A95F4, 0);
    sub_1D95AF614(v5);

    sub_1D95A8BBC(v6, a2);
  }

  else
  {
  }
}

void XPCClient.registerAppCatalogHandler(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95A6050(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D95A54A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  sub_1D953CF74(v6);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  v8 = sub_1D95B1B2C(&unk_1F54E8D88);
  sub_1D95B2014(&unk_1F54E8DA8);
  sub_1D95A4BB0(v8, 0, a1, 0, 0);
}

void XPCClient.registerAgeRatingHandler(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95A6070(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D95A559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  sub_1D953CF74(v6);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  v8 = sub_1D95B1B2C(&unk_1F54E8DC0);
  sub_1D95B2014(&unk_1F54E8DE0);
  sub_1D95A4BB0(v8, 0, a1, 0, 0);
}

uint64_t sub_1D95A5638(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AB8, &qword_1D95CD1A8);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - v13;
  v14 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(a1 + 40);
  v16 = v58;
  v17 = sub_1D953E700(a2, a3, a4 & 1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = v18;
  if (v16[3] < v22)
  {
    sub_1D95AAB44(v22, isUniquelyReferenced_nonNull_native);
    v16 = v58;
    v17 = sub_1D953E700(a2, a3, a4 & 1);
    if ((v23 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    v17 = sub_1D95C04BC();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *(a1 + 40) = v16;
    if (v23)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v47 = v17;
  sub_1D95AB5DC();
  v17 = v47;
  v16 = v58;
  *(a1 + 40) = v58;
  if ((v23 & 1) == 0)
  {
LABEL_7:
    v25 = v17;
    sub_1D958D9D0(v17, a2, a3, a4 & 1, MEMORY[0x1E69E7CC0], v16);
    sub_1D953FCA8(a2, a3, a4 & 1);
    v17 = v25;
  }

LABEL_8:
  v26 = (v16[7] + 8 * v17);

  MEMORY[0x1DA732510](v27);
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_22:
    sub_1D95BFEFC();
  }

  sub_1D95BFF0C();
  v28 = *(a1 + 48);
  if (*(v28 + 16))
  {
    v29 = sub_1D953E700(a2, a3, a4 & 1);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      sub_1D953FCB8(v31);
      if (qword_1EDCFA2C8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D95BFC8C();
      __swift_project_value_buffer(v32, qword_1EDCFA2D0);
      sub_1D953FCA8(a2, a3, a4 & 1);
      v33 = sub_1D95BFC6C();
      v34 = sub_1D95C007C();
      sub_1D953FCF0(a2, a3, a4 & 1);
      if (os_log_type_enabled(v33, v34))
      {
        v51 = v34;
        v35 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58 = v49;
        v50 = v35;
        *v35 = 136446210;
        v52 = v31;
        if (a4)
        {

          v36 = a2;
          v37 = a3;
        }

        else
        {
          v57 = a2;
          sub_1D959EFAC();
          v36 = sub_1D95C00DC();
          v37 = v38;
        }

        v39 = sub_1D95A9D84(v36, v37, &v58);

        v40 = v50;
        *(v50 + 1) = v39;
        _os_log_impl(&dword_1D953A000, v33, v51, "Sending cached app state results to listener for %{public}s", v40, 0xCu);
        v41 = v49;
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1DA733200](v41, -1, -1);
        MEMORY[0x1DA733200](v40, -1, -1);

        v31 = v52;
      }

      else
      {
      }

      v58 = v31;
      v42 = *(*a5 + 88);
      sub_1D953FCB8(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F0, &qword_1D95CD1D0);
      v43 = v53;
      sub_1D95BFFBC();
      sub_1D9564D80(v31);
      (*(v54 + 8))(v43, v55);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B40, &qword_1D95CD460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D95C2A10;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4 & 1;
  sub_1D953FCA8(a2, a3, a4 & 1);
  v45 = sub_1D95B1B2C(inited);
  swift_setDeallocating();
  sub_1D95B2014(inited + 32);
  sub_1D95A4BB0(v45, 0, a1, 0, 0);
}

unint64_t sub_1D95A5B08(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{

  v10 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1;
  v37 = a1[5];
  v13 = v37;
  v35 = a4;
  v36 = a3;
  v14 = a3;
  v15 = (a4 & 1);
  v17 = sub_1D953E700(a2, v14, a4 & 1);
  v18 = v37[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = v16;
  if (v37[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D95AB5DC();
      v13 = v37;
    }

    isUniquelyReferenced_nonNull_native = a4 & 1;
  }

  else
  {
    sub_1D95AAB44(v20, isUniquelyReferenced_nonNull_native);
    v13 = v37;
    isUniquelyReferenced_nonNull_native = a4 & 1;
    v22 = sub_1D953E700(a2, v36, a4 & 1);
    if ((v21 & 1) != (v23 & 1))
    {

      result = sub_1D95C04BC();
      __break(1u);
      return result;
    }

    v17 = v22;
  }

  v15 = v12;
  v12[5] = v13;
  if ((v21 & 1) == 0)
  {
    sub_1D958D9D0(v17, a2, v36, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69E7CC0], v13);
    sub_1D953FCA8(a2, v36, a4 & 1);
  }

  v24 = (v13[7] + 8 * v17);

  v17 = sub_1D95B209C(v24, a5);

  if (*v24 >> 62)
  {
LABEL_21:
    v25 = sub_1D95C022C();
    if (v25 >= v17)
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 < v17)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_1D95B22C4(v17, v25, &qword_1ECB069F8, &qword_1D95C5B98);

  if (v13[2] && (v26 = sub_1D953E700(a2, v36, isUniquelyReferenced_nonNull_native), (v27 & 1) != 0))
  {
    v28 = *(v13[7] + 8 * v26);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v30)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_23:
  v34 = sub_1D95C022C();

  if (!v34)
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B40, &qword_1D95CD460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D95C2A10;
    *(inited + 32) = a2;
    *(inited + 40) = v36;
    *(inited + 48) = isUniquelyReferenced_nonNull_native;
    sub_1D953FCA8(a2, v36, v35 & 1);
    sub_1D95A5074(inited, v15);
    swift_setDeallocating();
    v33 = *(inited + 16);
    swift_arrayDestroy();
    sub_1D953FCA8(a2, v36, v35 & 1);
    sub_1D953EAC4(a2, v36, isUniquelyReferenced_nonNull_native, &v37);
    sub_1D953FCF0(a2, v36, v35 & 1);
    return sub_1D95B25B8(v37);
  }

  return result;
}

unint64_t sub_1D95A5EDC()
{
  result = qword_1EDCFA2F8;
  if (!qword_1EDCFA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA2F8);
  }

  return result;
}

unint64_t sub_1D95A5F30()
{
  result = qword_1EDCFA1D0;
  if (!qword_1EDCFA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA1D0);
  }

  return result;
}

uint64_t sub_1D95A5F84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07AA8, &qword_1D95CD198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95A5FFC()
{
  result = qword_1EDCFA188;
  if (!qword_1EDCFA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA188);
  }

  return result;
}

uint64_t sub_1D95A6090(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1DA732510](v4);
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D95BFEFC();
  }

  sub_1D95BFF0C();
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D95BFC8C();
  __swift_project_value_buffer(v5, qword_1EDCFA2D0);
  v6 = sub_1D95BFC6C();
  v7 = sub_1D95C00AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D953A000, v6, v7, "Adding new #listener for managed app catalog", v8, 2u);
    MEMORY[0x1DA733200](v8, -1, -1);
  }

  v9 = sub_1D95B1B2C(&unk_1F54E8DF8);
  sub_1D95B2014(&unk_1F54E8E18);

  sub_1D95A4BB0(v9, 0, a1, sub_1D95B25B0, a2);
}

uint64_t sub_1D95A6244(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v11 = *a1;
  v12 = 1;
  v9 = *(*a2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  sub_1D95BFFBC();
  (*(v5 + 8))(v8, v4);
  return sub_1D95BFFCC();
}

uint64_t sub_1D95A637C(uint64_t a1, uint64_t a2)
{

  v4 = sub_1D95B209C((a1 + 32), a2);

  v5 = *(a1 + 32);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 0)
  {
    v9 = *(a1 + 32);
  }

  v6 = sub_1D95C022C();
  if (v6 < v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1D95B22C4(v4, v6, &qword_1ECB07150, &unk_1D95C9370);
  v7 = *(a1 + 32);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_11:
  result = sub_1D95C022C();
  if (!result)
  {
LABEL_5:
    sub_1D95A5074(&unk_1F54E8E30, a1);
    return sub_1D95B2014(&unk_1F54E8E50);
  }

  return result;
}

void sub_1D95A6484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AB8, &qword_1D95CD1A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v8;
  v21 = *(a1 + 32);
  v9 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  v17 = v20;
  os_unfair_lock_lock(v9 + 26);
  sub_1D95B26A8(&v9[4], &v22);
  os_unfair_lock_unlock(v9 + 26);
  v10 = v22;
  if (!(v22 >> 62))
  {
    v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v11 = sub_1D95C022C();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v22 = *&v20[0];
    v13 = (v4 + 8);
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA732820](v12, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);
      }

      ++v12;
      v19 = v22;
      v15 = *(*v14 + 88);
      sub_1D95B1A74(&v22, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F0, &qword_1D95CD1D0);
      sub_1D95BFFBC();

      (*v13)(v7, v3);
    }

    while (v11 != v12);
    goto LABEL_10;
  }

  __break(1u);
}

void XPCClient.handleMessages(_:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AB8, &qword_1D95CD1A8);
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v88 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AC0, &unk_1D95CD1B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v88 - v9;
  v11 = sub_1D95BFAAC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D95BFA9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AC8, &qword_1D95CDA60);
  sub_1D9547F60(&qword_1EDCFA1B8, &qword_1ECB07AC8, &qword_1D95CDA60);
  sub_1D95BFA8C();
  v27 = v105;
  v101 = v5;
  v102 = v10;
  v104 = v6;

  v28 = v110;
  v29 = *(v110 + 16);
  if (!v29)
  {
LABEL_54:

    return;
  }

  v92 = 0;
  v99 = v2;
  v30 = 0;
  v94 = OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage;
  v31 = v110 + 32;
  v100 = (v7 + 8);
  v98 = (v27 + 8);
  v88 = xmmword_1D95C2A10;
  v32 = v93;
  v33 = v104;
  v97 = v110;
  v96 = v29;
  v95 = v110 + 32;
  while (v30 < *(v28 + 16))
  {
    v34 = v31 + 40 * v30;
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v39 = *(v34 + 32);
    v40 = (v39 >> 3) & 7;
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        v106 = v36;
        v57 = v38;
        v58 = v39;
        v59 = *(v32 + v94);
        swift_bridgeObjectRetain_n();
        os_unfair_lock_lock((v59 + 104));
        v60 = *(v59 + 72);
        v61 = *(v59 + 80);
        if (v60)
        {
          v62 = swift_allocObject();
          *(v62 + 16) = v60;
          *(v62 + 24) = v61;
          v63 = sub_1D95B1308;
        }

        else
        {
          v63 = 0;
        }

        sub_1D953CF64(v60);
        os_unfair_lock_unlock((v59 + 104));
        if (v60)
        {
          *&v107[0] = v35;
          v63(v107);
          v84 = v106;
          sub_1D95B1250(v35, v106, v37, v57, v58);
          sub_1D953CF74(v63);
          v85 = v35;
          v86 = v84;
        }

        else
        {
          v87 = v106;
          sub_1D95B1250(v35, v106, v37, v57, v58);
          v85 = v35;
          v86 = v87;
        }

        sub_1D95B1250(v85, v86, v37, v57, v58);
        v28 = v97;
        v29 = v96;
        v31 = v95;
        v33 = v104;
        v32 = v93;
        goto LABEL_9;
      }

      if (v40 == 4)
      {
        v42 = v33;
        v43 = v38;
        v44 = v39;
        v45 = v32;
        v46 = *(v32 + v94);
        os_unfair_lock_lock((v46 + 104));
        v47 = *(v46 + 88);
        if (v47)
        {
          v48 = *(v46 + 96);
          v47(v35);
        }

        os_unfair_lock_unlock((v46 + 104));
        sub_1D95B1250(v35, v36, v37, v43, v44);
        v33 = v42;
        v32 = v45;
        v29 = v96;
        v31 = v95;
        goto LABEL_8;
      }

      has_internal_content = os_variant_has_internal_content();
      if (has_internal_content)
      {
        v91 = v38;
        LODWORD(v105) = v39;
        v89 = &v88;
        v65 = v31;
        v66 = *(v32 + v94);
        MEMORY[0x1EEE9AC00](has_internal_content);
        *(&v88 - 2) = v32;
        os_unfair_lock_lock(v66 + 26);
        v67 = v33;
        v68 = v92;
        sub_1D95B13FC(&v66[4]);
        v92 = v68;
        v33 = v67;
        v69 = v66 + 26;
        v31 = v65;
        v70 = v97;
        os_unfair_lock_unlock(v69);
        v29 = v96;
        sub_1D95B1250(v35, v36, v37, v91, v105);
        v28 = v70;
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    if (v40)
    {
      if (v40 == 1)
      {
        sub_1D95B1334(v35, v36, v37, v38, v39);
        sub_1D95B1334(v35, v36, v37, v38, v39);
        if (os_variant_has_internal_content())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AD0, &unk_1D95CD1C0);
          v41 = swift_allocObject();
          *(v41 + 16) = v88;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          *(v41 + 32) = v35;
          *(v41 + 40) = v36;
          sub_1D95C050C();
          sub_1D95B1250(v35, v36, v37, v38, v39);
          v31 = v95;

          goto LABEL_8;
        }

        sub_1D95B1250(v35, v36, v37, v38, v39);
      }

      else
      {
        LOBYTE(v107[0]) = v36;
        sub_1D95B1334(v35, v36, v37, v38, v39);
        sub_1D95A7280(v35, v107);
      }

LABEL_7:
      sub_1D95B1250(v35, v36, v37, v38, v39);
LABEL_8:
      v28 = v97;
      goto LABEL_9;
    }

    *&v110 = v35;
    *(&v110 + 1) = v36;
    *&v111 = v37;
    *(&v111 + 1) = v38;
    v112 = v39;
    v49 = *(v32 + v94);
    LODWORD(v105) = v39;
    sub_1D95B1334(v35, v36, v37, v38, v39);
    os_unfair_lock_lock(v49 + 26);
    v50 = *&v49[10]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v49 + 26);
    if (v50 >> 62)
    {
      v51 = sub_1D95C022C();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = v30;
    v103 = v37;
    v106 = v36;
    v91 = v49;
    if (v51)
    {
      if (v51 < 1)
      {
        goto LABEL_58;
      }

      v52 = v38;
      v53 = 0;
      do
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x1DA732820](v53, v50);
        }

        else
        {
          v54 = *(v50 + 8 * v53 + 32);
        }

        ++v53;
        v107[0] = v110;
        v107[1] = v111;
        v108 = v112;
        v55 = *(*v54 + 88);
        sub_1D95B1334(v35, v106, v103, v52, v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06290, &unk_1D95C95A0);
        v56 = v102;
        sub_1D95BFFBC();

        (*v100)(v56, v33);
      }

      while (v51 != v53);
    }

    else
    {
      v52 = v38;
    }

    MEMORY[0x1EEE9AC00](v71);
    *(&v88 - 2) = &v110;
    v72 = v91;
    os_unfair_lock_lock(v91 + 26);
    v73 = v92;
    sub_1D95B1418(&v72[4], v107);
    v92 = v73;
    os_unfair_lock_unlock(v72 + 26);
    v74 = *&v107[0];
    if (*&v107[0] >> 62)
    {
      v75 = sub_1D95C022C();
    }

    else
    {
      v75 = *((*&v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v93;
    v29 = v96;
    v30 = v90;
    v76 = v95;
    v77 = v106;
    v33 = v104;
    if (v75)
    {
      if (v75 < 1)
      {
        goto LABEL_59;
      }

      v78 = v106;
      v91 = v52;
      v79 = 0;
      do
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x1DA732820](v79, v74);
        }

        else
        {
          v80 = *(v74 + 8 * v79 + 32);
        }

        ++v79;
        *&v107[0] = v35;
        v81 = *(*v80 + 88);
        sub_1D953FCB8(v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F0, &qword_1D95CD1D0);
        v82 = v101;
        sub_1D95BFFBC();

        (*v98)(v82, v99);
        v83 = v104;
      }

      while (v75 != v79);

      sub_1D95B1250(v35, v78, v103, v91, v105);
      v32 = v93;
      v28 = v97;
      v29 = v96;
      v31 = v95;
      v33 = v83;
    }

    else
    {

      sub_1D95B1250(v35, v77, v103, v52, v105);
      v28 = v97;
      v31 = v76;
    }

LABEL_9:
    if (++v30 == v29)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  swift_once();
  v14 = sub_1D95BFC8C();
  __swift_project_value_buffer(v14, qword_1EDCFA2D0);
  v15 = v33;
  v16 = sub_1D95BFC6C();
  v17 = sub_1D95C009C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v110 = v19;
    *v18 = 136446210;
    ErrorValue = swift_getErrorValue();
    v21 = *(*(v109 - 8) + 64);
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v23 + 16))(&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_1D95BFDFC();
    v26 = sub_1D95A9D84(v24, v25, &v110);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_1D953A000, v16, v17, "Error decoding XPC client message: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1DA733200](v19, -1, -1);
    MEMORY[0x1DA733200](v18, -1, -1);
  }

  else
  {
  }
}

void sub_1D95A7280(uint64_t a1, _BYTE *a2)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v68 - v7;
  v8 = type metadata accessor for ManagedApp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  *&v72 = &v68 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v68 - v20;
  if (*a2 == 6)
  {
    if (a1)
    {
      v71 = v5;
      v73 = v19;
      v22 = objc_opt_self();

      v23 = [v22 mainBundle];
      v24 = [v23 bundleIdentifier];

      if (v24)
      {
        v69 = v2;
        v70 = v9;
        v74 = v18;
        v75 = v13;
        v25 = sub_1D95BFD9C();
        v27 = v26;

        v28 = a1;
        v29 = *(a1 + 16);
        v68 = v28;
        if (v29)
        {
          v30 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v31 = *(v70 + 72);
          v32 = v28 + v30;
          v78 = MEMORY[0x1E69E7CC0];
          v33 = v72;
          do
          {
            sub_1D9548200(v32, v21);
            v34 = *(v21 + 2) == v25 && *(v21 + 3) == v27;
            if (v34 || (sub_1D95C041C() & 1) != 0)
            {
              sub_1D9548264(v21);
            }

            else
            {
              sub_1D958DA24(v21, v33);
              v35 = v78;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v37 = v35;
              v79 = v35;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D95AB8F4(0, *(v35 + 16) + 1, 1);
                v33 = v72;
                v37 = v79;
              }

              v39 = *(v37 + 16);
              v38 = *(v37 + 24);
              if (v39 >= v38 >> 1)
              {
                sub_1D95AB8F4(v38 > 1, v39 + 1, 1);
                v33 = v72;
                v37 = v79;
              }

              *(v37 + 16) = v39 + 1;
              v78 = v37;
              sub_1D958DA24(v33, v37 + v30 + v39 * v31);
            }

            v32 += v31;
            --v29;
          }

          while (v29);
        }

        else
        {
          v78 = MEMORY[0x1E69E7CC0];
        }

        v42 = *(v78 + 16);
        v44 = v74;
        v43 = v75;
        if (v42)
        {
          v45 = v78 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v46 = *(v70 + 72);
          v47 = &unk_1EDCFA000;
          *&v41 = 136446210;
          v72 = v41;
          do
          {
            sub_1D9548200(v45, v44);
            if (v47[89] != -1)
            {
              swift_once();
            }

            v48 = sub_1D95BFC8C();
            __swift_project_value_buffer(v48, qword_1EDCFA2D0);
            sub_1D958DA24(v44, v43);
            v49 = sub_1D95BFC6C();
            v50 = sub_1D95C008C();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = v47;
              v52 = v46;
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79 = v54;
              *v53 = v72;
              v55 = (v43 + *(v73 + 44));
              v56 = *v55;
              v57 = v55[1];

              sub_1D9548264(v75);
              v58 = sub_1D95A9D84(v56, v57, &v79);
              v44 = v74;

              *(v53 + 4) = v58;
              v43 = v75;
              _os_log_impl(&dword_1D953A000, v49, v50, "Received App: %{public}s", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v54);
              MEMORY[0x1DA733200](v54, -1, -1);
              v59 = v53;
              v46 = v52;
              v47 = v51;
              MEMORY[0x1DA733200](v59, -1, -1);
            }

            else
            {

              sub_1D9548264(v43);
            }

            v45 += v46;
            --v42;
          }

          while (v42);
        }

        v40 = 0;
        v2 = v69;
      }

      else
      {
        v40 = 0;
        v78 = a1;
      }

      v5 = v71;
    }

    else
    {
      v78 = 0;
      v40 = 1;
    }
  }

  else
  {
    v78 = *a2;
    v40 = 1;
  }

  v60 = *(v2 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  os_unfair_lock_lock((v60 + 104));
  v61 = *(v60 + 48);

  os_unfair_lock_unlock((v60 + 104));
  if (!(v61 >> 62))
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_34;
    }

LABEL_41:

    sub_1D958DE48(v78, v40);
    return;
  }

  v62 = sub_1D95C022C();
  if (!v62)
  {
    goto LABEL_41;
  }

LABEL_34:
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = (v5 + 8);
    v65 = v76;
    do
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x1DA732820](v63, v61);
      }

      else
      {
        v66 = *(v61 + 8 * v63 + 32);
      }

      ++v63;
      v79 = v78;
      v80 = v40;
      v67 = *(*v66 + 88);
      sub_1D958DE4C(v78, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
      sub_1D95BFFBC();

      (*v64)(v65, v77);
    }

    while (v62 != v63);
    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_1D95A7980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v36[0] = *(a2 + 1);
  *(v36 + 9) = *(a2 + 17);
  updated = AppStateUpdateIdentifier.appStateIdentifiers.getter();
  v34 = *(updated + 2);
  v35 = a1;
  if (!v34)
  {

LABEL_19:
    v36[0] = *(v3 + 1);
    *(v36 + 9) = *(v3 + 17);
    v28 = AppStateUpdateIdentifier.appStateIdentifiers.getter();
    v29 = sub_1D95A7BEC(v28, v35);

    *a3 = v29;
    return result;
  }

  v32 = a3;
  v7 = 0;
  v31 = v3;
  v37 = *v3;
  v8 = updated + 48;
  v33 = updated;
  while (v7 < *(updated + 2))
  {
    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    v12 = *v8;
    sub_1D953FCA8(v11, v10, *v8);
    sub_1D95B1A74(&v37, v36);
    v13 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = *(a1 + 48);
    v15 = *&v36[0];
    v17 = sub_1D953E700(v11, v10, v12);
    v18 = *(v15 + 16);
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_21;
    }

    v21 = v16;
    if (*(v15 + 24) >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v16)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D95AB758();
        if (v21)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D95AAE34(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D953E700(v11, v10, v12);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_23;
      }

      v17 = v22;
      if (v21)
      {
LABEL_3:
        sub_1D953FCF0(v11, v10, v12);
        v9 = *&v36[0];
        sub_1D95B1AD0(&v37, *(*&v36[0] + 56) + 8 * v17);
        goto LABEL_4;
      }
    }

    v9 = *&v36[0];
    *(*&v36[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v24 = v9[6] + 24 * v17;
    *v24 = v11;
    *(v24 + 8) = v10;
    *(v24 + 16) = v12;
    *(v9[7] + 8 * v17) = v37;
    v25 = v9[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    v9[2] = v27;
LABEL_4:
    ++v7;
    a1 = v35;
    *(v35 + 48) = v9;
    v8 += 24;
    updated = v33;
    if (v34 == v7)
    {

      a3 = v32;
      v3 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1D95C04BC();
  __break(1u);
  return result;
}

uint64_t sub_1D95A7BEC(uint64_t a1, uint64_t a2)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v39 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = &unk_1ECB07AF0;
  v5 = &unk_1D95CD430;
  while (1)
  {
    v8 = *(a2 + 40);
    if (*(v8 + 16))
    {
      v9 = v39 + 24 * v2;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_1D953FCA8(*v9, v11, v12);
      v13 = sub_1D953E700(v10, v11, v12);
      v14 = MEMORY[0x1E69E7CC0];
      if (v15)
      {
        v14 = *(*(v8 + 56) + 8 * v13);
      }

      sub_1D953FCF0(v10, v11, v12);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v16 = v14 >> 62;
    v17 = v14 >> 62 ? sub_1D95C022C() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v3 >> 62;
    v45 = v2;
    if (v3 >> 62)
    {
      v38 = sub_1D95C022C();
      v20 = v38 + v17;
      if (__OFADD__(v38, v17))
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v18)
      {
        goto LABEL_21;
      }

      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = v17;
        goto LABEL_23;
      }
    }

    else
    {
      if (v18)
      {
LABEL_21:
        sub_1D95C022C();
        goto LABEL_22;
      }

      v21 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = *(v21 + 16);
LABEL_22:
    v22 = v17;
    result = sub_1D95C01DC();
    v3 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v16)
    {
      break;
    }

    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v25 >> 1) - v24) < v22)
    {
      goto LABEL_43;
    }

    v43 = v3;
    v28 = v21 + 8 * v24 + 32;
    v40 = v21;
    if (v16)
    {
      if (v26 < 1)
      {
        goto LABEL_45;
      }

      sub_1D9547F60(&qword_1ECB07AF8, v4, v5);
      v30 = v5;
      v29 = v4;
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v4, v30);
        v32 = sub_1D95B11C8(v44, i, v14);
        v34 = *v33;

        (v32)(v44, 0);
        *(v28 + 8 * i) = v34;
        v30 = v5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F8, &qword_1D95C5B98);
      swift_arrayInitWithCopy();
      v29 = v4;
      v30 = v5;
    }

    v5 = v30;

    v4 = v29;
    v3 = v43;
    v7 = v45;
    if (v22 >= 1)
    {
      v35 = *(v40 + 16);
      v36 = __OFADD__(v35, v22);
      v37 = v35 + v22;
      if (v36)
      {
        goto LABEL_44;
      }

      *(v40 + 16) = v37;
    }

LABEL_4:
    v2 = v7 + 1;
    if (v2 == v41)
    {
      return v3;
    }
  }

  v27 = v21;
  result = sub_1D95C022C();
  v21 = v27;
  v26 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  v7 = v45;
  if (v22 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D95A7F5C(uint64_t a1)
{
  v2 = sub_1D95B1B2C(&unk_1F54E8E68);
  sub_1D95B2014(&unk_1F54E8E88);
  sub_1D95A4BB0(v2, 0, a1, 0, 0);
}

uint64_t sub_1D95A7FD4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_1D95B19D0(*v10, v12, v13);
      sub_1D95AC260(v14, v11, v12, v13);
      result = sub_1D95B19E8(v14[0], v14[1], v15);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D95A80F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 145) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  v9 = sub_1D95BFA3C();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = *(*(sub_1D95BFB0C() - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95A81E8, 0, 0);
}

uint64_t sub_1D95A81E8()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1D95A82E0;
  v2 = *(v0 + 56);

  return sub_1D9553860(1, v2, sub_1D95A8BA8, 0);
}

uint64_t sub_1D95A82E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1D95A84E0;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_1D95A8408;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D95A8408()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[8];
  v4 = *(v3 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  os_unfair_lock_lock((v4 + 104));
  sub_1D95B18C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 104));
  if (!v2)
  {

    v7 = v0[13];
    v6 = v0[14];

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_1D95A84E0()
{
  v67 = v0;
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 145);
  v6 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v7 = sub_1D95BFA7C();

  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 128);
  if ((v7 & 1) != 0 && (v5 & 1) == 0)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D95BFC8C();
    __swift_project_value_buffer(v9, qword_1EDCFA2D0);
    v10 = sub_1D95BFC6C();
    v11 = sub_1D95C00AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D953A000, v10, v11, "Re-registering #listener for messages; interrupted the first time", v12, 2u);
      MEMORY[0x1DA733200](v12, -1, -1);
    }

    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);

    v17 = *(v15 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
    v18 = swift_task_alloc();
    v18[2] = v15;
    v18[3] = v16;
    v18[4] = v14;
    v18[5] = v13;
    os_unfair_lock_lock(v17 + 26);
    sub_1D95B18A0(&v17[4]);
    os_unfair_lock_unlock(v17 + 26);
LABEL_21:

    goto LABEL_22;
  }

  *(v0 + 40) = v8;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
  if (!swift_dynamicCast())
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 128);
    v40 = *(v0 + 56);
    v41 = sub_1D95BFC8C();
    __swift_project_value_buffer(v41, qword_1EDCFA2D0);
    v42 = v39;

    v43 = sub_1D95BFC6C();
    v44 = sub_1D95C009C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 128);
      v46 = *(v0 + 56);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136446466;
      sub_1D95B1818();
      v49 = sub_1D95C003C();
      v51 = sub_1D95A9D84(v49, v50, &v65);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      swift_getErrorValue();
      v52 = *(v0 + 16);
      v53 = *(*(v0 + 24) - 8);
      v54 = *(v53 + 64) + 15;
      swift_task_alloc();
      (*(v53 + 16))();
      v55 = sub_1D95BFDFC();
      v57 = v56;

      v58 = sub_1D95A9D84(v55, v57, &v65);

      *(v47 + 14) = v58;
      _os_log_impl(&dword_1D953A000, v43, v44, "Error registering #listener for message: %{public}s: %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA733200](v48, -1, -1);
      MEMORY[0x1DA733200](v47, -1, -1);
    }

    v59 = *(v0 + 56);
    v60 = *(*(v0 + 64) + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
    *(swift_task_alloc() + 16) = v59;
    os_unfair_lock_lock(v60 + 26);
    sub_1D95B26C0();
    os_unfair_lock_unlock(v60 + 26);

    goto LABEL_21;
  }

  v20 = *(v0 + 144);
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 56);
  v22 = sub_1D95BFC8C();
  __swift_project_value_buffer(v22, qword_1EDCFA2D0);

  v23 = sub_1D95BFC6C();
  v24 = sub_1D95C009C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 112);
    v26 = *(v0 + 56);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v65 = v28;
    *v27 = 136446466;
    sub_1D95B1818();
    v29 = sub_1D95C003C();
    v31 = sub_1D95A9D84(v29, v30, &v65);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v66 = v20;
    ManagedAppDistributionError.localizedStringResource.getter();
    v32 = sub_1D95BFDEC();
    v34 = sub_1D95A9D84(v32, v33, &v65);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1D953A000, v23, v24, "Client-deliverable error registering #listener for message: %{public}s: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA733200](v28, -1, -1);
    MEMORY[0x1DA733200](v27, -1, -1);
  }

  v35 = *(v0 + 72);
  if (v35)
  {
    v36 = *(v0 + 80);
    LOBYTE(v65) = v20;
    v35(&v65);
  }

  v37 = *(v0 + 56);
  v38 = *(*(v0 + 64) + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  *(swift_task_alloc() + 16) = v37;
  os_unfair_lock_lock(v38 + 26);
  sub_1D95B186C();
  os_unfair_lock_unlock(v38 + 26);

LABEL_22:
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);

  v63 = *(v0 + 8);

  return v63();
}

void sub_1D95A8BBC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = a2[2];
  if (*(v10 + 16))
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    *a2 = a1;
    *(a2 + 8) = 0;
    if ((v12 & 1) == 0 && v11 != a1)
    {
      if (qword_1EDCFA2C8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D95BFC8C();
      __swift_project_value_buffer(v13, qword_1EDCFA2D0);
      v14 = sub_1D95BFC6C();
      v15 = sub_1D95C00AC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134218240;
        *(v16 + 4) = v11;
        *(v16 + 12) = 2048;
        *(v16 + 14) = a1;
        _os_log_impl(&dword_1D953A000, v14, v15, "Re-registering for messages as last known daemon identifier changed: %llu -> %llu", v16, 0x16u);
        MEMORY[0x1DA733200](v16, -1, -1);
      }

      if (*(v10 + 16))
      {
        swift_bridgeObjectRetain_n();
        v17 = sub_1D95BFC6C();
        v18 = sub_1D95C00AC();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v33 = v20;
          *v19 = 136315394;
          *(v19 + 4) = sub_1D95A9D84(0x29646563726F6628, 0xE900000000000020, &v33);
          *(v19 + 12) = 2082;
          sub_1D95B1818();
          v21 = sub_1D95C003C();
          v23 = sub_1D95A9D84(v21, v22, &v33);

          *(v19 + 14) = v23;
          _os_log_impl(&dword_1D953A000, v17, v18, "Registering %s#listener for messages: %{public}s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA733200](v20, -1, -1);
          MEMORY[0x1DA733200](v19, -1, -1);
        }

        sub_1D95A7FD4(v24);
        v25 = sub_1D95BFF8C();
        (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 32) = v10;
        *(v26 + 40) = v3;
        *(v26 + 48) = 1;
        *(v26 + 56) = 0;
        *(v26 + 64) = 0;
        v27 = v3;
        sub_1D95A9304(0, 0, v9, &unk_1D95CD3F8, v26);
      }
    }
  }

  else
  {
    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D95BFC8C();
    __swift_project_value_buffer(v28, qword_1EDCFA2D0);
    v29 = sub_1D95BFC6C();
    v30 = sub_1D95C00AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D953A000, v29, v30, "Not registered for any messages; resetting last known daemon instance identifier", v31, 2u);
      MEMORY[0x1DA733200](v31, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 1;
  }
}

uint64_t sub_1D95A8FFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - v11;
  if (*(a3 + 16))
  {
    v13 = qword_1EDCFA2C8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1D95BFC8C();
    __swift_project_value_buffer(v14, qword_1EDCFA2D0);

    v15 = sub_1D95BFC6C();
    v16 = sub_1D95C00AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v16;
      v18 = v17;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v18 = 136315394;
      *(v18 + 4) = sub_1D95A9D84(0x29646563726F6628, 0xE900000000000020, &v35);
      *(v18 + 12) = 2082;
      sub_1D95B1818();
      v19 = sub_1D95C003C();
      v33 = v12;
      v21 = a2;
      v22 = a5;
      v23 = sub_1D95A9D84(v19, v20, &v35);
      v12 = v33;

      *(v18 + 14) = v23;
      a5 = v22;
      a2 = v21;
      _os_log_impl(&dword_1D953A000, v15, v31, "Registering %s#listener for messages: %{public}s", v18, 0x16u);
      v24 = v32;
      swift_arrayDestroy();
      MEMORY[0x1DA733200](v24, -1, -1);
      MEMORY[0x1DA733200](v18, -1, -1);
    }

    sub_1D95A7FD4(v25);
    v26 = sub_1D95BFF8C();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = a3;
    *(v27 + 40) = a2;
    *(v27 + 48) = 1;
    v28 = v34;
    *(v27 + 56) = v34;
    *(v27 + 64) = a5;
    v29 = a2;
    sub_1D953CF64(v28);
    sub_1D95A9304(0, 0, v12, &unk_1D95CD408, v27);
  }

  return result;
}

uint64_t sub_1D95A9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D958DB3C(a3, v27 - v11);
  v13 = sub_1D95BFF8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D9547EAC(v12, &qword_1ECB07138, &unk_1D95C9320);
  }

  else
  {
    sub_1D95BFF7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D95BFF2C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D95BFE0C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D9547EAC(a3, &qword_1ECB07138, &unk_1D95C9320);

      return v25;
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

  sub_1D9547EAC(a3, &qword_1ECB07138, &unk_1D95C9320);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1D95A9608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = sub_1D95BFBBC();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D95A3C64;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a1 *a7];
  _Block_release(v13);
}

uint64_t sub_1D95A9700()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D95A97F8;

  return sub_1D955422C(1, 1, sub_1D95A9B8C, 0);
}

uint64_t sub_1D95A97F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_1D95A99E8;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_1D95A9920;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D95A9920()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  os_unfair_lock_lock((v4 + 104));
  sub_1D95B26EC((v4 + 16));
  os_unfair_lock_unlock((v4 + 104));
  if (!v2)
  {

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_1D95A99E8()
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D95BFC8C();
  __swift_project_value_buffer(v2, qword_1EDCFA2D0);
  v3 = v1;
  v4 = sub_1D95BFC6C();
  v5 = sub_1D95C009C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D953A000, v4, v5, "Failed to retrieve daemon instance identifier: %{public}@", v8, 0xCu);
    sub_1D9547EAC(v9, &qword_1ECB06050, &qword_1D95C5B30);
    MEMORY[0x1DA733200](v9, -1, -1);
    MEMORY[0x1DA733200](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D95A9B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D95A3C64;
  v7[3] = &block_descriptor_38;
  v6 = _Block_copy(v7);

  [a1 daemonInstanceIdentifierWithReply_];
  _Block_release(v6);
}

id XPCClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D95A9C8C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D955BDEC;

  return v7(a1);
}

uint64_t sub_1D95A9D84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D95A9E50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D953F4E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D95A9E50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D95A9F5C(a5, a6);
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
    result = sub_1D95C020C();
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

uint64_t sub_1D95A9F5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D95A9FA8(a1, a2);
  sub_1D95AA0D8(&unk_1F54E8CF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D95A9FA8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D95AA1C4(v5, 0);
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

  result = sub_1D95C020C();
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
        v10 = sub_1D95BFE4C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D95AA1C4(v10, 0);
        result = sub_1D95C019C();
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

uint64_t sub_1D95AA0D8(uint64_t result)
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

  result = sub_1D95AA238(result, v12, 1, v3);
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

void *sub_1D95AA1C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B08, &unk_1D95CD440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D95AA238(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B08, &unk_1D95CD440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D95AA32C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C60, &unk_1D95CD470);
  v36 = a2;
  result = sub_1D95C024C();
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
        sub_1D953F6D0(v25, v37);
      }

      else
      {
        sub_1D953F4E4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D95C051C();
      sub_1D95BFE1C();
      result = sub_1D95C055C();
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
      result = sub_1D953F6D0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1D95AA5E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C50, &qword_1D95C1168);
  result = sub_1D95C024C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1D953F6D0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1D953FD4C(v24, &v38);
        sub_1D953F4E4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1D95C013C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1D953F6D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D95AA89C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C48, &qword_1D95C1160);
  v38 = a2;
  result = sub_1D95C024C();
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
      sub_1D95C051C();
      sub_1D95BFE1C();
      result = sub_1D95C055C();
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

uint64_t sub_1D95AAB44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B48, &qword_1D95CD468);
  v38 = a2;
  result = sub_1D95C024C();
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v39 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_1D953FCA8(v24, v39, *(v23 + 16));
      }

      v27 = *(v8 + 40);
      sub_1D95C051C();
      if (v25)
      {
        MEMORY[0x1DA732B80](1);
        sub_1D95BFE1C();
      }

      else
      {
        MEMORY[0x1DA732B80](0);
        MEMORY[0x1DA732BA0](v24);
      }

      result = sub_1D95C055C();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v39;
      *(v17 + 16) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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
        goto LABEL_40;
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
      goto LABEL_38;
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

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1D95AAE34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C40, &unk_1D95CD420);
  v38 = a2;
  result = sub_1D95C024C();
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v39 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_1D953FCA8(v24, v39, *(v23 + 16));
        sub_1D953FCB8(v26);
      }

      v27 = *(v8 + 40);
      sub_1D95C051C();
      if (v25)
      {
        MEMORY[0x1DA732B80](1);
        sub_1D95BFE1C();
      }

      else
      {
        MEMORY[0x1DA732B80](0);
        MEMORY[0x1DA732BA0](v24);
      }

      result = sub_1D95C055C();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v39;
      *(v17 + 16) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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
        goto LABEL_40;
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
      goto LABEL_38;
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

LABEL_38:
  *v3 = v8;
  return result;
}

void *sub_1D95AB124()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C60, &unk_1D95CD470);
  v2 = *v0;
  v3 = sub_1D95C023C();
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
        sub_1D953F4E4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D953F6D0(v25, (*(v4 + 56) + v22));
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

void *sub_1D95AB2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C50, &qword_1D95C1168);
  v2 = *v0;
  v3 = sub_1D95C023C();
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
        v18 = 40 * v17;
        sub_1D953FD4C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D953F4E4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D953F6D0(v22, (*(v4 + 56) + v17));
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

void *sub_1D95AB46C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C48, &qword_1D95C1160);
  v2 = *v0;
  v3 = sub_1D95C023C();
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

void *sub_1D95AB5DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B48, &qword_1D95CD468);
  v2 = *v0;
  v3 = sub_1D95C023C();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1D953FCA8(v19, v20, v21);
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

void *sub_1D95AB758()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C40, &unk_1D95CD420);
  v2 = *v0;
  v3 = sub_1D95C023C();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1D953FCA8(v19, v20, v21);
        result = sub_1D953FCB8(v22);
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

char *sub_1D95AB8D4(char *a1, int64_t a2, char a3)
{
  result = sub_1D95AB914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D95AB8F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D95ABA20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D95AB914(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FC0, &unk_1D95C5380);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1D95ABA20(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B00, &qword_1D95CD438);
  v10 = *(type metadata accessor for ManagedApp() - 8);
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
  v15 = *(type metadata accessor for ManagedApp() - 8);
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

uint64_t sub_1D95ABBF8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D95C022C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D95C01DC();
  *v1 = result;
  return result;
}

uint64_t sub_1D95ABC98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D9547F60(&qword_1ECB07B28, &qword_1ECB07098, &unk_1D95C9360);
  v34 = a2;
  v13 = sub_1D95BFD3C();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D9547F60(&qword_1ECB07B30, &qword_1ECB07098, &unk_1D95C9360);
      v21 = sub_1D95BFD5C();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D95AD0A8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D95ABF7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D9547F60(&qword_1ECB07B10, &qword_1ECB07130, &qword_1D95C95F0);
  v34 = a2;
  v13 = sub_1D95BFD3C();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D9547F60(&qword_1ECB07B18, &qword_1ECB07130, &qword_1D95C95F0);
      v21 = sub_1D95BFD5C();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D95AD36C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D95AC260(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v33 = *v4;
  v9 = *(*v4 + 40);
  sub_1D95C051C();
  v32 = v4;
  if (a4 <= 0xFCu)
  {
    if (a4 == 251)
    {
      v10 = 5;
      goto LABEL_12;
    }

    if (a4 == 252)
    {
      v10 = 4;
      goto LABEL_12;
    }

LABEL_48:
    MEMORY[0x1DA732B80](2);
    if (a4)
    {
      MEMORY[0x1DA732B80](1);
      sub_1D95BFE1C();
    }

    else
    {
      MEMORY[0x1DA732B80](0);
      MEMORY[0x1DA732BA0](a2);
    }

    goto LABEL_13;
  }

  if (a4 == 253)
  {
    v10 = 3;
    goto LABEL_12;
  }

  if (a4 == 254)
  {
    v10 = 1;
    goto LABEL_12;
  }

  if (a4 != 255)
  {
    goto LABEL_48;
  }

  v10 = 0;
LABEL_12:
  MEMORY[0x1DA732B80](v10);
LABEL_13:
  v11 = sub_1D95C055C();
  v12 = -1 << *(v33 + 32);
  v13 = v11 & ~v12;
  if (((*(v33 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_47:
    v21 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;
    sub_1D95B19D0(a2, a3, a4);
    sub_1D95AD630(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v32 = v34;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v33 + 48) + 24 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18 <= 0xFC)
    {
      if (v18 == 251)
      {
        if (a4 == 251)
        {
          a4 = -5;
          v24 = *v15;
          v25 = *(v15 + 8);
          v26 = -5;
          goto LABEL_56;
        }

        sub_1D95B19D0(a2, a3, a4);
        v19 = -5;
        goto LABEL_33;
      }

      if (v18 == 252)
      {
        if (a4 == 252)
        {
          a4 = -4;
          v24 = *v15;
          v25 = *(v15 + 8);
          v26 = -4;
          goto LABEL_56;
        }

        sub_1D95B19D0(a2, a3, a4);
        v19 = -4;
        goto LABEL_33;
      }
    }

    else
    {
      switch(v18)
      {
        case 0xFDu:
          if (a4 == 253)
          {
            a4 = -3;
            v24 = *v15;
            v25 = *(v15 + 8);
            v26 = -3;
            goto LABEL_56;
          }

          sub_1D95B19D0(a2, a3, a4);
          v19 = -3;
          goto LABEL_33;
        case 0xFEu:
          if (a4 == 254)
          {
            a4 = -2;
            v24 = *v15;
            v25 = *(v15 + 8);
            v26 = -2;
            goto LABEL_56;
          }

          sub_1D95B19D0(a2, a3, a4);
          v19 = -2;
          goto LABEL_33;
        case 0xFFu:
          if (a4 == 0xFF)
          {
            a4 = -1;
            v24 = *v15;
            v25 = *(v15 + 8);
            v26 = -1;
            goto LABEL_56;
          }

          sub_1D95B19D0(a2, a3, a4);
          v19 = -1;
          goto LABEL_33;
      }
    }

    if (a4 > 0xFAu)
    {
      goto LABEL_32;
    }

    if (v18)
    {
      break;
    }

    sub_1D95B19D0(a2, a3, a4);
    sub_1D95B19D0(v16, v17, v18);
    sub_1D95B19E8(v16, v17, v18);
    sub_1D95B19E8(a2, a3, a4);
    if ((a4 & 1) == 0 && v16 == a2)
    {
      goto LABEL_57;
    }

LABEL_34:
    v13 = (v13 + 1) & v14;
    if (((*(v33 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if ((a4 & 1) == 0)
  {
LABEL_32:
    sub_1D95B19D0(a2, a3, a4);
    sub_1D95B19D0(v16, v17, v18);
    v19 = v18;
LABEL_33:
    sub_1D95B19E8(v16, v17, v19);
    sub_1D95B19E8(a2, a3, a4);
    goto LABEL_34;
  }

  if (v16 != a2 || v17 != a3)
  {
    v31 = sub_1D95C041C();
    sub_1D95B19D0(a2, a3, a4);
    sub_1D95B19D0(v16, v17, v18);
    sub_1D95B19E8(v16, v17, v18);
    sub_1D95B19E8(a2, a3, a4);
    if (v31)
    {
      goto LABEL_57;
    }

    goto LABEL_34;
  }

  sub_1D953FCA8(a2, a3, 1);
  v24 = a2;
  v25 = a3;
  v26 = v18;
LABEL_56:
  sub_1D95B19E8(v24, v25, v26);
LABEL_57:
  sub_1D95B19E8(a2, a3, a4);
  v27 = *(v33 + 48) + 24 * v13;
  v28 = *v27;
  v29 = *(v27 + 8);
  *a1 = *v27;
  *(a1 + 8) = v29;
  v30 = *(v27 + 16);
  *(a1 + 16) = v30;
  sub_1D95B19D0(v28, v29, v30);
  return 0;
}

uint64_t sub_1D95AC70C(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B38, &qword_1D95CD458);
  result = sub_1D95C017C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D9547F60(&qword_1ECB07B28, &qword_1ECB07098, &unk_1D95C9360);
      result = sub_1D95BFD3C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D95ACA6C(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B20, &qword_1D95CD450);
  result = sub_1D95C017C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D9547F60(&qword_1ECB07B10, &qword_1ECB07130, &qword_1D95C95F0);
      result = sub_1D95BFD3C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1D95ACDCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE8, &qword_1D95CD410);
  result = sub_1D95C017C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D95ACF3C(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D95ACF3C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_1D95C051C();
  if (a3 <= 0xFCu)
  {
    if (a3 == 251)
    {
      v9 = 5;
      goto LABEL_12;
    }

    if (a3 == 252)
    {
      v9 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xFDu:
        v9 = 3;
        goto LABEL_12;
      case 0xFEu:
        v9 = 1;
        goto LABEL_12;
      case 0xFFu:
        v9 = 0;
LABEL_12:
        MEMORY[0x1DA732B80](v9);
        goto LABEL_13;
    }
  }

  MEMORY[0x1DA732B80](2);
  if (a3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](a1);
  }

LABEL_13:
  sub_1D95C055C();
  v10 = -1 << *(a4 + 32);
  result = sub_1D95C012C();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(a4 + 48) + 24 * result;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_1D95AD0A8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D95AC70C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D95ADAC8(&qword_1ECB07098, &unk_1D95C9360, &qword_1ECB07B38, &qword_1D95CD458);
      goto LABEL_12;
    }

    sub_1D95ADE5C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D9547F60(&qword_1ECB07B28, &qword_1ECB07098, &unk_1D95C9360);
  v15 = sub_1D95BFD3C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D9547F60(&qword_1ECB07B30, &qword_1ECB07098, &unk_1D95C9360);
      v23 = sub_1D95BFD5C();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D95C04AC();
  __break(1u);
  return result;
}

uint64_t sub_1D95AD36C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D95ACA6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D95ADAC8(&qword_1ECB07130, &qword_1D95C95F0, &qword_1ECB07B20, &qword_1D95CD450);
      goto LABEL_12;
    }

    sub_1D95AE17C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D9547F60(&qword_1ECB07B10, &qword_1ECB07130, &qword_1D95C95F0);
  v15 = sub_1D95BFD3C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D9547F60(&qword_1ECB07B18, &qword_1ECB07130, &qword_1D95C95F0);
      v23 = sub_1D95BFD5C();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D95C04AC();
  __break(1u);
  return result;
}