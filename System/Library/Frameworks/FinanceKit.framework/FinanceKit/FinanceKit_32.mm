uint64_t sub_1B74993D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A02CC();
  sub_1B78023F8();
  sub_1B7801FA8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.TransactionRequestConstraints.firstRequestWindow.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.TransactionRequestConstraints.init(firstRequestWindow:maxAgeFirstRequest:maxAgeRefreshRequest:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

unint64_t sub_1B74995BC()
{
  v1 = 0xD000000000000014;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B7499610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7499638(uint64_t a1)
{
  v2 = sub_1B74A0320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7499674(uint64_t a1)
{
  v2 = sub_1B74A0320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.TransactionRequestConstraints.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995898);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0320();
  sub_1B78023F8();
  v11 = 0;
  v6 = v8[1];
  sub_1B7801F18();
  if (!v6)
  {
    v10 = 1;
    sub_1B7801F98();
    v9 = 2;
    sub_1B7801F98();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.TransactionRequestConstraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0320();
  sub_1B78023C8();
  if (!v2)
  {
    v21 = 0;
    v9 = sub_1B7801D98();
    v11 = v10;
    v12 = v9;
    v20 = 1;
    sub_1B7801E18();
    v15 = v14;
    v19 = 2;
    sub_1B7801E18();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.PrivacyLabel.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.PrivacyLabel.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x544341534E415254;
    v6 = 0x53445241574552;
    if (v1 != 6)
    {
      v6 = 0x4E454D4554415453;
    }

    if (v1 == 4)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0 <= 5u)
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
    v2 = 0xD00000000000001BLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000013;
    if (*v0)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void sub_1B7499C2C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEC000000534E4F49;
    v9 = 0x544341534E415254;
    v10 = 0xE700000000000000;
    v11 = 0x53445241574552;
    if (v2 != 6)
    {
      v11 = 0x4E454D4554415453;
      v10 = 0xEA00000000005354;
    }

    if (v2 == 4)
    {
      v9 = 0xD00000000000001ALL;
      v8 = 0x80000001B7873D00;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (*v1 > 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001B7873CC0;
    v4 = 0xD00000000000001BLL;
    if (v2 != 2)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000001B7873CE0;
    }

    v5 = 0x80000001B7873C80;
    v6 = 0xD000000000000013;
    if (*v1)
    {
      v6 = 0xD000000000000010;
      v5 = 0x80000001B7873CA0;
    }

    if (*v1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1B7499E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B7499F14(uint64_t a1)
{
  v2 = sub_1B74A0374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7499F50(uint64_t a1)
{
  v2 = sub_1B74A0374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.PersonalizedInsightsBehaviour.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0374();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Institution.ClientConfiguration.PersonalizedInsightsBehaviour.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0374();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B749A234(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0374();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Pass.associatedApplicationIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawBankConnectData.Pass.associatedAdamIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RawBankConnectData.Pass.organizationName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.Pass.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.Pass.passTypeIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawBankConnectData.Pass.passTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawBankConnectData.Pass.paymentType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawBankConnectData.Pass.paymentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawBankConnectData.Pass.serialNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawBankConnectData.Pass.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

unint64_t sub_1B749A638()
{
  v1 = *v0;
  v2 = 0x54746E656D796170;
  if (v1 != 4)
  {
    v2 = 0x754E6C6169726573;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD000000000000019;
  if (v1 != 1)
  {
    v3 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B749A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74A2FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B749A73C(uint64_t a1)
{
  v2 = sub_1B74A03C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749A778(uint64_t a1)
{
  v2 = sub_1B74A03C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Pass.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[7] = v1[2];
  v16 = v8;
  v11 = v1[4];
  v15[5] = v1[5];
  v15[6] = v10;
  v12 = v1[6];
  v15[3] = v1[7];
  v15[4] = v11;
  v13 = v1[9];
  v15[0] = v1[8];
  v15[1] = v13;
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A03C8();

  sub_1B78023F8();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B721523C(&qword_1EB98F960);
  sub_1B7801FC8();
  if (v2)
  {
  }

  else
  {

    v18 = v16;
    v17 = 1;
    sub_1B7801FC8();
    LOBYTE(v18) = 2;
    sub_1B7801F78();
    LOBYTE(v18) = 3;
    sub_1B7801F78();
    LOBYTE(v18) = 4;
    sub_1B7801F78();
    LOBYTE(v18) = 5;
    sub_1B7801F78();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.Pass.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1B8CA6620](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1B7800798();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B8CA6620](*(v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2 + 40;
    do
    {

      sub_1B7800798();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.Pass.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.Pass.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.Pass.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A03C8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  LOBYTE(v34) = 0;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801E48();
  v9 = v39[0];
  LOBYTE(v34) = 1;
  sub_1B7801E48();
  v10 = v9;
  v11 = v39[0];
  LOBYTE(v39[0]) = 2;
  v12 = sub_1B7801DF8();
  v32 = v13;
  v29 = v12;
  LOBYTE(v39[0]) = 3;
  v28 = sub_1B7801DF8();
  v31 = v14;
  LOBYTE(v39[0]) = 4;
  v27 = sub_1B7801DF8();
  v30 = v15;
  v40 = 5;
  v16 = sub_1B7801DF8();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  *&v34 = v10;
  *(&v34 + 1) = v11;
  v20 = v11;
  v21 = v32;
  *&v35 = v29;
  *(&v35 + 1) = v32;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v22 = v30;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  *&v38 = v16;
  *(&v38 + 1) = v19;
  v23 = v37;
  v24 = v33;
  v33[2] = v36;
  v24[3] = v23;
  v24[4] = v38;
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  sub_1B749F018(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v10;
  v39[1] = v20;
  v39[2] = v29;
  v39[3] = v21;
  v39[4] = v28;
  v39[5] = v31;
  v39[6] = v27;
  v39[7] = v22;
  v39[8] = v16;
  v39[9] = v19;
  return sub_1B749F050(v39);
}

uint64_t sub_1B749B0B8()
{
  sub_1B78022F8();
  RawBankConnectData.Pass.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B749B0FC()
{
  sub_1B78022F8();
  RawBankConnectData.Pass.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.PassIdentifier.serialNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.PassIdentifier.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.PassIdentifier.passTypeIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.PassIdentifier.passTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.PassIdentifier.init(serialNumber:passTypeIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static RawBankConnectData.PassIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B749B2F8()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x754E6C6169726573;
  }
}

uint64_t sub_1B749B340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7881150 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B749B428(uint64_t a1)
{
  v2 = sub_1B74A041C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749B464(uint64_t a1)
{
  v2 = sub_1B74A041C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PassIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A041C();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.PassIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A041C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B7801DF8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.InstitutionForPassResponse.pass.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

__n128 RawBankConnectData.InstitutionForPassResponse.pass.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0) + 20));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

__n128 RawBankConnectData.InstitutionForPassResponse.init(institution:pass:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  sub_1B74A32FC(a1, a3, type metadata accessor for RawBankConnectData.Institution);
  v6 = (a3 + *(type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0) + 20));
  result = v8;
  *v6 = v8;
  v6[1].n128_u64[0] = v4;
  v6[1].n128_u64[1] = v5;
  return result;
}

uint64_t sub_1B749BA40()
{
  if (*v0)
  {
    return 1936941424;
  }

  else
  {
    return 0x7475746974736E69;
  }
}

uint64_t sub_1B749BA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475746974736E69 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1936941424 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B749BB5C(uint64_t a1)
{
  v2 = sub_1B74A04F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749BB98(uint64_t a1)
{
  v2 = sub_1B74A04F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionForPassResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9958F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A04F4();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  type metadata accessor for RawBankConnectData.Institution(0);
  sub_1B749EF28(&qword_1EB995908, type metadata accessor for RawBankConnectData.Institution);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0) + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v15 = *v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14[15] = 1;
    sub_1B74A0548();

    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.InstitutionForPassResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RawBankConnectData.Institution(0);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995918);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A04F4();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v11;
  LOBYTE(v23) = 0;
  sub_1B749EF28(&qword_1EB995188, type metadata accessor for RawBankConnectData.Institution);
  v14 = v21;
  sub_1B7801E48();
  sub_1B74A32FC(v22, v13, type metadata accessor for RawBankConnectData.Institution);
  v26 = 1;
  sub_1B74A059C();
  sub_1B7801E48();
  (*(v12 + 8))(v8, v14);
  v15 = v24;
  v16 = v25;
  v17 = v13 + *(v9 + 20);
  *v17 = v23;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  sub_1B749F964(v13, v19, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B749F904(v13, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
}

uint64_t sub_1B749C1C8()
{
  if (*v0)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_1B749C20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B749C2F8(uint64_t a1)
{
  v2 = sub_1B74A0610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749C334(uint64_t a1)
{
  v2 = sub_1B74A0610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionsForPassesResponseWithExpiration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995928);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0610();
  sub_1B78023F8();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951B8);
  sub_1B74A0664(&qword_1EB995938, &qword_1EB995940);
  sub_1B7801FC8();
  if (!v2)
  {
    type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration(0);
    v10[6] = 1;
    sub_1B77FF988();
    sub_1B749EF28(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.InstitutionsForPassesResponseWithExpiration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995948);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0610();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951B8);
  v24 = 0;
  sub_1B74A0664(&qword_1EB9951C0, &qword_1EB9951C8);
  v15 = v22;
  sub_1B7801E48();
  v18 = v13;
  *v13 = v25;
  sub_1B77FF988();
  v23 = 1;
  sub_1B749EF28(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801DB8();
  (*(v14 + 8))(v9, v15);
  v16 = v18;
  sub_1B7205340(v6, v18 + *(v19 + 20));
  sub_1B749F964(v16, v20, type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B749F904(v16, type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration);
}

uint64_t RawBankConnectData.InstitutionsResponse.institutions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static RawBankConnectData.InstitutionsResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_1B731F8D0(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B749C9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475746974736E69 && a2 == 0xEC000000736E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B749CA88(uint64_t a1)
{
  v2 = sub_1B74A0700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749CAC4(uint64_t a1)
{
  v2 = sub_1B74A0700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995950);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0700();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995960);
  sub_1B74A0754(&qword_1EB995968, &qword_1EB995908);
  sub_1B7801F38();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InstitutionsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995970);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A0700();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995960);
    sub_1B74A0754(&qword_1EB995978, &qword_1EB995188);
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B749CE94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_1B731F8D0(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B749CF2C()
{
  if (*v0)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1B749CF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B7881170 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

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

uint64_t sub_1B749D060(uint64_t a1)
{
  v2 = sub_1B74A07F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B749D09C(uint64_t a1)
{
  v2 = sub_1B74A07F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InstitutionsResponseWithExpiration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995980);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A07F0();
  sub_1B78023F8();
  v11 = *v3;
  v10[7] = 0;
  sub_1B72CFA8C();

  sub_1B7801FC8();

  if (!v2)
  {
    type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
    v10[6] = 1;
    sub_1B77FF988();
    sub_1B749EF28(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.InstitutionsResponseWithExpiration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995990);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A07F0();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v13 = v12;
  v14 = v20;
  v23 = 0;
  sub_1B72CFDBC();
  v15 = v21;
  sub_1B7801E48();
  *v13 = v24;
  sub_1B77FF988();
  v22 = 1;
  sub_1B749EF28(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801DB8();
  (*(v14 + 8))(v9, v15);
  sub_1B7205340(v6, v13 + *(v18 + 20));
  sub_1B749F964(v13, v19, type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B749F904(v13, type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration);
}

BOOL _s10FinanceKit18RawBankConnectDataO11InstitutionV19ClientConfigurationV26BackgroundRefreshBehaviourV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s10FinanceKit18RawBankConnectDataO11InstitutionV19ClientConfigurationV29TransactionRequestConstraintsV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 != v4)
    {
      v3 = 0;
    }

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v4)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL _s10FinanceKit18RawBankConnectDataO11InstitutionV19ClientConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 97);
  v12 = *(a1 + 98);
  v13 = *(a1 + 99);
  v14 = *(a1 + 104);
  v58 = *(a1 + 112);
  v15 = *(a1 + 120);
  v56 = *(a1 + 128);
  v54 = *(a1 + 136);
  v16 = *(a1 + 144);
  v17 = *(a1 + 152);
  v18 = *(a1 + 160);
  v19 = *(a1 + 161);
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  v29 = *(a2 + 72);
  v28 = *(a2 + 80);
  v30 = *(a2 + 88);
  v31 = *(a2 + 96);
  v32 = *(a2 + 97);
  v33 = *(a2 + 98);
  v34 = *(a2 + 99);
  v35 = *(a2 + 104);
  v36 = *(a2 + 120);
  v57 = *(a2 + 112);
  v55 = *(a2 + 128);
  v53 = *(a2 + 136);
  v52 = *(a2 + 144);
  v51 = *(a2 + 152);
  v50 = *(a2 + 160);
  v37 = *(a2 + 161);
  if (*(a1 + 8))
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v38 = v20;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == v21)
    {
      v39 = v22;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (v4 == v25)
    {
      v40 = v24;
    }

    else
    {
      v40 = 0;
    }

    if (v40 != 1)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v24 & 1) != 0 || v3 != v23 || v4 != v25)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    if (v27)
    {
      return 0;
    }

    result = 0;
    if (v5 != v26 || v8 != v29)
    {
      return result;
    }

LABEL_33:
    if (v7 != v28)
    {
      return result;
    }

    v49 = v17;
    v46 = v37;
    v47 = v19;
    v48 = v18;
    if ((sub_1B7320030(v9, v30) & 1) == 0)
    {
      return 0;
    }

    if (v10 == 2)
    {
      if (v31 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v31 == 2 || ((v31 ^ v10) & 1) != 0)
      {
        return result;
      }
    }

    if (v11 == 2)
    {
      if (v32 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v32 == 2 || ((v32 ^ v11) & 1) != 0)
      {
        return result;
      }
    }

    if (v12 == 2)
    {
      if (v33 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v33 == 2 || ((v33 ^ v12) & 1) != 0)
      {
        return result;
      }
    }

    if (v13 == 2)
    {
      if (v34 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v34 == 2 || ((v34 ^ v13) & 1) != 0)
      {
        return result;
      }
    }

    if (v14)
    {
      if (v35)
      {
        if ((sub_1B731D168(v14, v35) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_64;
      }
    }

    else if (!v35)
    {

LABEL_64:
      if (v58 == 2)
      {
        if (v57 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v57 == 2 || ((v57 ^ v58) & 1) != 0)
        {
          return result;
        }
      }

      if (v56)
      {
        if (!v55)
        {
          return 0;
        }
      }

      else
      {
        v43 = v55;
        if (v15 != v36)
        {
          v43 = 1;
        }

        if (v43)
        {
          return 0;
        }
      }

      if (v54)
      {
        if (!v53)
        {
          return 0;
        }

        v44 = sub_1B731E014(v54, v53);

        if ((v44 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v53)
      {
        return 0;
      }

      if (v16 == 2)
      {
        v45 = v49;
        if (v52 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v52 == 2)
        {
          return result;
        }

        v45 = v49;
        if ((v52 ^ v16))
        {
          return result;
        }
      }

      if (sub_1B7320190(v45, v51))
      {
        if (v48 == 2)
        {
          if (v50 != 2)
          {
            return 0;
          }
        }

        else if (v50 == 2 || ((v48 ^ v50) & 1) != 0)
        {
          return 0;
        }

        if (v47 != 2)
        {
          return v46 != 2 && ((v46 ^ v47) & 1) == 0;
        }

        if (v46 == 2)
        {
          return 1;
        }
      }

      return 0;
    }

    return 0;
  }

  result = 0;
  if (v8 == v29)
  {
    v42 = v27;
  }

  else
  {
    v42 = 0;
  }

  if (v42 == 1)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO4PassV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v19 = a1[7];
  v20 = a1[6];
  v15 = a1[9];
  v16 = a1[8];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v17 = a2[7];
  v18 = a2[6];
  v13 = a2[9];
  v14 = a2[8];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0 || (sub_1B731D168(v2, v7) & 1) == 0 || (v4 != v9 || v3 != v8) && (sub_1B78020F8() & 1) == 0 || (v5 != v11 || v6 != v10) && (sub_1B78020F8() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t _s10FinanceKit18RawBankConnectDataO23InstitutionsRequestBodyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 5);
  v8 = *(a1 + 9);
  v35[2] = *(a1 + 7);
  v35[3] = v8;
  v9 = *(a1 + 11);
  v35[0] = *(a1 + 3);
  v35[1] = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 3);
  v14 = *(a2 + 5);
  v15 = *(a2 + 7);
  v16 = *(a2 + 11);
  v36[3] = *(a2 + 9);
  v36[4] = v16;
  v36[1] = v14;
  v36[2] = v15;
  v35[4] = v9;
  v36[0] = v13;
  if (v4 == v10 && v5 == v11 || (sub_1B78020F8()) && (sub_1B731D168(v6, v12))
  {
    v17 = *(a1 + 5);
    v18 = *(a1 + 9);
    v30 = *(a1 + 7);
    v31 = v18;
    v32 = *(a1 + 11);
    v28 = *(a1 + 3);
    v29 = v17;
    v19 = *(a2 + 5);
    v20 = *(a2 + 9);
    v25 = *(a2 + 7);
    v26 = v20;
    v27 = *(a2 + 11);
    v23 = *(a2 + 3);
    v24 = v19;
    v21 = _s10FinanceKit18RawBankConnectDataO4PassV2eeoiySbAE_AEtFZ_0(&v28, &v23);
    v33[2] = v25;
    v33[3] = v26;
    v33[4] = v27;
    v33[0] = v23;
    v33[1] = v24;
    sub_1B749F018(v35, v34);
    sub_1B749F018(v36, v34);
    sub_1B749F050(v33);
    v34[2] = v30;
    v34[3] = v31;
    v34[4] = v32;
    v34[0] = v28;
    v34[1] = v29;
    sub_1B749F050(v34);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

BOOL _s10FinanceKit18RawBankConnectDataO43InstitutionsForPassesResponseWithExpirationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((sub_1B731DC88(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration(0) + 20);
  v15 = *(v11 + 48);
  sub_1B7205588(a1 + v14, v13, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v14, &v13[v15], &qword_1EB98EBD0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1B7205588(v13, v10, &qword_1EB98EBD0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_1B749EF28(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v19 = sub_1B7800828();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v19 & 1) != 0;
}

BOOL _s10FinanceKit18RawBankConnectDataO34InstitutionsResponseWithExpirationV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *a2;
  if (*a1)
  {
    if (!v14)
    {
      return 0;
    }

    v28 = v7;
    v15 = v5;

    v17 = sub_1B731F8D0(v16, v14);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v28 = v7;
    v15 = v5;

    if (v14)
    {
      return 0;
    }
  }

  v18 = *(type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0) + 20);
  v19 = *(v11 + 48);
  sub_1B7205588(a1 + v18, v13, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v18, &v13[v19], &qword_1EB98EBD0);
  v20 = v15;
  v21 = *(v15 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v19], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1B7205588(v13, v10, &qword_1EB98EBD0);
  if (v21(&v13[v19], 1, v4) == 1)
  {
    (*(v15 + 8))(v10, v4);
LABEL_11:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  v23 = *(v15 + 32);
  v24 = v28;
  v23(v28, &v13[v19], v4);
  sub_1B749EF28(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v25 = sub_1B7800828();
  v26 = *(v20 + 8);
  v26(v24, v4);
  v26(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v25 & 1) != 0;
}

BOOL _s10FinanceKit18RawBankConnectDataO26InstitutionForPassResponseV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  result = 0;
  if (_s10FinanceKit18RawBankConnectDataO11InstitutionV2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0) + 20);
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v7 = *(a1 + v4 + 8);
    v8 = *(a1 + v4 + 16);
    v9 = *(v5 + 3);
    v10 = (a2 + v4);
    v11 = v10[2];
    v12 = v10[3];
    v13 = v6 == *v10 && v7 == v10[1];
    if (v13 || (sub_1B78020F8() & 1) != 0)
    {
      v14 = v8 == v11 && v9 == v12;
      if (v14 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO11InstitutionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = (&v80 - v7);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995BD0);
  MEMORY[0x1EEE9AC00](v83);
  v9 = &v80 - v8;
  v10 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995BD8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *a2;
  v22 = a2[1];
  v88 = a2;
  if ((v19 != v21 || v20 != v22) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v23 = a1;
  if ((a1[2] != v88[2] || a1[3] != v88[3]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v80 = v9;
  v81 = type metadata accessor for RawBankConnectData.Institution(0);
  v24 = *(v81 + 24);
  v25 = *(v16 + 48);
  sub_1B7205588(v23 + v24, v18, &qword_1EB9956B8);
  v26 = v88 + v24;
  v27 = v88;
  sub_1B7205588(v26, &v18[v25], &qword_1EB9956B8);
  v28 = *(v11 + 48);
  if (v28(v18, 1, v10) == 1)
  {
    if (v28(&v18[v25], 1, v10) == 1)
    {
      sub_1B7205418(v18, &qword_1EB9956B8);
      goto LABEL_15;
    }

LABEL_12:
    v29 = &qword_1EB995BD8;
    v30 = v18;
LABEL_13:
    sub_1B7205418(v30, v29);
    return 0;
  }

  sub_1B7205588(v18, v15, &qword_1EB9956B8);
  if (v28(&v18[v25], 1, v10) == 1)
  {
    sub_1B749F904(v15, type metadata accessor for RawBankConnectData.Institution.Icons);
    goto LABEL_12;
  }

  v31 = &v18[v25];
  v32 = v87;
  sub_1B74A32FC(v31, v87, type metadata accessor for RawBankConnectData.Institution.Icons);
  v33 = _s10FinanceKit18RawBankConnectDataO11InstitutionV5IconsV2eeoiySbAG_AGtFZ_0(v15, v32);
  sub_1B749F904(v32, type metadata accessor for RawBankConnectData.Institution.Icons);
  sub_1B749F904(v15, type metadata accessor for RawBankConnectData.Institution.Icons);
  sub_1B7205418(v18, &qword_1EB9956B8);
  if (!v33)
  {
    return 0;
  }

LABEL_15:
  v34 = v81;
  if ((sub_1B731D168(*(v23 + *(v81 + 28)), *(v27 + *(v81 + 28))) & 1) == 0)
  {
    return 0;
  }

  v35 = v34[8];
  v36 = *(v23 + v35);
  v37 = *(v27 + v35);
  if (v36)
  {
    v38 = 1146241352;
  }

  else
  {
    v38 = 1413893971;
  }

  if (v37)
  {
    v39 = 1146241352;
  }

  else
  {
    v39 = 1413893971;
  }

  if (v38 == v39)
  {
    swift_bridgeObjectRelease_n();
    v41 = v85;
    v40 = v86;
    v42 = v80;
  }

  else
  {
    v43 = sub_1B78020F8();
    swift_bridgeObjectRelease_n();
    v41 = v85;
    v40 = v86;
    v42 = v80;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  v44 = v34[9];
  v45 = *(v23 + v44);
  v46 = *(v88 + v44);
  if (v45)
  {
    if (!v46 || (sub_1B731D168(v45, v46) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v47 = v23 + v34[10];
  v48 = *(v47 + 9);
  v49 = *(v47 + 7);
  v119 = *(v47 + 8);
  v120 = v48;
  v121 = *(v47 + 80);
  v50 = *(v47 + 5);
  v51 = *(v47 + 3);
  v115 = *(v47 + 4);
  v116 = v50;
  v52 = *(v47 + 7);
  v53 = *(v47 + 5);
  v117 = *(v47 + 6);
  v118 = v52;
  v54 = *(v47 + 1);
  v112[0] = *v47;
  v112[1] = v54;
  v55 = *(v47 + 3);
  v113 = *(v47 + 2);
  v114 = v55;
  v105 = v115;
  v106 = v53;
  v103 = v113;
  v104 = v51;
  v111 = *(v47 + 80);
  v56 = *(v47 + 9);
  v109 = v119;
  v110 = v56;
  v107 = v117;
  v108 = v49;
  v101 = v112[0];
  v102 = v54;
  v57 = v88;
  v58 = v88 + v34[10];
  v59 = *(v58 + 7);
  v60 = *(v58 + 9);
  v129 = *(v58 + 8);
  v130 = v60;
  v61 = *(v58 + 3);
  v62 = *(v58 + 5);
  v125 = *(v58 + 4);
  v126 = v62;
  v63 = *(v58 + 5);
  v64 = *(v58 + 7);
  v127 = *(v58 + 6);
  v128 = v64;
  v65 = *(v58 + 1);
  v122[0] = *v58;
  v122[1] = v65;
  v66 = *(v58 + 3);
  v68 = *v58;
  v67 = *(v58 + 1);
  v123 = *(v58 + 2);
  v124 = v66;
  v69 = *(v58 + 9);
  v98 = v129;
  v99 = v69;
  v94 = v125;
  v95 = v63;
  v96 = v127;
  v97 = v59;
  v90 = v68;
  v91 = v67;
  v131 = *(v58 + 80);
  v100 = *(v58 + 80);
  v92 = v123;
  v93 = v61;
  sub_1B7493828(v112, v89);
  sub_1B7493828(v122, v89);
  v70 = _s10FinanceKit18RawBankConnectDataO11InstitutionV19ClientConfigurationV2eeoiySbAG_AGtFZ_0(&v101, &v90);
  v132[8] = v98;
  v132[9] = v99;
  v133 = v100;
  v132[4] = v94;
  v132[5] = v95;
  v132[6] = v96;
  v132[7] = v97;
  v132[0] = v90;
  v132[1] = v91;
  v132[2] = v92;
  v132[3] = v93;
  sub_1B7493900(v132);
  v134[8] = v109;
  v134[9] = v110;
  v135 = v111;
  v134[4] = v105;
  v134[5] = v106;
  v134[6] = v107;
  v134[7] = v108;
  v134[0] = v101;
  v134[1] = v102;
  v134[2] = v103;
  v134[3] = v104;
  sub_1B7493900(v134);
  if (!v70)
  {
    return 0;
  }

  v71 = v34[11];
  v72 = *(v23 + v71);
  v73 = *(v57 + v71);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      return 0;
    }
  }

  else if (v73 == 2 || ((v73 ^ v72) & 1) != 0)
  {
    return 0;
  }

  v74 = v34[12];
  v75 = *(v83 + 48);
  sub_1B7205588(v23 + v74, v42, &qword_1EB9925D8);
  sub_1B7205588(v88 + v74, v42 + v75, &qword_1EB9925D8);
  v76 = *(v84 + 48);
  if (v76(v42, 1, v41) == 1)
  {
    if (v76(v42 + v75, 1, v41) == 1)
    {
      sub_1B7205418(v42, &qword_1EB9925D8);
      return 1;
    }

    goto LABEL_41;
  }

  v77 = v82;
  sub_1B7205588(v42, v82, &qword_1EB9925D8);
  if (v76(v42 + v75, 1, v41) == 1)
  {
    sub_1B749F904(v77, type metadata accessor for RawBankConnectData.TermsAndConditions);
LABEL_41:
    v29 = &qword_1EB995BD0;
    v30 = v42;
    goto LABEL_13;
  }

  sub_1B74A32FC(v42 + v75, v40, type metadata accessor for RawBankConnectData.TermsAndConditions);
  v78 = _s10FinanceKit18RawBankConnectDataO18TermsAndConditionsV2eeoiySbAE_AEtFZ_0(v77, v40);
  sub_1B749F904(v40, type metadata accessor for RawBankConnectData.TermsAndConditions);
  sub_1B749F904(v77, type metadata accessor for RawBankConnectData.TermsAndConditions);
  sub_1B7205418(v42, &qword_1EB9925D8);
  return (v78 & 1) != 0;
}

unint64_t sub_1B749EE2C()
{
  result = qword_1EB9956C8;
  if (!qword_1EB9956C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9956C8);
  }

  return result;
}

unint64_t sub_1B749EE80()
{
  result = qword_1EB9956D8;
  if (!qword_1EB9956D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9956D8);
  }

  return result;
}

unint64_t sub_1B749EED4()
{
  result = qword_1EB9956E0;
  if (!qword_1EB9956E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9956E0);
  }

  return result;
}

uint64_t sub_1B749EF28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B749EF70()
{
  result = qword_1EB995700;
  if (!qword_1EB995700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995700);
  }

  return result;
}

unint64_t sub_1B749EFC4()
{
  result = qword_1EB995708;
  if (!qword_1EB995708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995708);
  }

  return result;
}

unint64_t sub_1B749F080()
{
  result = qword_1EB995720;
  if (!qword_1EB995720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995720);
  }

  return result;
}

unint64_t sub_1B749F0D4()
{
  result = qword_1EB995728;
  if (!qword_1EB995728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995728);
  }

  return result;
}

unint64_t sub_1B749F128()
{
  result = qword_1EB995738;
  if (!qword_1EB995738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995738);
  }

  return result;
}

unint64_t sub_1B749F1E4()
{
  result = qword_1EB995748;
  if (!qword_1EB995748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995748);
  }

  return result;
}

unint64_t sub_1B749F238()
{
  result = qword_1EB995758;
  if (!qword_1EB995758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995750);
    sub_1B749F0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995758);
  }

  return result;
}

unint64_t sub_1B749F2BC()
{
  result = qword_1EB995768;
  if (!qword_1EB995768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995750);
    sub_1B749F128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995768);
  }

  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO11InstitutionV5IconsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = *(v15 + 48);
  v40 = a1;
  sub_1B7205588(a1, &v36 - v16, &unk_1EB994C70);
  v41 = a2;
  sub_1B7205588(a2, &v17[v18], &unk_1EB994C70);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B7205588(v17, v11, &unk_1EB994C70);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v17[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1B749EF28(&qword_1EB990310, MEMORY[0x1E6968FB0]);
      v25 = sub_1B7800828();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_1B7205418(v17, &unk_1EB994C70);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_1B7205418(v20, &qword_1EB991C30);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_1B7205418(v17, &unk_1EB994C70);
LABEL_8:
  v27 = *(type metadata accessor for RawBankConnectData.Institution.Icons(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_1B7205588(v40 + v27, v39, &unk_1EB994C70);
  sub_1B7205588(v41 + v27, v29 + v28, &unk_1EB994C70);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_1B7205418(v29, &unk_1EB994C70);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_1B7205588(v29, v37, &unk_1EB994C70);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1B749EF28(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v34 = sub_1B7800828();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_1B7205418(v29, &unk_1EB994C70);
  return (v34 & 1) != 0;
}

unint64_t sub_1B749F8B0()
{
  result = qword_1EB995778;
  if (!qword_1EB995778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995778);
  }

  return result;
}

uint64_t sub_1B749F904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B749F964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B749F9CC()
{
  result = qword_1EB995790;
  if (!qword_1EB995790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995790);
  }

  return result;
}

unint64_t sub_1B749FA20()
{
  result = qword_1EB995798;
  if (!qword_1EB995798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995798);
  }

  return result;
}

unint64_t sub_1B749FA74()
{
  result = qword_1EB9957A0;
  if (!qword_1EB9957A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957A0);
  }

  return result;
}

unint64_t sub_1B749FAC8()
{
  result = qword_1EB9957A8;
  if (!qword_1EB9957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957A8);
  }

  return result;
}

unint64_t sub_1B749FB1C()
{
  result = qword_1EB9957B8;
  if (!qword_1EB9957B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957B0);
    sub_1B749FBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957B8);
  }

  return result;
}

unint64_t sub_1B749FBA0()
{
  result = qword_1EB9957C0;
  if (!qword_1EB9957C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957C0);
  }

  return result;
}

unint64_t sub_1B749FBF4()
{
  result = qword_1EB9957C8;
  if (!qword_1EB9957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957C8);
  }

  return result;
}

unint64_t sub_1B749FC48()
{
  result = qword_1EB9957D8;
  if (!qword_1EB9957D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957D0);
    sub_1B749FCCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957D8);
  }

  return result;
}

unint64_t sub_1B749FCCC()
{
  result = qword_1EB9957E0;
  if (!qword_1EB9957E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957E0);
  }

  return result;
}

unint64_t sub_1B749FD20()
{
  result = qword_1EB9957F0;
  if (!qword_1EB9957F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957E8);
    sub_1B749FDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957F0);
  }

  return result;
}

unint64_t sub_1B749FDA4()
{
  result = qword_1EB9957F8;
  if (!qword_1EB9957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9957F8);
  }

  return result;
}

unint64_t sub_1B749FDF8()
{
  result = qword_1EB995800;
  if (!qword_1EB995800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995800);
  }

  return result;
}

unint64_t sub_1B749FE4C()
{
  result = qword_1EB995810;
  if (!qword_1EB995810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995810);
  }

  return result;
}

unint64_t sub_1B749FEA0()
{
  result = qword_1EB995818;
  if (!qword_1EB995818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995818);
  }

  return result;
}

unint64_t sub_1B749FEF4()
{
  result = qword_1EB995820;
  if (!qword_1EB995820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995820);
  }

  return result;
}

unint64_t sub_1B749FF48()
{
  result = qword_1EB995828;
  if (!qword_1EB995828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957B0);
    sub_1B749FFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995828);
  }

  return result;
}

