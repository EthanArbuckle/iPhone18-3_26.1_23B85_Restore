uint64_t sub_1B1D042E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1B1D7BE4C();

  return v6;
}

uint64_t ASAppIcon.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v3 = v0[2];
      MEMORY[0x1B273B630](2);
      sub_1B1D7B4FC();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }

      return MEMORY[0x1B273B660](v4);
    }

    else
    {
      return MEMORY[0x1B273B630](0);
    }
  }

  else
  {
    MEMORY[0x1B273B630](1);

    return sub_1B1D7BE7C();
  }
}

uint64_t ASAppIcon.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1B273B630](2);
      sub_1B1D7B4FC();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x1B273B660](v5);
    }

    else
    {
      MEMORY[0x1B273B630](0);
    }
  }

  else
  {
    MEMORY[0x1B273B630](1);
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D044F0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  ASAppIcon.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D04550()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  ASAppIcon.hash(into:)();
  return sub_1B1D7C61C();
}

id static ASCredentialRequestIconGenerator.image(for:size:)(uint64_t *a1, double a2, double a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (!*(a1 + 24))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = sub_1B1D7BE1C();
    v10 = [ObjCClassFromMetadata iconForApplicationIdentifier:v9 size:{a2, a3}];
    goto LABEL_5;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = *(a1 + 2);
    v8 = swift_getObjCClassFromMetadata();
    v9 = sub_1B1D7B4DC();
    v10 = [v8 iconForData:v9 scale:v7 size:{a2, a3}];
LABEL_5:
    v12 = v10;

    return v12;
  }

  return [swift_getObjCClassFromMetadata() passwordManagerIconWithSize_];
}

BOOL _s22AuthenticationServices9ASAppIconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      if (v9 == 1)
      {
        sub_1B1CE20D4(*a2, *(a2 + 8), v8, 1);
        sub_1B1CE20D4(v3, v2, v4, 1);
        v10 = sub_1B1D583E4(v3, v2, v7, v6);
        sub_1B1CE246C(v3, v2, v4, 1);
        sub_1B1CE246C(v7, v6, v8, 1);
        if (v10)
        {
          return *&v4 == *&v8;
        }

        return 0;
      }

LABEL_16:
      sub_1B1CE20D4(*a2, *(a2 + 8), v8, v9);
      sub_1B1CE20D4(v3, v2, v4, v5);
      sub_1B1CE246C(v3, v2, v4, v5);
      sub_1B1CE246C(v7, v6, v8, v9);
      return 0;
    }

    if (v9 != 2 || (v6 | v7 | v8) != 0)
    {
      goto LABEL_16;
    }

    sub_1B1CE246C(*a1, v2, v4, 2);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_16;
    }

    v12 = *a1;
    if (v3 != v7 || v2 != v6)
    {
      v14 = sub_1B1D7C50C();
      sub_1B1CE20D4(v7, v6, v8, 0);
      sub_1B1CE20D4(v3, v2, v4, 0);
      sub_1B1CE246C(v3, v2, v4, 0);
      sub_1B1CE246C(v7, v6, v8, 0);
      return v14 & 1;
    }

    sub_1B1CE20D4(v12, v2, v8, 0);
    sub_1B1CE20D4(v3, v2, v4, 0);
    sub_1B1CE246C(v3, v2, v4, 0);
    v16 = v3;
    v17 = v2;
    v18 = v8;
    v19 = 0;
  }

  sub_1B1CE246C(v16, v17, v18, v19);
  return 1;
}

unint64_t sub_1B1D04900()
{
  result = qword_1EB7751F0;
  if (!qword_1EB7751F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7751F0);
  }

  return result;
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

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices9ASAppIconO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D049A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D049E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1D04A30(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v24 - v4;
  v6 = sub_1B1D7BBFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v24 - v12;
  v14 = [v1 extensions];
  sub_1B1D7BC0C();

  if ((*(v7 + 48))(v13, 1, v6))
  {
    result = sub_1B1CDEC18(v13, &qword_1EB7756D0, &qword_1B1D88840);
    *a1 = 2;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    (*(v7 + 16))(v10, v13, v6);
    sub_1B1CDEC18(v13, &qword_1EB7756D0, &qword_1B1D88840);
    v25 = sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v16 = sub_1B1D7BA2C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      (*(v7 + 8))(v10, v6);
      result = sub_1B1CDEC18(v5, &qword_1EB7751F8, &unk_1B1D86AF0);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v24 = sub_1B1D7BA0C();
      v21 = v22;
      v19 = sub_1B1D7BA1C();
      v20 = v23;
      (*(v7 + 8))(v10, v6);
      sub_1B1C91AE4(0, 0xF000000000000000);
      result = (*(v17 + 8))(v5, v16);
      v18 = v24;
    }

    *a1 = v25 & 1;
    *(a1 + 8) = v18;
    *(a1 + 16) = v21;
    *(a1 + 24) = v19;
    *(a1 + 32) = v20;
  }

  return result;
}

void sub_1B1D04D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  sub_1B1D05C0C(v7[0], v2, v3, v4, v5);
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v7);
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = [v1 extensions];
  if (v11 == 2)
  {
    v17 = sub_1B1D7BBFC();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  else
  {
    if (v13 >> 60 == 15)
    {
      v18 = sub_1B1D7BA2C();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }

    else
    {
      sub_1B1CE111C(v12, v13);
      sub_1B1C91B94(v14, v15);
      sub_1B1D7B9FC();
      v19 = sub_1B1D7BA2C();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    sub_1B1D7BBDC();
    sub_1B1D05BE8(v11, v12, v13, v14, v15);
    v20 = sub_1B1D7BBFC();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  }

  sub_1B1D7BC1C();
}

void (*ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.getter(v3);
  return sub_1B1D050BC;
}

void sub_1B1D050BC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  if (a2)
  {
    sub_1B1D05C0C(v4, v5, v6, v7, v8);
    ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v10);
    sub_1B1D05BE8(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v10);
  }

  free(v3);
}

id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BC2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = sub_1B1D7BC5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = [v0 extensions];
  sub_1B1D7BC6C();

  if ((*(v10 + 48))(v17, 1, v9))
  {
    sub_1B1CDEC18(v17, &unk_1EB7756C0, &unk_1B1D86B00);
    return 0;
  }

  (*(v10 + 16))(v13, v17, v9);
  sub_1B1CDEC18(v17, &unk_1EB7756C0, &unk_1B1D86B00);
  sub_1B1D7BC4C();
  (*(v2 + 16))(v6, v8, v1);
  v20 = (*(v2 + 88))(v6, v1);
  if (v20 == *MEMORY[0x1E698DF48])
  {
    v21 = 0;
  }

  else
  {
    if (v20 != *MEMORY[0x1E698DF50])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    v21 = 1;
  }

  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v13, v9);
  return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput) initWithSupportRequirement_];
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.setter(void *a1)
{
  sub_1B1D05C80(a1);
}

id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1B1D7BBFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = [v0 extensions];
  sub_1B1D7BC0C();

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1B1CDEC18(v13, &qword_1EB7756D0, &qword_1B1D88840);
    return 0;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_1B1CDEC18(v13, &qword_1EB7756D0, &qword_1B1D88840);
    sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v16 = sub_1B1D7BA2C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v4, 1, v16) == 1)
    {
      (*(v6 + 8))(v9, v5);
      sub_1B1CDEC18(v4, &qword_1EB7751F8, &unk_1B1D86AF0);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v18 = sub_1B1D7BA0C();
      v21 = v22;
      v19 = sub_1B1D7BA1C();
      v20 = v23;
      (*(v6 + 8))(v9, v5);
      sub_1B1C91AE4(0, 0xF000000000000000);
      (*(v17 + 8))(v4, v16);
    }

    v24 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput) initWithInputValues_];
    sub_1B1CDEF8C(v18, v21, v19, v20);
    return v24;
  }
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D0E548();

    v8 = sub_1B1D7BBFC();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B1D7BBFC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_1B1D7BC1C();
}

id static ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.emptyExtensions()()
{
  v0 = objc_allocWithZone(sub_1B1D7BC8C());

  return [v0 init];
}

uint64_t sub_1B1D05BE8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 2)
  {
    return sub_1B1CDEF8C(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B1D05C0C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 2)
  {
    return sub_1B1D05C30(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B1D05C30(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1B1CE111C(result, a2);

    return sub_1B1C91B94(a3, a4);
  }

  return result;
}

void sub_1B1D05C80(void *a1)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = [v1 extensions];
  if (!a1)
  {
    v16 = sub_1B1D7BC5C();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
LABEL_8:
    sub_1B1D7BC7C();

    return;
  }

  v13 = a1;
  v14 = [v13 supportRequirement];
  if (!v14)
  {
    v15 = MEMORY[0x1E698DF48];
LABEL_7:
    (*(v4 + 104))(v7, *v15, v3);
    sub_1B1D7BC3C();

    v17 = sub_1B1D7BC5C();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    goto LABEL_8;
  }

  if (v14 == 1)
  {
    v15 = MEMORY[0x1E698DF50];
    goto LABEL_7;
  }

  sub_1B1D7C32C();
  __break(1u);
}

double static ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.read.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B1D857B0;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.write(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1B1CE111C(a1, a2);
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.operation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1B1C91B94(v2, v3);
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.operation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B1C91AE4(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput.SupportRequirement.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t static ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.read(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return sub_1B1C91B94(a1, a2);
}

uint64_t static ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.write(success:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1B1CE1110(v2, v3, v4);
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B1CE1104(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = sub_1B1D7BC5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - v18;
  v20 = [v1 extensions];
  sub_1B1D7BC6C();

  if ((*(v12 + 48))(v19, 1, v11))
  {
    result = sub_1B1CDEC18(v19, &unk_1EB7756C0, &unk_1B1D86B00);
    v22 = 2;
LABEL_6:
    *a1 = v22;
    return result;
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1B1CDEC18(v19, &unk_1EB7756C0, &unk_1B1D86B00);
  sub_1B1D7BC4C();
  (*(v4 + 16))(v8, v10, v3);
  v23 = (*(v4 + 88))(v8, v3);
  if (v23 == *MEMORY[0x1E698DF48] || v23 == *MEMORY[0x1E698DF50])
  {
    v22 = v23 != *MEMORY[0x1E698DF48];
    (*(v4 + 8))(v10, v3);
    result = (*(v12 + 8))(v15, v11);
    goto LABEL_6;
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.setter(unsigned __int8 *a1)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = [v1 extensions];
  if (v12 == 2)
  {
    v14 = sub_1B1D7BC5C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  else
  {
    v15 = MEMORY[0x1E698DF50];
    if ((v12 & 1) == 0)
    {
      v15 = MEMORY[0x1E698DF48];
    }

    (*(v4 + 104))(v7, *v15, v3);
    sub_1B1D7BC3C();
    v16 = sub_1B1D7BC5C();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  sub_1B1D7BC7C();
}

void (*ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.modify(char **a1))(id **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B1D7BC2C();
  *(v5 + 1) = v6;
  v7 = *(v6 - 8);
  *(v5 + 2) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 3) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 3) = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  *(v5 + 4) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00) - 8) + 64);
  if (v3)
  {
    *(v5 + 5) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 5) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v5 + 6) = v11;
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.getter(v5 + 56);
  return sub_1B1D06760;
}

void sub_1B1D06760(id **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = [**a1 extensions];
  if (a2)
  {
    if (v4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v8 = v3[5];
      v9 = MEMORY[0x1E698DF50];
      v10 = v3[3];
      if ((v4 & 1) == 0)
      {
        v9 = MEMORY[0x1E698DF48];
      }

      (*(v3[2] + 13))(v3[3], *v9, v3[1]);
      sub_1B1D7BC3C();
      v6 = 0;
    }

    v11 = v3[5];
    v12 = v3[6];
    v14 = v3[3];
    v13 = v3[4];
    v15 = sub_1B1D7BC5C();
    (*(*(v15 - 8) + 56))(v11, v6, 1, v15);
    v16 = v11;
  }

  else
  {
    if (v4 == 2)
    {
      v7 = 1;
    }

    else
    {
      v17 = v3[6];
      v18 = MEMORY[0x1E698DF50];
      v19 = v3[4];
      if ((v4 & 1) == 0)
      {
        v18 = MEMORY[0x1E698DF48];
      }

      (*(v3[2] + 13))(v3[4], *v18, v3[1]);
      sub_1B1D7BC3C();
      v7 = 0;
    }

    v16 = v3[5];
    v20 = v3[6];
    v14 = v3[3];
    v13 = v3[4];
    v21 = sub_1B1D7BC5C();
    (*(*(v21 - 8) + 56))(v20, v7, 1, v21);
    v12 = v20;
  }

  sub_1B1D7BC7C();

  free(v12);
  free(v16);
  free(v13);
  free(v14);

  free(v3);
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = sub_1B1D7BA8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = sub_1B1D7BABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - v18;
  v20 = [v1 extensions];
  sub_1B1D7BACC();

  if ((*(v12 + 48))(v19, 1, v11))
  {
    result = sub_1B1CDEC18(v19, &qword_1EB774CD0, &qword_1B1D857C0);
    v22 = xmmword_1B1D857A0;
LABEL_7:
    *a1 = v22;
    return result;
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1B1CDEC18(v19, &qword_1EB774CD0, &qword_1B1D857C0);
  sub_1B1D7BAAC();
  (*(v4 + 16))(v8, v10, v3);
  v23 = (*(v4 + 88))(v8, v3);
  if (v23 == *MEMORY[0x1E698DF30])
  {
    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v15, v11);
    result = (*(v4 + 96))(v8, v3);
    v22 = *v8;
    goto LABEL_7;
  }

  if (v23 == *MEMORY[0x1E698DF28])
  {
    (*(v4 + 8))(v10, v3);
    result = (*(v12 + 8))(v15, v11);
    v22 = xmmword_1B1D857B0;
    goto LABEL_7;
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1B1D7BA8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = [v2 extensions];
  if (v13 >> 60 == 11)
  {
    v16 = sub_1B1D7BABC();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    if (v13 >> 60 == 15)
    {
      v17 = MEMORY[0x1E698DF28];
    }

    else
    {
      *v8 = v14;
      v8[1] = v13;
      v17 = MEMORY[0x1E698DF30];
    }

    (*(v5 + 104))(v8, *v17, v4);
    sub_1B1D7BA9C();
    v18 = sub_1B1D7BABC();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  }

  sub_1B1D7BADC();
}

void (*ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = sub_1B1D7BA8C();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  *(v5 + 48) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0) - 8) + 64);
  if (v3)
  {
    *(v5 + 56) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 56) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v5 + 64) = v11;
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.getter(v5);
  return sub_1B1D07040;
}

void sub_1B1D07040(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {
    sub_1B1D07270(**a1, v3);
    v6 = [v5 extensions];
    if (v3 >> 60 == 11)
    {
      v7 = 1;
    }

    else
    {
      v11 = v2[4];
      v10 = v2[5];
      v12 = v2[3];
      if (v3 >> 60 == 15)
      {
        v13 = MEMORY[0x1E698DF28];
      }

      else
      {
        *v10 = v4;
        v10[1] = v3;
        v13 = MEMORY[0x1E698DF30];
      }

      (*(v11 + 104))(v10, *v13, v12);
      v18 = v2[7];
      v19 = v2[5];
      sub_1B1D7BA9C();
      v7 = 0;
    }

    v21 = v2[7];
    v20 = v2[8];
    v23 = v2[5];
    v22 = v2[6];
    v24 = sub_1B1D7BABC();
    (*(*(v24 - 8) + 56))(v21, v7, 1, v24);
    sub_1B1D7BADC();

    sub_1B1D07284(*v2, v2[1]);
  }

  else
  {
    v8 = [(*a1)[2] extensions];
    if (v3 >> 60 == 11)
    {
      v9 = 1;
    }

    else
    {
      v14 = v2[6];
      v15 = v2[3];
      v16 = v2[4];
      if (v3 >> 60 == 15)
      {
        v17 = MEMORY[0x1E698DF28];
      }

      else
      {
        *v14 = v4;
        v14[1] = v3;
        v17 = MEMORY[0x1E698DF30];
      }

      (*(v16 + 104))(v14, *v17, v15);
      v25 = v2[8];
      v26 = v2[6];
      sub_1B1D7BA9C();
      v9 = 0;
    }

    v21 = v2[7];
    v20 = v2[8];
    v23 = v2[5];
    v22 = v2[6];
    v27 = sub_1B1D7BABC();
    (*(*(v27 - 8) + 56))(v20, v9, 1, v27);
    sub_1B1D7BADC();
  }

  free(v20);
  free(v21);
  free(v22);
  free(v23);

  free(v2);
}

uint64_t sub_1B1D07270(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B1C91B94(a1, a2);
  }

  return a1;
}

uint64_t sub_1B1D07284(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B1C91AE4(a1, a2);
  }

  return a1;
}

