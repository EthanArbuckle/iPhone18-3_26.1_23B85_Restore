unint64_t sub_1D95693E0()
{
  result = qword_1ECB06658;
  if (!qword_1ECB06658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06658);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedPackageDeclaration.declarationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedPackageDeclaration.declarationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedPackageDeclaration.declarationIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedPackageDeclaration.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ManagedPackageDeclaration.manifestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ManagedPackageDeclaration() + 28);
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ManagedPackageDeclaration()
{
  result = qword_1ECB06760;
  if (!qword_1ECB06760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManagedPackageDeclaration.manifestURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ManagedPackageDeclaration() + 28);
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ManagedPackageDeclaration.installBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ManagedPackageDeclaration() + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t ManagedPackageDeclaration.installBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for ManagedPackageDeclaration() + 32);
  v6 = *(v5 + 16);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t ManagedPackageDeclaration.repairBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ManagedPackageDeclaration() + 36);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 ManagedPackageDeclaration.repairBehavior.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ManagedPackageDeclaration() + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);

  result = *a1;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return result;
}

uint64_t ManagedPackageDeclaration.removeBehavior.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedPackageDeclaration() + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ManagedPackageDeclaration.removeBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ManagedPackageDeclaration() + 40));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t ManagedPackageDeclaration.init(declarationIdentifier:manifestURL:installBehavior:repairBehavior:removeBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 1);
  v12 = *(a4 + 2);
  v13 = a6[1];
  v23 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = 0;
  v14 = type metadata accessor for ManagedPackageDeclaration();
  v15 = v14[7];
  v16 = sub_1D95BFBAC();
  v21 = a5[1];
  v22 = *a5;
  (*(*(v16 - 8) + 32))(a7 + v15, a3, v16);
  v17 = a7 + v14[8];
  *v17 = v10;
  *(v17 + 8) = v11;
  *(v17 + 16) = v12;
  v18 = (a7 + v14[9]);
  *v18 = v22;
  v18[1] = v21;
  v19 = (a7 + v14[10]);
  *v19 = v23;
  v19[1] = v13;
}

__n128 ManagedPackageDeclaration.init(declarationKey:declarationIdentifier:managementScope:manifestURL:installBehavior:repairBehavior:removeBehavior:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v13 = *a7;
  v14 = *(a7 + 1);
  v15 = *(a7 + 2);
  v16 = *a10;
  v17 = a10[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  v18 = type metadata accessor for ManagedPackageDeclaration();
  v19 = v18[7];
  v20 = sub_1D95BFBAC();
  v25 = a8[1];
  v26 = *a8;
  (*(*(v20 - 8) + 32))(a9 + v19, a6, v20);
  v21 = a9 + v18[8];
  *v21 = v13;
  *(v21 + 8) = v14;
  *(v21 + 16) = v15;
  v22 = (a9 + v18[9]);
  result = v26;
  *v22 = v26;
  v22[1] = v25;
  v24 = (a9 + v18[10]);
  *v24 = v16;
  v24[1] = v17;
  return result;
}

uint64_t ManagedPackageDeclaration.InstallBehavior.installTarget.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ManagedPackageDeclaration.InstallBehavior.installTarget.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *ManagedPackageDeclaration.InstallBehavior.init(installTiming:installTarget:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1D9569CC8()
{
  if (*v0)
  {
    result = 0x646E616D65446E6FLL;
  }

  else
  {
    result = 0x74616964656D6D69;
  }

  *v0;
  return result;
}

uint64_t sub_1D9569D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616964656D6D69 && a2 == 0xEB00000000796C65;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xE800000000000000)
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

uint64_t sub_1D9569DEC(uint64_t a1)
{
  v2 = sub_1D956A204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9569E28(uint64_t a1)
{
  v2 = sub_1D956A204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9569E64(uint64_t a1)
{
  v2 = sub_1D956A2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9569EA0(uint64_t a1)
{
  v2 = sub_1D956A2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9569EDC(uint64_t a1)
{
  v2 = sub_1D956A258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9569F18(uint64_t a1)
{
  v2 = sub_1D956A258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.InstallBehavior.InstallTimingEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06660, &qword_1D95C4220);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06668, &qword_1D95C4228);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06670, &qword_1D95C4230);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956A204();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D956A258();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D956A2AC();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1D956A204()
{
  result = qword_1ECB06678;
  if (!qword_1ECB06678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06678);
  }

  return result;
}

unint64_t sub_1D956A258()
{
  result = qword_1ECB06680;
  if (!qword_1ECB06680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06680);
  }

  return result;
}

unint64_t sub_1D956A2AC()
{
  result = qword_1ECB06688;
  if (!qword_1ECB06688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06688);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.InstallBehavior.InstallTimingEnum.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t ManagedPackageDeclaration.InstallBehavior.InstallTimingEnum.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06690, &qword_1D95C4238);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06698, &qword_1D95C4240);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066A0, &qword_1D95C4248);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956A204();
  v16 = v36;
  sub_1D95C059C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D95C032C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D954A268();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D95C01FC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v26 = &type metadata for ManagedPackageDeclaration.InstallBehavior.InstallTimingEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D956A258();
        sub_1D95C027C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D956A2AC();
        sub_1D95C027C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1D956A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x546C6C6174736E69 && a2 == 0xED0000676E696D69;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xED00007465677261)
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

uint64_t sub_1D956A984(uint64_t a1)
{
  v2 = sub_1D956ABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956A9C0(uint64_t a1)
{
  v2 = sub_1D956ABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.InstallBehavior.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066A8, &qword_1D95C4258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956ABA0();
  sub_1D95C05BC();
  v16 = v9;
  v15 = 0;
  sub_1D956ABF4();
  sub_1D95C03CC();
  if (!v2)
  {
    v14 = 1;
    sub_1D95C035C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D956ABA0()
{
  result = qword_1ECB066B0;
  if (!qword_1ECB066B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB066B0);
  }

  return result;
}

unint64_t sub_1D956ABF4()
{
  result = qword_1ECB066B8;
  if (!qword_1ECB066B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB066B8);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.InstallBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066C0, &qword_1D95C4260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956ABA0();
  sub_1D95C059C();
  if (!v2)
  {
    v18 = 0;
    sub_1D956AE24();
    sub_1D95C030C();
    v11 = v19;
    v17 = 1;
    v13 = sub_1D95C029C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D956AE24()
{
  result = qword_1ECB066C8;
  if (!qword_1ECB066C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB066C8);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.RepairBehavior.checkTarget.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedPackageDeclaration.RepairBehavior.checkTarget.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedPackageDeclaration.RepairBehavior.repairTarget.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedPackageDeclaration.RepairBehavior.repairTarget.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D956AFC4()
{
  if (*v0)
  {
    result = 0x6154726961706572;
  }

  else
  {
    result = 0x7261546B63656863;
  }

  *v0;
  return result;
}

uint64_t sub_1D956B010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261546B63656863 && a2 == 0xEB00000000746567;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6154726961706572 && a2 == 0xEC00000074656772)
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

uint64_t sub_1D956B0F4(uint64_t a1)
{
  v2 = sub_1D956B300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956B130(uint64_t a1)
{
  v2 = sub_1D956B300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.RepairBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066D0, &qword_1D95C4268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B300();
  sub_1D95C05BC();
  v16 = 0;
  v12 = v14[3];
  sub_1D95C035C();
  if (!v12)
  {
    v15 = 1;
    sub_1D95C035C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D956B300()
{
  result = qword_1ECB066D8;
  if (!qword_1ECB066D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB066D8);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.RepairBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066E0, &qword_1D95C4270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B300();
  sub_1D95C059C();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1D95C029C();
    v13 = v12;
    v19 = v11;
    v20 = 1;
    v15 = sub_1D95C029C();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ManagedPackageDeclaration.RemoveBehavior.removeTarget.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedPackageDeclaration.RemoveBehavior.removeTarget.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall ManagedPackageDeclaration.RemoveBehavior.init(removeTarget:)(Swift::String_optional removeTarget)
{
  object = removeTarget.value._object;
  countAndFlagsBits = removeTarget.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

uint64_t sub_1D956B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615465766F6D6572 && a2 == 0xEC00000074656772)
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

uint64_t sub_1D956B6F4(uint64_t a1)
{
  v2 = sub_1D956B8A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956B730(uint64_t a1)
{
  v2 = sub_1D956B8A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.RemoveBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066E8, &qword_1D95C4278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B8A8();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D956B8A8()
{
  result = qword_1ECB066F0;
  if (!qword_1ECB066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB066F0);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.RemoveBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066F8, &qword_1D95C4280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B8A8();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C029C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D956BA88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066E8, &qword_1D95C4278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B8A8();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D956BBC4()
{
  v1 = *v0;
  v2 = 0x746172616C636564;
  v3 = 0x6542726961706572;
  if (v1 != 5)
  {
    v3 = 0x654265766F6D6572;
  }

  v4 = 0x74736566696E616DLL;
  if (v1 != 3)
  {
    v4 = 0x426C6C6174736E69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x656D6567616E616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D956BCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D956D49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D956BD10(uint64_t a1)
{
  v2 = sub_1D956C0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956BD4C(uint64_t a1)
{
  v2 = sub_1D956C0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06700, &qword_1D95C4288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956C0DC();
  sub_1D95C05BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v26) = 1;
    sub_1D95C038C();
    LOBYTE(v26) = *(v3 + 32);
    v29 = 2;
    sub_1D956C130();
    sub_1D95C03CC();
    v15 = type metadata accessor for ManagedPackageDeclaration();
    v16 = v15[7];
    LOBYTE(v26) = 3;
    sub_1D95BFBAC();
    sub_1D956C888(&qword_1ECB05E10);
    sub_1D95C03CC();
    v17 = v3 + v15[8];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    LOBYTE(v26) = *v17;
    *&v27 = v18;
    *(&v27 + 1) = v19;
    v29 = 4;
    sub_1D956C184();

    sub_1D95C03CC();

    v20 = (v3 + v15[9]);
    v21 = v20[3];
    v26 = *v20;
    v27 = *(v20 + 1);
    v28 = v21;
    v29 = 5;
    sub_1D956C1D8();

    sub_1D95C03CC();

    v22 = (v3 + v15[10]);
    v23 = v22[1];
    v26 = *v22;
    *&v27 = v23;
    v29 = 6;
    sub_1D956C22C();

    sub_1D95C03CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D956C0DC()
{
  result = qword_1ECB06708;
  if (!qword_1ECB06708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06708);
  }

  return result;
}

unint64_t sub_1D956C130()
{
  result = qword_1ECB06710;
  if (!qword_1ECB06710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06710);
  }

  return result;
}

unint64_t sub_1D956C184()
{
  result = qword_1ECB06718;
  if (!qword_1ECB06718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06718);
  }

  return result;
}

unint64_t sub_1D956C1D8()
{
  result = qword_1ECB06720;
  if (!qword_1ECB06720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06720);
  }

  return result;
}

unint64_t sub_1D956C22C()
{
  result = qword_1ECB06728;
  if (!qword_1ECB06728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06728);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1D95BFBAC();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06730, &qword_1D95C4290);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ManagedPackageDeclaration();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_1D956C0DC();
  v37 = v11;
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  v18 = v7;
  v19 = v35;
  v20 = v36;
  v39[0] = 0;
  v21 = v37;
  *v15 = sub_1D95C02CC();
  *(v15 + 1) = v23;
  v31 = v23;
  v39[0] = 1;
  *(v15 + 2) = sub_1D95C02CC();
  *(v15 + 3) = v24;
  v40 = 2;
  sub_1D956C834();
  sub_1D95C030C();
  v32 = 0;
  v15[32] = v39[0];
  v39[0] = 3;
  sub_1D956C888(&qword_1ECB05E88);
  v25 = v32;
  sub_1D95C030C();
  if (v25)
  {
    (*(v19 + 8))(v21, v20);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v29 = *(v15 + 1);

    v30 = *(v15 + 3);
  }

  else
  {
    (*(v34 + 32))(&v15[v12[7]], v18, v4);
    v40 = 4;
    sub_1D956C8CC();
    sub_1D95C030C();
    v26 = &v15[v12[8]];
    *v26 = v39[0];
    *(v26 + 8) = *&v39[8];
    v40 = 5;
    sub_1D956C920();
    sub_1D95C030C();
    v27 = &v15[v12[9]];
    v28 = *&v39[16];
    *v27 = *v39;
    *(v27 + 1) = v28;
    v40 = 6;
    sub_1D956C974();
    sub_1D95C030C();
    (*(v19 + 8))(v37, v20);
    *&v15[v12[10]] = *v39;
    sub_1D956C9C8(v15, v33);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_1D956CA2C(v15);
  }
}

unint64_t sub_1D956C834()
{
  result = qword_1ECB06738;
  if (!qword_1ECB06738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06738);
  }

  return result;
}

uint64_t sub_1D956C888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D95BFBAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D956C8CC()
{
  result = qword_1ECB06740;
  if (!qword_1ECB06740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06740);
  }

  return result;
}

unint64_t sub_1D956C920()
{
  result = qword_1ECB06748;
  if (!qword_1ECB06748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06748);
  }

  return result;
}

unint64_t sub_1D956C974()
{
  result = qword_1ECB06750;
  if (!qword_1ECB06750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06750);
  }

  return result;
}

uint64_t sub_1D956C9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedPackageDeclaration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D956CA2C(uint64_t a1)
{
  v2 = type metadata accessor for ManagedPackageDeclaration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D956CA8C()
{
  result = qword_1ECB06758;
  if (!qword_1ECB06758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06758);
  }

  return result;
}

uint64_t sub_1D956CB38()
{
  result = sub_1D95BFBAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1D956CBF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D956CC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D956CCD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D956CD30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D956CE18()
{
  result = qword_1ECB06770;
  if (!qword_1ECB06770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06770);
  }

  return result;
}

unint64_t sub_1D956CE70()
{
  result = qword_1ECB06778;
  if (!qword_1ECB06778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06778);
  }

  return result;
}

unint64_t sub_1D956CEC8()
{
  result = qword_1ECB06780;
  if (!qword_1ECB06780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06780);
  }

  return result;
}

unint64_t sub_1D956CF20()
{
  result = qword_1ECB06788;
  if (!qword_1ECB06788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06788);
  }

  return result;
}

unint64_t sub_1D956CF78()
{
  result = qword_1ECB06790;
  if (!qword_1ECB06790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06790);
  }

  return result;
}

unint64_t sub_1D956CFD0()
{
  result = qword_1ECB06798;
  if (!qword_1ECB06798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06798);
  }

  return result;
}