unint64_t sub_1B749FFCC()
{
  result = qword_1EB995830;
  if (!qword_1EB995830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995830);
  }

  return result;
}

unint64_t sub_1B74A0020()
{
  result = qword_1EB995838;
  if (!qword_1EB995838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995838);
  }

  return result;
}

unint64_t sub_1B74A0074()
{
  result = qword_1EB995840;
  if (!qword_1EB995840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957D0);
    sub_1B74A00F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995840);
  }

  return result;
}

unint64_t sub_1B74A00F8()
{
  result = qword_1EB995848;
  if (!qword_1EB995848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995848);
  }

  return result;
}

unint64_t sub_1B74A014C()
{
  result = qword_1EB995850;
  if (!qword_1EB995850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957E8);
    sub_1B74A01D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995850);
  }

  return result;
}

unint64_t sub_1B74A01D0()
{
  result = qword_1EB995858;
  if (!qword_1EB995858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995858);
  }

  return result;
}

unint64_t sub_1B74A0224()
{
  result = qword_1EB995860;
  if (!qword_1EB995860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995860);
  }

  return result;
}

unint64_t sub_1B74A0278()
{
  result = qword_1EB995870;
  if (!qword_1EB995870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995870);
  }

  return result;
}

unint64_t sub_1B74A02CC()
{
  result = qword_1EB995888;
  if (!qword_1EB995888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995888);
  }

  return result;
}