void ASAuthorizationPlatformPublicKeyCredentialRegistration.largeBlob.getter(char *a1@<X8>)
{
  v3 = sub_1B1D7BD2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = [v1 coreCredential];
  v13 = [v12 extensions];

  if (v13)
  {
    sub_1B1D7BD3C();

    if (!(*(v4 + 48))(v11, 1, v3))
    {
      (*(v4 + 16))(v7, v11, v3);
      sub_1B1CDEC18(v11, &qword_1EB774FB0, &qword_1B1D85CA0);
      v15 = sub_1B1D7BD1C();
      (*(v4 + 8))(v7, v3);
      v14 = v15 & 1;
      goto LABEL_6;
    }

    sub_1B1CDEC18(v11, &qword_1EB774FB0, &qword_1B1D85CA0);
  }

  v14 = 2;
LABEL_6:
  *a1 = v14;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertion.largeBlob.getter(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BB5C();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = sub_1B1D7BB8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v19 = [v1 coreCredential];
  v20 = [v19 extensions];

  if (!v20)
  {
    goto LABEL_4;
  }

  sub_1B1D7BB9C();

  if ((*(v11 + 48))(v18, 1, v10))
  {
    sub_1B1CDEC18(v18, &qword_1EB774D60, &qword_1B1D85830);
LABEL_4:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return;
  }

  (*(v11 + 16))(v14, v18, v10);
  sub_1B1CDEC18(v18, &qword_1EB774D60, &qword_1B1D85830);
  sub_1B1D7BB7C();
  v21 = v28;
  (*(v28 + 16))(v7, v9, v3);
  v22 = (*(v21 + 88))(v7, v3);
  v23 = v22;
  v24 = *MEMORY[0x1E698DF38];
  if (v22 == *MEMORY[0x1E698DF38])
  {
    (*(v21 + 8))(v9, v3);
    (*(v11 + 8))(v14, v10);
    (*(v21 + 96))(v7, v3);
    v26 = *v7;
    v25 = v7[1];
  }

  else
  {
    if (v22 != *MEMORY[0x1E698DF40])
    {
      sub_1B1D7C32C();
      __break(1u);
      return;
    }

    (*(v21 + 8))(v9, v3);
    (*(v11 + 8))(v14, v10);
    (*(v21 + 96))(v7, v3);
    v25 = 0;
    v26 = *v7;
  }

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v23 != v24;
}

unint64_t sub_1B1D07870()
{
  result = qword_1EB775200;
  if (!qword_1EB775200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775200);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices57ASAuthorizationPublicKeyCredentialLargeBlobAssertionInputV9OperationO(uint64_t a1)
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

uint64_t sub_1B1D078EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D07948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1B1D079A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1D079F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1B1D07A48(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASPublicKeyCredentialClientData.CrossOriginValue(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B1D07B8C()
{
  v1 = v0;
  v2 = sub_1B1D7BA8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = [v1 operation];
  if (!v10)
  {
    v11 = MEMORY[0x1E698DF28];
LABEL_6:
    (*(v3 + 104))(v9, *v11, v2);
    return sub_1B1D7BA9C();
  }

  if (v10 == 1)
  {
    v12 = [v1 dataToWrite];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B1D7B4EC();
      v16 = v15;

      *v7 = v14;
      v7[1] = v16;
      v9 = v7;
      v11 = MEMORY[0x1E698DF30];
      goto LABEL_6;
    }

    __break(1u);
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

uint64_t WBSSavedAccountStore.importableItems(for:)(uint64_t a1)
{
  v2[348] = v1;
  v2[347] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775210, &qword_1B1D871E8) - 8) + 64) + 15;
  v2[349] = swift_task_alloc();
  v4 = sub_1B1D7C08C();
  v2[350] = v4;
  v5 = *(v4 - 8);
  v2[351] = v5;
  v6 = *(v5 + 64) + 15;
  v2[352] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775218, &qword_1B1D871F0) - 8) + 64) + 15;
  v2[353] = swift_task_alloc();
  v8 = sub_1B1D7C04C();
  v2[354] = v8;
  v9 = *(v8 - 8);
  v2[355] = v9;
  v10 = *(v9 + 64) + 15;
  v2[356] = swift_task_alloc();
  v11 = sub_1B1D7B33C();
  v2[357] = v11;
  v12 = *(v11 - 8);
  v2[358] = v12;
  v13 = *(v12 + 64) + 15;
  v2[359] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775220, &unk_1B1D86850) - 8) + 64) + 15;
  v2[360] = swift_task_alloc();
  v2[361] = swift_task_alloc();
  v15 = sub_1B1D7B49C();
  v2[362] = v15;
  v16 = *(v15 - 8);
  v2[363] = v16;
  v17 = *(v16 + 64) + 15;
  v2[364] = swift_task_alloc();
  v2[365] = swift_task_alloc();
  v18 = type metadata accessor for ASImportableItem(0);
  v2[366] = v18;
  v19 = *(v18 - 8);
  v2[367] = v19;
  v20 = *(v19 + 64) + 15;
  v2[368] = swift_task_alloc();
  v2[369] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60) - 8) + 64) + 15;
  v2[370] = swift_task_alloc();
  v22 = sub_1B1D7B53C();
  v2[371] = v22;
  v23 = *(v22 - 8);
  v2[372] = v23;
  v24 = *(v23 + 64) + 15;
  v2[373] = swift_task_alloc();
  v2[374] = swift_task_alloc();
  v2[375] = swift_task_alloc();
  v2[376] = swift_task_alloc();
  v2[377] = swift_task_alloc();
  v25 = sub_1B1D7B57C();
  v2[378] = v25;
  v26 = *(v25 - 8);
  v2[379] = v26;
  v27 = *(v26 + 64) + 15;
  v2[380] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1D0815C, 0, 0);
}

uint64_t sub_1B1D0815C()
{
  v236 = v0;
  v1 = *(v0 + 2776);
  if (v1 >> 62)
  {
LABEL_98:
    v2 = sub_1B1D7C1FC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 3048) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_83:
    v167 = *(v0 + 3040);
    v168 = *(v0 + 3016);
    v169 = *(v0 + 3008);
    v170 = *(v0 + 3000);
    v171 = *(v0 + 2992);
    v172 = *(v0 + 2984);
    v173 = *(v0 + 2960);
    v174 = *(v0 + 2952);
    v175 = *(v0 + 2944);
    v211 = *(v0 + 2920);
    v213 = *(v0 + 2912);
    v216 = *(v0 + 2888);
    v219 = *(v0 + 2880);
    v222 = *(v0 + 2872);
    v225 = *(v0 + 2848);
    v229 = *(v0 + 2824);
    v232 = *(v0 + 2816);
    v234 = *(v0 + 2792);

    v176 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v4 = 0;
  v192 = (v0 + 2152);
  v193 = (v0 + 689);
  v191 = (v0 + 2096);
  v194 = (v0 + 1416);
  v195 = v0 + 2768;
  while (1)
  {
    *(v0 + 3064) = v3;
    *(v0 + 3056) = 0;
    v5 = *(v0 + 2776);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B273B2E0](v4);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    *(v0 + 3072) = v6;
    *(v0 + 3080) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_91;
    }

    v8 = [v6 user];
    if (v8)
    {
      break;
    }

