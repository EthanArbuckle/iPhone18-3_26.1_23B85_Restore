void sub_23AC49220(char a1, SEL *a2)
{
  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v2, obj);
  [obj *a2];
}

void (*VSUserAccount.isSignedOut.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 56) = [v5 isSignedOut];
  return sub_23AC4935C;
}

void sub_23AC49368(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 40);
  [*(*a1 + 48) copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v7 = v4[4];
  objc_storeStrong(v6, v7);
  [v7 *a3];

  free(v4);
}

uint64_t sub_23AC49468@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_23AC49558@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_23AC49638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20]();
  v11 = &v13 - v10;
  sub_23AC4CC08(a1, &v13 - v10, a5);
  return a7(v11);
}

uint64_t VSUserAccount.subscriptionBillingCycleEndDate.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86E8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v6 = v12;
  objc_storeStrong(v2, v12);
  sub_23AC4CC08(a1, v5, &qword_27DFC86E8);
  v7 = sub_23AC66254();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_23AC66224();
    (*(v8 + 8))(v5, v7);
  }

  [v6 setSubscriptionBillingCycleEndDate_];

  return sub_23AC4CC70(a1, &qword_27DFC86E8);
}

void (*VSUserAccount.subscriptionBillingCycleEndDate.modify(id **a1))(void *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86E8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
    a1[2] = v4;
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
    a1[2] = v4;
    v5 = malloc(v3);
  }

  v6 = v5;
  a1[3] = v5;
  v7 = [*v1 subscriptionBillingCycleEndDate];
  if (v7)
  {
    v8 = v7;
    sub_23AC66234();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_23AC66254();
  (*(*(v10 - 8) + 56))(v4, v9, 1, v10);
  sub_23AC4CCD0(v4, v6, &qword_27DFC86E8);
  return sub_23AC49A14;
}

void sub_23AC49A3C(void *a1, char a2, void (*a3)(void *), uint64_t *a4)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[1];
  if (a2)
  {
    sub_23AC4CC08(v6, v7, a4);
    a3(v7);
    sub_23AC4CC70(v6, a4);
  }

  else
  {
    a3(v6);
  }

  free(v6);
  free(v5);

  free(v7);
}

uint64_t VSUserAccount.tierIdentifiers.getter()
{
  v1 = [*v0 tierIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23AC663F4();

  return v3;
}

void sub_23AC49B44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 tierIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC663F4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void VSUserAccount.tierIdentifiers.setter(uint64_t a1)
{
  [*v1 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v1, obj);
  if (a1)
  {
    v3 = sub_23AC663E4();
  }

  else
  {
    v3 = 0;
  }

  [obj setTierIdentifiers_];
}

void (*VSUserAccount.tierIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [*v1 tierIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC663F4();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_23AC49D44;
}

void sub_23AC49D44(uint64_t *a1, char a2)
{
  if (a2)
  {

    VSUserAccount.tierIdentifiers.setter(v2);
  }

  else
  {
    VSUserAccount.tierIdentifiers.setter(*a1);
  }
}

uint64_t (*VSUserAccount.billingIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 billingIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC49E60;
}

uint64_t (*VSUserAccount.authenticationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 authenticationData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC49F3C;
}

NSObject VSUserAccount.appleSubscription.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4.super.isa = [v3 appleSubscription];
  if (v4.super.isa)
  {

    v4.super.isa = [v3 appleSubscription];
    if (!v4.super.isa)
    {
      __break(1u);
      return v4.super;
    }

    v4.super.isa = VSAppleSubscription.init(_:)(v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return v4.super;
}

NSObject sub_23AC49FDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4.super.isa = [*a1 appleSubscription];
  if (v4.super.isa)
  {

    v4.super.isa = [v3 appleSubscription];
    if (!v4.super.isa)
    {
      __break(1u);
      return v4.super;
    }

    v4.super.isa = VSAppleSubscription.init(_:)(v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return v4.super;
}

void sub_23AC4A064(void **a1)
{
  v2 = *a1;
  v1 = v2;
  VSUserAccount.appleSubscription.setter(&v2);
}

void VSUserAccount.appleSubscription.setter(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1)
  {
    v4 = sub_23AC41DC4();
  }

  else
  {
    v4 = 0;
  }

  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v2, obj);
  [obj setAppleSubscription_];
}

NSObject VSUserAccount.appleSubscription.modify(void *a1)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = [v3 appleSubscription];
  if (v4)
  {

    v5.super.isa = [v3 appleSubscription];
    if (!v5.super.isa)
    {
      __break(1u);
      return v5.super;
    }

    VSAppleSubscription.init(_:)(v5);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  v5.super.isa = sub_23AC4A224;
  return v5.super;
}

void sub_23AC4A224(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *a1;
    v3 = v2;
    VSUserAccount.appleSubscription.setter(&v4);
  }

  else
  {
    v4 = *a1;
    VSUserAccount.appleSubscription.setter(&v4);
  }
}

id sub_23AC4A2B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFromCurrentDevice];
  *a2 = result;
  return result;
}

void (*VSUserAccount.isFromCurrentDevice.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 56) = [v5 isFromCurrentDevice];
  return sub_23AC4A38C;
}

id VSUserAccount.deviceCategory.getter@<X0>(char *a1@<X8>)
{
  result = [*v1 deviceCategory];
  if (result == 1)
  {
    v4 = 1;
LABEL_5:
    *a1 = v4;
    return result;
  }

  if (!result)
  {
    v4 = 0;
    goto LABEL_5;
  }

  sub_23AC66534();

  v5 = sub_23AC665D4();
  MEMORY[0x23EE96C90](v5);

  result = sub_23AC66564();
  __break(1u);
  return result;
}

void *sub_23AC4A4A8@<X0>(uint64_t *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  result = a2(&v5);
  *a3 = v5;
  return result;
}

void sub_23AC4A508(unsigned __int8 *a1, SEL *a2)
{
  v4 = *a1;
  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v2, obj);
  [obj *a2];
}

uint64_t static VSUserAccount.OriginatingDeviceCategory.fromObjcType(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
    }

    else
    {
      sub_23AC66534();

      v2 = sub_23AC665D4();
      MEMORY[0x23EE96C90](v2);

      result = sub_23AC66564();
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t VSUserAccount.init(accountType:updateURL:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *a1;
  sub_23AC4CC08(a2, &v21 - v9, &qword_27DFC86D8);
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    sub_23AC4CC08(v10, v8, &qword_27DFC86D8);
    v14 = sub_23AC66214();
    v15 = *(v14 - 8);
    v16 = 0;
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      v16 = sub_23AC661F4();
      (*(v15 + 8))(v8, v14);
    }

    v17 = [objc_allocWithZone(VSUserAccount) initWithAccountType:v11 updateURL:v16 sourceType:0 sourceIdentifier:v13];

    [v17 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v18 = v22;

    [v18 setRequiresSystemTrust_];
    [v18 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v19 = v22;

    [v19 setSignedOut_];
    sub_23AC4CC70(a2, &qword_27DFC86D8);
    result = sub_23AC4CC70(v10, &qword_27DFC86D8);
    *a3 = v19;
  }

  else
  {
    result = sub_23AC66564();
    __break(1u);
  }

  return result;
}

uint64_t VSUserAccount.init(accountType:updateURL:requiresSystemTrust:signedOut:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    sub_23AC4CC08(a2, v12, &qword_27DFC86D8);
    v16 = sub_23AC66214();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      v18 = sub_23AC661F4();
      (*(v17 + 8))(v12, v16);
    }

    v19 = [objc_allocWithZone(VSUserAccount) initWithAccountType:v13 updateURL:v18 sourceType:0 sourceIdentifier:v15];

    [v19 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v20 = v24;

    [v20 setRequiresSystemTrust_];
    [v20 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v21 = v24;

    [v21 setSignedOut_];
    result = sub_23AC4CC70(a2, &qword_27DFC86D8);
    *a5 = v21;
  }

  else
  {
    result = sub_23AC66564();
    __break(1u);
  }

  return result;
}

uint64_t VSUserAccount.init(accountType:updateURL:sourceType:sourceIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  v12 = *a3;
  sub_23AC4CC08(a2, &v20 - v9, &qword_27DFC86D8);
  v13 = sub_23AC66214();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_23AC661F4();
    (*(v14 + 8))(v10, v13);
  }

  v16 = objc_allocWithZone(VSUserAccount);
  v17 = sub_23AC66334();

  v18 = [v16 initWithAccountType:v11 updateURL:v15 sourceType:v12 sourceIdentifier:v17];

  result = sub_23AC4CC70(a2, &qword_27DFC86D8);
  *a4 = v18;
  return result;
}

uint64_t (*VSUserAccount.modifierIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 modifierIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC4AF98;
}

id sub_23AC4AFB0()
{
  v1 = [*v0 modifierType];

  return v1;
}

void (*sub_23AC4AFF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 32) = [v5 modifierType];
  return sub_23AC4B084;
}

id sub_23AC4B090()
{
  v1 = [*v0 api];

  return v1;
}

void sub_23AC4B0D4(void *a1, SEL *a2)
{
  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v2, obj);
  [obj *a2];
}

void (*sub_23AC4B18C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 32) = [v5 api];
  return sub_23AC4B21C;
}

void sub_23AC4B228(uint64_t a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    v8 = v5;
    [v7 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v9 = v4[5];
    objc_storeStrong(v6, v9);
    [v9 *a3];

    v5 = v4[4];
  }

  else
  {
    [*(*a1 + 56) copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v10 = v4[5];
    objc_storeStrong(v6, v10);
    [v10 *a3];
  }

  free(v4);
}

void (*VSUserAccount.created.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = sub_23AC66254();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[12] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[14] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[14] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[15] = v11;
  v13 = *v1;
  v5[16] = *v1;
  result = [v13 created];
  if (result)
  {
    v15 = result;
    sub_23AC66234();

    (*(v8 + 32))(v12, v10, v6);
    return sub_23AC4B55C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23AC4B574(SEL *a1)
{
  v2 = [*v1 *a1];
  if (v2)
  {
    v3 = v2;
    sub_23AC66234();
  }

  else
  {
    __break(1u);
  }
}

void sub_23AC4B5E8(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  if (v4)
  {
    v5 = v4;
    sub_23AC66234();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23AC4B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_23AC66254();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_23AC4B740(uint64_t a1, SEL *a2)
{
  v4 = v2;
  [*v4 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v4, obj);
  v6 = sub_23AC66224();
  [obj *a2];

  v7 = sub_23AC66254();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

void (*VSUserAccount.modified.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = sub_23AC66254();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[12] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[14] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[14] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[15] = v11;
  v13 = *v1;
  v5[16] = *v1;
  result = [v13 modified];
  if (result)
  {
    v15 = result;
    sub_23AC66234();

    (*(v8 + 32))(v12, v10, v6);
    return sub_23AC4B9C4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23AC4B9D0(uint64_t *a1, char a2, SEL *a3)
{
  v4 = *a1;
  if (a2)
  {
    v6 = *(v4 + 120);
    v5 = *(v4 + 128);
    v8 = *(v4 + 104);
    v7 = *(v4 + 112);
    v9 = *(v4 + 88);
    v10 = *(v4 + 96);
    v11 = *(v4 + 80);
    (*(v10 + 16))(v8, v6, v9);
    [v5 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v12 = *(v4 + 64);
    objc_storeStrong(v11, v12);
    v13 = sub_23AC66224();
    [v12 *a3];

    v14 = *(v10 + 8);
    v14(v8, v9);
    v14(v6, v9);
  }

  else
  {
    v6 = *(v4 + 120);
    v8 = *(v4 + 104);
    v7 = *(v4 + 112);
    v15 = *(v4 + 88);
    v16 = *(v4 + 96);
    v17 = *(v4 + 80);
    [*(v4 + 128) copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v18 = *(v4 + 72);
    objc_storeStrong(v17, v18);
    v19 = sub_23AC66224();
    [v18 *a3];

    (*(v16 + 8))(v6, v15);
  }

  free(v6);
  free(v7);
  free(v8);

  free(v4);
}

id VSUserAccount.sourceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*v1 sourceType];
  if (result > 2)
  {
    sub_23AC66534();

    v4 = sub_23AC665D4();
    MEMORY[0x23EE96C90](v4);

    result = sub_23AC66564();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_23AC4BCD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = VSUserAccount.sourceType.getter(&v4);
  *a2 = v4;
  return result;
}

void sub_23AC4BD14(unsigned __int8 *a1, id *a2)
{
  v3 = *a1;
  [*a2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(a2, obj);
  [obj setSourceType_];
}

void VSUserAccount.sourceType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  [*v1 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v1, obj);
  [obj setSourceType_];
}

unint64_t sub_23AC4BE80@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2)
  {
    sub_23AC66534();

    v2 = sub_23AC665D4();
    MEMORY[0x23EE96C90](v2);

    result = sub_23AC66564();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void (*VSUserAccount.sourceType.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = *v1;
  VSUserAccount.sourceType.getter((v3 + 56));
  return sub_23AC4BFD8;
}

void sub_23AC4BFD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 40);
  [*(*a1 + 48) copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v4 = v1[4];
  objc_storeStrong(v3, v4);
  [v4 setSourceType_];

  free(v1);
}

uint64_t VSUserAccount.sourceIdentifier.getter()
{
  v1 = [*v0 sourceIdentifier];
  v2 = sub_23AC66364();

  return v2;
}

void sub_23AC4C0F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sourceIdentifier];
  v4 = sub_23AC66364();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void VSUserAccount.sourceIdentifier.setter()
{
  [*v0 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v0, obj);
  v1 = sub_23AC66334();

  [obj setSourceIdentifier_];
}

void (*VSUserAccount.sourceIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v4[8] = *v1;
  v6 = [v5 sourceIdentifier];
  v7 = sub_23AC66364();
  v9 = v8;

  v4[4] = v7;
  v4[5] = v9;
  return sub_23AC4C30C;
}

void sub_23AC4C30C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {

    [v4 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v5 = v2[6];
    objc_storeStrong(v3, v5);
    v6 = sub_23AC66334();

    [v5 setSourceIdentifier_];
  }

  else
  {
    [*(*a1 + 64) copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC86E0);
    swift_dynamicCast();
    v7 = v2[6];
    objc_storeStrong(v3, v7);
    v8 = sub_23AC66334();

    [v7 setSourceIdentifier_];
  }

  free(v2);
}

uint64_t sub_23AC4C4C4(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23AC66364();

  return v4;
}

void sub_23AC4C538(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23AC66364();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

uint64_t sub_23AC4C5B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*VSUserAccount.deviceIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 deviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC4C690;
}

uint64_t sub_23AC4C6A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_23AC4C738@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keychainItemHash];
  *a2 = result;
  return result;
}

void sub_23AC4C76C(uint64_t *a1, id *a2)
{
  v3 = *a1;
  [*a2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(a2, obj);
  [obj setKeychainItemHash_];
}

void VSUserAccount.keychainItemHash.setter(uint64_t a1)
{
  [*v1 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v1, obj);
  [obj setKeychainItemHash_];
}

void (*VSUserAccount.keychainItemHash.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 32) = [v5 keychainItemHash];
  return sub_23AC4C960;
}

void sub_23AC4C960(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 48);
  [*(*a1 + 56) copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v4 = v1[5];
  objc_storeStrong(v3, v4);
  [v4 setKeychainItemHash_];

  free(v1);
}

id sub_23AC4CA50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDeveloperCreated];
  *a2 = result;
  return result;
}

void (*VSUserAccount.isDeveloperCreated.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 56) = [v5 isDeveloperCreated];
  return sub_23AC4CB24;
}

uint64_t VSUserAccount.hashValue.getter()
{
  sub_23AC66614();
  sub_23AC66494();
  return sub_23AC66634();
}

VideoSubscriberAccount::VSUserAccount::AccountType_optional __swiftcall VSUserAccount.AccountType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23AC4CC08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23AC4CC70(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23AC4CCD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_23AC4CD84@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t static VSUserAccount.OriginatingDeviceCategory.currentDeviceCategory()@<X0>(_BYTE *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 deviceType];

  v5 = [v2 deviceCategoryFromDeviceType_];

  return static VSUserAccount.OriginatingDeviceCategory.fromObjcType(_:)(v5, a1);
}

uint64_t sub_23AC4CE48()
{
  v1 = *v0;
  sub_23AC66614();
  MEMORY[0x23EE96F10](v1);
  return sub_23AC66634();
}

uint64_t sub_23AC4CE90()
{
  v1 = *v0;
  sub_23AC66614();
  MEMORY[0x23EE96F10](v1);
  return sub_23AC66634();
}

VideoSubscriberAccount::VSUserAccount::SourceType_optional __swiftcall VSUserAccount.SourceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VSUserAccountManager.update(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_23AC4CF28, 0, 0);
}

uint64_t sub_23AC4CF28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23AC4D024;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23AC4D024()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23AC4D1A4;
  }

  else
  {

    v2 = sub_23AC4D140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23AC4D140()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23AC4D1A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23AC4D210(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8718);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_23AC4F5D0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4D3D0;
  aBlock[3] = &block_descriptor_68;
  v12 = _Block_copy(aBlock);

  [a2 updateUserAccount:a3 completion:v12];
  _Block_release(v12);
}