unint64_t sub_1B74A0320()
{
  result = qword_1EB9958A0;
  if (!qword_1EB9958A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9958A0);
  }

  return result;
}

unint64_t sub_1B74A0374()
{
  result = qword_1EB9958B8;
  if (!qword_1EB9958B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9958B8);
  }

  return result;
}

unint64_t sub_1B74A03C8()
{
  result = qword_1EB9958D0;
  if (!qword_1EB9958D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9958D0);
  }

  return result;
}

unint64_t sub_1B74A041C()
{
  result = qword_1EB9958E8;
  if (!qword_1EB9958E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9958E8);
  }

  return result;
}

uint64_t sub_1B74A0470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Institution(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B74A04F4()
{
  result = qword_1EB995900;
  if (!qword_1EB995900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995900);
  }

  return result;
}

unint64_t sub_1B74A0548()
{
  result = qword_1EB995910;
  if (!qword_1EB995910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995910);
  }

  return result;
}

unint64_t sub_1B74A059C()
{
  result = qword_1EB995920;
  if (!qword_1EB995920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995920);
  }

  return result;
}

unint64_t sub_1B74A0610()
{
  result = qword_1EB995930;
  if (!qword_1EB995930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995930);
  }

  return result;
}

uint64_t sub_1B74A0664(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9951B8);
    sub_1B749EF28(a2, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74A0700()
{
  result = qword_1EB995958;
  if (!qword_1EB995958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995958);
  }

  return result;
}

uint64_t sub_1B74A0754(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995960);
    sub_1B749EF28(a2, type metadata accessor for RawBankConnectData.Institution);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74A07F0()
{
  result = qword_1EB995988;
  if (!qword_1EB995988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995988);
  }

  return result;
}

unint64_t sub_1B74A0848()
{
  result = qword_1EB995998;
  if (!qword_1EB995998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995998);
  }

  return result;
}

unint64_t sub_1B74A08A0()
{
  result = qword_1EB9959A0;
  if (!qword_1EB9959A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9959A0);
  }

  return result;
}

unint64_t sub_1B74A08F8()
{
  result = qword_1EB9959A8;
  if (!qword_1EB9959A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9959A8);
  }

  return result;
}

unint64_t sub_1B74A0980()
{
  result = qword_1EB9959C0;
  if (!qword_1EB9959C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9959C0);
  }

  return result;
}

unint64_t sub_1B74A0A08()
{
  result = qword_1EB9959D0;
  if (!qword_1EB9959D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9959D0);
  }

  return result;
}

unint64_t sub_1B74A0A90()
{
  result = qword_1EB9959E0;
  if (!qword_1EB9959E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9959E0);
  }

  return result;
}

void sub_1B74A0B0C()
{
  sub_1B74A0CA0(319, &qword_1EB9959F8, type metadata accessor for RawBankConnectData.Institution.Icons, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B742CDCC(319, &qword_1EDAFA080, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B727FFC4();
      if (v2 <= 0x3F)
      {
        sub_1B742CDCC(319, &qword_1EDAFC578, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B74A0CA0(319, &qword_1EB995A00, type metadata accessor for RawBankConnectData.TermsAndConditions, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B74A0CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B74A0D4C()
{
  sub_1B74A0CA0(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B74A0E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B74A0E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B74A0F08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B74A0F28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1B74A0FB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B74A0FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B74A1094()
{
  result = type metadata accessor for RawBankConnectData.Institution(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B74A1130()
{
  sub_1B74A0CA0(319, &qword_1EB995A38, type metadata accessor for RawBankConnectData.InstitutionForPassResponse, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B74A0CA0(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B74A124C()
{
  sub_1B74A0CA0(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B74A13EC()
{
  result = qword_1EB995A50;
  if (!qword_1EB995A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A50);
  }

  return result;
}

unint64_t sub_1B74A1444()
{
  result = qword_1EB995A58;
  if (!qword_1EB995A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A58);
  }

  return result;
}

unint64_t sub_1B74A149C()
{
  result = qword_1EB995A60;
  if (!qword_1EB995A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A60);
  }

  return result;
}

unint64_t sub_1B74A14F4()
{
  result = qword_1EB995A68;
  if (!qword_1EB995A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A68);
  }

  return result;
}

unint64_t sub_1B74A154C()
{
  result = qword_1EB995A70;
  if (!qword_1EB995A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A70);
  }

  return result;
}

unint64_t sub_1B74A15A4()
{
  result = qword_1EB995A78;
  if (!qword_1EB995A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A78);
  }

  return result;
}

unint64_t sub_1B74A15FC()
{
  result = qword_1EB995A80;
  if (!qword_1EB995A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A80);
  }

  return result;
}

unint64_t sub_1B74A1654()
{
  result = qword_1EB995A88;
  if (!qword_1EB995A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A88);
  }

  return result;
}

unint64_t sub_1B74A16AC()
{
  result = qword_1EB995A90;
  if (!qword_1EB995A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A90);
  }

  return result;
}

unint64_t sub_1B74A1704()
{
  result = qword_1EB995A98;
  if (!qword_1EB995A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995A98);
  }

  return result;
}

unint64_t sub_1B74A175C()
{
  result = qword_1EB995AA0;
  if (!qword_1EB995AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AA0);
  }

  return result;
}

unint64_t sub_1B74A17B4()
{
  result = qword_1EB995AA8;
  if (!qword_1EB995AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AA8);
  }

  return result;
}

unint64_t sub_1B74A180C()
{
  result = qword_1EB995AB0;
  if (!qword_1EB995AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AB0);
  }

  return result;
}

unint64_t sub_1B74A1864()
{
  result = qword_1EB995AB8;
  if (!qword_1EB995AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AB8);
  }

  return result;
}

unint64_t sub_1B74A18BC()
{
  result = qword_1EB995AC0;
  if (!qword_1EB995AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AC0);
  }

  return result;
}

unint64_t sub_1B74A1914()
{
  result = qword_1EB995AC8;
  if (!qword_1EB995AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AC8);
  }

  return result;
}

unint64_t sub_1B74A196C()
{
  result = qword_1EB995AD0;
  if (!qword_1EB995AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AD0);
  }

  return result;
}

unint64_t sub_1B74A19C4()
{
  result = qword_1EB995AD8;
  if (!qword_1EB995AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AD8);
  }

  return result;
}

unint64_t sub_1B74A1A1C()
{
  result = qword_1EB995AE0;
  if (!qword_1EB995AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AE0);
  }

  return result;
}

unint64_t sub_1B74A1A74()
{
  result = qword_1EB995AE8;
  if (!qword_1EB995AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AE8);
  }

  return result;
}

unint64_t sub_1B74A1ACC()
{
  result = qword_1EB995AF0;
  if (!qword_1EB995AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AF0);
  }

  return result;
}

unint64_t sub_1B74A1B24()
{
  result = qword_1EB995AF8;
  if (!qword_1EB995AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995AF8);
  }

  return result;
}

unint64_t sub_1B74A1B7C()
{
  result = qword_1EB995B00;
  if (!qword_1EB995B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B00);
  }

  return result;
}

unint64_t sub_1B74A1BD4()
{
  result = qword_1EB995B08;
  if (!qword_1EB995B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B08);
  }

  return result;
}

unint64_t sub_1B74A1C2C()
{
  result = qword_1EB995B10;
  if (!qword_1EB995B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B10);
  }

  return result;
}

unint64_t sub_1B74A1C84()
{
  result = qword_1EB995B18;
  if (!qword_1EB995B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B18);
  }

  return result;
}