LABEL_6:
    v4 = *(v0 + 3080);
    if (v4 == *(v0 + 3048))
    {
      goto LABEL_83;
    }
  }

  v9 = *(v0 + 3040);
  v10 = *(v0 + 3032);
  v11 = *(v0 + 3024);
  v12 = v8;
  v13 = sub_1B1D7BE4C();
  v15 = v14;

  v205 = v13;
  *(v0 + 3088) = v13;
  v212 = v15;
  *(v0 + 3096) = v15;
  sub_1B1D7B56C();
  v16 = sub_1B1D7B54C();
  v223 = v17;
  v226 = v16;
  v199 = *(v10 + 8);
  v199(v9, v11);
  v18 = [v7 lastModifiedDate];
  v19 = *(v0 + 3016);
  if (v18)
  {
    v20 = *(v0 + 3008);
    v21 = *(v0 + 2976);
    v22 = *(v0 + 2968);
    v23 = *(v0 + 2960);
    v24 = v18;
    sub_1B1D7B51C();

    v25 = *(v21 + 32);
    v25(v23, v20, v22);
    v230 = *(v21 + 56);
    v230(v23, 0, 1, v22);
    v25(v19, v23, v22);
    v0 = v233;
  }

  else
  {
    v26 = *(v0 + 2976);
    v27 = *(v0 + 2968);
    v28 = *(v0 + 2960);
    v230 = *(v26 + 56);
    v230(v28, 1, 1, v27);
    sub_1B1D7B52C();
    if ((*(v26 + 48))(v28, 1, v27) != 1)
    {
      sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
    }
  }

  v29 = [v7 creationDate];
  v30 = *(v0 + 2976);
  v31 = *(v0 + 2968);
  v210 = v7;
  if (v29)
  {
    v32 = *(v0 + 3000);
    v33 = *(v0 + 2992);
    v34 = v29;
    sub_1B1D7B51C();

    (*(v30 + 32))(v32, v33, v31);
    v35 = *(v30 + 16);
  }

  else
  {
    v35 = *(v30 + 16);
    (v35)(*(v0 + 3000), *(v0 + 3016), v31);
  }

  v36 = *(v0 + 3016);
  v208 = *(v0 + 3008);
  v37 = *(v0 + 3000);
  v38 = *(v0 + 2984);
  v220 = v38;
  v39 = *(v233 + 372);
  v40 = *(v233 + 371);
  v41 = *(v233 + 369);
  v0 = *(v233 + 366);
  v35();
  (v35)(v38, v36, v40);
  v42 = [v7 effectiveTitle];
  v43 = sub_1B1D7BE4C();
  v214 = v44;
  v217 = v43;

  v45 = *(v0 + 20);
  v230(v41 + v45, 1, 1, v40);
  v46 = *(v0 + 24);
  v230(v41 + v46, 1, 1, v40);
  v206 = *(v0 + 36);
  v203 = (v41 + *(v0 + 32));
  v47 = (v41 + *(v0 + 40));
  *v47 = 0;
  v47[1] = 0;
  *v41 = v226;
  v41[1] = v223;
  sub_1B1CDEC18(v41 + v45, &qword_1EB775228, &qword_1B1D88D60);
  v48 = *(v39 + 32);
  v48(v41 + v45, v208, v40);
  v230(v41 + v45, 0, 1, v40);
  sub_1B1CDEC18(v41 + v46, &qword_1EB775228, &qword_1B1D88D60);
  v48(v41 + v46, v220, v40);
  v49 = v233;
  v230(v41 + v46, 0, 1, v40);
  v50 = v210;
  v51 = (v41 + *(v0 + 28));
  *v51 = v217;
  v51[1] = v214;
  *v203 = 0;
  v203[1] = 0;
  *(v41 + v206) = 0;
  v52 = v47[1];
  sub_1B1D0C93C(*v47);
  *v47 = 0;
  v47[1] = 0;
  v197 = v47;
  v53 = *(v0 + 48);
  *(v233 + 343) = v53;
  v54 = MEMORY[0x1E69E7CC0];
  v207 = v53;
  v209 = v41;
  *(v41 + v53) = MEMORY[0x1E69E7CC0];
  *(v41 + *(v0 + 44)) = v54;
  v55 = [v210 password];
  if (v55)
  {
    v56 = *(v233 + 380);
    v57 = *(v233 + 378);
    v58 = v55;
    v196 = sub_1B1D7BE4C();
    v204 = v59;

    sub_1B1D7B56C();
    v60 = sub_1B1D7B54C();
    v62 = v61;
    v199(v56, v57);
    sub_1B1D7B56C();
    v63 = sub_1B1D7B54C();
    v65 = v64;
    v199(v56, v57);

    v201 = v62;
    v202 = v60;
    sub_1B1CE111C(v60, v62);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v198 = v65;
    v200 = v63;
    sub_1B1CE111C(v63, v65);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v66 = [v210 userVisibleSites];
    if (v66)
    {
      v67 = v66;
      v68 = sub_1B1D7BEEC();
    }

    else
    {
      v68 = MEMORY[0x1E69E7CC0];
    }

    *v195 = v68;
    v0 = [v210 additionalSites];
    v69 = sub_1B1D7BEEC();

    sub_1B1D0C45C(v69);
    sub_1B1C91B94(v202, v62);

    sub_1B1C91B94(v63, v65);

    sub_1B1D0D630(0, 0, 0, 0, 0);
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v70 = *v195;
    v227 = *(*v195 + 16);
    if (v227)
    {
      v71 = 0;
      v72 = (v70 + 40);
      v231 = MEMORY[0x1E69E7CC0];
      v224 = *v195;
      while (v71 < *(v70 + 16))
      {
        v73 = v49[363];
        v74 = v49[362];
        v75 = v49[360];
        v76 = v49[359];
        v78 = *(v72 - 1);
        v77 = *v72;
        sub_1B1D7B32C();
        sub_1B1D7B31C();

        MEMORY[0x1B273A360](v78, v77);
        sub_1B1D7B2FC();
        v79 = v74;
        v80 = *(v73 + 48);
        if (v80(v75, 1, v79) == 1)
        {
          sub_1B1CDEC18(v49[360], &qword_1EB775220, &unk_1B1D86850);
          if (qword_1EB7749B8 != -1)
          {
            swift_once();
          }

          v81 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v81, qword_1EB782530);

          v82 = sub_1B1D7BD6C();
          v83 = sub_1B1D7C00C();

          v84 = os_log_type_enabled(v82, v83);
          v85 = v49[358];
          v218 = v49[357];
          v221 = v49[359];
          if (v84)
          {
            v86 = swift_slowAlloc();
            v215 = v80;
            v87 = swift_slowAlloc();
            v235 = v87;
            *v86 = 136315138;
            *(v86 + 4) = sub_1B1D0D070(v78, v77, &v235);
            _os_log_impl(&dword_1B1C8D000, v82, v83, "Could not create URL from %s", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v87);
            v88 = v87;
            v80 = v215;
            MEMORY[0x1B273C4C0](v88, -1, -1);
            v89 = v86;
            v49 = v233;
            MEMORY[0x1B273C4C0](v89, -1, -1);
          }

          v90 = *(v85 + 8);
          v0 = v85 + 8;
          v90(v221, v218);
          v91 = 1;
        }

        else
        {
          v92 = v49[363];
          v93 = v49[362];
          v94 = v49[361];
          v95 = v49[360];
          (*(v49[358] + 8))(v49[359], v49[357]);
          v96 = *(v92 + 32);
          v0 = v92 + 32;
          v96(v94, v95, v93);
          v91 = 0;
        }

        v97 = v49[362];
        v98 = v49[361];
        (*(v49[363] + 56))(v98, v91, 1, v97);
        if (v80(v98, 1, v97) == 1)
        {
          sub_1B1CDEC18(v49[361], &qword_1EB775220, &unk_1B1D86850);
        }

        else
        {
          v99 = v49[365];
          v100 = v49[364];
          v101 = v49[363];
          v102 = v49;
          v103 = v49[362];
          v105 = *(v101 + 32);
          v0 = v101 + 32;
          v104 = v105;
          v105(v99, v102[361], v103);
          v105(v100, v99, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v231 = sub_1B1D0CD88(0, *(v231 + 2) + 1, 1, v231, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
          }

          v49 = v233;
          v107 = *(v231 + 2);
          v106 = *(v231 + 3);
          if (v107 >= v106 >> 1)
          {
            v231 = sub_1B1D0CD88(v106 > 1, v107 + 1, 1, v231, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
          }

          v108 = *(v233 + 364);
          v109 = *(v233 + 363);
          v110 = *(v233 + 362);
          *(v231 + 2) = v107 + 1;
          v104(&v231[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v107], v108, v110);
        }

        ++v71;
        v72 += 2;
        v70 = v224;
        if (v227 == v71)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v231 = MEMORY[0x1E69E7CC0];
LABEL_43:

    v111 = v197[1];
    sub_1B1D0C93C(*v197);
    *v197 = v231;
    v112 = MEMORY[0x1E69E7CC0];
    v197[1] = MEMORY[0x1E69E7CC0];
    v54 = sub_1B1D0CAE4(0, 1, 1, v112);
    v0 = *(v54 + 2);
    v113 = *(v54 + 3);
    if (v0 >= v113 >> 1)
    {
      v54 = sub_1B1D0CAE4((v113 > 1), v0 + 1, 1, v54);
    }

    sub_1B1C91AE4(v200, v198);

    sub_1B1C91AE4(v202, v201);

    sub_1B1CDEFDC(v200, v198);
    v49[257] = v202;
    *(v49 + 129) = v201;
    v49[260] = v205;
    v49[261] = v212;
    *v191 = 0;
    v191[1] = 0;
    v49[264] = v200;
    v49[265] = v198;
    v49[266] = 1;
    v49[267] = v196;
    v49[268] = v204;
    *v192 = 0;
    v192[1] = 0;
    sub_1B1D0D67C((v49 + 257));
    sub_1B1CDEFDC(v202, v201);
    *(v54 + 2) = v0 + 1;
    memcpy(&v54[680 * v0 + 32], v49 + 257, 0x2A1uLL);
    *(v209 + v207) = v54;
    v50 = v210;
  }

  v114 = [v50 totpGenerators];
  sub_1B1D0C97C();
  v115 = sub_1B1D7BEEC();

  if (v115 >> 62)
  {
    if (sub_1B1D7C1FC())
    {
      goto LABEL_48;
    }

LABEL_64:

    goto LABEL_65;
  }

  if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_48:
  if ((v115 & 0xC000000000000001) != 0)
  {
    v116 = MEMORY[0x1B273B2E0](0, v115);
  }

  else
  {
    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_93;
    }

    v116 = *(v115 + 32);
  }

  v117 = v116;

  v118 = [v117 algorithm];
  if (v118 == 2)
  {
    v0 = 2;
  }

  else
  {
    v0 = v118 == 1;
  }

  v119 = [v117 keyData];
  v120 = sub_1B1D7B4EC();
  v122 = v121;

  v123 = [v117 codeGenerationPeriod];
  if ((v123 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  v124 = v123;
  if (v123 >> 16)
  {
    goto LABEL_94;
  }

  v125 = [v117 numberOfDigitsInCode];
  if ((v125 & 0x8000000000000000) != 0)
  {
    goto LABEL_95;
  }

  v126 = v125;
  if (v125 >> 16)
  {
    goto LABEL_96;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1B1D0CAE4(0, *(v54 + 2) + 1, 1, v54);
  }

  v128 = *(v54 + 2);
  v127 = *(v54 + 3);
  if (v128 >= v127 >> 1)
  {
    v54 = sub_1B1D0CAE4((v127 > 1), v128 + 1, 1, v54);
  }

  *(v233 + 2) = v120;
  *(v233 + 3) = v122;
  *(v233 + 16) = v124;
  *(v233 + 17) = v126;
  *(v233 + 5) = v205;
  *(v233 + 6) = v212;
  v233[56] = v0;
  *(v233 + 57) = *v193;
  *(v233 + 15) = *(v193 + 3);
  *(v233 + 8) = 0;
  *(v233 + 9) = 0;
  sub_1B1D0CC00((v233 + 16));
  *(v54 + 2) = v128 + 1;
  v129 = &v54[680 * v128];
  v49 = v233;
  memcpy(v129 + 32, v233 + 16, 0x2A1uLL);
  *(v209 + v207) = v54;
LABEL_65:
  v130 = [v50 notesEntry];
  if (v130)
  {
    v131 = v130;
    v132 = sub_1B1D7BE4C();
    v134 = v133;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1B1D0CAE4(0, *(v54 + 2) + 1, 1, v54);
    }

    v136 = *(v54 + 2);
    v135 = *(v54 + 3);
    v49 = v233;
    if (v136 >= v135 >> 1)
    {
      v54 = sub_1B1D0CAE4((v135 > 1), v136 + 1, 1, v54);
    }

    *(v233 + 86) = xmmword_1B1D857B0;
    v233[1392] = 0;
    *(v233 + 175) = v132;
    *(v233 + 176) = v134;
    *v194 = 0;
    v194[1] = 0;
    sub_1B1D0D624((v233 + 1376));
    *(v54 + 2) = v136 + 1;
    memcpy(&v54[680 * v136 + 32], v233 + 1376, 0x2A1uLL);
    *(v209 + v207) = v54;
  }

  v49[388] = v54;
  v137 = v49[355];
  v138 = v49[354];
  v139 = v49[353];
  sub_1B1D7C05C();
  if ((*(v137 + 48))(v139, 1, v138) == 1)
  {
    v140 = v49[353];

    sub_1B1CDEC18(v140, &qword_1EB775218, &qword_1B1D871F0);
LABEL_77:
    v154 = v49[383];
    sub_1B1D0CC0C(v49[369], v49[368]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v49[383];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v156 = sub_1B1D0CD88(0, v156[2] + 1, 1, v49[383], &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v158 = v156[2];
    v157 = v156[3];
    if (v158 >= v157 >> 1)
    {
      v156 = sub_1B1D0CD88(v157 > 1, v158 + 1, 1, v156, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v159 = v49[384];
    v160 = v49[377];
    v161 = *(v233 + 375);
    v162 = *(v233 + 372);
    v163 = *(v233 + 371);
    v228 = *(v233 + 369);
    v164 = *(v233 + 368);
    v165 = *(v233 + 367);

    v166 = *(v162 + 8);
    v0 = v233;
    v166(v161, v163);
    v166(v160, v163);
    v3 = v156;
    v156[2] = v158 + 1;
    sub_1B1D0CC70(v164, v156 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v158);
    sub_1B1D0CCD4(v228);
    goto LABEL_6;
  }

  v141 = v49[351];
  v142 = v49[350];
  v143 = v49[349];
  (*(v49[355] + 32))(v49[356], v49[353], v49[354]);
  sub_1B1D7C0AC();
  v144 = (*(v141 + 48))(v143, 1, v142);
  v145 = v49[349];
  if (v144 == 1)
  {
    (*(v49[355] + 8))(v49[356], v49[354]);

    sub_1B1CDEC18(v145, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_77;
  }

  (*(v49[351] + 32))(v49[352], v49[349], v49[350]);
  v146 = [v50 passkeyUserHandle];
  v147 = v49[356];
  if (!v146)
  {
    v148 = v49[355];
    v149 = v49[354];
    v150 = v49[352];
    v151 = v49[351];
    v152 = *(v233 + 350);

    v153 = v152;
    v49 = v233;
    (*(v151 + 8))(v150, v153);
    (*(v148 + 8))(v147, v149);
    goto LABEL_77;
  }

  v177 = v146;
  v178 = sub_1B1D7BE4C();
  v180 = v179;

  *(v233 + 389) = v178;
  *(v233 + 390) = v180;
  sub_1B1D7C03C();
  v181 = sub_1B1D7B4CC();
  v183 = v182;

  *(v233 + 391) = v181;
  *(v233 + 392) = v183;
  if (v183 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v233 + 393) = [*(v233 + 348) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v187 = sub_1B1D7BF0C();
    v189 = v188;
    v184 = sub_1B1D09590;
    v185 = v187;
    v186 = v189;
  }

  return MEMORY[0x1EEE6DFA0](v184, v185, v186);
}

uint64_t sub_1B1D09590()
{
  v1 = v0[393];
  v2 = v0[392];
  v3 = v0[391];
  v4 = v0[382];
  v5 = sub_1B1D7B58C();
  v0[394] = v4;
  v0[395] = v5;
  v0[396] = v6;
  if (v4)
  {
    v7 = sub_1B1D0ADB4;
  }

  else
  {
    v8 = v0[393];

    v7 = sub_1B1D09634;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1D09634()
{
  v276 = v0;
  v1 = *(v0 + 3168);
  sub_1B1C91AE4(*(v0 + 3128), *(v0 + 3136));
  if (v1 >> 60 != 15)
  {
    v10 = *(v0 + 2848);
    sub_1B1D7C03C();
    v11 = sub_1B1D7B4CC();
    v13 = v12;

    if (v13 >> 60 == 15)
    {
      v14 = *(v0 + 3168);
      v15 = *(v0 + 3160);
      v16 = *(v0 + 3120);
      v17 = *(v0 + 3096);
      v18 = *(v0 + 2848);
      v19 = *(v0 + 2840);
      v20 = *(v0 + 2832);
      v21 = *(v0 + 2816);
      v22 = *(v0 + 2808);
      v23 = *(v0 + 2800);

      sub_1B1C91AE4(v15, v14);

      (*(v22 + 8))(v21, v23);
      (*(v19 + 8))(v18, v20);
    }

    else
    {
      v24 = *(v0 + 3120);
      v25 = *(v0 + 3112);
      v26 = sub_1B1D7B4CC();
      v28 = v27;

      v29 = *(v0 + 3168);
      v30 = *(v0 + 3160);
      if (v28 >> 60 != 15)
      {
        v36 = *(v0 + 3104);
        v37 = *(v0 + 3096);
        v38 = *(v0 + 2816);
        sub_1B1CE111C(v11, v13);
        v39 = sub_1B1D7C03C();
        v265 = v40;
        v268 = v39;

        sub_1B1C91B94(v26, v28);
        sub_1B1C91B94(v30, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v0 + 3104);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_8;
        }

        goto LABEL_108;
      }

      v31 = *(v0 + 3096);
      v32 = *(v0 + 2840);
      v267 = *(v0 + 2832);
      v270 = *(v0 + 2848);
      v33 = *(v0 + 2816);
      v34 = *(v0 + 2808);
      v35 = *(v0 + 2800);
      sub_1B1C91AE4(v30, v29);
      sub_1B1C91AE4(v11, v13);

      (*(v34 + 8))(v33, v35);
      (*(v32 + 8))(v270, v267);
    }

    goto LABEL_11;
  }

  v241 = *(v0 + 3152);
  v2 = *(v0 + 3120);
  v3 = *(v0 + 3096);
  v4 = *(v0 + 2848);
  v5 = *(v0 + 2840);
  v6 = *(v0 + 2832);
  v7 = *(v0 + 2816);
  v8 = *(v0 + 2808);
  v9 = *(v0 + 2800);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  while (1)
  {
    v228 = (v0 + 2768);
LABEL_13:
    v53 = *(v0 + 3064);
    sub_1B1D0CC0C(*(v0 + 2952), *(v0 + 2944));
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v0 + 3064);
    if ((v54 & 1) == 0)
    {
      v55 = sub_1B1D0CD88(0, v55[2] + 1, 1, *(v0 + 3064), &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v57 = v55[2];
    v56 = v55[3];
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1B1D0CD88(v56 > 1, v57 + 1, 1, v55, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v58 = *(v0 + 3016);
    v59 = *(v0 + 3000);
    v60 = *(v0 + 2976);
    v28 = *(v0 + 2968);
    v268 = *(v0 + 2952);
    v61 = *(v0 + 2944);
    v62 = *(v0 + 2936);

    v63 = *(v60 + 8);
    v63(v59, v28);
    v63(v58, v28);
    v55[2] = v57 + 1;
    sub_1B1D0CC70(v61, v55 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v57);
    sub_1B1D0CCD4(v268);
    v13 = *(v0 + 3080);
    v11 = v241;
    v26 = &selRef_stringWithFormat_;
    if (v13 == *(v0 + 3048))
    {
LABEL_93:
      v200 = *(v0 + 3040);
      v201 = *(v0 + 3016);
      v202 = *(v0 + 3008);
      v203 = *(v0 + 3000);
      v204 = *(v0 + 2992);
      v205 = *(v0 + 2984);
      v206 = *(v0 + 2960);
      v207 = *(v0 + 2952);
      v208 = *(v0 + 2944);
      v246 = *(v0 + 2920);
      v249 = *(v0 + 2912);
      v253 = *(v0 + 2888);
      v257 = *(v0 + 2880);
      v261 = *(v0 + 2872);
      v264 = *(v0 + 2848);
      v266 = *(v0 + 2824);
      v269 = *(v0 + 2816);
      v274 = *(v0 + 2792);

      v209 = *(v0 + 8);

      __asm { BRAA            X2, X16 }
    }

    while (1)
    {
      *(v0 + 3064) = v55;
      *(v0 + 3056) = v241;
      v64 = *(v0 + 2776);
      if ((v64 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1B273B2E0](v13);
      }

      else
      {
        if (v13 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        v65 = *(v64 + 8 * v13 + 32);
      }

      v66 = v65;
      *(v0 + 3072) = v65;
      *(v0 + 3080) = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_97;
      }

      v67 = [v65 user];
      if (v67)
      {
        break;
      }

      v13 = *(v0 + 3080);
      if (v13 == *(v0 + 3048))
      {
        goto LABEL_93;
      }
    }

    v68 = *(v0 + 3040);
    v69 = *(v0 + 3032);
    v70 = *(v0 + 3024);
    v71 = v67;
    v72 = sub_1B1D7BE4C();
    v74 = v73;

    v237 = v72;
    *(v0 + 3088) = v72;
    v248 = v74;
    *(v0 + 3096) = v74;
    sub_1B1D7B56C();
    v75 = sub_1B1D7B54C();
    v77 = v76;
    v78 = *(v69 + 8);
    v78(v68, v70);
    v79 = [v66 lastModifiedDate];
    v80 = *(v0 + 3016);
    v268 = v77;
    v272 = v75;
    if (v79)
    {
      v81 = *(v0 + 3008);
      v82 = *(v0 + 2976);
      v83 = *(v0 + 2968);
      v84 = *(v0 + 2960);
      v85 = v79;
      sub_1B1D7B51C();

      v86 = *(v82 + 32);
      v86(v84, v81, v83);
      v265 = *(v82 + 56);
      v265(v84, 0, 1, v83);
      v86(v80, v84, v83);
    }

    else
    {
      v87 = *(v0 + 2976);
      v88 = *(v0 + 2968);
      v89 = *(v0 + 2960);
      v265 = *(v87 + 56);
      v265(v89, 1, 1, v88);
      sub_1B1D7B52C();
      if ((*(v87 + 48))(v89, 1, v88) != 1)
      {
        sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
      }
    }

    v245 = v66;
    v90 = [v66 creationDate];
    v91 = *(v0 + 2976);
    v92 = *(v0 + 2968);
    v229 = v78;
    if (v90)
    {
      v93 = *(v0 + 3000);
      v94 = *(v0 + 2992);
      v95 = v90;
      sub_1B1D7B51C();

      (*(v91 + 32))(v93, v94, v92);
      v96 = *(v91 + 16);
    }

    else
    {
      v96 = *(v91 + 16);
      (v96)(*(v0 + 3000), *(v0 + 3016), v92);
    }

    v97 = *(v0 + 3016);
    v251 = *(v0 + 3008);
    v98 = *(v0 + 3000);
    v99 = *(v0 + 2984);
    v239 = *(v0 + 2976);
    v100 = *(v0 + 2968);
    v11 = *(v0 + 2952);
    v101 = *(v0 + 2928);
    v96();
    (v96)(v99, v97, v100);
    v102 = [v245 effectiveTitle];
    v103 = sub_1B1D7BE4C();
    v255 = v104;
    v259 = v103;

    v105 = v101[5];
    v265(v11 + v105, 1, 1, v100);
    v106 = v101[6];
    v265(v11 + v106, 1, 1, v100);
    v233 = (v11 + v101[8]);
    v235 = v101[9];
    v107 = (v11 + v101[10]);
    *v107 = 0;
    v107[1] = 0;
    *v11 = v272;
    *(v11 + 8) = v268;
    sub_1B1CDEC18(v11 + v105, &qword_1EB775228, &qword_1B1D88D60);
    v108 = *(v239 + 32);
    v108(v11 + v105, v251, v100);
    v265(v11 + v105, 0, 1, v100);
    sub_1B1CDEC18(v11 + v106, &qword_1EB775228, &qword_1B1D88D60);
    v108(v11 + v106, v99, v100);
    v109 = v245;
    v265(v11 + v106, 0, 1, v100);
    v110 = (v11 + v101[7]);
    *v110 = v259;
    v110[1] = v255;
    *v233 = 0;
    v233[1] = 0;
    *(v11 + v235) = 0;
    v111 = v107[1];
    sub_1B1D0C93C(*v107);
    *v107 = 0;
    v107[1] = 0;
    v227 = v107;
    v112 = v101[12];
    *(v0 + 1372) = v112;
    v28 = MEMORY[0x1E69E7CC0];
    *(v11 + v112) = MEMORY[0x1E69E7CC0];
    v240 = v11;
    *(v11 + v101[11]) = v28;
    v113 = [v245 password];
    v236 = v112;
    if (v113)
    {
      v114 = *(v0 + 3040);
      v115 = *(v0 + 3024);
      v116 = v113;
      v224 = sub_1B1D7BE4C();
      v234 = v117;

      sub_1B1D7B56C();
      v118 = sub_1B1D7B54C();
      v120 = v119;
      v229(v114, v115);
      sub_1B1D7B56C();
      v121 = sub_1B1D7B54C();
      v123 = v122;
      v229(v114, v115);

      v232 = v120;
      sub_1B1CE111C(v118, v120);
      sub_1B1C91AE4(0, 0xF000000000000000);
      v230 = v123;
      v231 = v121;
      sub_1B1CE111C(v121, v123);
      sub_1B1C91AE4(0, 0xF000000000000000);
      v124 = [v245 userVisibleSites];
      if (v124)
      {
        v125 = v124;
        v26 = MEMORY[0x1E69E6158];
        v126 = sub_1B1D7BEEC();

        v28 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
        v126 = MEMORY[0x1E69E7CC0];
        v26 = MEMORY[0x1E69E6158];
      }

      *v228 = v126;
      v128 = [v245 additionalSites];
      v13 = sub_1B1D7BEEC();

      sub_1B1D0C45C(v13);
      v226 = v118;
      sub_1B1C91B94(v118, v232);

      sub_1B1C91B94(v231, v230);

      sub_1B1D0D630(0, 0, 0, 0, 0);
      sub_1B1D0D630(0, 0, 0, 0, 0);
      v129 = *v228;
      v268 = *(*v228 + 16);
      if (v268)
      {
        v11 = 0;
        v130 = (v129 + 40);
        v273 = v28;
        v260 = *v228;
        while (v11 < *(v129 + 16))
        {
          v131 = *(v0 + 2904);
          v132 = *(v0 + 2896);
          v133 = *(v0 + 2880);
          v134 = *(v0 + 2872);
          v135 = *(v130 - 1);
          v28 = *v130;
          sub_1B1D7B32C();
          sub_1B1D7B31C();

          MEMORY[0x1B273A360](v135, v28);
          sub_1B1D7B2FC();
          v136 = v133;
          v137 = *(v131 + 48);
          if ((v137)(v136, 1, v132) == 1)
          {
            v256 = v135;
            v265 = v137;
            sub_1B1CDEC18(*(v0 + 2880), &qword_1EB775220, &unk_1B1D86850);
            if (qword_1EB7749B8 != -1)
            {
              swift_once();
            }

            v138 = sub_1B1D7BD8C();
            __swift_project_value_buffer(v138, qword_1EB782530);

            v139 = sub_1B1D7BD6C();
            v140 = sub_1B1D7C00C();

            v141 = os_log_type_enabled(v139, v140);
            v142 = *(v0 + 2872);
            v143 = *(v0 + 2864);
            v263 = *(v0 + 2856);
            if (v141)
            {
              v144 = swift_slowAlloc();
              v252 = v142;
              v145 = swift_slowAlloc();
              v275 = v145;
              *v144 = 136315138;
              *(v144 + 4) = sub_1B1D0D070(v256, v28, &v275);
              _os_log_impl(&dword_1B1C8D000, v139, v140, "Could not create URL from %s", v144, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v145);
              MEMORY[0x1B273C4C0](v145, -1, -1);
              v146 = v144;
              v129 = v260;
              MEMORY[0x1B273C4C0](v146, -1, -1);

              v147 = *(v143 + 8);
              v26 = v143 + 8;
              v147(v252, v263);
            }

            else
            {

              v153 = *(v143 + 8);
              v26 = v143 + 8;
              v153(v142, v263);
            }

            v152 = 1;
            v137 = v265;
          }

          else
          {
            v148 = *(v0 + 2904);
            v149 = *(v0 + 2896);
            v150 = *(v0 + 2888);
            v26 = *(v0 + 2880);
            (*(*(v0 + 2864) + 8))(*(v0 + 2872), *(v0 + 2856));
            v151 = *(v148 + 32);
            v28 = v148 + 32;
            v151(v150, v26, v149);
            v152 = 0;
          }

          v154 = *(v0 + 2896);
          v13 = *(v0 + 2888);
          (*(*(v0 + 2904) + 56))(v13, v152, 1, v154);
          if ((v137)(v13, 1, v154) == 1)
          {
            sub_1B1CDEC18(*(v0 + 2888), &qword_1EB775220, &unk_1B1D86850);
          }

          else
          {
            v155 = *(v0 + 2920);
            v156 = *(v0 + 2912);
            v157 = *(v0 + 2904);
            v26 = *(v0 + 2896);
            v159 = *(v157 + 32);
            v28 = v157 + 32;
            v158 = v159;
            v159(v155, *(v0 + 2888), v26);
            v159(v156, v155, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v273 = sub_1B1D0CD88(0, *(v273 + 2) + 1, 1, v273, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
            }

            v13 = *(v273 + 2);
            v160 = *(v273 + 3);
            if (v13 >= v160 >> 1)
            {
              v273 = sub_1B1D0CD88(v160 > 1, v13 + 1, 1, v273, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
            }

            v161 = *(v0 + 2912);
            v162 = *(v0 + 2904);
            v163 = *(v0 + 2896);
            *(v273 + 2) = v13 + 1;
            v158(&v273[((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v13], v161, v163);
            v129 = v260;
          }

          ++v11;
          v130 += 2;
          if (v268 == v11)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v273 = v28;
LABEL_58:

      v164 = v227[1];
      sub_1B1D0C93C(*v227);
      *v227 = v273;
      v165 = MEMORY[0x1E69E7CC0];
      v227[1] = MEMORY[0x1E69E7CC0];
      v127 = sub_1B1D0CAE4(0, 1, 1, v165);
      v167 = *(v127 + 2);
      v166 = *(v127 + 3);
      if (v167 >= v166 >> 1)
      {
        v127 = sub_1B1D0CAE4((v166 > 1), v167 + 1, 1, v127);
      }

      v28 = v234;
      sub_1B1C91AE4(v231, v230);

      sub_1B1C91AE4(v226, v232);
      v11 = v248;

      sub_1B1CDEFDC(v231, v230);
      *(v0 + 2056) = v226;
      *(v0 + 2064) = v232;
      *(v0 + 2072) = 0;
      *(v0 + 2080) = v237;
      *(v0 + 2088) = v248;
      *(v0 + 2096) = 0;
      *(v0 + 2104) = 0;
      *(v0 + 2112) = v231;
      *(v0 + 2120) = v230;
      *(v0 + 2128) = 1;
      *(v0 + 2136) = v225;
      *(v0 + 2144) = v234;
      *(v0 + 2152) = 0;
      *(v0 + 2160) = 0;
      sub_1B1D0D67C(v0 + 2056);
      sub_1B1CDEFDC(v226, v232);
      *(v127 + 2) = v167 + 1;
      memcpy(&v127[680 * v167 + 32], (v0 + 2056), 0x2A1uLL);
      *(v240 + v236) = v127;
      v112 = v236;
      v109 = v245;
    }

    else
    {
      v127 = v28;
    }

    v13 = [v109 totpGenerators];
    sub_1B1D0C97C();
    v26 = sub_1B1D7BEEC();

    if (v26 >> 62)
    {
      if (!sub_1B1D7C1FC())
      {
LABEL_79:

        goto LABEL_80;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_79;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v168 = MEMORY[0x1B273B2E0](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v168 = *(v26 + 32);
    }

    v13 = v168;

    v169 = [v13 algorithm];
    if (v169 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v169 == 1;
    }

    v170 = [v13 keyData];
    v26 = sub_1B1D7B4EC();
    v28 = v171;

    v172 = [v13 codeGenerationPeriod];
    if ((v172 & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    v173 = v172;
    if (v172 >> 16)
    {
      goto LABEL_105;
    }

    v174 = [v13 numberOfDigitsInCode];
    if ((v174 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    v42 = sub_1B1D0CAE4(0, *(v42 + 2) + 1, 1, v42);
LABEL_8:
    v43 = v28;
    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    v258 = v45 + 1;
    v262 = v45;
    if (v45 >= v44 >> 1)
    {
      v46 = v26;
      v47 = v11;
      v271 = sub_1B1D0CAE4((v44 > 1), v45 + 1, 1, v42);
    }

    else
    {
      v271 = v42;
      v46 = v26;
      v47 = v11;
    }

    v238 = *(v0 + 3168);
    v48 = *(v0 + 3160);
    v49 = *(v0 + 3096);
    v50 = *(v0 + 3088);
    v250 = *(v0 + 2952);
    v254 = *(v0 + 1372);
    v247 = *(v0 + 2848);
    v51 = *(v0 + 2840);
    v244 = *(v0 + 2832);
    v52 = *(v0 + 2808);
    v242 = *(v0 + 2800);
    v243 = *(v0 + 2816);
    sub_1B1C91AE4(v48, v238);
    sub_1B1C91AE4(v46, v43);
    sub_1B1C91AE4(v47, v13);
    *(v0 + 696) = v47;
    *(v0 + 704) = v13;
    *(v0 + 712) = v268;
    *(v0 + 720) = v265;
    *(v0 + 728) = v50;
    *(v0 + 736) = v49;
    *(v0 + 744) = v50;
    *(v0 + 752) = v49;
    *(v0 + 760) = v46;
    *(v0 + 768) = v43;
    *(v0 + 776) = v48;
    *(v0 + 784) = v238;
    sub_1B1D0D618(v0 + 696);
    (*(v52 + 8))(v243, v242);
    (*(v51 + 8))(v247, v244);
    *(v271 + 2) = v258;
    memcpy(&v271[680 * v262 + 32], (v0 + 696), 0x2A1uLL);
    *(v250 + v254) = v271;
LABEL_11:
    v241 = *(v0 + 3152);
  }

  v175 = v174;
  if (v174 >> 16)
  {
    goto LABEL_107;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = sub_1B1D0CAE4(0, *(v127 + 2) + 1, 1, v127);
  }

  v177 = *(v127 + 2);
  v176 = *(v127 + 3);
  if (v177 >= v176 >> 1)
  {
    v127 = sub_1B1D0CAE4((v176 > 1), v177 + 1, 1, v127);
  }

  *(v0 + 16) = v26;
  *(v0 + 24) = v28;
  *(v0 + 32) = v173;
  *(v0 + 34) = v175;
  *(v0 + 40) = v237;
  *(v0 + 48) = v248;
  *(v0 + 56) = v11;
  *(v0 + 57) = *(v0 + 689);
  *(v0 + 60) = *(v0 + 692);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_1B1D0CC00(v0 + 16);
  *(v127 + 2) = v177 + 1;
  memcpy(&v127[680 * v177 + 32], (v0 + 16), 0x2A1uLL);
  v112 = v236;
  *(v240 + v236) = v127;
  v109 = v245;
LABEL_80:
  v178 = [v109 notesEntry];
  if (v178)
  {
    v179 = v178;
    v180 = sub_1B1D7BE4C();
    v182 = v181;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_1B1D0CAE4(0, *(v127 + 2) + 1, 1, v127);
    }

    v184 = *(v127 + 2);
    v183 = *(v127 + 3);
    if (v184 >= v183 >> 1)
    {
      v127 = sub_1B1D0CAE4((v183 > 1), v184 + 1, 1, v127);
    }

    *(v0 + 1376) = xmmword_1B1D857B0;
    *(v0 + 1392) = 0;
    *(v0 + 1400) = v180;
    *(v0 + 1408) = v182;
    *(v0 + 1416) = 0;
    *(v0 + 1424) = 0;
    sub_1B1D0D624(v0 + 1376);
    *(v127 + 2) = v184 + 1;
    memcpy(&v127[680 * v184 + 32], (v0 + 1376), 0x2A1uLL);
    *(v240 + v112) = v127;
  }

  *(v0 + 3104) = v127;
  v185 = *(v0 + 2840);
  v186 = *(v0 + 2832);
  v187 = *(v0 + 2824);
  sub_1B1D7C05C();
  if ((*(v185 + 48))(v187, 1, v186) == 1)
  {
    v188 = *(v0 + 2824);

    sub_1B1CDEC18(v188, &qword_1EB775218, &qword_1B1D871F0);
    goto LABEL_13;
  }

  v189 = *(v0 + 2808);
  v190 = *(v0 + 2800);
  v191 = *(v0 + 2792);
  (*(*(v0 + 2840) + 32))(*(v0 + 2848), *(v0 + 2824), *(v0 + 2832));
  sub_1B1D7C0AC();
  v192 = (*(v189 + 48))(v191, 1, v190);
  v193 = *(v0 + 2792);
  if (v192 == 1)
  {
    (*(*(v0 + 2840) + 8))(*(v0 + 2848), *(v0 + 2832));

    sub_1B1CDEC18(v193, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_13;
  }

  (*(*(v0 + 2808) + 32))(*(v0 + 2816), *(v0 + 2792), *(v0 + 2800));
  v65 = [v109 passkeyUserHandle];
  v194 = *(v0 + 2848);
  if (!v65)
  {
    v195 = *(v0 + 2840);
    v196 = *(v0 + 2832);
    v197 = *(v0 + 2816);
    v198 = *(v0 + 2808);
    v199 = *(v0 + 2800);

    (*(v198 + 8))(v197, v199);
    (*(v195 + 8))(v194, v196);
    goto LABEL_13;
  }

LABEL_97:
  v210 = v65;
  v211 = sub_1B1D7BE4C();
  v213 = v212;

  *(v0 + 3112) = v211;
  *(v0 + 3120) = v213;
  sub_1B1D7C03C();
  v214 = sub_1B1D7B4CC();
  v216 = v215;

  *(v0 + 3128) = v214;
  *(v0 + 3136) = v216;
  if (v216 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 3144) = [*(v0 + 2784) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v220 = sub_1B1D7BF0C();
    v222 = v221;
    v217 = sub_1B1D09590;
    v218 = v220;
    v219 = v222;
  }

  return MEMORY[0x1EEE6DFA0](v217, v218, v219);
}

uint64_t sub_1B1D0ADB4()
{
  v248 = v0;
  v1 = *(v0 + 3144);
  v2 = *(v0 + 3136);
  v3 = *(v0 + 3128);

  sub_1B1C91AE4(v3, v2);
  if (qword_1EB7749B8 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v4 = *(v0 + 3152);
    v227 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v227, qword_1EB782530);
    v5 = v4;
    v6 = sub_1B1D7BD6C();
    v7 = sub_1B1D7C00C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 3152);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v247[0] = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = *(v0 + 2736);
      v13 = *(v0 + 2744);
      v14 = *(v0 + 2752);
      v15 = sub_1B1D7C56C();
      v17 = sub_1B1D0D070(v15, v16, v247);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_1B1C8D000, v6, v7, "Failed to export passkey private key: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B273C4C0](v11, -1, -1);
      MEMORY[0x1B273C4C0](v10, -1, -1);
    }

    else
    {
    }

    v208 = (v0 + 2768);
    v18 = *(v0 + 3120);
    v19 = *(v0 + 3096);
    v20 = *(v0 + 2848);
    v21 = *(v0 + 2840);
    v22 = *(v0 + 2832);
    v23 = *(v0 + 2816);
    v24 = *(v0 + 2808);
    v25 = *(v0 + 2800);

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
LABEL_6:
    v26 = *(v0 + 3064);
    sub_1B1D0CC0C(*(v0 + 2952), *(v0 + 2944));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v0 + 3064);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1B1D0CD88(0, v28[2] + 1, 1, *(v0 + 3064), &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1B1D0CD88(v29 > 1, v30 + 1, 1, v28, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v31 = *(v0 + 3016);
    v32 = *(v0 + 3000);
    v33 = *(v0 + 2976);
    v34 = *(v0 + 2968);
    v240 = *(v0 + 2952);
    v35 = *(v0 + 2944);
    v36 = *(v0 + 2936);

    v37 = *(v33 + 8);
    v37(v32, v34);
    v37(v31, v34);
    v28[2] = v30 + 1;
    sub_1B1D0CC70(v35, v28 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30);
    sub_1B1D0CCD4(v240);
    v38 = *(v0 + 3080);
    if (v38 == *(v0 + 3048))
    {
LABEL_85:
      v185 = *(v0 + 3040);
      v186 = *(v0 + 3016);
      v187 = *(v0 + 3008);
      v188 = *(v0 + 3000);
      v189 = *(v0 + 2992);
      v190 = *(v0 + 2984);
      v191 = *(v0 + 2960);
      v192 = *(v0 + 2952);
      v193 = *(v0 + 2944);
      v223 = *(v0 + 2920);
      v226 = *(v0 + 2912);
      v228 = *(v0 + 2888);
      v231 = *(v0 + 2880);
      v234 = *(v0 + 2872);
      v236 = *(v0 + 2848);
      v239 = *(v0 + 2824);
      v243 = *(v0 + 2816);
      v246 = *(v0 + 2792);

      v194 = *(v0 + 8);

      __asm { BRAA            X2, X16 }
    }

    while (1)
    {
      *(v0 + 3064) = v28;
      *(v0 + 3056) = 0;
      v39 = *(v0 + 2776);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1B273B2E0](v38);
      }

      else
      {
        if (v38 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        v40 = *(v39 + 8 * v38 + 32);
      }

      v41 = v40;
      *(v0 + 3072) = v40;
      *(v0 + 3080) = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_89;
      }

      v42 = [v40 user];
      if (v42)
      {
        break;
      }

      v38 = *(v0 + 3080);
      if (v38 == *(v0 + 3048))
      {
        goto LABEL_85;
      }
    }

    v43 = *(v0 + 3040);
    v44 = *(v0 + 3032);
    v45 = *(v0 + 3024);
    v46 = v42;
    v47 = sub_1B1D7BE4C();
    v49 = v48;

    v218 = v47;
    *(v0 + 3088) = v47;
    v222 = v49;
    *(v0 + 3096) = v49;
    sub_1B1D7B56C();
    v50 = sub_1B1D7B54C();
    v52 = v51;
    v53 = *(v44 + 8);
    v53(v43, v45);
    v54 = [v41 lastModifiedDate];
    v55 = *(v0 + 3016);
    v241 = v52;
    v244 = v50;
    if (v54)
    {
      v56 = *(v0 + 3008);
      v57 = *(v0 + 2976);
      v58 = *(v0 + 2968);
      v59 = *(v0 + 2960);
      v60 = v54;
      sub_1B1D7B51C();

      v61 = *(v57 + 32);
      v61(v59, v56, v58);
      v237 = *(v57 + 56);
      v237(v59, 0, 1, v58);
      v61(v55, v59, v58);
    }

    else
    {
      v62 = *(v0 + 2976);
      v63 = *(v0 + 2968);
      v64 = *(v0 + 2960);
      v237 = *(v62 + 56);
      v237(v64, 1, 1, v63);
      sub_1B1D7B52C();
      if ((*(v62 + 48))(v64, 1, v63) != 1)
      {
        sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
      }
    }

    v221 = v41;
    v65 = [v41 creationDate];
    v66 = *(v0 + 2976);
    v67 = *(v0 + 2968);
    v210 = v53;
    if (v65)
    {
      v68 = *(v0 + 3000);
      v69 = *(v0 + 2992);
      v70 = v65;
      sub_1B1D7B51C();

      (*(v66 + 32))(v68, v69, v67);
      v71 = *(v66 + 16);
    }

    else
    {
      v71 = *(v66 + 16);
      (v71)(*(v0 + 3000), *(v0 + 3016), v67);
    }

    v72 = *(v0 + 3016);
    v224 = *(v0 + 3008);
    v73 = *(v0 + 3000);
    v74 = *(v0 + 2984);
    v219 = *(v0 + 2976);
    v75 = *(v0 + 2968);
    v76 = *(v0 + 2952);
    v77 = *(v0 + 2928);
    v71();
    (v71)(v74, v72, v75);
    v78 = [v221 effectiveTitle];
    v79 = sub_1B1D7BE4C();
    v229 = v80;
    v232 = v79;

    v81 = v77[5];
    v237(v76 + v81, 1, 1, v75);
    v82 = v77[6];
    v237(v76 + v82, 1, 1, v75);
    v214 = (v76 + v77[8]);
    v216 = v77[9];
    v83 = (v76 + v77[10]);
    *v83 = 0;
    v83[1] = 0;
    *v76 = v244;
    v76[1] = v241;
    sub_1B1CDEC18(v76 + v81, &qword_1EB775228, &qword_1B1D88D60);
    v84 = *(v219 + 32);
    v84(v76 + v81, v224, v75);
    v237(v76 + v81, 0, 1, v75);
    sub_1B1CDEC18(v76 + v82, &qword_1EB775228, &qword_1B1D88D60);
    v84(v76 + v82, v74, v75);
    v85 = v221;
    v237(v76 + v82, 0, 1, v75);
    v86 = (v76 + v77[7]);
    *v86 = v232;
    v86[1] = v229;
    *v214 = 0;
    v214[1] = 0;
    *(v76 + v216) = 0;
    v87 = v83[1];
    sub_1B1D0C93C(*v83);
    *v83 = 0;
    v83[1] = 0;
    v207 = v83;
    v88 = v77[12];
    *(v0 + 1372) = v88;
    v89 = MEMORY[0x1E69E7CC0];
    *(v76 + v88) = MEMORY[0x1E69E7CC0];
    v220 = v76;
    *(v76 + v77[11]) = v89;
    v90 = [v221 password];
    v217 = v88;
    if (!v90)
    {
      v105 = v89;
      goto LABEL_53;
    }

    v91 = *(v0 + 3040);
    v92 = *(v0 + 3024);
    v93 = v90;
    v206 = sub_1B1D7BE4C();
    v215 = v94;

    sub_1B1D7B56C();
    v95 = sub_1B1D7B54C();
    v97 = v96;
    v210(v91, v92);
    sub_1B1D7B56C();
    v98 = sub_1B1D7B54C();
    v100 = v99;
    v210(v91, v92);

    v212 = v97;
    v213 = v95;
    sub_1B1CE111C(v95, v97);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v209 = v100;
    v211 = v98;
    sub_1B1CE111C(v98, v100);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v101 = [v221 userVisibleSites];
    if (v101)
    {
      v102 = v101;
      v103 = sub_1B1D7BEEC();

      v104 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v104 = MEMORY[0x1E69E7CC0];
      v103 = MEMORY[0x1E69E7CC0];
    }

    *v208 = v103;
    v106 = [v221 additionalSites];
    v107 = sub_1B1D7BEEC();

    sub_1B1D0C45C(v107);
    sub_1B1C91B94(v213, v97);

    sub_1B1C91B94(v98, v100);

    sub_1B1D0D630(0, 0, 0, 0, 0);
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v108 = *v208;
    v238 = *(*v208 + 16);
    if (!v238)
    {
      break;
    }

    v109 = 0;
    v110 = (v108 + 40);
    v245 = v104;
    v235 = *v208;
    while (v109 < *(v108 + 16))
    {
      v111 = *(v0 + 2904);
      v112 = *(v0 + 2896);
      v113 = *(v0 + 2880);
      v114 = *(v0 + 2872);
      v115 = *(v110 - 1);
      v116 = *v110;
      sub_1B1D7B32C();
      sub_1B1D7B31C();

      v242 = v115;
      MEMORY[0x1B273A360](v115, v116);
      sub_1B1D7B2FC();
      v117 = *(v111 + 48);
      if (v117(v113, 1, v112) == 1)
      {
        sub_1B1CDEC18(*(v0 + 2880), &qword_1EB775220, &unk_1B1D86850);
        if (qword_1EB7749B8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v227, qword_1EB782530);

        v118 = sub_1B1D7BD6C();
        v119 = sub_1B1D7C00C();

        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 2864);
        v230 = *(v0 + 2856);
        v233 = *(v0 + 2872);
        if (v120)
        {
          v122 = swift_slowAlloc();
          v225 = v117;
          v123 = swift_slowAlloc();
          v247[0] = v123;
          *v122 = 136315138;
          *(v122 + 4) = sub_1B1D0D070(v242, v116, v247);
          _os_log_impl(&dword_1B1C8D000, v118, v119, "Could not create URL from %s", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v124 = v123;
          v117 = v225;
          MEMORY[0x1B273C4C0](v124, -1, -1);
          MEMORY[0x1B273C4C0](v122, -1, -1);
        }

        (*(v121 + 8))(v233, v230);
        v125 = 1;
      }

      else
      {
        v126 = v117;
        v127 = *(v0 + 2904);
        v128 = *(v0 + 2896);
        v129 = *(v0 + 2888);
        v130 = *(v0 + 2880);
        (*(*(v0 + 2864) + 8))(*(v0 + 2872), *(v0 + 2856));
        (*(v127 + 32))(v129, v130, v128);
        v117 = v126;
        v125 = 0;
      }

      v131 = *(v0 + 2896);
      v132 = *(v0 + 2888);
      (*(*(v0 + 2904) + 56))(v132, v125, 1, v131);
      if (v117(v132, 1, v131) == 1)
      {
        sub_1B1CDEC18(*(v0 + 2888), &qword_1EB775220, &unk_1B1D86850);
        v108 = v235;
      }

      else
      {
        v133 = *(v0 + 2920);
        v134 = *(v0 + 2912);
        v135 = *(v0 + 2896);
        v136 = *(*(v0 + 2904) + 32);
        v136(v133, *(v0 + 2888), v135);
        v136(v134, v133, v135);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v245 = sub_1B1D0CD88(0, v245[2] + 1, 1, v245, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
        }

        v138 = v245[2];
        v137 = v245[3];
        v108 = v235;
        if (v138 >= v137 >> 1)
        {
          v245 = sub_1B1D0CD88(v137 > 1, v138 + 1, 1, v245, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
        }

        v139 = *(v0 + 2912);
        v140 = *(v0 + 2904);
        v141 = *(v0 + 2896);
        v245[2] = v138 + 1;
        v136(v245 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v138, v139, v141);
      }

      ++v109;
      v110 += 2;
      if (v238 == v109)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
  }

  v245 = v104;
LABEL_50:

  v142 = v207[1];
  sub_1B1D0C93C(*v207);
  *v207 = v245;
  v143 = MEMORY[0x1E69E7CC0];
  v207[1] = MEMORY[0x1E69E7CC0];
  v105 = sub_1B1D0CAE4(0, 1, 1, v143);
  v145 = *(v105 + 2);
  v144 = *(v105 + 3);
  if (v145 >= v144 >> 1)
  {
    v105 = sub_1B1D0CAE4((v144 > 1), v145 + 1, 1, v105);
  }

  v88 = v217;
  sub_1B1C91AE4(v211, v209);

  sub_1B1C91AE4(v213, v212);

  sub_1B1CDEFDC(v211, v209);
  *(v0 + 2056) = v213;
  *(v0 + 2064) = v212;
  *(v0 + 2072) = 0;
  *(v0 + 2080) = v218;
  *(v0 + 2088) = v222;
  *(v0 + 2096) = 0;
  *(v0 + 2104) = 0;
  *(v0 + 2112) = v211;
  *(v0 + 2120) = v209;
  *(v0 + 2128) = 1;
  *(v0 + 2136) = v206;
  *(v0 + 2144) = v215;
  *(v0 + 2152) = 0;
  *(v0 + 2160) = 0;
  sub_1B1D0D67C(v0 + 2056);
  sub_1B1CDEFDC(v213, v212);
  *(v105 + 2) = v145 + 1;
  memcpy(&v105[680 * v145 + 32], (v0 + 2056), 0x2A1uLL);
  *(v220 + v217) = v105;
  v85 = v221;
LABEL_53:
  v146 = [v85 totpGenerators];
  sub_1B1D0C97C();
  v147 = sub_1B1D7BEEC();

  if (!(v147 >> 62))
  {
    v150 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v150)
    {
      goto LABEL_55;
    }

LABEL_71:

    goto LABEL_72;
  }

  v150 = sub_1B1D7C1FC();
  if (!v150)
  {
    goto LABEL_71;
  }

LABEL_55:
  if ((v147 & 0xC000000000000001) != 0)
  {
    v151 = MEMORY[0x1B273B2E0](0, v147);
  }

  else
  {
    if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v151 = *(v147 + 32);
  }

  v152 = v151;

  v153 = [v152 algorithm];
  if (v153 == 2)
  {
    v154 = 2;
  }

  else
  {
    v154 = v153 == 1;
  }

  v155 = [v152 keyData];
  v156 = sub_1B1D7B4EC();
  v158 = v157;

  v150 = [v152 codeGenerationPeriod];
  if ((v150 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v159 = v150;
  if (v150 >> 16)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v150 = [v152 numberOfDigitsInCode];
  if ((v150 & 0x8000000000000000) != 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v160 = v150;
  if (v150 >> 16)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v105 = sub_1B1D0CAE4(0, *(v105 + 2) + 1, 1, v105);
  }

  v162 = *(v105 + 2);
  v161 = *(v105 + 3);
  if (v162 >= v161 >> 1)
  {
    v105 = sub_1B1D0CAE4((v161 > 1), v162 + 1, 1, v105);
  }

  *(v0 + 16) = v156;
  *(v0 + 24) = v158;
  *(v0 + 32) = v159;
  *(v0 + 34) = v160;
  *(v0 + 40) = v218;
  *(v0 + 48) = v222;
  *(v0 + 56) = v154;
  *(v0 + 57) = *(v0 + 689);
  *(v0 + 60) = *(v0 + 692);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_1B1D0CC00(v0 + 16);
  *(v105 + 2) = v162 + 1;
  memcpy(&v105[680 * v162 + 32], (v0 + 16), 0x2A1uLL);
  v88 = v217;
  *(v220 + v217) = v105;
  v85 = v221;
LABEL_72:
  v163 = [v85 notesEntry];
  if (v163)
  {
    v164 = v163;
    v165 = sub_1B1D7BE4C();
    v167 = v166;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = sub_1B1D0CAE4(0, *(v105 + 2) + 1, 1, v105);
    }

    v169 = *(v105 + 2);
    v168 = *(v105 + 3);
    if (v169 >= v168 >> 1)
    {
      v105 = sub_1B1D0CAE4((v168 > 1), v169 + 1, 1, v105);
    }

    *(v0 + 1376) = xmmword_1B1D857B0;
    *(v0 + 1392) = 0;
    *(v0 + 1400) = v165;
    *(v0 + 1408) = v167;
    *(v0 + 1416) = 0;
    *(v0 + 1424) = 0;
    sub_1B1D0D624(v0 + 1376);
    *(v105 + 2) = v169 + 1;
    memcpy(&v105[680 * v169 + 32], (v0 + 1376), 0x2A1uLL);
    *(v220 + v88) = v105;
  }

  *(v0 + 3104) = v105;
  v170 = *(v0 + 2840);
  v171 = *(v0 + 2832);
  v172 = *(v0 + 2824);
  sub_1B1D7C05C();
  if ((*(v170 + 48))(v172, 1, v171) == 1)
  {
    v173 = *(v0 + 2824);

    sub_1B1CDEC18(v173, &qword_1EB775218, &qword_1B1D871F0);
    goto LABEL_6;
  }

  v174 = *(v0 + 2808);
  v175 = *(v0 + 2800);
  v176 = *(v0 + 2792);
  (*(*(v0 + 2840) + 32))(*(v0 + 2848), *(v0 + 2824), *(v0 + 2832));
  sub_1B1D7C0AC();
  v177 = (*(v174 + 48))(v176, 1, v175);
  v178 = *(v0 + 2792);
  if (v177 == 1)
  {
    (*(*(v0 + 2840) + 8))(*(v0 + 2848), *(v0 + 2832));

    sub_1B1CDEC18(v178, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_6;
  }

  (*(*(v0 + 2808) + 32))(*(v0 + 2816), *(v0 + 2792), *(v0 + 2800));
  v40 = [v85 passkeyUserHandle];
  v179 = *(v0 + 2848);
  if (!v40)
  {
    v180 = *(v0 + 2840);
    v181 = *(v0 + 2832);
    v182 = *(v0 + 2816);
    v183 = *(v0 + 2808);
    v184 = *(v0 + 2800);

    (*(v183 + 8))(v182, v184);
    (*(v180 + 8))(v179, v181);
    goto LABEL_6;
  }

LABEL_89:
  v195 = v40;
  v196 = sub_1B1D7BE4C();
  v198 = v197;

  *(v0 + 3112) = v196;
  *(v0 + 3120) = v198;
  sub_1B1D7C03C();
  v199 = sub_1B1D7B4CC();
  v201 = v200;

  *(v0 + 3128) = v199;
  *(v0 + 3136) = v201;
  if (v201 >> 60 == 15)
  {
LABEL_101:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v150, v148, v149);
  }

  *(v0 + 3144) = [*(v0 + 2784) passkeyStore];
  sub_1B1D7B59C();
  sub_1B1D0CD30();
  v202 = sub_1B1D7BF0C();
  v204 = v203;
  v150 = sub_1B1D09590;
  v148 = v202;
  v149 = v204;

  return MEMORY[0x1EEE6DFA0](v150, v148, v149);
}

uint64_t sub_1B1D0C36C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B1D7C1FC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1B1D7C1FC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1B1D0D68C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B1D0D72C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B1D0C45C(uint64_t result)
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

  result = sub_1B1D0CF64(result, v11, 1, v3);
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

uint64_t WBSSavedAccountStore.exportPasskeyPrivateKey(with:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D0C570, 0, 0);
}

uint64_t sub_1B1D0C570()
{
  v1 = *(v0 + 48);
  sub_1B1D7C03C();
  v2 = sub_1B1D7B4CC();
  v4 = v3;

  *(v0 + 64) = v2;
  *(v0 + 72) = v4;
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = [*(v0 + 56) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v8 = sub_1B1D7BF0C();
    v10 = v9;
    v5 = sub_1B1D0C654;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1D0C654()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_1B1D7B58C();
  v0[11] = 0;
  v5 = v4;
  v7 = v6;
  v8 = v0[10];

  v0[12] = v7;
  v0[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B1D0C6F8, 0, 0);
}

uint64_t sub_1B1D0C6F8()
{
  sub_1B1C91AE4(v0[8], v0[9]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1B1D0C75C()
{
  v22 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_1B1C91AE4(v3, v2);
  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v5, qword_1EB782530);
  v6 = v4;
  v7 = sub_1B1D7BD6C();
  v8 = sub_1B1D7C00C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_1B1D7C56C();
    v18 = sub_1B1D0D070(v16, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1B1C8D000, v7, v8, "Failed to export passkey private key: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B273C4C0](v12, -1, -1);
    MEMORY[0x1B273C4C0](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0, 0xF000000000000000);
}

uint64_t sub_1B1D0C93C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1D0C97C()
{
  result = qword_1EB775230;
  if (!qword_1EB775230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775230);
  }

  return result;
}

char *sub_1B1D0C9C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775240, &qword_1B1D87200);
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

char *sub_1B1D0CAE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775268, &qword_1B1D87220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 680);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[680 * v8])
    {
      memmove(v12, v13, 680 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B1D0CC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D0CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D0CCD4(uint64_t a1)
{
  v2 = type metadata accessor for ASImportableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1D0CD30()
{
  result = qword_1EB775238;
  if (!qword_1EB775238)
  {
    sub_1B1D7B59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775238);
  }

  return result;
}

size_t sub_1B1D0CD88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_1B1D0CF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F88, &qword_1B1D85C60);
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

uint64_t sub_1B1D0D070(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B1D0D13C(v11, 0, 0, 1, a1, a2);
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
    sub_1B1CEFFA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1B1D0D13C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B1D0D248(a5, a6);
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
    result = sub_1B1D7C2CC();
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

uint64_t sub_1B1D0D248(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1D0D294(a1, a2);
  sub_1B1D0D3C4(&unk_1F28D8248);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B1D0D294(uint64_t a1, unint64_t a2)
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

  v6 = sub_1B1D0D4B0(v5, 0);
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

  result = sub_1B1D7C2CC();
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
        v10 = sub_1B1D7BE9C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B1D0D4B0(v10, 0);
        result = sub_1B1D7C26C();
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

uint64_t sub_1B1D0D3C4(uint64_t result)
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

  result = sub_1B1D0D524(result, v12, 1, v3);
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

void *sub_1B1D0D4B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775258, &qword_1B1D87210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B1D0D524(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775258, &qword_1B1D87210);
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

uint64_t sub_1B1D0D630(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1B1C91AE4(result, a2);
  }

  return result;
}

uint64_t sub_1B1D0D68C(uint64_t a1)
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
    sub_1B1D7C1FC();
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
  result = sub_1B1D7C29C();
  *v1 = result;
  return result;
}

uint64_t sub_1B1D0D72C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B1D7C1FC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B1D7C1FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B1D0D8B8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775278, qword_1B1D87228);
            v9 = sub_1B1CF7A18(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1D0D8B8()
{
  result = qword_1EB775280;
  if (!qword_1EB775280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775278, qword_1B1D87228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775280);
  }

  return result;
}

uint64_t sub_1B1D0D91C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B1D7BA2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52 - v8;
  sub_1B1D7BA4C();
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_1B1CDEC18(v9, &qword_1EB7751F8, &unk_1B1D86AF0);
    v10 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0xF000000000000000;
  }

  else
  {
    v10 = sub_1B1D7BA0C();
    v56 = v11;
    v12 = sub_1B1D7BA1C();
    v54 = v13;
    v55 = v12;
    sub_1B1C91AE4(0, 0xF000000000000000);
    (*(v3 + 8))(v9, v2);
  }

  result = sub_1B1D7B9EC();
  if (result)
  {
    v15 = result;
    v52 = v10;
    v53 = a1;
    v62 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775348, &qword_1B1D87840);
    result = sub_1B1D7C35C();
    v16 = result;
    v17 = 0;
    v18 = v15 + 64;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v15 + 64);
    v22 = v19 + 63;
    v23 = v3;
    v24 = v22 >> 6;
    v60 = result;
    v61 = v23;
    v58 = v23 + 8;
    v59 = v23 + 16;
    v57 = result + 64;
    v25 = v62;
    if (v21)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v21));
        v64 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v69 = 16 * v29;
        v30 = *(v15 + 56);
        v31 = v15;
        v32 = (*(v15 + 48) + 16 * v29);
        v33 = *v32;
        v34 = v32[1];
        v35 = v61;
        v36 = v63;
        (*(v61 + 16))(v63, v30 + *(v61 + 72) * v29, v25);
        sub_1B1CE111C(v33, v34);
        v37 = sub_1B1D7BA0C();
        v67 = v38;
        v68 = v37;
        v39 = sub_1B1D7BA1C();
        v65 = v40;
        v66 = v39;
        (*(v35 + 8))(v36, v25);
        result = sub_1B1C91AE4(0, 0xF000000000000000);
        *(v57 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v16 = v60;
        v41 = v68;
        v42 = (*(v60 + 48) + v69);
        *v42 = v33;
        v42[1] = v34;
        v43 = (*(v16 + 56) + 32 * v29);
        v44 = v66;
        v45 = v67;
        *v43 = v41;
        v43[1] = v45;
        v43[2] = v44;
        v43[3] = v65;
        v46 = *(v16 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        *(v16 + 16) = v48;
        v15 = v31;
        v21 = v64;
        if (!v64)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v27 = v17;
      while (1)
      {
        v17 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v17 >= v24)
        {

          v10 = v52;
          a1 = v53;
          goto LABEL_19;
        }

        v28 = *(v18 + 8 * v17);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v64 = (v28 - 1) & v28;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v16 = 0;
LABEL_19:
    v50 = v55;
    v49 = v56;
    *a1 = v10;
    a1[1] = v49;
    v51 = v54;
    a1[2] = v50;
    a1[3] = v51;
    a1[4] = v16;
  }

  return result;
}

uint64_t sub_1B1D0DCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v42 - v9;
  v11 = v1[1];
  v12 = v1[4];
  if (v11 >> 60 == 15)
  {
    (*(v4 + 56))(v10, 1, 1, v3);
  }

  else
  {
    v14 = v1[2];
    v13 = v1[3];
    sub_1B1CE111C(*v1, v11);
    sub_1B1C91B94(v14, v13);
    sub_1B1D7B9FC();
    (*(v4 + 56))(v10, 0, 1, v3);
  }

  if (!v12)
  {
    return sub_1B1D7BA3C();
  }

  v42[0] = v10;
  v42[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775338, &qword_1B1D87830);
  result = sub_1B1D7C35C();
  v16 = 0;
  v45 = v12;
  v46 = v4;
  v19 = *(v12 + 64);
  v18 = v12 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v42[2] = v4 + 32;
  v43 = result + 64;
  v47 = v3;
  v44 = result;
  v24 = v48;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
LABEL_14:
      v28 = v25 | (v16 << 6);
      v29 = *(v45 + 56);
      v30 = (*(v45 + 48) + 16 * v28);
      v31 = v30[1];
      v50 = *v30;
      v51 = 16 * v28;
      v32 = (v29 + 32 * v28);
      v34 = *v32;
      v33 = v32[1];
      v36 = v32[2];
      v35 = v32[3];
      sub_1B1CE111C(v50, v31);
      sub_1B1CE111C(v34, v33);
      sub_1B1C91B94(v36, v35);
      sub_1B1D7B9FC();
      v37 = v44;
      *(v43 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v38 = (v37[6] + v51);
      *v38 = v50;
      v38[1] = v31;
      result = (*(v46 + 32))(v37[7] + *(v46 + 72) * v28, v24, v47);
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v37[2] = v41;
      v22 = v49;
      if (!v49)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v23)
      {
        return sub_1B1D7BA3C();
      }

      v27 = *(v18 + 8 * v16);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v49 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1D0E02C@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_1B1D7BDAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_1B1D7BCBC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B1CDEC18(v5, &qword_1EB774D70, &qword_1B1D85840);
    *a1 = sub_1B1D7BCAC() & 1;
    v14 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
    v15 = *(v7 + 56);
    v15(&a1[*(v14 + 20)], 1, 1, v6);
    return (v15)(&a1[*(v14 + 24)], 1, 1, v6);
  }

  else
  {
    v17 = *(v7 + 32);
    v17(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v18 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
    v19 = &a1[*(v18 + 24)];
    sub_1B1D7BCCC();
    (*(v7 + 8))(v13, v6);
    *a1 = 1;
    v20 = *(v18 + 20);
    v17(&a1[v20], v11, v6);
    return (*(v7 + 56))(&a1[v20], 0, 1, v6);
  }
}

id sub_1B1D0E2B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-v7];
  v25 = *v1;
  v9 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  sub_1B1D0ED30(&v1[*(v9 + 20)], v8);
  v10 = sub_1B1D7BDAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_1B1CDEC18(v8, &qword_1EB774D70, &qword_1B1D85840);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v13 = sub_1B1D7BD9C();
    v14 = v15;
    (*(v11 + 8))(v8, v10);
  }

  sub_1B1D0ED30(&v1[*(v9 + 24)], v6);
  if (v12(v6, 1, v10) == 1)
  {
    sub_1B1CDEC18(v6, &qword_1EB774D70, &qword_1B1D85840);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v16 = sub_1B1D7BD9C();
    v17 = v18;
    (*(v11 + 8))(v6, v10);
  }

  if (v14 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v13, v14);
  }

  if (v17 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v16, v17);
  }

  v21 = objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationOutput);
  v22 = [v21 initWithIsSupported:v25 first:v19 second:v20];

  return v22;
}

uint64_t sub_1B1D0E548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  [v1 shouldCheckForSupport];
  v6 = [v1 inputValues];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 saltInput1];
    sub_1B1D7B4EC();

    v9 = [v7 saltInput2];
    if (v9)
    {
      v10 = v9;
      sub_1B1D7B4EC();
    }

    sub_1B1D7B9FC();

    v12 = sub_1B1D7BA2C();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {
    v11 = sub_1B1D7BA2C();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  return sub_1B1D7BBDC();
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.init(saltInput1:saltInput2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1(_:saltInput2:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_1B1CE111C(a1, a2);
  sub_1B1C91B94(a3, a4);
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput2.getter()
{
  v1 = *(v0 + 16);
  sub_1B1C91B94(v1, *(v0 + 24));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput2.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues(_:perCredentialInputValues:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = a2;
  sub_1B1CE111C(v5, v4);
  sub_1B1C91B94(v6, v7);
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.perCredentialInputValues(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1B1D857B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B1D05C30(v2, v3, v4, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.perCredentialInputValues.getter()
{
  v1 = *(v0 + 32);
}

{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues);
}

uint64_t sub_1B1D0E95C()
{
  v1 = v0[1];
  v2 = v0[4];
  if (v1 >> 60 == 15)
  {
    v36 = 0;
    if (!v2)
    {
LABEL_24:
      v35 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInput) initWithInputValues:v36 perCredentialInputValues:v2];

      return v35;
    }
  }

  else
  {
    v3 = *v0;
    v4 = v0[2];
    v5 = v0[3];
    sub_1B1CE111C(*v0, v0[1]);
    sub_1B1C91B94(v4, v5);
    v6 = sub_1B1D7B4DC();
    if (v5 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_1B1D7B4DC();
    }

    v36 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInputValues) initWithSaltInput1:v6 saltInput2:v7];

    sub_1B1CDEF8C(v3, v1, v4, v5);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775340, &qword_1B1D87838);
  result = sub_1B1D7C35C();
  v9 = 0;
  v10 = v2 + 64;
  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;
  v37 = v2;
  v38 = result + 64;
  v39 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v18 = v15 | (v9 << 6);
      v19 = *(v2 + 56);
      v20 = (*(v2 + 48) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      v23 = (v19 + 32 * v18);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v42 = v21;
      sub_1B1CE111C(v22, v21);
      sub_1B1CE111C(v24, v25);
      sub_1B1C91B94(v26, v27);
      v28 = sub_1B1D7B4DC();
      v43 = v22;
      v41 = v26;
      v29 = v27 >> 60 == 15 ? 0 : sub_1B1D7B4DC();
      v30 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInputValues) initWithSaltInput1:v28 saltInput2:v29];

      sub_1B1CDEFDC(v24, v25);
      result = sub_1B1C91AE4(v41, v27);
      *(v38 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v31 = (v39[6] + 16 * v18);
      *v31 = v43;
      v31[1] = v42;
      *(v39[7] + 8 * v18) = v30;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v39[2] = v34;
      v2 = v37;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(result);
        sub_1B1D10564();
        v2 = sub_1B1D7BDCC();

        goto LABEL_24;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionOutput.first.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BDAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(uint64_t a1)
{
  return sub_1B1C9020C(a1, &unk_1EB7752E8);
}

{
  return sub_1B1CED540(a1, &qword_1EB775320, off_1E7AF6840);
}

uint64_t sub_1B1D0ED30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionOutput.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B1D7BDAC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0) + 20);

  return sub_1B1D0EE30(a2, v7);
}

uint64_t sub_1B1D0EE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B1D0EEA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_1B1D7BD9C();
  v7 = v6;
  v8 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  sub_1B1D0ED30(v0 + *(v8 + 20), v4);
  v9 = sub_1B1D7BDAC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1B1CDEC18(v4, &qword_1EB774D70, &qword_1B1D85840);
    v11 = sub_1B1D7B4DC();
    v12 = 0;
  }

  else
  {
    v13 = sub_1B1D7BD9C();
    v15 = v14;
    (*(v10 + 8))(v4, v9);
    v11 = sub_1B1D7B4DC();
    if (v15 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_1B1D7B4DC();
      sub_1B1C91AE4(v13, v15);
    }
  }

  v16 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionOutput) initWithFirst:v11 second:v12];

  sub_1B1CDEFDC(v5, v7);
  return v16;
}

double static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.checkForSupport.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = xmmword_1B1D857B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = 1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_1B1CE111C(v3, v2);

  return sub_1B1C91B94(v4, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationInput.shouldCheckForSupport.getter()
{
  return *v0;
}

{
  return *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B1D05C30(v2, v3, v4, v5);
}

id static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.checkForSupport.getter()
{
  v0 = objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput);

  return [v0 initWithInputValues_];
}

uint64_t type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(uint64_t a1)
{
  return sub_1B1C9020C(a1, &unk_1EB775300);
}

{
  return sub_1B1CED540(a1, &qword_1EB775318, off_1E7AF6850);
}

uint64_t sub_1B1D0F170@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  v4 = *(v3 + 20);
  v5 = sub_1B1D7BDAC();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(v3 + 24)];

  return v8(v6, 1, 1, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.isSupported.getter()
{
  return *v0;
}

{
  v1 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1D0F250@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1B1D0ED30(v4, a2);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.second.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0) + 24);

  return sub_1B1D0ED30(v3, a1);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 1;
  v6 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  v7 = *(v6 + 20);
  v8 = sub_1B1D7BDAC();
  v9 = *(v8 - 8);
  (*(v9 + 32))(&a3[v7], a1, v8);
  (*(v9 + 56))(&a3[v7], 0, 1, v8);
  v10 = &a3[*(v6 + 24)];

  return sub_1B1D0EE30(a2, v10);
}

