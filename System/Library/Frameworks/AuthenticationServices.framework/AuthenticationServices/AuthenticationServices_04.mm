void (*ASPasskeyAssertionCredential.extensionOutput.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  result = [v1 extensionOutput];
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);

LABEL_5:
    *a1 = v6;
    return sub_1B1D28330;
  }

  __break(1u);
  return result;
}

void sub_1B1D28330(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput);
      v5 = v3;
      v6 = [v4 init];
      v7 = *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
      v10 = v6;
      *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v5;
    }

    else
    {
      v10 = 0;
    }

    [a1[1] setExtensionOutput_];
  }

  else if (v3)
  {
    v8 = [objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput) init];
    v9 = *&v8[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
    v10 = v8;
    *&v8[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v3;

    [a1[1] setExtensionOutput_];
  }

  else
  {
    v10 = 0;
    [a1[1] setExtensionOutput_];
  }
}

unint64_t sub_1B1D2843C()
{
  result = qword_1EB7756A0;
  if (!qword_1EB7756A0)
  {
    sub_1B1D7B75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7756A0);
  }

  return result;
}

unint64_t sub_1B1D28494()
{
  result = qword_1EB7756B0;
  if (!qword_1EB7756B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7756A8, &qword_1B1D88838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7756B0);
  }

  return result;
}

id ASPasskeyCredentialIdentity.init(relyingPartyIdentifier:userName:credentialID:userHandle:recordIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_1B1D7BE1C();

  v15 = sub_1B1D7BE1C();

  v16 = sub_1B1D7B4DC();
  v17 = sub_1B1D7B4DC();
  if (a10)
  {
    v18 = sub_1B1D7BE1C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRelyingPartyIdentifier:v14 userName:v15 credentialID:v16 userHandle:v17 recordIdentifier:v18];
  sub_1B1CDEFDC(a7, a8);
  sub_1B1CDEFDC(a5, a6);

  return v19;
}

uint64_t ASPasskeyRegistrationCredentialExtensionInput.largeBlob.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = sub_1B1D7BC5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *v1;
  sub_1B1D7BC6C();
  if ((*(v12 + 48))(v19, 1, v11))
  {
    result = sub_1B1CDEC18(v19, &unk_1EB7756C0, &unk_1B1D86B00);
    v22 = 2;
  }

  else
  {
    (*(v12 + 16))(v15, v19, v11);
    sub_1B1CDEC18(v19, &unk_1EB7756C0, &unk_1B1D86B00);
    sub_1B1D7BC4C();
    (*(v4 + 16))(v8, v10, v3);
    v23 = (*(v4 + 88))(v8, v3);
    if (v23 != *MEMORY[0x1E698DF48] && v23 != *MEMORY[0x1E698DF50])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    v22 = v23 != *MEMORY[0x1E698DF48];
    (*(v4 + 8))(v10, v3);
    result = (*(v12 + 8))(v15, v11);
  }

  *a1 = v22;
  return result;
}

uint64_t ASPasskeyRegistrationCredentialExtensionInput.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1B1D7BBFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = *v1;
  sub_1B1D7BC0C();
  if ((*(v8 + 48))(v15, 1, v7))
  {
    result = sub_1B1CDEC18(v15, &qword_1EB7756D0, &qword_1B1D88840);
    *a1 = 2;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    (*(v8 + 16))(v11, v15, v7);
    sub_1B1CDEC18(v15, &qword_1EB7756D0, &qword_1B1D88840);
    v27 = sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v18 = sub_1B1D7BA2C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      (*(v8 + 8))(v11, v7);
      result = sub_1B1CDEC18(v6, &qword_1EB7751F8, &unk_1B1D86AF0);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    else
    {
      v26 = sub_1B1D7BA0C();
      v23 = v24;
      v21 = sub_1B1D7BA1C();
      v22 = v25;
      (*(v8 + 8))(v11, v7);
      sub_1B1C91AE4(0, 0xF000000000000000);
      result = (*(v19 + 8))(v6, v18);
      v20 = v26;
    }

    *a1 = v27 & 1;
    *(a1 + 8) = v20;
    *(a1 + 16) = v23;
    *(a1 + 24) = v21;
    *(a1 + 32) = v22;
  }

  return result;
}

void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.toObjC()(ASPasskeyRegistrationCredentialExtensionInput *__return_ptr retstr)
{
  v2 = *v1;
  v3 = objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionInput);

  [v3 initWithCoreExtensions_];
}

id sub_1B1D28CF8()
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
  v18 = *(v0 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
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

id ASPasskeyRegistrationCredentialExtensionInput.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1B1D7BC8C();
  v4 = sub_1B1D7C12C();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 initWithCoreExtensions_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  v4 = sub_1B1D7BE1C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.init()(ASPasskeyRegistrationCredentialExtensionInput *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id ASPasskeyRegistrationCredentialExtensionInput.init()()
{
  v1 = OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions;
  *&v0[v1] = [objc_allocWithZone(sub_1B1D7BC8C()) init];
  v3.receiver = v0;
  v3.super_class = ASPasskeyRegistrationCredentialExtensionInput;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for ASPasskeyRegistrationCredentialExtensionInput()
{
  result = qword_1EB7756E0;
  if (!qword_1EB7756E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7756E0);
  }

  return result;
}

uint64_t sub_1B1D29558(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1B1D7C2FC();
    v4 = (a1 + 32);
    type metadata accessor for ASCOSEAlgorithmIdentifier(0);
    sub_1B1D298E0();
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      sub_1B1D7C2DC();
      v6 = *(v7 + 16);
      sub_1B1D7C30C();
      sub_1B1D7C31C();
      sub_1B1D7C2EC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_1B1D29638(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B1D7C1FC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1B1D19538(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) == 0)
    {
      for (i = (a1 + 32); ; ++i)
      {
        v10 = *i;
        v15 = 0;
        v16 = 1;
        v11 = v10;
        result = MEMORY[0x1B273B000]();
        if (v16 == 1)
        {
          break;
        }

        v12 = v15;

        v17 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1B1D19538((v13 > 1), v14 + 1, 1);
          v3 = v17;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 8 * v14 + 32) = v12;
        if (!--v2)
        {
          return v3;
        }
      }

      goto LABEL_21;
    }

    v5 = 0;
    while (1)
    {
      MEMORY[0x1B273B2E0](v5, a1);
      v15 = 0;
      v16 = 1;
      result = MEMORY[0x1B273B000]();
      if (v16 == 1)
      {
        break;
      }

      v6 = v15;
      swift_unknownObjectRelease();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B1D19538((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      *(v3 + 8 * v8 + 32) = v6;
      if (v2 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id ASPasskeyCredentialRequest.init(credentialIdentity:clientDataHash:userVerificationPreference:supportedAlgorithms:)(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_1B1D7B4DC();
  sub_1B1D29558(a5);

  sub_1B1D298E0();
  v12 = sub_1B1D7BEDC();

  v13 = [v10 initWithCredentialIdentity:a1 clientDataHash:v11 userVerificationPreference:a4 supportedAlgorithms:v12];

  sub_1B1CDEFDC(a2, a3);
  return v13;
}

unint64_t sub_1B1D298E0()
{
  result = qword_1EB7756E8;
  if (!qword_1EB7756E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7756E8);
  }

  return result;
}

id ASPasskeyCredentialRequest.init(credentialIdentity:clientDataHash:userVerificationPreference:supportedAlgorithms:extensionInput:)(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void **a6)
{
  return sub_1B1D29954(a1, a2, a3, a4, a5, a6, off_1E7AF6970, &selRef_initWithCredentialIdentity_clientDataHash_userVerificationPreference_supportedAlgorithms_registrationExtensionInput_);
}

{
  return sub_1B1D29954(a1, a2, a3, a4, a5, a6, off_1E7AF6940, &selRef_initWithCredentialIdentity_clientDataHash_userVerificationPreference_supportedAlgorithms_assertionExtensionInput_);
}

id sub_1B1D29954(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void **a6, Class *a7, SEL *a8)
{
  v14 = *a6;
  v15 = sub_1B1D7B4DC();
  sub_1B1D29558(a5);

  sub_1B1D298E0();
  v16 = sub_1B1D7BEDC();

  if (v14)
  {
    v17 = [objc_allocWithZone(*a7) initWithCoreExtensions_];
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a8];

  sub_1B1CDEFDC(a2, a3);
  return v18;
}

uint64_t ASPasskeyCredentialRequest.init(loginChoice:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D29AA0, 0, 0);
}

uint64_t sub_1B1D29AA0()
{
  v1 = v0[5];
  v0[7] = sub_1B1D7B96C();
  v2 = *(MEMORY[0x1E698DF20] + 4);
  v6 = (*MEMORY[0x1E698DF20] + MEMORY[0x1E698DF20]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B1D29B50;
  v4 = v0[5];

  return v6();
}

uint64_t sub_1B1D29B50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[8];
  v7 = *v2;
  v4[9] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B1D29C58, 0, 0);
}

uint64_t sub_1B1D29C58()
{
  if (!*(v0 + 72))
  {
    v29 = *(v0 + 56);

LABEL_12:
    v28 = 0;
    goto LABEL_13;
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = sub_1B1D7BE1C();
  [v2 setUserName_];

  v5 = sub_1B1D7BE1C();

  [v2 setUserDisplayName_];

  v6 = [v2 clientDataHash];
  v7 = *(v0 + 56);
  if (!v6)
  {

    goto LABEL_12;
  }

  v8 = v6;
  v9 = sub_1B1D7B4EC();
  v32 = v10;

  v11 = [v7 relyingPartyIdentifier];
  if (!v11)
  {
    sub_1B1D7BE4C();
    v11 = sub_1B1D7BE1C();
  }

  v12 = [*(v0 + 56) userName];
  if (!v12)
  {
    sub_1B1D7BE4C();
    v12 = sub_1B1D7BE1C();
  }

  v13 = *(v0 + 56);
  v14 = [v13 userIdentifier];
  v15 = sub_1B1D7B4EC();
  v17 = v16;

  v18 = objc_allocWithZone(ASPasskeyCredentialIdentity);
  v19 = sub_1B1D7B4DC();
  v20 = sub_1B1D7B4DC();
  v21 = [v18 initWithRelyingPartyIdentifier:v11 userName:v12 credentialID:v19 userHandle:v20 recordIdentifier:0];
  sub_1B1CDEFDC(v15, v17);

  v22 = sub_1B1D7B4DC();
  v23 = [v13 supportedAlgorithmIdentifiers];
  if (!v23)
  {
    sub_1B1D298E0();
    sub_1B1D7BEEC();
    v23 = sub_1B1D7BEDC();
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 40);
  v27 = [swift_getObjCClassFromMetadata() requestWithCredentialIdentity:v21 clientDataHash:v22 userVerificationPreference:@"discouraged" supportedAlgorithms:v23];

  sub_1B1CDEFDC(v9, v33);
  v28 = v27;
LABEL_13:
  v30 = *(v0 + 8);

  return v30(v28);
}

char *ASPasskeyCredentialRequest.supportedAlgorithms.getter()
{
  v1 = [v0 supportedAlgorithms];
  sub_1B1D298E0();
  v2 = sub_1B1D7BEEC();

  v3 = sub_1B1D29638(v2);

  return v3;
}

void ASPasskeyCredentialRequest.extensionInput.getter(void *a1@<X8>)
{
  v3 = [v1 assertionExtensionInput];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions];
  }

  else
  {
    v6 = [v1 registrationExtensionInput];
    if (v6)
    {
      v7 = v6;
      v8 = *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions];

      v5 = (v8 | 0x4000000000000000);
    }

    else
    {
      v5 = 0x8000000000000000;
    }
  }

  *a1 = v5;
}

unint64_t get_enum_tag_for_layout_string_22AuthenticationServices33ASPasskeyCredentialExtensionInputO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B1D2A0AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D2A108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B1D2A168(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B1D2A1F4()
{
  v1 = v0;
  v2 = sub_1B1D7B75C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v114 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v110 - v7;
  v8 = sub_1B1D7B77C();
  v119 = *(v8 - 8);
  v9 = *(v119 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v117 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756F8, &qword_1B1D88968);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v110 - v15;
  v121 = sub_1B1D7B9DC();
  v16 = *(v121 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v1;
  v20 = [v1 attestationObject];
  v21 = sub_1B1D7B4EC();
  v23 = v22;

  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      sub_1B1CDEFDC(v21, v23);
      goto LABEL_15;
    }

    v113 = v8;
    v25 = v3;
    v26 = v2;
    v27 = v16;
    v28 = *(v21 + 16);
    v29 = *(v21 + 24);
    result = sub_1B1CDEFDC(v21, v23);
    v31 = v29 - v28;
    if (!__OFSUB__(v29, v28))
    {
      v16 = v27;
      v2 = v26;
      v3 = v25;
      v8 = v113;
      if (v31 < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v24)
  {
    result = sub_1B1CDEFDC(v21, v23);
    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      if (HIDWORD(v21) - v21 >= 1)
      {
        goto LABEL_11;
      }

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1D85C40;
      v40 = *MEMORY[0x1E696A588];
      *(inited + 32) = sub_1B1D7BE4C();
      v42 = inited + 32;
      v43 = 0x80000001B1D9C9F0;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000043;
LABEL_16:
      *(inited + 40) = v41;
      *(inited + 48) = v44;
      *(inited + 56) = v43;
      v45 = @"com.apple.AuthenticationServices.AuthorizationError";
      sub_1B1D6FAB8(inited);
      swift_setDeallocating();
      sub_1B1CDEC18(v42, &unk_1EB774FA0, &unk_1B1D93690);
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1B1D7BDCC();

      [v46 initWithDomain:v45 code:1002 userInfo:v47];

      return swift_willThrow();
    }

    goto LABEL_50;
  }

  sub_1B1CDEFDC(v21, v23);
  if (!BYTE6(v23))
  {
    goto LABEL_15;
  }

LABEL_11:
  v32 = [v122 clientDataHash];
  v33 = sub_1B1D7B4EC();
  v35 = v34;

  v36 = v35;
  v37 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v37)
    {
      sub_1B1CDEFDC(v33, v35);
      v38 = BYTE6(v35);
      goto LABEL_23;
    }

    result = sub_1B1CDEFDC(v33, v35);
    if (!__OFSUB__(HIDWORD(v33), v33))
    {
      v38 = HIDWORD(v33) - v33;
      goto LABEL_23;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v37 == 2)
  {
    v35 = v3;
    v48 = v2;
    v49 = v16;
    v51 = *(v33 + 16);
    v50 = *(v33 + 24);
    result = sub_1B1CDEFDC(v33, v36);
    v38 = v50 - v51;
    if (!__OFSUB__(v50, v51))
    {
      v16 = v49;
      v2 = v48;
      v3 = v35;
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  sub_1B1CDEFDC(v33, v35);
  v38 = 0;
LABEL_23:
  if (v38 != sub_1B1D7BDBC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    v2 = swift_initStackObject();
    *(v2 + 16) = xmmword_1B1D85C40;
    v55 = *MEMORY[0x1E696A588];
    *(v2 + 32) = sub_1B1D7BE4C();
    v3 = v2 + 32;
    *(v2 + 40) = v56;
    v125 = 0;
    v126 = 0xE000000000000000;
    v57 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D7C27C();
    MEMORY[0x1B273AEE0](0xD00000000000005BLL, 0x80000001B1D9C890);
    v127 = sub_1B1D7BDBC();
    v58 = sub_1B1D7C4EC();
    MEMORY[0x1B273AEE0](v58);

    MEMORY[0x1B273AEE0](0x20646E756F66202CLL, 0xE800000000000000);
    v59 = [v122 clientDataHash];
    v19 = sub_1B1D7B4EC();
    v61 = v60;

    v62 = v61;
    v63 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v63 == 2)
      {
        v68 = *(v19 + 2);
        v67 = *(v19 + 3);
        sub_1B1CDEFDC(v19, v62);
        v64 = v67 - v68;
        if (__OFSUB__(v67, v68))
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        sub_1B1CDEFDC(v19, v61);
        v64 = 0;
      }

LABEL_42:
      v127 = v64;
      v84 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v84);

      MEMORY[0x1B273AEE0](46, 0xE100000000000000);
      v85 = v125;
      v86 = v126;
      *(v2 + 72) = MEMORY[0x1E69E6158];
      *(v2 + 48) = v85;
      *(v2 + 56) = v86;
      sub_1B1D6FAB8(v2);
      swift_setDeallocating();
      sub_1B1CDEC18(v2 + 32, &unk_1EB774FA0, &unk_1B1D93690);
      v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v88 = sub_1B1D7BDCC();

      [v87 initWithDomain:v57 code:1002 userInfo:v88];

      return swift_willThrow();
    }

    if (!v63)
    {
      sub_1B1CDEFDC(v19, v61);
      v64 = BYTE6(v61);
      goto LABEL_42;
    }

    result = sub_1B1CDEFDC(v19, v61);
    LODWORD(v64) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v64 = v64;
      goto LABEL_42;
    }

LABEL_53:
    __break(1u);
    return result;
  }

  v52 = [v122 attestationObject];
  sub_1B1D7B4EC();

  v53 = v120;
  sub_1B1D7B9BC();
  v35 = v121;
  if ((*(v16 + 48))(v53, 1, v121) == 1)
  {
    sub_1B1CDEC18(v53, &qword_1EB7756F8, &qword_1B1D88968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v54 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    v42 = inited + 32;
    v43 = 0x80000001B1D9CA40;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v44 = 0xD000000000000024;
    goto LABEL_16;
  }

  v112 = v16;
  (*(v16 + 32))(v19, v53, v35);
  if (sub_1B1D7B9AC() == 1701736302 && v65 == 0xE400000000000000)
  {
LABEL_31:
    v66 = v119;

    goto LABEL_37;
  }

LABEL_36:
  v69 = sub_1B1D7C50C();

  v66 = v119;
  if ((v69 & 1) == 0)
  {
    if (sub_1B1D7B9AC() != 0x6972707265746E65 || v101 != 0xEA00000000006573)
    {
      v102 = sub_1B1D7C50C();

      v66 = v119;
      if ((v102 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
        v103 = swift_initStackObject();
        *(v103 + 16) = xmmword_1B1D85C40;
        v104 = *MEMORY[0x1E696A588];
        v105 = v19;
        *(v103 + 32) = sub_1B1D7BE4C();
        *(v103 + 72) = MEMORY[0x1E69E6158];
        *(v103 + 40) = v106;
        *(v103 + 48) = 0xD000000000000023;
        *(v103 + 56) = 0x80000001B1D9CA70;
        v107 = @"com.apple.AuthenticationServices.AuthorizationError";
        sub_1B1D6FAB8(v103);
        swift_setDeallocating();
        sub_1B1CDEC18(v103 + 32, &unk_1EB774FA0, &unk_1B1D93690);
        v108 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v109 = sub_1B1D7BDCC();

        [v108 initWithDomain:v107 code:1002 userInfo:v109];

        swift_willThrow();
        return (*(v112 + 8))(v105, v35);
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_37:
  sub_1B1D7B9CC();
  v71 = v117;
  v70 = v118;
  sub_1B1D7B70C();
  v120 = v70;
  v111 = v19;
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1B1D85D30;
    v73 = *MEMORY[0x1E696A588];
    *(v72 + 32) = sub_1B1D7BE4C();
    *(v72 + 72) = MEMORY[0x1E69E6158];
    *(v72 + 40) = v74;
    *(v72 + 48) = 0xD00000000000001ALL;
    *(v72 + 56) = 0x80000001B1D9C8F0;
    v75 = *MEMORY[0x1E696AA08];
    *(v72 + 80) = sub_1B1D7BE4C();
    *(v72 + 88) = v76;
    v77 = v120;
    swift_getErrorValue();
    v78 = v123;
    v79 = v124;
    *(v72 + 120) = v124;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v72 + 96));
    (*(*(v79 - 8) + 16))(boxed_opaque_existential_0, v78, v79);
    v81 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(v72);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
    swift_arrayDestroy();
    v82 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v83 = sub_1B1D7BDCC();

    [v82 initWithDomain:v81 code:1002 userInfo:v83];

    swift_willThrow();
    return (*(v112 + 8))(v111, v35);
  }

  else
  {
    v89 = *(v66 + 32);
    v113 = v8;
    v89(v116, v71, v8);
    v90 = [v122 relyingParty];
    v122 = sub_1B1D7BE4C();
    v119 = v91;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775698, &qword_1B1D88830);
    v92 = *(v3 + 72);
    v93 = v3;
    v94 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1B1D88950;
    sub_1B1D7B73C();
    sub_1B1D7B74C();
    sub_1B1D7B72C();
    sub_1B1D7B71C();
    v125 = v95;
    sub_1B1D2843C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756A8, &qword_1B1D88838);
    v96 = v66;
    sub_1B1D28494();
    v97 = v115;
    sub_1B1D7C1BC();
    v125 = MEMORY[0x1E69E7CC0];
    v98 = v114;
    v99 = v116;
    sub_1B1D7C1BC();
    sub_1B1D7B76C();

    v100 = *(v93 + 8);
    v100(v98, v2);
    v100(v97, v2);
    (*(v96 + 8))(v99, v113);
    return (*(v112 + 8))(v111, v121);
  }
}