void sub_23AC4D3D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t VSUserAccountManager.userAccounts(options:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23AC4D464, 0, 0);
}

uint64_t sub_23AC4D464()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86F0);
  *v4 = v0;
  v4[1] = sub_23AC4D56C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x800000023AC8A930, sub_23AC4EB50, v3, v5);
}

uint64_t sub_23AC4D56C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23AC4D6A4;
  }

  else
  {

    v2 = sub_23AC4D688;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23AC4D6A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23AC4D708(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8730);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_23AC4F0EC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4D8C0;
  aBlock[3] = &block_descriptor_62;
  v12 = _Block_copy(aBlock);

  [a2 queryUserAccountsWithOptions:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_23AC4D8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23AC466DC(0, &qword_27DFC86E0);
    v4 = sub_23AC663F4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t VSUserAccountManager.autoSignInToken.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AC4D984, 0, 0);
}

uint64_t sub_23AC4D984()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23AC4DA7C;
  v4 = v0[2];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x6E6769536F747561, 0xEF6E656B6F546E49, sub_23AC4EB58, v2, &type metadata for VSUserAccountManager.AutoSignInToken);
}

uint64_t sub_23AC4DA7C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23AC4DBB8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23AC4DBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23AC4DC1C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8728);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23AC4EFBC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4F5DC;
  aBlock[3] = &block_descriptor_56;
  v10 = _Block_copy(aBlock);

  [a2 queryAutoSignInTokenWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t VSUserAccountManager.requestAutoSignInAuthorization()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AC4DDEC, 0, 0);
}

uint64_t sub_23AC4DDEC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23AC4DEE4;
  v4 = v0[2];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000020, 0x800000023AC8A950, sub_23AC4EB60, v2, &type metadata for VSUserAccountManager.AutoSignInTokenUpdateContext);
}

uint64_t sub_23AC4DEE4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23AC4F5E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_23AC4E020(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8720);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23AC4EE8C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4F5DC;
  aBlock[3] = &block_descriptor_50;
  v10 = _Block_copy(aBlock);

  [a2 requestAutoSignInAuthorizationWithCompletionHandler_];
  _Block_release(v10);
}

void sub_23AC4E1D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t VSUserAccountManager.updateAutoSignInToken(_:updateContext:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *a3;
  v4[4] = v3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_23AC4E284, 0, 0);
}

uint64_t sub_23AC4E284()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23AC4E394;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000027, 0x800000023AC8A980, sub_23AC4EB68, v3, v5);
}

uint64_t sub_23AC4E394()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23AC4E4B0;
  }

  else
  {

    v2 = sub_23AC4F5B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23AC4E4B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23AC4E514(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8718);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_23AC66334();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_23AC4F5D0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4D3D0;
  aBlock[3] = &block_descriptor_44;
  v15 = _Block_copy(aBlock);

  [a2 updateAutoSignInToken:v12 updateContext:a5 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_23AC4E714()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_23AC4E808;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000017, 0x800000023AC8A9B0, sub_23AC4EB74, v2, v4);
}

uint64_t sub_23AC4E808()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23AC4E93C;
  }

  else
  {

    v2 = sub_23AC4E924;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23AC4E93C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23AC4E9A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8718);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23AC4EE70;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AC4D3D0;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 deleteAutoSignInTokenWithCompletionHandler_];
  _Block_release(v10);
}

unint64_t sub_23AC4EB80()
{
  result = qword_27DFC86F8;
  if (!qword_27DFC86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC86F8);
  }

  return result;
}

unint64_t sub_23AC4EBD8()
{
  result = qword_27DFC8700;
  if (!qword_27DFC8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8700);
  }

  return result;
}

unint64_t sub_23AC4EC30()
{
  result = qword_27DFC8708;
  if (!qword_27DFC8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8708);
  }

  return result;
}

unint64_t sub_23AC4EC88()
{
  result = qword_27DFC8710;
  if (!qword_27DFC8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8710);
  }

  return result;
}

uint64_t _s22VideoSubscriberAccount13VSUserAccountV11AccountTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s22VideoSubscriberAccount13VSUserAccountV11AccountTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AC4EE8C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8720);
  if (a1)
  {
    sub_23AC41DCC(a1, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8720);
    return sub_23AC66424();
  }

  else if (a2)
  {
    v6 = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8720);
    return sub_23AC66414();
  }

  else
  {
    result = sub_23AC66564();
    __break(1u);
  }

  return result;
}

uint64_t sub_23AC4EFBC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8728);
  if (a2)
  {
    v6 = a2;
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8728);
    return sub_23AC66414();
  }

  else if (a1)
  {
    sub_23AC41DCC(a1, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8728);
    return sub_23AC66424();
  }

  else
  {
    result = sub_23AC66564();
    __break(1u);
  }

  return result;
}

uint64_t sub_23AC4F0EC(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8730);
  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AC66574())
    {
      v5 = MEMORY[0x277D84F90];
      v6 = 4;
      while (1)
      {
        v7 = v6 - 4;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EE96E30](v6 - 4, a1);
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v8 = *(a1 + 8 * v6);
        }

        v9 = v8;
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23AC4F330(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_23AC4F330((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        *&v5[8 * v12 + 32] = v9;
        ++v6;
        if (v10 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8730);
    return sub_23AC66424();
  }

  else if (a2)
  {
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8730);
    return sub_23AC66414();
  }

  else
  {
    result = sub_23AC66564();
    __break(1u);
  }

  return result;
}

char *sub_23AC4F330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8738);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t objectdestroyTm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_23AC4F4C0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8718);
  if (!a1)
  {
    return sub_23AC66424();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8718);
  return sub_23AC66414();
}

void sub_23AC4F630()
{
  type metadata accessor for VSMetricsManager();
  v0 = swift_allocObject();
  v1 = sub_23AC66334();
  v2 = sub_23AC66334();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = objc_allocWithZone(MEMORY[0x277CEE598]);
  v5 = sub_23AC66334();
  v6 = [v4 initWithContainerID:v5 bag:v3];

  *(v0 + 16) = v6;
  qword_27DFCA970 = v0;
}

uint64_t sub_23AC4F728()
{
  v0 = swift_allocObject();
  v1 = sub_23AC66334();
  v2 = sub_23AC66334();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = objc_allocWithZone(MEMORY[0x277CEE598]);
  v5 = sub_23AC66334();
  v6 = [v4 initWithContainerID:v5 bag:v3];

  *(v0 + 16) = v6;
  return v0;
}

uint64_t *sub_23AC4F81C()
{
  if (qword_27DFC9F70 != -1)
  {
    swift_once();
  }

  return &qword_27DFCA970;
}

uint64_t sub_23AC4F86C()
{
  if (qword_27DFC9F70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23AC4F8C8()
{
  v1 = sub_23AC66334();
  v2 = sub_23AC66334();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = objc_allocWithZone(MEMORY[0x277CEE598]);
  v5 = sub_23AC66334();
  v6 = [v4 initWithContainerID:v5 bag:v3];

  *(v0 + 16) = v6;
  return v0;
}

void sub_23AC4F9A8(void *a1)
{
  v2 = sub_23AC662E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = v75 - v7;
  v76 = sub_23AC53938(MEMORY[0x277D84F90]);
  v8 = a1[3];
  v9 = a1[4];
  v75[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = 0;
  v14 = v10 + 64;
  v13 = *(v10 + 64);
  v79 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v81 = (v3 + 8);
  v82 = (v3 + 16);
  *&v11 = 136315138;
  v78 = v11;
  v84 = v18;
  v85 = v2;
  v83 = v6;
  v77 = v10 + 64;
  while (v17)
  {
    v19 = v12;
LABEL_16:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v79;
    sub_23AC444F8(*(v79 + 48) + 40 * v23, &v90);
    sub_23AC44554(*(v24 + 56) + 32 * v23, v88);
    v93 = v90;
    v94 = v91;
    *&v95 = v92;
    sub_23AC445B0(v88, (&v95 + 8));
LABEL_17:
    v100[0] = v95;
    v100[1] = v96;
    v101 = v97;
    v98 = v93;
    v99 = v94;
    if (!*(&v94 + 1))
    {

      sub_23AC5033C(v76);

      v65 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
      v66 = sub_23AC662F4();

      v67 = [v65 initWithUnderlyingDictionary_];

      v68 = v75[0];
      v69 = v75[0][3];
      v70 = v75[0][4];
      __swift_project_boxed_opaque_existential_1(v75[0], v69);
      (*(v70 + 8))(v69, v70);
      v71 = sub_23AC66334();

      [v67 setEventType_];

      v72 = v68[3];
      v73 = v68[4];
      __swift_project_boxed_opaque_existential_1(v68, v72);
      (*(v73 + 40))(v72, v73);
      v74 = sub_23AC66334();

      [v67 setTopic_];

      [v67 setCheckDiagnosticsAndUsageSetting_];
      (*(*v75[1] + 104))(v67);

      return;
    }

    v93 = v98;
    v94 = v99;
    *&v95 = *&v100[0];
    sub_23AC445B0((v100 + 8), v89);
    sub_23AC444F8(&v93, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8740);
    if (swift_dynamicCast())
    {
      sub_23AC53AAC(v86, &v90);
      __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      sub_23AC663D4();
      if (swift_dynamicCast())
      {
        v49 = *v88;
        sub_23AC44554(v89, v88);
        v50 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86[0] = v50;
        v53 = sub_23AC5327C(v49, *(&v49 + 1));
        v54 = *(v50 + 16);
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_40;
        }

        v57 = v52;
        if (*(v50 + 24) >= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v18 = v84;
            if (v52)
            {
              goto LABEL_33;
            }
          }

          else
          {
            sub_23AC53794();
            v18 = v84;
            if (v57)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          sub_23AC534DC(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_23AC5327C(v49, *(&v49 + 1));
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_42;
          }

          v53 = v58;
          v18 = v84;
          if (v57)
          {
LABEL_33:

            v76 = *&v86[0];
            v60 = (*(*&v86[0] + 56) + 32 * v53);
            __swift_destroy_boxed_opaque_existential_0(v60);
            sub_23AC445B0(v88, v60);
            __swift_destroy_boxed_opaque_existential_0(v89);
            sub_23AC44614(&v93);
            goto LABEL_37;
          }
        }

        v61 = *&v86[0];
        *(*&v86[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
        *(v61[6] + 16 * v53) = v49;
        sub_23AC445B0(v88, (v61[7] + 32 * v53));
        __swift_destroy_boxed_opaque_existential_0(v89);
        sub_23AC44614(&v93);
        v62 = v61[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_41;
        }

        v76 = v61;
        v61[2] = v64;
LABEL_37:
        __swift_destroy_boxed_opaque_existential_0(&v90);
        v2 = v85;
        v6 = v83;
      }

      else
      {
        v26 = sub_23AC5EAE8();
        v27 = v80;
        v2 = v85;
        (*v82)(v80, v26, v85);
        sub_23AC444F8(&v93, v88);
        v28 = sub_23AC662C4();
        v29 = sub_23AC66474();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = v27;
          v32 = swift_slowAlloc();
          *&v86[0] = v32;
          *v30 = v78;
          v33 = sub_23AC664C4();
          v35 = v34;
          sub_23AC44614(v88);
          v36 = sub_23AC43B08(v33, v35, v86);
          v2 = v85;

          *(v30 + 4) = v36;
          _os_log_impl(&dword_23AB8E000, v28, v29, "Non-string key %s sent to VSMetricsManager.record", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x23EE97EA0](v32, -1, -1);
          MEMORY[0x23EE97EA0](v30, -1, -1);

          v37 = v31;
          v14 = v77;
          (*v81)(v37, v2);
        }

        else
        {

          sub_23AC44614(v88);
          (*v81)(v27, v2);
        }

        __swift_destroy_boxed_opaque_existential_0(v89);
        sub_23AC44614(&v93);
        v6 = v83;
        v18 = v84;
        __swift_destroy_boxed_opaque_existential_0(&v90);
      }
    }

    else
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
      sub_23AC4CC70(v86, &qword_27DFC8748);
      v38 = sub_23AC5EAE8();
      (*v82)(v6, v38, v2);
      sub_23AC444F8(&v93, &v90);
      v39 = v6;
      v40 = sub_23AC662C4();
      v41 = sub_23AC66474();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v88[0] = v43;
        *v42 = v78;
        v44 = sub_23AC664C4();
        v46 = v45;
        sub_23AC44614(&v90);
        v47 = sub_23AC43B08(v44, v46, v88);
        v2 = v85;

        *(v42 + 4) = v47;
        _os_log_impl(&dword_23AB8E000, v40, v41, "Unexpected key sent to VSMetricsManager.record: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v48 = v43;
        v18 = v84;
        MEMORY[0x23EE97EA0](v48, -1, -1);
        MEMORY[0x23EE97EA0](v42, -1, -1);

        v6 = v83;
        (*v81)(v83, v2);
        __swift_destroy_boxed_opaque_existential_0(v89);
        sub_23AC44614(&v93);
      }

      else
      {

        sub_23AC44614(&v90);
        (*v81)(v39, v2);
        __swift_destroy_boxed_opaque_existential_0(v89);
        sub_23AC44614(&v93);
        v6 = v39;
      }
    }
  }

  if (v18 <= v12 + 1)
  {
    v20 = v12 + 1;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      v17 = 0;
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      v12 = v21;
      v93 = 0u;
      v94 = 0u;
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_23AC66604();
  __break(1u);
}

uint64_t sub_23AC5033C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8648);
    v2 = sub_23AC665A4();
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
    sub_23AC44554(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23AC445B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23AC445B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23AC445B0(v31, v32);
    result = sub_23AC664D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23AC445B0(v32, (*(v2 + 56) + 32 * v10));
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

void sub_23AC50604(uint64_t a1)
{
  [v1[2] enqueueEvent_];
  v2 = [objc_allocWithZone(VSPreferences) init];
  v3 = [v2 flushMetrics];

  if (v3)
  {
    v4 = *(*v1 + 15);

    v4();
  }
}

void sub_23AC506B0()
{
  v1 = *(v0 + 16);
  sub_23AC466DC(0, &qword_27DFC8750);
  v2 = sub_23AC663E4();
  [v1 enqueueEvents_];
}

void sub_23AC5072C()
{
  v1 = [*(v0 + 16) flush];
}

uint64_t sub_23AC50788()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23AC50818()
{
  sub_23AC66614();
  MEMORY[0x23EE96F10](0);
  return sub_23AC66634();
}

uint64_t sub_23AC5085C()
{
  sub_23AC66614();
  MEMORY[0x23EE96F10](0);
  return sub_23AC66634();
}

uint64_t sub_23AC508D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 104) = a4;
  *(v5 + 105) = a5;
  v6 = swift_task_alloc();
  *(v5 + 96) = v6;
  *v6 = v5;
  v6[1] = sub_23AC50980;

  return VSPageEnterEvent.init(with:and:)(v5 + 16, (v5 + 104), (v5 + 105));
}

uint64_t sub_23AC50980()
{

  return MEMORY[0x2822009F8](sub_23AC50A7C, 0, 0);
}

uint64_t sub_23AC50A7C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC50B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23AC4CC08(a3, v25 - v10, &qword_27DFC8758);
  v12 = sub_23AC66444();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23AC4CC70(v11, &qword_27DFC8758);
  }

  else
  {
    sub_23AC66434();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23AC66404();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23AC66374() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23AC4CC70(a3, &qword_27DFC8758);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23AC4CC70(a3, &qword_27DFC8758);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23AC50E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 104) = a4;
  *(v5 + 105) = a5;
  v6 = swift_task_alloc();
  *(v5 + 96) = v6;
  *v6 = v5;
  v6[1] = sub_23AC50F24;

  return VSPageExitEvent.init(with:and:)(v5 + 16, (v5 + 104), (v5 + 105));
}