void *ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues);
  v2 = v1;
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFRegistrationInput.init(inputValues:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputValues_];

  return v2;
}

id ASAuthorizationPublicKeyCredentialPRFRegistrationInput.init(inputValues:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport) = 1;
  *(v1 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues) = a1;
  v3.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationInput;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.isSupported.setter(char a1)
{
  v3 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B1D0FA64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 first];
  v4 = sub_1B1D7B4EC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1B1D0FAC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = 0;
  v5 = v3[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v3;
    sub_1B1CE111C(v6, v5);
    v7 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v6, v5);
    v4 = v7;
  }

  return v4;
}

uint64_t sub_1B1D0FB84(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1B1D0FBF8(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  if (a3)
  {
    v7 = a1;
    v8 = v5;
    v5 = sub_1B1D7B4EC();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v10 = 0xF000000000000000;
  }

  v12 = &a1[*a4];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v5;
  v12[1] = v10;
  sub_1B1C91AE4(v13, v14);
}

uint64_t sub_1B1D0FCB4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_1B1D0FD18(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7B4EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B1D0FD7C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_1B1D7B4DC();
  }

  v9 = v7;
  [v6 *a5];
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.saltInput1.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  sub_1B1CE111C(v1, *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1 + 8));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.saltInput2.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  sub_1B1C91B94(v1, *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2 + 8));
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.init(saltInput1:saltInput2:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1B1D7B4DC();
  if (a4 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1B1D7B4DC();
    sub_1B1C91AE4(a3, a4);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSaltInput1:v8 saltInput2:v9];

  sub_1B1CDEFDC(a1, a2);
  return v10;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.init(saltInput1:saltInput2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInputValues;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B1D10388(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5)
{
  a4(*(a1 + *a3), *(a1 + *a3 + 8));
  v7 = (a1 + *a5);
  v8 = *v7;
  v9 = v7[1];

  return sub_1B1C91AE4(v8, v9);
}

void *ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues);
  v2 = v1;
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInput.init(inputValues:perCredentialInputValues:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(a1);
    sub_1B1D10564();
    v3 = sub_1B1D7BDCC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputValues:a1 perCredentialInputValues:v3];

  return v4;
}