unint64_t sub_1B74A1CDC()
{
  result = qword_1EB995B20;
  if (!qword_1EB995B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B20);
  }

  return result;
}

unint64_t sub_1B74A1D34()
{
  result = qword_1EB995B28;
  if (!qword_1EB995B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B28);
  }

  return result;
}

unint64_t sub_1B74A1D8C()
{
  result = qword_1EB995B30;
  if (!qword_1EB995B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B30);
  }

  return result;
}

unint64_t sub_1B74A1DE4()
{
  result = qword_1EB995B38;
  if (!qword_1EB995B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B38);
  }

  return result;
}

unint64_t sub_1B74A1E3C()
{
  result = qword_1EB995B40;
  if (!qword_1EB995B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B40);
  }

  return result;
}

unint64_t sub_1B74A1E94()
{
  result = qword_1EB995B48;
  if (!qword_1EB995B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B48);
  }

  return result;
}

unint64_t sub_1B74A1EEC()
{
  result = qword_1EB995B50;
  if (!qword_1EB995B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B50);
  }

  return result;
}

unint64_t sub_1B74A1F44()
{
  result = qword_1EB995B58;
  if (!qword_1EB995B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B58);
  }

  return result;
}

unint64_t sub_1B74A1F9C()
{
  result = qword_1EB995B60;
  if (!qword_1EB995B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B60);
  }

  return result;
}

unint64_t sub_1B74A1FF4()
{
  result = qword_1EB995B68;
  if (!qword_1EB995B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B68);
  }

  return result;
}

unint64_t sub_1B74A204C()
{
  result = qword_1EB995B70;
  if (!qword_1EB995B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B70);
  }

  return result;
}

unint64_t sub_1B74A20A4()
{
  result = qword_1EB995B78;
  if (!qword_1EB995B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B78);
  }

  return result;
}

unint64_t sub_1B74A20FC()
{
  result = qword_1EB995B80;
  if (!qword_1EB995B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B80);
  }

  return result;
}

unint64_t sub_1B74A2154()
{
  result = qword_1EB995B88;
  if (!qword_1EB995B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B88);
  }

  return result;
}

unint64_t sub_1B74A21AC()
{
  result = qword_1EB995B90;
  if (!qword_1EB995B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B90);
  }

  return result;
}

unint64_t sub_1B74A2204()
{
  result = qword_1EB995B98;
  if (!qword_1EB995B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995B98);
  }

  return result;
}

unint64_t sub_1B74A225C()
{
  result = qword_1EB995BA0;
  if (!qword_1EB995BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BA0);
  }

  return result;
}

unint64_t sub_1B74A22B4()
{
  result = qword_1EB995BA8;
  if (!qword_1EB995BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BA8);
  }

  return result;
}

unint64_t sub_1B74A230C()
{
  result = qword_1EB995BB0;
  if (!qword_1EB995BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BB0);
  }

  return result;
}

uint64_t sub_1B74A2360(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6369 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEC0000007365646FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65736E6F636572 && a2 == 0xED00006570795474 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B7880F20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880F40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62616B6E696CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A5B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B74A264C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001B78801E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEC0000007365646FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936941424 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

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

uint64_t sub_1B74A2774(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001B78801E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEC0000007365646FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736573736170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

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

uint64_t sub_1B74A2898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001B7880F60 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880F80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7880FA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A4A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7880FC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B787A590 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787A5D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B787A5F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7880FE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B787A7D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7881000 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B7881020 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787A650 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4C79636176697270 && a2 == 0xED0000736C656261 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7881040 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787A690 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1B74A2DB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000026 && 0x80000001B7881060 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A440 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B787A460 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B74A2ED0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B78810B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78810D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B78810F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

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

uint64_t sub_1B74A2FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000020 && 0x80000001B7874A60 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B7881110 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7881130 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7881150 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E656D796170 && a2 == 0xEB00000000657079 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1B74A3200()
{
  result = qword_1EB995BB8;
  if (!qword_1EB995BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BB8);
  }

  return result;
}

unint64_t sub_1B74A3254()
{
  result = qword_1EB995BC0;
  if (!qword_1EB995BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BC0);
  }

  return result;
}

unint64_t sub_1B74A32A8()
{
  result = qword_1EB995BC8;
  if (!qword_1EB995BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BC8);
  }

  return result;
}