uint64_t sub_1B1D2B13C()
{
  v0 = sub_1B1D7B79C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756F0, &qword_1B1D88960);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B1D85D30;
  v30 = v8;
  v9 = v8 + v7;
  v10 = *(v2 + 104);
  v10(v8 + v7, *MEMORY[0x1E698DEE0], v0);
  v11 = *MEMORY[0x1E698DED8];
  v31 = v6;
  v10(v9 + v6, v11, v0);
  v32 = MEMORY[0x1E69E7CC0];
  sub_1B1D194F8(0, 2, 0);
  v12 = v32;
  v29 = *(v2 + 16);
  v29(v5, v9, v0);
  v13 = sub_1B1D7B78C();
  v28 = v14;
  v15 = *(v2 + 8);
  v15(v5, v0);
  v32 = v12;
  v17 = *(v12 + 16);
  v16 = *(v12 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1B1D194F8((v16 > 1), v17 + 1, 1);
    v12 = v32;
  }

  *(v12 + 16) = v17 + 1;
  v18 = v12 + 16 * v17;
  v19 = v28;
  *(v18 + 32) = v13;
  *(v18 + 40) = v19;
  v29(v5, v9 + v31, v0);

  v20 = sub_1B1D7B78C();
  v22 = v21;
  v15(v5, v0);
  v32 = v12;
  v24 = *(v12 + 16);
  v23 = *(v12 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1B1D194F8((v23 > 1), v24 + 1, 1);
    v12 = v32;
  }

  *(v12 + 16) = v24 + 1;
  v25 = v12 + 16 * v24;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  return v12;
}

uint64_t ASCredentialIdentityStore.credentialIdentities(forService:credentialIdentityTypes:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D2B408, 0, 0);
}

uint64_t sub_1B1D2B408()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B1D2B538;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775700, &qword_1B1D88980);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1D2B630;
  v0[13] = &block_descriptor_5;
  v0[14] = v4;
  [v1 getCredentialIdentitiesForService:v3 credentialIdentityTypes:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D2B538()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D2B618, 0, 0);
}

uint64_t sub_1B1D2B630(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775708, &qword_1B1D88988);
  **(*(v1 + 64) + 40) = sub_1B1D7BEEC();

  return MEMORY[0x1EEE6DED8](v1);
}

id ASPasskeyRegistrationCredential.init(relyingParty:clientDataHash:credentialID:attestationObject:extensionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v15 = *a9;
  v16 = sub_1B1D7BE1C();

  v23 = a4;
  v17 = sub_1B1D7B4DC();
  v25 = sub_1B1D7B4DC();
  v24 = sub_1B1D7B4DC();
  if (v15)
  {
    v18 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v19 = *&v18[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    *&v18[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v15;
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRelyingParty:v16 clientDataHash:v17 credentialID:v25 attestationObject:v24 extensionOutput:v20];
  sub_1B1CDEFDC(a7, a8);
  sub_1B1CDEFDC(a5, a6);
  sub_1B1CDEFDC(a3, v23);

  return v22;
}

void ASPasskeyRegistrationCredential.extensionOutput.getter(void *a1@<X8>)
{
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [v1 extensionOutput];
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];

LABEL_5:
    *a1 = v6;
    return;
  }

  __break(1u);
}

void ASPasskeyRegistrationCredential.extensionOutput.setter(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v4 = *&v3[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    *&v3[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v2;
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  [v1 setExtensionOutput_];
}

void (*ASPasskeyRegistrationCredential.extensionOutput.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  result = [v1 extensionOutput];
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);

LABEL_5:
    *a1 = v6;
    return sub_1B1D2BA18;
  }

  __break(1u);
  return result;
}

void sub_1B1D2BA18(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput);
      v5 = v3;
      v6 = [v4 init];
      v7 = *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
      v10 = v6;
      *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v5;
    }

    else
    {
      v10 = 0;
    }

    [a1[1] setExtensionOutput_];
  }

  else if (v3)
  {
    v8 = [objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionOutput) init];
    v9 = *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    v10 = v8;
    *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v3;

    [a1[1] setExtensionOutput_];
  }

  else
  {
    v10 = 0;
    [a1[1] setExtensionOutput_];
  }
}

void sub_1B1D2BB24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 challenge];
  v5 = sub_1B1D7B4EC();
  v7 = v6;

  v8 = [a1 origin];
  v9 = sub_1B1D7BE4C();
  v11 = v10;

  v12 = [a1 topOrigin];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B1D7BE4C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 crossOrigin];

  v18 = 2 * (v17 != 1);
  if (v17 == 2)
  {
    v18 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
}

id sub_1B1D2BC34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v8 = objc_allocWithZone(ASPublicKeyCredentialClientData);
  v9 = sub_1B1D7B4DC();
  v10 = sub_1B1D7BE1C();
  v11 = [v8 initWithChallenge:v9 origin:v10];

  if (v5)
  {
    v12 = sub_1B1D7BE1C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTopOrigin_];

  v13 = 1;
  if (v7)
  {
    v13 = 2;
  }

  if (v7 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  [v11 setCrossOrigin_];
  return v11;
}

uint64_t ASPublicKeyCredentialClientData.CrossOriginValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t ASPublicKeyCredentialClientData.challenge.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASPublicKeyCredentialClientData.challenge.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.origin.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASPublicKeyCredentialClientData.origin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.topOrigin.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ASPublicKeyCredentialClientData.topOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASPublicKeyCredentialClientData.init(challenge:origin:topOrigin:crossOrigin:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

unint64_t sub_1B1D2BFA4()
{
  result = qword_1EB775710;
  if (!qword_1EB775710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775710);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B1D2C014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D2C05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D2C0CC(uint64_t a1)
{
  v3 = sub_1B1D7B82C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1D7B85C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 crossOrigin] < 3)
  {
    if (!a1)
    {
      v13 = MEMORY[0x1E698DF00];
LABEL_6:
      (*(v4 + 104))(v7, *v13, v3);
      v14 = [v1 challenge];
      sub_1B1D7B4EC();

      v15 = [v1 origin];
      sub_1B1D7BE4C();

      sub_1B1D7B83C();
      v16 = sub_1B1D7B84C();
      (*(v9 + 8))(v12, v8);
      return v16;
    }

    if (a1 == 1)
    {
      v13 = MEMORY[0x1E698DEF8];
      goto LABEL_6;
    }
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void static ASOsloIcon.passkeySymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001B1D9AC20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

id static ASOsloIcon.securityKeySymbol(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 0x80000001B1D9ABC0;
    result = [objc_opt_self() as_authenticationServicesBundle];
    v5 = 64;
    v6 = 0xD000000000000010;
  }

  else
  {
    result = 0;
    v5 = 32;
    v3 = 0xEC00000079656B2ELL;
    v6 = 0x7974697275636573;
  }

  *a2 = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  return result;
}

double static ASOsloIcon.lockSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.71011787e214;
  *a1 = xmmword_1B1D85E80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t *ASOsloIcon.init(icon:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 24);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 32;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = v2;
      v2 = *&aTouchid_1[8 * v2];
      v3 = qword_1B1D88D40[v8];
    }
  }

  else if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = result[2];
    v7 = v4 | 0x60;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

double static ASOsloIcon.passwordSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.42880739e248;
  *a1 = xmmword_1B1D87850;
  *(a1 + 16) = 0;
  *(a1 + 24) = 32;
  return result;
}

char *static ASOsloIcon.biometrics(biometry:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aTouchid_1[8 * v2];
  v4 = qword_1B1D88D40[v2];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t ASOsloIcon.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24);
  v4 = v3 >> 5;
  if (v3 >> 5 > 1)
  {
    v5 = v0[2];
    if (v4 == 2)
    {
      MEMORY[0x1B273B630](2);
      sub_1B1D7BE7C();
    }

    else
    {
      if (v4 == 3)
      {
        v6 = v3 & 0x1F;
        MEMORY[0x1B273B630](3);
        if (v6)
        {
          if (v6 != 1)
          {
            return MEMORY[0x1B273B630](0);
          }

          MEMORY[0x1B273B630](2);
          sub_1B1D7B4FC();
          if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          return MEMORY[0x1B273B660](v7);
        }

        goto LABEL_12;
      }

      MEMORY[0x1B273B630](4);
    }

    return sub_1B1D7C15C();
  }

  if (v4)
  {
LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  MEMORY[0x1B273B630](v9);

  return sub_1B1D7BE7C();
}

uint64_t ASOsloIcon.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2C720()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2C780()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1B1D7C5CC();
  ASOsloIcon.hash(into:)();
  return sub_1B1D7C61C();
}

BOOL _s22AuthenticationServices10ASOsloIconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v26[0] = *a1;
  v26[1] = v3;
  v26[2] = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v10 = v5 >> 5;
  v31 = v9;
  if (v5 >> 5 > 1)
  {
    if (v10 == 2)
    {
      if ((v9 & 0xE0) == 0x40)
      {
        v13 = v9;
        if ((v2 != v6 || v3 != v7) && (sub_1B1D7C50C() & 1) == 0)
        {
          v17 = v6;
          v18 = v7;
          v19 = v8;
          LOBYTE(v9) = v13;
          goto LABEL_22;
        }

        sub_1B1CF97E4();
        sub_1B1CE2014(v6, v7, v8, v13);
        sub_1B1CE2014(v2, v3, v4, v5);
LABEL_16:
        v15 = sub_1B1D7C14C();
        sub_1B1D2CC54(v26);
        return v15 & 1;
      }
    }

    else
    {
      if (v10 == 3)
      {
        if ((v9 & 0xE0) == 0x60)
        {
          v24[0] = v2;
          v24[1] = v3;
          v24[2] = v4;
          v25 = v5 & 0x1F;
          v22[0] = v6;
          v22[1] = v7;
          v22[2] = v8;
          v23 = v9 & 0x1F;
          v11 = v9;
          sub_1B1CE2014(v6, v7, v8, v9);
          sub_1B1CE2014(v2, v3, v4, v5);
          sub_1B1CE2014(v6, v7, v8, v11);
          sub_1B1CE2014(v2, v3, v4, v5);
          v12 = _s22AuthenticationServices9ASAppIconO2eeoiySbAC_ACtFZ_0(v24, v22);
          sub_1B1D2CC54(v26);
          sub_1B1CE23AC(v6, v7, v8, v11);
          sub_1B1CE23AC(v2, v3, v4, v5);
          return v12;
        }

        goto LABEL_21;
      }

      if ((v9 & 0xE0) == 0x80)
      {
        v14 = v9;
        sub_1B1CF97E4();
        sub_1B1CE2014(v6, v7, v8, v14);
        sub_1B1CE2014(v2, v3, v4, v5);
        goto LABEL_16;
      }
    }

LABEL_21:
    v17 = v6;
    v18 = v7;
    v19 = v8;
LABEL_22:
    sub_1B1CE2014(v17, v18, v19, v9);
    sub_1B1CE2014(v2, v3, v4, v5);
    sub_1B1D2CC54(v26);
    return 0;
  }

  if (v10)
  {
    if ((v9 & 0xE0) != 0x20)
    {
      goto LABEL_21;
    }
  }

  else if (v9 >= 0x20)
  {
    goto LABEL_21;
  }

  if (v2 != v6 || v3 != v7)
  {
    v20 = v9;
    v21 = sub_1B1D7C50C();
    sub_1B1CE2014(v6, v7, v8, v20);
    sub_1B1CE2014(v2, v3, v4, v5);
    sub_1B1D2CC54(v26);
    return v21 & 1;
  }

  sub_1B1CE2014(v2, v3, v8, v9);
  sub_1B1CE2014(v2, v3, v4, v5);
  sub_1B1D2CC54(v26);
  return 1;
}

unint64_t sub_1B1D2CB10()
{
  result = qword_1EB775718;
  if (!qword_1EB775718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775718);
  }

  return result;
}