unint64_t sub_1B1D10564()
{
  result = qword_1EB7754D0;
  if (!qword_1EB7754D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7754D0);
  }

  return result;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInput.init(inputValues:perCredentialInputValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues) = a1;
  *(v2 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues) = a2;
  v4.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInput;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B1D106B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
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

uint64_t sub_1B1D10750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B1D107AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1D10824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_1B1D10878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1B1D10900()
{
  sub_1B1D7BDAC();
  if (v0 <= 0x3F)
  {
    sub_1B1D10984();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1D10984()
{
  if (!qword_1EB7752F8)
  {
    sub_1B1D7BDAC();
    v0 = sub_1B1D7C18C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7752F8);
    }
  }
}

uint64_t sub_1B1D109DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B1D10A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1B1D10AB4()
{
  sub_1B1D10984();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B1D10BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47 - v9;
  v11 = [v1 inputValues];
  v12 = &unk_1E7AF9000;
  v48 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = [v11 saltInput1];
    sub_1B1D7B4EC();

    v15 = [v13 saltInput2];
    if (v15)
    {
      v16 = v15;
      sub_1B1D7B4EC();
    }

    v17 = v48;
    sub_1B1D7B9FC();

    (*(v4 + 56))(v17, 0, 1, v3);
    v12 = &unk_1E7AF9000;
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
  }

  v18 = [v1 perCredentialInputValues];
  v19 = v18;
  if (!v18)
  {
    return sub_1B1D7BA3C();
  }

  v47 = a1;
  type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(v18);
  sub_1B1D10564();
  v20 = sub_1B1D7BDDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775338, &qword_1B1D87830);
  result = sub_1B1D7C35C();
  v22 = 0;
  v24 = v20 + 64;
  v23 = *(v20 + 64);
  v55 = v20;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v49 = v4 + 32;
  v50 = result + 64;
  v52 = v4;
  v53 = v3;
  v51 = result;
  if (v27)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v27));
      v56 = (v27 - 1) & v27;