unint64_t sub_1D956D028()
{
  result = qword_1ECB067A0;
  if (!qword_1ECB067A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067A0);
  }

  return result;
}

unint64_t sub_1D956D080()
{
  result = qword_1ECB067A8;
  if (!qword_1ECB067A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067A8);
  }

  return result;
}

unint64_t sub_1D956D0D8()
{
  result = qword_1ECB067B0;
  if (!qword_1ECB067B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067B0);
  }

  return result;
}

unint64_t sub_1D956D130()
{
  result = qword_1ECB067B8;
  if (!qword_1ECB067B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067B8);
  }

  return result;
}

unint64_t sub_1D956D188()
{
  result = qword_1ECB067C0;
  if (!qword_1ECB067C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067C0);
  }

  return result;
}

unint64_t sub_1D956D1E0()
{
  result = qword_1ECB067C8;
  if (!qword_1ECB067C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067C8);
  }

  return result;
}

unint64_t sub_1D956D238()
{
  result = qword_1ECB067D0;
  if (!qword_1ECB067D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067D0);
  }

  return result;
}

unint64_t sub_1D956D290()
{
  result = qword_1ECB067D8;
  if (!qword_1ECB067D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067D8);
  }

  return result;
}

unint64_t sub_1D956D2E8()
{
  result = qword_1ECB067E0;
  if (!qword_1ECB067E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067E0);
  }

  return result;
}

unint64_t sub_1D956D340()
{
  result = qword_1ECB067E8;
  if (!qword_1ECB067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067E8);
  }

  return result;
}

unint64_t sub_1D956D398()
{
  result = qword_1ECB067F0;
  if (!qword_1ECB067F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067F0);
  }

  return result;
}

unint64_t sub_1D956D3F0()
{
  result = qword_1ECB067F8;
  if (!qword_1ECB067F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067F8);
  }

  return result;
}

unint64_t sub_1D956D448()
{
  result = qword_1ECB06800;
  if (!qword_1ECB06800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06800);
  }

  return result;
}

uint64_t sub_1D956D49C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEB000000004C5255 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426C6C6174736E69 && a2 == 0xEF726F6976616865 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6542726961706572 && a2 == 0xEE00726F69766168 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654265766F6D6572 && a2 == 0xEE00726F69766168)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t AppLaunchRequest.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  return sub_1D955AFDC();
}

uint64_t sub_1D956D744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_1D956D7CC(uint64_t a1)
{
  v2 = sub_1D956DFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956D808(uint64_t a1)
{
  v2 = sub_1D956DFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D956D844()
{
  if (*v0)
  {
    result = 0x41646567616E616DLL;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_1D956D87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x41646567616E616DLL && a2 == 0xEA00000000007070)
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

uint64_t sub_1D956D960(uint64_t a1)
{
  v2 = sub_1D956DF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956D99C(uint64_t a1)
{
  v2 = sub_1D956DF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D956D9D8()
{
  if (*v0)
  {
    result = 0x65706F6373;
  }

  else
  {
    result = 0x746172616C636564;
  }

  *v0;
  return result;
}

uint64_t sub_1D956DA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746172616C636564 && a2 == 0xED000044496E6F69;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_1D956DAFC(uint64_t a1)
{
  v2 = sub_1D956DF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956DB38(uint64_t a1)
{
  v2 = sub_1D956DF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLaunchRequest.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06808, &qword_1D95C4CA0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06810, &qword_1D95C4CA8);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06818, &qword_1D95C4CB0);
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v25 - v12;
  v14 = *v1;
  v29 = v1[1];
  v30 = v14;
  v15 = *(v1 + 16);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956DF18();
  sub_1D95C05BC();
  if (v15 < 0)
  {
    v19 = v25;
    v20 = v10;
    v37 = 1;
    sub_1D956DF6C();
    v21 = v32;
    sub_1D95C034C();
    v36 = 0;
    v22 = v26;
    v23 = v31;
    sub_1D95C038C();
    if (v23)
    {
      (*(v19 + 8))(v28, v22);
      return (*(v10 + 8))(v13, v21);
    }

    else
    {
      v35 = v15 & 1;
      v34 = 1;
      sub_1D9547DB0();
      v24 = v28;
      sub_1D95C03CC();
      (*(v19 + 8))(v24, v22);
      return (*(v20 + 8))(v13, v21);
    }
  }

  else
  {
    v33 = 0;
    sub_1D956DFC0();
    v17 = v32;
    sub_1D95C034C();
    sub_1D95C038C();
    (*(v27 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v17);
  }
}

unint64_t sub_1D956DF18()
{
  result = qword_1ECB06820;
  if (!qword_1ECB06820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06820);
  }

  return result;
}

unint64_t sub_1D956DF6C()
{
  result = qword_1ECB06828;
  if (!qword_1ECB06828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06828);
  }

  return result;
}

unint64_t sub_1D956DFC0()
{
  result = qword_1ECB06830;
  if (!qword_1ECB06830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06830);
  }

  return result;
}

uint64_t AppLaunchRequest.Target.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06838, &qword_1D95C4CB8);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06840, &qword_1D95C4CC0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06848, &unk_1D95C4CC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_1D956DF18();
  v18 = v45;
  sub_1D95C059C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v45 = v12;
  v19 = v43;
  v20 = v44;
  v21 = sub_1D95C032C();
  v22 = (2 * *(v21 + 16)) | 1;
  v47 = v21;
  v48 = v21 + 32;
  v49 = 0;
  v50 = v22;
  v23 = sub_1D954A268();
  if (v23 == 2 || v49 != v50 >> 1)
  {
    v28 = sub_1D95C01FC();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v30 = &type metadata for AppLaunchRequest.Target;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v45 + 8))(v15, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  if (v23)
  {
    v52 = 1;
    sub_1D956DF6C();
    v24 = v6;
    sub_1D95C027C();
    v25 = v20;
    v52 = 0;
    v26 = sub_1D95C02CC();
    v27 = v45;
    v37 = v36;
    v41 = v26;
    v51 = 1;
    sub_1D9548104();
    sub_1D95C030C();
    (*(v42 + 8))(v24, v19);
    (*(v27 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v39 = v52 | 0x80;
    v40 = v41;
  }

  else
  {
    v52 = 0;
    sub_1D956DFC0();
    v33 = v10;
    sub_1D95C027C();
    v25 = v20;
    v34 = sub_1D95C02CC();
    v35 = (v45 + 8);
    v40 = v34;
    v37 = v38;
    (*(v41 + 8))(v33, v7);
    (*v35)(v15, v11);
    swift_unknownObjectRelease();
    v39 = 0;
  }

  *v25 = v40;
  *(v25 + 8) = v37;
  *(v25 + 16) = v39;
  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t AppLaunchRequest.init(declarationID:scope:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1 | 0x80;
  return result;
}

uint64_t AppLaunchRequest.launch()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D956E658, 0, 0);
}

uint64_t sub_1D956E658()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);

  return sub_1D954CAB0(1, v2, v3, v4, sub_1D956E754, 0);
}

void sub_1D956E754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_3;
  v9 = _Block_copy(v10);

  [a1 handleLaunchAppRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D956E844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
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

uint64_t sub_1D956E8C8(uint64_t a1)
{
  v2 = sub_1D956EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956E904(uint64_t a1)
{
  v2 = sub_1D956EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLaunchRequest.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06850, &qword_1D95C4CE0);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955AFDC();
  sub_1D956EC60();
  sub_1D95C05BC();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v10;
  sub_1D956ECB4();
  v11 = v13[0];
  sub_1D95C03CC();
  sub_1D955AFE4();
  return (*(v3 + 8))(v6, v11);
}

uint64_t AppLaunchRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06868, &qword_1D95C4CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956EC60();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D956ED08();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D956EC60()
{
  result = qword_1ECB06858;
  if (!qword_1ECB06858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06858);
  }

  return result;
}

unint64_t sub_1D956ECB4()
{
  result = qword_1ECB06860;
  if (!qword_1ECB06860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06860);
  }

  return result;
}

unint64_t sub_1D956ED08()
{
  result = qword_1ECB06870;
  if (!qword_1ECB06870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06870);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D956ED8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D956EDDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1D956EEA8()
{
  result = qword_1ECB06878;
  if (!qword_1ECB06878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06878);
  }

  return result;
}

unint64_t sub_1D956EF00()
{
  result = qword_1ECB06880;
  if (!qword_1ECB06880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06880);
  }

  return result;
}

unint64_t sub_1D956EF58()
{
  result = qword_1ECB06888;
  if (!qword_1ECB06888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06888);
  }

  return result;
}

unint64_t sub_1D956EFB0()
{
  result = qword_1ECB06890;
  if (!qword_1ECB06890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06890);
  }

  return result;
}