uint64_t sub_1B74A32FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t createOrderImageSourceWithData(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v75[2] = a1;
  v75[3] = a2;
  v3 = sub_1B77FFF98();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v75 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v75 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  inited = swift_initStackObject();
  v80 = xmmword_1B780D870;
  *(inited + 16) = xmmword_1B780D870;
  sub_1B77FFF58();
  v14 = sub_1B77FFF28();
  v16 = v15;
  v17 = *(v4 + 8);
  v17(v12, v3);
  *(inited + 32) = v14;
  v79 = inited + 32;
  *(inited + 40) = v16;
  sub_1B77FFF78();
  v18 = sub_1B77FFF28();
  v20 = v19;
  v17(v10, v3);
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  sub_1B77FFF68();
  v21 = sub_1B77FFF28();
  v23 = v22;
  v17(v7, v3);
  v24 = 0;
  *(inited + 64) = v21;
  *(inited + 72) = v23;
  v75[1] = inited;
  v78 = *MEMORY[0x1E696E0E8];
  v77 = *MEMORY[0x1E696E118];
  v76 = *MEMORY[0x1E696E040];
  v25 = v84 + 64;
LABEL_4:
  v26 = (v79 + 16 * v24);
  v27 = *v26;
  v28 = v26[1];
  v82 = v24 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  v29 = swift_initStackObject();
  *(v29 + 16) = v80;
  v31 = v77;
  v30 = v78;
  *(v29 + 32) = v78;
  *(v29 + 40) = 1;
  v32 = MEMORY[0x1E69E6370];
  *(v29 + 64) = MEMORY[0x1E69E6370];
  *(v29 + 72) = v31;
  v81 = v27;
  *(v29 + 80) = v27;
  *(v29 + 88) = v28;
  v33 = v76;
  *(v29 + 104) = MEMORY[0x1E69E6158];
  *(v29 + 112) = v33;
  *(v29 + 144) = v32;
  *(v29 + 120) = 1;
  v83 = v28;
  swift_bridgeObjectRetain_n();
  v34 = v30;
  v35 = v31;
  v36 = v33;
  v37 = sub_1B7202C00(v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
  swift_arrayDestroy();
  v38 = v84;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v37;
  v40 = 1 << *(v38 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;

  for (i = 0; v42; isUniquelyReferenced_nonNull_native = 1)
  {
    while (1)
    {
      v46 = i;
LABEL_19:
      v49 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v50 = v49 | (v46 << 6);
      v51 = *(*(v84 + 48) + 8 * v50);
      sub_1B719BDE4(*(v84 + 56) + 32 * v50, v85);
      *&v87 = v51;
      sub_1B72051F0(v85, (&v87 + 8));
      v52 = v51;
LABEL_20:
      v85[0] = v87;
      v85[1] = v88;
      v86 = v89;
      v53 = v87;
      if (!v87)
      {
        memset(v90, 0, sizeof(v90));
LABEL_36:

        v67 = sub_1B77FF598();
        type metadata accessor for CFString(0);
        sub_1B72CE5E4();
        v68 = sub_1B7800708();

        v37 = CGImageSourceCreateWithData(v67, v68);

        if (v37)
        {
          Status = CGImageSourceGetStatus(v37);
          v70 = v83;
          if (Status == kCGImageStatusInvalidData)
          {

            goto LABEL_2;
          }

          v71 = CGImageSourceGetType(v37);
          if (v71)
          {
            v57 = v71;
            if (sub_1B7800868() == v81 && v72 == v70)
            {
              goto LABEL_49;
            }

            v73 = sub_1B78020F8();

            if (v73)
            {

              return v37;
            }
          }

          else
          {
          }
        }

        else
        {
LABEL_2:
        }

        v24 = v82;
        if (v82 == 3)
        {
          goto LABEL_46;
        }

        goto LABEL_4;
      }

      sub_1B719BDE4(v85 + 8, &v90[1]);
      v90[0] = v53;
      v54 = v53;
      sub_1B74A3A18(v85);
      v55 = v90[0];
      if (!v90[0])
      {
        goto LABEL_36;
      }

      sub_1B72051F0(&v90[1], &v87);
      v57 = sub_1B72635A0(v55);
      v58 = *(v37 + 2);
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        __break(1u);
LABEL_49:

        return v37;
      }

      v61 = v56;
      if (*(v37 + 3) < v60)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v91;
        if ((v56 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1B725C190();
        v37 = v91;
        if ((v61 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_9:

      v45 = (*(v37 + 7) + 32 * v57);
      __swift_destroy_boxed_opaque_existential_1(v45);
      sub_1B72051F0(&v87, v45);
      isUniquelyReferenced_nonNull_native = 1;
      if (!v42)
      {
        goto LABEL_11;
      }
    }

    sub_1B7248670(v60, isUniquelyReferenced_nonNull_native & 1);
    v62 = sub_1B72635A0(v55);
    if ((v61 & 1) != (v63 & 1))
    {
      goto LABEL_52;
    }

    v57 = v62;
    v37 = v91;
    if (v61)
    {
      goto LABEL_9;
    }

LABEL_29:
    *(v37 + (v57 >> 6) + 8) |= 1 << v57;
    *(*(v37 + 6) + 8 * v57) = v55;
    sub_1B72051F0(&v87, (*(v37 + 7) + 32 * v57));
    v64 = *(v37 + 2);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      __break(1u);
LABEL_52:
      type metadata accessor for CFString(0);
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }

    *(v37 + 2) = v66;
  }

LABEL_11:
  if (v43 <= i + 1)
  {
    v47 = i + 1;
  }

  else
  {
    v47 = v43;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      v42 = 0;
      v89 = 0;
      i = v48;
      v87 = 0u;
      v88 = 0u;
      goto LABEL_20;
    }

    v42 = *(v25 + 8 * v46);
    ++i;
    if (v42)
    {
      i = v46;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_46:

  return 0;
}

uint64_t sub_1B74A3A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B74A3A80(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t ContentPackageManifest.hashesByFileName.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ContentPackageManifest.canonicalHash.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v36[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1B78006D8();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = *v1;
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B78006C8();
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = sub_1B7247110(*(v4 + 16), 0);
    v34 = sub_1B7261DA0(v36, v7 + 4, v5, v4);

    sub_1B71B7B58();
    if (v34 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = v6;
LABEL_5:
  v36[0] = v7;
  sub_1B74A4314(v36);
  v8 = v36[0];
  v9 = v36[0][2];
  if (!v9)
  {

    v10 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v36[0] = v6;
  sub_1B71FDB50(0, v9, 0);
  v10 = v36[0];
  v11 = v8 + 7;
  do
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    v36[0] = v10;
    v15 = v10[2];
    v14 = v10[3];

    if (v15 >= v14 >> 1)
    {
      sub_1B71FDB50((v14 > 1), v15 + 1, 1);
      v10 = v36[0];
    }

    v10[2] = v15 + 1;
    v16 = &v10[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v11 += 4;
    --v9;
  }

  while (v9);

  v17 = v10[2];
  if (v17)
  {
LABEL_13:
    v18 = 0;
    v19 = v10 + 5;
    v34 = v2;
    while (1)
    {
      if (v18 >= v10[2])
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      v20 = *(v19 - 1);
      v21 = *v19;

      v22 = sub_1B740456C(v20, v21);
      v24 = v22;
      v25 = v23;
      v26 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        break;
      }

      if (v26)
      {
        if (v22 >> 32 < v22)
        {
          goto LABEL_31;
        }

        if (sub_1B77FEB78() && __OFSUB__(v24, sub_1B77FEBA8()))
        {
          goto LABEL_34;
        }

LABEL_27:
        sub_1B77FEB98();
        sub_1B73FBD74();
        v2 = v34;
        goto LABEL_15;
      }

      v36[0] = v22;
      LOWORD(v36[1]) = v23;
      BYTE2(v36[1]) = BYTE2(v23);
      BYTE3(v36[1]) = BYTE3(v23);
      BYTE4(v36[1]) = BYTE4(v23);
      BYTE5(v36[1]) = BYTE5(v23);
      sub_1B73FBD74();
LABEL_15:
      sub_1B7800438();
      sub_1B720A388(v24, v25);
      ++v18;
      v19 += 2;
      if (v17 == v18)
      {
        goto LABEL_29;
      }
    }

    if (v26 != 2)
    {
      sub_1B73FBD74();
      memset(v36, 0, 14);
      goto LABEL_15;
    }

    v27 = *(v22 + 16);
    v28 = *(v22 + 24);
    if (sub_1B77FEB78() && __OFSUB__(v27, sub_1B77FEBA8()))
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v28, v27))
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_29:

  v29 = v35;
  sub_1B78006B8();
  return (*(v32 + 8))(v29, v2);
}

uint64_t sub_1B74A3FE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B74A3FF4(uint64_t a1)
{
  v2 = sub_1B74A4F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A4030(uint64_t a1)
{
  v2 = sub_1B74A4F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentPackageManifest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995BE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74A4F44();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E98();
    v10 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v14[-2] = v8;
    v12 = sub_1B74A3A80(v11, sub_1B74A4F98, &v14[-4], v9);

    (*(v6 + 8))(v8, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B74A4220(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995BE8);
  v6 = sub_1B7801DF8();
  if (v2)
  {
  }

  v9 = v6;
  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_1B739351C(v9, v10, v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v12;
  return result;
}

uint64_t sub_1B74A4314(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B77E4CE0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1B74A4380(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B74A4380(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B7802038();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F430);
        v5 = sub_1B7800C78();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B74A4558(v7, v8, a1, v4);
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
    return sub_1B74A4488(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B74A4488(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1B78020F8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B74A4558(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1B77E4CA4(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1B74A4B3C((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_1B78020F8();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B78020F8();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B723E420(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1B723E420((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_1B74A4B3C((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B77E4CA4(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1B77E4C18(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_1B78020F8(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1B74A4B3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
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

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_1B78020F8() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1B74A4D64(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1B74A4E9C(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1B74A4E9C(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1B74A4E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1B77FEB78();
  v7 = result;
  if (result)
  {
    result = sub_1B77FEBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B77FEB98();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t sub_1B74A4F44()
{
  result = qword_1EB995BF0;
  if (!qword_1EB995BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BF0);
  }

  return result;
}

unint64_t sub_1B74A4FD8()
{
  result = qword_1EB995BF8;
  if (!qword_1EB995BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995BF8);
  }

  return result;
}

unint64_t sub_1B74A5030()
{
  result = qword_1EB995C00;
  if (!qword_1EB995C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C00);
  }

  return result;
}

uint64_t FinanceStore.addExtractedOrderUserEvent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = *(a1 + 64);
  LOBYTE(v5) = v16;
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v9 = v13[0];
  v13[1] = v8;
  *(v6 + 2) = v14;
  *(v6 + 3) = v7;
  v6[64] = v5;
  *v6 = v9;
  *(v6 + 1) = v8;
  swift_storeEnumTagMultiPayload();
  sub_1B73CFC3C(v13, v12);
  sub_1B73B70EC(v6, a2);
  return sub_1B72A820C(v6);
}

uint64_t FinanceStore.queryExtractedOrderUserEvents(limit:eventType:startDate:emailMessageIDHash:otherEmailMessageIDHash:sanitizedOrderNumber:sender:)(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a7;
  v41 = a8;
  v33 = a2;
  v32 = a1;
  v38 = a5;
  v39 = a12;
  v37 = a11;
  v35 = a4;
  v36 = a10;
  v34 = a9;
  v15 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = a3[1];
  v42 = *(v12 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C08);
  v21 = v20[16];
  v22 = &v17[v20[20]];
  v23 = &v17[v20[24]];
  v24 = &v17[v20[28]];
  v25 = &v17[v20[32]];
  *v17 = v32;
  v17[8] = v33 & 1;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  sub_1B7280900(v35, &v17[v21]);
  *v22 = v38;
  *(v22 + 1) = a6;
  v26 = v41;
  *v23 = v40;
  *(v23 + 1) = v26;
  v27 = v36;
  *v24 = v34;
  *(v24 + 1) = v27;
  v28 = v39;
  *v25 = v37;
  *(v25 + 1) = v28;
  swift_storeEnumTagMultiPayload();
  sub_1B74A5328(v18, v19);

  v29 = sub_1B73B78FC(v17);
  sub_1B72A820C(v17);
  return v29;
}

uint64_t sub_1B74A5328(uint64_t a1, unint64_t a2)
{
  if (a2 != 19)
  {
    return sub_1B73D0004(a1, a2);
  }

  return a1;
}

uint64_t FinanceStore.deleteExtractedOrderUserEvent(withID:)(uint64_t a1)
{
  v2 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFA18();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1B72C9D94(v4);
  return sub_1B72A820C(v4);
}

uint64_t FinanceStore.deeplinkForExtractedOrderBanner(withMessageID:orderNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  swift_storeEnumTagMultiPayload();

  sub_1B73B8020(v12, a5);
  return sub_1B72A820C(v12);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.trackExtractedOrder(withMessageID:orderNumber:)(Swift::String withMessageID, Swift::String orderNumber)
{
  object = orderNumber._object;
  countAndFlagsBits = orderNumber._countAndFlagsBits;
  v4 = withMessageID._object;
  v5 = withMessageID._countAndFlagsBits;
  v6 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = v5;
  v8[1] = v4;
  v8[2] = countAndFlagsBits;
  v8[3] = object;
  swift_storeEnumTagMultiPayload();

  sub_1B75FCDE0(v8);
  sub_1B72A820C(v8);
}

uint64_t FinanceStore.setIsAutomaticOrderIngestionEnabled(newValue:modificationDate:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C10) + 48);
  *v6 = a1;
  v8 = sub_1B77FF988();
  (*(*(v8 - 8) + 16))(&v6[v7], a2, v8);
  swift_storeEnumTagMultiPayload();
  sub_1B75FCDE0(v6);
  return sub_1B72A820C(v6);
}

uint64_t FinanceStore.allSendersPresentInTheMerchantAllowList()()
{
  v0 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v3 = sub_1B73B8840(v2);
  sub_1B72A820C(v2);
  return v3;
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.isSenderAllowListed(sender:)(Swift::String sender)
{
  object = sender._object;
  countAndFlagsBits = sender._countAndFlagsBits;
  v3 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = countAndFlagsBits;
  v5[1] = object;
  swift_storeEnumTagMultiPayload();

  v6.value = sub_1B73B8F64(v5);
  sub_1B72A820C(v5);
  return v6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.deleteExtractedOrder(withTrackedOrderIdentifier:blockMerchant:)(Swift::String withTrackedOrderIdentifier, Swift::Bool blockMerchant)
{
  object = withTrackedOrderIdentifier._object;
  countAndFlagsBits = withTrackedOrderIdentifier._countAndFlagsBits;
  v5 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = countAndFlagsBits;
  *(v7 + 1) = object;
  v7[16] = blockMerchant;
  swift_storeEnumTagMultiPayload();

  sub_1B72C9D94(v7);
  sub_1B72A820C(v7);
}

uint64_t sub_1B74A59A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C18) + 64);
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = a3;
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 16))(&v10[v11], a4, v12);
  swift_storeEnumTagMultiPayload();

  sub_1B72C9D94(v10);
  return sub_1B72A820C(v10);
}

uint64_t sub_1B74A5B14(uint64_t a1, uint64_t (*a2)(char *))
{
  v3 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = a2(v5);
  sub_1B72A820C(v5);
  return a2 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.setAutomaticIngestionConsentPresented(_:)(Swift::Bool_optional a1)
{
  v2 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4->value = a1.value;
  swift_storeEnumTagMultiPayload();
  sub_1B72C9D94(v4);
  sub_1B72A820C(v4);
}

uint64_t FinanceStore.resetAutomicIngestionConsent()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message();
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74A5D14, 0, 0);
}

uint64_t sub_1B74A5D14()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B74A5DD0;
  v2 = *(v0 + 32);

  return sub_1B7267E08(v2);
}

uint64_t sub_1B74A5DD0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7228988, 0, 0);
}

uint64_t FinanceStore.extractedOrderConfiguration(forEmail:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for FinanceStore.Message();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74A5FCC, 0, 0);
}

uint64_t sub_1B74A5FCC()
{
  v1 = v0[7];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B74A60A8;
  v4 = v0[7];
  v5 = v0[2];

  return sub_1B7273404(v5, v4);
}

uint64_t sub_1B74A60A8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7293DC8, 0, 0);
}

uint64_t FinanceStore.extractedOrderConfiguration(forDomain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for FinanceStore.Message();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74A62A4, 0, 0);
}

uint64_t sub_1B74A62A4()
{
  v1 = v0[7];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B74A6380;
  v4 = v0[7];
  v5 = v0[2];

  return sub_1B7273404(v5, v4);
}

uint64_t sub_1B74A6380()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7294FC8, 0, 0);
}

uint64_t FinanceStore.extractedOrdersSupported(locale:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for FinanceStore.Message();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74A6578, 0, 0);
}

uint64_t sub_1B74A6578()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1B77FFAF8();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B74A6684;
  v5 = v0[5];

  return sub_1B7273C88(v5);
}

uint64_t sub_1B74A6684()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v2 + 40);
  if (!v0)
  {
    sub_1B72A820C(v4);

    v5 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1B72A820C(v4);

  return MEMORY[0x1EEE6DFA0](sub_1B74A680C, 0, 0);
}

uint64_t sub_1B74A680C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

Swift::Bool __swiftcall FinanceStore.canShowExtractedOrderWelcomeScreen()()
{
  v0 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B72A8E98(v2);
  v4 = v3;
  sub_1B72A820C(v2);
  return v4 & 1;
}

uint64_t FinanceStore.extractedOrderFoundInBanners(withMessageID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for FinanceStore.Message();
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74A69C8, 0, 0);
}

uint64_t sub_1B74A69C8()
{
  v1 = v0[6];
  v2 = v0[3];
  *v1 = v0[2];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B74A6AA0;
  v4 = v0[6];

  return sub_1B7274440(v4);
}

uint64_t sub_1B74A6AA0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  sub_1B72A820C(*(v2 + 48));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268988, 0, 0);
}

uint64_t sub_1B74A6C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B74A6CFC(uint64_t a1)
{
  v2 = sub_1B74B07FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A6D38(uint64_t a1)
{
  v2 = sub_1B74B07FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74A6D74(uint64_t a1)
{
  v2 = sub_1B74B08A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A6DB0(uint64_t a1)
{
  v2 = sub_1B74B08A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74A6DEC()
{
  v1 = 0x6574636172747865;
  if (*v0 != 1)
  {
    v1 = 0x4F65646163736163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4F63697373616C63;
  }
}

uint64_t sub_1B74A6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74B0F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74A6E80(uint64_t a1)
{
  v2 = sub_1B74B07A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A6EBC(uint64_t a1)
{
  v2 = sub_1B74B07A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74A6F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B7877900 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B74A6FA8(uint64_t a1)
{
  v2 = sub_1B74B0850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A6FE4(uint64_t a1)
{
  v2 = sub_1B74B0850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderFoundInMailBanner.UniqueIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C20);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C28);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C30);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C38);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = v1[3];
  v30 = v1[2];
  v31 = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74B07A8();
  sub_1B78023F8();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v36) = 1;
      sub_1B74B0850();
      v17 = v35;
      sub_1B7801ED8();
      v18 = v26;
      sub_1B7801F78();
      v19 = *(v25 + 8);
      v20 = v7;
LABEL_8:
      v19(v20, v18);
      return (*(v34 + 8))(v13, v17);
    }

    LOBYTE(v36) = 2;
    sub_1B74B07FC();
    v21 = v27;
    v17 = v35;
    sub_1B7801ED8();
    LOBYTE(v36) = 0;
    v18 = v29;
    v22 = v40;
    sub_1B7801F78();
    if (!v22)
    {
      LOBYTE(v36) = 1;
      sub_1B7801F78();
      v19 = *(v28 + 8);
      v20 = v21;
      goto LABEL_8;
    }

    (*(v28 + 8))(v21, v18);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1B74B08A4();
    v17 = v35;
    sub_1B7801ED8();
    v36 = v32;
    v37 = v33;
    v38 = v30;
    v39 = v31;
    sub_1B731BB9C();
    sub_1B7801FC8();
    (*(v24 + 8))(v10, v8);
  }

  return (*(v34 + 8))(v13, v17);
}

uint64_t ExtractedOrderFoundInMailBanner.UniqueIdentifier.hash(into:)()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_7;
    }

    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x1B8CA6620](v1);
  sub_1B7800798();
LABEL_7:

  return sub_1B7800798();
}

uint64_t ExtractedOrderFoundInMailBanner.UniqueIdentifier.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1B8CA6620](v2);
    sub_1B7800798();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B8CA6620](1);
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t ExtractedOrderFoundInMailBanner.UniqueIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C60);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v43[-v3];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C68);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v43[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C70);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43[-v11];
  v13 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B74B07A8();
  v14 = v53;
  sub_1B78023C8();
  if (!v14)
  {
    v45 = v6;
    v16 = v50;
    v15 = v51;
    v53 = v10;
    v17 = v52;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v58 = v18;
    v59 = v18 + 32;
    v60 = 0;
    v61 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v60 != v61 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for ExtractedOrderFoundInMailBanner.UniqueIdentifier;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v53 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v20;
      if (v20)
      {
        v47 = v9;
        if (v20 == 1)
        {
          v21 = v17;
          LOBYTE(v54) = 1;
          sub_1B74B0850();
          sub_1B7801D38();
          v30 = sub_1B7801DF8();
          v31 = v53;
          v32 = v30;
          v34 = v33;
          (*(v48 + 8))(v5, v16);
          (*(v31 + 8))(v12, v47);
          swift_unknownObjectRelease();
          v35 = v34;
          v36 = 0;
          v37 = 0;
        }

        else
        {
          LOBYTE(v54) = 2;
          sub_1B74B07FC();
          v27 = v15;
          sub_1B7801D38();
          LOBYTE(v54) = 0;
          v28 = v46;
          v29 = sub_1B7801DF8();
          v50 = v38;
          v48 = v29;
          LOBYTE(v54) = 1;
          v39 = sub_1B7801DF8();
          v40 = v28;
          v41 = (v53 + 8);
          v36 = v39;
          v37 = v42;
          (*(v49 + 8))(v27, v40);
          (*v41)(v12, v47);
          swift_unknownObjectRelease();
          v32 = v48;
          v21 = v17;
          v35 = v50;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_1B74B08A4();
        sub_1B7801D38();
        sub_1B731BBF0();
        v26 = v45;
        sub_1B7801E48();
        (*(v47 + 8))(v8, v26);
        (*(v53 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v32 = v54;
        v35 = v55;
        v36 = v56;
        v37 = v57;
        v21 = v17;
      }

      *v21 = v32;
      *(v21 + 8) = v35;
      *(v21 + 16) = v36;
      *(v21 + 24) = v37;
      *(v21 + 32) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1B74A7CD0()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1B8CA6620](v2);
    sub_1B7800798();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B8CA6620](1);
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74A7D84()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_7;
    }

    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x1B8CA6620](v1);
  sub_1B7800798();
LABEL_7:

  return sub_1B7800798();
}

uint64_t sub_1B74A7E28()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1B8CA6620](v2);
    sub_1B7800798();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B8CA6620](1);
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t ExtractedOrderFoundInMailBanner.messageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrderFoundInMailBanner.messageID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrderFoundInMailBanner.orderNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedOrderFoundInMailBanner.orderNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ExtractedOrderFoundInMailBanner.merchantDisplayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedOrderFoundInMailBanner.merchantDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ExtractedOrderFoundInMailBanner.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return sub_1B7263158(v2, v3, v4, v5, v6);
}

__n128 ExtractedOrderFoundInMailBanner.id.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1B726321C(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v5;
  *(v1 + 80) = v3;
  return result;
}