uint64_t sub_23AC50F24()
{

  return MEMORY[0x2822009F8](sub_23AC51020, 0, 0);
}

uint64_t sub_23AC51020()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC510E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_23AC66364();
  v10 = v9;
  v11 = sub_23AC66364();
  sub_23AC53CF8(v8, v10, v11, v12, a5, a6);
}

uint64_t sub_23AC51174(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v6 + 104) = a4;
  *(v6 + 105) = a5;
  *(v6 + 106) = a6;
  v7 = swift_task_alloc();
  *(v6 + 96) = v7;
  *v7 = v6;
  v7[1] = sub_23AC51238;

  return VSClickEvent.init(with:page:type:)(v6 + 16, (v6 + 104), (v6 + 105), (v6 + 106));
}

uint64_t sub_23AC51238()
{

  return MEMORY[0x2822009F8](sub_23AC51334, 0, 0);
}

uint64_t sub_23AC51334()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC51490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC5153C;

  return VSSignInEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC5153C()
{

  return MEMORY[0x2822009F8](sub_23AC51638, 0, 0);
}

uint64_t sub_23AC51638()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC517AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC51858;

  return VSSignOutEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC51858()
{

  return MEMORY[0x2822009F8](sub_23AC51954, 0, 0);
}

uint64_t sub_23AC51954()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC51A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC51AC0;

  return VSSTBOptOutEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC51AC0()
{

  return MEMORY[0x2822009F8](sub_23AC51BBC, 0, 0);
}

uint64_t sub_23AC51BBC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC51CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC51D5C;

  return VSUserMetadataEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC51D5C()
{

  return MEMORY[0x2822009F8](sub_23AC51E58, 0, 0);
}

uint64_t sub_23AC51E58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC51FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC52050;

  return VSProhibitedTemplateEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC52050()
{

  return MEMORY[0x2822009F8](sub_23AC5214C, 0, 0);
}

uint64_t sub_23AC5214C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC52208(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_23AC66364();
  a4(v5);
}

uint64_t sub_23AC52250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E10;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;

  sub_23AC53C00(inited);
  swift_setDeallocating();
  sub_23AC4CC70(inited + 32, &qword_27DFC8768);

  v8 = sub_23AC66444();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_23AC50B20(0, 0, v6, &unk_23AC70E88, v9);
}

uint64_t sub_23AC523E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = swift_task_alloc();
  *(v5 + 96) = v8;
  *v8 = v5;
  v8[1] = sub_23AC5249C;

  return VSNPIBrokenEvent.init(_:)(v5 + 16, a4, a5);
}

uint64_t sub_23AC5249C()
{

  return MEMORY[0x2822009F8](sub_23AC52598, 0, 0);
}

uint64_t sub_23AC52598()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC527D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_task_alloc();
  *(v4 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_23AC5287C;

  return VSFederatedPunchoutEvent.init(_:)(v4 + 16, a4);
}

uint64_t sub_23AC5287C()
{

  return MEMORY[0x2822009F8](sub_23AC52978, 0, 0);
}

uint64_t sub_23AC52978()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AC52A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  VSUserAccount.init(_:)(&v18, a1);
  v13 = v18;
  v14 = sub_23AC66444();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;

  sub_23AC50B20(0, 0, v12, &unk_23AC70E98, v15);
}

uint64_t sub_23AC52BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a4;
  v13 = a4;

  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_23AC52CD4;

  return VSAccountUpdateEvent.init(userAccount:source:updateType:)(v8 + 16, (v8 + 96), a5, a6, a7, a8);
}

uint64_t sub_23AC52CD4()
{

  return MEMORY[0x2822009F8](sub_23AC52DD0, 0, 0);
}

uint64_t sub_23AC52DD0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  VSMetricsEventProtocol.record()();

  v3 = *(v0 + 8);

  return v3();
}

VSMetricsManagerObjC __swiftcall VSMetricsManagerObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23AC5308C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23AC53184;

  return v6(a1);
}

uint64_t sub_23AC53184()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23AC5327C(uint64_t a1, uint64_t a2)
{
  sub_23AC66614();
  sub_23AC66384();
  v4 = sub_23AC66634();

  return sub_23AC5335C(a1, a2, v4);
}

unint64_t sub_23AC532F4(unsigned __int8 a1)
{
  sub_23AC445C0();
  v1 = sub_23AC66314();
  return sub_23AC53414(a1, v1);
}

unint64_t sub_23AC5335C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23AC665E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23AC53414(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23AC42004();
    do
    {
      if (sub_23AC66324())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23AC534DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87A8);
  v33 = a2;
  result = sub_23AC66594();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23AC445B0(v24, v34);
      }

      else
      {
        sub_23AC44554(v24, v34);
      }

      sub_23AC66614();
      sub_23AC66384();
      result = sub_23AC66634();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23AC445B0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_23AC53794()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87A8);
  v2 = *v0;
  v3 = sub_23AC66584();
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
        sub_23AC44554(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23AC445B0(v25, (*(v4 + 56) + v22));
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

unint64_t sub_23AC53938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87A8);
    v3 = sub_23AC665A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23AC4CC08(v4, &v13, &qword_27DFC87B0);
      v5 = v13;
      v6 = v14;
      result = sub_23AC5327C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23AC445B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23AC53AAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23AC53AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8648);
    v3 = sub_23AC665A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23AC4CC08(v4, v13, &qword_27DFC8788);
      result = sub_23AC440B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23AC445B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_23AC53C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8790);
    v3 = sub_23AC665A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_23AC532F4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_23AC53CF8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37[1] = a5;
  v38 = a6;
  v10 = sub_23AC662E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v37 - v18;

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  VSPage.init(rawValue:)(v20);
  v21 = v39;
  if (v39 == 7)
  {
    v22 = sub_23AC5EAE8();
    (*(v11 + 16))(v14, v22, v10);

    v23 = sub_23AC662C4();
    v24 = sub_23AC66474();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_23AC43B08(a1, a2, &v39);
      _os_log_impl(&dword_23AB8E000, v23, v24, "Invalid page ID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EE97EA0](v26, -1, -1);
      MEMORY[0x23EE97EA0](v25, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {

    v28._countAndFlagsBits = a3;
    v28._object = a4;
    VSPageType.init(rawValue:)(v28);
    v29 = v39;
    if (v39 == 3)
    {
      v30 = sub_23AC5EAE8();
      (*(v11 + 16))(v16, v30, v10);

      v31 = sub_23AC662C4();
      v32 = sub_23AC66474();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_23AC43B08(a3, a4, &v39);
        _os_log_impl(&dword_23AB8E000, v31, v32, "Invalid page type %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x23EE97EA0](v34, -1, -1);
        MEMORY[0x23EE97EA0](v33, -1, -1);
      }

      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      v35 = sub_23AC66444();
      (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v21;
      *(v36 + 33) = v29;
      sub_23AC50B20(0, 0, v19, v38, v36);
    }
  }
}

uint64_t sub_23AC540F0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v52 = a6;
  v53 = a5;
  v10 = sub_23AC662E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v51 - v21;

  v51 = a1;
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  VSPage.init(rawValue:)(v23);
  v24 = v54;
  if (v54 == 7)
  {
    v25 = sub_23AC5EAE8();
    (*(v11 + 16))(v14, v25, v10);

    v26 = sub_23AC662C4();
    v27 = sub_23AC66474();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_23AC43B08(v51, a2, &v54);
      _os_log_impl(&dword_23AB8E000, v26, v27, "Invalid page ID %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23EE97EA0](v29, -1, -1);
      MEMORY[0x23EE97EA0](v28, -1, -1);
    }

    v30 = *(v11 + 8);
    v31 = v14;
    return v30(v31, v10);
  }

  v32._countAndFlagsBits = a3;
  v32._object = a4;
  VSPageType.init(rawValue:)(v32);
  v33 = v54;
  if (v54 == 3)
  {
    v53 = a3;
    v34 = sub_23AC5EAE8();
    (*(v11 + 16))(v17, v34, v10);

    v35 = sub_23AC662C4();
    v36 = sub_23AC66474();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_23AC43B08(v53, a4, &v54);
      _os_log_impl(&dword_23AB8E000, v35, v36, "Invalid page type %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x23EE97EA0](v38, -1, -1);
      MEMORY[0x23EE97EA0](v37, -1, -1);
    }

    v30 = *(v11 + 8);
    v31 = v17;
    return v30(v31, v10);
  }

  v40 = v52;

  v41 = v53;
  v42._countAndFlagsBits = v53;
  v42._object = v40;
  VSClickTarget.init(rawValue:)(v42);
  v43 = v54;
  if (v54 == 10)
  {
    v44 = sub_23AC5EAE8();
    (*(v11 + 16))(v19, v44, v10);

    v45 = sub_23AC662C4();
    v46 = sub_23AC66474();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_23AC43B08(v41, v40, &v54);
      _os_log_impl(&dword_23AB8E000, v45, v46, "Invalid click target %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EE97EA0](v48, -1, -1);
      MEMORY[0x23EE97EA0](v47, -1, -1);
    }

    return (*(v11 + 8))(v19, v10);
  }

  else
  {
    v49 = sub_23AC66444();
    (*(*(v49 - 8) + 56))(v22, 1, 1, v49);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v43;
    *(v50 + 33) = v24;
    *(v50 + 34) = v33;
    sub_23AC50B20(0, 0, v22, &unk_23AC71010, v50);
  }
}

uint64_t sub_23AC54654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a3;
  v37 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E20;
  v42[0] = 3;
  sub_23AC4499C();
  sub_23AC66504();
  v16 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v42[0] = 2;
  sub_23AC56538();

  sub_23AC66504();
  *(inited + 168) = v16;
  *(inited + 144) = a5;
  *(inited + 152) = a6;

  v17 = sub_23AC53AC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8788);
  swift_arrayDestroy();
  if (a7)
  {
    LOBYTE(v40) = 0;
    sub_23AC66504();
    v18 = [a7 domain];
    v19 = sub_23AC66364();
    v21 = v20;

    v41 = v16;
    *&v40 = v19;
    *(&v40 + 1) = v21;
    sub_23AC445B0(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v17;
    sub_23AC443AC(v39, v42, isUniquelyReferenced_nonNull_native);
    sub_23AC44614(v42);
    v23 = v38;
    LOBYTE(v40) = 1;
    sub_23AC66504();
    v24 = [a7 code];
    v41 = MEMORY[0x277D83B88];
    *&v40 = v24;
    sub_23AC445B0(&v40, v39);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v23;
    sub_23AC443AC(v39, v42, v25);
    sub_23AC44614(v42);
    v26 = v38;
    LOBYTE(v40) = 2;
    sub_23AC66504();
    v27 = [a7 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8778);
    v28 = sub_23AC663F4();

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8780);
    *&v40 = v28;
    sub_23AC445B0(&v40, v39);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v26;
    sub_23AC443AC(v39, v42, v29);
    sub_23AC44614(v42);
    v17 = v38;
  }

  v30 = v37;
  if (v37)
  {
    LOBYTE(v40) = 1;
    sub_23AC66504();
    v41 = MEMORY[0x277D837D0];
    *&v40 = v36;
    *(&v40 + 1) = v30;
    sub_23AC445B0(&v40, v39);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v17;
    sub_23AC443AC(v39, v42, v31);
    sub_23AC44614(v42);
    v17 = v38;
  }

  v32 = sub_23AC66444();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v17;
  sub_23AC50B20(0, 0, v14, &unk_23AC71000, v33);
}

uint64_t sub_23AC54A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E10;
  v12[7] = 3;
  sub_23AC4499C();
  sub_23AC66504();
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v8 = sub_23AC53AC4(inited);
  swift_setDeallocating();
  sub_23AC4CC70(inited + 32, &qword_27DFC8788);
  v9 = sub_23AC66444();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_23AC50B20(0, 0, v6, &unk_23AC70FF0, v10);
}

uint64_t sub_23AC54C38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_23AC53AC4(MEMORY[0x277D84F90]);
  if (a1)
  {
    LOBYTE(v23) = 0;
    sub_23AC4499C();
    sub_23AC66504();
    v6 = [a1 domain];
    v7 = sub_23AC66364();
    v9 = v8;

    v24 = MEMORY[0x277D837D0];
    *&v23 = v7;
    *(&v23 + 1) = v9;
    sub_23AC445B0(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    sub_23AC443AC(v22, v25, isUniquelyReferenced_nonNull_native);
    sub_23AC44614(v25);
    v11 = v21;
    LOBYTE(v23) = 1;
    sub_23AC66504();
    v12 = [a1 code];
    v24 = MEMORY[0x277D83B88];
    *&v23 = v12;
    sub_23AC445B0(&v23, v22);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    sub_23AC443AC(v22, v25, v13);
    sub_23AC44614(v25);
    v14 = v21;
    LOBYTE(v23) = 2;
    sub_23AC66504();
    v15 = [a1 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8778);
    v16 = sub_23AC663F4();

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8780);
    *&v23 = v16;
    sub_23AC445B0(&v23, v22);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    sub_23AC443AC(v22, v25, v17);
    sub_23AC44614(v25);
    v5 = v21;
  }

  v18 = sub_23AC66444();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v5;
  sub_23AC50B20(0, 0, v4, &unk_23AC70FE0, v19);
}