unint64_t sub_1D956F008()
{
  result = qword_1ECB06898;
  if (!qword_1ECB06898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06898);
  }

  return result;
}

unint64_t sub_1D956F060()
{
  result = qword_1ECB068A0;
  if (!qword_1ECB068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068A0);
  }

  return result;
}

unint64_t sub_1D956F0B8()
{
  result = qword_1ECB068A8;
  if (!qword_1ECB068A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068A8);
  }

  return result;
}

unint64_t sub_1D956F110()
{
  result = qword_1ECB068B0;
  if (!qword_1ECB068B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068B0);
  }

  return result;
}

unint64_t sub_1D956F168()
{
  result = qword_1ECB068B8;
  if (!qword_1ECB068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068B8);
  }

  return result;
}

unint64_t sub_1D956F1C0()
{
  result = qword_1ECB068C0;
  if (!qword_1ECB068C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068C0);
  }

  return result;
}

unint64_t sub_1D956F218()
{
  result = qword_1ECB068C8;
  if (!qword_1ECB068C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068C8);
  }

  return result;
}

unint64_t sub_1D956F270()
{
  result = qword_1ECB068D0;
  if (!qword_1ECB068D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068D0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id BundleID.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BundleID.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t BundleID.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v2 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8);

  return v1;
}

id sub_1D956F3E0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v2 = *(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8);

  v3 = sub_1D95BFD8C();

  return v3;
}

uint64_t BundleID.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D956F50C(a1, v7);
  if (!v8)
  {
    sub_1D953F434(v7);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) == *&v6[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue] && *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8) == *&v6[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1D95C041C();
  }

  return v4 & 1;
}

uint64_t sub_1D956F50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C20, &qword_1D95C1010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BundleID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) == *(a2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) && *(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8) == *(a2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

void BundleID.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v2 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8);
  JUMPOUT(0x1DA7324B0);
}

id BundleID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BundleID.encode(to:)(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v4 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v5 = *(v2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D95C045C();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void *sub_1D956F838@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D956F910(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D956F864(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v4 = *(v2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v5 = *(v2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D95C045C();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void *sub_1D956F910(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    v6 = sub_1D95C042C();
    v8 = v7;
    v9 = type metadata accessor for BundleID();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
    *v11 = v6;
    v11[1] = v8;
    v12.receiver = v10;
    v12.super_class = v9;
    v4 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

const char *LogKey.Prefix.fallbackActivityName.getter()
{
  result = "App Review";
  switch(*v0)
  {
    case 1:
      result = "VPP";
      break;
    case 2:
      result = "Manifest";
      break;
    case 3:
      result = "DDM";
      break;
    case 4:
      result = "Automatic Update";
      break;
    case 5:
      result = "UPD";
      break;
    case 6:
      result = "Apple Distribution Package";
      break;
    case 7:
      result = "License";
      break;
    case 8:
      result = "PDS";
      break;
    case 9:
      result = "Bootstrap";
      break;
    case 0xA:
      result = "RSP";
      break;
    case 0xB:
      result = "RSD";
      break;
    case 0xC:
      result = "???";
      break;
    case 0xD:
      return result;
    case 0xE:
      result = "madctl";
      break;
    case 0xF:
      result = "Internal";
      break;
    case 0x10:
      result = "Migrator";
      break;
    case 0x11:
      result = "None";
      break;
    default:
      result = "General";
      break;
  }

  return result;
}

uint64_t LogKey.Prefix.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C048C();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t LogKey.Prefix.rawValue.getter()
{
  result = 5129543;
  switch(*v0)
  {
    case 1:
      result = 5263446;
      break;
    case 2:
      result = 5128525;
      break;
    case 3:
      result = 5063748;
      break;
    case 4:
      result = 4280405;
      break;
    case 5:
      result = 4477013;
      break;
    case 6:
      result = 5260353;
      break;
    case 7:
      result = 4409676;
      break;
    case 8:
      result = 5456976;
      break;
    case 9:
      result = 5461058;
      break;
    case 0xA:
      result = 5264210;
      break;
    case 0xB:
      result = 4477778;
      break;
    case 0xC:
      result = 4144959;
      break;
    case 0xD:
      result = 5394497;
      break;
    case 0xE:
      result = 0x4C544344414DLL;
      break;
    case 0xF:
      result = 5525065;
      break;
    case 0x10:
      result = 4671821;
      break;
    case 0x11:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D956FD20(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LogKey.Prefix.rawValue.getter();
  v4 = v3;
  if (v2 == LogKey.Prefix.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D95C041C();
  }

  return v7 & 1;
}

uint64_t sub_1D956FDBC()
{
  v1 = *v0;
  sub_1D95C051C();
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D956FE24()
{
  v2 = *v0;
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();
}

uint64_t sub_1D956FE88()
{
  v1 = *v0;
  sub_1D95C051C();
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D956FEEC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LogKey.Prefix.init(rawValue:)(a1);
}

uint64_t sub_1D956FEF8@<X0>(uint64_t *a1@<X8>)
{
  result = LogKey.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LogKey.Representation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    v6 = sub_1D95C042C();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t LogKey.Representation.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  if (v4 == 1)
  {
  }

  else
  {
    LogKey.Prefix.rawValue.getter();
    v9 = HIDWORD(v3);
    sub_1D95701A0();
    v6 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v6);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1D95C045C();

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t LogKey.Representation.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
  }

  else
  {
    v5 = *v0;
    v6 = LogKey.Prefix.rawValue.getter();
    sub_1D95701A0();
    v3 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v3);

    return v6;
  }

  return v1;
}

unint64_t sub_1D95701A0()
{
  result = qword_1EDCF9B00;
  if (!qword_1EDCF9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9B00);
  }

  return result;
}

uint64_t sub_1D95701F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    v6 = sub_1D95C042C();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t LogKey.representation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  v3 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 8);
  v4 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D953FCA8(v2, v3, v4);
}

id LogKey.appending(_:)()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FC0, &unk_1D95C5380);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D95C2A10;
  *(v1 + 32) = LogKey.description.getter();
  *(v1 + 40) = v2;

  sub_1D9570C6C(v3);
  v4 = v1;
  v5 = objc_allocWithZone(ObjectType);
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v6 = sub_1D95BFD4C();
  v8 = v7;

  v9 = &v5[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v9 = v6;
  *(v9 + 1) = v8;
  v9[16] = 1;
  v11.receiver = v5;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id LogKey.__allocating_init(strings:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v5 = sub_1D95BFD4C();
  v7 = v6;

  v8 = &v4[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v8 = v5;
  *(v8 + 1) = v7;
  v8[16] = 1;
  v10.receiver = v4;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id LogKey.__allocating_init(prefix:)(unsigned __int8 *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v8 = 0;
  MEMORY[0x1DA733220](&v8, 8);
  v5 = &v3[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v5 = v4 | (v8 << 32);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LogKey.init(prefix:)(unsigned __int8 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v8 = 0;
  MEMORY[0x1DA733220](&v8, 8);
  v5 = &v1[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v5 = v4 | (v8 << 32);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LogKey.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id LogKey.init(string:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id LogKey.init(strings:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v5 = sub_1D95BFD4C();
  v7 = v6;

  v8 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v8 = v5;
  *(v8 + 1) = v7;
  v8[16] = 1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void *LogKey.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    sub_1D9570D60();
    sub_1D95C044C();
    v9 = v12;
    v10 = &v3[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
    *v10 = v11[1];
    LOBYTE(v10[1].receiver) = v9;
    __swift_destroy_boxed_opaque_existential_0(v13);
    v11[0].receiver = v3;
    v11[0].super_class = ObjectType;
    v7 = [(objc_super *)v11 init];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t LogKey.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v3 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16);
  v5 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  v6 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 8);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D953FCA8(v5, v6, v3);
  sub_1D9570DB4();
  sub_1D95C047C();
  sub_1D953FCF0(v5, v6, v3);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1D95709DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  if (*(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 8);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
    v6 = LogKey.Prefix.rawValue.getter();
    sub_1D95701A0();
    v3 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v3);

    return v6;
  }

  return v1;
}

id sub_1D9570AA4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1D95BFD8C();

  return v5;
}

id LogKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LogKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D9570BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = LogKey.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9570C6C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D9547324(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1D9570D60()
{
  result = qword_1ECB068E8;
  if (!qword_1ECB068E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068E8);
  }

  return result;
}

unint64_t sub_1D9570DB4()
{
  result = qword_1ECB068F0;
  if (!qword_1ECB068F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068F0);
  }

  return result;
}

unint64_t sub_1D9570E0C()
{
  result = qword_1ECB068F8;
  if (!qword_1ECB068F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D957105C(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9571098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
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

uint64_t sub_1D95710E0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D9571124()
{
  if (*v0)
  {
    result = 0x656D75736572;
  }

  else
  {
    result = 0x6573756170;
  }

  *v0;
  return result;
}

uint64_t sub_1D9571158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573756170 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_1D957122C(uint64_t a1)
{
  v2 = sub_1D9571650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571268(uint64_t a1)
{
  v2 = sub_1D9571650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95712A4(uint64_t a1)
{
  v2 = sub_1D95716F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95712E0(uint64_t a1)
{
  v2 = sub_1D95716F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957131C(uint64_t a1)
{
  v2 = sub_1D95716A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571358(uint64_t a1)
{
  v2 = sub_1D95716A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMRestoreControlRequest.RestoreState.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06900, &qword_1D95C55F0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06908, &qword_1D95C55F8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06910, &qword_1D95C5600);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9571650();
  sub_1D95C05BC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D95716A4();
    sub_1D95C034C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D95716F8();
    sub_1D95C034C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1D9571650()
{
  result = qword_1ECB06918;
  if (!qword_1ECB06918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06918);
  }

  return result;
}

unint64_t sub_1D95716A4()
{
  result = qword_1ECB06920;
  if (!qword_1ECB06920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06920);
  }

  return result;
}

unint64_t sub_1D95716F8()
{
  result = qword_1ECB06928;
  if (!qword_1ECB06928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06928);
  }

  return result;
}

uint64_t DDMRestoreControlRequest.RestoreState.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D95717D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9574BB0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D9571864()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D955BACC;

  return (sub_1D954D4B0)(1, v1, sub_1D9571964, 0);
}

void DDMRestoreControlRequest.send(to:)()
{
  v1 = *v0;
  if (qword_1EDCFA278 != -1)
  {
    v2 = *v0;
    swift_once();
    v1 = v2;
  }

  sub_1D9571EE8(1, v1, sub_1D95719F8, 0);
}

void sub_1D9571A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 setRestoreControl:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_1D9571AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5365726F74736572 && a2 == 0xEC00000065746174)
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

uint64_t sub_1D9571B88(uint64_t a1)
{
  v2 = sub_1D957506C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571BC4(uint64_t a1)
{
  v2 = sub_1D957506C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMRestoreControlRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06930, &qword_1D95C5610);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957506C();
  sub_1D95C05BC();
  v12 = v8;
  sub_1D95750C0();
  sub_1D95C03CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DDMRestoreControlRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06948, &qword_1D95C5618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957506C();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D9575114();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1D9571EE8(uint64_t a1, char a2, void (*a3)(id, uint64_t, unint64_t, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  v7 = *v4;
  v56 = a1;
  v57 = v7;
  v8 = sub_1D95BFA3C();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  v13 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_47;
  v14 = _Block_copy(aBlock);

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v62, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v53 = v11;
  v54 = v8;
  v52 = v4;
  v16 = v63;
  v17 = sub_1D95BFADC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  v20 = a2 & 1;
  LOBYTE(aBlock[0]) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06150, &qword_1D95C24B0);
  sub_1D95756E0(&qword_1ECB06158, &qword_1ECB06150, &qword_1D95C24B0);
  v21 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v62);
    return;
  }

  v24 = v21;
  v25 = v22;
  v49 = v20;

  v26 = swift_allocObject();
  v27 = v57;
  *(v26 + 16) = v12;
  *(v26 + 24) = v27;

  v57 = v16;
  v50 = v24;
  v51 = v25;
  v28 = v25;
  v29 = v58;
  v59(v16, v24, v28, sub_1D9575750, v26);

  swift_beginAccess();
  v30 = *(v12 + 24);
  if (v30 == 255)
  {
    sub_1D955A9C4();
    v31 = swift_allocError();
    *v34 = 0;
    swift_willThrow();
    v33 = v53;
    v32 = v54;
  }

  else
  {
    v31 = *(v12 + 16);
    v33 = v53;
    v32 = v54;
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v51);

      __swift_destroy_boxed_opaque_existential_0(v62);
      return;
    }

    v63 = *(v12 + 16);
    sub_1D953C470(v31, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v35 = v31;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v36 = sub_1D95BFA7C();

  (*(v55 + 8))(v33, v32);
  v37 = v56;
  if ((v36 & 1) != 0 && v56)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D95BFC8C();
    __swift_project_value_buffer(v38, qword_1EDCFA2D0);
    v39 = sub_1D95BFC6C();
    v40 = sub_1D95C009C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v49;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D953A000, v39, v40, "Connection interrupted, retrying request", v43, 2u);
      MEMORY[0x1DA733200](v43, -1, -1);
    }

    sub_1D9571EE8(v37 - 1, v42, v59, v29);
    __swift_destroy_boxed_opaque_existential_0(v62);
    swift_unknownObjectRelease();

    sub_1D955AA18(v50, v51);
  }

  else
  {
    v63 = v31;
    v44 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (!swift_dynamicCast())
    {

      sub_1D955A9C4();
      swift_allocError();
      *v47 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v51);

      goto LABEL_5;
    }

    v45 = v60;
    sub_1D955A9C4();
    swift_allocError();
    *v46 = v45;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v50, v51);

    __swift_destroy_boxed_opaque_existential_0(v62);
  }
}

void *sub_1D95725B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, void), void *a5)
{
  v56 = a4;
  v57 = a2;
  v9 = *v5;
  v54 = a1;
  v55 = v9;
  v10 = sub_1D95BFA3C();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069C8, &qword_1D95C5B60);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = -1;
  v14 = v5[2];
  v63 = sub_1D9575770;
  v64 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1D9589AB4;
  v62 = &block_descriptor_42;
  v15 = _Block_copy(&aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v65, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v65);
    return a5;
  }

  v50 = v10;
  v51 = a5;
  v49[1] = v5;
  v17 = v66;
  v18 = sub_1D95BFADC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  aBlock = v57;
  v60 = a3;

  a5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06130, &qword_1D95C2490);
  sub_1D95756E0(&qword_1ECB06138, &qword_1ECB06130, &qword_1D95C2490);
  v21 = sub_1D95BFABC();
  if (v6)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v65);

    return a5;
  }

  v25 = v21;
  v26 = v22;
  v49[0] = a3;

  v27 = swift_allocObject();
  v28 = v55;
  *(v27 + 16) = v13;
  *(v27 + 24) = v28;

  v55 = v25;
  v29 = v25;
  v30 = v56;
  v56(v17, v29, v26, sub_1D95756A4, v27);

  swift_beginAccess();
  v31 = *(v13 + 24);
  if (v31 == 255)
  {
    sub_1D955A9C4();
    a5 = swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }

  else
  {
    a5 = *(v13 + 16);
    if ((v31 & 1) == 0)
    {
      v47 = *(v13 + 16);

      swift_unknownObjectRelease();
      sub_1D955AA18(v55, v26);

      __swift_destroy_boxed_opaque_existential_0(v65);
      return a5;
    }

    v66 = *(v13 + 16);
    sub_1D95756D4(a5, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v33 = a5;
  v34 = v52;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v35 = v50;
  v36 = sub_1D95BFA7C();

  (*(v53 + 8))(v34, v35);
  if ((v36 & 1) == 0 || !v54)
  {
    v66 = a5;
    v44 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v45 = v58;
      sub_1D955A9C4();
      swift_allocError();
      *v46 = v45;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v55, v26);

      __swift_destroy_boxed_opaque_existential_0(v65);

      return a5;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v55, v26);

    goto LABEL_5;
  }

  v53 = v26;

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v37 = sub_1D95BFC8C();
  __swift_project_value_buffer(v37, qword_1EDCFA2D0);
  v38 = sub_1D95BFC6C();
  v39 = sub_1D95C009C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v51;
  v42 = v49[0];
  if (v40)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D953A000, v38, v39, "Connection interrupted, retrying request", v43, 2u);
    MEMORY[0x1DA733200](v43, -1, -1);
  }

  a5 = sub_1D95725B8(v54 - 1, v57, v42, v30, v41);
  __swift_destroy_boxed_opaque_existential_0(v65);
  swift_unknownObjectRelease();

  sub_1D955AA18(v55, v53);
  return a5;
}