uint64_t sub_1B1D2CB70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 25))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D2CBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1B1D2CC54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775720, &unk_1B1D88D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1D2CCBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x80000001B1D9A3E0;
    v12 = 0xD00000000000001ALL;
    v13 = 0x2D7972746E756F63;
    v14 = 0xEC00000065646F63;
    if (a1 != 8)
    {
      v13 = 0xD000000000000010;
      v14 = 0x80000001B1D9A410;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE400000000000000;
    v16 = 1702125924;
    if (a1 != 5)
    {
      v16 = 0x6E6F6D2D72616579;
      v15 = 0xEA00000000006874;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x6C69616D65;
    v6 = 0xE600000000000000;
    v7 = 0x7265626D756ELL;
    if (a1 != 3)
    {
      v7 = 0x6E61656C6F6F62;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0x80000001B1D9A3B0;
    }

    else
    {
      v8 = 0x676E69727473;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE500000000000000;
        if (v9 != 0x6C69616D65)
        {
          goto LABEL_57;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265626D756ELL)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6E61656C6F6F62)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (!a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = "concealed-string";
LABEL_52:
    v17 = (v18 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v17 = 0x80000001B1D9A3E0;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (a2 == 8)
    {
      v17 = 0xEC00000065646F63;
      if (v9 != 0x2D7972746E756F63)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = "subdivision-code";
    goto LABEL_52;
  }

  if (a2 == 5)
  {
    v17 = 0xE400000000000000;
    if (v9 != 1702125924)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xEA00000000006874;
    if (v9 != 0x6E6F6D2D72616579)
    {
LABEL_57:
      v19 = sub_1B1D7C50C();
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_1B1D2CFD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F6973726576;
    }

    else
    {
      v3 = 0x73746E756F636361;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x726574726F707865;
    v4 = 0xEC00000064497052;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000001B1D9A2F0;
  }

  else
  {
    v3 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6E6F6973726576;
    }

    else
    {
      v6 = 0x73746E756F636361;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000064497052;
    if (v3 != 0x726574726F707865)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001B1D9A2F0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE900000000000070;
    if (v3 != 0x6D617473656D6974)
    {
LABEL_31:
      v7 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1B1D2D18C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496C61;
  v3 = 0x69746E6564657263;
  v4 = a1;
  v5 = 0x7073694472657375;
  v6 = 0xEF656D614E79616CLL;
  v7 = 0x646E614872657375;
  v8 = 0xEA0000000000656CLL;
  if (a1 != 4)
  {
    v7 = 7955819;
    v8 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1682534514;
  if (a1 != 1)
  {
    v10 = 0x656D616E72657375;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x69746E6564657263;
    v9 = 0xEC00000064496C61;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF656D614E79616CLL;
      if (v11 != 0x7073694472657375)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x646E614872657375)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v11 != 7955819)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1682534514)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D616E72657375;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1B1D2D368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007373657264;
  v3 = 0x6441746565727473;
  v4 = a1;
  v5 = 0x726F746972726574;
  v6 = 0xE900000000000079;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F63;
  if (a1 != 4)
  {
    v8 = 7103860;
    v7 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6F436C6174736F70;
  v10 = 0xEA00000000006564;
  if (a1 != 1)
  {
    v9 = 2037672291;
    v10 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x6441746565727473;
    v10 = 0xED00007373657264;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000079;
      if (v11 != 0x726F746972726574)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x7972746E756F63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v11 != 7103860)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006564;
        if (v11 != 0x6F436C6174736F70)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE400000000000000;
      v3 = 2037672291;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1B1D2D538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F697461657263;
  v5 = 0xEC00000065746144;
  v6 = 0x6144797269707865;
  if (a1 == 4)
  {
    v7 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001B1D9A5B0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x4B65746176697270;
  v9 = 0xEA0000000000746ELL;
  if (a1 == 1)
  {
    v9 = 0xEA00000000007965;
  }

  else
  {
    v8 = 0x656D6D6F4379656BLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6570795479656BLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6570795479656BLL)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v14 = 0xEA0000000000746ELL;
      if (v10 != 0x656D6D6F4379656BLL)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v12 = 0x4B65746176697270;
    v13 = 31077;
    goto LABEL_25;
  }

  if (a2 == 3)
  {
    v14 = 0xEC00000065746144;
    if (v10 != 0x6E6F697461657263)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (a2 == 4)
  {
    v12 = 0x6144797269707865;
    v13 = 25972;
LABEL_25:
    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v10 != v12)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v14 = 0x80000001B1D9A5B0;
  if (v10 != 0xD000000000000013)
  {
LABEL_36:
    v15 = sub_1B1D7C50C();
    goto LABEL_37;
  }

LABEL_34:
  if (v11 != v14)
  {
    goto LABEL_36;
  }

  v15 = 1;
LABEL_37:

  return v15 & 1;
}

uint64_t sub_1B1D2D738(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  v6 = 0x6F724664696C6176;
  v7 = 0xE90000000000006DLL;
  if (a1 != 4)
  {
    v6 = 0x6144797269707865;
    v7 = 0xEA00000000006574;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656D616E72657375;
  if (a1 != 1)
  {
    v9 = 0x6570795479656BLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7955819;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x6F724664696C6176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006574;
      if (v10 != 0x6144797269707865)
      {
LABEL_34:
        v13 = sub_1B1D7C50C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D616E72657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6570795479656BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7955819)
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

uint64_t sub_1B1D2D918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746572636573;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x656D616E72657375;
  v6 = 0x687469726F676C61;
  v7 = 0xE90000000000006DLL;
  if (a1 != 4)
  {
    v6 = 0x726575737369;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x646F69726570;
  if (a1 != 1)
  {
    v8 = 0x737469676964;
  }

  if (!a1)
  {
    v8 = 0x746572636573;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x656D616E72657375)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE90000000000006DLL;
      if (v9 != 0x687469726F676C61)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x726575737369)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x646F69726570)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x737469676964;
    }

    if (v9 != v2)
    {
LABEL_31:
      v12 = sub_1B1D7C50C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v11)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1B1D2DAD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6E6F697461657263;
  v6 = 0xEA00000000007441;
  if (a1 != 6)
  {
    v5 = 0x6465696669646F6DLL;
    v6 = 0xEA00000000007441;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736D657469;
  if (a1 != 4)
  {
    v8 = 0x656C6C6F63627573;
    v7 = 0xEE00736E6F697463;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (a1 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0x6E6F697461657263;
      }

      else
      {
        v14 = 0x6465696669646F6DLL;
      }

      v13 = 0xEA00000000007441;
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      v14 = 0x736D657469;
    }

    else
    {
      v14 = 0x656C6C6F63627573;
      v13 = 0xEE00736E6F697463;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      v14 = 0x656C746974627573;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1852793705;
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    v14 = 0x656C746974;
  }

  else
  {
    v13 = 0xE200000000000000;
    v14 = 25705;
  }

  if (v11 == v14 && v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B1D7C50C();
  }

  return v15 & 1;
}

uint64_t sub_1B1D2DD08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x697463656C6C6F63;
  v6 = 0xEB00000000736E6FLL;
  if (a1 != 5)
  {
    v5 = 0x736D657469;
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E6C6C7566;
  if (a1 != 3)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (a1 != 1)
  {
    v10 = 0x6C69616D65;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C69616D65)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v13 = 0xE800000000000000;
    v14 = 0x616E72657375;
    goto LABEL_24;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1852793705)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v13 = 0xE800000000000000;
    v14 = 0x614E6C6C7566;
LABEL_24:
    if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x656D000000000000))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v11 != 0x697463656C6C6F63)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x736D657469)
    {
LABEL_38:
      v15 = sub_1B1D7C50C();
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_1B1D2DF14()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E020()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E120()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E230()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2E34C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.FormatVersion.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B1D7C3AC();

  *a1 = v2 != 0;
  return result;
}

uint64_t ASImportableItem.init(id:created:lastModified:title:subtitle:favorite:scope:credentials:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v32 = a11[1];
  v33 = *a11;
  v15 = type metadata accessor for ASImportableItem(0);
  v16 = v15[5];
  v17 = sub_1B1D7B53C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(&a9[v16], 1, 1, v17);
  v20 = v15[6];
  v19(&a9[v20], 1, 1, v17);
  v27 = &a9[v15[8]];
  v28 = v15[9];
  v21 = &a9[v15[10]];
  *v21 = 0;
  v21[1] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1CDEC18(&a9[v16], &qword_1EB775228, &qword_1B1D88D60);
  v22 = *(v18 + 32);
  v22(&a9[v16], a3, v17);
  v19(&a9[v16], 0, 1, v17);
  sub_1B1CDEC18(&a9[v20], &qword_1EB775228, &qword_1B1D88D60);
  v22(&a9[v20], a4, v17);
  v19(&a9[v20], 0, 1, v17);
  v23 = &a9[v15[7]];
  *v23 = a5;
  *(v23 + 1) = a6;
  *v27 = a7;
  *(v27 + 1) = a8;
  a9[v28] = a10;
  v24 = v21[1];
  result = sub_1B1D0C93C(*v21);
  *v21 = v33;
  v21[1] = v32;
  *&a9[v15[12]] = a12;
  *&a9[v15[11]] = a13;
  return result;
}

uint64_t ASImportableEditableField.init(id:fieldType:value:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 ASImportableCredential.BasicAuthentication.init(userName:password:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v11 = a2[1];
  v12 = *a2;
  v9 = *(a1 + 32);
  v10 = a2[2];
  v6 = *(a2 + 6);
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  *(a3 + 48) = v5;
  sub_1B1D0D630(0, 0, 0, 0, 0);
  *(a3 + 56) = v12;
  *(a3 + 72) = v11;
  result = v10;
  *(a3 + 88) = v10;
  *(a3 + 104) = v6;
  return result;
}

uint64_t ASImportableCredentialScope.init(urls:androidApps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ASImportableCredential.TOTP.init(secret:period:digits:userName:algorithm:issuer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 18) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

__n128 ASImportableCredential.Note.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

__n128 ASImportableCredential.Passkey.init(credentialID:relyingPartyIdentifier:userName:userDisplayName:userHandle:key:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_1B1D2E888()
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2EA04()
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2EB2C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EC3C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2ED78()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EE6C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2EF68()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F080()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F188()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.FormatVersion.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775728, &qword_1B1D88D68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D2F594();
  sub_1B1D7C62C();
  if (!v1)
  {
    LOBYTE(v23) = 0;
    v9 = sub_1B1D7C42C();
    LOBYTE(v23) = 1;
    v10 = sub_1B1D7C42C();
    if (v9 != 1 || v10 != 0)
    {
      v20 = v10;
      v12 = v9;
      v13 = sub_1B1D7C2BC();
      swift_allocError();
      v22 = v14;
      v21 = sub_1B1D7C3CC();
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1B1D7C27C();

      v23 = 0xD000000000000015;
      v24 = 0x80000001B1D9CB20;
      v25 = v12;
      v15 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v15);

      MEMORY[0x1B273AEE0](46, 0xE100000000000000);
      v25 = v20;
      v16 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v16);

      v17 = v22;
      sub_1B1D7C2AC();
      (*(*(v13 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v13);
      swift_willThrow();
    }

    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B1D2F594()
{
  result = qword_1EB775730;
  if (!qword_1EB775730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775730);
  }

  return result;
}

uint64_t ASExportedCredentialData.FormatVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775738, &qword_1B1D88D70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D2F594();
  sub_1B1D7C63C();
  v12 = 0;
  sub_1B1D7C4BC();
  if (!v1)
  {
    v11 = 1;
    sub_1B1D7C4BC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B1D2F76C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F6E696DLL;
  }

  else
  {
    v2 = 0x726F6A616DLL;
  }

  if (*a2)
  {
    v3 = 0x726F6E696DLL;
  }

  else
  {
    v3 = 0x726F6A616DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B1D7C50C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B1D2F7EC()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2F85C()
{
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2F8B0()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D2F928(uint64_t *a1@<X8>)
{
  v2 = 0x726F6A616DLL;
  if (*v1)
  {
    v2 = 0x726F6E696DLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1B1D2F958()
{
  if (*v0)
  {
    return 0x726F6E696DLL;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_1B1D2F990(uint64_t a1)
{
  v2 = sub_1B1D2F594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D2F9CC(uint64_t a1)
{
  v2 = sub_1B1D2F594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D2FA08@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1D7C3AC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B1D2FAB0()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2FB0C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.exporterRelyingPartyIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ASExportedCredentialData.exporterDisplayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASExportedCredentialData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASExportedCredentialData(0) + 28);
  v4 = sub_1B1D7B53C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ASExportedCredentialData.accounts.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASExportedCredentialData(0) + 32));
}

uint64_t ASExportedCredentialData.accounts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASExportedCredentialData(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASExportedCredentialData.init(accounts:formatVersion:exporterRelyingPartyIdentifier:exporterDisplayName:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v14 = type metadata accessor for ASExportedCredentialData(0);
  *&a7[*(v14 + 32)] = a1;
  *a7 = a2;
  *(a7 + 1) = a3;
  *(a7 + 2) = a4;
  *(a7 + 3) = a5;
  v15 = *(v14 + 28);
  v16 = sub_1B1D7B53C();
  v17 = *(*(v16 - 8) + 32);

  return v17(&a7[v15], a6, v16);
}

uint64_t sub_1B1D2FDB0()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D2FEA4()
{
  *v0;
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D2FF84()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D30074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BA10();
  *a2 = result;
  return result;
}

void sub_1B1D300A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746E756F636361;
  v5 = 0xEC00000064497052;
  v6 = 0x726574726F707865;
  v7 = 0x80000001B1D9A2F0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B1D30154()
{
  v1 = *v0;
  v2 = 0x73746E756F636361;
  v3 = 0x726574726F707865;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973726576;
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

uint64_t sub_1B1D30200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6BA10();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D30228(uint64_t a1)
{
  v2 = sub_1B1D64034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D30264(uint64_t a1)
{
  v2 = sub_1B1D64034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D302A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B49C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1B1D641B4(&qword_1EB775FB0, MEMORY[0x1E6968FB0]);
    v22 = sub_1B1D7BE0C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1D304B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1B1D66170(v24, v15);
    sub_1B1D66170(v27, v15);
    v13 = _s22AuthenticationServices27ASImportableCredentialScopeV12AndroidAppIDV2eeoiySbAE_AEtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1B1D661A8(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1B1D661A8(v31);
    if (!v13)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1B1D305D4(uint64_t a1, uint64_t a2)
{
  v310 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ASImportableItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v251 - v10;
  v12 = sub_1B1D7B53C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v251 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v281 = &v251 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v282 = &v251 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v284 = &v251 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v286 = &v251 - v25;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v26 = *(*(v293 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v293);
  v287 = &v251 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v288 = &v251 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v289 = &v251 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v290 = &v251 - v33;
  v297 = type metadata accessor for ASImportableCollection(0);
  v34 = *(*(v297 - 1) + 64);
  v35 = MEMORY[0x1EEE9AC00](v297);
  v294 = &v251 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v296 = (&v251 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v295 = (&v251 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v47 = &v251 - v46;
  v48 = *(a1 + 16);
  if (v48 != *(a2 + 16))
  {
    goto LABEL_271;
  }

  if (!v48 || a1 == a2)
  {
LABEL_262:
    result = 1;
    goto LABEL_272;
  }

  v276 = v9;
  v49 = 0;
  v50 = a1 + 32;
  v51 = a2 + 32;
  v283 = (v13 + 48);
  v271 = (v13 + 32);
  v272 = v16;
  v273 = (v13 + 8);
  v274 = 0;
  v278 = v12;
  v279 = v45;
  v291 = v43;
  v292 = v47;
  v270 = v44;
  v265 = a1 + 32;
  v266 = v48;
  v264 = a2 + 32;
  while (1)
  {
    v269 = v49;
    v52 = (v50 + 80 * v49);
    v53 = v52[1];
    v300 = *v52;
    v301 = v53;
    v54 = v52[3];
    v302 = v52[2];
    v303 = v54;
    v55 = (v51 + 80 * v49);
    v57 = *v55;
    v56 = v55[1];
    v304 = v52[4];
    v305 = v57;
    v58 = v55[2];
    v59 = v55[3];
    v306 = v56;
    v307 = v58;
    v60 = v55[4];
    v308 = v59;
    v309 = v60;
    v61 = v57;
    v62 = *(&v300 + 1) >> 62;
    v63 = *(&v57 + 1) >> 62;
    v64 = v295;
    if (*(&v300 + 1) >> 62 == 3)
    {
      v65 = 0;
      if (v300 == __PAIR128__(0xC000000000000000, 0) && *(&v305 + 1) >> 62 == 3)
      {
        v65 = 0;
        if (v305 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_31;
        }
      }

LABEL_19:
      if (v63 <= 1)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v71 = *(v300 + 16);
        v70 = *(v300 + 24);
        v68 = __OFSUB__(v70, v71);
        v65 = v70 - v71;
        if (v68)
        {
          goto LABEL_284;
        }

        goto LABEL_19;
      }

      v65 = 0;
      if (v63 <= 1)
      {
        goto LABEL_20;
      }
    }

    else if (v62)
    {
      LODWORD(v65) = DWORD1(v300) - v300;
      if (__OFSUB__(DWORD1(v300), v300))
      {
        goto LABEL_283;
      }

      v65 = v65;
      if (v63 <= 1)
      {
LABEL_20:
        if (v63)
        {
          LODWORD(v69) = DWORD1(v57) - v57;
          if (__OFSUB__(DWORD1(v57), v57))
          {
            goto LABEL_280;
          }

          v69 = v69;
        }

        else
        {
          v69 = BYTE14(v305);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v65 = BYTE14(v300);
      if (v63 <= 1)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    if (v63 != 2)
    {
      if (v65)
      {
        goto LABEL_271;
      }

LABEL_31:
      sub_1B1D6D4CC(&v300, v299);
      sub_1B1D6D4CC(&v305, v299);
      goto LABEL_53;
    }

    v67 = *(v57 + 16);
    v66 = *(v57 + 24);
    v68 = __OFSUB__(v66, v67);
    v69 = v66 - v67;
    if (v68)
    {
      goto LABEL_279;
    }

LABEL_26:
    if (v65 != v69)
    {
      goto LABEL_271;
    }

    if (v65 < 1)
    {
      goto LABEL_31;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v72 = *(v300 + 16);
        v73 = *(v300 + 24);
        sub_1B1D6D4CC(&v300, v299);
        sub_1B1D6D4CC(&v305, v299);
        v74 = sub_1B1D7B34C();
        if (v74)
        {
          v75 = sub_1B1D7B36C();
          if (__OFSUB__(v72, v75))
          {
            goto LABEL_293;
          }

          v74 += v72 - v75;
        }

        if (__OFSUB__(v73, v72))
        {
          goto LABEL_288;
        }

        sub_1B1D7B35C();
        v76 = v274;
        sub_1B1D036A8(v74, v61, *(&v61 + 1), v299);
        v12 = v278;
        v64 = v295;
        if ((v299[0] & 1) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_52;
      }

      memset(v298, 0, 14);
      sub_1B1D6D4CC(&v300, v299);
      sub_1B1D6D4CC(&v305, v299);
    }

    else
    {
      if (v62)
      {
        v77 = v300;
        if (v300 >> 32 < v300)
        {
          goto LABEL_287;
        }

        sub_1B1D6D4CC(&v300, v299);
        sub_1B1D6D4CC(&v305, v299);
        v78 = sub_1B1D7B34C();
        if (v78)
        {
          v79 = sub_1B1D7B36C();
          if (__OFSUB__(v77, v79))
          {
            goto LABEL_294;
          }

          v78 += v77 - v79;
        }

        v64 = v295;
        sub_1B1D7B35C();
        v76 = v274;
        sub_1B1D036A8(v78, v61, *(&v61 + 1), v299);
        v12 = v278;
        if ((v299[0] & 1) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_52;
      }

      v298[0] = v300;
      LODWORD(v298[1]) = DWORD2(v300);
      WORD2(v298[1]) = WORD6(v300);
      sub_1B1D6D4CC(&v300, v299);
      sub_1B1D6D4CC(&v305, v299);
    }

    v76 = v274;
    sub_1B1D036A8(v298, v61, *(&v61 + 1), v299);
    if ((v299[0] & 1) == 0)
    {
      goto LABEL_270;
    }

LABEL_52:
    v274 = v76;
LABEL_53:
    v80 = v276;
    v81 = v283;
    if (v301 != v306 && (sub_1B1D7C50C() & 1) == 0 || v302 != v307 && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_270;
    }

    if (*(&v303 + 1))
    {
      if (!*(&v308 + 1) || v303 != v308 && (sub_1B1D7C50C() & 1) == 0)
      {
        goto LABEL_270;
      }
    }

    else if (*(&v308 + 1))
    {
      goto LABEL_270;
    }

    v82 = v304;
    v83 = v309;
    v84 = *(v304 + 16);
    if (v84 != *(v309 + 16))
    {
      goto LABEL_270;
    }

    if (v84)
    {
      v85 = v270;
      if (v304 != v309)
      {
        break;
      }
    }

LABEL_254:
    v243 = *(*(&v304 + 1) + 16);
    if (v243 != *(*(&v309 + 1) + 16))
    {
      goto LABEL_270;
    }

    if (v243 && *(&v304 + 1) != *(&v309 + 1))
    {
      v244 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v245 = *(&v304 + 1) + v244;
      v246 = *(&v309 + 1) + v244;
      v247 = *(v5 + 72);
      do
      {
        sub_1B1D6D404(v245, v11, type metadata accessor for ASImportableItem);
        sub_1B1D6D404(v246, v80, type metadata accessor for ASImportableItem);
        v248 = _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(v11, v80);
        sub_1B1D6D46C(v80, type metadata accessor for ASImportableItem);
        sub_1B1D6D46C(v11, type metadata accessor for ASImportableItem);
        if ((v248 & 1) == 0)
        {
          goto LABEL_270;
        }

        v246 += v247;
        v245 += v247;
      }

      while (--v243);
    }

    v49 = v269 + 1;
    sub_1B1D6D504(&v305);
    sub_1B1D6D504(&v300);
    if (v49 == v266)
    {
      goto LABEL_262;
    }

    v12 = v278;
    v51 = v264;
    v50 = v265;
  }

  v86 = 0;
  v87 = (*(v270 + 80) + 32) & ~*(v270 + 80);
  v88 = v304 + v87;
  v260 = v87;
  v263 = v309 + v87;
  v267 = v309;
  v268 = v5;
  v255 = v84;
  v256 = v304;
  v254 = v304 + v87;
  while (1)
  {
    if (v86 >= *(v82 + 16))
    {
      goto LABEL_275;
    }

    v89 = v86;
    v285 = *(v85 + 72);
    v90 = v285 * v86;
    v91 = v88 + v285 * v86;
    v92 = v292;
    sub_1B1D6D404(v91, v292, type metadata accessor for ASImportableCollection);
    v93 = *(v83 + 16);
    v262 = v89;
    if (v89 >= v93)
    {
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
    }

    sub_1B1D6D404(v263 + v90, v64, type metadata accessor for ASImportableCollection);
    v94 = *v92;
    v95 = v92[1];
    v96 = *v64;
    v97 = v64[1];
    v98 = v95 >> 62;
    v99 = v97 >> 62;
    if (v95 >> 62 == 3)
    {
      v100 = 0;
      if (!v94 && v95 == 0xC000000000000000 && v97 >> 62 == 3)
      {
        v100 = 0;
        if (!v96 && v97 == 0xC000000000000000)
        {
          goto LABEL_146;
        }
      }

LABEL_91:
      if (v99 <= 1)
      {
        goto LABEL_92;
      }

      goto LABEL_79;
    }

    if (v98 <= 1)
    {
      if (!v98)
      {
        v100 = BYTE6(v95);
        if (v99 <= 1)
        {
          goto LABEL_92;
        }

        goto LABEL_79;
      }

      LODWORD(v100) = HIDWORD(v94) - v94;
      if (__OFSUB__(HIDWORD(v94), v94))
      {
        goto LABEL_290;
      }

      v100 = v100;
      goto LABEL_91;
    }

    if (v98 == 2)
    {
      v105 = *(v94 + 16);
      v104 = *(v94 + 24);
      v68 = __OFSUB__(v104, v105);
      v100 = v104 - v105;
      if (v68)
      {
        goto LABEL_289;
      }

      goto LABEL_91;
    }

    v100 = 0;
    if (v99 <= 1)
    {
LABEL_92:
      if (v99)
      {
        LODWORD(v103) = HIDWORD(v96) - v96;
        if (__OFSUB__(HIDWORD(v96), v96))
        {
          goto LABEL_282;
        }

        v103 = v103;
      }

      else
      {
        v103 = BYTE6(v97);
      }

      goto LABEL_96;
    }

LABEL_79:
    if (v99 != 2)
    {
      if (v100)
      {
        goto LABEL_269;
      }

      goto LABEL_146;
    }

    v102 = *(v96 + 16);
    v101 = *(v96 + 24);
    v68 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v68)
    {
      goto LABEL_281;
    }

LABEL_96:
    if (v100 != v103)
    {
      goto LABEL_269;
    }

    if (v100 < 1)
    {
      goto LABEL_146;
    }

    if (v98 > 1)
    {
      if (v98 != 2)
      {
        *&v299[6] = 0;
        *v299 = 0;
        if (v99)
        {
          if (v99 == 2)
          {
            v125 = *(v96 + 16);
            v126 = *(v96 + 24);
            v111 = sub_1B1D7B34C();
            if (v111)
            {
              v127 = sub_1B1D7B36C();
              if (__OFSUB__(v125, v127))
              {
                goto LABEL_310;
              }

              v111 += v125 - v127;
            }

            v68 = __OFSUB__(v126, v125);
            v107 = v126 - v125;
            if (v68)
            {
              goto LABEL_306;
            }

            v112 = sub_1B1D7B35C();
            v64 = v295;
            if (!v111)
            {
              goto LABEL_313;
            }
          }

          else
          {
            v132 = v96;
            v107 = (v96 >> 32) - v96;
            if (v96 >> 32 < v96)
            {
              goto LABEL_304;
            }

            v133 = sub_1B1D7B34C();
            if (!v133)
            {
              sub_1B1D7B35C();
LABEL_312:
              __break(1u);
LABEL_313:
              __break(1u);
LABEL_314:
              __break(1u);
LABEL_315:
              __break(1u);
LABEL_316:
              result = sub_1B1D7B35C();
              __break(1u);
              return result;
            }

            v134 = v133;
            v135 = sub_1B1D7B36C();
            if (__OFSUB__(v132, v135))
            {
              goto LABEL_307;
            }

            v111 = (v132 - v135 + v134);
            v112 = sub_1B1D7B35C();
            v64 = v295;
            if (!v111)
            {
              goto LABEL_312;
            }
          }

          goto LABEL_141;
        }

LABEL_127:
        v298[0] = v96;
        LOWORD(v298[1]) = v97;
        BYTE2(v298[1]) = BYTE2(v97);
        BYTE3(v298[1]) = BYTE3(v97);
        BYTE4(v298[1]) = BYTE4(v97);
        BYTE5(v298[1]) = BYTE5(v97);
        v128 = memcmp(v299, v298, BYTE6(v97));
        goto LABEL_145;
      }

      v113 = *(v94 + 16);
      v114 = *(v94 + 24);
      v115 = sub_1B1D7B34C();
      if (v115)
      {
        v116 = sub_1B1D7B36C();
        if (__OFSUB__(v113, v116))
        {
          goto LABEL_299;
        }

        v115 += v113 - v116;
      }

      if (__OFSUB__(v114, v113))
      {
        goto LABEL_292;
      }

      sub_1B1D7B35C();
      v117 = v96;
      v118 = v274;
      sub_1B1D036A8(v115, v117, v97, v299);
      v274 = v118;
      v119 = v299[0];
      v12 = v278;
      v64 = v295;
    }

    else
    {
      if (!v98)
      {
        *v299 = *v92;
        *&v299[8] = v95;
        v299[10] = BYTE2(v95);
        v299[11] = BYTE3(v95);
        v299[12] = BYTE4(v95);
        v299[13] = BYTE5(v95);
        if (v99)
        {
          if (v99 == 1)
          {
            v106 = v96;
            v107 = (v96 >> 32) - v96;
            if (v96 >> 32 < v96)
            {
              goto LABEL_303;
            }

            v108 = sub_1B1D7B34C();
            if (!v108)
            {
              goto LABEL_316;
            }

            v109 = v108;
            v110 = sub_1B1D7B36C();
            if (__OFSUB__(v106, v110))
            {
              goto LABEL_308;
            }

            v111 = (v106 - v110 + v109);
            v112 = sub_1B1D7B35C();
            v64 = v295;
            if (!v111)
            {
              goto LABEL_315;
            }
          }

          else
          {
            v129 = *(v96 + 16);
            v130 = *(v96 + 24);
            v111 = sub_1B1D7B34C();
            if (v111)
            {
              v131 = sub_1B1D7B36C();
              if (__OFSUB__(v129, v131))
              {
                goto LABEL_309;
              }

              v111 += v129 - v131;
            }

            v68 = __OFSUB__(v130, v129);
            v107 = v130 - v129;
            if (v68)
            {
              goto LABEL_305;
            }

            v112 = sub_1B1D7B35C();
            v64 = v295;
            if (!v111)
            {
              goto LABEL_314;
            }
          }

LABEL_141:
          if (v112 >= v107)
          {
            v136 = v107;
          }

          else
          {
            v136 = v112;
          }

          v128 = memcmp(v299, v111, v136);
          v12 = v278;
LABEL_145:
          v92 = v292;
          if (v128)
          {
            goto LABEL_269;
          }

          goto LABEL_146;
        }

        goto LABEL_127;
      }

      v120 = v94;
      if (v94 >> 32 < v94)
      {
        goto LABEL_291;
      }

      v121 = sub_1B1D7B34C();
      if (v121)
      {
        v122 = sub_1B1D7B36C();
        if (__OFSUB__(v120, v122))
        {
          goto LABEL_300;
        }

        v121 += v120 - v122;
      }

      v64 = v295;
      sub_1B1D7B35C();
      v123 = v96;
      v124 = v274;
      sub_1B1D036A8(v121, v123, v97, v299);
      v274 = v124;
      v119 = v299[0];
      v12 = v278;
    }

    v92 = v292;
    if ((v119 & 1) == 0)
    {
      goto LABEL_269;
    }

LABEL_146:
    v137 = v297[5];
    v138 = *(v293 + 48);
    v139 = v290;
    sub_1B1D64DB8(v92 + v137, v290);
    v140 = v64 + v137;
    v141 = v139;
    sub_1B1D64DB8(v140, v139 + v138);
    v142 = *v81;
    v143 = (*v81)(v139, 1, v12);
    v275 = v142;
    if (v143 == 1)
    {
      if (v142(v139 + v138, 1, v12) != 1)
      {
        goto LABEL_264;
      }

      sub_1B1CDEC18(v139, &qword_1EB775228, &qword_1B1D88D60);
      v92 = v292;
    }

    else
    {
      v144 = v139;
      v145 = v286;
      sub_1B1D64DB8(v144, v286);
      if (v142(v141 + v138, 1, v12) == 1)
      {
        goto LABEL_263;
      }

      v146 = v272;
      (*v271)(v272, v141 + v138, v12);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
      v147 = sub_1B1D7BE0C();
      v148 = v141;
      v149 = *v273;
      v150 = v146;
      v64 = v295;
      (*v273)(v150, v12);
      v149(v145, v12);
      v81 = v283;
      sub_1B1CDEC18(v148, &qword_1EB775228, &qword_1B1D88D60);
      v92 = v292;
      if ((v147 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v151 = v297[6];
    v152 = *(v293 + 48);
    v153 = v289;
    sub_1B1D64DB8(v92 + v151, v289);
    v154 = v64 + v151;
    v141 = v153;
    sub_1B1D64DB8(v154, v153 + v152);
    v155 = v275;
    if (v275(v153, 1, v12) == 1)
    {
      if (v155(v153 + v152, 1, v12) != 1)
      {
        goto LABEL_264;
      }

      sub_1B1CDEC18(v153, &qword_1EB775228, &qword_1B1D88D60);
      v92 = v292;
    }

    else
    {
      v156 = v153;
      v145 = v284;
      sub_1B1D64DB8(v156, v284);
      if (v155(v141 + v152, 1, v12) == 1)
      {
LABEL_263:
        (*v273)(v145, v12);
LABEL_264:
        sub_1B1CDEC18(v141, &qword_1EB775FB8, &unk_1B1D93650);
        goto LABEL_268;
      }

      v157 = v272;
      (*v271)(v272, v141 + v152, v12);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
      v158 = sub_1B1D7BE0C();
      v159 = v141;
      v160 = *v273;
      v161 = v157;
      v64 = v295;
      (*v273)(v161, v12);
      v160(v145, v12);
      v81 = v283;
      sub_1B1CDEC18(v159, &qword_1EB775228, &qword_1B1D88D60);
      v92 = v292;
      if ((v158 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v162 = v297[7];
    v163 = *(v92 + v162);
    v164 = *(v92 + v162 + 8);
    v165 = (v64 + v162);
    if (v163 != *v165 || v164 != v165[1])
    {
      v166 = sub_1B1D7C50C();
      v92 = v292;
      if ((v166 & 1) == 0)
      {
        goto LABEL_269;
      }
    }

    v167 = v297[8];
    v168 = (v92 + v167);
    v169 = *(v92 + v167 + 8);
    v170 = (v64 + v167);
    v171 = v170[1];
    if (v169)
    {
      if (!v171)
      {
        goto LABEL_269;
      }

      if (*v168 != *v170 || v169 != v171)
      {
        v172 = sub_1B1D7C50C();
        v92 = v292;
        if ((v172 & 1) == 0)
        {
          goto LABEL_269;
        }
      }
    }

    else if (v171)
    {
      goto LABEL_269;
    }

    v173 = sub_1B1D32980(*(v92 + v297[9]), *(v64 + v297[9]));
    v92 = v292;
    if ((v173 & 1) == 0)
    {
      goto LABEL_269;
    }

    v174 = v297[10];
    v175 = *(v292 + v174);
    v176 = *(v64 + v174);
    v177 = *(v175 + 16);
    if (v177 != *(v176 + 16))
    {
      goto LABEL_269;
    }

    if (!v177)
    {
      v80 = v276;
      v83 = v267;
      v5 = v268;
      goto LABEL_253;
    }

    v80 = v276;
    v83 = v267;
    v5 = v268;
    if (v175 != v176)
    {
      break;
    }

LABEL_253:
    v86 = v262 + 1;
    sub_1B1D6D46C(v64, type metadata accessor for ASImportableCollection);
    sub_1B1D6D46C(v292, type metadata accessor for ASImportableCollection);
    v82 = v256;
    v85 = v270;
    v88 = v254;
    if (v86 == v255)
    {
      goto LABEL_254;
    }
  }

  v178 = 0;
  v258 = v175 + v260;
  v259 = v176;
  v257 = v176 + v260;
  v252 = v177;
  v253 = v175;
  while (1)
  {
    if (v178 >= *(v175 + 16))
    {
      goto LABEL_277;
    }

    v179 = v178;
    v180 = v178 * v285;
    v181 = v291;
    sub_1B1D6D404(v258 + v178 * v285, v291, type metadata accessor for ASImportableCollection);
    if (v178 >= *(v259 + 16))
    {
      goto LABEL_278;
    }

    v182 = v257 + v180;
    v183 = v296;
    sub_1B1D6D404(v182, v296, type metadata accessor for ASImportableCollection);
    v184 = *v181;
    v185 = v181[1];
    v186 = *v183;
    v187 = v183[1];
    v188 = v185 >> 62;
    v189 = v187 >> 62;
    v261 = v179;
    if (v185 >> 62 == 3)
    {
      v190 = 0;
      if (!v184 && v185 == 0xC000000000000000 && v187 >> 62 == 3)
      {
        v190 = 0;
        if (!v186 && v187 == 0xC000000000000000)
        {
          goto LABEL_222;
        }
      }
    }

    else if (v188 > 1)
    {
      if (v188 == 2)
      {
        v192 = *(v184 + 16);
        v191 = *(v184 + 24);
        v68 = __OFSUB__(v191, v192);
        v190 = v191 - v192;
        if (v68)
        {
          goto LABEL_295;
        }
      }

      else
      {
        v190 = 0;
      }
    }

    else if (v188)
    {
      LODWORD(v190) = HIDWORD(v184) - v184;
      if (__OFSUB__(HIDWORD(v184), v184))
      {
        goto LABEL_296;
      }

      v190 = v190;
    }

    else
    {
      v190 = BYTE6(v185);
    }

    if (v189 > 1)
    {
      if (v189 != 2)
      {
        if (v190)
        {
          goto LABEL_267;
        }

        goto LABEL_222;
      }

      v195 = *(v186 + 16);
      v194 = *(v186 + 24);
      v68 = __OFSUB__(v194, v195);
      v193 = v194 - v195;
      if (v68)
      {
        goto LABEL_286;
      }
    }

    else if (v189)
    {
      LODWORD(v193) = HIDWORD(v186) - v186;
      if (__OFSUB__(HIDWORD(v186), v186))
      {
        goto LABEL_285;
      }

      v193 = v193;
    }

    else
    {
      v193 = BYTE6(v187);
    }

    if (v190 != v193)
    {
      goto LABEL_267;
    }

    if (v190 < 1)
    {
      goto LABEL_222;
    }

    if (v188 <= 1)
    {
      if (!v188)
      {
        *v299 = v184;
        *&v299[8] = v185;
        v299[10] = BYTE2(v185);
        v299[11] = BYTE3(v185);
        v299[12] = BYTE4(v185);
        v299[13] = BYTE5(v185);
        sub_1B1CE111C(v186, v187);
        goto LABEL_221;
      }

      v200 = v184;
      if (v184 >> 32 < v184)
      {
        goto LABEL_297;
      }

      sub_1B1CE111C(v186, v187);
      v198 = sub_1B1D7B34C();
      if (v198)
      {
        v201 = sub_1B1D7B36C();
        if (__OFSUB__(v200, v201))
        {
          goto LABEL_302;
        }

        v198 += v200 - v201;
      }

LABEL_218:
      sub_1B1D7B35C();
      v202 = v198;
      v203 = v274;
      sub_1B1D036A8(v202, v186, v187, v299);
      v274 = v203;
      sub_1B1CDEFDC(v186, v187);
      if ((v299[0] & 1) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_222;
    }

    if (v188 == 2)
    {
      v196 = *(v184 + 16);
      v197 = *(v184 + 24);
      sub_1B1CE111C(v186, v187);
      v198 = sub_1B1D7B34C();
      if (v198)
      {
        v199 = sub_1B1D7B36C();
        if (__OFSUB__(v196, v199))
        {
          goto LABEL_301;
        }

        v198 += v196 - v199;
      }

      if (__OFSUB__(v197, v196))
      {
        goto LABEL_298;
      }

      goto LABEL_218;
    }

    *&v299[6] = 0;
    *v299 = 0;
    sub_1B1CE111C(v186, v187);
LABEL_221:
    v204 = v274;
    sub_1B1D036A8(v299, v186, v187, v298);
    v274 = v204;
    sub_1B1CDEFDC(v186, v187);
    if ((v298[0] & 1) == 0)
    {
      goto LABEL_267;
    }

LABEL_222:
    v205 = v297[5];
    v206 = *(v293 + 48);
    v207 = v288;
    sub_1B1D64DB8(v291 + v205, v288);
    sub_1B1D64DB8(v296 + v205, v207 + v206);
    v208 = v278;
    v209 = v275;
    if (v275(v207, 1, v278) == 1)
    {
      if (v209(v207 + v206, 1, v208) != 1)
      {
        goto LABEL_266;
      }

      sub_1B1CDEC18(v207, &qword_1EB775228, &qword_1B1D88D60);
    }

    else
    {
      v210 = v282;
      sub_1B1D64DB8(v207, v282);
      if (v209(v207 + v206, 1, v208) == 1)
      {
        break;
      }

      v211 = v272;
      (*v271)(v272, v207 + v206, v208);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
      v212 = sub_1B1D7BE0C();
      v213 = *v273;
      (*v273)(v211, v208);
      v213(v210, v208);
      sub_1B1CDEC18(v207, &qword_1EB775228, &qword_1B1D88D60);
      if ((v212 & 1) == 0)
      {
        goto LABEL_267;
      }
    }

    v214 = v297[6];
    v215 = *(v293 + 48);
    v207 = v287;
    sub_1B1D64DB8(v291 + v214, v287);
    sub_1B1D64DB8(v296 + v214, v207 + v215);
    v208 = v278;
    v216 = v275;
    if (v275(v207, 1, v278) == 1)
    {
      if (v216(v207 + v215, 1, v208) != 1)
      {
        goto LABEL_266;
      }

      sub_1B1CDEC18(v207, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_232;
    }

    v210 = v281;
    sub_1B1D64DB8(v207, v281);
    if (v216(v207 + v215, 1, v208) == 1)
    {
      break;
    }

    v217 = v272;
    (*v271)(v272, v207 + v215, v208);
    sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
    v218 = sub_1B1D7BE0C();
    v219 = *v273;
    (*v273)(v217, v208);
    v219(v210, v208);
    sub_1B1CDEC18(v207, &qword_1EB775228, &qword_1B1D88D60);
    if ((v218 & 1) == 0)
    {
      goto LABEL_267;
    }

LABEL_232:
    v220 = v297[7];
    v221 = (v291 + v220);
    v222 = *(v291 + v220);
    v223 = *(v291 + v220 + 8);
    v224 = (v296 + v220);
    if ((*v221 != *v224 || v223 != v224[1]) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_267;
    }

    v225 = v297[8];
    v226 = (v291 + v225);
    v227 = *(v291 + v225 + 8);
    v228 = (v296 + v225);
    v229 = v228[1];
    if (v227)
    {
      if (!v229 || (*v226 != *v228 || v227 != v229) && (sub_1B1D7C50C() & 1) == 0)
      {
        goto LABEL_267;
      }
    }

    else if (v229)
    {
      goto LABEL_267;
    }

    if ((sub_1B1D32980(*(v291 + v297[9]), *(v296 + v297[9])) & 1) == 0)
    {
      goto LABEL_267;
    }

    v230 = v297[10];
    v231 = *(v291 + v230);
    v232 = *(v296 + v230);
    v233 = *(v232 + 16);
    v280 = *(v231 + 16);
    if (v280 != v233)
    {
      goto LABEL_267;
    }

    if (v280 && v231 != v232)
    {
      v234 = 0;
      v235 = v231 + v260;
      v236 = v232 + v260;
      v277 = v232;
      while (v234 < *(v231 + 16))
      {
        v237 = v279;
        sub_1B1D6D404(v235, v279, type metadata accessor for ASImportableCollection);
        if (v234 >= *(v232 + 16))
        {
          goto LABEL_274;
        }

        v238 = v231;
        v239 = v11;
        v240 = v294;
        sub_1B1D6D404(v236, v294, type metadata accessor for ASImportableCollection);
        v241 = _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(v237, v240);
        v242 = v240;
        v11 = v239;
        v231 = v238;
        v232 = v277;
        sub_1B1D6D46C(v242, type metadata accessor for ASImportableCollection);
        sub_1B1D6D46C(v237, type metadata accessor for ASImportableCollection);
        if ((v241 & 1) == 0)
        {
          goto LABEL_267;
        }

        ++v234;
        v236 += v285;
        v235 += v285;
        if (v280 == v234)
        {
          goto LABEL_171;
        }
      }

      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
      goto LABEL_276;
    }

LABEL_171:
    v178 = v261 + 1;
    sub_1B1D6D46C(v296, type metadata accessor for ASImportableCollection);
    sub_1B1D6D46C(v291, type metadata accessor for ASImportableCollection);
    v175 = v253;
    v83 = v267;
    v5 = v268;
    v12 = v278;
    v80 = v276;
    v64 = v295;
    v81 = v283;
    if (v178 == v252)
    {
      goto LABEL_253;
    }
  }

  (*v273)(v210, v208);
LABEL_266:
  sub_1B1CDEC18(v207, &qword_1EB775FB8, &unk_1B1D93650);
LABEL_267:
  sub_1B1D6D46C(v296, type metadata accessor for ASImportableCollection);
  sub_1B1D6D46C(v291, type metadata accessor for ASImportableCollection);
  v64 = v295;
LABEL_268:
  v92 = v292;
LABEL_269:
  sub_1B1D6D46C(v64, type metadata accessor for ASImportableCollection);
  sub_1B1D6D46C(v92, type metadata accessor for ASImportableCollection);
LABEL_270:
  sub_1B1D6D504(&v305);
  sub_1B1D6D504(&v300);
LABEL_271:
  result = 0;
LABEL_272:
  v250 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1D322CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 40;
  for (i = result + 40; ; i += 56)
  {
    v5 = *(i + 8);
    v6 = *(i + 24);
    v24 = *(i + 32);
    v29 = *(i + 40);
    v30 = *(i - 8);
    v7 = *v3;
    v27 = *(v3 - 8);
    v26 = *(v3 + 8);
    v8 = *(v3 + 16);
    v31 = *(v3 + 24);
    v32 = *i;
    v28 = *(v3 + 40);
    v23 = *(v3 + 32);
    v25 = *(i + 16);
    if (*i >> 60 == 15)
    {
      if (v7 >> 60 != 15)
      {
        goto LABEL_56;
      }

      sub_1B1C91B94(v30, v32);

      sub_1B1C91B94(v27, v7);

      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      goto LABEL_41;
    }

    if (v7 >> 60 == 15)
    {
LABEL_56:
      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      sub_1B1C91AE4(v30, v32);
      sub_1B1C91AE4(v27, v7);
      return 0;
    }

    v9 = v32 >> 62;
    v10 = v7 >> 62;
    if (v32 >> 62 == 3)
    {
      v11 = 0;
      if (!v30 && v32 == 0xC000000000000000 && v7 >> 62 == 3)
      {
        v11 = 0;
        if (!v27 && v7 == 0xC000000000000000)
        {
          sub_1B1C91B94(0, 0xC000000000000000);

          sub_1B1C91B94(0, 0xC000000000000000);

          sub_1B1C91B94(0, 0xC000000000000000);
          sub_1B1C91B94(0, 0xC000000000000000);
          v12 = 0;
          v13 = 0xC000000000000000;
          goto LABEL_40;
        }
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        LODWORD(v11) = HIDWORD(v30) - v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
          goto LABEL_65;
        }

        v11 = v11;
      }

      else
      {
        v15 = *(v30 + 16);
        v14 = *(v30 + 24);
        v16 = __OFSUB__(v14, v15);
        v11 = v14 - v15;
        if (v16)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v11 = BYTE6(v32);
    }

    v22 = *(i + 8);
    if (v10 <= 1)
    {
      break;
    }

    if (v10 != 2)
    {
      if (v11)
      {
LABEL_58:
        sub_1B1C91B94(v30, v32);

        sub_1B1C91B94(v27, v7);

        sub_1B1C91B94(v30, v32);
        sub_1B1C91B94(v27, v7);
        sub_1B1C91AE4(v27, v7);
        sub_1B1C91AE4(v30, v32);
LABEL_59:
        sub_1B1C91AE4(v27, v7);

        sub_1B1C91AE4(v30, v32);

LABEL_61:

        return 0;
      }

LABEL_39:
      sub_1B1C91B94(v30, v32);

      sub_1B1C91B94(v27, v7);

      sub_1B1C91B94(v30, v32);
      sub_1B1C91B94(v27, v7);
      v12 = v27;
      v13 = v7;
LABEL_40:
      sub_1B1C91AE4(v12, v13);
LABEL_41:
      sub_1B1C91AE4(v30, v32);
      goto LABEL_42;
    }

    v19 = *(v27 + 16);
    v18 = *(v27 + 24);
    v16 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (v16)
    {
      goto LABEL_64;
    }

LABEL_34:
    if (v11 != v17)
    {
      goto LABEL_58;
    }

    if (v11 < 1)
    {
      goto LABEL_39;
    }

    sub_1B1C91B94(v30, v32);

    sub_1B1C91B94(v27, v7);

    sub_1B1C91B94(v30, v32);
    sub_1B1C91B94(v27, v7);
    sub_1B1C91B94(v27, v7);
    v20 = sub_1B1D038D8(v30, v32, v27, v7);
    sub_1B1C91AE4(v27, v7);
    sub_1B1C91AE4(v30, v32);
    if ((v20 & 1) == 0)
    {
      goto LABEL_59;
    }

    v5 = v22;
LABEL_42:
    if ((sub_1B1D2CCBC(v5, v26) & 1) == 0 || (v25 != v8 || v6 != v31) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_59;
    }

    if (!v29)
    {
      sub_1B1C91AE4(v27, v7);
      if (v28)
      {

        sub_1B1C91AE4(v30, v32);

        goto LABEL_61;
      }

      sub_1B1C91AE4(v30, v32);
      goto LABEL_6;
    }

    if (!v28)
    {
      goto LABEL_59;
    }

    if (v24 == v23 && v29 == v28)
    {
      sub_1B1C91AE4(v27, v7);

      sub_1B1C91AE4(v30, v32);
LABEL_6:

      goto LABEL_7;
    }

    v21 = sub_1B1D7C50C();
    sub_1B1C91AE4(v27, v7);

    sub_1B1C91AE4(v30, v32);

    if ((v21 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 56;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v10)
  {
    v17 = BYTE6(v7);
    goto LABEL_34;
  }

  LODWORD(v17) = HIDWORD(v27) - v27;
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v17 = v17;
    goto LABEL_34;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B1D32980(uint64_t a1, uint64_t a2)
{
  v76[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_122;
  }

  if (!v2 || a1 == a2)
  {
LABEL_117:
    result = 1;
    goto LABEL_123;
  }

  v3 = (a2 + 56);
  v4 = (a1 + 56);
  while (1)
  {
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v9 = *(v4 - 1);
    v8 = *v4;
    v11 = *(v3 - 3);
    v10 = *(v3 - 2);
    v13 = *(v3 - 1);
    v12 = *v3;
    v14 = v7 >> 62;
    v15 = v10 >> 62;
    v74 = v6;
    if (v7 >> 62 == 3)
    {
      if (v6)
      {
        v16 = 0;
      }

      else
      {
        v16 = v7 == 0xC000000000000000;
      }

      v17 = 0;
      v18 = v16 && v10 >> 62 == 3;
      if (v18 && !v11 && v10 == 0xC000000000000000)
      {
        sub_1B1CE111C(0, 0xC000000000000000);
        sub_1B1C91B94(v9, v8);
        v19 = 0;
        v20 = 0xC000000000000000;
        goto LABEL_43;
      }

LABEL_30:
      if (v15 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v26 = *(v6 + 16);
        v25 = *(v6 + 24);
        v23 = __OFSUB__(v25, v26);
        v17 = v25 - v26;
        if (v23)
        {
          goto LABEL_126;
        }

        goto LABEL_30;
      }

      v17 = 0;
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v14)
    {
      LODWORD(v17) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_127;
      }

      v17 = v17;
      if (v15 <= 1)
      {
LABEL_31:
        if (v15)
        {
          LODWORD(v24) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v10);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v17 = BYTE6(v7);
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v15 != 2)
    {
      if (v17)
      {
        goto LABEL_122;
      }

LABEL_42:
      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v19 = v11;
      v20 = v10;
LABEL_43:
      sub_1B1CE111C(v19, v20);
      sub_1B1C91B94(v13, v12);
      goto LABEL_65;
    }

    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      goto LABEL_125;
    }

LABEL_37:
    if (v17 != v24)
    {
      goto LABEL_122;
    }

    if (v17 < 1)
    {
      goto LABEL_42;
    }

    v70 = *v4;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        memset(v76, 0, 14);
        sub_1B1CE111C(v6, v7);
        sub_1B1C91B94(v9, v8);
        sub_1B1CE111C(v11, v10);
        sub_1B1C91B94(v13, v12);
        v30 = v11;
        v31 = v10;
        v28 = v13;
        v29 = v12;
LABEL_60:
        sub_1B1D036A8(v76, v30, v31, &v75);
        v12 = v29;
        v13 = v28;
        v8 = v70;
        if ((v75 & 1) == 0)
        {
          goto LABEL_121;
        }

        goto LABEL_65;
      }

      v69 = *v3;
      v32 = *(v3 - 2);
      v33 = *(v6 + 16);
      v63 = *(v6 + 24);
      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v65 = v11;
      v72 = v32;
      sub_1B1CE111C(v11, v32);
      sub_1B1C91B94(v13, v69);
      v34 = sub_1B1D7B34C();
      if (v34)
      {
        v35 = v7;
        v36 = sub_1B1D7B36C();
        if (__OFSUB__(v33, v36))
        {
          goto LABEL_132;
        }

        v34 += v33 - v36;
      }

      else
      {
        v35 = v7;
      }

      if (__OFSUB__(v63, v33))
      {
        goto LABEL_131;
      }

      v7 = v35;
      sub_1B1D7B35C();
      v41 = v34;
      v11 = v65;
      v10 = v72;
      sub_1B1D036A8(v41, v65, v72, v76);
      v12 = v69;
      if ((v76[0] & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v68 = *v3;
      v71 = *(v3 - 2);
      if (!v14)
      {
        v76[0] = v6;
        LOWORD(v76[1]) = v7;
        BYTE2(v76[1]) = BYTE2(v7);
        BYTE3(v76[1]) = BYTE3(v7);
        BYTE4(v76[1]) = BYTE4(v7);
        BYTE5(v76[1]) = BYTE5(v7);
        sub_1B1CE111C(v6, v7);
        sub_1B1C91B94(v9, v8);
        sub_1B1CE111C(v11, v10);
        v27 = v13;
        v28 = v13;
        v29 = v12;
        sub_1B1C91B94(v27, v12);
        v30 = v11;
        v31 = v10;
        goto LABEL_60;
      }

      v37 = v6;
      if (v6 >> 32 < v6)
      {
        goto LABEL_130;
      }

      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v9, v8);
      v66 = v11;
      sub_1B1CE111C(v11, v71);
      sub_1B1C91B94(v13, v68);
      v38 = sub_1B1D7B34C();
      if (v38)
      {
        v39 = sub_1B1D7B36C();
        if (__OFSUB__(v37, v39))
        {
          goto LABEL_133;
        }

        v38 += v37 - v39;
      }

      sub_1B1D7B35C();
      v40 = v38;
      v11 = v66;
      v10 = v71;
      sub_1B1D036A8(v40, v66, v71, v76);
      v12 = v68;
      v8 = v70;
      if ((v76[0] & 1) == 0)
      {
        goto LABEL_121;
      }
    }

LABEL_65:
    if (v8 >> 60 == 15)
    {
      if (v12 >> 60 != 15)
      {
        goto LABEL_118;
      }

      sub_1B1C91B94(v9, v8);
      sub_1B1C91B94(v13, v12);
      goto LABEL_98;
    }

    if (v12 >> 60 == 15)
    {
LABEL_118:
      sub_1B1C91B94(v9, v8);
      sub_1B1C91B94(v13, v12);
      sub_1B1C91AE4(v9, v8);
      v60 = v13;
      v61 = v12;
      goto LABEL_120;
    }

    v42 = v8 >> 62;
    v43 = v12 >> 62;
    if (v8 >> 62 != 3)
    {
      break;
    }

    v44 = 0;
    if (v9)
    {
      goto LABEL_85;
    }

    if (v8 != 0xC000000000000000)
    {
      goto LABEL_85;
    }

    if (v12 >> 62 != 3)
    {
      goto LABEL_85;
    }

    v44 = 0;
    if (v13 || v12 != 0xC000000000000000)
    {
      goto LABEL_85;
    }

    sub_1B1C91B94(0, 0xC000000000000000);
    sub_1B1C91B94(0, 0xC000000000000000);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1CDEFDC(v11, v10);
    sub_1B1C91AE4(0, 0xC000000000000000);
    sub_1B1CDEFDC(v74, v7);
    v45 = 0;
    v46 = 0xC000000000000000;
LABEL_99:
    sub_1B1C91AE4(v45, v46);
LABEL_8:
    v4 += 4;
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_117;
    }
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v51 = *(v9 + 16);
      v50 = *(v9 + 24);
      v23 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      if (v23)
      {
        goto LABEL_135;
      }

LABEL_85:
      if (v43 <= 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v44 = 0;
      if (v43 <= 1)
      {
        goto LABEL_86;
      }
    }

LABEL_79:
    if (v43 == 2)
    {
      v48 = *(v13 + 16);
      v47 = *(v13 + 24);
      v23 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v23)
      {
        goto LABEL_129;
      }

      goto LABEL_92;
    }

    if (v44)
    {
      goto LABEL_119;
    }

LABEL_97:
    sub_1B1C91B94(v9, v8);
    sub_1B1C91B94(v13, v12);
    sub_1B1C91AE4(v13, v12);
LABEL_98:
    sub_1B1C91AE4(v9, v8);
    sub_1B1CDEFDC(v11, v10);
    sub_1B1C91AE4(v13, v12);
    sub_1B1CDEFDC(v74, v7);
    v45 = v9;
    v46 = v8;
    goto LABEL_99;
  }

  if (v42)
  {
    LODWORD(v44) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_134;
    }

    v44 = v44;
    if (v43 <= 1)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v44 = BYTE6(v8);
  if (v43 > 1)
  {
    goto LABEL_79;
  }

LABEL_86:
  if (v43)
  {
    LODWORD(v49) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_128;
    }

    v49 = v49;
  }

  else
  {
    v49 = BYTE6(v12);
  }

LABEL_92:
  if (v44 == v49)
  {
    if (v44 >= 1)
    {
      v73 = v10;
      if (v42 > 1)
      {
        if (v42 != 2)
        {
          memset(v76, 0, 14);
          sub_1B1C91B94(v9, v8);
          sub_1B1C91B94(v13, v12);
          goto LABEL_6;
        }

        v67 = v11;
        v52 = v9;
        v53 = *(v9 + 16);
        v54 = *(v9 + 24);
        v64 = v52;
        sub_1B1C91B94(v52, v8);
        sub_1B1C91B94(v13, v12);
        v55 = sub_1B1D7B34C();
        if (v55)
        {
          v56 = sub_1B1D7B36C();
          if (__OFSUB__(v53, v56))
          {
            goto LABEL_138;
          }

          v55 += v53 - v56;
        }

        if (__OFSUB__(v54, v53))
        {
          goto LABEL_137;
        }

        sub_1B1D7B35C();
        sub_1B1D036A8(v55, v13, v12, v76);
        sub_1B1C91AE4(v13, v12);
        v5 = v76[0];
        v9 = v64;
      }

      else
      {
        if (!v42)
        {
          v76[0] = v9;
          LOWORD(v76[1]) = v8;
          BYTE2(v76[1]) = BYTE2(v8);
          BYTE3(v76[1]) = BYTE3(v8);
          BYTE4(v76[1]) = BYTE4(v8);
          BYTE5(v76[1]) = BYTE5(v8);
          sub_1B1C91B94(v9, v8);
          sub_1B1C91B94(v13, v12);
LABEL_6:
          sub_1B1D036A8(v76, v13, v12, &v75);
          sub_1B1C91AE4(v13, v12);
          v5 = v75;
LABEL_7:
          sub_1B1C91AE4(v9, v8);
          sub_1B1CDEFDC(v11, v73);
          sub_1B1C91AE4(v13, v12);
          sub_1B1CDEFDC(v74, v7);
          sub_1B1C91AE4(v9, v8);
          if ((v5 & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_8;
        }

        v67 = v11;
        if (v9 >> 32 < v9)
        {
          goto LABEL_136;
        }

        sub_1B1C91B94(v9, v8);
        sub_1B1C91B94(v13, v12);
        v57 = sub_1B1D7B34C();
        if (v57)
        {
          v58 = sub_1B1D7B36C();
          if (__OFSUB__(v9, v58))
          {
            goto LABEL_139;
          }

          v57 += v9 - v58;
        }

        sub_1B1D7B35C();
        sub_1B1D036A8(v57, v13, v12, v76);
        sub_1B1C91AE4(v13, v12);
        v5 = v76[0];
      }

      v11 = v67;
      goto LABEL_7;
    }

    goto LABEL_97;
  }

LABEL_119:
  sub_1B1C91B94(v9, v8);
  sub_1B1C91B94(v13, v12);
  sub_1B1C91AE4(v13, v12);
  v60 = v9;
  v61 = v8;
LABEL_120:
  sub_1B1C91AE4(v60, v61);
LABEL_121:
  sub_1B1CDEFDC(v11, v10);
  sub_1B1C91AE4(v13, v12);
  sub_1B1CDEFDC(v74, v7);
  sub_1B1C91AE4(v9, v8);
LABEL_122:
  result = 0;
LABEL_123:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1D3340C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableCollection(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1B1D6D404(v14, v11, type metadata accessor for ASImportableCollection);
        sub_1B1D6D404(v15, v8, type metadata accessor for ASImportableCollection);
        v17 = _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1B1D6D46C(v8, type metadata accessor for ASImportableCollection);
        sub_1B1D6D46C(v11, type metadata accessor for ASImportableCollection);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B1D335B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1B1D6D404(v14, v11, type metadata accessor for ASImportableItem);
        sub_1B1D6D404(v15, v8, type metadata accessor for ASImportableItem);
        v17 = _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1B1D6D46C(v8, type metadata accessor for ASImportableItem);
        sub_1B1D6D46C(v11, type metadata accessor for ASImportableItem);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B1D3375C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B1D7C50C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B1D337EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v23 = v5;
  v24 = v6;
  *&v22[664] = v8;
  *&v22[672] = v2;
  *&v22[648] = v3;
  *&v22[656] = v4;
  v9 = (MEMORY[0x1EEE9AC00](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, 0x2A1uLL);
    memcpy(v18, v9, 0x2A1uLL);
    memcpy(v20, v11, 0x2A1uLL);
    memcpy(__src, v11, sizeof(__src));
    sub_1B1D65C20(__dst, v16);
    sub_1B1D65C20(v20, v16);
    v14 = _s22AuthenticationServices22ASImportableCredentialO2eeoiySbAC_ACtFZ_0(v18);
    memcpy(v21, __src, 0x2A1uLL);
    sub_1B1D65C58(v21);
    memcpy(v22, v18, 0x2A1uLL);
    sub_1B1D65C58(v22);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v11 += 680;
    v9 += 680;
  }

  return 1;
}

uint64_t ASExportedCredentialData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775740, &qword_1B1D88D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64034();
  sub_1B1D7C63C();
  v11 = type metadata accessor for ASExportedCredentialData(0);
  v19 = *(v3 + *(v11 + 32));
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775750, &qword_1B1D88D80);
  sub_1B1D64088();
  sub_1B1D7C4CC();
  if (!v2)
  {
    v18[6] = 1;
    sub_1B1D64160();
    sub_1B1D7C4CC();
    v12 = *v3;
    v13 = v3[1];
    v18[5] = 2;
    sub_1B1D7C49C();
    v14 = v3[2];
    v15 = v3[3];
    v18[4] = 3;
    sub_1B1D7C49C();
    v16 = *(v11 + 28);
    v18[3] = 4;
    sub_1B1D7B53C();
    sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530]);
    sub_1B1D7C4CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ASExportedCredentialData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1B1D7BE7C();
  v4 = *v1;
  v5 = v1[1];
  sub_1B1D7BE7C();
  v6 = v1[2];
  v7 = v1[3];
  sub_1B1D7BE7C();
  v8 = type metadata accessor for ASExportedCredentialData(0);
  v9 = *(v8 + 28);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
  sub_1B1D7BDEC();
  v10 = *(v2 + *(v8 + 32));

  return sub_1B1D57150(a1, v10);
}

uint64_t ASExportedCredentialData.hashValue.getter()
{
  v1 = v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  v2 = *v0;
  v3 = v0[1];
  sub_1B1D7BE7C();
  v4 = v0[2];
  v5 = v0[3];
  sub_1B1D7BE7C();
  v6 = type metadata accessor for ASExportedCredentialData(0);
  v7 = *(v6 + 28);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v9, *(v1 + *(v6 + 32)));
  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1B1D7B53C();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775780, &qword_1B1D88D88);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ASExportedCredentialData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B1D64034();
  v17 = v28;
  sub_1B1D7C62C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v28 = v6;
  v18 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775750, &qword_1B1D88D80);
  v34 = 0;
  sub_1B1D641FC();
  sub_1B1D7C43C();
  *(v14 + *(v11 + 32)) = v35;
  v33 = 1;
  sub_1B1D642D4();
  sub_1B1D7C43C();
  v32 = 2;
  *v14 = sub_1B1D7C40C();
  v14[1] = v19;
  v31 = 3;
  v14[2] = sub_1B1D7C40C();
  v14[3] = v20;
  v30 = 4;
  sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530]);
  v21 = v28;
  sub_1B1D7C43C();
  (*(v18 + 8))(v10, v27);
  (*(v24 + 32))(v14 + *(v11 + 28), v21, v3);
  sub_1B1D6D404(v14, v25, type metadata accessor for ASExportedCredentialData);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return sub_1B1D6D46C(v14, type metadata accessor for ASExportedCredentialData);
}

uint64_t sub_1B1D341F4(uint64_t a1)
{
  v3 = v1;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  v4 = *v1;
  v5 = v1[1];
  sub_1B1D7BE7C();
  v6 = v1[2];
  v7 = v1[3];
  sub_1B1D7BE7C();
  v8 = *(a1 + 28);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v10, *(v3 + *(a1 + 32)));
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D342D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1B1D7BE7C();
  v6 = *v2;
  v7 = v2[1];
  sub_1B1D7BE7C();
  v8 = v2[2];
  v9 = v2[3];
  sub_1B1D7BE7C();
  v10 = *(a2 + 28);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
  sub_1B1D7BDEC();
  v11 = *(v4 + *(a2 + 32));

  return sub_1B1D57150(a1, v11);
}

uint64_t sub_1B1D343A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  v5 = *v2;
  v6 = v2[1];
  sub_1B1D7BE7C();
  v7 = v2[2];
  v8 = v2[3];
  sub_1B1D7BE7C();
  v9 = *(a2 + 28);
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
  sub_1B1D7BDEC();
  sub_1B1D57150(v11, *(v4 + *(a2 + 32)));
  return sub_1B1D7C61C();
}

uint64_t ASExportedCredentialData.allItems.getter()
{
  result = type metadata accessor for ASExportedCredentialData(0);
  v2 = *(v0 + *(result + 32));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = (v2 + 104);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_22;
    }

    v11 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      v6 = sub_1B1D0CABC(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v14 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for ASImportableItem(0);
        v15 = *(result - 8);
        if (v14 < v8)
        {
          goto LABEL_24;
        }

        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17 = *(v15 + 72);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v18 = v6[2];
          v19 = __OFADD__(v18, v8);
          v20 = v18 + v8;
          if (v19)
          {
            goto LABEL_25;
          }

          v6[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v4;
    v5 += 10;
    if (v3 == v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t ASImportableAccount.id.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableAccount.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableAccount.userName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableAccount.userName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableAccount.email.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ASImportableAccount.email.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASImportableAccount.fullName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ASImportableAccount.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ASImportableAccount.collections.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ASImportableAccount.items.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1B1D34904()
{
  *v0;
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D34A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BA5C();
  *a2 = result;
  return result;
}

void sub_1B1D34A38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB00000000736E6FLL;
  v6 = 0x697463656C6C6F63;
  if (v2 != 5)
  {
    v6 = 0x736D657469;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E6C6C7566;
  if (v2 != 3)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (v2 != 1)
  {
    v10 = 0x6C69616D65;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B1D34B04()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x697463656C6C6F63;
  if (v1 != 5)
  {
    v3 = 0x736D657469;
  }

  v4 = 0x656D614E6C6C7566;
  if (v1 != 3)
  {
    v4 = 1852793705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D616E72657375;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
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

uint64_t sub_1B1D34BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6BA5C();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D34BF4(uint64_t a1)
{
  v2 = sub_1B1D64328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D34C30(uint64_t a1)
{
  v2 = sub_1B1D64328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableAccount.init(id:userName:email:fullName:collections:items:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t ASImportableAccount.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757A8, &unk_1B1D88D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64328();
  sub_1B1D7C62C();
  if (!v2)
  {
    LOBYTE(v36) = 0;
    sub_1B1D7C40C();
    v11 = sub_1B1D7B4AC();
    if (v12 >> 60 == 15)
    {
      v13 = sub_1B1D7C2BC();
      swift_allocError();
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
      *v15 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v18 = v11;
      v19 = v12;
      LOBYTE(v36) = 1;
      v20 = sub_1B1D7C40C();
      v34 = v21;
      LOBYTE(v36) = 2;
      v31 = sub_1B1D7C40C();
      v32 = v20;
      v33 = v22;
      LOBYTE(v36) = 3;
      v29 = sub_1B1D7C3DC();
      v30 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      v35 = 5;
      sub_1B1D6437C();
      sub_1B1D7C43C();
      v28 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757D8, &qword_1B1D88DA8);
      v35 = 6;
      sub_1B1D64450();
      sub_1B1D7C43C();
      (*(v6 + 8))(v9, v5);
      v24 = v36;
      *a2 = v18;
      a2[1] = v19;
      v25 = v34;
      a2[2] = v32;
      a2[3] = v25;
      v26 = v33;
      a2[4] = v31;
      a2[5] = v26;
      v27 = v30;
      a2[6] = v29;
      a2[7] = v27;
      a2[8] = v28;
      a2[9] = v24;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757F0, &qword_1B1D88DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v13 = v1[8];
  v17 = v1[9];
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64328();
  sub_1B1D7C63C();
  sub_1B1D7B4BC();
  LOBYTE(v27) = 0;
  v15 = v25;
  sub_1B1D7C49C();
  if (v15)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {

    LOBYTE(v27) = 1;
    sub_1B1D7C49C();
    LOBYTE(v27) = 2;
    sub_1B1D7C49C();
    LOBYTE(v27) = 3;
    sub_1B1D7C47C();
    v27 = v18;
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D64504();
    sub_1B1D7C4CC();
    v27 = v17;
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D645B8();
    sub_1B1D7C4CC();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ASImportableAccount.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v10)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(a1, v12);

  return sub_1B1D572B4(a1, v11);
}

uint64_t ASImportableAccount.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v8)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(v12, v9);
  sub_1B1D572B4(v12, v11);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D355D8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v10)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(a1, v12);

  return sub_1B1D572B4(a1, v11);
}

uint64_t sub_1B1D356A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v8)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D57B28(v12, v9);
  sub_1B1D572B4(v12, v11);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCollection.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASImportableCollection(0) + 36));
}

uint64_t ASImportableCollection.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableCollection(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASImportableCollection.subcollections.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASImportableCollection(0) + 40));
}

uint64_t ASImportableCollection.subcollections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableCollection(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1D35B28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BAA8();
  *a2 = result;
  return result;
}

void sub_1B1D35B58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6E6F697461657263;
  v6 = 0xEA00000000007441;
  if (v2 != 6)
  {
    v5 = 0x6465696669646F6DLL;
    v6 = 0xEA00000000007441;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736D657469;
  if (v2 != 4)
  {
    v8 = 0x656C6C6F63627573;
    v7 = 0xEE00736E6F697463;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v2 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B1D35C50()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461657263;
  if (v1 != 6)
  {
    v3 = 0x6465696669646F6DLL;
  }

  v4 = 0x736D657469;
  if (v1 != 4)
  {
    v4 = 0x656C6C6F63627573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B1D35D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6BAA8();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D35D78(uint64_t a1)
{
  v2 = sub_1B1D64E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D35DB4(uint64_t a1)
{
  v2 = sub_1B1D64E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCollection.init(id:created:lastModified:title:subtitle:items:subcollections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = type metadata accessor for ASImportableCollection(0);
  v16 = v15[5];
  v17 = sub_1B1D7B53C();
  v18 = *(*(v17 - 8) + 56);
  v18(&a9[v16], 1, 1, v17);
  v19 = v15[6];
  v18(&a9[v19], 1, 1, v17);
  v20 = &a9[v15[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1D64E28(a3, &a9[v16]);
  result = sub_1B1D64E28(a4, &a9[v19]);
  v22 = &a9[v15[7]];
  *v22 = a5;
  *(v22 + 1) = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  *&a9[v15[9]] = a10;
  *&a9[v15[10]] = a11;
  return result;
}

uint64_t ASImportableCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v54 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775818, &qword_1B1D88DB8);
  v66 = *(v16 - 8);
  v17 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B1D64E98();
  v22 = v67;
  sub_1B1D7C62C();
  if (!v22)
  {
    v63 = v10;
    v64 = v7;
    v67 = v13;
    v23 = v15;
    v24 = v66;
    LOBYTE(v70) = 0;
    sub_1B1D7C40C();
    v25 = sub_1B1D7B4AC();
    if (v26 >> 60 == 15)
    {
      v27 = sub_1B1D7C2BC();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
      *v29 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v24 + 8))(v19, v16);
    }

    else
    {
      v32 = v26;
      v62 = v25;
      v33 = sub_1B1D7B53C();
      LOBYTE(v70) = 6;
      sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530]);
      sub_1B1D7C3FC();
      v60 = v23;
      v61 = v32;
      LOBYTE(v70) = 7;
      v34 = v67;
      sub_1B1D7C3FC();
      v35 = v24;
      v36 = v33;
      LOBYTE(v70) = 1;
      v37 = sub_1B1D7C40C();
      v38 = v60;
      v58 = v37;
      v59 = v39;
      LOBYTE(v70) = 2;
      v56 = sub_1B1D7C3DC();
      v57 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775828, &qword_1B1D88DC0);
      v69 = 4;
      sub_1B1D64EEC();
      sub_1B1D7C43C();
      v55 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      v69 = 5;
      sub_1B1D6437C();
      sub_1B1D7C3FC();
      v41 = v70;
      sub_1B1D64DB8(v38, v63);
      sub_1B1D64DB8(v34, v64);
      v42 = MEMORY[0x1E69E7CC0];
      if (v41)
      {
        v42 = v41;
      }

      v54 = v42;
      sub_1B1CDEC18(v34, &qword_1EB775228, &qword_1B1D88D60);
      sub_1B1CDEC18(v38, &qword_1EB775228, &qword_1B1D88D60);
      (*(v35 + 8))(v19, v16);
      v43 = type metadata accessor for ASImportableCollection(0);
      v44 = v43[5];
      v45 = *(*(v36 - 8) + 56);
      v46 = v65;
      v45(v65 + v44, 1, 1, v36);
      v47 = v43[6];
      v45(v46 + v47, 1, 1, v36);
      v48 = (v46 + v43[8]);
      v49 = v61;
      *v46 = v62;
      v46[1] = v49;
      sub_1B1D64E28(v63, v46 + v44);
      sub_1B1D64E28(v64, v46 + v47);
      v50 = (v46 + v43[7]);
      v51 = v59;
      *v50 = v58;
      v50[1] = v51;
      v52 = v57;
      *v48 = v56;
      v48[1] = v52;
      v53 = v54;
      *(v46 + v43[9]) = v55;
      *(v46 + v43[10]) = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

uint64_t ASImportableCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775840, &qword_1B1D88DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D64E98();
  sub_1B1D7C63C();
  v11 = type metadata accessor for ASImportableCollection(0);
  v12 = v11[5];
  LOBYTE(v25) = 6;
  sub_1B1D7B53C();
  sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530]);
  sub_1B1D7C48C();
  if (!v2)
  {
    v13 = v11[6];
    LOBYTE(v25) = 7;
    sub_1B1D7C48C();
    v15 = *v3;
    v16 = v3[1];
    sub_1B1D7B4BC();
    LOBYTE(v25) = 0;
    sub_1B1D7C49C();

    v17 = (v3 + v11[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25) = 1;
    sub_1B1D7C49C();
    v20 = (v3 + v11[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25) = 2;
    sub_1B1D7C47C();
    v25 = *(v3 + v11[9]);
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D64FC4();
    sub_1B1D7C4CC();
    if (*(*(v3 + v11[10]) + 16))
    {
      v25 = *(v3 + v11[10]);
      v24 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757C0, &qword_1B1D88DA0);
      sub_1B1D64504();
      sub_1B1D7C4CC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ASImportableCollection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *v2;
  v17 = v2[1];
  sub_1B1D7B4FC();
  v18 = type metadata accessor for ASImportableCollection(0);
  sub_1B1D64DB8(v2 + v18[5], v15);
  v19 = *(v5 + 48);
  if (v19(v15, 1, v4) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v5 + 32))(v8, v15, v4);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
    sub_1B1D7BDEC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1B1D64DB8(v2 + v18[6], v13);
  if (v19(v13, 1, v4) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
    sub_1B1D7BDEC();
    (*(v5 + 8))(v8, v4);
  }

  v20 = (v2 + v18[7]);
  v21 = *v20;
  v22 = v20[1];
  sub_1B1D7BE7C();
  v23 = (v2 + v18[8]);
  if (v23[1])
  {
    v24 = *v23;
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  sub_1B1D58070(a1, *(v2 + v18[9]));
  return sub_1B1D57B28(a1, *(v2 + v18[10]));
}

uint64_t ASImportableLinkedItem.item.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableLinkedItem.item.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableLinkedItem.account.getter()
{
  v1 = *(v0 + 16);
  sub_1B1C91B94(v1, *(v0 + 24));
  return v1;
}

uint64_t ASImportableLinkedItem.account.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B1D36E4C()
{
  if (*v0)
  {
    result = 0x746E756F636361;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_1B1D36E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

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

uint64_t sub_1B1D36F5C(uint64_t a1)
{
  v2 = sub_1B1D6509C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D36F98(uint64_t a1)
{
  v2 = sub_1B1D6509C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableLinkedItem.init(item:account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASImportableLinkedItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775858, &qword_1B1D88DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6509C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v29 = 0;
    sub_1B1D7C40C();
    v11 = sub_1B1D7B4AC();
    if (v12 >> 60 == 15)
    {
      v13 = sub_1B1D7C2BC();
      swift_allocError();
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
      *v15 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
      swift_willThrow();
LABEL_4:
      (*(v6 + 8))(v9, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v18 = v11;
    v19 = v12;
    v28 = 1;
    sub_1B1D7C3DC();
    if (v20)
    {
      v21 = sub_1B1D7B4AC();
      if (v22 >> 60 == 15)
      {
        v27 = sub_1B1D7C2BC();
        swift_allocError();
        v24 = v23;
        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v24 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v27 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8]);
        swift_willThrow();
        sub_1B1C91AE4(v18, v19);
        goto LABEL_4;
      }

      v25 = v22;
      v27 = v21;
    }

    else
    {
      v27 = 0;
      v25 = 0xF000000000000000;
    }

    (*(v6 + 8))(v9, v5);
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v18;
    a2[1] = v19;
    a2[2] = v27;
    a2[3] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableLinkedItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775868, &qword_1B1D88DD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v14[1] = v1[2];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6509C();
  sub_1B1D7C63C();
  sub_1B1D7B4BC();
  v18 = 0;
  v12 = v16;
  sub_1B1D7C49C();
  if (v12)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {

    if (v15 >> 60 != 15)
    {
      sub_1B1D7B4BC();
    }

    v17 = 1;
    sub_1B1D7C47C();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t ASImportableItem.id.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableItem.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1B1D37690@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1B1D64DB8(v4, a2);
}

uint64_t sub_1B1D376F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_1B1D64E28(a1, v4);
}

uint64_t sub_1B1D3779C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_1B1D64DB8(v4, a2);
}

uint64_t sub_1B1D37800(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);

  return sub_1B1D64E28(a1, v4);
}

uint64_t sub_1B1D378A8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1B1D37908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B1D379B4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1B1D37A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ASImportableItem.favorite.setter(char a1)
{
  result = type metadata accessor for ASImportableItem(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ASImportableItem.scope.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ASImportableItem(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1B1D650F0(v4);
}

uint64_t ASImportableItem.scope.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ASImportableItem(0) + 40));
  v5 = v4[1];
  result = sub_1B1D0C93C(*v4);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t ASImportableItem.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASImportableItem(0) + 44));
}

uint64_t ASImportableItem.tags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableItem(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ASImportableItem.credentials.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASImportableItem(0) + 48));
}

uint64_t ASImportableItem.credentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ASImportableItem(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1D37D90(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6465696669646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
    }

    if (a1)
    {
      v5 = 0x6E6F697461657263;
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
    v1 = 1936154996;
    v2 = 0x657469726F766166;
    if (a1 != 7)
    {
      v2 = 0x65706F6373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C746974627573;
    if (a1 != 4)
    {
      v3 = 0x69746E6564657263;
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

uint64_t sub_1B1D37EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D37ED0(uint64_t a1)
{
  v2 = sub_1B1D65130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D37F0C(uint64_t a1)
{
  v2 = sub_1B1D65130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableItem.init(id:title:subtitle:favorite:scope:credentials:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a8[1];
  v29 = *a8;
  v13 = type metadata accessor for ASImportableItem(0);
  v14 = v13[5];
  v15 = sub_1B1D7B53C();
  v16 = *(*(v15 - 8) + 56);
  v16(&a9[v14], 1, 1, v15);
  v17 = v13[6];
  v16(&a9[v17], 1, 1, v15);
  v23 = v13[9];
  v18 = &a9[v13[8]];
  v19 = &a9[v13[10]];
  *v19 = 0;
  v19[1] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B1CDEC18(&a9[v14], &qword_1EB775228, &qword_1B1D88D60);
  v16(&a9[v14], 1, 1, v15);
  sub_1B1CDEC18(&a9[v17], &qword_1EB775228, &qword_1B1D88D60);
  v16(&a9[v17], 1, 1, v15);
  v20 = &a9[v13[7]];
  *v20 = a3;
  *(v20 + 1) = a4;
  *v18 = a5;
  *(v18 + 1) = a6;
  a9[v23] = a7;
  v21 = v19[1];
  result = sub_1B1D0C93C(*v19);
  *v19 = v29;
  v19[1] = v28;
  *&a9[v13[12]] = a10;
  *&a9[v13[11]] = a11;
  return result;
}

uint64_t ASImportableItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1B1D7B53C();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = v75[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v59 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775870, &qword_1B1D88DE0);
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B1D65130();
  v22 = v78;
  sub_1B1D7C62C();
  if (!v22)
  {
    v73 = v10;
    v78 = v7;
    v23 = v76;
    LOBYTE(v80) = 0;
    sub_1B1D7C40C();
    v24 = v16;
    v25 = sub_1B1D7B4AC();
    if (v26 >> 60 == 15)
    {
      v27 = sub_1B1D7C2BC();
      swift_allocError();
      v29 = v28;
      v30 = v24;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
      *v29 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v77 + 8))(v19, v30);
    }

    else
    {
      v71 = v25;
      v72 = v26;
      LOBYTE(v80) = 1;
      sub_1B1D641B4(&qword_1EB7757A0, MEMORY[0x1E6969530]);
      v32 = v15;
      sub_1B1D7C43C();
      LOBYTE(v80) = 2;
      sub_1B1D7C43C();
      LOBYTE(v80) = 3;
      v70 = v24;
      v33 = sub_1B1D7C40C();
      v34 = v75;
      v35 = v33;
      v69 = v36;
      LOBYTE(v80) = 4;
      v66 = sub_1B1D7C3DC();
      v67 = v35;
      v68 = v37;
      LOBYTE(v80) = 7;
      v82 = sub_1B1D7C3EC();
      v83 = 8;
      sub_1B1D65184();
      sub_1B1D7C3FC();
      v64 = v80;
      v65 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775888, &qword_1B1D88DE8);
      v83 = 5;
      sub_1B1D651D8();
      sub_1B1D7C43C();
      v63 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
      v83 = 6;
      sub_1B1D65490(&qword_1EB7758A0);
      sub_1B1D7C3FC();
      v62 = v80;
      v39 = v34[2];
      v40 = v23;
      v39(v73, v32, v23);
      v39(v78, v13, v23);
      v41 = MEMORY[0x1E69E7CC0];
      if (v62)
      {
        v41 = v62;
      }

      v62 = v41;
      v42 = v34[1];
      v42(v13, v23);
      v42(v32, v23);
      (*(v77 + 8))(v19, v70);
      v43 = type metadata accessor for ASImportableItem(0);
      v44 = v43[5];
      v45 = v34[7];
      v61 = v45;
      v46 = v74;
      v45(v74 + v44, 1, 1, v40);
      v60 = v43[6];
      v45(v46 + v60, 1, 1, v40);
      v47 = v43[8];
      v77 = v43[9];
      v70 = (v46 + v47);
      v48 = (v46 + v43[10]);
      *v48 = 0;
      v48[1] = 0;
      v49 = v72;
      *v46 = v71;
      v46[1] = v49;
      sub_1B1CDEC18(v46 + v44, &qword_1EB775228, &qword_1B1D88D60);
      v75 = v34[4];
      (v75)(v46 + v44, v73, v40);
      v50 = v61;
      v61(v46 + v44, 0, 1, v40);
      v51 = v60;
      sub_1B1CDEC18(v46 + v60, &qword_1EB775228, &qword_1B1D88D60);
      (v75)(v46 + v51, v78, v40);
      v50(v46 + v51, 0, 1, v40);
      v52 = (v46 + v43[7]);
      v54 = v69;
      v53 = v70;
      *v52 = v67;
      v52[1] = v54;
      v55 = v68;
      *v53 = v66;
      v53[1] = v55;
      *(v46 + v77) = v82 & 1;
      v56 = v48[1];
      sub_1B1D0C93C(*v48);
      v57 = v65;
      *v48 = v64;
      v48[1] = v57;
      v58 = v62;
      *(v46 + v43[12]) = v63;
      *(v46 + v43[11]) = v58;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v79);
}

uint64_t ASImportableItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758A8, &qword_1B1D88DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65130();
  sub_1B1D7C63C();
  v11 = *v3;
  v12 = v3[1];
  sub_1B1D7B4BC();
  LOBYTE(v25[0]) = 0;
  sub_1B1D7C49C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v14 = type metadata accessor for ASImportableItem(0);
    v15 = v14[5];
    LOBYTE(v25[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
    sub_1B1D652B0();
    sub_1B1D7C4CC();
    v16 = v14[6];
    LOBYTE(v25[0]) = 2;
    sub_1B1D7C4CC();
    v17 = (v3 + v14[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25[0]) = 3;
    sub_1B1D7C49C();
    v20 = (v3 + v14[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25[0]) = 4;
    sub_1B1D7C47C();
    if (*(v3 + v14[9]) == 1)
    {
      LOBYTE(v25[0]) = 7;
      sub_1B1D7C4AC();
    }

    v23 = (v3 + v14[10]);
    v24 = v23[1];
    v25[0] = *v23;
    v25[1] = v24;
    v26 = 8;
    sub_1B1D650F0(v25[0]);
    sub_1B1D65364();
    sub_1B1D7C48C();
    sub_1B1D0C93C(v25[0]);
    v25[0] = *(v3 + v14[12]);
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D653B8();
    sub_1B1D7C4CC();
    if (*(*(v3 + v14[11]) + 16))
    {
      v25[0] = *(v3 + v14[11]);
      v26 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
      sub_1B1D65490(&qword_1EB7758D0);
      sub_1B1D7C4CC();
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t ASImportableItem.hash(into:)(uint64_t a1)
{
  v3 = sub_1B1D7B53C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = *v1;
  v16 = v1[1];
  sub_1B1D7B4FC();
  v37 = type metadata accessor for ASImportableItem(0);
  v38 = v1;
  sub_1B1D64DB8(v1 + *(v37 + 20), v14);
  v17 = *(v4 + 48);
  if (v17(v14, 1, v3) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v4 + 32))(v7, v14, v3);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
    sub_1B1D7BDEC();
    (*(v4 + 8))(v7, v3);
  }

  v18 = v37;
  sub_1B1D64DB8(v38 + *(v37 + 24), v12);
  if (v17(v12, 1, v3) == 1)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    sub_1B1D7C5EC();
    sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530]);
    sub_1B1D7BDEC();
    (*(v4 + 8))(v7, v3);
  }

  v19 = v38;
  v20 = (v38 + v18[7]);
  v21 = *v20;
  v22 = v20[1];
  sub_1B1D7BE7C();
  v23 = (v19 + v18[8]);
  if (v23[1])
  {
    v24 = *v23;
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  v25 = *(v19 + v18[9]);
  sub_1B1D7C5EC();
  v26 = (v19 + v18[10]);
  if (*v26)
  {
    v27 = v26[1];
    v41[0] = *v26;
    v41[1] = v27;
    sub_1B1D7C5EC();

    ASImportableCredentialScope.hash(into:)(a1);
  }

  else
  {
    sub_1B1D7C5EC();
  }

  v28 = *(v19 + v18[11]);
  MEMORY[0x1B273B630](*(v28 + 16));
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;

      sub_1B1D7BE7C();

      v30 += 2;
      --v29;
    }

    while (v29);
  }

  v33 = *(v19 + v18[12]);
  result = MEMORY[0x1B273B630](*(v33 + 16));
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = (v33 + 32);
    do
    {
      memcpy(v39, v36, 0x2A1uLL);
      memcpy(v41, v36, 0x2A1uLL);
      sub_1B1D65C20(v39, v40);
      ASImportableCredential.hash(into:)(a1);
      memcpy(v40, v41, 0x2A1uLL);
      result = sub_1B1D65C58(v40);
      v36 += 680;
      --v35;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_1B1D392AC(void (*a1)(_BYTE *))
{
  sub_1B1D7C5CC();
  a1(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3933C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B1D7C5CC();
  a3(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D393A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B1D7C5CC();
  a4(v6);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.urls.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ASImportableCredentialScope.androidApps.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ASImportableCredentialScope.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758D8, &qword_1B1D88E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65C88();
  sub_1B1D7C62C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758E8, &qword_1B1D88E08);
  v16 = 0;
  sub_1B1D65CDC();
  sub_1B1D7C3FC();
  v12 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v13 = v17;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775900, &qword_1B1D88E10);
  v16 = 1;
  sub_1B1D65D90();
  sub_1B1D7C3FC();
  if (v17)
  {
    v14 = v17;
  }

  else
  {
    v14 = v12;
  }

  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  a2[1] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredentialScope.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775918, &qword_1B1D88E18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D65C88();

  sub_1B1D7C63C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7758E8, &qword_1B1D88E08);
  sub_1B1D65E68();
  sub_1B1D7C4CC();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65F1C();
    sub_1B1D7C4CC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B1D398C8()
{
  if (*v0)
  {
    result = 0x4164696F72646E61;
  }

  else
  {
    result = 1936487029;
  }

  *v0;
  return result;
}

uint64_t sub_1B1D39904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164696F72646E61 && a2 == 0xEB00000000737070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

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

uint64_t sub_1B1D399E4(uint64_t a1)
{
  v2 = sub_1B1D65C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D39A20(uint64_t a1)
{
  v2 = sub_1B1D65C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ASImportableCredentialScope.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B1D302A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D304B8(v2, v3);
}

uint64_t ASImportableCredentialScope.hash(into:)(uint64_t a1)
{
  v3 = sub_1B1D7B49C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v17 = v1[1];
  MEMORY[0x1B273B630](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v3);
      sub_1B1D641B4(&qword_1EB775940, MEMORY[0x1E6968FB0]);
      sub_1B1D7BDEC();
      (*(v10 - 8))(v7, v3);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return sub_1B1D57010(a1, v17);
}

uint64_t ASImportableCredentialScope.hashValue.getter()
{
  v3 = *v0;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39CBC()
{
  v3 = *v0;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39D0C()
{
  v3 = *v0;
  sub_1B1D7C5CC();
  ASImportableCredentialScope.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D39D54(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B1D302A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D304B8(v2, v3);
}

uint64_t ASImportableCredentialScope.AndroidAppID.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ASImportableCredentialScope.AndroidAppID.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppID.certificate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B1D65FF4(v2, v3, v4, v5);
}

__n128 ASImportableCredentialScope.AndroidAppID.certificate.setter(uint64_t a1)
{
  sub_1B1D66034(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

__n128 ASImportableCredentialScope.AndroidAppID.init(bundleID:certificate:name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  sub_1B1D66034(0, 0, 0, 0);
  result = *a3;
  v11 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v11;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_1B1D39F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6369666974726563;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6449656C646E7562;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6369666974726563;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6449656C646E7562;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1B1D3A01C()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3A0C0()
{
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3A150()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3A1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BDD8();
  *a2 = result;
  return result;
}

void sub_1B1D3A220(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x6369666974726563;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D3A280()
{
  v1 = 0x6369666974726563;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1B1D3A2DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6BDD8();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D3A304(uint64_t a1)
{
  v2 = sub_1B1D66074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3A340(uint64_t a1)
{
  v2 = sub_1B1D66074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredentialScope.AndroidAppID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775948, &qword_1B1D88E20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66074();
  sub_1B1D7C63C();
  LOBYTE(v22) = 0;
  v14 = v21;
  sub_1B1D7C49C();
  if (!v14)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = 1;
    sub_1B1D65FF4(v20, v19, v18, v17);
    sub_1B1D660C8();
    sub_1B1D7C48C();
    sub_1B1D66034(v22, v23, v24, v25);
    LOBYTE(v22) = 2;
    sub_1B1D7C47C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ASImportableCredentialScope.AndroidAppID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B1D7BE7C();
  if (!v6)
  {
    sub_1B1D7C5EC();
    if (v8)
    {
      goto LABEL_3;
    }

    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v8)
  {
    return sub_1B1D7C5EC();
  }

LABEL_3:
  sub_1B1D7C5EC();

  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredentialScope.AndroidAppID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  if (!v6)
  {
    sub_1B1D7C5EC();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    return sub_1B1D7C61C();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.AndroidAppID.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775960, &qword_1B1D88E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66074();
  sub_1B1D7C62C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B1D66034(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v33) = 0;
    v11 = sub_1B1D7C40C();
    v13 = v12;
    v25 = v11;
    LOBYTE(v29) = 1;
    sub_1B1D6611C();
    sub_1B1D7C3FC();
    v26 = v34;
    v14 = v36;
    v27 = v35;
    v28 = v33;
    sub_1B1D66034(0, 0, 0, 0);
    v41 = 2;
    v15 = sub_1B1D7C3DC();
    v16 = v9;
    v18 = v17;
    (*(v6 + 8))(v16, v5);
    v19 = v25;
    v20 = v26;
    *&v29 = v25;
    *(&v29 + 1) = v13;
    *&v30 = v28;
    *(&v30 + 1) = v26;
    *&v31 = v27;
    *(&v31 + 1) = v14;
    *&v32 = v15;
    *(&v32 + 1) = v18;
    v21 = v30;
    *a2 = v29;
    a2[1] = v21;
    v22 = v32;
    a2[2] = v31;
    a2[3] = v22;
    sub_1B1D66170(&v29, &v33);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v33 = v19;
    v34 = v13;
    v35 = v28;
    v36 = v20;
    v37 = v27;
    v38 = v14;
    v39 = v15;
    v40 = v18;
    return sub_1B1D661A8(&v33);
  }
}

uint64_t sub_1B1D3AA3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  if (!v6)
  {
    sub_1B1D7C5EC();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    return sub_1B1D7C61C();
  }

  sub_1B1D7C5EC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashAlgorithm.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashAlgorithm.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.init(fingerprint:hashAlgorithm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775970, &qword_1B1D88E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D661D8();
  sub_1B1D7C62C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  sub_1B1D7C40C();
  v11 = sub_1B1D7B4AC();
  if (v12 >> 60 == 15)
  {
    v13 = sub_1B1D7C2BC();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
    *v15 = MEMORY[0x1E6969080];
    sub_1B1D7C3CC();
    sub_1B1D7C2AC();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v11;
  v19 = v12;
  v26 = 1;
  v20 = sub_1B1D7C40C();
  v22 = v21;
  v23 = *(v6 + 8);
  v25 = v20;
  v23(v9, v5);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v25;
  a2[3] = v22;
  sub_1B1CE111C(v18, v19);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1B1CDEFDC(v18, v19);
}

uint64_t sub_1B1D3AEB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676C4168736168;
  }

  else
  {
    v4 = 0x72707265676E6966;
  }

  if (v3)
  {
    v5 = 0xEB00000000746E69;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x676C4168736168;
  }

  else
  {
    v6 = 0x72707265676E6966;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEB00000000746E69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();
  }

  return v9 & 1;
}

uint64_t sub_1B1D3AF68()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3AFF4()
{
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3B06C()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D3B100(uint64_t *a1@<X8>)
{
  v2 = 0x72707265676E6966;
  if (*v1)
  {
    v2 = 0x676C4168736168;
  }

  v3 = 0xEB00000000746E69;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B1D3B148()
{
  if (*v0)
  {
    result = 0x676C4168736168;
  }

  else
  {
    result = 0x72707265676E6966;
  }

  *v0;
  return result;
}

uint64_t sub_1B1D3B198(uint64_t a1)
{
  v2 = sub_1B1D661D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3B1D4(uint64_t a1)
{
  v2 = sub_1B1D661D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ASImportableCredentialScope.AndroidAppCertificationFingerprint.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1B1D583E4(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B1D7C50C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775980, &qword_1B1D88E38);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13[1] = v1[3];
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE111C(v8, v9);
  sub_1B1D661D8();
  sub_1B1D7C63C();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_1B1CE561C();
  sub_1B1D7C4CC();
  sub_1B1CDEFDC(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1B1D7C49C();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1D7B4FC();

  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredentialScope.AndroidAppCertificationFingerprint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B528()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B590()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1D7B4FC();

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D3B5E0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B644(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1B1D583E4(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B1D7C50C();
}

AuthenticationServices::ASImportableEditableField::FieldType_optional __swiftcall ASImportableEditableField.FieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B1D7C3AC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}