uint64_t sub_23AC54F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v12 - 8);
  v34 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E20;
  v39[0] = 3;
  sub_23AC4499C();
  sub_23AC66504();
  v15 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v39[0] = 1;
  sub_23AC56538();

  sub_23AC66504();
  *(inited + 168) = v15;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v16 = sub_23AC53AC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8788);
  swift_arrayDestroy();
  if (a5)
  {
    LOBYTE(v37) = 2;
    sub_23AC66504();
    v38 = v15;
    *&v37 = 7368801;
    *(&v37 + 1) = 0xE300000000000000;
    sub_23AC445B0(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v16;
    sub_23AC443AC(v36, v39, isUniquelyReferenced_nonNull_native);
    sub_23AC44614(v39);
    v16 = v35;
  }

  if (a6)
  {
    LOBYTE(v37) = 0;
    sub_23AC66504();
    v18 = [a6 domain];
    v19 = sub_23AC66364();
    v21 = v20;

    v38 = v15;
    *&v37 = v19;
    *(&v37 + 1) = v21;
    sub_23AC445B0(&v37, v36);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v16;
    sub_23AC443AC(v36, v39, v22);
    sub_23AC44614(v39);
    v23 = v35;
    LOBYTE(v37) = 1;
    sub_23AC66504();
    v24 = [a6 code];
    v38 = MEMORY[0x277D83B88];
    *&v37 = v24;
    sub_23AC445B0(&v37, v36);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v23;
    sub_23AC443AC(v36, v39, v25);
    sub_23AC44614(v39);
    v26 = v35;
    LOBYTE(v37) = 2;
    sub_23AC66504();
    v27 = [a6 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8778);
    v28 = sub_23AC663F4();

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8780);
    *&v37 = v28;
    sub_23AC445B0(&v37, v36);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v26;
    sub_23AC443AC(v36, v39, v29);
    sub_23AC44614(v39);
    v16 = v35;
  }

  v30 = sub_23AC66444();
  v31 = v34;
  (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v16;
  sub_23AC50B20(0, 0, v31, &unk_23AC70FD0, v32);
}

uint64_t sub_23AC55364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E10;
  v12[7] = 1;
  sub_23AC56538();
  sub_23AC66504();
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v8 = sub_23AC53AC4(inited);
  swift_setDeallocating();
  sub_23AC4CC70(inited + 32, &qword_27DFC8788);
  v9 = sub_23AC66444();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_23AC50B20(0, 0, v6, &unk_23AC70FC0, v10);
}

uint64_t sub_23AC55500()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23AC56A94;

  return sub_23AC523E0(v4, v5, v6, v2, v3);
}

uint64_t sub_23AC55598(void *a1, uint64_t a2)
{
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v77 - v4;
  v84 = sub_23AC662E4();
  v5 = *(v84 - 8);
  MEMORY[0x28223BE20](v84 - 8);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AC53AC4(MEMORY[0x277D84F90]);
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v82 = (v5 + 16);
  v81 = (v5 + 8);

  v13 = 0;
  *&v14 = 136315138;
  v79 = v14;
  v80 = a2;
  while (1)
  {
    if (!v11)
    {
      if (v12 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = v12;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v16 >= v12)
        {
          v11 = 0;
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v16);
        ++v13;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_23AC66604();
      __break(1u);
      return result;
    }

    v16 = v13;
LABEL_16:
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(a2 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_23AC44554(*(a2 + 56) + 32 * v20, v88);
    *&v89 = v23;
    *(&v89 + 1) = v22;
    sub_23AC445B0(v88, &v90);

    v18 = v16;
LABEL_17:
    v92 = v89;
    v93[0] = v90;
    v93[1] = v91;
    v24 = *(&v89 + 1);
    if (!*(&v89 + 1))
    {
      break;
    }

    v85 = v18;
    v25 = v92;
    sub_23AC445B0(v93, v88);

    v26._countAndFlagsBits = v25;
    v26._object = v24;
    VSAnalyticsCommonKeys.init(rawValue:)(v26);
    v27 = v89;
    if (v89 == 6)
    {

      v28._countAndFlagsBits = v25;
      v28._object = v24;
      VSFederatedPlaybackKeys.init(rawValue:)(v28);
      v29 = v89;
      if (v89 == 8)
      {
        v30 = sub_23AC5E9D0();
        (*v82)(v83, v30, v84);

        v31 = sub_23AC662C4();
        v32 = sub_23AC66474();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v89 = v34;
          *v33 = v79;
          v35 = sub_23AC43B08(v25, v24, &v89);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_23AB8E000, v31, v32, "Unrecognized key: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          v36 = v34;
          a2 = v80;
          MEMORY[0x23EE97EA0](v36, -1, -1);
          MEMORY[0x23EE97EA0](v33, -1, -1);
        }

        else
        {
        }

        (*v81)(v83, v84);
        goto LABEL_5;
      }

      LOBYTE(v87[0]) = v29;
      sub_23AC445C0();
      sub_23AC66504();
      sub_23AC44554(v88, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v7;
      v38 = sub_23AC440B0(&v89);
      v48 = v7[2];
      v49 = (v47 & 1) == 0;
      v42 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v42)
      {
        goto LABEL_49;
      }

      v51 = v47;
      if (v7[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = v38;
          sub_23AC447F8();
          v38 = v59;
        }
      }

      else
      {
        sub_23AC440F4(v50, isUniquelyReferenced_nonNull_native);
        v38 = sub_23AC440B0(&v89);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_52;
        }
      }

      v7 = v86;
      if (v51)
      {
LABEL_4:
        v15 = (v7[7] + 32 * v38);
        __swift_destroy_boxed_opaque_existential_0(v15);
        sub_23AC445B0(v87, v15);
        sub_23AC44614(&v89);
LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v88);
        goto LABEL_6;
      }

      v86[(v38 >> 6) + 8] |= 1 << v38;
      v56 = v38;
      sub_23AC444F8(&v89, v7[6] + 40 * v38);
      sub_23AC445B0(v87, (v7[7] + 32 * v56));
      sub_23AC44614(&v89);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v57 = v7[2];
      v42 = __OFADD__(v57, 1);
      v55 = v57 + 1;
      if (v42)
      {
        goto LABEL_51;
      }
    }

    else
    {

      LOBYTE(v87[0]) = v27;
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v88, v87);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v7;
      v38 = sub_23AC440B0(&v89);
      v40 = v7[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_48;
      }

      v44 = v39;
      if (v7[3] >= v43)
      {
        if ((v37 & 1) == 0)
        {
          v58 = v38;
          sub_23AC447F8();
          v38 = v58;
        }
      }

      else
      {
        sub_23AC440F4(v43, v37);
        v38 = sub_23AC440B0(&v89);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_52;
        }
      }

      v7 = v86;
      if (v44)
      {
        goto LABEL_4;
      }

      v86[(v38 >> 6) + 8] |= 1 << v38;
      v53 = v38;
      sub_23AC444F8(&v89, v7[6] + 40 * v38);
      sub_23AC445B0(v87, (v7[7] + 32 * v53));
      sub_23AC44614(&v89);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v54 = v7[2];
      v42 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v42)
      {
        goto LABEL_50;
      }
    }

    v7[2] = v55;
LABEL_6:
    v13 = v85;
  }

  v60 = v77;
  if (v77)
  {
    LOBYTE(v89) = 0;
    sub_23AC4499C();
    sub_23AC66504();
    v61 = [v60 domain];
    v62 = sub_23AC66364();
    v64 = v63;

    *(&v90 + 1) = MEMORY[0x277D837D0];
    *&v89 = v62;
    *(&v89 + 1) = v64;
    sub_23AC445B0(&v89, v88);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v7;
    sub_23AC443AC(v88, &v92, v65);
    sub_23AC44614(&v92);
    v66 = *&v87[0];
    LOBYTE(v89) = 1;
    sub_23AC66504();
    v67 = [v60 code];
    *(&v90 + 1) = MEMORY[0x277D83B88];
    *&v89 = v67;
    sub_23AC445B0(&v89, v88);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v66;
    sub_23AC443AC(v88, &v92, v68);
    sub_23AC44614(&v92);
    v69 = *&v87[0];
    LOBYTE(v89) = 2;
    sub_23AC66504();
    v70 = [v60 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8778);
    v71 = sub_23AC663F4();

    *(&v90 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8780);
    *&v89 = v71;
    sub_23AC445B0(&v89, v88);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v69;
    sub_23AC443AC(v88, &v92, v72);
    sub_23AC44614(&v92);
    v7 = *&v87[0];
  }

  v73 = sub_23AC66444();
  v74 = v78;
  (*(*(v73 - 8) + 56))(v78, 1, 1, v73);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v7;
  sub_23AC50B20(0, 0, v74, &unk_23AC70F78, v75);
}

uint64_t sub_23AC55EC0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23AC56A94;

  return sub_23AC52BE8(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_23AC55F80()
{
  result = qword_27DFC8770;
  if (!qword_27DFC8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSAFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VSAFeatures(_WORD *result, int a2, int a3)
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

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AC56144()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23AC56200;

  return sub_23AC52BE8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_23AC56200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AC56334()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC527D0(v3, v4, v5, v2);
}

uint64_t sub_23AC563C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AC56A94;

  return sub_23AC5308C(a1, v4);
}

uint64_t sub_23AC56480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AC56200;

  return sub_23AC5308C(a1, v4);
}

unint64_t sub_23AC56538()
{
  result = qword_27DFC87A0;
  if (!qword_27DFC87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87A0);
  }

  return result;
}

uint64_t sub_23AC5658C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC51FA4(v3, v4, v5, v2);
}

uint64_t sub_23AC56620()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC51CB0(v3, v4, v5, v2);
}

uint64_t sub_23AC566B4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC51A14(v3, v4, v5, v2);
}

uint64_t sub_23AC56748()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC517AC(v3, v4, v5, v2);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AC5681C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AC56A94;

  return sub_23AC51490(v3, v4, v5, v2);
}

uint64_t sub_23AC568B0()
{
  v2 = v0[34];
  v3 = v0[33];
  v4 = v0[32];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AC56A94;

  return sub_23AC51174(v5, v6, v7, v4, v3, v2);
}

uint64_t sub_23AC5695C()
{
  v2 = *(v0 + 33);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23AC56A94;

  return sub_23AC50E74(v4, v5, v6, v3, v2);
}

uint64_t sub_23AC569F8()
{
  v2 = *(v0 + 33);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23AC56A94;

  return sub_23AC508D0(v4, v5, v6, v3, v2);
}

uint64_t sub_23AC56A98@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t VSUserAccountManager.AutoSignInAuthorization.hashValue.getter()
{
  v1 = *v0;
  sub_23AC66614();
  MEMORY[0x23EE96F10](v1);
  return sub_23AC66634();
}

unint64_t sub_23AC56B40()
{
  result = qword_27DFC87B8;
  if (!qword_27DFC87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87B8);
  }

  return result;
}

uint64_t VSSignInEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSSignInEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSSignInEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSSignInEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSSignInEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC56D98, 0, 0);
}

uint64_t sub_23AC56D98()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_23AC5B228();
  v0[75] = *v4;
  v0[76] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[77] = v5;
  v6 = *(v2 + 16);
  v0[78] = v6;
  v0[79] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSSignInEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[72];
  v12 = v0[71];

  v13 = *(v11 + 8);
  v0[80] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[81] = v14;
  *v14 = v0;
  v14[1] = sub_23AC56F30;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC56F30(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return MEMORY[0x2822009F8](sub_23AC57030, 0, 0);
}

void sub_23AC57030()
{
  v67 = v0;
  v1 = 0;
  v2 = *(v0 + 560);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = *(v0 + 560);
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 656);
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v1 + 1)
      {
        v12 = v1 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v11);
        ++v1;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v11 = v1;
LABEL_15:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_23AC444F8(*(v64 + 48) + 40 * v15, v0 + 160);
    sub_23AC44554(*(v64 + 56) + 32 * v15, v0 + 360);
    v16 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v13 = v11;
LABEL_16:
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v18;
    if (!*(v0 + 40))
    {
      break;
    }

    v19 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v19;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      v1 = v13;
      *(v0 + 667) = *(v0 + 664);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 520);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v21 = sub_23AC440B0(v0 + 320);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v10[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v21;
          sub_23AC447F8();
          v21 = v54;
          v10 = v66;
        }
      }

      else
      {
        sub_23AC440F4(v26, isUniquelyReferenced_nonNull_native);
        v10 = v66;
        v21 = sub_23AC440B0(v0 + 320);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v27)
      {
        v46 = (v10[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0(v46);
        sub_23AC445B0((v0 + 520), v46);
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
      }

      else
      {
        v10[(v21 >> 6) + 8] |= 1 << v21;
        v47 = v21;
        sub_23AC444F8(v0 + 320, v10[6] + 40 * v21);
        sub_23AC445B0((v0 + 520), (v10[7] + 32 * v47));
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v48 = v10[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        v10[2] = v49;
      }
    }

    else
    {
      v65 = v13;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 666) = *(v0 + 665);
        sub_23AC56538();
        sub_23AC66504();
        sub_23AC44554(v0 + 392, v0 + 488);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        v30 = sub_23AC440B0(v0 + 280);
        v32 = v10[2];
        v33 = (v31 & 1) == 0;
        v25 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v25)
        {
          goto LABEL_50;
        }

        v35 = v31;
        if (v10[3] >= v34)
        {
          if ((v29 & 1) == 0)
          {
            v55 = v30;
            sub_23AC447F8();
            v30 = v55;
            v10 = v66;
          }
        }

        else
        {
          sub_23AC440F4(v34, v29);
          v10 = v66;
          v30 = sub_23AC440B0(v0 + 280);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_45:

            sub_23AC66604();
            return;
          }
        }

        if (v35)
        {
          v50 = (v10[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_23AC445B0((v0 + 488), v50);
          sub_23AC44614(v0 + 280);
          goto LABEL_5;
        }

        v10[(v30 >> 6) + 8] |= 1 << v30;
        v51 = v30;
        sub_23AC444F8(v0 + 280, v10[6] + 40 * v30);
        sub_23AC445B0((v0 + 488), (v10[7] + 32 * v51));
        sub_23AC44614(v0 + 280);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v52 = v10[2];
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v25)
        {
          goto LABEL_52;
        }

        v10[2] = v53;
        v1 = v65;
      }

      else
      {
        (*(v0 + 624))(*(v0 + 584), *(v0 + 616), *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v37 = sub_23AC662C4();
        v61 = sub_23AC66464();
        v38 = os_log_type_enabled(v37, v61);
        v39 = *(v0 + 640);
        v62 = *(v0 + 568);
        v63 = *(v0 + 584);
        if (v38)
        {
          v60 = *(v0 + 640);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v66 = v41;
          *v40 = 136315138;
          v42 = sub_23AC664C4();
          v44 = v43;
          sub_23AC44614(v0 + 240);
          v45 = sub_23AC43B08(v42, v44, &v66);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_23AB8E000, v37, v61, "VSSignInEvent received invalid metadata key: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23EE97EA0](v41, -1, -1);
          MEMORY[0x23EE97EA0](v40, -1, -1);

          v60(v63, v62);
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v39(v63, v62);
        }

LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v1 = v65;
      }
    }
  }

  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 552);

  *v58 = 0x6E695F6E676973;
  v58[1] = 0xE700000000000000;
  v58[2] = v10;
  v58[3] = v57;
  v58[4] = v56;

  v59 = *(v0 + 8);

  v59();
}

uint64_t VSNPIBrokenEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSNPIBrokenEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSNPIBrokenEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSNPIBrokenEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSNPIBrokenEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC57974, 0, 0);
}