LABEL_16:
      v32 = v29 | (v22 << 6);
      v33 = (*(v55 + 48) + 16 * v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(*(v55 + 56) + 8 * v32);
      v57 = v35;
      v58 = v34;
      sub_1B1CE111C(v34, v35);
      v37 = [v36 saltInput1];
      sub_1B1D7B4EC();

      v38 = [v36 v12[420]];
      if (v38)
      {
        v39 = v38;
        sub_1B1D7B4EC();
      }

      v40 = v54;
      sub_1B1D7B9FC();

      v41 = v51;
      *(v50 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v42 = (v41[6] + 16 * v32);
      v43 = v57;
      *v42 = v58;
      v42[1] = v43;
      result = (*(v52 + 32))(v41[7] + *(v52 + 72) * v32, v40, v53);
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        break;
      }

      v41[2] = v46;
      v12 = &unk_1E7AF9000;
      v27 = v56;
      if (!v56)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v30 = v22;
    while (1)
    {
      v22 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v22 >= v28)
      {

        return sub_1B1D7BA3C();
      }

      v31 = *(v24 + 8 * v22);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v56 = (v31 - 1) & v31;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1D11068(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = &v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_first];
  *&v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_first] = xmmword_1B1D857B0;
  v11 = &v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_second];
  *&v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_second] = xmmword_1B1D857B0;
  v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported] = a1;
  swift_beginAccess();
  v12 = *v10;
  v13 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  sub_1B1C91B94(a2, a3);
  sub_1B1C91AE4(v12, v13);
  swift_beginAccess();
  v14 = *v11;
  v15 = v11[1];
  *v11 = a4;
  v11[1] = a5;
  sub_1B1C91B94(a4, a5);
  sub_1B1C91AE4(v14, v15);
  v17.receiver = v5;
  v17.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationOutput;
  return objc_msgSendSuper2(&v17, sel_init);
}