void sub_1D9572CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, void), uint64_t a5)
{
  v61 = a4;
  v9 = *v5;
  v59 = a1;
  v60 = v9;
  v10 = sub_1D95BFA3C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = -1;
  v14 = v5[2];
  v68 = sub_1D9575770;
  v69 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1D9589AB4;
  v67 = &block_descriptor_37;
  v15 = _Block_copy(&aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v70, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v55 = v10;
  v56 = a5;
  v54 = v5;
  v17 = v71;
  v18 = sub_1D95BFADC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  aBlock = a2;
  v65 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06110, &qword_1D95C2478);
  sub_1D95756E0(&qword_1ECB06118, &qword_1ECB06110, &qword_1D95C2478);
  v21 = v62;
  v22 = sub_1D95BFABC();
  if (v21)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v70);

    return;
  }

  v25 = v23;
  v51 = a2;
  v26 = v22;

  v52 = a3;

  v27 = swift_allocObject();
  v28 = v60;
  *(v27 + 16) = v13;
  *(v27 + 24) = v28;

  v62 = v17;
  v53 = v26;
  v60 = v25;
  v29 = v25;
  v30 = v56;
  v31 = v61;
  v61(v17, v26, v29, sub_1D9575750, v27);

  swift_beginAccess();
  v32 = *(v13 + 24);
  if (v32 == 255)
  {
    sub_1D955A9C4();
    v33 = swift_allocError();
    *v35 = 0;
    swift_willThrow();
    v34 = v55;
  }

  else
  {
    v33 = *(v13 + 16);
    v34 = v55;
    if ((v32 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v53, v60);

      __swift_destroy_boxed_opaque_existential_0(v70);
      return;
    }

    v71 = *(v13 + 16);
    sub_1D953C470(v33, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v36 = v33;
  v37 = v57;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v38 = sub_1D95BFA7C();

  (*(v58 + 8))(v37, v34);
  v39 = v52;
  if ((v38 & 1) == 0 || !v59)
  {
    v71 = v33;
    v47 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v48 = v63;
      sub_1D955A9C4();
      swift_allocError();
      *v49 = v48;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v53, v60);

      __swift_destroy_boxed_opaque_existential_0(v70);

      return;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v53, v60);

LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v70);
    return;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v40 = sub_1D95BFC8C();
  __swift_project_value_buffer(v40, qword_1EDCFA2D0);
  v41 = sub_1D95BFC6C();
  v42 = sub_1D95C009C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v51;
  if (v43)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D953A000, v41, v42, "Connection interrupted, retrying request", v45, 2u);
    v46 = v45;
    v39 = v52;
    MEMORY[0x1DA733200](v46, -1, -1);
  }

  sub_1D9572CAC(v59 - 1, v44, v39, v31, v30);
  __swift_destroy_boxed_opaque_existential_0(v70);
  swift_unknownObjectRelease();

  sub_1D955AA18(v53, v60);
}

void *sub_1D95733E8(uint64_t a1, char a2, void (*a3)(void *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), void *a4)
{
  v51 = a1;
  v52 = *v4;
  v53 = a3;
  v8 = sub_1D95BFA3C();
  v50 = *(v8 - 8);
  v9 = v50[8];
  MEMORY[0x1EEE9AC00](v8);
  v49 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B8, &qword_1D95C5B38);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = -1;
  v12 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);

  v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v56, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v47 = v8;
  v48 = a4;
  v46[1] = v4;
  v15 = v57;
  v16 = sub_1D95BFADC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  LOBYTE(aBlock[0]) = a2 & 1;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06058, &qword_1D95C5B40);
  sub_1D95756E0(&qword_1EDCFA1B0, &qword_1ECB06058, &qword_1D95C5B40);
  v19 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v56);
    return a4;
  }

  v23 = v19;
  v24 = v20;

  v25 = swift_allocObject();
  v26 = v52;
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;

  v52 = v23;
  v53(v15, v23, v24, sub_1D9575644, v25);

  swift_beginAccess();
  v27 = *(v11 + 24);
  v28 = v15;
  if (v27 == 255)
  {
    sub_1D955A9C4();
    a4 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v29 = v47;
  }

  else
  {
    a4 = *(v11 + 16);
    v29 = v47;
    if ((v27 & 1) == 0)
    {
      v44 = *(v11 + 16);

      swift_unknownObjectRelease();
      sub_1D955AA18(v52, v24);

      __swift_destroy_boxed_opaque_existential_0(v56);
      return a4;
    }

    v57 = *(v11 + 16);
    sub_1D95756D4(a4, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v31 = a4;
  v32 = v49;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v33 = sub_1D95BFA7C();

  (v50[1])(v32, v29);
  v34 = v51;
  if ((v33 & 1) == 0 || !v51)
  {
    v57 = a4;
    v41 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v42 = v54;
      sub_1D955A9C4();
      swift_allocError();
      *v43 = v42;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v52, v24);

      __swift_destroy_boxed_opaque_existential_0(v56);

      return a4;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v52, v24);

    goto LABEL_5;
  }

  v49 = v24;
  v50 = v28;

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v35 = sub_1D95BFC8C();
  __swift_project_value_buffer(v35, qword_1EDCFA2D0);
  v36 = sub_1D95BFC6C();
  v37 = sub_1D95C009C();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v48;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D953A000, v36, v37, "Connection interrupted, retrying request", v40, 2u);
    MEMORY[0x1DA733200](v40, -1, -1);
  }

  a4 = sub_1D95733E8(v34 - 1, a2 & 1, v53, v39);
  __swift_destroy_boxed_opaque_existential_0(v56);
  swift_unknownObjectRelease();

  sub_1D955AA18(v52, v49);
  return a4;
}