uint64_t sub_23AC57974()
{
  v1 = sub_23AC5B228();
  v0[75] = *v1;
  v0[76] = v1[1];

  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_23AC57A34;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC57A34(uint64_t a1)
{
  *(*v1 + 624) = a1;

  return MEMORY[0x2822009F8](sub_23AC57B34, 0, 0);
}

unint64_t sub_23AC57B34()
{
  v77 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v73 = sub_23AC5E9D0();
  v72 = *(v2 + 16);
  v72(v1);
  v3 = sub_23AC662C4();
  v4 = sub_23AC66454();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23AB8E000, v3, v4, "VSNPIBrokenEvent", v5, 2u);
    MEMORY[0x23EE97EA0](v5, -1, -1);
  }

  v6 = *(v0 + 592);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);

  v10 = v6;
  v11 = v9;
  v71 = *(v7 + 8);
  result = v71(v10, v8);
  v13 = 0;
  v14 = v9 + 64;
  v15 = -1;
  v16 = -1 << *(v9 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v9 + 64);
  v18 = (63 - v16) >> 6;
  v19 = *(v0 + 624);
  v68 = v11;
  while (1)
  {
    if (!v17)
    {
      if (v18 <= v13 + 1)
      {
        v22 = v13 + 1;
      }

      else
      {
        v22 = v18;
      }

      v23 = v22 - 1;
      while (1)
      {
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          v17 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_20;
        }

        v17 = *(v14 + 8 * v21);
        ++v13;
        if (v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    v21 = v13;
LABEL_19:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    sub_23AC444F8(*(v11 + 48) + 40 * v25, v0 + 160);
    sub_23AC44554(*(v11 + 56) + 32 * v25, v0 + 360);
    v26 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v26;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v23 = v21;
LABEL_20:
    *(v0 + 80) = *(v0 + 152);
    v27 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v27;
    v28 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v28;
    if (!*(v0 + 40))
    {
      break;
    }

    v75 = v23;
    v29 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v29;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_23AC664F4();
      if ((swift_dynamicCast() & 1) == 0)
      {
        (v72)(*(v0 + 584), v73, *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v45 = sub_23AC662C4();
        v46 = sub_23AC66464();
        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 584);
        v74 = *(v0 + 568);
        if (v47)
        {
          v49 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = v48;
          v76 = v69;
          *v49 = 136315138;
          v50 = sub_23AC664C4();
          v52 = v51;
          sub_23AC44614(v0 + 240);
          v53 = sub_23AC43B08(v50, v52, &v76);
          v11 = v68;

          *(v49 + 4) = v53;
          _os_log_impl(&dword_23AB8E000, v45, v46, "VSNPIBrokenEvent received invalid metadata key: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x23EE97EA0](v69, -1, -1);
          MEMORY[0x23EE97EA0](v49, -1, -1);

          v20 = v70;
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v20 = v48;
        }

        v71(v20, v74);
        goto LABEL_8;
      }

      *(v0 + 634) = *(v0 + 633);
      sub_23AC445C0();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 488);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v19;
      result = sub_23AC440B0(v0 + 280);
      v40 = v19[2];
      v41 = (v39 & 1) == 0;
      v34 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v34)
      {
        goto LABEL_56;
      }

      v43 = v39;
      if (v19[3] < v42)
      {
        sub_23AC440F4(v42, isUniquelyReferenced_nonNull_native);
        v19 = v76;
        result = sub_23AC440B0(v0 + 280);
        if ((v43 & 1) != (v44 & 1))
        {
LABEL_51:

          return sub_23AC66604();
        }

        goto LABEL_38;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_38:
        if (v43)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v61 = result;
        sub_23AC447F8();
        result = v61;
        v19 = v76;
        if (v43)
        {
LABEL_39:
          v56 = (v19[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_0(v56);
          sub_23AC445B0((v0 + 488), v56);
          v55 = v0 + 280;
LABEL_40:
          sub_23AC44614(v55);
LABEL_8:
          __swift_destroy_boxed_opaque_existential_0(v0 + 392);
          result = sub_23AC44614(v0 + 200);
          goto LABEL_9;
        }
      }

      v19[(result >> 6) + 8] |= 1 << result;
      v62 = result;
      sub_23AC444F8(v0 + 280, v19[6] + 40 * result);
      sub_23AC445B0((v0 + 488), (v19[7] + 32 * v62));
      sub_23AC44614(v0 + 280);
      __swift_destroy_boxed_opaque_existential_0(v0 + 392);
      result = sub_23AC44614(v0 + 200);
      v63 = v19[2];
      v34 = __OFADD__(v63, 1);
      v60 = v63 + 1;
      if (v34)
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    *(v0 + 635) = *(v0 + 632);
    sub_23AC4499C();
    sub_23AC66504();
    sub_23AC44554(v0 + 392, v0 + 520);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v19;
    result = sub_23AC440B0(v0 + 320);
    v32 = v19[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_55;
    }

    v36 = v31;
    if (v19[3] >= v35)
    {
      if ((v30 & 1) == 0)
      {
        v57 = result;
        sub_23AC447F8();
        result = v57;
        v19 = v76;
        if (v36)
        {
LABEL_35:
          v54 = (v19[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_0(v54);
          sub_23AC445B0((v0 + 520), v54);
          v55 = v0 + 320;
          goto LABEL_40;
        }

        goto LABEL_42;
      }
    }

    else
    {
      sub_23AC440F4(v35, v30);
      v19 = v76;
      result = sub_23AC440B0(v0 + 320);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_51;
      }
    }

    if (v36)
    {
      goto LABEL_35;
    }

LABEL_42:
    v19[(result >> 6) + 8] |= 1 << result;
    v58 = result;
    sub_23AC444F8(v0 + 320, v19[6] + 40 * result);
    sub_23AC445B0((v0 + 520), (v19[7] + 32 * v58));
    sub_23AC44614(v0 + 320);
    __swift_destroy_boxed_opaque_existential_0(v0 + 392);
    result = sub_23AC44614(v0 + 200);
    v59 = v19[2];
    v34 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v34)
    {
      goto LABEL_57;
    }

LABEL_47:
    v19[2] = v60;
LABEL_9:
    v13 = v75;
  }

  v64 = *(v0 + 608);
  v65 = *(v0 + 600);
  v66 = *(v0 + 552);

  *v66 = 0xD000000000000012;
  v66[1] = 0x800000023AC8AC50;
  v66[2] = v19;
  v66[3] = v65;
  v66[4] = v64;

  v67 = *(v0 + 8);

  return v67();
}

uint64_t VSNPIBrokenEvent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_23AC662E4();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC583B8, 0, 0);
}

uint64_t sub_23AC583B8()
{
  v36 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E10;
  *(v0 + 368) = 1;
  sub_23AC445C0();
  sub_23AC66504();
  v4 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v5 = sub_23AC53AC4(inited);
  swift_setDeallocating();
  sub_23AC58A58(inited + 32);
  v6 = objc_allocWithZone(VSBundleRecord);
  v7 = sub_23AC66334();
  v8 = [v6 initWithBundleID_];

  v9 = [v8 bundleVersion];
  if (v9)
  {

    v10 = sub_23AC66364();
    v12 = v11;

    *(v0 + 369) = 2;
    sub_23AC66504();
    *(v0 + 264) = v4;
    *(v0 + 240) = v10;
    *(v0 + 248) = v12;
    sub_23AC445B0((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v5;
    sub_23AC443AC((v0 + 272), v0 + 160, isUniquelyReferenced_nonNull_native);
    sub_23AC44614(v0 + 160);
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = sub_23AC58768;
    v15 = v0 + 200;
    v16 = v5;
  }

  else
  {
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v19 = *(v0 + 328);
    v20 = sub_23AC5EAE8();
    (*(v18 + 16))(v17, v20, v19);

    v21 = sub_23AC662C4();
    v22 = sub_23AC66474();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 320);
    v26 = *(v0 + 328);
    if (v23)
    {
      v34 = *(v0 + 344);
      v28 = *(v0 + 312);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v31 = sub_23AC43B08(v28, v27, &v35);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_23AB8E000, v21, v22, "Federated punchout event for bundle %s with no version.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23EE97EA0](v30, -1, -1);
      MEMORY[0x23EE97EA0](v29, -1, -1);

      (*(v24 + 8))(v34, v26);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
    }

    v32 = swift_task_alloc();
    *(v0 + 360) = v32;
    *v32 = v0;
    v32[1] = sub_23AC588E0;
    v15 = v0 + 120;
    v16 = v5;
  }

  return VSNPIBrokenEvent.init(_:)(v15, v16);
}

uint64_t sub_23AC58768()
{

  return MEMORY[0x2822009F8](sub_23AC58864, 0, 0);
}

uint64_t sub_23AC58864()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 304);
  *v4 = *(v0 + 200);
  *(v4 + 8) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23AC588E0()
{

  return MEMORY[0x2822009F8](sub_23AC589DC, 0, 0);
}

uint64_t sub_23AC589DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 304);
  *v4 = *(v0 + 120);
  *(v4 + 8) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23AC58A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AC58AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

VideoSubscriberAccount::VSAnalyticsCommonKeys_optional __swiftcall VSAnalyticsCommonKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VSAnalyticsCommonKeys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79745F726F727265;
  v3 = 0x72656469766F7270;
  v4 = 0x6E65674172657375;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F635F726F727265;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

unint64_t sub_23AC58C88()
{
  result = qword_27DFC87C0;
  if (!qword_27DFC87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87C0);
  }

  return result;
}

uint64_t sub_23AC58CDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x79745F726F727265;
  v4 = 0xEA00000000006570;
  v5 = a1;
  v6 = 0xEB0000000064695FLL;
  v7 = 0x6E65674172657375;
  v8 = 0xE900000000000074;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x800000023AC8ACB0;
  }

  if (a1 == 3)
  {
    v7 = 0x72656469766F7270;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x6F635F726F727265;
  if (a1 != 1)
  {
    v9 = 0xD000000000000011;
    v2 = 0x800000023AC8AC80;
  }

  if (!a1)
  {
    v9 = 0x79745F726F727265;
    v2 = 0xEA00000000006570;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v5 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = 0xEB0000000064695FLL;
      if (v10 != 0x72656469766F7270)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE900000000000074;
      if (v10 != 0x6E65674172657375)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = 0x800000023AC8ACB0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = 0xEA00000000006564;
        if (v10 != 0x6F635F726F727265)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v4 = 0x800000023AC8AC80;
      v3 = 0xD000000000000011;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_23AC665E4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v4)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_23AC58ED0()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC58FEC()
{
  sub_23AC66384();
}

uint64_t sub_23AC590F8()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

unint64_t sub_23AC5921C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006564;
  v3 = *v1;
  v4 = 0xEA00000000006570;
  v5 = 0x79745F726F727265;
  v6 = 0xEB0000000064695FLL;
  v7 = 0x72656469766F7270;
  v8 = 0xE900000000000074;
  v9 = 0x6E65674172657375;
  result = 0xD000000000000010;
  if (v3 != 4)
  {
    v9 = 0xD000000000000010;
    v8 = 0x800000023AC8ACB0;
  }

  if (v3 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6F635F726F727265;
  if (v3 != 1)
  {
    v11 = 0xD000000000000011;
    v2 = 0x800000023AC8AC80;
  }

  if (*v1)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

unint64_t sub_23AC592F4()
{
  result = qword_27DFC87C8;
  if (!qword_27DFC87C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFC87D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSAnalyticsCommonKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSAnalyticsCommonKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VSSTBOptOutEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSSTBOptOutEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSSTBOptOutEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSSTBOptOutEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSSTBOptOutEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[100] = a2;
  v2[99] = a1;
  v3 = sub_23AC662E4();
  v2[101] = v3;
  v2[102] = *(v3 - 8);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC596C0, 0, 0);
}

uint64_t sub_23AC596C0()
{
  v1 = v0[105];
  v2 = v0[102];
  v3 = v0[101];
  v4 = sub_23AC5B228();
  v0[106] = *v4;
  v0[107] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[108] = v5;
  v6 = *(v2 + 16);
  v0[109] = v6;
  v0[110] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSSTBOptOutEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[105];
  v11 = v0[102];
  v12 = v0[101];

  (*(v11 + 8))(v10, v12);
  v13 = swift_task_alloc();
  v0[111] = v13;
  *v13 = v0;
  v13[1] = sub_23AC59854;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC59854(uint64_t a1)
{
  *(*v1 + 896) = a1;

  return MEMORY[0x2822009F8](sub_23AC59954, 0, 0);
}

uint64_t sub_23AC59954()
{
  v1 = [objc_opt_self() currentDevice];
  v0[113] = v1;
  v0[2] = v0;
  v0[7] = v0 + 98;
  v0[3] = sub_23AC59A94;
  v2 = swift_continuation_init();
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87D8);
  v0[28] = MEMORY[0x277D85DD0];
  v0[29] = 1107296256;
  v0[30] = sub_23AC5A548;
  v0[31] = &block_descriptor_0;
  v0[32] = v2;
  [v1 fetchSetTopBoxProfileWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23AC59A94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 912) = v1;
  if (v1)
  {

    v2 = sub_23AC59BAC;
  }

  else
  {
    v2 = sub_23AC59D48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23AC59BAC()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[109];
  v4 = v0[104];
  v5 = v0[101];
  swift_willThrow();

  v6 = sub_23AC5EAE8();
  v3(v4, v6, v5);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66474();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[104];
  v11 = v0[102];
  v12 = v0[101];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "Sending stb_opt_out event with no STB profile.", v13, 2u);
    MEMORY[0x23EE97EA0](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[112];
  v15 = v0[107];
  v16 = v0[106];
  v17 = v0[99];
  *v17 = 0x5F74706F5F627473;
  v17[1] = 0xEB0000000074756FLL;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  v18 = v0[1];

  return v18();
}

unint64_t sub_23AC59D48()
{
  v76 = v0;
  v1 = v0 + 488;
  v2 = *(v0 + 896);
  v3 = *(v0 + 800);
  v72 = v3;
  v73 = *(v0 + 816);
  v4 = *(v0 + 784);

  v67 = v4;
  v5 = [v4 providerID];
  v6 = sub_23AC66364();
  v8 = v7;

  *(v0 + 923) = 1;
  sub_23AC56538();
  sub_23AC66504();
  *(v0 + 744) = MEMORY[0x277D837D0];
  *(v0 + 720) = v6;
  *(v0 + 728) = v8;
  sub_23AC445B0((v0 + 720), (v0 + 688));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v2;
  sub_23AC443AC((v0 + 688), v0 + 328, isUniquelyReferenced_nonNull_native);
  result = sub_23AC44614(v0 + 328);
  v11 = 0;
  v12 = v2;
  v13 = v3 + 64;
  v14 = -1;
  v15 = -1 << *(v3 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v3 + 64);
  v17 = (63 - v15) >> 6;
  v71 = (v73 + 8);
  while (1)
  {
    if (!v16)
    {
      if (v17 <= v11 + 1)
      {
        v20 = v11 + 1;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 - 1;
      while (1)
      {
        v19 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v19 >= v17)
        {
          v16 = 0;
          *(v0 + 216) = 0;
          *(v0 + 200) = 0u;
          *(v0 + 184) = 0u;
          *(v0 + 168) = 0u;
          *(v0 + 152) = 0u;
          goto LABEL_15;
        }

        v16 = *(v13 + 8 * v19);
        ++v11;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v19 = v11;
LABEL_14:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    sub_23AC444F8(*(v72 + 48) + 40 * v23, v1);
    sub_23AC44554(*(v72 + 56) + 32 * v23, v0 + 560);
    v24 = *(v1 + 16);
    *(v0 + 152) = *v1;
    *(v0 + 168) = v24;
    *(v0 + 184) = *(v1 + 32);
    sub_23AC445B0((v0 + 560), (v0 + 192));
    v21 = v19;
LABEL_15:
    *(v0 + 144) = *(v0 + 216);
    v25 = *(v0 + 200);
    *(v0 + 112) = *(v0 + 184);
    *(v0 + 128) = v25;
    v26 = *(v0 + 168);
    *(v0 + 80) = *(v0 + 152);
    *(v0 + 96) = v26;
    if (!*(v0 + 104))
    {
      break;
    }

    v27 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v27;
    *(v0 + 320) = *(v0 + 112);
    sub_23AC445B0((v0 + 120), (v0 + 592));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      *(v0 + 924) = *(v0 + 920);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 592, v0 + 528);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v12;
      result = sub_23AC440B0(v0 + 368);
      v30 = v12[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_49;
      }

      v34 = v29;
      if (v12[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v61 = result;
          sub_23AC447F8();
          result = v61;
          v12 = v75;
        }
      }

      else
      {
        sub_23AC440F4(v33, v28);
        v12 = v75;
        result = sub_23AC440B0(v0 + 368);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v34)
      {
        v18 = (v12[7] + 32 * result);
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_23AC445B0((v0 + 528), v18);
        sub_23AC44614(v0 + 368);
        __swift_destroy_boxed_opaque_existential_0(v0 + 592);
        result = sub_23AC44614(v0 + 288);
        v11 = v21;
      }

      else
      {
        v12[(result >> 6) + 8] |= 1 << result;
        v54 = result;
        sub_23AC444F8(v0 + 368, v12[6] + 40 * result);
        sub_23AC445B0((v0 + 528), (v12[7] + 32 * v54));
        sub_23AC44614(v0 + 368);
        __swift_destroy_boxed_opaque_existential_0(v0 + 592);
        result = sub_23AC44614(v0 + 288);
        v55 = v12[2];
        v32 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v32)
        {
          goto LABEL_51;
        }

        v12[2] = v56;
        v11 = v21;
      }
    }

    else
    {
      v74 = v21;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 922) = *(v0 + 921);
        sub_23AC66504();
        sub_23AC44554(v0 + 592, v0 + 752);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v12;
        result = sub_23AC440B0(v0 + 408);
        v38 = v12[2];
        v39 = (v37 & 1) == 0;
        v32 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v32)
        {
          goto LABEL_50;
        }

        v41 = v37;
        if (v12[3] >= v40)
        {
          if ((v36 & 1) == 0)
          {
            v62 = result;
            sub_23AC447F8();
            result = v62;
            v12 = v75;
          }
        }

        else
        {
          sub_23AC440F4(v40, v36);
          v12 = v75;
          result = sub_23AC440B0(v0 + 408);
          if ((v41 & 1) != (v42 & 1))
          {
LABEL_45:

            return sub_23AC66604();
          }
        }

        if (v41)
        {
          v57 = (v12[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_0(v57);
          sub_23AC445B0((v0 + 752), v57);
          sub_23AC44614(v0 + 408);
          __swift_destroy_boxed_opaque_existential_0(v0 + 592);
          result = sub_23AC44614(v0 + 288);
          v11 = v74;
        }

        else
        {
          v12[(result >> 6) + 8] |= 1 << result;
          v58 = result;
          sub_23AC444F8(v0 + 408, v12[6] + 40 * result);
          sub_23AC445B0((v0 + 752), (v12[7] + 32 * v58));
          sub_23AC44614(v0 + 408);
          __swift_destroy_boxed_opaque_existential_0(v0 + 592);
          result = sub_23AC44614(v0 + 288);
          v59 = v12[2];
          v32 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v32)
          {
            goto LABEL_52;
          }

          v12[2] = v60;
          v11 = v74;
        }
      }

      else
      {
        (*(v0 + 872))(*(v0 + 824), *(v0 + 864), *(v0 + 808));
        sub_23AC444F8(v0 + 288, v0 + 448);
        v43 = sub_23AC662C4();
        v44 = sub_23AC66464();
        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 824);
        v47 = *(v0 + 808);
        if (v45)
        {
          v48 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v75 = v68;
          *v48 = 136315138;
          v70 = v46;
          v49 = sub_23AC664C4();
          v69 = v47;
          v51 = v50;
          sub_23AC44614(v0 + 448);
          v52 = sub_23AC43B08(v49, v51, &v75);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_23AB8E000, v43, v44, "VSSTBOptOutEvent received invalid metadata key: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x23EE97EA0](v68, -1, -1);
          v53 = v48;
          v1 = v0 + 488;
          MEMORY[0x23EE97EA0](v53, -1, -1);

          (*v71)(v70, v69);
        }

        else
        {

          sub_23AC44614(v0 + 448);
          (*v71)(v46, v47);
        }

        __swift_destroy_boxed_opaque_existential_0(v0 + 592);
        result = sub_23AC44614(v0 + 288);
        v11 = v74;
      }
    }
  }

  v63 = *(v0 + 856);
  v64 = *(v0 + 848);
  v65 = *(v0 + 792);
  *v65 = 0x5F74706F5F627473;
  v65[1] = 0xEB0000000074756FLL;
  v65[2] = v12;
  v65[3] = v64;
  v65[4] = v63;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_23AC5A548(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8778);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t VSSignOutEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSSignOutEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSSignOutEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSSignOutEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSSignOutEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC5A840, 0, 0);
}