void ASPasskeyCredentialRequestParameters.extensionInput.getter(void *a1@<X8>)
{
  v3 = [v1 extensionInput];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t sub_1B1D111FC()
{
  v1 = [v0 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v2 = sub_1B1D7BEEC();

  if (v2 >> 62)
  {
LABEL_106:
    v3 = sub_1B1D7C1FC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_107:
    v6 = MEMORY[0x1E69E7CD0];
LABEL_108:

    return v6;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_107;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CD0];
    v7 = v2 + 32;
    v8 = &selRef_configurationWithScale_;
    v82 = v2 & 0xC000000000000001;
    v83 = v2;
    v81 = v2 + 32;
    v84 = v3;
    while (1)
    {
      if (v5)
      {
        v12 = MEMORY[0x1B273B2E0](v4, v2);
      }

      else
      {
        v12 = *(v7 + 8 * v4);
        swift_unknownObjectRetain();
      }

      if ([v12 v8[457]])
      {
        swift_getObjectType();
        v13 = swift_conformsToProtocol2();
        if (!v13 || !v12)
        {
          goto LABEL_9;
        }

        v14 = v13;
        v15 = v8;
        ObjectType = swift_getObjectType();
        if ((*(v14 + 8))(ObjectType, v14))
        {
          v17 = (*(v14 + 16))(ObjectType, v14);
          if (v18)
          {
            v19 = v17;
            v20 = v18;
            v21 = *(v6 + 40);
            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](0);
            sub_1B1D7BE7C();
            v22 = sub_1B1D7C61C();
            v23 = -1 << *(v6 + 32);
            v24 = v22 & ~v23;
            if ((*(v6 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
            {
              v25 = ~v23;
              v26 = *(v6 + 48);
              while (1)
              {
                v27 = (v26 + 16 * v24);
                v28 = v27[1];
                if (v28 >= 2)
                {
                  v29 = *v27 == v19 && v28 == v20;
                  if (v29 || (sub_1B1D7C50C() & 1) != 0)
                  {
                    break;
                  }
                }

                v24 = (v24 + 1) & v25;
                if (((*(v6 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
LABEL_50:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v2 = *(v6 + 16);
              v50 = *(v6 + 24);

              if (v50 <= v2)
              {
                v55 = v2 + 1;
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_1B1D1EDB0(v55);
                }

                else
                {
                  sub_1B1D20520(v55);
                }

                v58 = *(v6 + 40);
                sub_1B1D7C5CC();
                MEMORY[0x1B273B630](0);
                sub_1B1D7BE7C();
                v59 = sub_1B1D7C61C();
                v60 = -1 << *(v6 + 32);
                v24 = v59 & ~v60;
                if ((*(v6 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
                {
                  v2 = ~v60;
                  v61 = *(v6 + 48);
                  do
                  {
                    v62 = (v61 + 16 * v24);
                    v63 = v62[1];
                    if (v63 >= 2)
                    {
                      v64 = *v62 == v19 && v63 == v20;
                      if (v64 || (sub_1B1D7C50C() & 1) != 0)
                      {
                        goto LABEL_111;
                      }
                    }

                    v24 = (v24 + 1) & v2;
                  }

                  while (((*(v6 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
                }
              }

              else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1B1D1FF2C();
              }

              *(v6 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v24;
              v65 = (*(v6 + 48) + 16 * v24);
              *v65 = v19;
              v65[1] = v20;
              v66 = *(v6 + 16);
              v10 = __OFADD__(v66, 1);
              v67 = v66 + 1;
              if (v10)
              {
                goto LABEL_104;
              }

              *(v6 + 16) = v67;
            }

            swift_unknownObjectRelease();
            v5 = v82;
            v2 = v83;
            v7 = v81;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v8 = v15;
          goto LABEL_84;
        }

        v8 = v15;
        if ([v12 v15 + 1527] == 1)
        {
          v37 = *(v6 + 40);
          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](1);
          v38 = sub_1B1D7C61C();
          v39 = -1 << *(v6 + 32);
          v40 = v38 & ~v39;
          if ((*(v6 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            v3 = v84;
            while (*(*(v6 + 48) + 16 * v40 + 8))
            {
              v40 = (v40 + 1) & v41;
              if (((*(v6 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_9;
          }

          v3 = v84;
LABEL_64:
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = *(v6 + 16);
          if (*(v6 + 24) <= v57)
          {
            if (v56)
            {
              sub_1B1D1EDB0(v57 + 1);
            }

            else
            {
              sub_1B1D20520(v57 + 1);
            }

            v68 = *(v6 + 40);
            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](1);
            v69 = sub_1B1D7C61C();
            v70 = -1 << *(v6 + 32);
            v40 = v69 & ~v70;
            if ((*(v6 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
            {
              v71 = ~v70;
              while (*(*(v6 + 48) + 16 * v40 + 8))
              {
                v40 = (v40 + 1) & v71;
                if (((*(v6 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              goto LABEL_111;
            }
          }

          else if ((v56 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }

LABEL_92:
          *(v6 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v40;
          v72 = (*(v6 + 48) + 16 * v40);
          *v72 = 0;
          v72[1] = 0;
          v73 = *(v6 + 16);
          v10 = __OFADD__(v73, 1);
          v11 = v73 + 1;
          if (v10)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if ([v12 v15 + 1527] != 2)
          {
            swift_unknownObjectRelease();
LABEL_84:
            v3 = v84;
            goto LABEL_10;
          }

          v42 = *(v6 + 40);
          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](1);
          v43 = sub_1B1D7C61C();
          v44 = -1 << *(v6 + 32);
          v45 = v43 & ~v44;
          v3 = v84;
          if ((*(v6 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (*(*(v6 + 48) + 16 * v45 + 8))
            {
              v45 = (v45 + 1) & v46;
              if (((*(v6 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_9;
          }

LABEL_47:
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = *(v6 + 16);
          if (*(v6 + 24) <= v48)
          {
            if (v47)
            {
              sub_1B1D1EDB0(v48 + 1);
            }

            else
            {
              sub_1B1D20520(v48 + 1);
            }

            v74 = *(v6 + 40);
            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](1);
            v75 = sub_1B1D7C61C();
            v76 = -1 << *(v6 + 32);
            v45 = v75 & ~v76;
            if ((*(v6 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
            {
              v77 = ~v76;
              while (*(*(v6 + 48) + 16 * v45 + 8))
              {
                v45 = (v45 + 1) & v77;
                if (((*(v6 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_100;
                }
              }

              goto LABEL_111;
            }
          }

          else if ((v47 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }

LABEL_100:
          *(v6 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v45;
          v78 = (*(v6 + 48) + 16 * v45);
          *v78 = 0;
          v78[1] = 0;
          v79 = *(v6 + 16);
          v10 = __OFADD__(v79, 1);
          v11 = v79 + 1;
          if (v10)
          {
            goto LABEL_110;
          }
        }
      }

      else
      {
        v30 = *(v6 + 40);
        sub_1B1D7C5CC();
        MEMORY[0x1B273B630](2);
        v31 = sub_1B1D7C61C();
        v32 = -1 << *(v6 + 32);
        v33 = v31 & ~v32;
        if ((*(v6 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (*(*(v6 + 48) + 16 * v33 + 8) != 1)
          {
            v33 = (v33 + 1) & v34;
            if (((*(v6 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_9;
        }

LABEL_33:
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v6 + 16);
        if (*(v6 + 24) > v36)
        {
          if ((v35 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }
        }

        else
        {
          if (v35)
          {
            sub_1B1D1EDB0(v36 + 1);
          }

          else
          {
            sub_1B1D20520(v36 + 1);
          }

          v51 = *(v6 + 40);
          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](2);
          v52 = sub_1B1D7C61C();
          v53 = -1 << *(v6 + 32);
          v33 = v52 & ~v53;
          if ((*(v6 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v54 = ~v53;
            while (*(*(v6 + 48) + 16 * v33 + 8) != 1)
            {
              v33 = (v33 + 1) & v54;
              if (((*(v6 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            goto LABEL_111;
          }
        }

LABEL_7:
        *(v6 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v33;
        *(*(v6 + 48) + 16 * v33) = xmmword_1B1D866D0;
        v9 = *(v6 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }
      }

      *(v6 + 16) = v11;
LABEL_9:
      swift_unknownObjectRelease();
LABEL_10:
      if (++v4 == v3)
      {
        goto LABEL_108;
      }
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  result = sub_1B1D7C52C();
  __break(1u);
  return result;
}

uint64_t sub_1B1D11AF0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_39:
    v4 = sub_1B1D7C1FC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B273B2E0](i, a1);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_32:
            __break(1u);
            return 0;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_39;
          }

          v6 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_32;
          }
        }

        v8 = [v6 loginChoiceKind];
        if (v8 == 1)
        {
          objc_opt_self();
          v12 = swift_dynamicCastObjCClass();
          if (!v12)
          {
            goto LABEL_5;
          }

          if ([v12 isExternal])
          {
            goto LABEL_36;
          }

          v13 = *(a2 + 45);
          swift_unknownObjectRelease();
          if (v13)
          {
            return 1;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (!v8)
            {
              goto LABEL_36;
            }

            goto LABEL_5;
          }

          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (!v9)
          {
            goto LABEL_5;
          }

          v10 = v9;
          swift_unknownObjectRetain();
          if ([v10 isExternal])
          {
            goto LABEL_35;
          }

          if (*(a2 + 44))
          {
            v11 = *(a2 + 45);
            if (*(a2 + 42))
            {
              if (v11)
              {
                goto LABEL_35;
              }
            }

            else if (([*a2 isRegistrationRequest] & 1) == 0 && ((v11 ^ 1) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v14 = [v10 relyingPartyIdentifier];
          if (!v14)
          {
            swift_unknownObjectRelease();
LABEL_5:
            swift_unknownObjectRelease();
            goto LABEL_6;
          }

          v15 = v14;
          v16 = sub_1B1D7BE4C();
          v18 = v17;

          if (v16 == 0x6F632E656C707061 && v18 == 0xE90000000000006DLL)
          {

LABEL_35:
            swift_unknownObjectRelease();
LABEL_36:
            swift_unknownObjectRelease();
            return 1;
          }

          v19 = sub_1B1D7C50C();

          swift_unknownObjectRelease_n();
          a2 = v21;
          if (v19)
          {
            return 1;
          }
        }

LABEL_6:
        if (v7 == v4)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void ASAuthorizationUIContext.appIconForPresentingApp()(uint64_t a1@<X8>)
{
  v3 = [*v1 appIdentifier];
  v4 = sub_1B1D7BE4C();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

BOOL sub_1B1D11E00()
{
  v0 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_15:
    v3 = sub_1B1D7C1FC();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B273B2E0](v4, v1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *(v1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = [v6 loginChoiceKind];
    swift_unknownObjectRelease();
    v4 = v5 + 1;
  }

  while (!v7);

  return v3 == v5;
}

uint64_t sub_1B1D11EF8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 44) == 2 && *(result + 16))
  {
    v3 = 0;
    v4 = *(v2 + 32);
    v6 = *(result + 56);
    result += 56;
    v5 = v6;
    v7 = 1 << *(result - 24);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v5;
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_6:
      v9 &= v9 - 1;
    }

    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(result + 8 * v11);
      ++v3;
      if (v9)
      {
        v3 = v11;
        goto LABEL_6;
      }
    }

    v12 = v4 >= 5;
    v13 = 0x203010003uLL >> (8 * v4);
    if (v12)
    {
      LOBYTE(v13) = 3;
    }

    *a2 = v13;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

double static ASAuthorizationUIContext.IconType.lockSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.71011787e214;
  *a1 = xmmword_1B1D85E80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 64;
  return result;
}

uint64_t ASAuthorizationUIContext.loginChoicesToShow.getter()
{
  v1 = v0[2];
  v29 = v0[1];
  v30[0] = v1;
  *v28 = *v0;
  *(v30 + 15) = *(v0 + 47);
  if (BYTE8(v1) > 2u)
  {
    if (BYTE8(v30[0]) - 3 < 3)
    {
      if ((BYTE9(v30[0]) & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_11;
    }

    if (BYTE8(v30[0]) == 6)
    {
      if ((BYTE9(v30[0]) & 1) == 0)
      {
        v3 = v0[1];
        v25 = *v0;
        v26 = v3;
        v27[0] = v0[2];
        *(v27 + 15) = *(v0 + 47);
        return sub_1B1CEE5B8();
      }

      goto LABEL_11;
    }

LABEL_14:
    v5 = [v28[0] loginChoices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
    v2 = sub_1B1D7BEEC();

    return v2;
  }

  if (BYTE8(v30[0]) < 2u)
  {
    goto LABEL_14;
  }

  if (BYTE9(v30[0]))
  {
LABEL_11:

    return ASAuthorizationUIContext.otherLoginChoices.getter();
  }

  v6 = [v28[0] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v7 = sub_1B1D7BEEC();

  *&v25 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v12 = 0x1E698D000uLL;
      v23 = v7 & 0xFFFFFFFFFFFFFF8;
      if ((v7 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_19:
      if ((v9 & 0x8000000000000000) == 0)
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_32;
        }

        v13 = *(v7 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v14 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v8 = sub_1B1D7C1FC();
      if (!v8)
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v9, v7);
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

LABEL_22:
      v15 = *(v12 + 4064);
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16 && (v24 = v16, (sub_1B1CF6F88(&v24, v28) & 1) != 0))
      {
        sub_1B1D7C2DC();
        v17 = v10;
        v18 = v7;
        v19 = v8;
        v20 = v12;
        v21 = *(v25 + 16);
        sub_1B1D7C30C();
        v12 = v20;
        v8 = v19;
        v7 = v18;
        v10 = v17;
        v11 = v23;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (v14 == v8)
      {
        goto LABEL_34;
      }

      ++v9;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_34:

  v2 = v25;

  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    sub_1B1D7C51C();

    return v2;
  }

  v22 = sub_1B1D7C33C();

  return v22;
}

void static ASAuthorizationUIContext.IconType.passkeySymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001B1D9AC20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 64;
}

BOOL ASAuthorizationUIContext.hasMultipleCredentialProvidersEnabled.getter()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 numberOfAutoFillProvidersEnabled];

  return v1 > 1;
}

id sub_1B1D123E0()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1D7BE1C();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1B1D7B44C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

AuthenticationServices::ASAuthorizationUIContext::IconType::Biometrics_optional __swiftcall ASAuthorizationUIContext.IconType.Biometrics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B1D7C3AC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASAuthorizationUIContext.IconType.Biometrics.rawValue.getter()
{
  v1 = 0x646965636166;
  if (*v0 != 1)
  {
    v1 = 0x6469636974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696863756F74;
  }
}

uint64_t sub_1B1D12578()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12618()
{
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D126A4()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D1274C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646965636166;
  if (v2 != 1)
  {
    v5 = 0x6469636974706FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696863756F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D127A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646965636166;
  if (v2 != 1)
  {
    v4 = 0x6469636974706FLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696863756F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646965636166;
  if (*a2 != 1)
  {
    v8 = 0x6469636974706FLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696863756F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B1D7C50C();
  }

  return v11 & 1;
}

double static ASAuthorizationUIContext.IconType.passwordSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.42880739e248;
  *a1 = xmmword_1B1D87850;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x80;
  return result;
}

uint64_t ASAuthorizationUIContext.Header.Title.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

void ASAuthorizationUIContext.MainButton.text.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ASAuthorizationUIContext.MainButton.text.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t ASAuthorizationUIContext.OtherOptionsText.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12B48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1D7C5CC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      return sub_1B1D7C61C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1B273B630](v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12BC8()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 1;
    return MEMORY[0x1B273B630](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1B273B630](v2);
  }

  v4 = *v0;
  MEMORY[0x1B273B630](0);

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D12C50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1D7C5CC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      return sub_1B1D7C61C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1B273B630](v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12CCC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t ASAuthorizationUIContext.service.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1B1CEF6D4();
}

uint64_t ASAuthorizationUIContext.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  result = sub_1B1CF8E9C();
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void ASAuthorizationUIContext.header.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2 != 1)
  {
    if (v2 != 6)
    {
      goto LABEL_5;
    }

    v5 = *v1;
    v6 = v1[1];
    v7 = *(v1 + 4);
    v8 = *(v1 + 41);
    v9 = *(v1 + 49);
    v3 = a1;
    v4 = sub_1B1D11E00();
    a1 = v3;
    if (v4)
    {
      LOBYTE(v2) = 1;
    }

    else
    {
LABEL_5:
      LOBYTE(v2) = 2;
    }
  }

  *a1 = v2;
}

double ASAuthorizationUIContext.iconType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  if (v2 <= 3)
  {
    if (*(v1 + 40) <= 1u)
    {
      if (*(v1 + 40))
      {
        v11 = [*v1 appIdentifier];
        v12 = sub_1B1D7BE4C();
        v14 = v13;

        *a1 = v12;
        *(a1 + 8) = v14;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        v22 = *v1;
        v4 = *(v1 + 24);
        v23 = *(v1 + 8);
        v24 = v4;
        v25 = 0;
        v26 = v3;
        v27 = *(v1 + 42);
        v28 = *(v1 + 50);
        sub_1B1CFA01C(a1);
      }

      return result;
    }

    if (v2 == 2)
    {
      v22 = *v1;
      v23 = *(v1 + 8);
      v24 = *(v1 + 24);
      v25 = 2;
      v26 = v3;
      v27 = *(v1 + 42);
      v28 = *(v1 + 50);
      sub_1B1CF6D3C(a1);
      return result;
    }

    v6 = 0x80000001B1D9AC20;
    v7 = (v3 & 1) == 0;
    v8 = 0x6C69662E6B636F6CLL;
    if (!v7)
    {
      v8 = 0xD000000000000015;
    }

    v9 = 0xE90000000000006CLL;
    goto LABEL_19;
  }

  if (*(v1 + 40) <= 5u)
  {
    if (v2 != 4)
    {
      *a1 = 0xD000000000000015;
      *(a1 + 8) = 0x80000001B1D9AC20;
LABEL_23:
      *(a1 + 16) = 0;
      *(a1 + 24) = 64;
      return result;
    }

    v6 = 0x80000001B1D9AC20;
    v7 = (v3 & 1) == 0;
    v8 = 0x6F6C63692E79656BLL;
    if (!v7)
    {
      v8 = 0xD000000000000015;
    }

    v9 = 0xEA00000000006475;
LABEL_19:
    if (v7)
    {
      v6 = v9;
    }

    *a1 = v8;
    *(a1 + 8) = v6;
    goto LABEL_23;
  }

  v22 = *v1;
  if (v2 == 6)
  {
    v23 = *(v1 + 8);
    v24 = *(v1 + 24);
    v25 = 6;
    v26 = v3;
    v27 = *(v1 + 42);
    v28 = *(v1 + 50);
    sub_1B1CEED90(a1);
  }

  else
  {
    v15 = *(v1 + 24);
    v23 = *(v1 + 8);
    v24 = v15;
    v25 = 7;
    v26 = v3;
    v27 = *(v1 + 42);
    v28 = *(v1 + 50);
    sub_1B1CF74C8(&v19);
    v17 = v20;
    v18 = v21;
    result = *&v19;
    *a1 = v19;
    *(a1 + 16) = v17;
    *(a1 + 24) = v18;
  }

  return result;
}

void ASAuthorizationUIContext.title.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  v4 = *(v1 + 50);
  if (v2 > 3)
  {
    if (*(v1 + 40) > 5u)
    {
      if (v2 == 6)
      {
LABEL_16:
        v8 = 1;
LABEL_21:
        *a1 = v8;
        goto LABEL_22;
      }

      v7 = 3;
LABEL_25:
      *a1 = v7;
      v10 = 1;
      goto LABEL_23;
    }

    if (v2 == 4)
    {
      if (*(v1 + 41))
      {
        v5 = 0x80;
      }

      else
      {
        v5 = 64;
      }

      *a1 = (v3 ^ 1) & v4;
      *(a1 + 8) = v5;
      return;
    }

    v9 = v3 == 0;
    v8 = 4;
LABEL_19:
    if (!v9)
    {
      v8 = 0;
    }

    goto LABEL_21;
  }

  if (*(v1 + 40) <= 1u)
  {
    if (*(v1 + 40))
    {
      *a1 = 0;
LABEL_22:
      v10 = 0x80;
LABEL_23:
      *(a1 + 8) = v10;
      return;
    }

    goto LABEL_16;
  }

  if (v2 != 2)
  {
    v9 = v3 == 0;
    v8 = 3;
    goto LABEL_19;
  }

  v6 = a1;
  if ([*v1 isRegistrationRequest])
  {
    a1 = v6;
    if (v3)
    {
      v7 = 2;
      goto LABEL_25;
    }

    if (!v4)
    {
      *v6 = 0;
      v10 = 1;
      goto LABEL_23;
    }

    *v6 = 1;
    *(v6 + 8) = 1;
  }

  else
  {
    *v6 = 1;
    *(v6 + 8) = 0x80;
  }
}

void ASAuthorizationUIContext.otherOptionsText.getter(char *a1@<X8>)
{
  v3 = 0;
  if (*(v1 + 41))
  {
    goto LABEL_28;
  }

  v4 = v1;
  if (*(v1 + 40) - 7 < 0xFFFFFFFB)
  {
    goto LABEL_28;
  }

  if (![*v1 isRegistrationRequest])
  {
    v21 = *(v1 + 8);
    v27 = *(v1 + 24);
    v33 = *(v1 + 42);
    v39 = *(v1 + 50);
    v10 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v10 >> 62)
    {
      v11 = sub_1B1D7C1FC();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 == 1)
    {
      v22 = *(v4 + 8);
      v28 = *(v4 + 24);
      v34 = *(v4 + 42);
      v40 = *(v4 + 50);
      v12 = ASAuthorizationUIContext.otherLoginChoices.getter();
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B273B2E0](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v13 = *(v12 + 32);
        swift_unknownObjectRetain();
      }

      v14 = [v13 loginChoiceKind];
      swift_unknownObjectRelease();
      if (v14 == 4)
      {
        v3 = 1;
        goto LABEL_28;
      }
    }

    v24 = *(v4 + 8);
    v30 = *(v4 + 24);
    v36 = *(v4 + 42);
    v42 = *(v4 + 50);
    v17 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v17 >> 62)
    {
      v18 = sub_1B1D7C1FC();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18 >= 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_28;
  }

  v19 = *(v1 + 8);
  v25 = *(v1 + 24);
  v31 = *(v1 + 42);
  v37 = *(v1 + 50);
  v5 = ASAuthorizationUIContext.otherLoginChoices.getter();
  if (v5 >> 62)
  {
    v6 = sub_1B1D7C1FC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    goto LABEL_20;
  }

  v20 = *(v4 + 8);
  v26 = *(v4 + 24);
  v32 = *(v4 + 42);
  v38 = *(v4 + 50);
  v7 = ASAuthorizationUIContext.otherLoginChoices.getter();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B273B2E0](0, v7);
LABEL_10:

    v9 = [v8 loginChoiceKind];
    swift_unknownObjectRelease();
    if (v9 == 4)
    {
      v3 = 2;
LABEL_28:
      *a1 = v3;
      return;
    }

LABEL_20:
    v23 = *(v4 + 8);
    v29 = *(v4 + 24);
    v35 = *(v4 + 42);
    v41 = *(v4 + 50);
    v15 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v15 >> 62)
    {
      v16 = sub_1B1D7C1FC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 4 * (v16 > 0);
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t ASAuthorizationUIContext.otherLoginChoices.getter()
{
  v1 = [*v0 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v2 = sub_1B1D7BEEC();

  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_16:
    v3 = sub_1B1D7C1FC();
    if (v3)
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
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B273B2E0](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v11;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = [swift_unknownObjectRetain() loginChoiceKind];
        swift_unknownObjectRelease();
        if ((v7 - 3) >= 4)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1B1D7C2DC();
          v8 = *(v11 + 16);
          sub_1B1D7C30C();
          sub_1B1D7C31C();
          sub_1B1D7C2EC();
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v9;
}

id ASAuthorizationUIContext.shouldShowManualPasswordEntryButton.getter()
{
  v1 = *v0;
  result = [*v0 isProxiedRequest];
  if (result)
  {
    return ([v1 requestTypes] & 1);
  }

  return result;
}

uint64_t ASAuthorizationUIContext.message(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 41);
  v8 = *(v2 + 42);
  v9 = *(v2 + 46);
  v10 = *(v2 + 47);
  if (v6 > 3)
  {
    if (*(v2 + 40) > 5u)
    {
      v16 = *v2;
      v19 = v2[1];
      v22 = v2[2];
      v25 = *(v2 + 24);
      LODWORD(v28) = *(v2 + 25);
      *(&v28 + 3) = *(v2 + 7);
      *(&v28 + 7) = v2[4];
      v31 = *(v2 + 41);
      v34 = *(v2 + 42);
      v37 = *(v2 + 46);
      v40 = *(v2 + 47);
      if (v6 == 6)
      {
        return sub_1B1CEEEE4(a1, a2);
      }

      else
      {
        return sub_1B1CF7724(a2);
      }
    }

    if (v6 == 4)
    {
      if ((*(v2 + 41) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v2 + 41) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(v2 + 40) <= 1u)
    {
      if (!*(v2 + 40))
      {
        v14 = *v2;
        v17 = v2[1];
        v20 = v2[2];
        v23 = *(v2 + 24);
        LODWORD(v26) = *(v2 + 25);
        *(&v26 + 3) = *(v2 + 7);
        *(&v26 + 7) = v2[4];
        v29 = *(v2 + 41);
        v32 = *(v2 + 42);
        v35 = *(v2 + 46);
        v38 = *(v2 + 47);
        return sub_1B1CF9888(a2);
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        *a2 = [v13 underlyingAppleIDLoginChoice];
        type metadata accessor for ASAuthorizationUIContext.Message();
LABEL_24:

        return swift_storeEnumTagMultiPayload();
      }

LABEL_16:
      type metadata accessor for ASAuthorizationUIContext.Message();
      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v15 = *v2;
      v18 = v2[1];
      v21 = v2[2];
      v24 = *(v2 + 24);
      LODWORD(v27) = *(v2 + 25);
      *(&v27 + 3) = *(v2 + 7);
      *(&v27 + 7) = v2[4];
      v30 = *(v2 + 41);
      v33 = *(v2 + 42);
      v36 = *(v2 + 46);
      v39 = *(v2 + 47);
      return sub_1B1CF64A0(a2);
    }

    if ((*(v2 + 41) & 1) == 0)
    {
      *a2 = v2[4];
      type metadata accessor for ASAuthorizationUIContext.Message();
      goto LABEL_24;
    }
  }

  *a2 = v2[1];
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  type metadata accessor for ASAuthorizationUIContext.Message();
  swift_storeEnumTagMultiPayload();

  return sub_1B1CEF6D4();
}

void *ASAuthorizationUIContext.mainButton(for:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 4);
  v4 = *(v2 + 40);
  v5 = *(v2 + 41);
  v6 = *(v2 + 42);
  v7 = *(v2 + 43);
  v8 = *(v2 + 44);
  if (v4 <= 3)
  {
    if (*(v2 + 40) <= 1u)
    {
      if (!*(v2 + 40))
      {
        v22 = *v2;
        v28 = v2[1];
        v34 = *(v2 + 4);
        v40 = *(v2 + 41);
        v43 = *(v2 + 42);
        v46 = *(v2 + 43);
        v49 = *(v2 + 45);
        v52 = *(v2 + 49);
        return sub_1B1CFA18C(a2);
      }

      v9 = 4;
      if (v3 == 1)
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      if (v8 == 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = 2 * (v3 != 1);
        v11 = v10;
      }

      v12 = v8 == 0;
      if (*(v2 + 44))
      {
        v13 = v9;
      }

      else
      {
        v13 = 3;
      }

      if (v12)
      {
        v14 = 4;
      }

      else
      {
        v14 = v11;
      }

      v15 = (v14 << 8) | 3;
      *a2 = v13;
      goto LABEL_40;
    }

    if (v4 == 2)
    {
      v24 = *v2;
      v30 = v2[1];
      v36 = *(v2 + 4);
    }

    else
    {
      if ((*(v2 + 41) & 1) == 0)
      {
        *a2 = v3;
        *(a2 + 10) = 1;
        *(a2 + 8) = 1280;
        return result;
      }

      v27 = *v2;
      v33 = v2[1];
      v39 = *(v2 + 4);
    }

LABEL_30:
    v42 = *(v2 + 41);
    v45 = *(v2 + 42);
    v48 = *(v2 + 43);
    v51 = *(v2 + 45);
    v54 = *(v2 + 49);
    return sub_1B1CF725C(a2);
  }

  if (*(v2 + 40) <= 5u)
  {
    if (v4 == 4)
    {
      if (*(v2 + 41))
      {
        v23 = *v2;
        v29 = v2[1];
        v35 = *(v2 + 4);
        goto LABEL_30;
      }

      if (*(v2 + 43))
      {
        *a2 = 5;
        v15 = 1539;
      }

      else
      {
        *a2 = 1;
        v15 = 515;
      }
    }

    else
    {
      if (*(v2 + 41))
      {
        v26 = *v2;
        v32 = v2[1];
        v38 = *(v2 + 4);
        goto LABEL_30;
      }

      *a2 = 6;
      v15 = 1795;
    }

LABEL_40:
    *(a2 + 10) = 1;
    *(a2 + 8) = v15;
    return result;
  }

  if (v4 == 6)
  {
    v25 = *v2;
    v31 = v2[1];
    v37 = *(v2 + 4);
    v41 = *(v2 + 41);
    v44 = *(v2 + 42);
    v47 = *(v2 + 43);
    v50 = *(v2 + 45);
    v53 = *(v2 + 49);
    return sub_1B1CEF358(result, a2);
  }

  else
  {
    sub_1B1D7B99C();
    result = swift_dynamicCastClass();
    if (result)
    {
      swift_unknownObjectRetain();
      v17 = sub_1B1D7B95C();
      v18 = sub_1B1D7B98C();
      sub_1B1D7B87C();
      v20 = v19;

      result = swift_unknownObjectRelease();
      if (v20)
      {

        v21 = 0;
      }

      else if (((v3 == 1) & v17) != 0)
      {
        v21 = 3;
      }

      else
      {
        v21 = 1;
      }

      *a2 = 7;
      *(a2 + 8) = (v21 << 8) | 3;
      *(a2 + 10) = (v17 & 1) != 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 10) = 2;
      *(a2 + 8) = 0;
    }
  }

  return result;
}

BOOL ASAuthorizationUIContext.onlyHasOtherAccountsLoginChoices.getter()
{
  v0 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  if (v0 >> 62)
  {
LABEL_17:
    v10 = sub_1B1D7C1FC();

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
LABEL_3:
      v2 = ASAuthorizationUIContext.loginChoicesToShow.getter();
      v3 = v2;
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
        v5 = sub_1B1D7C1FC();
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      while (1)
      {
        v7 = v5 == v6;
        if (v5 == v6)
        {
          goto LABEL_15;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B273B2E0](v6, v3);
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v7;
          }
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        v9 = [swift_unknownObjectRetain() loginChoiceKind];
        swift_unknownObjectRelease_n();
        ++v6;
        if ((v9 - 5) >= 2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return 0;
}

void ASAuthorizationUIContext.init(presentationContext:shouldExpandLoginChoices:configurationOverrides:)(id a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  LODWORD(v103) = *(a3 + 18);
  LOBYTE(v9) = *(a3 + 19);
  v10 = *(a3 + 20);
  LOBYTE(v11) = *(a3 + 21);
  if (*a3 == 3)
  {
    v12 = [a1 testOptions];
    if (v12)
    {
      sub_1B1D14CF8(v12, &v109);
      v6 = *(&v109 + 1);
      v5 = v109;
      v10 = BYTE4(v110);
      v7 = v110;
      v13 = v110 | (WORD2(v110) << 32);
      v96 = BYTE1(v110);
      v103 = v13 >> 16;
      v9 = v13 >> 24;
      v11 = HIBYTE(WORD2(v110));
      v14 = v109 == 3;
    }

    else
    {
      v96 = v8;
      v14 = 1;
    }
  }

  else
  {
    v96 = *(a3 + 17);
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v97 = [v15 canEvaluatePolicy:1 error:0];
  v104 = v15;
  v94 = [v15 canEvaluatePolicy:2 error:0];
  *&v112 = v4;
  if ((v5 & 0xFE) == 2)
  {
    v16 = objc_opt_self();
    v17 = v4;
    v18 = [v16 sharedMonitor];
    v19 = [v18 isKeychainSyncEnabled];
  }

  else
  {
    v20 = v4;
    v19 = v5;
  }

  v114[10] = v19 & 1;
  v21 = (v5 & 0xFF00) == 0x200 || v14;
  v105 = v4;
  if (v21)
  {
    v22 = [objc_opt_self() sharedMonitor];
    LOBYTE(v23) = [v22 canKeychainSyncBeEnabled];

    v4 = v105;
  }

  else
  {
    v23 = (v5 >> 8) & 1;
  }

  v93 = v19;
  v114[11] = v23;
  v24 = (v5 & 0xFF000000) == 0x2000000 || v14;
  if (v24)
  {
    v25 = [objc_opt_self() sharedFeatureManager];
    LODWORD(v26) = [v25 shouldAutoFillPasswordsFromKeychain];
  }

  else
  {
    v26 = (v5 >> 24) & 1;
  }

  v114[13] = v26;
  if ((v14 | v7))
  {
    v6 = [v104 biometryType];
  }

  *v114 = v6;
  v27 = v9 == 2 || v14;
  if (v27)
  {
    LOBYTE(v9) = [objc_opt_self() shouldRequireLocalAuthenticationForPasswords];
  }

  v114[16] = v9 & 1;
  v28 = v10 == 2 || v14;
  if (v28)
  {
    v10 = [objc_opt_self() shouldRequireLocalAuthenticationForPlatformCredentials];
  }

  v114[17] = v10 & 1;
  v29 = v11 == 2 || v14;
  if (v29)
  {
    LOBYTE(v11) = [v4 shouldUseFallbackPasskeyUI];
  }

  v114[18] = v11 & 1;
  v114[9] = a2 & 1;
  if (v14 || BYTE2(v5) == 3)
  {
    if (v97)
    {
      v114[12] = 2;
      v30 = 1;
    }

    else if (v94)
    {
      v30 = 1;
      v114[12] = 1;
    }

    else
    {
      v30 = 0;
      v114[12] = 0;
    }
  }

  else
  {
    v114[12] = BYTE2(v5);
    v30 = (v5 & 0xFF0000) != 0;
  }

  v31 = [v4 serviceType];
  if (v31 == 1)
  {
    v35 = [v4 serviceName];
    if (v35)
    {
      v33 = v35;
      v95 = v30;
      v98 = v26;
      v34 = 0;
      goto LABEL_52;
    }

LABEL_57:

    *(a4 + 47) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  if (v31)
  {
    goto LABEL_57;
  }

  v98 = v26;
  v32 = [v4 serviceName];
  if (v32)
  {
    v33 = v32;
    v95 = v30;
    v34 = 1;
  }

  else
  {
    sub_1B1CED540(0, &qword_1EB7751E8, 0x1E6963620);
    v51 = [v4 appIdentifier];
    sub_1B1D7BE4C();

    v95 = v30;
    v64 = sub_1B1D123E0();
    v33 = [v64 localizedName];

    v34 = 1;
    v4 = v105;
  }

LABEL_52:
  v36 = sub_1B1D7BE4C();
  v38 = v37;

  *(&v112 + 1) = v36;
  *&v113 = v38;
  BYTE8(v113) = v34;
  v39 = v103 == 2 || v14;
  if (v39)
  {
    v40 = [objc_opt_self() sharedManager];
    v41 = [v40 atLeastOneEnabledExtensionSupportsPasskeys];

    LODWORD(v103) = v41;
  }

  else
  {
    LOBYTE(v41) = v103 & 1;
  }

  v114[15] = v41;
  v42 = v96 == 2 || v14;
  if ((v42 & 1) == 0)
  {
    v114[14] = v96 & 1;
    goto LABEL_89;
  }

  v101 = objc_opt_self();
  v43 = [v101 sharedManager];
  v44 = [v43 extensionsSync];

  if (!v44)
  {
    v114[14] = 0;
    goto LABEL_89;
  }

  sub_1B1CED540(0, &qword_1EB775450, 0x1E696ABD0);
  sub_1B1D172D0();
  v45 = sub_1B1D7BF6C();

  if ((v45 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B1D7C1EC();
    sub_1B1D7BF8C();
    v46 = v115;
    v47 = v116;
    v48 = v117;
    v49 = v118;
    v50 = v119;
  }

  else
  {
    v52 = -1 << *(v45 + 32);
    v47 = v45 + 56;
    v48 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v50 = v54 & *(v45 + 56);

    v49 = 0;
    v46 = v45;
  }

  v55 = (v48 + 64) >> 6;
  while (1)
  {
    v59 = v49;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    v62 = sub_1B1D7C21C();
    if (!v62 || (*&v107[0] = v62, swift_dynamicCast(), (v56 = v109) == 0))
    {
LABEL_84:
      v63 = 0;
LABEL_87:
      v4 = v105;
      goto LABEL_88;
    }

LABEL_75:
    v57 = [v101 sharedManager];
    v58 = [v57 extensionSupportsPasskeys_];

    if (v58)
    {
      v63 = 1;
      goto LABEL_87;
    }
  }

  v60 = v49;
  v61 = v50;
  v4 = v105;
  if (v50)
  {
LABEL_74:
    v50 = (v61 - 1) & v61;
    v56 = *(*(v46 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v61)))));
    if (!v56)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  while (1)
  {
    v49 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_111;
    }

    if (v49 >= v55)
    {
      break;
    }

    v61 = *(v47 + 8 * v49);
    ++v60;
    if (v61)
    {
      goto LABEL_74;
    }
  }

  v63 = 0;
LABEL_88:
  sub_1B1D17338();

  v114[14] = v63;
LABEL_89:
  v65 = [v4 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v59 = sub_1B1D7BEEC();

  if (v59 >> 62)
  {
    goto LABEL_112;
  }

  v66 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
LABEL_91:
    v67 = 0;
    v68 = &selRef_configurationWithScale_;
    v102 = v66;
    while (1)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x1B273B2E0](v67, v59);
        v70 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
LABEL_107:
          __break(1u);
LABEL_108:

          v80 = 2;
          swift_unknownObjectRelease_n();
          v4 = v105;
          goto LABEL_141;
        }
      }

      else
      {
        if (v67 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          v66 = sub_1B1D7C1FC();
          if (!v66)
          {
            goto LABEL_113;
          }

          goto LABEL_91;
        }

        v69 = *(v59 + 8 * v67 + 32);
        swift_unknownObjectRetain();
        v70 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_107;
        }
      }

      if ([v69 v68[457]] != 2)
      {
        goto LABEL_93;
      }

      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (!v71)
      {
        goto LABEL_93;
      }

      v72 = v71;
      swift_unknownObjectRetain();
      v73 = [v72 relyingPartyIdentifier];
      if (!v73)
      {
        break;
      }

      v74 = v73;
      v75 = v68;
      v76 = sub_1B1D7BE4C();
      v78 = v77;

      if (v76 == 0x6F632E656C707061 && v78 == 0xE90000000000006DLL)
      {
        goto LABEL_108;
      }

      v79 = sub_1B1D7C50C();

      swift_unknownObjectRelease_n();
      v4 = v105;
      v68 = v75;
      v66 = v102;
      if (v79)
      {

        goto LABEL_109;
      }

LABEL_94:
      ++v67;
      if (v70 == v66)
      {
        goto LABEL_113;
      }
    }

    swift_unknownObjectRelease();
LABEL_93:
    swift_unknownObjectRelease();
    goto LABEL_94;
  }

LABEL_113:

  v81 = v4;
  if ([v4 requestTypes] == 2)
  {
    v80 = 1;
    goto LABEL_140;
  }

  if ([v4 requestTypes] == 1)
  {
    v80 = 0;
    goto LABEL_140;
  }

  v82 = [v4 loginChoices];
  v83 = sub_1B1D7BEEC();

  if (v83 >> 62)
  {
LABEL_148:
    v84 = sub_1B1D7C1FC();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = 0;
  while (1)
  {
    if (v84 == v85)
    {
      goto LABEL_130;
    }

    if ((v83 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x1B273B2E0](v85, v83);
      if (__OFADD__(v85, 1))
      {
LABEL_129:
        __break(1u);
LABEL_130:

LABEL_138:
        v80 = 6;
        v4 = v105;
        goto LABEL_141;
      }
    }

    else
    {
      if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_148;
      }

      v86 = *(v83 + 8 * v85 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v85, 1))
      {
        goto LABEL_129;
      }
    }

    if ([v86 loginChoiceKind] == 2)
    {
      break;
    }

    v87 = [v86 loginChoiceKind];
    swift_unknownObjectRelease();
    ++v85;
    if (v87 == 7)
    {
      goto LABEL_132;
    }
  }

  swift_unknownObjectRelease();
LABEL_132:

  v81 = v105;
  if ([v105 requestTypes])
  {
    v80 = 6;
LABEL_140:
    v4 = v81;
  }

  else
  {
    if (([v105 requestTypes] & 2) != 0)
    {
      goto LABEL_138;
    }

    if ((v98 | v103))
    {
      if ((v95 | v103))
      {
        v4 = v105;
        if ([v105 requestTypes] == 512)
        {
          v80 = 7;
          goto LABEL_141;
        }

        if ((v93 & 1) != 0 || v103 & 1 | (([v105 isRegistrationRequest] & 1) == 0))
        {
LABEL_109:
          v80 = 2;
        }

        else
        {
          v80 = 4;
        }
      }

      else
      {
        v80 = 3;
        v4 = v105;
      }
    }

    else
    {
      v80 = 5;
      v4 = v105;
    }
  }

LABEL_141:
  v114[8] = v80;
  sub_1B1D14EDC(v4, &v112);

  *&v108[15] = *&v114[15];
  v89 = v113;
  v107[0] = v112;
  v88 = v112;
  v107[1] = v113;
  *v108 = *v114;
  v90 = *v114;
  v91 = v113;
  *a4 = v112;
  *(a4 + 16) = v91;
  *(a4 + 32) = *v108;
  v92 = *&v108[16];
  *(a4 + 50) = v108[18];
  *(a4 + 48) = v92;
  *(v111 + 15) = *&v114[15];
  v110 = v89;
  v111[0] = v90;
  v109 = v88;
  sub_1B1D17268(v107, v106);
  sub_1B1D172A0(&v109);
}

void sub_1B1D14CF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 1;
  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v4, qword_1EB782530);
  v5 = a1;
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7BFEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "Applying test options: %{public}@", v8, 0xCu);
    sub_1B1CDEC18(v9, &qword_1EB775058, &unk_1B1D880B0);
    MEMORY[0x1B273C4C0](v9, -1, -1);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  v11 = sub_1B1D7B7EC();
  v12 = sub_1B1D7B80C();
  v13 = sub_1B1D7B7DC();
  if ((v14 & 1) != 0 || (v15 = v13) == 0)
  {
    v17 = sub_1B1D7B7CC();

    v15 = 0;
    v16 = v17 & 1;
    if (v17 == 2)
    {
      v16 = 3;
    }
  }

  else
  {

    v18 = 0;
    v16 = 2;
  }

  *a2 = v11;
  *(a2 + 1) = 2;
  *(a2 + 2) = v16;
  *(a2 + 3) = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  *(a2 + 17) = 33686018;
  *(a2 + 21) = 2;
}

void sub_1B1D14EDC(void *a1, unsigned __int8 *a2)
{
  v3 = [a1 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v4 = sub_1B1D7BEEC();

  LOBYTE(v3) = sub_1B1D11AF0(v4, a2);

  if ((v3 & 1) == 0 && a2[40] - 3 >= 3)
  {
    a2[41] = 1;
  }

  if (qword_1EB7749B8 != -1)
  {
    goto LABEL_51;
  }

LABEL_5:
  v5 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v5, qword_1EB782530);
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7C02C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "ASAuthorizationUIContext configuration:", v8, 2u);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  LOBYTE(v87[0]) = a2[44];
  v9 = sub_1B1D7BE5C();
  v11 = v10;
  v12 = sub_1B1D7BD6C();
  v13 = sub_1B1D7C02C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v87[0] = v15;
    *v14 = 136446210;
    v16 = sub_1B1D0D070(v9, v11, v87);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1B1C8D000, v12, v13, "\tUser verification: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B273C4C0](v15, -1, -1);
    MEMORY[0x1B273C4C0](v14, -1, -1);
  }

  else
  {
  }

  v17 = a2[42];
  if (a2[42])
  {
    v18 = 0xE200000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = sub_1B1D7BD6C();
  v20 = sub_1B1D7C02C();

  if (os_log_type_enabled(v19, v20))
  {
    if (v17)
    {
      v21 = 28271;
    }

    else
    {
      v21 = 6710895;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v87[0] = v23;
    *v22 = 136446210;
    v24 = sub_1B1D0D070(v21, v18, v87);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1B1C8D000, v19, v20, "\tKeychain sync: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B273C4C0](v23, -1, -1);
    MEMORY[0x1B273C4C0](v22, -1, -1);
  }

  else
  {
  }

  if ((a2[43] & 1) == 0)
  {
    v25 = sub_1B1D7BD6C();
    v26 = sub_1B1D7C02C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1C8D000, v25, v26, "\tKeychain sync restricted by configuration profile", v27, 2u);
      MEMORY[0x1B273C4C0](v27, -1, -1);
    }
  }

  v28 = a2[45];
  if (a2[45])
  {
    v29 = 0xE200000000000000;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v30 = sub_1B1D7BD6C();
  v31 = sub_1B1D7C02C();

  if (os_log_type_enabled(v30, v31))
  {
    if (v28)
    {
      v32 = 28271;
    }

    else
    {
      v32 = 6710895;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v87[0] = v34;
    *v33 = 136446210;
    v35 = sub_1B1D0D070(v32, v29, v87);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_1B1C8D000, v30, v31, "\tAutoFill from Passwords: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B273C4C0](v34, -1, -1);
    MEMORY[0x1B273C4C0](v33, -1, -1);
  }

  else
  {
  }

  v36 = [objc_opt_self() sharedManager];
  v37 = [v36 getEnabledExtensionsSynchronously];

  if (!v37)
  {
    goto LABEL_54;
  }

  sub_1B1CED540(0, &qword_1EB775450, 0x1E696ABD0);
  v38 = sub_1B1D7BEEC();

  v39 = sub_1B1D7BD6C();
  v40 = sub_1B1D7C02C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1B1C8D000, v39, v40, "\tEnabled credential provider extensions:", v41, 2u);
    MEMORY[0x1B273C4C0](v41, -1, -1);
  }

  if (v38 >> 62)
  {
    a2 = sub_1B1D7C1FC();
    if (!a2)
    {
LABEL_53:

LABEL_54:
      v57 = [a1 requestTypes];
      if (!v57)
      {
LABEL_111:

        v74 = sub_1B1D7BD6C();
        v75 = sub_1B1D7C02C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v87[0] = v77;
          *v76 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
          sub_1B1D181BC(&qword_1EB7750D0, &unk_1EB7753F0, &qword_1B1D88DF0);
          v78 = sub_1B1D7BDFC();
          v80 = v79;

          v81 = sub_1B1D0D070(v78, v80, v87);

          *(v76 + 4) = v81;
          _os_log_impl(&dword_1B1C8D000, v74, v75, "\tRequest types: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x1B273C4C0](v77, -1, -1);
          MEMORY[0x1B273C4C0](v76, -1, -1);
        }

        else
        {
        }

        return;
      }

      v58 = v57;
      v59 = MEMORY[0x1E69E7CC0];
      v60 = 1;
      while (2)
      {
        if ((v58 & v60) == 0)
        {
          goto LABEL_59;
        }

        if (v60 > 15)
        {
          if (v60 > 63)
          {
            if (v60 == 64)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v73 = *(v59 + 3);
              v65 = v64 + 1;
              if (v64 >= v73 >> 1)
              {
                v59 = sub_1B1D0CF64((v73 > 1), v64 + 1, 1, v59);
              }

              v61 = 0xE500000000000000;
              v66 = 0x454C426163;
            }

            else
            {
              if (v60 != 512)
              {
                goto LABEL_58;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v69 = *(v59 + 3);
              v65 = v64 + 1;
              v66 = 0xD00000000000001CLL;
              if (v64 >= v69 >> 1)
              {
                v59 = sub_1B1D0CF64((v69 > 1), v64 + 1, 1, v59);
              }

              v61 = 0x80000001B1D9C290;
            }
          }

          else if (v60 == 16)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v71 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000019;
            if (v64 >= v71 >> 1)
            {
              v59 = sub_1B1D0CF64((v71 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C2D0;
          }

          else
          {
            if (v60 != 32)
            {
              goto LABEL_58;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v67 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000016;
            if (v64 >= v67 >> 1)
            {
              v59 = sub_1B1D0CF64((v67 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C2B0;
          }
        }

        else if (v60 > 3)
        {
          if (v60 == 4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v72 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000014;
            if (v64 >= v72 >> 1)
            {
              v59 = sub_1B1D0CF64((v72 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C310;
          }

          else
          {
            if (v60 != 8)
            {
              goto LABEL_58;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v68 = *(v59 + 3);
            v65 = v64 + 1;
            if (v64 >= v68 >> 1)
            {
              v59 = sub_1B1D0CF64((v68 > 1), v64 + 1, 1, v59);
            }

            v66 = 0xD000000000000011;
            v61 = 0x80000001B1D9C2F0;
          }
        }

        else
        {
          if (v60 != 1)
          {
            if (v60 == 2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v63 = *(v59 + 3);
              v65 = v64 + 1;
              if (v64 >= v63 >> 1)
              {
                v59 = sub_1B1D0CF64((v63 > 1), v64 + 1, 1, v59);
              }

              v61 = 0xE800000000000000;
              v66 = 0x444920656C707041;
              break;
            }

LABEL_58:
            v58 &= ~v60;
            if (!v58)
            {
              goto LABEL_111;
            }

LABEL_59:
            v60 *= 2;
            continue;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
          }

          v64 = *(v59 + 2);
          v70 = *(v59 + 3);
          v65 = v64 + 1;
          if (v64 >= v70 >> 1)
          {
            v59 = sub_1B1D0CF64((v70 > 1), v64 + 1, 1, v59);
          }

          v61 = 0xE800000000000000;
          v66 = 0x64726F7773736150;
        }

        break;
      }

      *(v59 + 2) = v65;
      v62 = &v59[16 * v64];
      *(v62 + 4) = v66;
      *(v62 + 5) = v61;
      goto LABEL_58;
    }
  }

  else
  {
    a2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_53;
    }
  }

  v42 = 0;
  v43 = v38 & 0xC000000000000001;
  v83 = v38 & 0xFFFFFFFFFFFFFF8;
  v84 = v38 & 0xC000000000000001;
  v85 = a2;
  while (1)
  {
    if (v43)
    {
      v44 = MEMORY[0x1B273B2E0](v42, v38);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v42 >= *(v83 + 16))
      {
        goto LABEL_50;
      }

      v44 = *(v38 + 8 * v42 + 32);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        swift_once();
        goto LABEL_5;
      }
    }

    v46 = v44;
    v47 = sub_1B1D7BD6C();
    v48 = sub_1B1D7C02C();
    if (os_log_type_enabled(v47, v48))
    {
      break;
    }

LABEL_39:
    ++v42;
    if (v45 == a2)
    {
      goto LABEL_53;
    }
  }

  v86 = v45;
  v49 = v38;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v87[0] = v51;
  *v50 = 136446210;
  v52 = [v46 _localizedName];

  if (v52)
  {
    v53 = sub_1B1D7BE4C();
    v55 = v54;

    v56 = sub_1B1D0D070(v53, v55, v87);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_1B1C8D000, v47, v48, "\t\t%{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B273C4C0](v51, -1, -1);
    MEMORY[0x1B273C4C0](v50, -1, -1);

    v38 = v49;
    v45 = v86;
    v43 = v84;
    a2 = v85;
    goto LABEL_39;
  }

  __break(1u);
}