id ExtractedOrderFoundInMailBanner.attributedSubtitle.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v25 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7808C50;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B721FF04();
  *(v5 + 64) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v7 = qword_1EDAF93A8;

  v26 = v3;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDAF93B0;
  v9 = sub_1B7800838();
  v10 = sub_1B7800838();
  v11 = sub_1B7800838();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_1B7800868();
  v13 = sub_1B78008A8();
  v15 = v14;

  v16 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = v6;
  *(v4 + 32) = v13;
  *(v4 + 40) = v15;
  *(v4 + 96) = v16;
  *(v4 + 104) = v6;
  *(v4 + 72) = v25;
  *(v4 + 80) = v26;
  v17 = sub_1B7800838();
  v18 = sub_1B7800838();
  v19 = sub_1B7800838();
  v20 = [v8 localizedStringForKey:v17 value:v18 table:v19];

  sub_1B7800868();
  sub_1B78008A8();

  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = sub_1B7800838();

  v23 = [v21 initWithString_];

  return v23;
}

uint64_t ExtractedOrderFoundInMailBanner.deeplinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (!*(v1 + 80))
  {
    v6 = *(v1 + 64);
    v5 = *(v1 + 72);
    v11 = *(v1 + 48);
    v12 = v4;
    v13 = v6;
    v14 = v5;
    static FinanceURLFactory.orderDetails(fullyQualifiedOrderIdentifier:fulfillmentIdentifier:)(&v11, 0, 0, a1);
    goto LABEL_5;
  }

  if (*(v1 + 80) == 1)
  {
    v11 = 0xD000000000000026;
    v12 = 0x80000001B78811F0;
    v13 = v3;
    v14 = v4;

    static FinanceURLFactory.orderDetails(fullyQualifiedOrderIdentifier:fulfillmentIdentifier:)(&v11, 0, 0, a1);

LABEL_5:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:
  v8 = sub_1B77FF4F8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t ExtractedOrderFoundInMailBanner.actionTitle.getter()
{
  if (*(v0 + 80) > 1u)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t static ExtractedOrderFoundInMailBanner.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1B78020F8();
}

void _s10FinanceKit31ExtractedOrderFoundInMailBannerV13createBanners17fromCascadeOrders14dashboardItems9messageIDShyACGSayAA07ManagedlcD0CG_SayAA0rD13DashboardItemCGSStAA0cdefgH8ProviderC0H5ErrorOYKFZ(NSObject *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v152 = a4;
  v149 = a2;
  v150 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v141 = &v134 - v8;
  v9 = type metadata accessor for CascadeExtractedOrder(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v137 = (&v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v134 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v134 - v20;
  v166 = MEMORY[0x1E69E7CD0];
  v135 = a5;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_38:
    v67 = v149;
    if (v149 >> 62)
    {
LABEL_62:
      v132 = v67;
      v133 = sub_1B7801958();
      v67 = v132;
      v151 = v133;
      if (!v133)
      {
        return;
      }
    }

    else
    {
      v151 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v151)
      {
        return;
      }
    }

    v68 = 0;
    v148 = v67 & 0xC000000000000001;
    v141 = 0x80000001B7881280;
    v142 = v67 & 0xFFFFFFFFFFFFFF8;
    v140 = "(orderTypeIdentifier: ";
    *&v19 = 136315138;
    v139 = v19;
    while (1)
    {
      if (v148)
      {
        v88 = MEMORY[0x1B8CA5DC0](v68);
      }

      else
      {
        if (v68 >= *(v142 + 16))
        {
          goto LABEL_61;
        }

        v88 = *(v67 + 8 * v68 + 32);
      }

      v89 = v88;
      v87 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v90 = [v88 classicOrder];
      if (v90)
      {
        v91 = v90;
        v173 = v89;
        v92 = [v90 orderTypeIdentifier];
        v147 = sub_1B7800868();
        v94 = v93;

        v95 = [v91 orderIdentifier];
        v96 = sub_1B7800868();
        v98 = v97;

        v99 = [v91 ecommerceOrderContent];
        if (!v99)
        {

          v130 = v135;
          v131 = v147;
          *v135 = v147;
          v130[1] = v94;
          v130[2] = v96;
          v130[3] = v98;
          *(v130 + 32) = 1;
          *&v160 = v131;
          *(&v160 + 1) = v94;
          *&v161 = v96;
          *(&v161 + 1) = v98;
          LOBYTE(v162) = 1;
          sub_1B74B08F8();
          swift_willThrowTypedImpl();

          return;
        }

        v100 = v99;
        v101 = [v99 orderNumber];
        v153 = v100;
        if (v101)
        {
          v69 = v101;

          v70 = sub_1B7800868();
          v146 = v71;
          v147 = v70;

          v72 = [v100 merchant];
          v73 = [v72 displayName];

          v74 = sub_1B77FFA48();
          v75 = sub_1B741F7D4(v74);
          v144 = v76;
          v145 = v75;

          v77 = v152;

          v78 = [v91 orderTypeIdentifier];
          v79 = sub_1B7800868();
          v143 = v80;

          v81 = [v91 orderIdentifier];
          v82 = sub_1B7800868();
          v83 = (v68 + 1);
          v84 = v68;
          v86 = v85;

          v167[0] = v150;
          v167[1] = v77;
          v167[2] = v147;
          v167[3] = v146;
          v167[4] = v145;
          v167[5] = v144;
          v167[6] = v79;
          v167[7] = v143;
          v167[8] = v82;
          v167[9] = v86;
          v68 = v84;
          v87 = v83;
          v168 = 0;
          sub_1B72522E0(&v154, v167);

          v163 = v157;
          v164 = v158;
          v165 = v159;
          v160 = v154;
          v161 = v155;
          v162 = v156;
          sub_1B7263284(&v160);
        }

        else
        {
          if (qword_1EB98EA40 != -1)
          {
            swift_once();
          }

          v102 = sub_1B78000B8();
          __swift_project_value_buffer(v102, qword_1EB994840);

          v103 = sub_1B7800098();
          v104 = sub_1B78011D8();

          if (os_log_type_enabled(v103, v104))
          {
            v144 = swift_slowAlloc();
            v145 = v103;
            v105 = v144;
            v146 = swift_slowAlloc();
            *&v154 = v146;
            *v105 = v139;
            *&v160 = 0;
            *(&v160 + 1) = 0xE000000000000000;
            LOBYTE(v105) = v104;
            sub_1B7801A78();

            *&v160 = 0xD000000000000016;
            *(&v160 + 1) = v141;
            MEMORY[0x1B8CA4D30](v147, v94);
            MEMORY[0x1B8CA4D30](0xD000000000000013, v140 | 0x8000000000000000);
            MEMORY[0x1B8CA4D30](v96, v98);
            MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

            v106 = v91;
            v107 = v68;
            v108 = sub_1B71A3EF8(v160, *(&v160 + 1), &v154);

            v109 = v144;
            *(v144 + 4) = v108;
            v68 = v107;
            v110 = v105;
            v111 = v145;
            v112 = v146;
            __swift_destroy_boxed_opaque_existential_1(v146);
            MEMORY[0x1B8CA7A40](v112, -1, -1);
            MEMORY[0x1B8CA7A40](v109, -1, -1);
          }

          else
          {
          }
        }

        v67 = v149;
      }

      else
      {
        v173 = (v68 + 1);
        v153 = v68;
        v113 = [v89 extractedOrder];
        if (!v113)
        {
          sub_1B7801C88();
          __break(1u);
          return;
        }

        v114 = v113;
        v115 = v89;
        v116 = v152;

        v117 = [v114 orderContent];
        v118 = [v117 orderNumber];

        v119 = sub_1B7800868();
        v146 = v120;
        v147 = v119;

        v121 = [v114 orderContent];
        v122 = [v121 merchantDisplayName];

        v123 = sub_1B7800868();
        v125 = v124;

        v126 = [v114 trackedOrderIdentifier];
        v127 = sub_1B7800868();
        v129 = v128;

        v169[0] = v150;
        v169[1] = v116;
        v169[2] = v147;
        v169[3] = v146;
        v169[4] = v123;
        v169[5] = v125;
        v169[6] = v127;
        v169[7] = v129;
        v169[8] = 0;
        v169[9] = 0;
        v170 = 1;
        sub_1B72522E0(&v154, v169);

        v163 = v157;
        v164 = v158;
        v165 = v159;
        v160 = v154;
        v161 = v155;
        v162 = v156;
        sub_1B7263284(&v160);
        v67 = v149;
        v68 = v153;
        v87 = v173;
      }

      ++v68;
      if (v87 == v151)
      {
        return;
      }
    }
  }

LABEL_3:
  v23 = 0;
  v147 = a1 & 0xFFFFFFFFFFFFFF8;
  v148 = a1 & 0xC000000000000001;
  v146 = v10 + 6;
  *&v19 = 136315394;
  v136 = v19;
  *&v19 = 136315138;
  v134 = v19;
  v140 = v14;
  *&v139 = v21;
  v144 = v9;
  v145 = a1;
  v142 = v22;
  v143 = v18;
  while (1)
  {
    if (v148)
    {
      v25 = MEMORY[0x1B8CA5DC0](v23, a1);
    }

    else
    {
      if (v23 >= *(v147 + 16))
      {
        goto LABEL_36;
      }

      v25 = a1[v23 + 4].isa;
    }

    v10 = v25;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v22 = sub_1B7801958();
      if (!v22)
      {
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    v173 = (v23 + 1);
    v26 = [(objc_class *)v25 sourceItemIdentifier];
    v151 = sub_1B7800868();
    v28 = v27;

    v29 = v10;
    CascadeExtractedOrder.init(_:)(v29, v21);
    sub_1B7205588(v21, v18, &qword_1EB995C88);
    if ((v146->isa)(v18, 1, v9) == 1)
    {

      sub_1B7205418(v18, &qword_1EB995C88);
      v53 = v135;
      v54 = v151;
      *v135 = v151;
      v53[1] = v28;
      v53[2] = 0;
      v53[3] = 0;
      *(v53 + 32) = 0;
      *&v160 = v54;
      *(&v160 + 1) = v28;
      sub_1B74B08F8();
      v161 = 0uLL;
      LOBYTE(v162) = 0;
      swift_willThrowTypedImpl();

      sub_1B7205418(v21, &qword_1EB995C88);
      return;
    }

    sub_1B74B094C(v18, v14);
    v30 = &v14[*(v9 + 32)];
    v31 = v30[1];
    v153 = v29;
    if (!v31 || (v32 = &v14[*(v9 + 44)], (v33 = *(v32 + 1)) == 0))
    {
      if (qword_1EB98EA40 != -1)
      {
        swift_once();
      }

      v40 = sub_1B78000B8();
      __swift_project_value_buffer(v40, qword_1EB994840);
      v41 = v152;

      v10 = sub_1B7800098();
      v42 = sub_1B78011D8();

      if (os_log_type_enabled(v10, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v160 = v44;
        *v43 = v136;
        v45 = sub_1B71A3EF8(v151, v28, &v160);

        *(v43 + 4) = v45;
        v14 = v140;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_1B71A3EF8(v150, v41, &v160);
        swift_arrayDestroy();
        v46 = v44;
        v21 = v139;
        MEMORY[0x1B8CA7A40](v46, -1, -1);
        MEMORY[0x1B8CA7A40](v43, -1, -1);
      }

      else
      {
      }

      sub_1B7205418(v21, &qword_1EB995C88);
      a1 = v145;
      v24 = v142;
      v18 = v143;
      sub_1B74B2AB8(v14, type metadata accessor for CascadeExtractedOrder);
      v9 = v144;
      goto LABEL_6;
    }

    v138 = *v30;
    v34 = *v32;

    v35 = static FoundInMailItem.items(fromCascadeEmails:)();
    v36 = v137;
    sub_1B74B09B0(v14, v137);
    v37 = v141;
    ExtractedOrder.init(cascadeOrder:)(v36, v141);
    v38 = type metadata accessor for ExtractedOrder(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      break;
    }

    v39 = _s10FinanceKit15FoundInMailItemV018mayContainPhysicalF09mailItemsSbSayACG_tFZ_0(v35);

    if (v39)
    {
      v171[0] = v150;
      v171[1] = v152;
      v171[2] = v138;
      v171[3] = v31;
      v171[4] = v34;
      v171[5] = v33;
      v171[6] = v150;
      v171[7] = v152;
      v171[8] = v138;
      v171[9] = v31;
      v172 = 2;
      swift_bridgeObjectRetain_n();

      v10 = &v166;
      sub_1B72522E0(&v154, v171);

      v163 = v157;
      v164 = v158;
      v165 = v159;
      v160 = v154;
      v161 = v155;
      v162 = v156;
      sub_1B7263284(&v160);
      v21 = v139;
      sub_1B7205418(v139, &qword_1EB995C88);
      sub_1B7205418(v141, &qword_1EB995C80);
      v14 = v140;
      sub_1B74B2AB8(v140, type metadata accessor for CascadeExtractedOrder);
      v9 = v144;
      a1 = v145;
      v24 = v142;
      v18 = v143;
    }

    else
    {

      if (qword_1EB98EA40 != -1)
      {
        swift_once();
      }

      v47 = sub_1B78000B8();
      __swift_project_value_buffer(v47, qword_1EB994840);

      v10 = sub_1B7800098();
      v48 = sub_1B78011D8();

      v49 = os_log_type_enabled(v10, v48);
      v24 = v142;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v160 = v51;
        *v50 = v134;
        v52 = sub_1B71A3EF8(v138, v31, &v160);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_1B7198000, v10, v48, "Order with number %s does not contain physical goods, not showing the mail banner.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1B8CA7A40](v51, -1, -1);
        MEMORY[0x1B8CA7A40](v50, -1, -1);
      }

      else
      {
      }

      v21 = v139;
      sub_1B7205418(v139, &qword_1EB995C88);
      v14 = v140;
      v9 = v144;
      a1 = v145;
      sub_1B7205418(v141, &qword_1EB995C80);
      sub_1B74B2AB8(v14, type metadata accessor for CascadeExtractedOrder);
      v18 = v143;
    }

LABEL_6:
    ++v23;
    if (v173 == v24)
    {
      goto LABEL_38;
    }
  }

  if (qword_1EB98EA40 != -1)
  {
    swift_once();
  }

  v55 = sub_1B78000B8();
  __swift_project_value_buffer(v55, qword_1EB994840);
  v56 = v152;

  v57 = sub_1B7800098();
  v58 = sub_1B78011D8();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v140;
  v61 = v139;
  if (v59)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v160 = v63;
    *v62 = v136;
    v64 = v151;
    *(v62 + 4) = sub_1B71A3EF8(v151, v28, &v160);
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_1B71A3EF8(v150, v56, &v160);
    _os_log_impl(&dword_1B7198000, v57, v58, "invalidCascadeOrder with sourceItemIdentifier: %s and messageID: %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v63, -1, -1);
    v65 = v62;
    v60 = v140;
    MEMORY[0x1B8CA7A40](v65, -1, -1);

    v66 = v135;
  }

  else
  {

    v66 = v135;
    v64 = v151;
  }

  *v66 = v64;
  v66[1] = v28;
  v66[2] = 0;
  v66[3] = 0;
  *(v66 + 32) = 0;
  *&v160 = v64;
  *(&v160 + 1) = v28;
  sub_1B74B08F8();
  v161 = 0uLL;
  LOBYTE(v162) = 0;
  swift_willThrowTypedImpl();

  sub_1B7205418(v61, &qword_1EB995C88);
  sub_1B7205418(v141, &qword_1EB995C80);
  sub_1B74B2AB8(v60, type metadata accessor for CascadeExtractedOrder);
}

unint64_t sub_1B74A9958()
{
  v1 = 0x496567617373656DLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 25705;
  }

  if (*v0)
  {
    v1 = 0x6D754E726564726FLL;
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

uint64_t sub_1B74A99D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74B250C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74A9A00(uint64_t a1)
{
  v2 = sub_1B74B105C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74A9A3C(uint64_t a1)
{
  v2 = sub_1B74B105C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderFoundInMailBanner.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v8;
  v9 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = v9;
  v10 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = v10;
  v30 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74B105C();
  sub_1B78023F8();
  LOBYTE(v25) = 0;
  v11 = v24;
  sub_1B7801F78();
  if (!v11)
  {
    v13 = v17;
    v12 = v18;
    v14 = v19;
    LOBYTE(v25) = 1;
    sub_1B7801F78();
    LOBYTE(v25) = 2;
    sub_1B7801F78();
    v24 = 0;
    v25 = v14;
    v26 = v12;
    v27 = v13;
    v28 = v16;
    v29 = v30;
    v31 = 3;
    sub_1B7263158(v14, v12, v13, v16, v30);
    sub_1B74B10B0();
    sub_1B7801FC8();
    sub_1B726321C(v25, v26, v27, v28, v29);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrderFoundInMailBanner.hash(into:)()
{
  v1 = *(v0 + 80);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8CA6620](v2);
  sub_1B7800798();
LABEL_7:

  return sub_1B7800798();
}

uint64_t ExtractedOrderFoundInMailBanner.hashValue.getter()
{
  v1 = *(v0 + 80);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1B8CA6620](v2);
    sub_1B7800798();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B8CA6620](1);
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t ExtractedOrderFoundInMailBanner.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74B105C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = sub_1B7801DF8();
  v33 = v10;
  LOBYTE(v40[0]) = 1;
  v11 = sub_1B7801DF8();
  v32 = v12;
  v30 = v11;
  LOBYTE(v40[0]) = 2;
  v29 = sub_1B7801DF8();
  v31 = v13;
  v45 = 3;
  sub_1B74B1104();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v27 = *(&v42 + 1);
  v28 = v42;
  v25 = *(&v43 + 1);
  v26 = v43;
  *&v34 = v9;
  v14 = v33;
  *(&v34 + 1) = v33;
  v15 = v30;
  *&v35 = v30;
  v16 = v32;
  *(&v35 + 1) = v32;
  *&v36 = v29;
  v17 = v31;
  *(&v36 + 1) = v31;
  v37 = v42;
  v38 = v43;
  v18 = v44;
  v39 = v44;
  v19 = v35;
  *a2 = v34;
  *(a2 + 16) = v19;
  v20 = v36;
  v21 = v37;
  v22 = v38;
  *(a2 + 80) = v18;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 32) = v20;
  sub_1B72630FC(&v34, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v9;
  v40[1] = v14;
  v40[2] = v15;
  v40[3] = v16;
  v40[4] = v29;
  v40[5] = v17;
  v40[6] = v28;
  v40[7] = v27;
  v40[8] = v26;
  v40[9] = v25;
  v41 = v18;
  return sub_1B7263284(v40);
}

uint64_t sub_1B74AA2B0()
{
  v1 = *(v0 + 80);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8CA6620](v2);
  sub_1B7800798();
LABEL_7:

  return sub_1B7800798();
}

uint64_t sub_1B74AA394()
{
  v1 = *(v0 + 80);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1B8CA6620](v2);
    sub_1B7800798();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B8CA6620](1);
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74AA4C4(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1B78020F8();
}

BOOL sub_1B74AA590(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[2] == a1[2] && a2[3] == a1[3];
  if (v6 || (sub_1B78020F8()) && (v4 == v2 ? (v7 = v5 == v3) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return (v8 & 1) == 0;
}

BOOL sub_1B74AA644(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return (v8 & 1) == 0;
}

uint64_t sub_1B74AA6F8(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[2] == a1[2] && a2[3] == a1[3];
  if (v6 || (sub_1B78020F8()) && v4 == v2 && v5 == v3)
  {
    return 0;
  }

  return sub_1B78020F8();
}

uint64_t sub_1B74AA7C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return sub_1B7263158(v2, v3, v4, v5, v6);
}

uint64_t sub_1B74AA7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001B7879EB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B74AA87C(uint64_t a1)
{
  v2 = sub_1B74B11AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AA8B8(uint64_t a1)
{
  v2 = sub_1B74B11AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B74AA8F4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000018;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 != 4)
    {
      v6 = 0x746E61686372656DLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4465727574616566;
    if (v1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (*v0)
    {
      v2 = 0xD000000000000011;
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
}

uint64_t sub_1B74AAA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74B267C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74AAA40(uint64_t a1)
{
  v2 = sub_1B74B1158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAA7C(uint64_t a1)
{
  v2 = sub_1B74B1158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AAAB8(uint64_t a1)
{
  v2 = sub_1B74B13A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAAF4(uint64_t a1)
{
  v2 = sub_1B74B13A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AAB30(uint64_t a1)
{
  v2 = sub_1B74B12FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAB6C(uint64_t a1)
{
  v2 = sub_1B74B12FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AABA8(uint64_t a1)
{
  v2 = sub_1B74B12A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AABE4(uint64_t a1)
{
  v2 = sub_1B74B12A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AAC20(uint64_t a1)
{
  v2 = sub_1B74B13F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAC5C(uint64_t a1)
{
  v2 = sub_1B74B13F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AACB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B78776F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B74AAD48(uint64_t a1)
{
  v2 = sub_1B74B1200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAD84(uint64_t a1)
{
  v2 = sub_1B74B1200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AADC0(uint64_t a1)
{
  v2 = sub_1B74B1254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AADFC(uint64_t a1)
{
  v2 = sub_1B74B1254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74AAE38(uint64_t a1)
{
  v2 = sub_1B74B1350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74AAE74(uint64_t a1)
{
  v2 = sub_1B74B1350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderFoundInMailBannerProvider.BannerError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CB8);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CC0);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v44 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CC8);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CD0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CD8);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CE0);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CE8);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CF0);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995CF8);
  v18 = *(v17 - 8);
  v69 = v17;
  v70 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v21 = *v1;
  v67 = v1[1];
  v22 = v1[2];
  v23 = v1[3];
  v24 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74B1158();
  v68 = v20;
  sub_1B78023F8();
  if (!v24)
  {
    LOBYTE(v71) = 6;
    sub_1B74B1200();
    v29 = v61;
    v26 = v68;
    v27 = v69;
    sub_1B7801ED8();
    v30 = v63;
    sub_1B7801F78();
    (*(v62 + 8))(v29, v30);
    return (*(v70 + 8))(v26, v27);
  }

  if (v24 == 1)
  {
    LOBYTE(v71) = 7;
    sub_1B74B11AC();
    v25 = v64;
    v26 = v68;
    v27 = v69;
    sub_1B7801ED8();
    v71 = v21;
    v72 = v67;
    v73 = v22;
    v74 = v23;
    sub_1B731BB9C();
    v28 = v66;
    sub_1B7801FC8();
    (*(v65 + 8))(v25, v28);
    return (*(v70 + 8))(v26, v27);
  }

  if (v22 | v67 | v21 | v23)
  {
    v32 = v22 | v67 | v23;
    if (v21 != 1 || v32)
    {
      if (v21 != 2 || v32)
      {
        if (v21 != 3 || v32)
        {
          if (v21 != 4 || v32)
          {
            LOBYTE(v71) = 5;
            sub_1B74B1254();
            v43 = v47;
            v35 = v68;
            v34 = v69;
            sub_1B7801ED8();
            v39 = *(v48 + 8);
            v40 = v43;
            v41 = &v76;
          }

          else
          {
            LOBYTE(v71) = 4;
            sub_1B74B12A8();
            v42 = v44;
            v35 = v68;
            v34 = v69;
            sub_1B7801ED8();
            v39 = *(v45 + 8);
            v40 = v42;
            v41 = &v75;
          }
        }

        else
        {
          LOBYTE(v71) = 3;
          sub_1B74B12FC();
          v38 = v50;
          v35 = v68;
          v34 = v69;
          sub_1B7801ED8();
          v39 = *(v51 + 8);
          v40 = v38;
          v41 = &v77;
        }

        v39(v40, *(v41 - 32));
        return (*(v70 + 8))(v35, v34);
      }

      LOBYTE(v71) = 2;
      sub_1B74B1350();
      v33 = v53;
      v35 = v68;
      v34 = v69;
      sub_1B7801ED8();
      v37 = v54;
      v36 = v55;
    }

    else
    {
      LOBYTE(v71) = 1;
      sub_1B74B13A4();
      v33 = v56;
      v35 = v68;
      v34 = v69;
      sub_1B7801ED8();
      v37 = v57;
      v36 = v58;
    }

    (*(v37 + 8))(v33, v36);
  }

  else
  {
    LOBYTE(v71) = 0;
    sub_1B74B13F8();
    v35 = v68;
    v34 = v69;
    sub_1B7801ED8();
    (*(v59 + 8))(v16, v60);
  }

  return (*(v70 + 8))(v35, v34);
}

uint64_t ExtractedOrderFoundInMailBannerProvider.BannerError.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    MEMORY[0x1B8CA6620](6);
    goto LABEL_5;
  }

  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) == 1)
  {
    MEMORY[0x1B8CA6620](7);
    sub_1B7800798();
LABEL_5:

    return sub_1B7800798();
  }

  if (v4 | v2 | v1 | v3)
  {
    v6 = v4 | v2 | v3;
    if (v1 == 1 && v6 == 0)
    {
      v8 = 1;
    }

    else if (v1 != 2 || v6)
    {
      if (v1 != 3 || v6)
      {
        if (v1 != 4 || v6)
        {
          v8 = 5;
        }

        else
        {
          v8 = 4;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1B8CA6620](v8);
}

uint64_t ExtractedOrderFoundInMailBannerProvider.BannerError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_1B78022F8();
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x1B8CA6620](7);
      sub_1B7800798();
      sub_1B7800798();
    }

    else
    {
      if (v4 | v2 | v1 | v3)
      {
        v6 = v4 | v2 | v3;
        if (v1 != 1 || v6)
        {
          if (v1 != 2 || v6)
          {
            if (v1 != 3 || v6)
            {
              if (v1 != 4 || v6)
              {
                v7 = 5;
              }

              else
              {
                v7 = 4;
              }
            }

            else
            {
              v7 = 3;
            }
          }

          else
          {
            v7 = 2;
          }
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1B8CA6620](v7);
    }
  }

  else
  {
    MEMORY[0x1B8CA6620](6);
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t ExtractedOrderFoundInMailBannerProvider.BannerError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D48);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D50);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v60 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D58);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v60 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D60);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v81 = &v60 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D68);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v80 = &v60 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D70);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v60 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D78);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D80);
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D88);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v21 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B74B1158();
  v22 = v86;
  sub_1B78023C8();
  if (!v22)
  {
    v61 = v16;
    v60 = v14;
    v62 = v13;
    v24 = v80;
    v23 = v81;
    v25 = v82;
    v63 = 0;
    v27 = v83;
    v26 = v84;
    v86 = v18;
    v28 = v85;
    v29 = sub_1B7801E98();
    v30 = (2 * *(v29 + 16)) | 1;
    v91 = v29;
    v92 = v29 + 32;
    v93 = 0;
    v94 = v30;
    v31 = sub_1B721CE58();
    if (v31 == 8 || v93 != v94 >> 1)
    {
      v40 = v17;
      v41 = sub_1B7801B18();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v43 = &type metadata for ExtractedOrderFoundInMailBannerProvider.BannerError;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v86 + 8))(v20, v40);
    }

    else
    {
      if (v31 > 3u)
      {
        if (v31 <= 5u)
        {
          v45 = v17;
          v46 = v28;
          v47 = v86;
          if (v31 == 4)
          {
            LOBYTE(v87) = 4;
            sub_1B74B12A8();
            v48 = v45;
            v49 = v63;
            sub_1B7801D38();
            if (!v49)
            {
              (*(v72 + 8))(v23, v71);
              (*(v47 + 8))(v20, v45);
              swift_unknownObjectRelease();
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 2;
              v34 = 4;
              v39 = v46;
              goto LABEL_33;
            }
          }

          else
          {
            LOBYTE(v87) = 5;
            sub_1B74B1254();
            v48 = v45;
            v56 = v63;
            sub_1B7801D38();
            if (!v56)
            {
              (*(v73 + 8))(v25, v74);
              (*(v47 + 8))(v20, v45);
              swift_unknownObjectRelease();
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 2;
              v34 = 5;
              v39 = v46;
              goto LABEL_33;
            }
          }

          (*(v47 + 8))(v20, v48);
          goto LABEL_10;
        }

        v39 = v28;
        v50 = v86;
        if (v31 == 6)
        {
          LOBYTE(v87) = 6;
          sub_1B74B1200();
          v52 = v63;
          sub_1B7801D38();
          if (!v52)
          {
            v53 = v17;
            v54 = v76;
            v34 = sub_1B7801DF8();
            v35 = v59;
            (*(v75 + 8))(v27, v54);
            (*(v50 + 8))(v20, v53);
            swift_unknownObjectRelease();
            v36 = 0;
            v37 = 0;
            v38 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          LOBYTE(v87) = 7;
          sub_1B74B11AC();
          v57 = v63;
          sub_1B7801D38();
          if (!v57)
          {
            sub_1B731BBF0();
            v58 = v77;
            sub_1B7801E48();
            (*(v78 + 8))(v26, v58);
            (*(v50 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v34 = v87;
            v35 = v88;
            v38 = 1;
            v36 = v89;
            v37 = v90;
            goto LABEL_33;
          }
        }
      }

      else
      {
        v32 = v63;
        if (v31 <= 1u)
        {
          if (v31)
          {
            LOBYTE(v87) = 1;
            sub_1B74B13A4();
            v55 = v62;
            sub_1B7801D38();
            if (!v32)
            {
              (*(v65 + 8))(v55, v66);
              (*(v86 + 8))(v20, v17);
              swift_unknownObjectRelease();
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 2;
              v34 = 1;
              v39 = v28;
              goto LABEL_33;
            }
          }

          else
          {
            LOBYTE(v87) = 0;
            sub_1B74B13F8();
            v33 = v61;
            sub_1B7801D38();
            if (!v32)
            {
              (*(v64 + 8))(v33, v60);
              (*(v86 + 8))(v20, v17);
              swift_unknownObjectRelease();
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 2;
              v39 = v28;
LABEL_33:
              *v39 = v34;
              *(v39 + 8) = v35;
              *(v39 + 16) = v36;
              *(v39 + 24) = v37;
              *(v39 + 32) = v38;
              return __swift_destroy_boxed_opaque_existential_1(v95);
            }
          }

          (*(v86 + 8))(v20, v17);
          goto LABEL_10;
        }

        v39 = v28;
        v50 = v86;
        if (v31 == 2)
        {
          LOBYTE(v87) = 2;
          sub_1B74B1350();
          v51 = v79;
          sub_1B7801D38();
          if (!v32)
          {
            (*(v67 + 8))(v51, v68);
            (*(v50 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v34 = 2;
            v38 = 2;
            goto LABEL_33;
          }
        }

        else
        {
          LOBYTE(v87) = 3;
          sub_1B74B12FC();
          sub_1B7801D38();
          if (!v32)
          {
            (*(v69 + 8))(v24, v70);
            (*(v50 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 2;
            v34 = 3;
            goto LABEL_33;
          }
        }
      }

      (*(v50 + 8))(v20, v17);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t sub_1B74AC688()
{
  sub_1B78022F8();
  ExtractedOrderFoundInMailBannerProvider.BannerError.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B74AC6E0()
{
  sub_1B78022F8();
  ExtractedOrderFoundInMailBannerProvider.BannerError.hash(into:)();
  return sub_1B7802368();
}

void *ExtractedOrderFoundInMailBannerProvider.__allocating_init(emailMessageID:senderEmailAddress:senderDomain:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDAFB7C8;
  v17 = swift_allocObject();
  v17[11] = 0;
  v17[12] = 0;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v16;
  v17[9] = a7;
  v17[10] = a8;

  return v17;
}

uint64_t ExtractedOrderFoundInMailBannerProvider.deinit()
{
  if (*(v0 + 96))
  {

    sub_1B7800E68();
  }

  return v0;
}

uint64_t ExtractedOrderFoundInMailBannerProvider.__deallocating_deinit()
{
  ExtractedOrderFoundInMailBannerProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ExtractedOrderFoundInMailBannerProvider.start()()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D90);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D98);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0);
  v1[14] = swift_task_alloc();
  v4 = sub_1B77FFAF8();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  sub_1B7800DA8();
  v1[18] = sub_1B7800D98();
  v6 = sub_1B7800CD8();
  v1[19] = v6;
  v1[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B74ACAF4, v6, v5);
}

uint64_t sub_1B74ACAF4()
{
  sub_1B77FFA68();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1B74ACB98;
  v2 = *(v0 + 136);

  return sub_1B74AD120(v2, v0 + 16);
}

uint64_t sub_1B74ACB98()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 152);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1B74AD050;
  }

  else
  {
    v8 = sub_1B74ACD0C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B74ACD0C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x1E69E8650], v0[8]);
  sub_1B7800E48();
  sub_1B7802408();
  sub_1B74B14BC();
  sub_1B7800F28();
  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1B74ACE84;
  v5 = v0[14];

  return (sub_1B74AE4B4)(v5);
}

uint64_t sub_1B74ACE84()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B74ACFA4, v3, v2);
}