uint64_t sub_23AC5A840()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_23AC5B228();
  v0[75] = *v4;
  v0[76] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[77] = v5;
  v6 = *(v2 + 16);
  v0[78] = v6;
  v0[79] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSSignOutEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[72];
  v12 = v0[71];

  v13 = *(v11 + 8);
  v0[80] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[81] = v14;
  *v14 = v0;
  v14[1] = sub_23AC5A9D8;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC5A9D8(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return MEMORY[0x2822009F8](sub_23AC5AAD8, 0, 0);
}

void sub_23AC5AAD8()
{
  v67 = v0;
  v1 = 0;
  v2 = *(v0 + 560);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = *(v0 + 560);
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 656);
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v1 + 1)
      {
        v12 = v1 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v11);
        ++v1;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v11 = v1;
LABEL_15:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_23AC444F8(*(v64 + 48) + 40 * v15, v0 + 160);
    sub_23AC44554(*(v64 + 56) + 32 * v15, v0 + 360);
    v16 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v13 = v11;
LABEL_16:
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v18;
    if (!*(v0 + 40))
    {
      break;
    }

    v19 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v19;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      v1 = v13;
      *(v0 + 667) = *(v0 + 664);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 520);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v21 = sub_23AC440B0(v0 + 320);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v10[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v21;
          sub_23AC447F8();
          v21 = v54;
          v10 = v66;
        }
      }

      else
      {
        sub_23AC440F4(v26, isUniquelyReferenced_nonNull_native);
        v10 = v66;
        v21 = sub_23AC440B0(v0 + 320);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v27)
      {
        v46 = (v10[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0(v46);
        sub_23AC445B0((v0 + 520), v46);
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
      }

      else
      {
        v10[(v21 >> 6) + 8] |= 1 << v21;
        v47 = v21;
        sub_23AC444F8(v0 + 320, v10[6] + 40 * v21);
        sub_23AC445B0((v0 + 520), (v10[7] + 32 * v47));
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v48 = v10[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        v10[2] = v49;
      }
    }

    else
    {
      v65 = v13;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 666) = *(v0 + 665);
        sub_23AC56538();
        sub_23AC66504();
        sub_23AC44554(v0 + 392, v0 + 488);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        v30 = sub_23AC440B0(v0 + 280);
        v32 = v10[2];
        v33 = (v31 & 1) == 0;
        v25 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v25)
        {
          goto LABEL_50;
        }

        v35 = v31;
        if (v10[3] >= v34)
        {
          if ((v29 & 1) == 0)
          {
            v55 = v30;
            sub_23AC447F8();
            v30 = v55;
            v10 = v66;
          }
        }

        else
        {
          sub_23AC440F4(v34, v29);
          v10 = v66;
          v30 = sub_23AC440B0(v0 + 280);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_45:

            sub_23AC66604();
            return;
          }
        }

        if (v35)
        {
          v50 = (v10[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_23AC445B0((v0 + 488), v50);
          sub_23AC44614(v0 + 280);
          goto LABEL_5;
        }

        v10[(v30 >> 6) + 8] |= 1 << v30;
        v51 = v30;
        sub_23AC444F8(v0 + 280, v10[6] + 40 * v30);
        sub_23AC445B0((v0 + 488), (v10[7] + 32 * v51));
        sub_23AC44614(v0 + 280);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v52 = v10[2];
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v25)
        {
          goto LABEL_52;
        }

        v10[2] = v53;
        v1 = v65;
      }

      else
      {
        (*(v0 + 624))(*(v0 + 584), *(v0 + 616), *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v37 = sub_23AC662C4();
        v61 = sub_23AC66464();
        v38 = os_log_type_enabled(v37, v61);
        v39 = *(v0 + 640);
        v62 = *(v0 + 568);
        v63 = *(v0 + 584);
        if (v38)
        {
          v60 = *(v0 + 640);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v66 = v41;
          *v40 = 136315138;
          v42 = sub_23AC664C4();
          v44 = v43;
          sub_23AC44614(v0 + 240);
          v45 = sub_23AC43B08(v42, v44, &v66);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_23AB8E000, v37, v61, "VSSignOutEvent received invalid metadata key: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23EE97EA0](v41, -1, -1);
          MEMORY[0x23EE97EA0](v40, -1, -1);

          v60(v63, v62);
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v39(v63, v62);
        }

LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v1 = v65;
      }
    }
  }

  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 552);

  *v58 = 0x6F5F64656E676973;
  v58[1] = 0xEA00000000007475;
  v58[2] = v10;
  v58[3] = v57;
  v58[4] = v56;

  v59 = *(v0 + 8);

  v59();
}

uint64_t VSAccountUpdateEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSAccountUpdateEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSAccountUpdateEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSAccountUpdateEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSAccountUpdateEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC5B434, 0, 0);
}

uint64_t sub_23AC5B434()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_23AC5B228();
  v0[75] = *v4;
  v0[76] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[77] = v5;
  v6 = *(v2 + 16);
  v0[78] = v6;
  v0[79] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSAccountUpdateEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[72];
  v12 = v0[71];

  v13 = *(v11 + 8);
  v0[80] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[81] = v14;
  *v14 = v0;
  v14[1] = sub_23AC5B5CC;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC5B5CC(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return MEMORY[0x2822009F8](sub_23AC5B6CC, 0, 0);
}

void sub_23AC5B6CC()
{
  v67 = v0;
  v1 = 0;
  v2 = *(v0 + 560);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = *(v0 + 560);
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 656);
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v1 + 1)
      {
        v12 = v1 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v11);
        ++v1;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v11 = v1;
LABEL_15:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_23AC444F8(*(v64 + 48) + 40 * v15, v0 + 160);
    sub_23AC44554(*(v64 + 56) + 32 * v15, v0 + 360);
    v16 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v13 = v11;
LABEL_16:
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v18;
    if (!*(v0 + 40))
    {
      break;
    }

    v19 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v19;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      v1 = v13;
      *(v0 + 667) = *(v0 + 664);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 520);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v21 = sub_23AC440B0(v0 + 320);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v10[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v21;
          sub_23AC447F8();
          v21 = v54;
          v10 = v66;
        }
      }

      else
      {
        sub_23AC440F4(v26, isUniquelyReferenced_nonNull_native);
        v10 = v66;
        v21 = sub_23AC440B0(v0 + 320);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v27)
      {
        v46 = (v10[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0(v46);
        sub_23AC445B0((v0 + 520), v46);
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
      }

      else
      {
        v10[(v21 >> 6) + 8] |= 1 << v21;
        v47 = v21;
        sub_23AC444F8(v0 + 320, v10[6] + 40 * v21);
        sub_23AC445B0((v0 + 520), (v10[7] + 32 * v47));
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v48 = v10[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        v10[2] = v49;
      }
    }

    else
    {
      v65 = v13;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 666) = *(v0 + 665);
        sub_23AC5D148();
        sub_23AC66504();
        sub_23AC44554(v0 + 392, v0 + 488);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        v30 = sub_23AC440B0(v0 + 280);
        v32 = v10[2];
        v33 = (v31 & 1) == 0;
        v25 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v25)
        {
          goto LABEL_50;
        }

        v35 = v31;
        if (v10[3] >= v34)
        {
          if ((v29 & 1) == 0)
          {
            v55 = v30;
            sub_23AC447F8();
            v30 = v55;
            v10 = v66;
          }
        }

        else
        {
          sub_23AC440F4(v34, v29);
          v10 = v66;
          v30 = sub_23AC440B0(v0 + 280);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_45:

            sub_23AC66604();
            return;
          }
        }

        if (v35)
        {
          v50 = (v10[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_23AC445B0((v0 + 488), v50);
          sub_23AC44614(v0 + 280);
          goto LABEL_5;
        }

        v10[(v30 >> 6) + 8] |= 1 << v30;
        v51 = v30;
        sub_23AC444F8(v0 + 280, v10[6] + 40 * v30);
        sub_23AC445B0((v0 + 488), (v10[7] + 32 * v51));
        sub_23AC44614(v0 + 280);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v52 = v10[2];
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v25)
        {
          goto LABEL_52;
        }

        v10[2] = v53;
        v1 = v65;
      }

      else
      {
        (*(v0 + 624))(*(v0 + 584), *(v0 + 616), *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v37 = sub_23AC662C4();
        v61 = sub_23AC66464();
        v38 = os_log_type_enabled(v37, v61);
        v39 = *(v0 + 640);
        v62 = *(v0 + 568);
        v63 = *(v0 + 584);
        if (v38)
        {
          v60 = *(v0 + 640);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v66 = v41;
          *v40 = 136315138;
          v42 = sub_23AC664C4();
          v44 = v43;
          sub_23AC44614(v0 + 240);
          v45 = sub_23AC43B08(v42, v44, &v66);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_23AB8E000, v37, v61, "VSAccountUpdateEvent received invalid metadata key: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23EE97EA0](v41, -1, -1);
          MEMORY[0x23EE97EA0](v40, -1, -1);

          v60(v63, v62);
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v39(v63, v62);
        }

LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v1 = v65;
      }
    }
  }

  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 552);

  strcpy(v58, "account_update");
  *(v58 + 15) = -18;
  *(v58 + 16) = v10;
  *(v58 + 24) = v57;
  *(v58 + 32) = v56;

  v59 = *(v0 + 8);

  v59();
}

uint64_t VSAccountUpdateEvent.init(userAccount:source:updateType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[146] = a6;
  v6[145] = a5;
  v6[144] = a4;
  v6[143] = a3;
  v6[142] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8);
  v6[147] = swift_task_alloc();
  v6[148] = swift_task_alloc();
  v8 = sub_23AC66294();
  v6[149] = v8;
  v6[150] = *(v8 - 8);
  v6[151] = swift_task_alloc();
  v9 = sub_23AC661D4();
  v6[152] = v9;
  v6[153] = *(v9 - 8);
  v6[154] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86E8);
  v6[155] = swift_task_alloc();
  v10 = sub_23AC66254();
  v6[156] = v10;
  v6[157] = *(v10 - 8);
  v6[158] = swift_task_alloc();
  v6[159] = swift_task_alloc();
  v6[160] = *a2;

  return MEMORY[0x2822009F8](sub_23AC5C030, 0, 0);
}