void *sub_1D9573AC8(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void), void *a4)
{
  v50 = a1;
  v51 = *v4;
  v52 = a3;
  v8 = sub_1D95BFA3C();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069C0, &qword_1D95C5B48);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = -1;
  v12 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_32;
  v13 = _Block_copy(aBlock);

  v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v55, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v55);
    return a4;
  }

  v46 = v8;
  v47 = a4;
  v45 = v4;
  v15 = v56;
  v16 = sub_1D95BFADC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  aBlock[0] = a2;

  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06020, &unk_1D95C5B50);
  sub_1D95756E0(&qword_1EDCFA1C0, &qword_1ECB06020, &unk_1D95C5B50);
  v19 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v55);

    return a4;
  }

  v23 = v19;
  v24 = v20;

  v25 = swift_allocObject();
  v26 = v51;
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;

  v44 = v23;
  v51 = v24;
  v27 = v24;
  v28 = v52;
  v52(v15, v23, v27, sub_1D9575674, v25);

  swift_beginAccess();
  v29 = *(v11 + 24);
  if (v29 == 255)
  {
    sub_1D955A9C4();
    a4 = swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v30 = v46;
  }

  else
  {
    a4 = *(v11 + 16);
    v30 = v46;
    if ((v29 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v44, v51);

      __swift_destroy_boxed_opaque_existential_0(v55);
      return a4;
    }

    v56 = *(v11 + 16);
    sub_1D953C470(a4, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v32 = a4;
  v33 = v48;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v34 = sub_1D95BFA7C();

  (*(v49 + 8))(v33, v30);
  if ((v34 & 1) == 0 || !v50)
  {
    v56 = a4;
    v39 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v40 = v53;
      sub_1D955A9C4();
      swift_allocError();
      *v41 = v40;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v44, v51);

      __swift_destroy_boxed_opaque_existential_0(v55);

      return a4;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v44, v51);

    goto LABEL_5;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v35 = sub_1D95BFC8C();
  __swift_project_value_buffer(v35, qword_1EDCFA2D0);
  v36 = sub_1D95BFC6C();
  v37 = sub_1D95C009C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D953A000, v36, v37, "Connection interrupted, retrying request", v38, 2u);
    MEMORY[0x1DA733200](v38, -1, -1);
  }

  a4 = sub_1D9573AC8(v50 - 1, a2, v28, v47);
  __swift_destroy_boxed_opaque_existential_0(v55);
  swift_unknownObjectRelease();

  sub_1D955AA18(v44, v51);
  return a4;
}

void sub_1D95741A4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void), uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v7 = *v4;
  v56 = a1;
  v57 = v7;
  v8 = sub_1D95BFA3C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06070, &unk_1D95C23C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = -1;
  v16 = v4[2];
  aBlock[4] = sub_1D9575590;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v62, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v52 = v4;
  v19 = v63;
  v20 = sub_1D95BFADC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  sub_1D95755C4(a2, v14);
  sub_1D95756E0(&qword_1ECB06078, &qword_1ECB06070, &unk_1D95C23C0);
  v23 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();

    sub_1D9547EAC(v14, &qword_1ECB06070, &unk_1D95C23C0);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v62);
    return;
  }

  v26 = v24;
  v27 = a2;
  v28 = v23;
  sub_1D9547EAC(v14, &qword_1ECB06070, &unk_1D95C23C0);

  v29 = v19;
  v30 = swift_allocObject();
  v31 = v57;
  *(v30 + 16) = v15;
  *(v30 + 24) = v31;

  v57 = v29;
  v50 = v28;
  v51 = v26;
  v32 = v26;
  v34 = v58;
  v33 = v59;
  v58(v29, v28, v32, sub_1D9575628, v30);

  swift_beginAccess();
  v35 = *(v15 + 24);
  if (v35 == 255)
  {
    sub_1D955A9C4();
    v36 = swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  else
  {
    v36 = *(v15 + 16);
    if ((v35 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v51);

      __swift_destroy_boxed_opaque_existential_0(v62);
      return;
    }

    v63 = *(v15 + 16);
    sub_1D953C470(v36, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v38 = v36;
  v39 = v53;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v40 = v55;
  v41 = sub_1D95BFA7C();

  (*(v54 + 8))(v39, v40);
  if ((v41 & 1) == 0 || !v56)
  {
    v63 = v36;
    v46 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v47 = v60;
      sub_1D955A9C4();
      swift_allocError();
      *v48 = v47;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v51);

      __swift_destroy_boxed_opaque_existential_0(v62);

      return;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v50, v51);

LABEL_5:

    goto LABEL_6;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v42 = sub_1D95BFC8C();
  __swift_project_value_buffer(v42, qword_1EDCFA2D0);
  v43 = sub_1D95BFC6C();
  v44 = sub_1D95C009C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D953A000, v43, v44, "Connection interrupted, retrying request", v45, 2u);
    MEMORY[0x1DA733200](v45, -1, -1);
  }

  sub_1D95741A4(v56 - 1, v27, v34, v33);
  __swift_destroy_boxed_opaque_existential_0(v62);
  swift_unknownObjectRelease();

  sub_1D955AA18(v50, v51);
}

id sub_1D95748E8(void *a1, uint64_t a2)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D95BFC8C();
  __swift_project_value_buffer(v4, qword_1EDCFA2D0);
  v5 = a1;
  v6 = sub_1D95BFC6C();
  v7 = sub_1D95C009C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D953A000, v6, v7, "Error fetching synchronous remote object proxy: %{public}@", v8, 0xCu);
    sub_1D9547EAC(v9, &qword_1ECB06050, &qword_1D95C5B30);
    MEMORY[0x1DA733200](v9, -1, -1);
    MEMORY[0x1DA733200](v8, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a2 + 24) == 255)
  {
    *(a2 + 16) = a1;
    *(a2 + 24) = 1;
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr))
{
  a5(&v11);
  v6 = v11;
  v7 = v12;
  if (v12 == 1)
  {
    sub_1D955A9C4();
    v8 = swift_allocError();
    *v9 = v6;
    v6 = v8;
  }

  result = swift_beginAccess();
  if (*(a3 + 24) == 255)
  {
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9559F58(&v9);
  v4 = v9;
  v5 = v10;
  if (v10)
  {
    sub_1D955A9C4();
    v6 = swift_allocError();
    *v7 = v4;
  }

  else
  {
    v6 = v9 & 1;
  }

  result = swift_beginAccess();
  if (*(a3 + 24) == 255)
  {
    *(a3 + 16) = v6;
    *(a3 + 24) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574BB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069D0, &qword_1D95C5B68);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069D8, &qword_1D95C5B70);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069E0, &qword_1D95C5B78);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9571650();
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
    *v24 = &type metadata for DDMRestoreControlRequest.RestoreState;
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
    sub_1D95716A4();
    sub_1D95C027C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D95716F8();
    sub_1D95C027C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_1D957506C()
{
  result = qword_1ECB06938;
  if (!qword_1ECB06938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06938);
  }

  return result;
}

unint64_t sub_1D95750C0()
{
  result = qword_1ECB06940;
  if (!qword_1ECB06940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06940);
  }

  return result;
}

unint64_t sub_1D9575114()
{
  result = qword_1ECB06950;
  if (!qword_1ECB06950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06950);
  }

  return result;
}

unint64_t sub_1D957516C()
{
  result = qword_1ECB06958;
  if (!qword_1ECB06958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06958);
  }

  return result;
}

unint64_t sub_1D9575224()
{
  result = qword_1ECB06960;
  if (!qword_1ECB06960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06960);
  }

  return result;
}

unint64_t sub_1D957527C()
{
  result = qword_1ECB06968;
  if (!qword_1ECB06968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06968);
  }

  return result;
}

unint64_t sub_1D95752D4()
{
  result = qword_1ECB06970;
  if (!qword_1ECB06970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06970);
  }

  return result;
}

unint64_t sub_1D957532C()
{
  result = qword_1ECB06978;
  if (!qword_1ECB06978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06978);
  }

  return result;
}

unint64_t sub_1D9575384()
{
  result = qword_1ECB06980;
  if (!qword_1ECB06980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06980);
  }

  return result;
}

unint64_t sub_1D95753DC()
{
  result = qword_1ECB06988;
  if (!qword_1ECB06988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06988);
  }

  return result;
}

unint64_t sub_1D9575434()
{
  result = qword_1ECB06990;
  if (!qword_1ECB06990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06990);
  }

  return result;
}

unint64_t sub_1D957548C()
{
  result = qword_1ECB06998;
  if (!qword_1ECB06998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06998);
  }

  return result;
}

unint64_t sub_1D95754E4()
{
  result = qword_1ECB069A0;
  if (!qword_1ECB069A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB069A0);
  }

  return result;
}

unint64_t sub_1D957553C()
{
  result = qword_1ECB069A8;
  if (!qword_1ECB069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB069A8);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95755C4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

id sub_1D95756D4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D95756E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D95757E0()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v0[3] = v2;
  v4 = *(v1 + *(type metadata accessor for ManagedApp() + 124));
  v5 = qword_1EDCFA278;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1D955FDAC;

  return sub_1D954CAB0(1, v3, v2, *&v4 | 0xFFFFFF80, sub_1D956E754, 0);
}

uint64_t ManagedApp.state.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069E8, &qword_1D95C5B90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F0, &qword_1D95CD1D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  sub_1D95BFF9C();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 16))(v11, v13, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F8, &qword_1D95C5B98);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + *(*v17 + 88), v11, v6);
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v20 + 32) = v18;
  *(v20 + 40) = 1;

  v21 = sub_1D95BFFAC();
  if (qword_1EDCFA1A0 != -1)
  {
    v21 = swift_once();
  }

  v22 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v21);
  *&v25[-48] = v19;
  *&v25[-40] = v18;
  v25[-32] = 1;
  *&v25[-24] = v17;
  *&v25[-16] = v23;
  os_unfair_lock_lock(v22 + 26);
  sub_1D9575D50(&v22[4]);
  os_unfair_lock_unlock(v22 + 26);

  return (*(v7 + 8))(v13, v6);
}