uint64_t sub_1B74ACFA4()
{
  v1 = *(v0 + 112);

  sub_1B7205418(v1, &qword_1EB995DA0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B74AD050()
{
  v11 = v0;
  v1 = *(v0 + 56);

  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v1 + 72);
  v7 = *(v0 + 16);
  v8 = v3;
  v9 = v2;
  v10 = 1;
  v4(&v7);
  sub_1B74B144C(v7, *(&v7 + 1), v8, *(&v8 + 1), v9, v10);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B74AD120(uint64_t a1, uint64_t a2)
{
  v3[33] = v2;
  v3[34] = a2;
  v3[32] = a1;
  v3[35] = type metadata accessor for FinanceStore.Message();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_1B7800DA8();
  v3[38] = sub_1B7800D98();
  v5 = sub_1B7800CD8();
  v3[39] = v5;
  v3[40] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B74AD1F8, v5, v4);
}

uint64_t sub_1B74AD1F8()
{
  v0[41] = *(v0[33] + 64);
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_1B74AD29C;
  v2 = v0[32];

  return FinanceStore.extractedOrdersSupported(locale:)(v2);
}

uint64_t sub_1B74AD29C(char a1)
{
  v2 = *v1;
  *(*v1 + 129) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1B74AD3C4, v4, v3);
}