uint64_t sub_23AC5C030()
{
  v94 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  strcpy((v0 + 416), "account_update");
  *(v0 + 431) = -18;
  v6 = sub_23AC5B228();
  v7 = v6[1];
  *(v0 + 440) = *v6;
  *(v0 + 448) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8798);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AC70E20;
  *(v0 + 1303) = 1;
  sub_23AC5D148();

  sub_23AC66504();
  v9 = MEMORY[0x277D837D0];
  *(v8 + 96) = MEMORY[0x277D837D0];
  *(v8 + 72) = v5;
  *(v8 + 80) = v4;
  *(v0 + 1300) = 3;
  sub_23AC66504();
  *(v8 + 168) = v9;
  *(v8 + 144) = v3;
  *(v8 + 152) = v2;
  v10 = sub_23AC53AC4(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8788);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 432) = v10;
  *&v92 = v1;
  VSUserAccount.accountType.getter(&v91);
  *(v0 + 1297) = v91;
  *(v0 + 1294) = 0;
  sub_23AC5D2E4();
  sub_23AC663D4();
  sub_23AC663D4();
  if (*(v0 + 1128) == *(v0 + 1120))
  {
    v11 = sub_23AC66364();
    v93 = v9;
    *&v92 = v11;
    *(&v92 + 1) = v12;
    *(v0 + 1304) = 5;
    sub_23AC66504();
    sub_23AC5D19C(&v92, v0 + 56, (v0 + 672));
    sub_23AC44614(v0 + 56);
    v13 = v0 + 672;
  }

  else
  {
    v14 = sub_23AC66364();
    v93 = v9;
    *&v92 = v14;
    *(&v92 + 1) = v15;
    *(v0 + 1293) = 5;
    sub_23AC66504();
    sub_23AC5D19C(&v92, v0 + 336, (v0 + 1024));
    sub_23AC44614(v0 + 336);
    v13 = v0 + 1024;
  }

  sub_23AC4CC70(v13, &qword_27DFC87F0);
  *&v92 = *(v0 + 1280);
  VSUserAccount.authenticationData.getter();
  if (v16)
  {
    v17 = sub_23AC66394();
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v0 + 1280);
  v19 = MEMORY[0x277D83B88];
  v93 = MEMORY[0x277D83B88];
  *&v92 = v17;
  *(v0 + 1299) = 12;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 456, (v0 + 896));
  sub_23AC44614(v0 + 456);
  sub_23AC4CC70(v0 + 896, &qword_27DFC87F0);
  *&v92 = v18;
  v20 = VSUserAccount.tierIdentifiers.getter();
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 1280);
  v93 = v19;
  *&v92 = v21;
  *(v0 + 1288) = 10;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 16, (v0 + 640));
  sub_23AC44614(v0 + 16);
  sub_23AC4CC70(v0 + 640, &qword_27DFC87F0);
  v91 = v22;
  v23 = VSUserAccount.modifierIdentifier.getter();
  v93 = v9;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0x6E776F6E6B6E75;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  *&v92 = v25;
  *(&v92 + 1) = v26;
  *(v0 + 1302) = 8;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 536, (v0 + 608));
  sub_23AC44614(v0 + 536);
  sub_23AC4CC70(v0 + 608, &qword_27DFC87F0);
  *&v92 = v22;
  v27 = sub_23AC4AFB0();
  if (v27)
  {
    v28 = v27;
    type metadata accessor for VSMetricAccountUpdateValue();
    *(v0 + 792) = v29;
    *(v0 + 768) = v28;
    sub_23AC445B0((v0 + 768), (v0 + 736));
  }

  else
  {
    *(v0 + 760) = v9;
    *(v0 + 736) = 0x6E776F6E6B6E75;
    *(v0 + 744) = 0xE700000000000000;
  }

  v30 = *(v0 + 1280);
  *(v0 + 1296) = 7;
  sub_23AC66504();
  sub_23AC5D19C((v0 + 736), v0 + 496, (v0 + 704));
  sub_23AC44614(v0 + 496);
  sub_23AC4CC70(v0 + 704, &qword_27DFC87F0);
  *&v92 = v30;
  v31 = sub_23AC4B090();
  if (v31)
  {
    v32 = v31;
    type metadata accessor for VSMetricAccountUpdateValue();
    *(v0 + 952) = v33;
    *(v0 + 928) = v32;
    sub_23AC445B0((v0 + 928), (v0 + 576));
  }

  else
  {
    *(v0 + 600) = v9;
    *(v0 + 576) = 0x6E776F6E6B6E75;
    *(v0 + 584) = 0xE700000000000000;
  }

  v34 = *(v0 + 1280);
  *(v0 + 1291) = 2;
  sub_23AC66504();
  sub_23AC5D19C((v0 + 576), v0 + 376, (v0 + 864));
  sub_23AC44614(v0 + 376);
  sub_23AC4CC70(v0 + 864, &qword_27DFC87F0);
  *&v92 = v34;
  VSUserAccount.billingIdentifier.getter();
  if (v35 && (v36 = sub_23AC66394(), , v36 > 0))
  {
    v37 = 0xE400000000000000;
    v38 = 1702195828;
  }

  else
  {
    v37 = 0xE500000000000000;
    v38 = 0x65736C6166;
  }

  v39 = *(v0 + 1280);
  v40 = *(v0 + 1256);
  v41 = *(v0 + 1248);
  v42 = *(v0 + 1240);
  v93 = v9;
  *&v92 = v38;
  *(&v92 + 1) = v37;
  *(v0 + 1290) = 11;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 296, (v0 + 992));
  sub_23AC44614(v0 + 296);
  sub_23AC4CC70(v0 + 992, &qword_27DFC87F0);
  *&v92 = v39;
  VSUserAccount.subscriptionBillingCycleEndDate.getter(v42);
  if ((*(v40 + 48))(v42, 1, v41) == 1)
  {
    sub_23AC4CC70(*(v0 + 1240), &qword_27DFC86E8);
  }

  else
  {
    v43 = *(v0 + 1264);
    v44 = *(v0 + 1256);
    v85 = *(v0 + 1272);
    v86 = *(v0 + 1232);
    v89 = *(v0 + 1224);
    v90 = *(v0 + 1216);
    v45 = *(v0 + 1208);
    v46 = *(v0 + 1200);
    v87 = *(v0 + 1248);
    v88 = *(v0 + 1192);
    (*(v44 + 32))();
    sub_23AC66274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87F8);
    v47 = sub_23AC66284();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_23AC70E10;
    (*(v48 + 104))(v50 + v49, *MEMORY[0x277CC9968], v47);
    sub_23AC5D338(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    sub_23AC66244();
    sub_23AC66264();

    v51 = *(v44 + 8);
    v51(v43, v87);
    (*(v46 + 8))(v45, v88);
    v52 = sub_23AC661C4();
    LOBYTE(v47) = v53;
    (*(v89 + 8))(v86, v90);
    if (v47)
    {
      v54 = 0;
    }

    else
    {
      v54 = v52;
    }

    v93 = MEMORY[0x277D83B88];
    *&v92 = v54;
    *(v0 + 1301) = 9;
    sub_23AC66504();
    sub_23AC5D19C(&v92, v0 + 96, (v0 + 800));
    sub_23AC44614(v0 + 96);
    sub_23AC4CC70(v0 + 800, &qword_27DFC87F0);
    v51(v85, v87);
  }

  v91 = *(v0 + 1280);
  v55 = v91;
  v56 = VSUserAccount.sourceIdentifier.getter();
  v57 = MEMORY[0x277D837D0];
  v93 = MEMORY[0x277D837D0];
  *&v92 = v56;
  *(&v92 + 1) = v58;
  *(v0 + 1289) = 1;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 256, (v0 + 1088));
  sub_23AC44614(v0 + 256);
  sub_23AC4CC70(v0 + 1088, &qword_27DFC87F0);
  *&v92 = v55;
  VSUserAccount.sourceType.getter(&v91);
  v59 = *(v0 + 1280);
  v60 = *(v0 + 1184);
  v61 = sub_23AC66364();
  v93 = v57;
  *&v92 = v61;
  *(&v92 + 1) = v62;
  *(v0 + 1292) = 0;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 216, (v0 + 1056));
  sub_23AC44614(v0 + 216);
  sub_23AC4CC70(v0 + 1056, &qword_27DFC87F0);
  *&v92 = v59;
  VSUserAccount.updateURL.getter(v60);
  v63 = sub_23AC66214();
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  v66 = v65(v60, 1, v63);
  sub_23AC4CC70(v60, &qword_27DFC86D8);
  v67 = 0;
  if (v66 != 1)
  {
    v68 = *(v0 + 1176);
    *&v92 = *(v0 + 1280);
    VSUserAccount.updateURL.getter(v68);
    v69 = v65(v68, 1, v63);
    v70 = *(v0 + 1176);
    if (v69 == 1)
    {
      sub_23AC4CC70(*(v0 + 1176), &qword_27DFC86D8);
      v67 = 1;
    }

    else
    {
      v71 = sub_23AC661E4();
      v73 = v72;
      (*(v64 + 8))(v70, v63);
      if (v71 || v73 != 0xE000000000000000)
      {
        v74 = sub_23AC665E4();

        v67 = v74 ^ 1;
      }

      else
      {

        v67 = 0;
      }
    }
  }

  v75 = *(v0 + 1280);
  v93 = MEMORY[0x277D839B0];
  LOBYTE(v92) = v67 & 1;
  *(v0 + 1295) = 6;
  sub_23AC66504();
  sub_23AC5D19C(&v92, v0 + 176, (v0 + 960));
  sub_23AC44614(v0 + 176);
  sub_23AC4CC70(v0 + 960, &qword_27DFC87F0);
  *&v92 = v75;
  v76 = VSUserAccount.accountProviderIdentifier.getter();
  v78 = v77;

  if (v78)
  {
    v93 = MEMORY[0x277D837D0];
    *&v92 = v76;
    *(&v92 + 1) = v78;
    *(v0 + 1298) = 4;
    sub_23AC66504();
    sub_23AC5D19C(&v92, v0 + 136, (v0 + 832));
    sub_23AC44614(v0 + 136);
    sub_23AC4CC70(v0 + 832, &qword_27DFC87F0);
  }

  v79 = *(v0 + 1136);
  v80 = *(v0 + 440);
  v81 = *(v0 + 448);
  v82 = *(v0 + 424);
  *v79 = *(v0 + 416);
  *(v79 + 8) = v82;
  *(v79 + 24) = v80;
  *(v79 + 32) = v81;

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_23AC5CCF4()
{
  v3 = *v0;
  VSUserAccount.sourceType.getter(&v2);

  return sub_23AC66364();
}

uint64_t sub_23AC5CD50(uint64_t a1, id *a2)
{
  result = sub_23AC66344();
  *a2 = 0;
  return result;
}

uint64_t sub_23AC5CDC8(uint64_t a1, id *a2)
{
  v3 = sub_23AC66354();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23AC5CE48@<X0>(uint64_t *a1@<X8>)
{
  sub_23AC66364();
  v2 = sub_23AC66334();

  *a1 = v2;
  return result;
}

uint64_t sub_23AC5CE8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23AC66334();

  *a1 = v2;
  return result;
}

uint64_t sub_23AC5CED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23AC66364();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23AC5CF00(uint64_t a1)
{
  v2 = sub_23AC5D790(&qword_27DFC8820, type metadata accessor for VSMetricAccountUpdateValue);
  v3 = sub_23AC5D790(&qword_27DFC8828, type metadata accessor for VSMetricAccountUpdateValue);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23AC5CFBC()
{
  v0 = sub_23AC66364();
  v1 = MEMORY[0x23EE96CB0](v0);

  return v1;
}

uint64_t sub_23AC5CFF8()
{
  sub_23AC66364();
  sub_23AC66384();
}

uint64_t sub_23AC5D04C()
{
  sub_23AC66364();
  sub_23AC66614();
  sub_23AC66384();
  v0 = sub_23AC66634();

  return v0;
}

uint64_t sub_23AC5D0C0()
{
  v0 = sub_23AC66364();
  v2 = v1;
  if (v0 == sub_23AC66364() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23AC665E4();
  }

  return v5 & 1;
}

unint64_t sub_23AC5D148()
{
  result = qword_27DFC87E0;
  if (!qword_27DFC87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87E0);
  }

  return result;
}

_OWORD *sub_23AC5D19C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v24 = v10;
  v11 = sub_23AC440B0(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_23AC440F4(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_23AC440B0(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_23AC66604();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v11;
    sub_23AC447F8();
    v11 = v21;
    v18 = v24;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = v11;
    sub_23AC444F8(a2, v23);
    result = sub_23AC446B4(v22, v23, a1, v18);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v18 = v24;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v11;
  sub_23AC445B0((v18[7] + 32 * v11), a3);
  result = sub_23AC445B0(a1, (v18[7] + v19));
LABEL_11:
  *v5 = v18;
  return result;
}

unint64_t sub_23AC5D2E4()
{
  result = qword_27DFC87E8;
  if (!qword_27DFC87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC87E8);
  }

  return result;
}

uint64_t sub_23AC5D338(uint64_t a1)
{
  v2 = sub_23AC66284();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8830);
    v9 = sub_23AC66514();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23AC5D790(&qword_27DFC8838, MEMORY[0x277CC99D0]);
      v16 = sub_23AC66314();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23AC5D790(&qword_27DFC8840, MEMORY[0x277CC99D0]);
          v23 = sub_23AC66324();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void type metadata accessor for VSMetricAccountUpdateValue()
{
  if (!qword_27DFC8800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DFC8800);
    }
  }
}

uint64_t sub_23AC5D790(unint64_t *a1, void (*a2)(uint64_t))
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