void sub_1D9575C64(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D9575D7C(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

void sub_1D9575D40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1D9575C64(a1);
}

uint64_t sub_1D9575DD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D95C041C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9575E4C(void *a1, void *a2)
{
  v3 = a2[3];
  v12 = a2[2];
  v4 = a2[4];
  type metadata accessor for XPCValue.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D95C03EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05BC();
  sub_1D95C03CC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D9575FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCValue.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_1D95C033C();
  v28 = *(v33 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v24 - v10;
  v29 = a2;
  v31 = a3;
  v12 = type metadata accessor for XPCValue();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v17 = v34;
  sub_1D95C059C();
  if (!v17)
  {
    v25 = v15;
    v34 = v12;
    v19 = v28;
    v18 = v29;
    v20 = v30;
    v21 = v32;
    sub_1D95C030C();
    (*(v19 + 8))(v11, v33);
    v22 = v25;
    (*(v20 + 32))(v25, v21, v18);
    (*(v26 + 32))(v27, v22, v34);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95762C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D9575DD4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D95762F8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D955CF10();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D9576330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9576384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t encodeXPCValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = sub_1D95BFADC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  (*(v4 + 16))(v7, a1, a2);
  (*(v4 + 32))(v12, v7, a2);
  swift_getWitnessTable();
  v16 = sub_1D95BFABC();
  (*(v9 + 8))(v12, v8);

  return v16;
}

uint64_t decodeXPCValues<A>(from:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCValue();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = sub_1D95BFAAC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D95BFA9C();
  swift_getWitnessTable();
  sub_1D95BFA8C();

  if (!v2)
  {
    return (*(*(a1 - 8) + 32))(a2, v8, a1);
  }

  return result;
}

uint64_t sub_1D9576774(uint64_t a1)
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

uint64_t sub_1D95767E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1D9576924(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t ManagedPackage.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedPackage.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedPackage.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ManagedPackage.packageID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D9576C68(uint64_t a1)
{
  v2 = sub_1D957708C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576CA4(uint64_t a1)
{
  v2 = sub_1D957708C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9576CE0(uint64_t a1)
{
  v2 = sub_1D9577134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576D1C(uint64_t a1)
{
  v2 = sub_1D9577134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9576D58(uint64_t a1)
{
  v2 = sub_1D95770E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576D94(uint64_t a1)
{
  v2 = sub_1D95770E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackage.ManagementScope.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A00, &qword_1D95C5D40);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A08, &qword_1D95C5D48);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A10, &qword_1D95C5D50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957708C();
  sub_1D95C05BC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D95770E0();
    sub_1D95C034C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D9577134();
    sub_1D95C034C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1D957708C()
{
  result = qword_1ECB06A18;
  if (!qword_1ECB06A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A18);
  }

  return result;
}

unint64_t sub_1D95770E0()
{
  result = qword_1ECB06A20;
  if (!qword_1ECB06A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A20);
  }

  return result;
}

unint64_t sub_1D9577134()
{
  result = qword_1ECB06A28;
  if (!qword_1ECB06A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A28);
  }

  return result;
}

uint64_t ManagedPackage.ManagementScope.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D9577214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9577BD4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ManagedPackage.init(declarationIdentifier:name:packageID:subtitle:scope:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

unint64_t sub_1D9577288()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x656C746974627573;
  v4 = 0x496567616B636170;
  if (v1 != 3)
  {
    v4 = 0x65706F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1D9577320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9578734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9577348(uint64_t a1)
{
  v2 = sub_1D9578090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9577384(uint64_t a1)
{
  v2 = sub_1D9578090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ManagedPackage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t ManagedPackage.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];

  sub_1D95BFE1C();
}

uint64_t ManagedPackage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D9577494()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D95774E0()
{
  v2 = *v0;
  v1 = v0[1];

  sub_1D95BFE1C();
}

uint64_t sub_1D9577538()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t ManagedPackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A30, &qword_1D95C5D58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  HIDWORD(v17) = *(v1 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9578090();
  sub_1D95C05BC();
  v30 = 0;
  v14 = v24;
  sub_1D95C038C();
  if (!v14)
  {
    v15 = BYTE4(v17);
    v29 = 1;
    sub_1D95C038C();
    v28 = 2;
    sub_1D95C035C();
    v27 = 3;
    sub_1D95C038C();
    v26 = v15;
    v25 = 4;
    sub_1D95780E4();
    sub_1D95C03CC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedPackage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A48, &qword_1D95C5D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9578090();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_1D95C02CC();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = sub_1D95C02CC();
  v30 = v14;
  v27 = v13;
  LOBYTE(v37[0]) = 2;
  v26 = sub_1D95C029C();
  v29 = v15;
  LOBYTE(v37[0]) = 3;
  v25 = sub_1D95C02CC();
  v28 = v16;
  v39 = 4;
  sub_1D9578138();
  sub_1D95C030C();
  (*(v6 + 8))(v9, v5);
  v17 = v40;
  v19 = v30;
  v18 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  *&v33 = v27;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v26;
  *(&v34 + 1) = v29;
  v21 = v28;
  *&v35 = v25;
  *(&v35 + 1) = v28;
  v36 = v40;
  *(a2 + 64) = v40;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  v23 = v33;
  *a2 = v32;
  *(a2 + 16) = v23;
  sub_1D957818C(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v11;
  v37[1] = v18;
  v37[2] = v27;
  v37[3] = v19;
  v37[4] = v26;
  v37[5] = v20;
  v37[6] = v25;
  v37[7] = v21;
  v38 = v17;
  return sub_1D95781C4(v37);
}

uint64_t sub_1D9577BD4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AB8, &qword_1D95C6310);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AC0, &qword_1D95C6318);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AC8, &unk_1D95C6320);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957708C();
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
    *v24 = &type metadata for ManagedPackage.ManagementScope;
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
    sub_1D95770E0();
    sub_1D95C027C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D9577134();
    sub_1D95C027C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_1D9578090()
{
  result = qword_1ECB06A38;
  if (!qword_1ECB06A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A38);
  }

  return result;
}

unint64_t sub_1D95780E4()
{
  result = qword_1ECB06A40;
  if (!qword_1ECB06A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A40);
  }

  return result;
}

unint64_t sub_1D9578138()
{
  result = qword_1ECB06A50;
  if (!qword_1ECB06A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A50);
  }

  return result;
}

unint64_t sub_1D95781F8()
{
  result = qword_1ECB06A58;
  if (!qword_1ECB06A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A58);
  }

  return result;
}

unint64_t sub_1D9578250()
{
  result = qword_1ECB06A60;
  if (!qword_1ECB06A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A60);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D95782C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D9578310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D95783C8()
{
  result = qword_1ECB06A68;
  if (!qword_1ECB06A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A68);
  }

  return result;
}

unint64_t sub_1D9578420()
{
  result = qword_1ECB06A70;
  if (!qword_1ECB06A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A70);
  }

  return result;
}

unint64_t sub_1D9578478()
{
  result = qword_1ECB06A78;
  if (!qword_1ECB06A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A78);
  }

  return result;
}

unint64_t sub_1D95784D0()
{
  result = qword_1ECB06A80;
  if (!qword_1ECB06A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A80);
  }

  return result;
}

unint64_t sub_1D9578528()
{
  result = qword_1ECB06A88;
  if (!qword_1ECB06A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A88);
  }

  return result;
}

unint64_t sub_1D9578580()
{
  result = qword_1ECB06A90;
  if (!qword_1ECB06A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A90);
  }

  return result;
}

unint64_t sub_1D95785D8()
{
  result = qword_1ECB06A98;
  if (!qword_1ECB06A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A98);
  }

  return result;
}

unint64_t sub_1D9578630()
{
  result = qword_1ECB06AA0;
  if (!qword_1ECB06AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AA0);
  }

  return result;
}

unint64_t sub_1D9578688()
{
  result = qword_1ECB06AA8;
  if (!qword_1ECB06AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AA8);
  }

  return result;
}

unint64_t sub_1D95786E0()
{
  result = qword_1ECB06AB0;
  if (!qword_1ECB06AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AB0);
  }

  return result;
}

uint64_t sub_1D9578734(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496567616B636170 && a2 == 0xE900000000000044 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
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

uint64_t DDMDeclarationStatusRequest.declarationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9578954()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D95794B8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954DD2C(1, v2, v3, sub_1D9578DB0, 0);
}

uint64_t DDMDeclarationStatusRequest.send(to:)(char a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D9578A74, 0, 0);
}

uint64_t sub_1D9578A74()
{
  if (*(v0 + 40))
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
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9578B78;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D954DD2C(1, v2, v3, sub_1D9578DB0, 0);
}

uint64_t sub_1D9578B78(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void *DDMDeclarationStatusRequest.request()()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDCFA278 != -1)
  {
    v4 = *v0;
    v5 = v0[1];
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  return sub_1D95725B8(1, v1, v2, sub_1D9578DBC, 0);
}

void *DDMDeclarationStatusRequest.send(to:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  a2 = *v3;
  a3 = v3[1];
  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  return sub_1D95725B8(1, a2, a3, sub_1D9578DBC, 0);
}

void sub_1D9578DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 getDeclarationStatus:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_1D9578EA0(uint64_t a1)
{
  v2 = sub_1D957931C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9578EDC(uint64_t a1)
{
  v2 = sub_1D957931C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMDeclarationStatusRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AD0, &qword_1D95C6340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DDMDeclarationStatusRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AE0, &qword_1D95C6348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C029C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95791E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AD0, &qword_1D95C6340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D957931C()
{
  result = qword_1ECB06AD8;
  if (!qword_1ECB06AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AD8);
  }

  return result;
}

unint64_t sub_1D9579394()
{
  result = qword_1ECB06AE8;
  if (!qword_1ECB06AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AE8);
  }

  return result;
}

unint64_t sub_1D95793EC()
{
  result = qword_1ECB06AF0;
  if (!qword_1ECB06AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AF0);
  }

  return result;
}

unint64_t sub_1D9579444()
{
  result = qword_1ECB06AF8;
  if (!qword_1ECB06AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AF8);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppInstallRequestType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AppInstallRequestType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x5550505672657375;
    v7 = 7368821;
    if (v1 != 10)
    {
      v7 = 0x5565726F74736572;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5056656369766564;
    v9 = 0x5056656369766564;
    if (v1 != 7)
    {
      v9 = 0x50505672657375;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C6C6174736E69;
    v3 = 0x657461647075;
    v4 = 0x6F69746F6D6F7270;
    if (v1 != 4)
    {
      v4 = 0x65726F74736572;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0x6974616D6F747561;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D95796CC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AppInstallRequestType.rawValue.getter();
  v4 = v3;
  if (v2 == AppInstallRequestType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D95C041C();
  }

  return v7 & 1;
}

unint64_t sub_1D957976C()
{
  result = qword_1ECB06B00;
  if (!qword_1ECB06B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B00);
  }

  return result;
}

uint64_t sub_1D95797C0()
{
  v1 = *v0;
  sub_1D95C051C();
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9579828()
{
  v2 = *v0;
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();
}

uint64_t sub_1D957988C()
{
  v1 = *v0;
  sub_1D95C051C();
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D95798F0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AppInstallRequestType.init(rawValue:)(a1);
}

unint64_t sub_1D95798FC@<X0>(unint64_t *a1@<X8>)
{
  result = AppInstallRequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D95799E4()
{
  result = qword_1ECB06B08;
  if (!qword_1ECB06B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B08);
  }

  return result;
}

uint64_t DDMRemoveManagedPackageRequest.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DDMRemoveManagedPackageRequest.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DDMRemoveManagedPackageRequest.send(to:)()
{
  return MEMORY[0x1EEE6DFA0](sub_1D955CE30, 0, 0);
}

{
  sub_1D955A9C4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t DDMRemoveManagedAppRequest.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DDMRemoveManagedAppRequest.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DDMRemoveManagedAppRequest.request()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D9579BF8, 0, 0);
}

uint64_t sub_1D9579BF8()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D957A074;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954E6A8(1, v2, v3, sub_1D9579F54, 0);
}

uint64_t DDMRemoveManagedAppRequest.send(to:)(char a1)
{
  *(v2 + 40) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D9579D18, 0, 0);
}

uint64_t sub_1D9579D18()
{
  if (*(v0 + 40))
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
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D954E6A8(1, v2, v3, sub_1D9579F54, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DDMRemoveManagedAppRequest.request()()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDCFA278 != -1)
  {
    v3 = *v0;
    v4 = v0[1];
    swift_once();
    v2 = v4;
    v1 = v3;
  }

  sub_1D9572CAC(1, v1, v2, sub_1D9579F60, 0);
}

void DDMRemoveManagedAppRequest.send(to:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  a2 = *v3;
  a3 = v3[1];
  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  sub_1D9572CAC(1, a2, a3, sub_1D9579F60, 0);
}

