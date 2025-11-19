void sub_1B723FE54(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B7801908();
    sub_1B7205540(0, &qword_1EB98F930);
    sub_1B7262CF4(&qword_1EB98FFD8, &qword_1EB98F930);
    sub_1B7800FE8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1B71B7B58();
      return;
    }

    while (1)
    {
      sub_1B7253100(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B7801988())
      {
        sub_1B7205540(0, &qword_1EB98F930);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B7240060(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionIdentityWrapper();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B71FD99C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B7263498(v8, v5, type metadata accessor for ExtensionIdentityWrapper);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B71FD99C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1B7262E04(&qword_1EB98FC88, 255, type metadata accessor for ExtensionIdentityWrapper);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1B7263498(v5, boxed_opaque_existential_1, type metadata accessor for ExtensionIdentityWrapper);
      *(v7 + 16) = v11 + 1;
      sub_1B71E4C44(&v14, v7 + 40 * v11 + 32);
      sub_1B7263500(v5, type metadata accessor for ExtensionIdentityWrapper);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1B7240268(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_1B7801958();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FDAA8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1B8CA5DC0](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B71FDAA8((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1B72051F0(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B71FDAA8((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1B72051F0(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7240488(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B71FDAA8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B71FDAA8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B72051F0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B72405B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_1B719BDE4(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B71FDB50((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B72406BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B71FDAA8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCD0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B71FDAA8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B72051F0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7240844(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v6 = a1 + 32;
    do
    {
      sub_1B719BDE4(v6, &v7);
      a2(0);
      swift_dynamicCast();
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v6 += 32;
      --v3;
    }

    while (v3);
    return v8;
  }

  return result;
}

char *sub_1B724092C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B7801958();
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

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FDAA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8CA5DC0](i, a1);
        sub_1B7205540(0, &qword_1EDAFC4C8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B71FDAA8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B72051F0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1B7205540(0, &qword_1EDAFC4C8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B71FDAA8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1B72051F0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1B7240B58(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 merchantTokenIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B7240BB0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
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

void sub_1B7240C14(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_1B7800838();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_1B7240C84(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_1B77FF928();
}

uint64_t sub_1B7240CE0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 expirationDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7240D84(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setExpirationDate_];
}

id ManagedApplePayMerchantTokenUsageInformation.__allocating_init(decodingVersion:decodingDate:merchantTokenIdentifier:merchantName:merchantLogoName:upcomingPayments:pastPayment:otherUsageDescription:developmentLocalization:resources:modificationDate:expirationDate:context:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v17 = v16;
  v57 = a15;
  v58 = a14;
  v53 = a13;
  v51[1] = a6;
  v52 = a12;
  v55 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v54 = v51 - v24;
  v25 = objc_allocWithZone(v17);
  v56 = a16;
  v26 = [v25 initWithContext_];
  [v26 setDecodingVersion_];
  v59 = a2;
  v27 = sub_1B77FF8B8();
  [v26 setDecodingDate_];

  v28 = a5;
  v29 = sub_1B7800838();

  [v26 setMerchantTokenIdentifier_];

  [v26 setMerchantName_];
  if (a7)
  {
    v30 = sub_1B7800838();
  }

  else
  {
    v30 = 0;
  }

  [v26 setMerchantLogoName_];

  sub_1B7240268(a8, type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment);

  v31 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v32 = sub_1B7800C18();

  v33 = [v31 initWithArray_];

  [v26 setUpcomingPaymentObjects_];
  sub_1B7240268(a9, type metadata accessor for ManagedApplePayMerchantTokenPastPayment);

  v34 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v35 = sub_1B7800C18();

  v36 = [v34 initWithArray_];

  [v26 setPastPaymentObjects_];
  v37 = v55;
  [v26 setOtherUsageDescription_];
  if (v52)
  {
    v38 = sub_1B7800838();
  }

  else
  {
    v38 = 0;
  }

  v39 = v58;
  [v26 setDevelopmentLocalization_];

  sub_1B7240268(v53, type metadata accessor for ManagedApplePayMerchantTokenResource);

  v40 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v41 = sub_1B7800C18();

  v42 = [v40 initWithArray_];

  [v26 setResourceObjects_];
  v43 = sub_1B77FF8B8();
  [v26 setModificationDate_];

  v44 = v57;
  v45 = v54;
  sub_1B7205588(v57, v54, &qword_1EB98EBD0);
  v46 = sub_1B77FF988();
  v47 = *(v46 - 8);
  v48 = 0;
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    v48 = sub_1B77FF8B8();
    (*(v47 + 8))(v45, v46);
  }

  [v26 setExpirationDate_];

  sub_1B7205418(v44, &qword_1EB98EBD0);
  v49 = *(v47 + 8);
  v49(v39, v46);
  v49(v59, v46);
  return v26;
}

uint64_t ManagedApplePayMerchantTokenUsageInformation.upcomingPayments.getter()
{
  v1 = [v0 upcomingPaymentObjects];
  v2 = sub_1B7262934(v1);

  sub_1B7240844(v2, type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment);

  v5 = sub_1B725F3BC(v3, sub_1B725F458);
  sub_1B72453F8(&v5, sub_1B77E6DD4, type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment);

  return v5;
}

uint64_t ManagedApplePayMerchantTokenUsageInformation.pastPayments.getter()
{
  v1 = [v0 pastPaymentObjects];
  v2 = sub_1B7262934(v1);

  sub_1B7240844(v2, type metadata accessor for ManagedApplePayMerchantTokenPastPayment);

  v5 = sub_1B725F3BC(v3, sub_1B725F5E8);
  sub_1B72453F8(&v5, sub_1B77E6DD4, type metadata accessor for ManagedApplePayMerchantTokenPastPayment);

  return v5;
}

uint64_t ManagedApplePayMerchantTokenUsageInformation.resource(named:preferences:)(uint64_t a1, unint64_t a2, char *a3)
{
  v69 = a2;
  ObjectType = swift_getObjectType();
  type metadata accessor for ManagedApplePayMerchantTokenResource();
  v68.receiver = swift_getObjCClassFromMetadata();
  v68.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedApplePayMerchantTokenResource;
  v5 = objc_msgSendSuper2(&v68, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v6 = swift_allocObject();
  v6[1] = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = ObjectType;
  *(v7 + 64) = sub_1B7262E04(&qword_1EB9901B8, v8, type metadata accessor for ManagedApplePayMerchantTokenUsageInformation);
  *(v7 + 32) = v3;
  v9 = v3;
  *(v6 + 4) = sub_1B78010E8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  isUniquelyReferenced_nonNull_native = v5;
  v12 = sub_1B7800838();
  *(v10 + 56) = sub_1B7205540(0, &qword_1EDAF6440);
  *(v10 + 64) = sub_1B7262CF4(&qword_1EB9901C0, &qword_1EDAF6440);
  *(v10 + 32) = v12;
  *(v6 + 5) = sub_1B78010E8();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v5 setPredicate_];
  v60 = v9;
  v15 = [v9 managedObjectContext];
  if (!v15)
  {
    __break(1u);
LABEL_65:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

  v16 = v15;
  v17 = sub_1B7801498();
  v18 = v63;
  if (v63)
  {

    return v6;
  }

  v20 = v17;

  if (v20 >> 62)
  {
    goto LABEL_46;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22 <= 1)
  {
LABEL_52:
    if (!v22)
    {

      return 0;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v20 + 32);
LABEL_56:
      v6 = v59;

      return v6;
    }

    __break(1u);
    goto LABEL_63;
  }

  v16 = sub_1B7202840(MEMORY[0x1E69E7CC0]);
  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
  {
    v62 = isUniquelyReferenced_nonNull_native;
    a1 = v20;
    if (!i)
    {
      break;
    }

    v24 = 0;
    v64 = v20 & 0xFFFFFFFFFFFFFF8;
    v65 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v27 = MEMORY[0x1B8CA5DC0](v24, v20);
      }

      else
      {
        if (v24 >= *(v64 + 16))
        {
          goto LABEL_43;
        }

        v27 = *(v20 + 8 * v24 + 32);
      }

      v6 = v27;
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v27 localization];
      if (!v28)
      {
        goto LABEL_32;
      }

      v29 = v28;
      v69 = v24 + 1;
      v30 = sub_1B7800868();
      v18 = v31;

      v6 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v16;
      v20 = sub_1B724562C(v30, v18, sub_1B7245FC0);
      v33 = v16[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_44;
      }

      v36 = v32;
      if (v16[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v32)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1B725E7FC(&qword_1EB98F650);
          if (v36)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_1B724D0A0(v35, isUniquelyReferenced_nonNull_native, &qword_1EB98F650);
        v37 = sub_1B724562C(v30, v18, sub_1B7245FC0);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_65;
        }

        v20 = v37;
        if (v36)
        {
LABEL_10:

          v16 = v67;
          v25 = v67[7];
          v26 = *(v25 + 8 * v20);
          *(v25 + 8 * v20) = v6;

          goto LABEL_11;
        }
      }

      v16 = v67;
      v67[(v20 >> 6) + 8] |= 1 << v20;
      v39 = (v16[6] + 16 * v20);
      *v39 = v30;
      v39[1] = v18;
      *(v16[7] + 8 * v20) = v6;

      v40 = v16[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_45;
      }

      v16[2] = v42;
LABEL_11:
      ++v24;
      v20 = a1;
      if (v69 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    if (v20 < 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1B7801958() < 2)
    {
      v22 = sub_1B7801958();
      goto LABEL_52;
    }

    v16 = sub_1B7202840(MEMORY[0x1E69E7CC0]);
  }

LABEL_29:
  v43 = v16[2];
  if (!v43 || (v44 = sub_1B7247064(v16[2], 0), v45 = sub_1B7261C14(&v67, v44 + 4, v43, v16), , sub_1B71B7B58(), v45 == v43))
  {
    v6 = v62;

    v46 = [v60 developmentLocalization];
    if (!v46)
    {
      goto LABEL_38;
    }

    v47 = v46;
    v21 = sub_1B7800868();
    v18 = v48;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_35:
      v50 = *(a3 + 2);
      v49 = *(a3 + 3);
      if (v50 >= v49 >> 1)
      {
        a3 = sub_1B723E180((v49 > 1), v50 + 1, 1, a3);
      }

      *(a3 + 2) = v50 + 1;
      v51 = &a3[16 * v50];
      *(v51 + 4) = v21;
      *(v51 + 5) = v18;
LABEL_38:
      v52 = objc_opt_self();
      v20 = sub_1B7800C18();
      isUniquelyReferenced_nonNull_native = sub_1B7800C18();
      v53 = [v52 preferredLocalizationsFromArray:v20 forPreferences:isUniquelyReferenced_nonNull_native];

      v54 = sub_1B7800C38();
      if (v54[2])
      {
        v20 = a1;
        if (v16[2])
        {
          isUniquelyReferenced_nonNull_native = v6;
          v55 = v54[4];
          v56 = v54[5];

          v57 = sub_1B724562C(v55, v56, sub_1B7245FC0);
          if (v58)
          {
            v6 = *(v16[7] + 8 * v57);

            return v6;
          }

          goto LABEL_60;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v59 = MEMORY[0x1B8CA5DC0](0, v20);
      goto LABEL_56;
    }

LABEL_63:
    a3 = sub_1B723E180(0, *(a3 + 2) + 1, 1, a3);
    goto LABEL_35;
  }

  __break(1u);
LABEL_32:

  return v6;
}

id ManagedApplePayMerchantTokenUsageInformation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenUsageInformation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenUsageInformation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedApplePayMerchantTokenUsageInformation.__allocating_init(_:decodingVersion:decodedAt:usageInformationPackage:context:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v269 = a5;
  v271 = a4;
  v232 = a3;
  v225 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v226 = &v219 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v231 = &v219 - v9;
  v236 = sub_1B77FF988();
  v230 = *(v236 - 8);
  v10 = MEMORY[0x1EEE9AC00](v236);
  v229 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v235 = &v219 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v249 = (&v219 - v14);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901B0);
  v254 = *(v257 - 8);
  v15 = MEMORY[0x1EEE9AC00](v257);
  v267 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v221 = &v219 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v219 - v19;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
  MEMORY[0x1EEE9AC00](v248);
  v247 = &v219 - v20;
  v258 = sub_1B77FF4F8();
  v250 = *(v258 - 8);
  v21 = MEMORY[0x1EEE9AC00](v258);
  v253 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v233 = &v219 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v251 = &v219 - v25;
  v241 = type metadata accessor for LocalizedURLMap();
  v26 = MEMORY[0x1EEE9AC00](v241);
  v240 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v252 = &v219 - v28;
  v29 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v268 = (&v219 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v259 = &v219 - v32;
  v33 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0);
  v256 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v270 = (&v219 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D8);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  *&v261 = &v219 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v260 = (&v219 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901E0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v255 = (&v219 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901E8);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v219 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v219 - v50;
  v276 = MEMORY[0x1E69E7CD0];
  v52 = a1[4];
  v53 = a1[5];
  v242 = a1;
  if (v53)
  {

    sub_1B724E408(v273, v52, v53);

    a1 = v242;
  }

  v223 = v53;
  v222 = v52;
  v54 = 0;
  v275 = MEMORY[0x1E69E7CC0];
  v55 = a1[6];
  v56 = *(v55 + 16);
  v265 = (v43 + 48);
  v266 = (v43 + 56);
  v234 = MEMORY[0x1E69E7CC0];
  v263 = v51;
  v264 = MEMORY[0x1E69E7CC0];
  v262 = v42;
  while (1)
  {
    if (v54 == v56)
    {
      v57 = 1;
      v58 = v56;
    }

    else
    {
      if (v54 >= *(v55 + 16))
      {
        goto LABEL_105;
      }

      v58 = v54 + 1;
      v59 = v55 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v54;
      v60 = *(v42 + 48);
      v61 = v255;
      *v255 = v54;
      sub_1B7263498(v59, v61 + v60, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
      sub_1B722376C(v61, v48, &qword_1EB9901E0);
      v57 = 0;
    }

    (*v266)(v48, v57, 1, v42);
    sub_1B722376C(v48, v51, &qword_1EB9901E8);
    if ((*v265)(v51, 1, v42) == 1)
    {
      break;
    }

    v62 = *v51;
    v63 = v270;
    sub_1B726332C(v51 + *(v42 + 48), v270, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment();
    v49 = sub_1B7263498(v63, v36, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    if (v62 < -32768)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v62 >= 0x8000)
    {
      goto LABEL_101;
    }

    v64 = v55;
    v65 = v48;
    v66 = v271;

    v67 = v36;
    v68 = sub_1B72DCF0C(v36, v62, v66, v269);

    v69 = v68;
    MEMORY[0x1B8CA4F20]();
    if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v275 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v264 = v275;
    v70 = v270;
    v71 = v270[5];
    if (v71)
    {
      v72 = v270[4];

      sub_1B724E408(v273, v72, v71);

      v49 = sub_1B7263500(v70, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    }

    else
    {
      sub_1B7263500(v270, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    }

    v36 = v67;
    v48 = v65;
    v55 = v64;
    v42 = v262;
    v51 = v263;
    v54 = v58;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v273[2] = 0;
  v274 = MEMORY[0x1E69E7CC0];
  v273[0] = v242[7];
  v273[1] = 0;

  v74 = 0;
  v75 = 72;
  v266 = v73;
  v76 = v259;
  v77 = v271;
LABEL_19:
  v78 = v261;
  sub_1B7243E70(v261);
  v79 = v78;
  v80 = v260;
  sub_1B722376C(v79, v260, &qword_1EB9901D8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901F0);
  if ((*(*(v51 - 8) + 48))(v80, 1, v51) != 1)
  {
    v81 = *v80;
    sub_1B726332C(v80 + *(v51 + 48), v76, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    v51 = type metadata accessor for ManagedApplePayMerchantTokenPastPayment();
    v49 = sub_1B7263498(v76, v268, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    if (v81 < -32768)
    {
      goto LABEL_102;
    }

    if (v81 < 0x8000)
    {
      v270 = v74;

      v82 = v269;
      v83 = ManagedApplePayMerchantTokenPastPayment.__allocating_init(_:atIndex:usageInformationPackage:context:)(v268, v81, v77, v82);
      MEMORY[0x1B8CA4F20]();
      if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v84 = 0;
      v266 = v274;
      v85 = *(v76 + 16);
      v86 = *(v85 + 16);
      v48 = v85 - 24;
      v87 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v88 = v48 + 72 * v84;
      while (1)
      {
        if (v86 == v84)
        {
          sub_1B7262E6C(v87);

          v76 = v259;
          sub_1B7263500(v259, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
          v74 = v270;
          goto LABEL_19;
        }

        if (v84 >= *(v85 + 16))
        {
          break;
        }

        v89 = (v88 + 72);
        ++v84;
        v90 = *(v88 + 80);
        v88 += 72;
        if (v90)
        {
          v91 = *v89;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_1B723E180(0, *(v87 + 2) + 1, 1, v87);
          }

          v93 = *(v87 + 2);
          v92 = *(v87 + 3);
          if (v93 >= v92 >> 1)
          {
            v87 = sub_1B723E180((v92 > 1), v93 + 1, 1, v87);
          }

          *(v87 + 2) = v93 + 1;
          v94 = &v87[16 * v93];
          *(v94 + 4) = v91;
          *(v94 + 5) = v90;
          v77 = v271;
          v75 = 72;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_88:

      v268 = 0;
      v192 = v264;
LABEL_89:
      v193 = *(*(v77 + 16) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_developmentLocalization + 8);
      v194 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
      (v87)(v229, v75 + *(v194 + 40), v236);
      sub_1B7205588(v75 + *(v194 + 44), v231, &qword_1EB98EBD0);
      v195 = objc_allocWithZone(v224);

      v196 = [v195 initWithContext_];
      [v196 setDecodingVersion_];
      v197 = sub_1B77FF8B8();
      [v196 setDecodingDate_];

      v198 = sub_1B7800838();
      [v196 setMerchantTokenIdentifier_];

      [v196 setMerchantName_];
      if (v223)
      {
        v199 = sub_1B7800838();
      }

      else
      {
        v199 = 0;
      }

      [v196 setMerchantLogoName_];

      sub_1B7240268(v192, type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment);

      v200 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v201 = sub_1B7800C18();

      v202 = [v200 initWithArray_];

      [v196 setUpcomingPaymentObjects_];
      sub_1B7240268(v266, type metadata accessor for ManagedApplePayMerchantTokenPastPayment);

      v203 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v204 = sub_1B7800C18();

      v205 = [v203 initWithArray_];

      [v196 setPastPaymentObjects_];
      [v196 setOtherUsageDescription_];
      if (v193)
      {
        v206 = sub_1B7800838();
      }

      else
      {
        v206 = 0;
      }

      v207 = v236;
      [v196 setDevelopmentLocalization_];

      sub_1B7240268(v234, type metadata accessor for ManagedApplePayMerchantTokenResource);

      v208 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v209 = sub_1B7800C18();

      v210 = [v208 initWithArray_];

      [v196 setResourceObjects_];
      v211 = v229;
      v212 = sub_1B77FF8B8();
      [v196 setModificationDate_];

      v213 = v231;
      v214 = v226;
      sub_1B7205588(v231, v226, &qword_1EB98EBD0);
      v215 = v230;
      if ((*(v230 + 48))(v214, 1, v207) == 1)
      {
        v216 = 0;
      }

      else
      {
        v216 = sub_1B77FF8B8();
        (*(v215 + 8))(v214, v207);
      }

      [v196 setExpirationDate_];

      v217 = *(v215 + 8);
      v217(v232, v207);
      sub_1B7205418(v213, &qword_1EB98EBD0);
      v217(v211, v207);
      v217(v235, v207);

      sub_1B7263500(v242, type metadata accessor for RawApplePayMerchantTokenUsageInformation);
      return v196;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v96 = v276 + 56;
  v95 = *(v276 + 56);
  v97 = 1 << *(v276 + 32);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v273[0] = MEMORY[0x1E69E7CC0];
  v48 = v98 & v95;
  v99 = (v97 + 63) >> 6;
  v268 = (v250 + 16);
  v263 = (v250 + 8);
  v228 = (v250 + 32);
  v255 = (v254 + 56);
  v246 = (v254 + 48);
  v243 = v276;

  v100 = 0;
  v227 = xmmword_1B7807CD0;
  v101 = v251;
  v239 = v96;
  v238 = v99;
  while (v48)
  {
LABEL_45:
    v111 = (*(v243 + 48) + ((v100 << 10) | (16 * __clz(__rbit64(v48)))));
    v112 = v111[1];
    v262 = *v111;
    v113 = *(v77 + 16);
    v265 = v112;

    v49 = GSMainScreenScaleFactor();
    if ((LODWORD(v114) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_107;
    }

    if (v114 <= -9.2234e18)
    {
      goto LABEL_108;
    }

    if (v114 >= 9.2234e18)
    {
      goto LABEL_109;
    }

    v244 = v100;
    v245 = v48;
    MEMORY[0x1EEE9AC00](v49);
    v51 = v101;
    v115 = v262;
    *(&v219 - 4) = v113;
    *(&v219 - 3) = v115;
    *(&v219 - 2) = v265;
    *(&v219 - 1) = v116;
    v117 = *(v113 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v48 = v258;
    *&v261 = *v268;
    v118 = (v261)(v101, v113 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v258);
    MEMORY[0x1EEE9AC00](v118);
    *(&v219 - 4) = v101;
    *(&v219 - 3) = sub_1B7262DC4;
    *(&v219 - 2) = (&v219 - 6);
    os_unfair_lock_lock((v117 + 24));
    v119 = v252;
    sub_1B7262DE4((v117 + 16), v252);
    v49 = (v117 + 24);
    if (v74)
    {
      goto LABEL_110;
    }

    os_unfair_lock_unlock(v49);
    (*v263)(v51, v48);
    v120 = v240;
    sub_1B7263498(v119, v240, type metadata accessor for LocalizedURLMap);
    v121 = v51;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v270 = 0;
      v122 = *v120 + 64;
      v123 = 1 << *(*v120 + 32);
      if (v123 < 64)
      {
        v124 = ~(-1 << v123);
      }

      else
      {
        v124 = -1;
      }

      v125 = v124 & *(*v120 + 64);
      v126 = (v123 + 63) >> 6;
      v260 = *v120;

      v127 = 0;
      v237 = MEMORY[0x1E69E7CC0];
      v51 = v119;
      v101 = v121;
      v259 = v122;
      v256 = v126;
LABEL_54:
      v128 = v127;
      if (!v125)
      {
        goto LABEL_56;
      }

      do
      {
        v127 = v128;
LABEL_59:
        v129 = __clz(__rbit64(v125));
        v125 &= v125 - 1;
        v130 = v129 | (v127 << 6);
        v131 = (v260[6] + 16 * v130);
        v132 = *v131;
        v133 = v131[1];
        v48 = *(v248 + 48);
        v134 = v247;
        v135 = v258;
        v136 = v261;
        (v261)(&v247[v48], v260[7] + *(v250 + 72) * v130, v258);
        *v134 = v132;
        *(v134 + 1) = v133;
        v137 = v257;
        v138 = *(v257 + 64);
        v139 = v249;
        v140 = v265;
        *v249 = v262;
        v139[1] = v140;
        v139[2] = v132;
        v139[3] = v133;
        v141 = v139;
        v136(v139 + v138, &v134[v48], v135);
        (*v255)(v141, 0, 1, v137);
        swift_bridgeObjectRetain_n();

        sub_1B7205418(v134, &qword_1EB9901D0);
        if ((*v246)(v141, 1, v137) != 1)
        {
          v142 = v220;
          sub_1B722376C(v141, v220, &qword_1EB9901B0);
          sub_1B722376C(v142, v221, &qword_1EB9901B0);
          v143 = v237;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101 = v251;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v237 = sub_1B723E524(0, v143[2] + 1, 1, v143);
          }

          v51 = v252;
          v122 = v259;
          v126 = v256;
          v146 = v237[2];
          v145 = v237[3];
          if (v146 >= v145 >> 1)
          {
            v237 = sub_1B723E524(v145 > 1, v146 + 1, 1, v237);
          }

          v147 = v237;
          v237[2] = v146 + 1;
          v49 = sub_1B722376C(v221, v147 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v146, &qword_1EB9901B0);
          goto LABEL_54;
        }

        v49 = sub_1B7205418(v141, &qword_1EB9901C8);
        v128 = v127;
        v101 = v251;
        v51 = v252;
        v122 = v259;
        v126 = v256;
      }

      while (v125);
LABEL_56:
      while (1)
      {
        v127 = v128 + 1;
        if (__OFADD__(v128, 1))
        {
          break;
        }

        if (v127 >= v126)
        {

          sub_1B7263500(v51, type metadata accessor for LocalizedURLMap);

          v74 = v270;
          v77 = v271;
          v109 = v237;
          goto LABEL_39;
        }

        v125 = *(v122 + 8 * v127);
        ++v128;
        if (v125)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

    v102 = *v228;
    v103 = v120;
    v104 = v233;
    (*v228)(v233, v103, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901A8);
    v105 = (*(v254 + 80) + 32) & ~*(v254 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v227;
    v106 = (v51 + v105);
    v107 = *(v257 + 64);
    v108 = v265;
    *v106 = v262;
    v106[1] = v108;
    v106[2] = 0;
    v106[3] = 0;
    v102((v51 + v105 + v107), v104, v48);
    sub_1B7263500(v119, type metadata accessor for LocalizedURLMap);
    v109 = v51;
    v101 = v121;
LABEL_39:
    v48 = (v245 - 1) & v245;
    v49 = sub_1B7244060(v109);
    v96 = v239;
    v99 = v238;
    v100 = v244;
  }

  while (1)
  {
    v110 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if (v110 >= v99)
    {

      v149 = v273[0];
      v273[0] = MEMORY[0x1E69E7CC0];
      v150 = *(v149 + 16);
      if (v150)
      {
        v51 = 0;
        v234 = MEMORY[0x1E69E7CC0];
        v151 = &qword_1EB9901B0;
        v265 = v150;
        v260 = (v150 - 1);
        v48 = &unk_1B780C080;
        *&v148 = 136315394;
        v261 = v148;
        v262 = v149;
        while (v51 < *(v149 + 16))
        {
          v152 = v267;
          v153 = v151;
          sub_1B7205588(v149 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v51, v267, v151);
          v270 = (v51 + 1);
          v154 = *(v152 + 24);
          v155 = *(v257 + 64);
          v156 = sub_1B77FF518();
          v158 = v74;
          if (v74)
          {
            if (qword_1EB98EA50 != -1)
            {
              swift_once();
            }

            v159 = sub_1B78000B8();
            __swift_project_value_buffer(v159, qword_1EB994870);
            v160 = v253;
            v161 = v258;
            (*v268)(v253, v267 + v155, v258);
            v162 = v158;
            v163 = sub_1B7800098();
            v164 = sub_1B78011D8();

            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v167 = swift_slowAlloc();
              v272 = v167;
              *v165 = v261;
              sub_1B7262E04(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
              v168 = sub_1B7802068();
              v169 = v160;
              v171 = v170;
              (*v263)(v169, v161);
              v172 = sub_1B71A3EF8(v168, v171, &v272);

              *(v165 + 4) = v172;
              *(v165 + 12) = 2112;
              v173 = v158;
              v174 = _swift_stdlib_bridgeErrorToNSError();
              *(v165 + 14) = v174;
              *v166 = v174;
              _os_log_impl(&dword_1B7198000, v163, v164, "Failed to read contents of resource. url=%s, error=%@", v165, 0x16u);
              sub_1B7205418(v166, &qword_1EB9910D0);
              MEMORY[0x1B8CA7A40](v166, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v167);
              v175 = v167;
              v149 = v262;
              MEMORY[0x1B8CA7A40](v175, -1, -1);
              MEMORY[0x1B8CA7A40](v165, -1, -1);
            }

            else
            {

              (*v263)(v160, v161);
            }

            v77 = v271;
            v151 = v153;
            v74 = 0;
            v48 = &unk_1B780C080;
            v49 = sub_1B7205418(v267, v153);
            v51 = v270;
            if (v265 == v270)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v259 = v157;
            v176 = v156;
            v177 = objc_allocWithZone(type metadata accessor for ManagedApplePayMerchantTokenResource());
            v178 = [v177 initWithContext_];
            v179 = sub_1B7800838();
            [v178 setName_];

            if (v154)
            {
              v180 = sub_1B7800838();
            }

            else
            {
              v180 = 0;
            }

            v77 = v271;
            [v178 setLocalization_];

            v181 = v259;
            v182 = sub_1B77FF598();
            [v178 setData_];

            sub_1B720A388(v176, v181);
            v151 = v153;
            v48 = &unk_1B780C080;
            v183 = sub_1B7205418(v267, v153);
            MEMORY[0x1B8CA4F20](v183);
            if (*((v273[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B7800C58();
            }

            v49 = sub_1B7800C88();
            v234 = v273[0];
            v184 = v260 == v51;
            v74 = 0;
            v149 = v262;
            v51 = v270;
            if (v184)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_106;
      }

LABEL_85:

      v87 = *(v230 + 16);
      v185 = (v87)(v235, v232, v236);
      v75 = v242;
      v186 = v242[1];
      v267 = *v242;
      v265 = v186;
      MEMORY[0x1EEE9AC00](v185);
      *(&v219 - 4) = v187;
      *(&v219 - 3) = v188;
      *(&v219 - 2) = 0xD000000000000010;
      *(&v219 - 1) = 0x80000001B7876290;
      v189 = sub_1B723940C(sub_1B7262E4C, (&v219 - 6));
      v270 = v189;
      v190 = *(v75 + 72);
      if (!v190)
      {
        goto LABEL_88;
      }

      v263 = &v219;
      MEMORY[0x1EEE9AC00](v189);
      *(&v219 - 4) = v191;
      *(&v219 - 3) = v190;
      *(&v219 - 2) = 0xD000000000000010;
      *(&v219 - 1) = 0x80000001B7876290;

      v192 = v264;

      v268 = sub_1B723940C(sub_1B726357C, (&v219 - 6));

      goto LABEL_89;
    }

    v48 = *(v96 + 8 * v110);
    ++v100;
    if (v48)
    {
      v100 = v110;
      goto LABEL_45;
    }
  }

LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  os_unfair_lock_unlock(v49);
  result = (*v263)(v51, v48);
  __break(1u);
  return result;
}

uint64_t sub_1B7243E70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901F0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_1B7263498(v13, v7 + v14, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1B722376C(v7, a1, &qword_1EB9901F0);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7244060(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1B723E524(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901B0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B7244198(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B723E73C(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B724428C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B723E180(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B72443EC(uint64_t result)
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

  result = sub_1B723ED94(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

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

uint64_t sub_1B7244510(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B7244644(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B7244788(uint64_t result)
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

  result = sub_1B723F198(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_1B72448AC(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B72449B0(uint64_t result)
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

  result = sub_1B723F888(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

uint64_t sub_1B7244AB4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1B7801958();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1B7801958();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B725F13C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1B7244BAC(uint64_t *a1, uint64_t a2, void *(*a3)(void *__return_ptr, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*a1)
  {
    v31 = a4;
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EDAF6550);
    (*(v11 + 16))(v13, a2, v10);
    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = a3;
      v19 = v18;
      v28 = swift_slowAlloc();
      v32 = v28;
      *v19 = 136315138;
      sub_1B7262E04(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
      v20 = sub_1B7802068();
      v30 = v4;
      v22 = v21;
      (*(v11 + 8))(v13, v10);
      v23 = sub_1B71A3EF8(v20, v22, &v32);
      v5 = v30;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B7198000, v16, v17, "Reading already closed bundle at %s", v19, 0xCu);
      v24 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
      v25 = v19;
      a3 = v29;
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  result = a3(&v33, v14);
  if (!v5)
  {
    return v33;
  }

  return result;
}

uint64_t sub_1B7244E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*a1)
  {
    v27 = a5;
    v28 = a4;
    v29 = a3;
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EDAF6550);
    (*(v11 + 16))(v13, a2, v10);
    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v18 = 136315138;
      sub_1B7262E04(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
      v19 = sub_1B7802068();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v22 = sub_1B71A3EF8(v19, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B7198000, v16, v17, "Reading already closed bundle at %s", v18, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    a3 = v29;
  }

  return a3(v14);
}

uint64_t sub_1B724512C(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*a1)
  {
    v32 = a4;
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EDAF6550);
    (*(v11 + 16))(v13, a2, v10);
    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a3;
      v19 = v18;
      v29 = swift_slowAlloc();
      v33 = v29;
      *v19 = 136315138;
      sub_1B7262E04(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
      v20 = sub_1B7802068();
      v31 = v4;
      v22 = v21;
      (*(v11 + 8))(v13, v10);
      v23 = sub_1B71A3EF8(v20, v22, &v33);
      v5 = v31;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B7198000, v16, v17, "Reading already closed bundle at %s", v19, 0xCu);
      v24 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
      v25 = v19;
      a3 = v30;
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  a3(&v34, v14);
  if (!v5)
  {
    v26 = v34;
  }

  return v26 & 1;
}

uint64_t sub_1B72453F8(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1B725AFC4(v10, a3);
  return sub_1B7801B78();
}

unint64_t sub_1B72454A4(uint64_t a1)
{
  v2 = sub_1B78022E8();

  return sub_1B7246078(a1, v2);
}

unint64_t sub_1B72454E8(uint64_t a1)
{
  sub_1B77FFA18();
  v2 = MEMORY[0x1E69695A8];
  sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
  v3 = sub_1B7800758();
  return sub_1B7246EC0(a1, v3, MEMORY[0x1E69695A8], &qword_1EB99DBE0, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1B72455C0(unsigned __int16 a1)
{
  sub_1B78022F8();
  sub_1B7802328();
  v2 = sub_1B7802368();

  return sub_1B72460E4(a1, v2);
}

uint64_t sub_1B724562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1B78022F8();
  sub_1B7800798();
  v5 = sub_1B7802368();

  return a3(a1, a2, v5);
}

unint64_t sub_1B72456B0(uint64_t a1)
{
  sub_1B7801878();
  v2 = sub_1B7800758();
  return sub_1B7246154(a1, v2);
}

unint64_t sub_1B7245720(uint64_t a1)
{
  sub_1B77FEF58();
  v2 = MEMORY[0x1E6968B10];
  sub_1B7262E04(&qword_1EB990208, 255, MEMORY[0x1E6968B10]);
  v3 = sub_1B7800758();
  return sub_1B7246EC0(a1, v3, MEMORY[0x1E6968B10], &qword_1EB990210, v2, MEMORY[0x1E6968B20]);
}

unint64_t sub_1B72457F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  v8 = sub_1B7802368();

  return sub_1B7246220(a1, a2, a3, a4, v8);
}

unint64_t sub_1B7245898(uint64_t a1)
{
  v2 = sub_1B78019C8();

  return sub_1B7246320(a1, v2);
}

unint64_t sub_1B72458DC(uint64_t a1)
{
  v2 = sub_1B7801548();

  return sub_1B72463E8(a1, v2);
}

unint64_t sub_1B7245920(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7802328();
  v2 = sub_1B7802368();
  return sub_1B72468BC(a1, v2);
}

unint64_t sub_1B7245988(uint64_t a1)
{
  sub_1B7800868();
  sub_1B78022F8();
  sub_1B7800798();
  v2 = sub_1B7802368();

  return sub_1B724692C(a1, v2);
}

unint64_t sub_1B7245A18(__n128 a1, __n128 a2)
{
  sub_1B78022F8();
  sub_1B7262D38(a1, a2);
  v2 = sub_1B7802368();

  return sub_1B72464BC(v2, a1, a2);
}

unint64_t sub_1B7245A78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B78022F8();
  if (!a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x1B8CA6620](v6);
    sub_1B7800798();
    goto LABEL_7;
  }

  MEMORY[0x1B8CA6620](2);
  sub_1B7345D5C(v9, a1);
LABEL_7:
  v7 = sub_1B7802368();

  return sub_1B724653C(a1, a2, a3, v7);
}

unint64_t sub_1B7245B3C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  v4 = sub_1B7802368();

  return sub_1B7246804(a1, a2, v4);
}

unint64_t sub_1B7245BD4(unsigned __int8 a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1);
  v2 = sub_1B7802368();
  return sub_1B72468BC(a1, v2);
}

unint64_t sub_1B7245C3C(uint64_t a1)
{
  sub_1B78022F8();
  type metadata accessor for CFString(0);
  sub_1B7262E04(&qword_1EB98FD08, 255, type metadata accessor for CFString);
  sub_1B77FFDE8();
  v2 = sub_1B7802368();
  return sub_1B7246A30(a1, v2);
}

unint64_t sub_1B7245CF0(unsigned __int8 *a1)
{
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  v2 = sub_1B7802368();

  return sub_1B7246B40(a1, v2);
}

unint64_t sub_1B7245D7C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B7802318();
  if (a2)
  {
    sub_1B7800798();
  }

  v4 = sub_1B7802368();

  return sub_1B7246DF4(a1, a2, v4);
}

unint64_t sub_1B7245E10(uint64_t a1)
{
  sub_1B77FF988();
  v2 = MEMORY[0x1E6969530];
  sub_1B7262E04(&qword_1EB98EBB8, 255, MEMORY[0x1E6969530]);
  v3 = sub_1B7800758();
  return sub_1B7246EC0(a1, v3, MEMORY[0x1E6969530], &qword_1EB98FAC0, v2, MEMORY[0x1E6969550]);
}

unint64_t sub_1B7245EE8(uint64_t a1)
{
  sub_1B77FF4F8();
  v2 = MEMORY[0x1E6968FB0];
  sub_1B7262E04(&qword_1EB98FF98, 255, MEMORY[0x1E6968FB0]);
  v3 = sub_1B7800758();
  return sub_1B7246EC0(a1, v3, MEMORY[0x1E6968FB0], &qword_1EB990310, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1B7245FC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B78020F8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7246078(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B72460E4(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B7246154(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B7801878();
    do
    {
      if (sub_1B7800828())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7246220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1B78020F8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1B78020F8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1B7246320(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B72238E4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CA5CF0](v9, a1);
      sub_1B720494C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B72463E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B7205540(0, &qword_1EDAF6440);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B7801558();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B72464BC(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(*(v3 + 48) + 32 * result), a2), vceqq_f64(*(*(v3 + 48) + 32 * result + 16), a3)))))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B724653C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v22 = ~v5;
    while (1)
    {
      v10 = *(v4 + 48) + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!*(v10 + 16))
      {
        break;
      }

      if (v13 != 1)
      {
        if (a3 != 2)
        {
LABEL_4:
          sub_1B72630BC(v12, v11, v13);
          sub_1B72630BC(a1, a2, a3);
          sub_1B72630DC(v12, v11, v13);
          sub_1B72630DC(a1, a2, a3);
          goto LABEL_5;
        }

        sub_1B72630BC(v12, v11, 2u);
        sub_1B72630BC(v12, v11, 2u);
        sub_1B72630BC(a1, a2, 2u);
        v16 = sub_1B72F4734(v12, a1);
        sub_1B72630DC(v12, v11, 2u);
        sub_1B72630DC(v12, v11, 2u);
        v17 = a1;
        v18 = a2;
        v19 = 2;
        goto LABEL_22;
      }

      if (a3 != 1)
      {
        goto LABEL_4;
      }

      if (v12 == a1 && v11 == a2)
      {
        goto LABEL_25;
      }

      v15 = sub_1B78020F8();
      sub_1B72630BC(v12, v11, 1u);
      sub_1B72630BC(a1, a2, 1u);
      sub_1B72630DC(v12, v11, 1u);
      sub_1B72630DC(a1, a2, 1u);
      if (v15)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v22;
      if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (a3)
    {
      goto LABEL_4;
    }

    if (v12 == a1 && v11 == a2)
    {
LABEL_25:
      sub_1B72630BC(a1, a2, v13);
      sub_1B72630BC(a1, a2, v13);
      sub_1B72630DC(a1, a2, v13);
      sub_1B72630DC(a1, a2, v13);
      return v6;
    }

    v16 = sub_1B78020F8();
    sub_1B72630BC(v12, v11, 0);
    sub_1B72630BC(a1, a2, 0);
    sub_1B72630DC(v12, v11, 0);
    v17 = a1;
    v18 = a2;
    v19 = 0;
LABEL_22:
    sub_1B72630DC(v17, v18, v19);
    if (v16)
    {
      return v6;
    }

    goto LABEL_5;
  }

  return v6;
}

unint64_t sub_1B7246804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (sub_1B78020F8())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B72468BC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B724692C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B7800868();
      v8 = v7;
      if (v6 == sub_1B7800868() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B78020F8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B7246A30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B7262E04(&qword_1EB98FD08, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B77FFDD8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7246B40(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v39 = a1[80];
    v8 = *(a1 + 2);
    v52 = *(a1 + 1);
    v9 = *(a1 + 4);
    v46 = a1[40];
    v41 = *(a1 + 6);
    v45 = *(a1 + 7);
    v40 = *(a1 + 8);
    v42 = *(a1 + 9);
    v43 = *(a1 + 3);
    v10 = *(v2 + 48);
    v50 = v9;
    v51 = v8;
    v44 = v10;
    do
    {
      v11 = (v10 + 88 * v5);
      if (*v11 != v7)
      {
        goto LABEL_4;
      }

      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      v14 = *(v11 + 4);
      v15 = v11[40];
      v17 = *(v11 + 6);
      v16 = *(v11 + 7);
      v18 = *(v11 + 8);
      v19 = *(v11 + 9);
      v20 = v11[80];
      if (v12)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        if (*(v11 + 1) != v52 || v12 != v8)
        {
          v47 = *(v11 + 9);
          v48 = *(v11 + 8);
          v22 = v7;
          v23 = v6;
          v24 = v3;
          v25 = v11[80];
          v26 = *(v11 + 7);
          v27 = *(v11 + 6);
          v28 = sub_1B78020F8();
          v17 = v27;
          v16 = v26;
          v20 = v25;
          v3 = v24;
          v6 = v23;
          v7 = v22;
          v19 = v47;
          v18 = v48;
          v10 = v44;
          v9 = v50;
          v8 = v51;
          if ((v28 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      if (v14)
      {
        if (!v9)
        {
          goto LABEL_4;
        }

        if (v13 != v43 || v14 != v9)
        {
          v30 = v20;
          v49 = v16;
          v31 = v17;
          v32 = sub_1B78020F8();
          v16 = v49;
          v9 = v50;
          v8 = v51;
          if ((v32 & 1) == 0)
          {
            goto LABEL_4;
          }

          v17 = v31;
          v20 = v30;
        }
      }

      else if (v9)
      {
        goto LABEL_4;
      }

      if (v15 == v46)
      {
        if (v16)
        {
          if (!v45)
          {
            goto LABEL_4;
          }

          if (v17 != v41 || v16 != v45)
          {
            v34 = v20;
            v35 = sub_1B78020F8();
            v20 = v34;
            v9 = v50;
            v8 = v51;
            if ((v35 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v45)
        {
          goto LABEL_4;
        }

        if (v19)
        {
          if (!v42)
          {
            goto LABEL_4;
          }

          if (v18 != v40 || v19 != v42)
          {
            v36 = v20;
            v37 = sub_1B78020F8();
            v9 = v50;
            v8 = v51;
            if ((v37 & 1) == 0)
            {
              goto LABEL_4;
            }

            v20 = v36;
          }
        }

        else if (v42)
        {
          goto LABEL_4;
        }

        if (v20 == v39)
        {
          return v5;
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7246DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1B78020F8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B7246EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1B7262E04(v23, 255, v24);
      v19 = sub_1B7800828();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_1B7247064(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B7247110(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F428);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t sub_1B72471BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B72472B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F400);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1B7247350(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1B72473D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F198);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B724744C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990528);
  v34 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B72476F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990520);
  v30 = a2;
  result = sub_1B7801CC8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v20);
      result = sub_1B7802368();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7247984(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B77FEF58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F638);
  v52 = a2;
  result = sub_1B7801CC8();
  v10 = result;
  if (*(v8 + 16))
  {
    v57 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v48 = v2;
    v49 = (v6 + 16);
    v50 = v8;
    v51 = v6;
    v53 = (v6 + 32);
    v17 = result + 64;
    v18 = v58;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v51 + 72) * v26;
      v55 = *(v51 + 72);
      v56 = v23;
      if (v52)
      {
        (*v53)(v18, v27, v57);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v54 = v28[1];
        v31 = v28[2];
        v30 = v28[3];
      }

      else
      {
        (*v49)(v18, v27, v57);
        v32 = *(v8 + 56) + 32 * v26;
        v33 = *v32;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        v30 = *(v32 + 24);
        v36 = v30;
        v37 = v33;
        v54 = v34;
        v38 = v34;
        v31 = v35;
        v29 = v37;
      }

      sub_1B7262E04(&qword_1EB990208, 255, MEMORY[0x1E6968B10]);
      result = sub_1B7800758();
      v39 = -1 << *(v10 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v17 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v18 = v58;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v17 + 8 * v41);
          if (v45 != -1)
          {
            v19 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v40) & ~*(v17 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v18 = v58;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v53)(*(v10 + 48) + v55 * v19, v18, v57);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v54;
      *v20 = v29;
      v20[1] = v21;
      v20[2] = v31;
      v20[3] = v30;
      ++*(v10 + 16);
      v8 = v50;
      v15 = v56;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_34;
    }

    v46 = 1 << *(v8 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v12, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v46;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1B7247DA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990518);
  v35 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7800798();
      result = sub_1B7802368();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7248070(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1B77FF4F8();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F518);
  v42 = a2;
  result = sub_1B7801CC8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B72483F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4B8);
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 2 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7248670(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD00);
  result = sub_1B7801CC8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1B72051F0(v21, v31);
      }

      else
      {
        sub_1B719BDE4(v21, v31);
        v22 = v20;
      }

      sub_1B78022F8();
      type metadata accessor for CFString(0);
      sub_1B7262E04(&qword_1EB98FD08, 255, type metadata accessor for CFString);
      sub_1B77FFDE8();
      result = sub_1B7802368();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1B72051F0(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7248968(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F580);
  v35 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1B72051F0(v22, v36);
      }

      else
      {
        sub_1B719BDE4(v22, v36);
        v23 = v21;
      }

      sub_1B7800868();
      sub_1B78022F8();
      sub_1B7800798();
      v24 = sub_1B7802368();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1B72051F0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1B7248C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990400);
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
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
      v21 = (*(v5 + 48) + 32 * v20);
      v36 = v21[1];
      v37 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      sub_1B78022F8();
      v23 = *&v37;
      if (*&v37 == 0.0)
      {
        v23 = 0.0;
      }

      MEMORY[0x1B8CA6660](*&v23);
      v24 = *(&v37 + 1);
      if (*(&v37 + 1) == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x1B8CA6660](*&v24);
      v25 = *&v36;
      if (*&v36 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x1B8CA6660](*&v25);
      v26 = *(&v36 + 1);
      if (*(&v36 + 1) == 0.0)
      {
        v26 = 0.0;
      }

      MEMORY[0x1B8CA6660](*&v26);
      result = sub_1B7802368();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v36;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
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

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B7248F3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6D8);
  v33 = a2;
  result = sub_1B7801CC8();
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
        sub_1B72051F0(v24, v34);
      }

      else
      {
        sub_1B719BDE4(v24, v34);
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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
      result = sub_1B72051F0(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1B72491F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F220);
  v34 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7249494(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990308);
  v36 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if ((v36 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        goto LABEL_38;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v37 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        sub_1B72630BC(v23, v37, *(v22 + 16));
      }

      sub_1B78022F8();
      if (!v24)
      {
        break;
      }

      if (v24 == 1)
      {
        v26 = 1;
LABEL_21:
        MEMORY[0x1B8CA6620](v26);
        sub_1B7800798();
        goto LABEL_23;
      }

      MEMORY[0x1B8CA6620](2);
      sub_1B7345D5C(v38, v23);
LABEL_23:
      result = sub_1B7802368();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v37;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v26 = 0;
    goto LABEL_21;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7249794(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648);
  v37 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7249A7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F598);
  v39 = a2;
  result = sub_1B7801CC8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B7249E84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F438);
  v31 = a2;
  result = sub_1B7801CC8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v20);
      result = sub_1B7802368();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724A110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990358);
  v37 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v39 = *v23;
      if ((v37 & 1) == 0)
      {
        v25 = v22;
      }

      sub_1B7800868();
      sub_1B78022F8();
      sub_1B7800798();
      v26 = sub_1B7802368();

      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      v12 = v38;
      *v16 = v39;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724A3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4A8);
  v34 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        sub_1B7205200(v24);
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724A68C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F458);
  v44 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v5;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      if (v44)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 88 * v24;
        v27 = *v26;
        v47 = *(v26 + 8);
        v48 = *(v26 + 24);
        v46 = *(v26 + 40);
        v49 = *(v26 + 48);
        v50 = *(v26 + 64);
        v28 = *(v26 + 80);
        v45 = *(v25 + 8 * v24);
      }

      else
      {
        v29 = *(v5 + 48) + 88 * v24;
        v30 = *(v29 + 32);
        v31 = *(v29 + 48);
        v32 = *(v29 + 64);
        v28 = *(v29 + 80);
        v55 = v28;
        v53 = v31;
        v54 = v32;
        v33 = *(v29 + 16);
        *v52 = *v29;
        *&v52[16] = v33;
        *&v52[32] = v30;
        v34 = *(*(v5 + 56) + 8 * v24);
        v46 = BYTE8(v30);
        v49 = v31;
        v50 = v54;
        v47 = *&v52[8];
        v48 = *&v52[24];
        v27 = v52[0];
        sub_1B723C474(v52, v51);
        v45 = v34;
      }

      sub_1B78022F8();
      sub_1B7802328();
      sub_1B7802318();
      if (*(&v47 + 1))
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (*(&v48 + 1))
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      sub_1B7802318();
      if (*(&v49 + 1))
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (*(&v50 + 1))
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      result = sub_1B7802368();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v49;
        v16 = v50;
        v19 = v47;
        v18 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v49;
      v16 = v50;
      v19 = v47;
      v18 = v48;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = *(v7 + 48) + 88 * v15;
      *v20 = v27;
      *(v20 + 24) = v18;
      *(v20 + 8) = v19;
      *(v20 + 40) = v46;
      *(v20 + 48) = v17;
      *(v20 + 64) = v16;
      *(v20 + 80) = v28;
      *(*(v7 + 56) + 8 * v15) = v45;
      ++*(v7 + 16);
      v5 = v43;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_42;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724AAC8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MapsTransactionInsightResult(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3E8);
  v43 = a2;
  result = sub_1B7801CC8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B726332C(v27 + v28 * v24, v47, type metadata accessor for MapsTransactionInsightResult);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B7263498(v29 + v28 * v24, v47, type metadata accessor for MapsTransactionInsightResult);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1B726332C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for MapsTransactionInsightResult);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B724AF94(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_1B7801CC8();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1B724B374(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F260);
  v30 = a2;
  result = sub_1B7801CC8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724B604(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902A0);
  v39 = a2;
  result = sub_1B7801CC8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B7262E04(&qword_1EB98EBB8, 255, MEMORY[0x1E6969530]);
      result = sub_1B7800758();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B724B9E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F240);
  v38 = a2;
  result = sub_1B7801CC8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 56 * v21;
      if (v38)
      {
        v24 = *v23;
        v39 = *(v23 + 8);
        v25 = *(v23 + 32);
        v45 = *(v23 + 16);
        v46 = v25;
        v26 = *(v23 + 48);
      }

      else
      {
        v28 = *(v23 + 16);
        v27 = *(v23 + 32);
        v29 = *v23;
        v43 = *(v23 + 48);
        v41 = v28;
        v42 = v27;
        v40 = v29;
        v39 = *(&v29 + 1);
        v24 = v29;
        sub_1B7223834(&v40, v44);
        v45 = v41;
        v46 = v42;
        v26 = v43;
      }

      v47 = v26;
      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v39;
      v17 = v46;
      *(v16 + 16) = v45;
      *(v16 + 32) = v17;
      *(v16 + 48) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724BCFC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F238);
  v43 = a2;
  result = sub_1B7801CC8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B726332C(v27 + v28 * v24, v47, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B7263498(v29 + v28 * v24, v47, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1B726332C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B724C1A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F418);
  v35 = a2;
  result = sub_1B7801CC8();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v34 + 72);
      v23 = *(v7 + 56) + v22 * v21;
      v37 = *(*(v7 + 48) + 16 * v21);
      v24 = *(&v37 + 1);
      if (v35)
      {
        sub_1B726332C(v23, v36, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      }

      else
      {
        sub_1B7263498(v23, v36, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      }

      sub_1B78022F8();
      sub_1B7802318();
      if (v24)
      {
        sub_1B7800798();
      }

      result = sub_1B7802368();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v37;
      result = sub_1B726332C(v36, *(v9 + 56) + v22 * v17, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v3 = v9;
  return result;
}

uint64_t sub_1B724C534(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B77FF4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3D0);
  v39 = a2;
  result = sub_1B7801CC8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B7262E04(&qword_1EB98FF98, 255, MEMORY[0x1E6968FB0]);
      result = sub_1B7800758();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B724C950(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1B7801CC8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1B724CBE8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PredictedTransaction.StylingMetadata(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990388);
  v43 = a2;
  result = sub_1B7801CC8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B726332C(v27 + v28 * v24, v47, type metadata accessor for PredictedTransaction.StylingMetadata);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B7263498(v29 + v28 * v24, v47, type metadata accessor for PredictedTransaction.StylingMetadata);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1B726332C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for PredictedTransaction.StylingMetadata);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B724D0A0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1B7801CC8();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1B724D33C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2D8);
  v43 = a2;
  result = sub_1B7801CC8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B726332C(v27 + v28 * v24, v47, type metadata accessor for TransactionGroup.StylingMetadata);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B7263498(v29 + v28 * v24, v47, type metadata accessor for TransactionGroup.StylingMetadata);
      }

      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1B726332C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for TransactionGroup.StylingMetadata);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B724D7E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F278);
  v34 = a2;
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B724DA88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F310);
  result = sub_1B7801CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1B72051F0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1B72238E4(v23, &v36);
        sub_1B719BDE4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1B78019C8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1B72051F0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B724DD54(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1B7801CC8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1B724DFF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5B8);
  v40 = a2;
  result = sub_1B7801CC8();
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
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v25 = v22 | (v8 << 6);
      v26 = (*(v5 + 48) + 32 * v25);
      v49 = *v26;
      v48 = v26[1];
      v47 = v26[2];
      v46 = v26[3];
      v27 = *(v5 + 56) + 48 * v25;
      if (v40)
      {
        v28 = *v27;
        v29 = *(v27 + 1);
        v41 = *(v27 + 2);
        v43 = *(v27 + 3);
        v44 = *(v27 + 24);
        v42 = *(v27 + 8);
        v45 = *(v27 + 40);
      }

      else
      {
        v30 = *v27;
        v31 = *(v27 + 16);
        *&v50[25] = *(v27 + 25);
        *v50 = v30;
        *&v50[16] = v31;
        v45 = v50[40];
        v44 = *&v50[24];
        v42 = *&v50[8];
        v43 = BYTE3(v30);
        v41 = BYTE2(v30);
        v29 = BYTE1(v30);
        v28 = v30;
        sub_1B71B4C14(v50, v51);
      }

      sub_1B78022F8();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      sub_1B7802338();
      result = sub_1B7802368();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v48;
        v16 = v49;
        v19 = v46;
        v18 = v47;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v48;
      v16 = v49;
      v19 = v46;
      v18 = v47;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (*(v7 + 48) + 32 * v15);
      *v20 = v16;
      v20[1] = v17;
      v20[2] = v18;
      v20[3] = v19;
      v21 = *(v7 + 56) + 48 * v15;
      *v21 = v28;
      *(v21 + 1) = v29;
      *(v21 + 2) = v41;
      *(v21 + 3) = v43;
      *(v21 + 24) = v44;
      *(v21 + 8) = v42;
      *(v21 + 40) = v45;
      ++*(v7 + 16);
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v12 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if (v40)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B724E408(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B78022F8();
  sub_1B7800798();
  v8 = sub_1B7802368();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B7254B4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B724E558(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B77FE748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B7262E04(&qword_1EB98FFD0, 255, MEMORY[0x1E6967E70]);
  v33 = a2;
  v11 = sub_1B7800758();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1B7262E04(&qword_1EB98F1C8, 255, MEMORY[0x1E6967E70]);
      v21 = sub_1B7800828();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1B7254CCC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B724E840(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1B7800758();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1B7262E04(&qword_1EB99DBE0, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1B7800828();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1B7254F9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B724EB28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedFinHealthIncomeInsight();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904A8, &unk_1B780C388, type metadata accessor for ManagedFinHealthIncomeInsight, sub_1B76B27EC);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B27EC(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedFinHealthIncomeInsight();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B27EC, type metadata accessor for ManagedFinHealthIncomeInsight, &qword_1EB9904A8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724EDB0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedFinHealthTransactionEntityGroup();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904B0, &unk_1B780C390, type metadata accessor for ManagedFinHealthTransactionEntityGroup, sub_1B76B2800);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2800(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedFinHealthTransactionEntityGroup();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2800, type metadata accessor for ManagedFinHealthTransactionEntityGroup, &qword_1EB9904B0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724F038(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedTransactionIcon();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904B8, &unk_1B780C398, type metadata accessor for ManagedTransactionIcon, sub_1B76B2814);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2814(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedTransactionIcon();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2814, type metadata accessor for ManagedTransactionIcon, &qword_1EB9904B8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724F2C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedFinHealthTransactionInsight();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904C0, &unk_1B780C3A0, type metadata accessor for ManagedFinHealthTransactionInsight, sub_1B76B2828);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2828(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedFinHealthTransactionInsight();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2828, type metadata accessor for ManagedFinHealthTransactionInsight, &qword_1EB9904C0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724F548(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedUserTransactionInsight();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904C8, &unk_1B780C3A8, type metadata accessor for ManagedUserTransactionInsight, sub_1B76B283C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B283C(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedUserTransactionInsight();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B283C, type metadata accessor for ManagedUserTransactionInsight, &qword_1EB9904C8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724F7D0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedContactTransactionInsight();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904D0, &unk_1B780C3B0, type metadata accessor for ManagedContactTransactionInsight, sub_1B76B2850);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2850(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedContactTransactionInsight();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2850, type metadata accessor for ManagedContactTransactionInsight, &qword_1EB9904D0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724FA58(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedMapsTransactionInsight();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904D8, &unk_1B780C3B8, type metadata accessor for ManagedMapsTransactionInsight, sub_1B76B2864);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2864(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedMapsTransactionInsight();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2864, type metadata accessor for ManagedMapsTransactionInsight, &qword_1EB9904D8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B724FCE0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedTransactionInsights();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904E0, &unk_1B780C3C0, type metadata accessor for ManagedTransactionInsights, sub_1B76B2878);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2878(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedTransactionInsights();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2878, type metadata accessor for ManagedTransactionInsights, &qword_1EB9904E0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}