VideoSubscriberAccount::VSAccountUpdateKeys_optional __swiftcall VSAccountUpdateKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VSAccountUpdateKeys.rawValue.getter()
{
  result = 0x7954656372756F73;
  switch(*v0)
  {
    case 1:
      result = 0x4449656372756F73;
      break;
    case 2:
      result = 0x65707954697061;
      break;
    case 3:
      result = 0x7079546574697277;
      break;
    case 4:
      result = 0x72656469766F7270;
      break;
    case 5:
      result = 0x54746E756F636361;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
    case 8:
      result = 0x7265696669646F6DLL;
      break;
    case 9:
      result = 7107700;
      break;
    case 0xA:
      result = 0x69547265626D756ELL;
      break;
    case 0xB:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23AC5D9AC()
{
  updated = VSAccountUpdateKeys.rawValue.getter();
  v2 = v1;
  if (updated == VSAccountUpdateKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23AC665E4();
  }

  return v5 & 1;
}

unint64_t sub_23AC5DA4C()
{
  result = qword_27DFC8848;
  if (!qword_27DFC8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8848);
  }

  return result;
}

uint64_t sub_23AC5DAA0()
{
  sub_23AC66614();
  VSAccountUpdateKeys.rawValue.getter();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC5DB08()
{
  VSAccountUpdateKeys.rawValue.getter();
  sub_23AC66384();
}

uint64_t sub_23AC5DB6C()
{
  sub_23AC66614();
  VSAccountUpdateKeys.rawValue.getter();
  sub_23AC66384();

  return sub_23AC66634();
}

unint64_t sub_23AC5DBDC@<X0>(unint64_t *a1@<X8>)
{
  result = VSAccountUpdateKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23AC5DC08()
{
  result = qword_27DFC8850;
  if (!qword_27DFC8850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFC8858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSAccountUpdateKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSAccountUpdateKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VSUserMetadataEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSUserMetadataEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSUserMetadataEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSUserMetadataEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSUserMetadataEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC5DFCC, 0, 0);
}

uint64_t sub_23AC5DFCC()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_23AC5B228();
  v0[75] = *v4;
  v0[76] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[77] = v5;
  v6 = *(v2 + 16);
  v0[78] = v6;
  v0[79] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSUserMetadataEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[72];
  v12 = v0[71];

  v13 = *(v11 + 8);
  v0[80] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[81] = v14;
  *v14 = v0;
  v14[1] = sub_23AC5E164;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC5E164(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return MEMORY[0x2822009F8](sub_23AC5E264, 0, 0);
}

void sub_23AC5E264()
{
  v67 = v0;
  v1 = 0;
  v2 = *(v0 + 560);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = *(v0 + 560);
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 656);
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v1 + 1)
      {
        v12 = v1 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v11);
        ++v1;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v11 = v1;
LABEL_15:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_23AC444F8(*(v64 + 48) + 40 * v15, v0 + 160);
    sub_23AC44554(*(v64 + 56) + 32 * v15, v0 + 360);
    v16 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v13 = v11;
LABEL_16:
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v18;
    if (!*(v0 + 40))
    {
      break;
    }

    v19 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v19;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      v1 = v13;
      *(v0 + 667) = *(v0 + 664);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 520);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v21 = sub_23AC440B0(v0 + 320);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v10[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v21;
          sub_23AC447F8();
          v21 = v54;
          v10 = v66;
        }
      }

      else
      {
        sub_23AC440F4(v26, isUniquelyReferenced_nonNull_native);
        v10 = v66;
        v21 = sub_23AC440B0(v0 + 320);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v27)
      {
        v46 = (v10[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0(v46);
        sub_23AC445B0((v0 + 520), v46);
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
      }

      else
      {
        v10[(v21 >> 6) + 8] |= 1 << v21;
        v47 = v21;
        sub_23AC444F8(v0 + 320, v10[6] + 40 * v21);
        sub_23AC445B0((v0 + 520), (v10[7] + 32 * v47));
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v48 = v10[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        v10[2] = v49;
      }
    }

    else
    {
      v65 = v13;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 666) = *(v0 + 665);
        sub_23AC56538();
        sub_23AC66504();
        sub_23AC44554(v0 + 392, v0 + 488);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        v30 = sub_23AC440B0(v0 + 280);
        v32 = v10[2];
        v33 = (v31 & 1) == 0;
        v25 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v25)
        {
          goto LABEL_50;
        }

        v35 = v31;
        if (v10[3] >= v34)
        {
          if ((v29 & 1) == 0)
          {
            v55 = v30;
            sub_23AC447F8();
            v30 = v55;
            v10 = v66;
          }
        }

        else
        {
          sub_23AC440F4(v34, v29);
          v10 = v66;
          v30 = sub_23AC440B0(v0 + 280);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_45:

            sub_23AC66604();
            return;
          }
        }

        if (v35)
        {
          v50 = (v10[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_23AC445B0((v0 + 488), v50);
          sub_23AC44614(v0 + 280);
          goto LABEL_5;
        }

        v10[(v30 >> 6) + 8] |= 1 << v30;
        v51 = v30;
        sub_23AC444F8(v0 + 280, v10[6] + 40 * v30);
        sub_23AC445B0((v0 + 488), (v10[7] + 32 * v51));
        sub_23AC44614(v0 + 280);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v52 = v10[2];
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v25)
        {
          goto LABEL_52;
        }

        v10[2] = v53;
        v1 = v65;
      }

      else
      {
        (*(v0 + 624))(*(v0 + 584), *(v0 + 616), *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v37 = sub_23AC662C4();
        v61 = sub_23AC66464();
        v38 = os_log_type_enabled(v37, v61);
        v39 = *(v0 + 640);
        v62 = *(v0 + 568);
        v63 = *(v0 + 584);
        if (v38)
        {
          v60 = *(v0 + 640);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v66 = v41;
          *v40 = 136315138;
          v42 = sub_23AC664C4();
          v44 = v43;
          sub_23AC44614(v0 + 240);
          v45 = sub_23AC43B08(v42, v44, &v66);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_23AB8E000, v37, v61, "VSUserMetadataEvent received invalid metadata key: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23EE97EA0](v41, -1, -1);
          MEMORY[0x23EE97EA0](v40, -1, -1);

          v60(v63, v62);
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v39(v63, v62);
        }

LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v1 = v65;
      }
    }
  }

  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 552);

  strcpy(v58, "user_metadata");
  *(v58 + 14) = -4864;
  *(v58 + 16) = v10;
  *(v58 + 24) = v57;
  *(v58 + 32) = v56;

  v59 = *(v0 + 8);

  v59();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23AC5EA64(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23AC662E4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_23AC66364();
  sub_23AC66364();
  return sub_23AC662D4();
}

uint64_t sub_23AC5EB0C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_23AC662E4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23AC5EB84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23AC662E4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::Void __swiftcall VSMetricsEventProtocol.record()()
{
  v3 = v1;
  v4 = v0;
  v5 = *sub_23AC4F81C();
  v8[3] = v4;
  v8[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  v7 = *(*v5 + 96);

  v7(v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23AC5EDA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23AC43A0C;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC5EE48()
{
  v1 = sub_23AC53AC4(MEMORY[0x277D84F90]);
  v0[26] = v1;
  v0[27] = v1;
  v2 = [objc_opt_self() sharedAccountStore];
  v0[28] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23AC5EF98;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8860);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23AC5F3C4;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v2 firstAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23AC5EF98()
{

  return MEMORY[0x2822009F8](sub_23AC5F078, 0, 0);
}

uint64_t sub_23AC5F078()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = [*(v0 + 144) identityProviderID];

    v4 = [v3 object];
    v5 = *(v0 + 216);
    if (v4)
    {
      *(v0 + 144) = 3;
      sub_23AC4499C();
      sub_23AC66504();
      *(v0 + 168) = sub_23AC5F704();
      *(v0 + 144) = v4;
      sub_23AC445B0((v0 + 144), (v0 + 176));
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_23AC443AC((v0 + 176), v0 + 80, isUniquelyReferenced_nonNull_native);

      sub_23AC44614(v0 + 80);
      *(v0 + 208) = v5;
    }
  }

  else
  {

    v5 = *(v0 + 216);
  }

  *(v0 + 144) = 4;
  sub_23AC4499C();
  sub_23AC66504();
  v8 = objc_opt_self();
  v9 = [objc_opt_self() currentProcess];
  v10 = [v8 userAgentForProcessInfo_];

  v11 = sub_23AC66364();
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v11;
  *(v0 + 152) = v13;
  sub_23AC445B0((v0 + 144), (v0 + 176));
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 176), v0 + 80, v15);
  sub_23AC44614(v0 + 80);
  *(v0 + 208) = v5;
  v16 = [objc_opt_self() ams:0 sharedAccountStoreForMediaType:?];
  v17 = [v16 ams_activeiTunesAccount];

  if (v17)
  {
    *(v0 + 144) = 5;
    sub_23AC66504();
    v18 = [v17 ams_storefront];
    if (v18)
    {
      v19 = v18;
      v20 = sub_23AC66364();
      v22 = v21;

      *(v0 + 168) = v14;
      *(v0 + 144) = v20;
      *(v0 + 152) = v22;
      sub_23AC445B0((v0 + 144), (v0 + 176));
      v23 = swift_isUniquelyReferenced_nonNull_native();
      sub_23AC443AC((v0 + 176), v0 + 80, v23);

      sub_23AC44614(v0 + 80);
    }

    else
    {
      sub_23AC5F428(v0 + 80, (v0 + 176));

      sub_23AC5F69C(v0 + 176);
      sub_23AC44614(v0 + 80);
      v5 = *(v0 + 208);
    }
  }

  v24 = *(v0 + 8);

  return v24(v5);
}

uint64_t sub_23AC5F3C4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

double sub_23AC5F428@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_23AC440B0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23AC447F8();
      v9 = v11;
    }

    sub_23AC44614(*(v9 + 48) + 40 * v7);
    sub_23AC445B0((*(v9 + 56) + 32 * v7), a2);
    sub_23AC5F4CC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23AC5F4CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AC664B4() + 1) & ~v5;
    do
    {
      sub_23AC444F8(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_23AC664D4();
      result = sub_23AC44614(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23AC5F69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC87F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23AC5F704()
{
  result = qword_27DFC8868;
  if (!qword_27DFC8868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFC8868);
  }

  return result;
}

uint64_t dispatch thunk of static VSMetricsEventProtocol.generateBaseFields()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AC43A0C;

  return v7(a1, a2);
}

uint64_t VSProhibitedTemplateEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSProhibitedTemplateEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSProhibitedTemplateEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSProhibitedTemplateEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSProhibitedTemplateEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[70] = a2;
  v2[69] = a1;
  v3 = sub_23AC662E4();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC5FAD8, 0, 0);
}

uint64_t sub_23AC5FAD8()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_23AC5B228();
  v0[75] = *v4;
  v0[76] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[77] = v5;
  v6 = *(v2 + 16);
  v0[78] = v6;
  v0[79] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSProhibitedTemplateEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[72];
  v12 = v0[71];

  v13 = *(v11 + 8);
  v0[80] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[81] = v14;
  *v14 = v0;
  v14[1] = sub_23AC5FC70;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC5FC70(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return MEMORY[0x2822009F8](sub_23AC5FD70, 0, 0);
}

void sub_23AC5FD70()
{
  v67 = v0;
  v1 = 0;
  v2 = *(v0 + 560);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v64 = *(v0 + 560);
  v6 = -1;
  v7 = -1 << *(v64 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 656);
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v1 + 1)
      {
        v12 = v1 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          *(v0 + 152) = 0;
          *(v0 + 136) = 0u;
          *(v0 + 120) = 0u;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v11);
        ++v1;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v11 = v1;
LABEL_15:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_23AC444F8(*(v64 + 48) + 40 * v15, v0 + 160);
    sub_23AC44554(*(v64 + 56) + 32 * v15, v0 + 360);
    v16 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 192);
    sub_23AC445B0((v0 + 360), (v0 + 128));
    v13 = v11;
LABEL_16:
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v18;
    if (!*(v0 + 40))
    {
      break;
    }

    v19 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v19;
    *(v0 + 232) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 392));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      v1 = v13;
      *(v0 + 667) = *(v0 + 664);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 392, v0 + 520);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v21 = sub_23AC440B0(v0 + 320);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v10[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = v21;
          sub_23AC447F8();
          v21 = v54;
          v10 = v66;
        }
      }

      else
      {
        sub_23AC440F4(v26, isUniquelyReferenced_nonNull_native);
        v10 = v66;
        v21 = sub_23AC440B0(v0 + 320);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_45;
        }
      }

      if (v27)
      {
        v46 = (v10[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0(v46);
        sub_23AC445B0((v0 + 520), v46);
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
      }

      else
      {
        v10[(v21 >> 6) + 8] |= 1 << v21;
        v47 = v21;
        sub_23AC444F8(v0 + 320, v10[6] + 40 * v21);
        sub_23AC445B0((v0 + 520), (v10[7] + 32 * v47));
        sub_23AC44614(v0 + 320);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v48 = v10[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        v10[2] = v49;
      }
    }

    else
    {
      v65 = v13;
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 666) = *(v0 + 665);
        sub_23AC56538();
        sub_23AC66504();
        sub_23AC44554(v0 + 392, v0 + 488);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        v30 = sub_23AC440B0(v0 + 280);
        v32 = v10[2];
        v33 = (v31 & 1) == 0;
        v25 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v25)
        {
          goto LABEL_50;
        }

        v35 = v31;
        if (v10[3] >= v34)
        {
          if ((v29 & 1) == 0)
          {
            v55 = v30;
            sub_23AC447F8();
            v30 = v55;
            v10 = v66;
          }
        }

        else
        {
          sub_23AC440F4(v34, v29);
          v10 = v66;
          v30 = sub_23AC440B0(v0 + 280);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_45:

            sub_23AC66604();
            return;
          }
        }

        if (v35)
        {
          v50 = (v10[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_23AC445B0((v0 + 488), v50);
          sub_23AC44614(v0 + 280);
          goto LABEL_5;
        }

        v10[(v30 >> 6) + 8] |= 1 << v30;
        v51 = v30;
        sub_23AC444F8(v0 + 280, v10[6] + 40 * v30);
        sub_23AC445B0((v0 + 488), (v10[7] + 32 * v51));
        sub_23AC44614(v0 + 280);
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v52 = v10[2];
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v25)
        {
          goto LABEL_52;
        }

        v10[2] = v53;
        v1 = v65;
      }

      else
      {
        (*(v0 + 624))(*(v0 + 584), *(v0 + 616), *(v0 + 568));
        sub_23AC444F8(v0 + 200, v0 + 240);
        v37 = sub_23AC662C4();
        v61 = sub_23AC66464();
        v38 = os_log_type_enabled(v37, v61);
        v39 = *(v0 + 640);
        v62 = *(v0 + 568);
        v63 = *(v0 + 584);
        if (v38)
        {
          v60 = *(v0 + 640);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v66 = v41;
          *v40 = 136315138;
          v42 = sub_23AC664C4();
          v44 = v43;
          sub_23AC44614(v0 + 240);
          v45 = sub_23AC43B08(v42, v44, &v66);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_23AB8E000, v37, v61, "VSProhibitedTemplateEvent received invalid metadata key: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23EE97EA0](v41, -1, -1);
          MEMORY[0x23EE97EA0](v40, -1, -1);

          v60(v63, v62);
        }

        else
        {

          sub_23AC44614(v0 + 240);
          v39(v63, v62);
        }

LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v0 + 392);
        sub_23AC44614(v0 + 200);
        v1 = v65;
      }
    }
  }

  v56 = *(v0 + 608);
  v57 = *(v0 + 600);
  v58 = *(v0 + 552);

  *v58 = 0xD000000000000019;
  v58[1] = 0x800000023AC8AE00;
  v58[2] = v10;
  v58[3] = v57;
  v58[4] = v56;

  v59 = *(v0 + 8);

  v59();
}

id sub_23AC604D0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DFCA958 = result;
  return result;
}

uint64_t sub_23AC60524()
{
  v0 = sub_23AC662B4();
  __swift_allocate_value_buffer(v0, qword_27DFCA978);
  __swift_project_value_buffer(v0, qword_27DFCA978);
  if (qword_27DFCA950 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFCA958;
  return sub_23AC662A4();
}

uint64_t sub_23AC605D4()
{
  if (qword_27DFCA960 != -1)
  {
    swift_once();
  }

  v0 = sub_23AC662B4();

  return __swift_project_value_buffer(v0, qword_27DFCA978);
}

uint64_t sub_23AC60638@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DFCA960 != -1)
  {
    swift_once();
  }

  v2 = sub_23AC662B4();
  v3 = __swift_project_value_buffer(v2, qword_27DFCA978);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void __VSOpenURL_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to open URL: %@", &v3, 0xCu);
}

void __VSOpenURL_block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Error opening URL %@: %@", &v4, 0x16u);
}

void __VSSharedSAMLParserController_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error loading SAML framework: %@", &v2, 0xCu);
}

void VSWebServerConnectionDidReceiveError_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Connection %@ did receive error: %@.", &v3, 0x16u);
}

void VSDisplayNameForBundleWithIdentifier_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_23AB8E000, a3, OS_LOG_TYPE_ERROR, "Error finding bundle record for bundleID %@ : %@", &v6, 0x16u);
}

void VSLoadBundleAtPath_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "Failed to lookup bundle at path %@", &v2, 0xCu);
}

void VSLocalizedDescriptionForPublicErrorCode_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&dword_23AB8E000, log, OS_LOG_TYPE_FAULT, "No error string found for error with type %d and code %d", v3, 0xEu);
}