void sub_1D9579F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 removeManagedAppWithDeclarationIdentifier:v10 reply:v11];
  _Block_release(v11);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t DDMPurchaseMethod.description.getter()
{
  v1 = 0x74736566696E614DLL;
  v2 = 0x74736E692D657250;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1D957A114()
{
  v1 = 0x74736566696E616DLL;
  v2 = 0x6174736E49657270;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1D957A198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D957B5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D957A1C0(uint64_t a1)
{
  v2 = sub_1D957A850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A1FC(uint64_t a1)
{
  v2 = sub_1D957A850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A238(uint64_t a1)
{
  v2 = sub_1D957A94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A274(uint64_t a1)
{
  v2 = sub_1D957A94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A2B0(uint64_t a1)
{
  v2 = sub_1D957A8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A2EC(uint64_t a1)
{
  v2 = sub_1D957A8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A328(uint64_t a1)
{
  v2 = sub_1D957A8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A364(uint64_t a1)
{
  v2 = sub_1D957A8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A3A0(uint64_t a1)
{
  v2 = sub_1D957A9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A3DC(uint64_t a1)
{
  v2 = sub_1D957A9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPurchaseMethod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B10, &qword_1D95C6700);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B18, &qword_1D95C6708);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B20, &qword_1D95C6710);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B28, &qword_1D95C6718);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B30, &qword_1D95C6720);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957A850();
  sub_1D95C05BC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D957A8F8();
      v24 = v33;
      sub_1D95C034C();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D957A8A4();
      v24 = v36;
      sub_1D95C034C();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D957A94C();
    v24 = v30;
    sub_1D95C034C();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D957A9A0();
  sub_1D95C034C();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1D957A850()
{
  result = qword_1ECB06B38;
  if (!qword_1ECB06B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B38);
  }

  return result;
}

unint64_t sub_1D957A8A4()
{
  result = qword_1ECB06B40;
  if (!qword_1ECB06B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B40);
  }

  return result;
}

unint64_t sub_1D957A8F8()
{
  result = qword_1ECB06B48;
  if (!qword_1ECB06B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B48);
  }

  return result;
}

unint64_t sub_1D957A94C()
{
  result = qword_1ECB06B50;
  if (!qword_1ECB06B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B50);
  }

  return result;
}

unint64_t sub_1D957A9A0()
{
  result = qword_1ECB06B58;
  if (!qword_1ECB06B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B58);
  }

  return result;
}

uint64_t DDMPurchaseMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t DDMPurchaseMethod.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B60, &qword_1D95C6728);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B68, &qword_1D95C6730);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B70, &qword_1D95C6738);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B78, &qword_1D95C6740);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B80, &unk_1D95C6748);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  sub_1D957A850();
  v21 = v53;
  sub_1D95C059C();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D95C032C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D954A270();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D95C01FC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v34 = &type metadata for DDMPurchaseMethod;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D957A94C();
        v39 = v42;
        sub_1D95C027C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D957A9A0();
        v31 = v42;
        sub_1D95C027C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D957A8F8();
      v38 = v42;
      sub_1D95C027C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D957A8A4();
      v40 = v42;
      sub_1D95C027C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

unint64_t sub_1D957B0C8()
{
  result = qword_1ECB06B88;
  if (!qword_1ECB06B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B88);
  }

  return result;
}

unint64_t sub_1D957B14C()
{
  v1 = 0x74736566696E614DLL;
  v2 = 0x74736E692D657250;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1D957B238()
{
  result = qword_1ECB06B90;
  if (!qword_1ECB06B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B90);
  }

  return result;
}

unint64_t sub_1D957B290()
{
  result = qword_1ECB06B98;
  if (!qword_1ECB06B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B98);
  }

  return result;
}

unint64_t sub_1D957B2E8()
{
  result = qword_1ECB06BA0;
  if (!qword_1ECB06BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BA0);
  }

  return result;
}

unint64_t sub_1D957B340()
{
  result = qword_1ECB06BA8;
  if (!qword_1ECB06BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BA8);
  }

  return result;
}

unint64_t sub_1D957B398()
{
  result = qword_1ECB06BB0;
  if (!qword_1ECB06BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BB0);
  }

  return result;
}

unint64_t sub_1D957B3F0()
{
  result = qword_1ECB06BB8;
  if (!qword_1ECB06BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BB8);
  }

  return result;
}

unint64_t sub_1D957B448()
{
  result = qword_1ECB06BC0;
  if (!qword_1ECB06BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BC0);
  }

  return result;
}

unint64_t sub_1D957B4A0()
{
  result = qword_1ECB06BC8;
  if (!qword_1ECB06BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BC8);
  }

  return result;
}

unint64_t sub_1D957B4F8()
{
  result = qword_1ECB06BD0;
  if (!qword_1ECB06BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BD0);
  }

  return result;
}

unint64_t sub_1D957B550()
{
  result = qword_1ECB06BD8;
  if (!qword_1ECB06BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BD8);
  }

  return result;
}

unint64_t sub_1D957B5A8()
{
  result = qword_1ECB06BE0;
  if (!qword_1ECB06BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BE0);
  }

  return result;
}

uint64_t sub_1D957B5FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0840 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174736E49657270 && a2 == 0xEC00000064656C6CLL || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D957B78C(uint64_t a1)
{
  v2 = sub_1D957BD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B7C8(uint64_t a1)
{
  v2 = sub_1D957BD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957B804()
{
  if (*v0)
  {
    result = 0x7465736572;
  }

  else
  {
    result = 0x61727473746F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_1D957B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000)
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

uint64_t sub_1D957B920(uint64_t a1)
{
  v2 = sub_1D957BCC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B95C(uint64_t a1)
{
  v2 = sub_1D957BCC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957B998(uint64_t a1)
{
  v2 = sub_1D957BD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B9D4(uint64_t a1)
{
  v2 = sub_1D957BD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RestoreRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BE8, &qword_1D95C6C60);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BF0, &qword_1D95C6C68);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BF8, &qword_1D95C6C70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957BCC0();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D957BD14();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D957BD68();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1D957BCC0()
{
  result = qword_1ECB06C00;
  if (!qword_1ECB06C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C00);
  }

  return result;
}

unint64_t sub_1D957BD14()
{
  result = qword_1ECB06C08;
  if (!qword_1ECB06C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C08);
  }

  return result;
}

unint64_t sub_1D957BD68()
{
  result = qword_1ECB06C10;
  if (!qword_1ECB06C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C10);
  }

  return result;
}

uint64_t RestoreRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t RestoreRequestType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C18, &qword_1D95C6C78);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C20, &qword_1D95C6C80);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C28, &unk_1D95C6C88);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957BCC0();
  v16 = v36;
  sub_1D95C059C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D95C032C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D954A268();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D95C01FC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v26 = &type metadata for RestoreRequestType;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D957BD14();
        sub_1D95C027C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D957BD68();
        sub_1D95C027C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1D957C358()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D955BACC;

  return (sub_1D954EE0C)(1, v1, sub_1D957C458, 0);
}

void sub_1D957C458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 handleRestore:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D957C554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
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

uint64_t sub_1D957C5E0(uint64_t a1)
{
  v2 = sub_1D957C940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957C61C(uint64_t a1)
{
  v2 = sub_1D957C940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RestoreRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C30, &qword_1D95C6CA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957C940();
  sub_1D95C05BC();
  v12 = v8;
  sub_1D957C994();
  sub_1D95C03CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RestoreRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C48, &qword_1D95C6CA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957C940();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D957C9E8();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D957C940()
{
  result = qword_1ECB06C38;
  if (!qword_1ECB06C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C38);
  }

  return result;
}

unint64_t sub_1D957C994()
{
  result = qword_1ECB06C40;
  if (!qword_1ECB06C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C40);
  }

  return result;
}

unint64_t sub_1D957C9E8()
{
  result = qword_1ECB06C50;
  if (!qword_1ECB06C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C50);
  }

  return result;
}

unint64_t sub_1D957CA40()
{
  result = qword_1ECB06C58;
  if (!qword_1ECB06C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C58);
  }

  return result;
}

unint64_t sub_1D957CAF8()
{
  result = qword_1ECB06C60;
  if (!qword_1ECB06C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C60);
  }

  return result;
}

unint64_t sub_1D957CB50()
{
  result = qword_1ECB06C68;
  if (!qword_1ECB06C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C68);
  }

  return result;
}

unint64_t sub_1D957CBA8()
{
  result = qword_1ECB06C70;
  if (!qword_1ECB06C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C70);
  }

  return result;
}

unint64_t sub_1D957CC00()
{
  result = qword_1ECB06C78;
  if (!qword_1ECB06C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C78);
  }

  return result;
}

unint64_t sub_1D957CC58()
{
  result = qword_1ECB06C80;
  if (!qword_1ECB06C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C80);
  }

  return result;
}

unint64_t sub_1D957CCB0()
{
  result = qword_1ECB06C88;
  if (!qword_1ECB06C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C88);
  }

  return result;
}

unint64_t sub_1D957CD08()
{
  result = qword_1ECB06C90;
  if (!qword_1ECB06C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C90);
  }

  return result;
}

unint64_t sub_1D957CD60()
{
  result = qword_1ECB06C98;
  if (!qword_1ECB06C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C98);
  }

  return result;
}

unint64_t sub_1D957CDB8()
{
  result = qword_1ECB06CA0;
  if (!qword_1ECB06CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CA0);
  }

  return result;
}

unint64_t sub_1D957CE10()
{
  result = qword_1ECB06CA8;
  if (!qword_1ECB06CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CA8);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DDMPackageDeclarationKeysRequest.send(to:)()
{
  return MEMORY[0x1EEE6DFA0](sub_1D955CE30, 0, 0);
}

{
  sub_1D955A9C4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_1D957CEEC(uint64_t a1)
{
  v2 = sub_1D957D078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957CF28(uint64_t a1)
{
  v2 = sub_1D957D078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPackageDeclarationKeysRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CB0, &qword_1D95C71A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957D078();
  sub_1D95C05BC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D957D078()
{
  result = qword_1ECB06CB8;
  if (!qword_1ECB06CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CB8);
  }

  return result;
}

uint64_t sub_1D957D11C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CB0, &qword_1D95C71A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957D078();
  sub_1D95C05BC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D957D254()
{
  result = qword_1ECB06CC0;
  if (!qword_1ECB06CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CC0);
  }

  return result;
}

unint64_t sub_1D957D2AC()
{
  result = qword_1ECB06CC8;
  if (!qword_1ECB06CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CC8);
  }

  return result;
}

uint64_t sub_1D957D31C()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D955C654;

  return sub_1D954F7DC(1, 1, sub_1D957D538, 0);
}

uint64_t sub_1D957D434()
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
  v1[1] = sub_1D955BACC;

  return sub_1D954F7DC(1, 1, sub_1D957D538, 0);
}

void sub_1D957D538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D95A3C64;
  v7[3] = &block_descriptor_8;
  v6 = _Block_copy(v7);

  [a1 resetManagedAppInstallHistoryWithReply_];
  _Block_release(v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OAuthInvalidateRequest.accountID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OAuthInvalidateRequest.server.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OAuthInvalidateRequest.request()()
{
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  *(v1 + 40) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1D957D6B8, 0, 0);
}

uint64_t sub_1D957D6B8()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D957D7B4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D954FF30(1, v4, v5, v2, v3, sub_1D957D8A8, 0);
}

uint64_t sub_1D957D7B4()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D957D8A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 oauthInvalidate:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D957D984()
{
  if (*v0)
  {
    result = 0x726576726573;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_1D957D9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
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

uint64_t sub_1D957DAA0(uint64_t a1)
{
  v2 = sub_1D957DEDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957DADC(uint64_t a1)
{
  v2 = sub_1D957DEDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OAuthInvalidateRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CD0, &qword_1D95C7318);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957DEDC();
  sub_1D95C05BC();
  v16 = 0;
  v12 = v14[3];
  sub_1D95C038C();
  if (!v12)
  {
    v15 = 1;
    sub_1D95C038C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t OAuthInvalidateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CE0, &qword_1D95C7320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957DEDC();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1D95C02CC();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D95C02CC();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D957DEDC()
{
  result = qword_1ECB06CD8;
  if (!qword_1ECB06CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CD8);
  }

  return result;
}

unint64_t sub_1D957DF54()
{
  result = qword_1ECB06CE8;
  if (!qword_1ECB06CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CE8);
  }

  return result;
}

unint64_t sub_1D957DFAC()
{
  result = qword_1ECB06CF0;
  if (!qword_1ECB06CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CF0);
  }

  return result;
}

unint64_t sub_1D957E004()
{
  result = qword_1ECB06CF8;
  if (!qword_1ECB06CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CF8);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t XPCApp.bundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t XPCApp.installedMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D957E0CC(v2, v3, v4);
}

uint64_t sub_1D957E0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 XPCApp.installedMetadata.setter(__int128 *a1)
{
  v10 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  sub_1D957E184(v1[3], v1[4], v1[5]);
  v8 = *a1;
  *(v1 + 5) = a1[1];
  *(v1 + 3) = v8;
  result = v10;
  *(v1 + 7) = v10;
  v1[9] = v3;
  return result;
}

uint64_t sub_1D957E184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t XPCApp.installingMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D957E0CC(v2, v3, v4);
}