uint64_t sub_1B74AD3C4()
{
  if (*(v0 + 129) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_1B74AD4EC;

    return FinanceStore.isWalletDeletedRemoteAsync()();
  }

  else
  {
    v3 = *(v0 + 272);

    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 2;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 2;
    sub_1B74B08F8();
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B74AD4EC(char a1)
{
  v2 = *v1;
  *(*v1 + 130) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1B74AD614, v4, v3);
}

uint64_t sub_1B74AD614()
{
  if (*(v0 + 130))
  {
    v1 = *(v0 + 272);

    *v1 = 2;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 2;
    *(v0 + 216) = 2;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    *(v0 + 224) = 0;
    *(v0 + 248) = 2;
    sub_1B74B08F8();
    swift_willThrowTypedImpl();

    v2 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 264);
  *(v0 + 352) = *(v3 + 32);
  *(v0 + 360) = *(v3 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B74AD71C, 0, 0);
}

uint64_t sub_1B74AD71C()
{
  v1 = v0[45];
  v2 = v0[37];
  *v2 = v0[44];
  v2[1] = v1;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1B74AD7FC;
  v4 = v0[37];

  return sub_1B7273404((v0 + 2), v4);
}

uint64_t sub_1B74AD7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  *(*v1 + 376) = v0;

  sub_1B74B2AB8(v3, type metadata accessor for FinanceStore.Message);
  if (v0)
  {
    v4 = sub_1B74ADBD0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 312);
    v6 = *(v2 + 320);
    v4 = sub_1B74AD950;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B74AD950()
{
  v1 = *(v0 + 264);
  *(v0 + 131) = *(v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 384) = *(v0 + 24);
  *(v0 + 400) = v2;
  *(v0 + 416) = *(v1 + 48);
  *(v0 + 424) = *(v1 + 56);
  return MEMORY[0x1EEE6DFA0](sub_1B74AD994, 0, 0);
}

uint64_t sub_1B74AD994()
{
  v1 = v0[53];
  v2 = v0[36];
  *v2 = v0[52];
  v2[1] = v1;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_1B74ADA70;
  v4 = v0[36];

  return sub_1B7273404((v0 + 7), v4);
}

uint64_t sub_1B74ADA70()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  *(*v1 + 440) = v0;

  sub_1B74B2AB8(v3, type metadata accessor for FinanceStore.Message);
  if (v0)
  {
    v4 = sub_1B74ADED4;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_1B7237B84(v2[48], v2[49], v2[50], v2[51]);
    v5 = v2[39];
    v6 = v2[40];
    v4 = sub_1B74ADDDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B74ADBE8()
{

  v1 = *(v0 + 376);
  if (qword_1EB98EA40 != -1)
  {
    swift_once();
  }

  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EB994840);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to fetch email/domain configuration: %@", v6, 0xCu);
    sub_1B7205418(v7, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 272);

  *v11 = 4;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 2;
  *(v0 + 136) = 4;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  sub_1B74B08F8();
  swift_willThrowTypedImpl();

  if (!v10)
  {
    sub_1B7237B84(v12, v13, v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B74ADDDC()
{
  v1 = *(v0 + 131);

  v2 = *(v0 + 56);
  sub_1B7237B84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  if (v1 != 1 || v2 == 0)
  {
    v4 = *(v0 + 272);
    *v4 = 5;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 2;
    *(v0 + 176) = 5;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 0;
    *(v0 + 208) = 2;
    sub_1B74B08F8();
    swift_willThrowTypedImpl();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B74ADEEC()
{

  v1 = *(v0 + 440);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  if (qword_1EB98EA40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EB994840);
  v7 = v1;
  v8 = sub_1B7800098();
  v9 = sub_1B78011D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B7198000, v8, v9, "Failed to fetch email/domain configuration: %@", v10, 0xCu);
    sub_1B7205418(v11, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  v14 = *(v0 + 376);
  v15 = *(v0 + 272);

  *v15 = 4;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 2;
  *(v0 + 136) = 4;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  sub_1B74B08F8();
  swift_willThrowTypedImpl();

  if (!v14)
  {
    sub_1B7237B84(v5, v4, v3, v2);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B74AE108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_1EDAF93E0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDAF93E8;
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1B74B2B18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B75007E4;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  v11 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  sub_1B7800E08();
}

uint64_t sub_1B74AE3D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE8);
  sub_1B7800E18();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1B74AE4B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v2[7] = swift_task_alloc();
  sub_1B7800DA8();
  v2[8] = sub_1B7800D98();
  v5 = sub_1B7800CD8();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B74AE5F0, v5, v4);
}

uint64_t sub_1B74AE5F0()
{
  if (*(*(v0 + 24) + 96))
  {

    sub_1B7800E68();
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B74AE6BC;

  return sub_1B74AE96C();
}

uint64_t sub_1B74AE6BC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B74AE7DC, v3, v2);
}

uint64_t sub_1B74AE7DC()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v7 = sub_1B7800DF8();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1B7205588(v6, v2, &qword_1EB995DA0);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1B74B291C(v2, v10 + v9);
  *(v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  *(v4 + 96) = sub_1B759B5D0(0, 0, v1, &unk_1B7833ED0, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B74AE96C()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message();
  v1[4] = swift_task_alloc();
  sub_1B7800DA8();
  v1[5] = sub_1B7800D98();
  v3 = sub_1B7800CD8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B74AEA34, v3, v2);
}

uint64_t sub_1B74AEA34()
{
  v1 = v0[2];
  v0[8] = v1[8];
  v0[9] = v1[2];
  v0[10] = v1[3];
  return MEMORY[0x1EEE6DFA0](sub_1B74AEA6C, 0, 0);
}

uint64_t sub_1B74AEA6C()
{
  v1 = v0[10];
  v2 = v0[4];
  *v2 = v0[9];
  v2[1] = v1;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B74AEB44;
  v4 = v0[4];

  return sub_1B7274440(v4);
}

uint64_t sub_1B74AEB44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v3[12] = a1;
  v3[13] = v1;

  sub_1B74B2AB8(v4, type metadata accessor for FinanceStore.Message);
  if (v1)
  {
    v5 = sub_1B74AEEA0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = v3[6];
    v7 = v3[7];
    v5 = sub_1B74AEC9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B74AEC9C()
{
  v21 = v0;
  v1 = v0[2];

  v2 = *(v1 + 88);
  v3 = v0[12];
  if (v2)
  {
    swift_bridgeObjectRetain_n();

    v4 = sub_1B72F5358(v3, v2);

    v3 = v0[12];
    if (v4)
    {
      swift_bridgeObjectRelease_n();
LABEL_14:

      v14 = v0[1];

      return v14();
    }
  }

  else
  {
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v15 = v1;
    v6 = sub_1B72472B8(v5, 0);
    v7 = sub_1B7262188(&v16, v6 + 32, v5, v3);

    result = sub_1B71B7B58();
    if (v7 != v5)
    {
      __break(1u);
      return result;
    }

    v1 = v15;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[13];
  v16 = v6;
  sub_1B74AF514(&v16);
  if (!v9)
  {
    v10 = v0[12];
    v11 = v0[2];

    v12 = v16;
    *(v1 + 88) = v10;

    v13 = *(v11 + 72);
    v16 = v12;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LOWORD(v20) = 0;
    v13(&v16);
    sub_1B74B144C(v16, v17, v18, v19, v20, SBYTE1(v20));
    goto LABEL_14;
  }
}

uint64_t sub_1B74AEEB8()
{
  v8 = v0;
  v1 = v0[13];
  v2 = v0[2];

  *(v2 + 88) = 0;

  v3 = *(v2 + 72);
  v6[0] = 3;
  memset(&v6[1], 0, 24);
  v7 = 258;
  v3(v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B74AEF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B74AEF88, 0, 0);
}