__n128 XPCApp.installingMetadata.setter(uint64_t a1)
{
  v10 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  sub_1D957E184(v1[10], v1[11], v1[12]);
  v8 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 6) = v8;
  result = v10;
  *(v1 + 7) = v10;
  v1[16] = v3;
  return result;
}

uint64_t XPCApp.installErrorData.getter()
{
  v1 = *(v0 + 136);
  sub_1D957E2D0(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_1D957E2D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D955F8A8(a1, a2);
  }

  return a1;
}

uint64_t XPCApp.installErrorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D955F8FC(*(v2 + 136), *(v2 + 144));
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t XPCApp.Metadata.version.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t XPCApp.Metadata.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t XPCApp.Metadata.shortVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t XPCApp.Metadata.shortVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t XPCApp.Metadata.account.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t XPCApp.Metadata.account.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void __swiftcall XPCApp.Metadata.init(appleVersionID:version:shortVersion:account:)(Swift::UInt64 appleVersionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  *v4 = appleVersionID;
  *(v4 + 8) = version;
  *(v4 + 24) = shortVersion;
  *(v4 + 40) = account;
}

uint64_t sub_1D957E518()
{
  v1 = 0x726556656C707061;
  v2 = 0x72655674726F6873;
  if (*v0 != 2)
  {
    v2 = 0x746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

uint64_t sub_1D957E5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D957FC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D957E5CC(uint64_t a1)
{
  v2 = sub_1D957E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957E608(uint64_t a1)
{
  v2 = sub_1D957E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCApp.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D00, &qword_1D95C74E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16[3] = v1[2];
  v16[4] = v8;
  v11 = v1[5];
  v16[1] = v1[4];
  v16[2] = v10;
  v16[0] = v11;
  v12 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957E834();
  sub_1D95C05BC();
  v20 = 0;
  v14 = v16[5];
  sub_1D95C03DC();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1D95C038C();
  v18 = 2;
  sub_1D95C038C();
  v17 = 3;
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D957E834()
{
  result = qword_1EDCFA130;
  if (!qword_1EDCFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA130);
  }

  return result;
}

uint64_t XPCApp.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D08, &qword_1D95C74E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957E834();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = 0;
  v11 = sub_1D95C031C();
  v31 = 1;
  v12 = sub_1D95C02CC();
  v14 = v13;
  v28 = v12;
  v30 = 2;
  v26 = sub_1D95C02CC();
  v27 = v15;
  v29 = 3;
  v16 = sub_1D95C029C();
  v18 = v17;
  v19 = *(v6 + 8);
  v25 = v16;
  v19(v9, v5);
  v21 = v27;
  v20 = v28;
  *a2 = v11;
  a2[1] = v20;
  v22 = v25;
  v23 = v26;
  a2[2] = v14;
  a2[3] = v23;
  a2[4] = v21;
  a2[5] = v22;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a4 + 6);
  v18 = a5[1];
  v19 = *a5;
  v16 = a4[2];
  v17 = a5[2];
  v13 = *(a5 + 6);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  sub_1D957E184(0, 0, 0);
  v14 = *a4;
  *(a8 + 40) = a4[1];
  *(a8 + 24) = v14;
  *(a8 + 56) = v16;
  *(a8 + 72) = v12;
  sub_1D957E184(0, 0, 0);
  *(a8 + 80) = v19;
  *(a8 + 96) = v18;
  *(a8 + 112) = v17;
  *(a8 + 128) = v13;
  result = sub_1D955F8FC(0, 0xF000000000000000);
  *(a8 + 136) = a6;
  *(a8 + 144) = a7;
  return result;
}

unint64_t sub_1D957EC30()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_1D957ECE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D957FDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D957ED08(uint64_t a1)
{
  v2 = sub_1D957F0BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957ED44(uint64_t a1)
{
  v2 = sub_1D957F0BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCApp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D10, &qword_1D95C74F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v40 = v1[2];
  v41 = v8;
  v11 = v1[5];
  v38 = v1[4];
  v39 = v10;
  v12 = v1[7];
  v36 = v1[6];
  v37 = v11;
  v13 = v1[9];
  v34 = v1[8];
  v35 = v12;
  v33 = v13;
  v14 = v1[11];
  v26 = v1[10];
  v27 = v14;
  v15 = v1[12];
  v31 = v1[13];
  v32 = v15;
  v16 = v1[14];
  v29 = v1[15];
  v30 = v16;
  v17 = v1[17];
  v28 = v1[16];
  v25 = v17;
  v18 = v1[18];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957F0BC();
  sub_1D95C05BC();
  LOBYTE(v43) = 0;
  v20 = v42;
  sub_1D95C03DC();
  if (v20)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = v37;
  v22 = v38;
  v23 = v39;
  v42 = v18;
  LOBYTE(v43) = 1;
  sub_1D95C038C();
  v43 = v23;
  v44 = v22;
  v45 = v21;
  v46 = v36;
  v47 = v35;
  v48 = v34;
  v49 = v33;
  v50 = 2;
  sub_1D957E0CC(v23, v22, v21);
  sub_1D957F110();
  sub_1D95C036C();
  sub_1D957E184(v43, v44, v45);
  v43 = v26;
  v44 = v27;
  v45 = v32;
  v46 = v31;
  v47 = v30;
  v48 = v29;
  v49 = v28;
  v50 = 3;
  sub_1D957E0CC(v26, v27, v32);
  sub_1D95C036C();
  sub_1D957E184(v43, v44, v45);
  v43 = v25;
  v44 = v42;
  v50 = 4;
  sub_1D957E2D0(v25, v42);
  sub_1D957F164();
  sub_1D95C036C();
  sub_1D955F8FC(v43, v44);
  return (*(v4 + 8))(v7, 0);
}

unint64_t sub_1D957F0BC()
{
  result = qword_1EDCFA148;
  if (!qword_1EDCFA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA148);
  }

  return result;
}

unint64_t sub_1D957F110()
{
  result = qword_1EDCF9CB0;
  if (!qword_1EDCF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CB0);
  }

  return result;
}

unint64_t sub_1D957F164()
{
  result = qword_1EDCFA070;
  if (!qword_1EDCFA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA070);
  }

  return result;
}

uint64_t XPCApp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D18, &qword_1D95C74F8);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v27 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957F0BC();
  sub_1D95C059C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D957E184(0, 0, 0);
    sub_1D957E184(0, 0, 0);
    return sub_1D955F8FC(0, 0xF000000000000000);
  }

  else
  {
    v39 = a1;
    v40 = v4;
    v10 = v41;
    v9 = v42;
    LOBYTE(v53) = 0;
    v11 = v7;
    v12 = sub_1D95C031C();
    LOBYTE(v53) = 1;
    v13 = sub_1D95C02CC();
    *&v35 = v14;
    LOBYTE(v43) = 2;
    sub_1D957F6F8();
    sub_1D95C02AC();
    v32 = v13;
    v33 = v54;
    *(&v35 + 1) = v53;
    v36 = *v55;
    v37 = *&v55[8];
    v38 = *v56;
    sub_1D957E184(0, 0, 0);
    LOBYTE(v43) = 3;
    sub_1D95C02AC();
    v15 = v39;
    v16 = v53;
    v17 = v54;
    v34 = *v55;
    v30 = *&v55[16];
    v31 = *&v55[8];
    v28 = *&v56[8];
    v29 = *v56;
    sub_1D957E184(0, 0, 0);
    v69 = 4;
    sub_1D957F74C();
    sub_1D95C02AC();
    (*(v40 + 8))(v11, v9);
    v18 = v67;
    v19 = v68;
    sub_1D955F8FC(0, 0xF000000000000000);
    *&v43 = v12;
    *(&v43 + 1) = v32;
    v44 = v35;
    v42 = v12;
    v20 = v33;
    *&v45 = v33;
    *(&v45 + 1) = v36;
    v46 = v37;
    v47 = v38;
    *&v48 = v16;
    *(&v48 + 1) = v17;
    *&v49 = v34;
    *(&v49 + 1) = v31;
    *&v50 = v30;
    *(&v50 + 1) = v29;
    *&v51 = v28;
    *(&v51 + 1) = v18;
    v52 = v19;
    *(v10 + 144) = v19;
    v21 = v48;
    *(v10 + 64) = v47;
    *(v10 + 80) = v21;
    v22 = v46;
    *(v10 + 32) = v45;
    *(v10 + 48) = v22;
    v23 = v51;
    v24 = v49;
    *(v10 + 112) = v50;
    *(v10 + 128) = v23;
    *(v10 + 96) = v24;
    v25 = v44;
    *v10 = v43;
    *(v10 + 16) = v25;
    sub_1D957F7A0(&v43, &v53);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v53 = v42;
    v54 = v32;
    *v55 = v35;
    *&v55[16] = v20;
    *v56 = v36;
    *&v56[8] = v37;
    v57 = v38;
    v58 = v16;
    v59 = v17;
    v60 = v34;
    v61 = v31;
    v62 = v30;
    v63 = v29;
    v64 = v28;
    v65 = v18;
    v66 = v19;
    return sub_1D957F7D8(&v53);
  }
}

unint64_t sub_1D957F6F8()
{
  result = qword_1EDCFA088[0];
  if (!qword_1EDCFA088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCFA088);
  }

  return result;
}

unint64_t sub_1D957F74C()
{
  result = qword_1EDCFA118;
  if (!qword_1EDCFA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA118);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution6XPCAppV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D957F8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1D957F910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1D957F9A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D957F9E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D957FA68()
{
  result = qword_1ECB06D20;
  if (!qword_1ECB06D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D20);
  }

  return result;
}

unint64_t sub_1D957FAC0()
{
  result = qword_1ECB06D28;
  if (!qword_1ECB06D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D28);
  }

  return result;
}

unint64_t sub_1D957FB18()
{
  result = qword_1EDCFA138;
  if (!qword_1EDCFA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA138);
  }

  return result;
}

unint64_t sub_1D957FB70()
{
  result = qword_1EDCFA140;
  if (!qword_1EDCFA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA140);
  }

  return result;
}

unint64_t sub_1D957FBC8()
{
  result = qword_1EDCFA120;
  if (!qword_1EDCFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA120);
  }

  return result;
}

unint64_t sub_1D957FC20()
{
  result = qword_1EDCFA128;
  if (!qword_1EDCFA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA128);
  }

  return result;
}

uint64_t sub_1D957FC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72655674726F6873 && a2 == 0xEC0000006E6F6973 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D957FDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0860 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D95D0880 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D08A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D957FFB8(uint64_t a1)
{
  v2 = sub_1D9582798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957FFF4(uint64_t a1)
{
  v2 = sub_1D9582798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580030(uint64_t a1)
{
  v2 = sub_1D958269C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958006C(uint64_t a1)
{
  v2 = sub_1D958269C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95800A8(uint64_t a1)
{
  v2 = sub_1D9582744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95800E4(uint64_t a1)
{
  v2 = sub_1D9582744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580120(uint64_t a1)
{
  v2 = sub_1D95826F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958015C(uint64_t a1)
{
  v2 = sub_1D95826F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PackageState.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}