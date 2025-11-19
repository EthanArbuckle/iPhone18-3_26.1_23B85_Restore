uint64_t RawOrderApplication.init(storeIdentifier:launchURL:customProductPageIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for RawOrderApplication();
  v11 = *(v10 + 20);
  v12 = sub_1B77FF4F8();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  *a5 = a1;
  result = sub_1B727CBBC(a2, &a5[v11]);
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t type metadata accessor for RawOrderApplication()
{
  result = qword_1EDAF8748;
  if (!qword_1EDAF8748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderApplication.launchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawOrderApplication() + 20);

  return sub_1B7228664(v3, a1);
}

uint64_t RawOrderApplication.launchURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawOrderApplication() + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawOrderApplication.customProductPageIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderApplication() + 24));

  return v1;
}

uint64_t RawOrderApplication.customProductPageIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderApplication() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1B769725C(uint64_t a1)
{
  v2 = sub_1B7697B98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7697298(uint64_t a1)
{
  v2 = sub_1B7697B98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderApplication.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B000);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7697B98();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801FF8();
  if (!v1)
  {
    type metadata accessor for RawOrderApplication();
    v8[14] = 1;
    sub_1B77FF4F8();
    sub_1B7535C74(&qword_1EB98F700);
    sub_1B7801F38();
    v8[13] = 2;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderApplication.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B010);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v24 - v5;
  v7 = type metadata accessor for RawOrderApplication();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = sub_1B77FF4F8();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7697B98();
  v30 = v6;
  v13 = v31;
  sub_1B78023C8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v10 + v11, &unk_1EB994C70);
  }

  else
  {
    v25 = a1;
    v15 = v27;
    v14 = v28;
    v31 = v11;
    v34 = 0;
    v16 = v29;
    *v10 = sub_1B7801E78();
    v33 = 1;
    sub_1B7535C74(&qword_1EB98F730);
    sub_1B7801DB8();
    sub_1B727CBBC(v14, v10 + v31);
    v32 = 2;
    v17 = v30;
    v18 = sub_1B7801D78();
    v20 = v19;
    v21 = v16;
    v22 = (v10 + *(v7 + 24));
    (*(v15 + 8))(v17, v21);
    *v22 = v18;
    v22[1] = v20;
    sub_1B7697BEC(v10, v26);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_1B7461A7C(v10);
  }
}

uint64_t _s10FinanceKit19RawOrderApplicationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = type metadata accessor for RawOrderApplication();
  v14 = *(v26 + 20);
  v15 = *(v11 + 48);
  sub_1B7228664(a1 + v14, v13);
  sub_1B7228664(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B7228664(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1B7535C74(&qword_1EB990310);
      v18 = sub_1B7800828();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7205418(v13, &unk_1EB994C70);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB991C30);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1B7205418(v13, &unk_1EB994C70);
LABEL_11:
  v20 = *(v26 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B7697B98()
{
  result = qword_1EB99B008;
  if (!qword_1EB99B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B008);
  }

  return result;
}

uint64_t sub_1B7697BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderApplication();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7697C78()
{
  sub_1B7325908();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7697D20()
{
  result = qword_1EB99B018;
  if (!qword_1EB99B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B018);
  }

  return result;
}

unint64_t sub_1B7697D78()
{
  result = qword_1EB99B020;
  if (!qword_1EB99B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B020);
  }

  return result;
}

unint64_t sub_1B7697DD0()
{
  result = qword_1EB99B028;
  if (!qword_1EB99B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B028);
  }

  return result;
}

FinanceKit::BankConnectWebServiceTermsAndConditionsRequest __swiftcall BankConnectWebServiceTermsAndConditionsRequest.init(ids:languageIds:)(Swift::OpaquePointer ids, Swift::OpaquePointer languageIds)
{
  v2->_rawValue = ids._rawValue;
  v2[1]._rawValue = languageIds._rawValue;
  result.languageIds = languageIds;
  result.ids = ids;
  return result;
}

uint64_t BankConnectWebServiceTermsAndConditionsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t BankConnectWebServiceTermsAndConditionsRequest.makeJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t sub_1B7697FA8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B7697FE4()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

void static BankConnectWebServiceTermsAndConditionsResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v23 = v3;
    v11 = a3;
    v12 = [v10 statusCode];
    if (v12 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v13, v5);
      sub_1B77FE8C8();
      sub_1B76983F4();
      v14 = v23;
      sub_1B77FE8D8();
      if (v14)
      {

        type metadata accessor for FinanceNetworkError();
        sub_1B743DD44();
        swift_allocError();
        *v15 = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v20 = v12;
      type metadata accessor for FinanceNetworkError();
      sub_1B743DD44();
      swift_allocError();
      *v21 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    v17 = v16;
    v18 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v17 = v18;
    v17[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B76983F4()
{
  result = qword_1EB99B030;
  if (!qword_1EB99B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B030);
  }

  return result;
}

uint64_t sub_1B769849C()
{
  v1 = v0[12];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = xmmword_1B780B190;
  v5 = *v1;
  *(v4 + 32) = *v1;
  v6 = *(v3 + 8);
  v7 = v5;
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1B7698614;

  return v10(v4, v2, v3);
}

uint64_t sub_1B7698614(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1B7698854;
  }

  else
  {

    v4 = sub_1B7698730;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7698730()
{
  v1 = *(v0 + 120);
  if (*(v1 + 16))
  {
    sub_1B719B06C(v1 + 32, v0 + 56);

    sub_1B71E4C44((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    (*(v3 + 16))(v2, v3);
    if (v4)
    {

      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      v7 = (*(v6 + 8))(v5, v6) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {

    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7 & 1);
}

uint64_t sub_1B7698854()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t SoftwareLibrary.applicationsFor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ManagedECommerceOrderContent.associatedApplications.getter();
  v10[2] = a2;
  v10[3] = a3;
  v11 = v3;
  sub_1B75ECB14(sub_1B769893C, v10, v6);
  v8 = v7;

  return v8;
}

uint64_t SoftwareLibrary.application(forStoreIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  a4[4] = a2;
  a4[5] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 1);
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v4, a2);
  *a4 = v8;
  return result;
}

uint64_t SoftwareLibrary.bundleIdentifiersFor(storeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7698A5C, 0, 0);
}

uint64_t sub_1B7698A5C()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      --v2;
    }

    while (v2);
    v3 = v11;
  }

  v0[21] = v3;
  v10 = (*(v0[19] + 8) + **(v0[19] + 8));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1B7698C10;
  v7 = v0[19];
  v8 = v0[18];

  return v10(v3, v8, v7);
}

uint64_t sub_1B7698C10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1B7699060;
  }

  else
  {

    v4 = sub_1B7698D2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B7698D2C()
{
  v31 = v0;
  v1 = *(v0 + 23);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v29 = *(v0 + 23);
    while (v3 < *(v1 + 16))
    {
      sub_1B719B06C(v4, (v0 + 1));
      v6 = *(v0 + 5);
      v7 = *(v0 + 6);
      __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
      if ((*(v7 + 8))(v6, v7))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 1));
      }

      else
      {
        sub_1B71E4C44(v0 + 1, v0 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B71FE7E0(0, *(v5 + 16) + 1, 1);
          v5 = v30;
        }

        v9 = v2;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B71FE7E0((v10 > 1), v11 + 1, 1);
        }

        v13 = *(v0 + 10);
        v12 = *(v0 + 11);
        v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v13);
        v15 = *(v13 - 8);
        v16 = swift_task_alloc();
        (*(v15 + 16))(v16, v14, v13);
        sub_1B769A7E4(v11, v16, &v30, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);

        v2 = v9;
        v1 = v29;
        v5 = v30;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v17 = *(v5 + 16);
    if (v17)
    {
      v18 = v5 + 32;
      v19 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B719B06C(v18, (v0 + 6));
        v21 = *(v0 + 15);
        v22 = *(v0 + 16);
        __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
        v23 = (*(v22 + 16))(v21, v22);
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1((v0 + 6));
        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1B723E180(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_1B723E180((v26 > 1), v27 + 1, 1, v19);
          }

          *(v19 + 2) = v27 + 1;
          v20 = &v19[16 * v27];
          *(v20 + 4) = v23;
          *(v20 + 5) = v25;
        }

        v18 += 40;
        --v17;
      }

      while (v17);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v28 = *(v0 + 1);

    v28(v19);
  }
}

uint64_t sub_1B7699060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SoftwareLibrary.storeIdentifiersFor(bundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 136) = v7;
  *v7 = v3;
  v7[1] = sub_1B76991EC;

  return v9(a1, a2, a3);
}

uint64_t sub_1B76991EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7699320, 0, 0);
}

void sub_1B7699320()
{
  v67 = v0;
  v1 = *(v0 + 18);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v17 = *(v5 + 16);
    if (v17)
    {
      v18 = v5 + 32;
      v19 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B719B06C(v18, (v0 + 6));
        v21 = *(v0 + 15);
        v22 = *(v0 + 16);
        __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
        v23 = (*(v22 + 24))(v21, v22);
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1((v0 + 6));
        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1B723E180(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_1B723E180((v26 > 1), v27 + 1, 1, v19);
          }

          *(v19 + 2) = v27 + 1;
          v20 = &v19[16 * v27];
          *(v20 + 4) = v23;
          *(v20 + 5) = v25;
        }

        v18 += 40;
        --v17;
      }

      while (v17);

      v28 = *(v19 + 2);
      if (v28)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
      v28 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v28)
      {
LABEL_24:
        v29 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v29 >= *(v19 + 2))
          {
            goto LABEL_103;
          }

          v31 = &v19[16 * v29 + 32];
          v32 = *v31;
          v33 = v31[1];
          ++v29;
          v34 = HIBYTE(v33) & 0xF;
          v35 = v32 & 0xFFFFFFFFFFFFLL;
          if ((v33 & 0x2000000000000000) != 0)
          {
            v36 = HIBYTE(v33) & 0xF;
          }

          else
          {
            v36 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (!v36)
          {
            goto LABEL_88;
          }

          if ((v33 & 0x1000000000000000) == 0)
          {
            break;
          }

          v39 = sub_1B75D5E88(v32, v33, 10);
          v65 = v57;

          if ((v65 & 1) == 0)
          {
LABEL_91:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1B723FAE4(0, *(v30 + 2) + 1, 1, v30);
            }

            v58 = v30;
            v59 = *(v30 + 2);
            v60 = v58;
            v61 = *(v58 + 3);
            if (v59 >= v61 >> 1)
            {
              v60 = sub_1B723FAE4((v61 > 1), v59 + 1, 1, v60);
            }

            *(v60 + 2) = v59 + 1;
            v62 = &v60[8 * v59];
            v30 = v60;
            *(v62 + 4) = v39;
          }

LABEL_88:
          if (v29 == v28)
          {
            goto LABEL_99;
          }
        }

        if ((v33 & 0x2000000000000000) != 0)
        {
          v66[0] = v32;
          v66[1] = v33 & 0xFFFFFFFFFFFFFFLL;
          if (v32 == 43)
          {
            if (!v34)
            {
              goto LABEL_104;
            }

            if (--v34)
            {
              v39 = 0;
              v49 = v66 + 1;
              while (1)
              {
                v50 = *v49 - 48;
                if (v50 > 9)
                {
                  break;
                }

                v51 = 10 * v39;
                if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                {
                  break;
                }

                v39 = v51 + v50;
                if (__OFADD__(v51, v50))
                {
                  break;
                }

                ++v49;
                if (!--v34)
                {
                  goto LABEL_87;
                }
              }
            }
          }

          else if (v32 == 45)
          {
            if (!v34)
            {
              goto LABEL_106;
            }

            if (--v34)
            {
              v39 = 0;
              v43 = v66 + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  break;
                }

                v45 = 10 * v39;
                if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                {
                  break;
                }

                v39 = v45 - v44;
                if (__OFSUB__(v45, v44))
                {
                  break;
                }

                ++v43;
                if (!--v34)
                {
                  goto LABEL_87;
                }
              }
            }
          }

          else if (v34)
          {
            v39 = 0;
            v54 = v66;
            while (1)
            {
              v55 = *v54 - 48;
              if (v55 > 9)
              {
                break;
              }

              v56 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                break;
              }

              v39 = v56 + v55;
              if (__OFADD__(v56, v55))
              {
                break;
              }

              v54 = (v54 + 1);
              if (!--v34)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_86;
        }

        if ((v32 & 0x1000000000000000) != 0)
        {
          v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v37 = sub_1B7801B48();
        }

        v38 = *v37;
        if (v38 == 43)
        {
          if (v35 < 1)
          {
            goto LABEL_107;
          }

          v34 = v35 - 1;
          if (v35 == 1)
          {
            goto LABEL_86;
          }

          v39 = 0;
          if (v37)
          {
            v46 = v37 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                goto LABEL_86;
              }

              v48 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_86;
              }

              v39 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_86;
              }

              ++v46;
              if (!--v34)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else if (v38 == 45)
        {
          if (v35 < 1)
          {
            goto LABEL_105;
          }

          v34 = v35 - 1;
          if (v35 == 1)
          {
            goto LABEL_86;
          }

          v39 = 0;
          if (v37)
          {
            v40 = v37 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_86;
              }

              v42 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_86;
              }

              v39 = v42 - v41;
              if (__OFSUB__(v42, v41))
              {
                goto LABEL_86;
              }

              ++v40;
              if (!--v34)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else
        {
          if (!v35)
          {
LABEL_86:
            v39 = 0;
            LOBYTE(v34) = 1;
LABEL_87:
            if ((v34 & 1) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          }

          v39 = 0;
          if (v37)
          {
            do
            {
              v52 = *v37 - 48;
              if (v52 > 9)
              {
                goto LABEL_86;
              }

              v53 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_86;
              }

              v39 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                goto LABEL_86;
              }

              ++v37;
            }

            while (--v35);
          }
        }

        LOBYTE(v34) = 0;
        goto LABEL_87;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_99:

    v63 = *(v0 + 1);

    v63(v30);
    return;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v64 = *(v0 + 18);
  while (v3 < *(v1 + 16))
  {
    sub_1B719B06C(v4, (v0 + 1));
    v6 = *(v0 + 5);
    v7 = *(v0 + 6);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    if ((*(v7 + 8))(v6, v7))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 1));
    }

    else
    {
      sub_1B71E4C44(v0 + 1, v0 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66[0] = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B71FE7E0(0, *(v5 + 16) + 1, 1);
        v5 = v66[0];
      }

      v9 = v2;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B71FE7E0((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 10);
      v13 = *(v0 + 11);
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v12);
      v15 = *(v12 - 8);
      v16 = swift_task_alloc();
      (*(v15 + 16))(v16, v14, v12);
      sub_1B769A7E4(v11, v16, v66, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);

      v5 = v66[0];
      v2 = v9;
      v1 = v64;
    }

    ++v3;
    v4 += 40;
    if (v2 == v3)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}

uint64_t StoreSoftwareLibrary.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E69D49D8]) init];
  return v0;
}

uint64_t StoreSoftwareLibrary.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E69D49D8]) init];
  return v0;
}

uint64_t StoreSoftwareLibrary.items(forStoreIdentifiers:)(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B038);
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7699B2C, v1, 0);
}

uint64_t sub_1B7699B2C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 31;
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v10 = *(v1[34] + 112);
  sub_1B724092C(v1[33]);
  v7 = sub_1B7800C18();
  v1[38] = v7;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1B7699D24;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7800CE8();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B769A07C;
  v1[13] = &block_descriptor_20;
  [v10 getLibraryItemsForITunesStoreItemIdentifiers:v7 completionBlock:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B7699D24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_1B769A000;
  }

  else
  {
    v4 = sub_1B7699E44;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7699E44()
{
  v1 = *(v0 + 248);

  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

LABEL_9:
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v10 = MEMORY[0x1E69E7CC0];
  sub_1B71FE7E0(0, v2, 0);
  v3 = v10;
  v4 = v1 + 32;
  do
  {
    sub_1B719BDE4(v4, v0 + 184);
    sub_1B719BDE4(v0 + 184, v0 + 216);
    sub_1B769A898();
    swift_dynamicCast();
    v5 = *(v0 + 256);
    __swift_destroy_boxed_opaque_existential_1(v0 + 184);
    v7 = *(v10 + 16);
    v6 = *(v10 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1B71FE7E0((v6 > 1), v7 + 1, 1);
    }

    *(v0 + 168) = &type metadata for StoreSoftwareLibraryItem;
    *(v0 + 176) = &off_1F2F6CA30;
    *(v0 + 144) = v5;
    *(v10 + 16) = v7 + 1;
    sub_1B71E4C44((v0 + 144), v10 + 40 * v7 + 32);
    v4 += 32;
    --v2;
  }

  while (v2);

LABEL_10:

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_1B769A000()
{
  v1 = *(v0 + 304);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1B769A07C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B038);
    sub_1B7800CF8();
  }

  else
  {
    if (a2)
    {
      sub_1B7800C38();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B038);
    sub_1B7800D08();
  }
}

uint64_t StoreSoftwareLibrary.items(forBundleIdentifiers:)(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B038);
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B769A20C, v1, 0);
}

uint64_t sub_1B769A20C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 31;
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v10 = *(v1[34] + 112);
  sub_1B7240488(v1[33]);
  v7 = sub_1B7800C18();
  v1[38] = v7;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1B769A404;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7800CE8();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B769A07C;
  v1[13] = &block_descriptor_10;
  [v10 getLibraryItemForBundleIdentifiers:v7 completionBlock:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B769A404()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_1B769AC84;
  }

  else
  {
    v4 = sub_1B769AC78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t StoreSoftwareLibrary.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B769A590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721E658;

  return StoreSoftwareLibrary.items(forStoreIdentifiers:)(a1);
}

uint64_t sub_1B769A628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B72201C8;

  return StoreSoftwareLibrary.items(forBundleIdentifiers:)(a1);
}

uint64_t sub_1B769A6C0(void *a1, void *a2)
{
  if ([a1 valueForProperty_])
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1B72051F0(v6, &v7);
    swift_dynamicCast();
    return v3;
  }

  else
  {
    sub_1B726990C(v6);
    return 0;
  }
}

uint64_t sub_1B769A7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B71E4C44(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1B769A898()
{
  result = qword_1EB99B048;
  if (!qword_1EB99B048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB99B048);
  }

  return result;
}

uint64_t sub_1B769A8E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B769A92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SoftwareLibrary.items(forStoreIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FDB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SoftwareLibrary.items(forBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B769AC80;

  return v9(a1, a2, a3);
}

void __swiftcall RawOrderBarcode.init(altText:format:message:messageEncoding:)(FinanceKit::RawOrderBarcode *__return_ptr retstr, Swift::String_optional altText, FinanceKit::RawBarcodeFormat format, Swift::String message, Swift::String messageEncoding)
{
  v5 = *format;
  retstr->altText = altText;
  retstr->format = v5;
  retstr->message = message;
  retstr->messageEncoding = messageEncoding;
}

FinanceKit::RawBarcodeFormat_optional __swiftcall RawBarcodeFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawBarcodeFormat.rawValue.getter()
{
  v1 = 29297;
  v2 = 0x6365747A61;
  if (*v0 != 2)
  {
    v2 = 0x38323165646F63;
  }

  if (*v0)
  {
    v1 = 0x373134666470;
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

uint64_t sub_1B769AD7C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B769AE2C()
{
  sub_1B7800798();
}

uint64_t sub_1B769AEC8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B769AF80(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 29297;
  v4 = 0xE500000000000000;
  v5 = 0x6365747A61;
  if (*v1 != 2)
  {
    v5 = 0x38323165646F63;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x373134666470;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t RawOrderBarcode.altText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderBarcode.altText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderBarcode.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawOrderBarcode.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawOrderBarcode.messageEncoding.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawOrderBarcode.messageEncoding.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1B769B280(uint64_t a1)
{
  v2 = sub_1B769B914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B769B2BC(uint64_t a1)
{
  v2 = sub_1B769B914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderBarcode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B050);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v12 = *(v1 + 16);
  v7 = *(v1 + 24);
  v11[2] = *(v1 + 32);
  v11[3] = v7;
  v8 = *(v1 + 40);
  v11[0] = *(v1 + 48);
  v11[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B769B914();
  sub_1B78023F8();
  v18 = 0;
  v9 = v13;
  sub_1B7801EF8();
  if (!v9)
  {
    v17 = v12;
    v16 = 1;
    sub_1B769B968();
    sub_1B7801FC8();
    v15 = 2;
    sub_1B7801F78();
    v14 = 3;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderBarcode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B769B914();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = 0;
    v9 = sub_1B7801D78();
    v12 = v11;
    v24 = v9;
    v27 = 1;
    sub_1B769B9BC();
    sub_1B7801E48();
    v13 = v28;
    v26 = 2;
    v14 = sub_1B7801DF8();
    v16 = v15;
    v22 = v13;
    v23 = v14;
    v25 = 3;
    v17 = sub_1B7801DF8();
    v19 = v18;
    v20 = *(v6 + 8);
    v21 = v17;
    v20(v8, v5);
    *a2 = v24;
    *(a2 + 8) = v12;
    *(a2 + 16) = v22;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = v21;
    *(a2 + 48) = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t _s10FinanceKit15RawOrderBarcodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_1B72C29A0(v4, v10) & 1) == 0 || (v5 != v11 || v6 != v12) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v7 == v13 && v8 == v14)
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B769B914()
{
  result = qword_1EB99B058;
  if (!qword_1EB99B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B058);
  }

  return result;
}

unint64_t sub_1B769B968()
{
  result = qword_1EB99B060;
  if (!qword_1EB99B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B060);
  }

  return result;
}

unint64_t sub_1B769B9BC()
{
  result = qword_1EB99B070;
  if (!qword_1EB99B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B070);
  }

  return result;
}

unint64_t sub_1B769BA14()
{
  result = qword_1EB99B078;
  if (!qword_1EB99B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B078);
  }

  return result;
}

unint64_t sub_1B769BA6C()
{
  result = qword_1EB99B080;
  if (!qword_1EB99B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B080);
  }

  return result;
}

unint64_t sub_1B769BB04()
{
  result = qword_1EB99B090;
  if (!qword_1EB99B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B090);
  }

  return result;
}

unint64_t sub_1B769BB5C()
{
  result = qword_1EB99B098;
  if (!qword_1EB99B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B098);
  }

  return result;
}

unint64_t sub_1B769BBB4()
{
  result = qword_1EB99B0A0;
  if (!qword_1EB99B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B0A0);
  }

  return result;
}

unint64_t sub_1B769BC08()
{
  result = qword_1EB99B0A8;
  if (!qword_1EB99B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B0A8);
  }

  return result;
}

uint64_t WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a3;
  v102 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v99 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  v26 = type metadata accessor for WPCClassificationMapsItem();
  v27 = v26[8];
  v28 = sub_1B77FF4F8();
  v81 = *(v28 - 8);
  v29 = v81 + 56;
  v30 = *(v81 + 56);
  v30(a5 + v27, 1, 1, v28);
  v84 = v26[9];
  v30(a5 + v84, 1, 1, v28);
  v86 = v26[11];
  *(a5 + v86) = 8;
  v31 = (a5 + v26[13]);
  *v31 = xmmword_1B7810080;
  v32 = v26[14];
  v93 = v31;
  v94 = v32;
  v104 = v29;
  v105 = v28;
  v103 = v30;
  v30(a5 + v32, 1, 1, v28);
  v33 = v26[15];
  v34 = sub_1B77FF988();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v97 = v34;
  v98 = v33;
  v95 = v35 + 56;
  v96 = v36;
  (v36)(a5 + v33, 1, 1);
  *a5 = a1;
  v37 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v38 = v37;
  v88 = (a2 + *(v37 + 40));
  v39 = v88[1];
  v40 = v39 == 1;
  if (v39 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = v88[2];
  }

  if (v40)
  {
    v42 = 1;
  }

  else
  {
    v42 = HIDWORD(v88[2]) & 1;
  }

  *(a5 + 8) = v41;
  *(a5 + 12) = v42;
  v43 = *(a2 + 24);
  *(a5 + 16) = *(a2 + 16);
  *(a5 + 24) = v43;
  v89 = *(v37 + 28);
  sub_1B7205588(a2 + v89, v25, &qword_1EB997490);
  v44 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v90 = v45 + 48;
  v91 = v46;
  v47 = v46(v25, 1, v44);
  v92 = v44;
  if (v47 == 1)
  {

    sub_1B7205418(v25, &qword_1EB997490);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = &v25[*(v44 + 20)];
    v48 = *v50;
    v49 = *(v50 + 1);

    sub_1B769D900(v25, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  *(a5 + 32) = v48;
  *(a5 + 40) = v49;
  sub_1B75D781C(a2 + v38[13], a5 + v27);
  v51 = v38[9];
  sub_1B7205588(a2 + v51, v12, &qword_1EB997498);
  v52 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v53 = *(*(v52 - 8) + 48);
  if (v53(v12, 1, v52) == 1)
  {
    v54 = &qword_1EB997498;
    v55 = v12;
LABEL_14:
    sub_1B7205418(v55, v54);
    v58 = 1;
    v59 = v85;
    goto LABEL_16;
  }

  v56 = v82;
  sub_1B7205588(v12, v82, &qword_1EB9975B8);
  sub_1B769D900(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  v57 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {
    v54 = &qword_1EB9975B8;
    v55 = v56;
    goto LABEL_14;
  }

  v60 = v56 + *(v57 + 20);
  v59 = v85;
  (*(v81 + 16))(v85, v60, v105);
  sub_1B769D900(v56, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  v58 = 0;
LABEL_16:
  v103(v59, v58, 1, v105);
  sub_1B7213740(v59, a5 + v84, &unk_1EB994C70);
  v61 = v87;
  sub_1B7205588(a2 + v51, v87, &qword_1EB997498);
  if (v53(v61, 1, v52) == 1)
  {
    v62 = &qword_1EB997498;
    v63 = v61;
LABEL_20:
    sub_1B7205418(v63, v62);
    v66 = 0;
    v67 = 0;
    goto LABEL_22;
  }

  v64 = v83;
  sub_1B7205588(v61, v83, &qword_1EB9975B8);
  sub_1B769D900(v61, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  v65 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    v62 = &qword_1EB9975B8;
    v63 = v64;
    goto LABEL_20;
  }

  v66 = *v64;
  v67 = v64[1];

  sub_1B769D900(v64, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
LABEL_22:
  v68 = (a5 + v26[10]);
  *v68 = v66;
  v68[1] = v67;
  v69 = *(a2 + v38[12] + 1);
  if (v69 <= 3)
  {
    v70 = v92;
    if (*(a2 + v38[12] + 1) > 1u)
    {
      if (v69 == 2)
      {
        v71 = 6;
      }

      else
      {
        v71 = 4;
      }
    }

    else if (*(a2 + v38[12] + 1))
    {
      v71 = 5;
    }

    else
    {
      v71 = 1;
    }

    goto LABEL_36;
  }

  v70 = v92;
  if (*(a2 + v38[12] + 1) <= 5u)
  {
    if (v69 == 4)
    {
      v71 = 2;
    }

    else
    {
      v71 = 7;
    }

    goto LABEL_36;
  }

  if (v69 == 6)
  {
    v71 = 3;
LABEL_36:
    *(a5 + v86) = v71;
    goto LABEL_37;
  }

  *(a5 + v86) = 0;
LABEL_37:
  if (v88[1] == 1)
  {
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v72 = *v88;
  }

  v74 = (a5 + v26[12]);
  *v74 = v72;
  v74[1] = v73;
  v75 = v93;
  sub_1B72380B8(*v93, v93[1]);
  v76 = v102;
  *v75 = v101;
  v75[1] = v76;
  v77 = v99;
  sub_1B7205588(a2 + v89, v99, &qword_1EB997490);
  sub_1B769D900(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  if (v91(v77, 1, v70) == 1)
  {
    sub_1B7205418(v77, &qword_1EB997490);
    v78 = v100;
    v103(v100, 1, 1, v105);
  }

  else
  {
    v78 = v100;
    sub_1B7205588(v77, v100, &unk_1EB994C70);
    sub_1B769D900(v77, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  sub_1B7213740(v78, a5 + v94, &unk_1EB994C70);
  v79 = v98;
  sub_1B7205418(a5 + v98, &qword_1EB98EBD0);
  return v96(a5 + v79, 1, 1, v97);
}

FinanceKit::MapsCategory_optional __swiftcall MapsCategory.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFF8) != 0)
  {
    v2 = 8;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for WPCClassificationMapsItem()
{
  result = qword_1EB99B0C8;
  if (!qword_1EB99B0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WPCClassificationMapsItem.resultProviderIdentifier.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t WPCClassificationMapsItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WPCClassificationMapsItem.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WPCClassificationMapsItem.phoneNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WPCClassificationMapsItem.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WPCClassificationMapsItem.heroImageAttributionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for WPCClassificationMapsItem() + 40));

  return v1;
}

uint64_t WPCClassificationMapsItem.heroImageAttributionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WPCClassificationMapsItem() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WPCClassificationMapsItem.mapsCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WPCClassificationMapsItem();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t WPCClassificationMapsItem.mapsCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WPCClassificationMapsItem();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t WPCClassificationMapsItem.mapsCategoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WPCClassificationMapsItem() + 48));

  return v1;
}

uint64_t WPCClassificationMapsItem.mapsCategoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WPCClassificationMapsItem() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WPCClassificationMapsItem.encodedStylingInfo.getter()
{
  v1 = v0 + *(type metadata accessor for WPCClassificationMapsItem() + 52);
  v2 = *v1;
  sub_1B7228588(*v1, *(v1 + 8));
  return v2;
}

uint64_t WPCClassificationMapsItem.encodedStylingInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WPCClassificationMapsItem() + 52);
  result = sub_1B72380B8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a3;
  v102 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v99 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  v26 = type metadata accessor for WPCClassificationMapsItem();
  v27 = v26[8];
  v28 = sub_1B77FF4F8();
  v81 = *(v28 - 8);
  v29 = v81 + 56;
  v30 = *(v81 + 56);
  v30(a5 + v27, 1, 1, v28);
  v84 = v26[9];
  v30(a5 + v84, 1, 1, v28);
  v86 = v26[11];
  *(a5 + v86) = 8;
  v31 = (a5 + v26[13]);
  *v31 = xmmword_1B7810080;
  v32 = v26[14];
  v93 = v31;
  v94 = v32;
  v104 = v29;
  v105 = v28;
  v103 = v30;
  v30(a5 + v32, 1, 1, v28);
  v33 = v26[15];
  v34 = sub_1B77FF988();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v97 = v34;
  v98 = v33;
  v95 = v35 + 56;
  v96 = v36;
  (v36)(a5 + v33, 1, 1);
  *a5 = a1;
  v37 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v38 = v37;
  v88 = (a2 + *(v37 + 32));
  v39 = v88[1];
  v40 = v39 == 1;
  if (v39 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = v88[2];
  }

  if (v40)
  {
    v42 = 1;
  }

  else
  {
    v42 = HIDWORD(v88[2]) & 1;
  }

  *(a5 + 8) = v41;
  *(a5 + 12) = v42;
  v43 = *(a2 + 24);
  *(a5 + 16) = *(a2 + 16);
  *(a5 + 24) = v43;
  v89 = *(v37 + 24);
  sub_1B7205588(a2 + v89, v25, &qword_1EB997490);
  v44 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v90 = v45 + 48;
  v91 = v46;
  v47 = v46(v25, 1, v44);
  v92 = v44;
  if (v47 == 1)
  {

    sub_1B7205418(v25, &qword_1EB997490);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = &v25[*(v44 + 20)];
    v48 = *v50;
    v49 = *(v50 + 1);

    sub_1B769D900(v25, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  *(a5 + 32) = v48;
  *(a5 + 40) = v49;
  sub_1B75D781C(a2 + v38[10], a5 + v27);
  v51 = v38[7];
  sub_1B7205588(a2 + v51, v12, &qword_1EB997498);
  v52 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v53 = *(*(v52 - 8) + 48);
  if (v53(v12, 1, v52) == 1)
  {
    v54 = &qword_1EB997498;
    v55 = v12;
LABEL_14:
    sub_1B7205418(v55, v54);
    v58 = 1;
    v59 = v85;
    goto LABEL_16;
  }

  v56 = v82;
  sub_1B7205588(v12, v82, &qword_1EB9975B8);
  sub_1B769D900(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  v57 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {
    v54 = &qword_1EB9975B8;
    v55 = v56;
    goto LABEL_14;
  }

  v60 = v56 + *(v57 + 20);
  v59 = v85;
  (*(v81 + 16))(v85, v60, v105);
  sub_1B769D900(v56, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  v58 = 0;
LABEL_16:
  v103(v59, v58, 1, v105);
  sub_1B7213740(v59, a5 + v84, &unk_1EB994C70);
  v61 = v87;
  sub_1B7205588(a2 + v51, v87, &qword_1EB997498);
  if (v53(v61, 1, v52) == 1)
  {
    v62 = &qword_1EB997498;
    v63 = v61;
LABEL_20:
    sub_1B7205418(v63, v62);
    v66 = 0;
    v67 = 0;
    goto LABEL_22;
  }

  v64 = v83;
  sub_1B7205588(v61, v83, &qword_1EB9975B8);
  sub_1B769D900(v61, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  v65 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    v62 = &qword_1EB9975B8;
    v63 = v64;
    goto LABEL_20;
  }

  v66 = *v64;
  v67 = v64[1];

  sub_1B769D900(v64, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
LABEL_22:
  v68 = (a5 + v26[10]);
  *v68 = v66;
  v68[1] = v67;
  v69 = *(a2 + v38[9] + 1);
  if (v69 <= 3)
  {
    v70 = v92;
    if (*(a2 + v38[9] + 1) > 1u)
    {
      if (v69 == 2)
      {
        v71 = 6;
      }

      else
      {
        v71 = 4;
      }
    }

    else if (*(a2 + v38[9] + 1))
    {
      v71 = 5;
    }

    else
    {
      v71 = 1;
    }

    goto LABEL_36;
  }

  v70 = v92;
  if (*(a2 + v38[9] + 1) <= 5u)
  {
    if (v69 == 4)
    {
      v71 = 2;
    }

    else
    {
      v71 = 7;
    }

    goto LABEL_36;
  }

  if (v69 == 6)
  {
    v71 = 3;
LABEL_36:
    *(a5 + v86) = v71;
    goto LABEL_37;
  }

  *(a5 + v86) = 0;
LABEL_37:
  if (v88[1] == 1)
  {
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v72 = *v88;
  }

  v74 = (a5 + v26[12]);
  *v74 = v72;
  v74[1] = v73;
  v75 = v93;
  sub_1B72380B8(*v93, v93[1]);
  v76 = v102;
  *v75 = v101;
  v75[1] = v76;
  v77 = v99;
  sub_1B7205588(a2 + v89, v99, &qword_1EB997490);
  sub_1B769D900(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  if (v91(v77, 1, v70) == 1)
  {
    sub_1B7205418(v77, &qword_1EB997490);
    v78 = v100;
    v103(v100, 1, 1, v105);
  }

  else
  {
    v78 = v100;
    sub_1B7205588(v77, v100, &unk_1EB994C70);
    sub_1B769D900(v77, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  sub_1B7213740(v78, a5 + v94, &unk_1EB994C70);
  v79 = v98;
  sub_1B7205418(a5 + v98, &qword_1EB98EBD0);
  return v96(a5 + v79, 1, 1, v97);
}

uint64_t sub_1B769D900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B769D964()
{
  result = qword_1EB99B0B0;
  if (!qword_1EB99B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B0B0);
  }

  return result;
}

unint64_t sub_1B769D9BC()
{
  result = qword_1EB99B0B8;
  if (!qword_1EB99B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B0B8);
  }

  return result;
}

void sub_1B769DB70()
{
  sub_1B72F2CB8(319, &qword_1EB998DC0);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72FA020(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB998DC8);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB991370);
          if (v4 <= 0x3F)
          {
            sub_1B72FA020(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B769DCF4()
{
  result = qword_1EB99B0D8;
  if (!qword_1EB99B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B0D8);
  }

  return result;
}

uint64_t sub_1B769DD48(int *a1)
{
  v2 = *v1;
  v3 = a1[5];
  v4 = v1 + a1[6];
  v5 = *v4;
  v6 = *(v1 + a1[8]);
  v7 = v4[8];
  v8 = *__swift_project_boxed_opaque_existential_1((v1 + a1[7]), *(v1 + a1[7] + 24));

  return sub_1B769E964(v1 + v3, v5, v7, v6, v8, v2);
}

void FinanceStore.accountBalanceHistory(forAccountID:since:isMonitoring:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  static DeviceInfo.deviceType.getter(&v20);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v19 = v9;
    v10 = a1;
    v11 = *(v4 + 16);
    v12 = _s37AccountBalanceHistoryIteratorProviderVMa();
    a4[3] = v12;
    a4[4] = sub_1B769E91C(&qword_1EB99B0E0, _s37AccountBalanceHistoryIteratorProviderVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    v14 = v12[5];
    v15 = sub_1B77FFA18();
    v16 = *(v15 - 8);
    (*(v16 + 16))(boxed_opaque_existential_1 + v14, v10, v15);
    (*(v16 + 56))(boxed_opaque_existential_1 + v14, 0, 1, v15);
    v17 = (boxed_opaque_existential_1 + v12[7]);
    v17[3] = type metadata accessor for FinanceStore();
    v17[4] = &off_1F2F66960;
    *v17 = v4;
    *boxed_opaque_existential_1 = v11;
    v18 = boxed_opaque_existential_1 + v12[6];
    *v18 = v8;
    v18[8] = v19;
    *(boxed_opaque_existential_1 + v12[8]) = a3 & 1;

    sub_1B72274E8(v8, v19);
  }
}

uint64_t _s37AccountBalanceHistoryIteratorProviderVMa()
{
  result = qword_1EB99B0E8;
  if (!qword_1EB99B0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B769DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B769DFE4, 0, 0);
}

uint64_t sub_1B769DFE4()
{
  v7 = v0;
  v6[0] = 2;
  if (FinanceStore.isDataRestricted(for:)(v6))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B72BA7BC;
    v5 = v0[4];

    return sub_1B73A5C04(v5);
  }
}

uint64_t FinanceStore.accountBalances(query:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B769E120, 0, 0);
}

void sub_1B769E120()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(v8);
  if (v8[0])
  {
    __break(1u);
  }

  else
  {
    v1 = v0[3];
    v2 = v1 + *(type metadata accessor for AccountBalanceQuery() + 28);
    if ((*(v2 + 8) & 1) == 0 && (*v2 & 0x8000000000000000) != 0)
    {
      sub_1B7201CA4();
      swift_allocError();
      *v6 = 3;
      swift_willThrow();
      v7 = v0[1];

      v7();
    }

    else
    {
      v3 = v0[4];
      v4 = swift_task_alloc();
      v0[5] = v4;
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_1B769E294;

      sub_1B72B98D8(dword_1B7858A10);
    }
  }
}

uint64_t sub_1B769E294()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B769E3EC, 0, 0);
}

uint64_t sub_1B769E3EC()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 64) == 4)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B769E504(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B769DFC0(a1, v5, v4);
}

void FinanceStore.accountBalanceHistory(since:isMonitoring:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  static DeviceInfo.deviceType.getter(&v15);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 16);
    v9 = _s37AccountBalanceHistoryIteratorProviderVMa();
    a3[3] = v9;
    a3[4] = sub_1B769E91C(&qword_1EB99B0E0, _s37AccountBalanceHistoryIteratorProviderVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v11 = v9[5];
    v12 = sub_1B77FFA18();
    (*(*(v12 - 8) + 56))(boxed_opaque_existential_1 + v11, 1, 1, v12);
    v13 = (boxed_opaque_existential_1 + v9[7]);
    v13[3] = type metadata accessor for FinanceStore();
    v13[4] = &off_1F2F66960;
    *v13 = v3;
    *boxed_opaque_existential_1 = v8;
    v14 = boxed_opaque_existential_1 + v9[6];
    *v14 = v6;
    v14[8] = v7;
    *(boxed_opaque_existential_1 + v9[8]) = a2 & 1;

    sub_1B72274E8(v6, v7);
  }
}

uint64_t FinanceStore.privateAccountBalances(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 57) = *(a1 + 24);
  *(v2 + 96) = a1[4];
  *(v2 + 58) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B769E758, 0, 0);
}

void sub_1B769E758()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 2;
    if (FinanceStore.isDataRestricted(for:)(v8))
    {
      sub_1B7201CA4();
      swift_allocError();
      *v1 = 2;
      swift_willThrow();
      v2 = *(v0 + 8);

      v2();
    }

    else
    {
      v3 = *(v0 + 58);
      v4 = *(v0 + 96);
      v5 = *(v0 + 57);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = *(v0 + 80);
      *(v0 + 40) = v5;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_1B72BAE3C;

      sub_1B73A4910((v0 + 16));
    }
  }
}

uint64_t sub_1B769E91C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B769E964(uint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v8) = a4;
  LOBYTE(v9) = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for FinanceStore();
  v16 = &off_1F2F66960;
  v60[3] = v15;
  v60[4] = &off_1F2F66960;
  v60[0] = a5;
  v52 = v14;
  sub_1B7227AFC(a1, v14);
  sub_1B719B06C(v60, v58);
  v17 = *(a6 + 16);

  os_unfair_lock_lock((v17 + 24));
  if (*(v17 + 16))
  {
    v51 = *(v17 + 16);
  }

  else
  {
    v18 = sub_1B73ADA9C();
    *(v17 + 16) = v18;
    v51 = v18;
  }

  os_unfair_lock_unlock((v17 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B100);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  *(v19 + qword_1EDB08720) = 0;
  v20 = v19 + qword_1EDB086F0;
  *v20 = 0;
  *(v20 + 8) = -1;
  v21 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = sub_1B78000B8();
  v23 = __swift_project_value_buffer(v22, qword_1EDAF6590);
  (*(*(v22 - 8) + 16))(v19 + v21, v23, v22);
  sub_1B7227AFC(v52, v19 + qword_1EDB086F8);
  *(v19 + 32) = v8 & 1;
  v24 = v51;
  *(v19 + qword_1EDB08748) = v51;
  v25 = (v19 + qword_1EDB08740);
  *v25 = sub_1B769F000;
  v25[1] = 0;
  v8 = *v20;
  LOBYTE(v22) = *(v20 + 8);

  sub_1B72274E8(a2, v9);
  *v20 = a2;
  *(v20 + 8) = v9;
  sub_1B7201CF8(v8, v22);
  v26 = *__swift_project_boxed_opaque_existential_1(v58, v59);
  v56 = v15;
  v57 = v16;
  v55[0] = v26;
  sub_1B719B06C(v55, v54);
  v27 = swift_allocObject();
  sub_1B71E4C44(v54, v27 + 16);

  __swift_destroy_boxed_opaque_existential_1(v55);
  v28 = (v19 + qword_1EDB08708);
  *v28 = &unk_1B7810520;
  v28[1] = v27;
  v29 = *__swift_project_boxed_opaque_existential_1(v58, v59);
  v56 = v15;
  v57 = v16;
  v55[0] = v29;
  sub_1B719B06C(v55, v54);
  v30 = swift_allocObject();
  sub_1B71E4C44(v54, v30 + 16);

  __swift_destroy_boxed_opaque_existential_1(v55);
  v31 = (v19 + qword_1EDB08718);
  *v31 = &unk_1B7824A70;
  v31[1] = v30;
  *(v19 + qword_1EDB08710) = 0;
  v32 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  v50 = v19;
  sub_1B78013C8();
  v33 = [*(v24 + 2) persistentStoreCoordinator];
  v34 = [v33 persistentStores];

  sub_1B72BB97C();
  v15 = sub_1B7800C38();

  if (!(v15 >> 62))
  {
    v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_28:

    v43 = 0;
    v45 = 0;
    v42 = v50;
    goto LABEL_29;
  }

  v9 = sub_1B7801958();
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_7:
  a2 = 0;
  v20 = 0x6C61636F4CLL;
  v53 = v15 & 0xC000000000000001;
  v21 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v53)
    {
      v35 = MEMORY[0x1B8CA5DC0](a2, v15);
    }

    else
    {
      if (a2 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v35 = *(v15 + 8 * a2 + 32);
    }

    v36 = v35;
    v8 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v37 = [v35 configurationName];
    v38 = sub_1B7800868();
    v19 = v39;

    if (v38 == 0x6C61636F4CLL && v19 == 0xE500000000000000)
    {
      break;
    }

    v16 = sub_1B78020F8();

    if (v16)
    {
      goto LABEL_21;
    }

    ++a2;
    if (v8 == v9)
    {
      goto LABEL_28;
    }
  }

LABEL_21:

  v41 = [v36 identifier];

  v42 = v50;
  if (v41)
  {
    v43 = sub_1B7800868();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

LABEL_29:
  v46 = (v42 + qword_1EDB08730);
  *v46 = v43;
  v46[1] = v45;
  *(v42 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v47 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);

  sub_1B72BB9C8(v52);
  __swift_destroy_boxed_opaque_existential_1(v58);
  *(v42 + qword_1EDB08738) = v47;
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v42;
}

void RawOrderCustomer.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 customerEmailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v28 = v7;
    v29 = v6;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v8 = [a1 customerFamilyName];
  if (v8)
  {
    v9 = v8;
    v27 = sub_1B7800868();
    v11 = v10;
  }

  else
  {
    v27 = 0;
    v11 = 0;
  }

  v12 = [a1 customerGivenName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 customerOrganizationName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7800868();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 customerPhoneNumber];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B7800868();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *a2 = v27;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v29;
  a2[7] = v28;
  a2[8] = v24;
  a2[9] = v26;
}

uint64_t RawOrderCustomer.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderCustomer.familyName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderCustomer.givenName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawOrderCustomer.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawOrderCustomer.organizationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawOrderCustomer.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawOrderCustomer.emailAddress.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawOrderCustomer.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawOrderCustomer.phoneNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawOrderCustomer.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall RawOrderCustomer.init(familyName:givenName:organizationName:emailAddress:phoneNumber:)(FinanceKit::RawOrderCustomer *__return_ptr retstr, Swift::String_optional familyName, Swift::String_optional givenName, Swift::String_optional organizationName, Swift::String_optional emailAddress, Swift::String_optional phoneNumber)
{
  retstr->familyName = familyName;
  retstr->givenName = givenName;
  retstr->organizationName = organizationName;
  retstr->emailAddress = emailAddress;
  retstr->phoneNumber = phoneNumber;
}

uint64_t sub_1B769F48C(uint64_t a1)
{
  v2 = sub_1B769FB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B769F4C8(uint64_t a1)
{
  v2 = sub_1B769FB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderCustomer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B108);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B769FB2C();
  sub_1B78023F8();
  v18 = 0;
  v11 = v13[9];
  sub_1B7801EF8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1B7801EF8();
  v16 = 2;
  sub_1B7801EF8();
  v15 = 3;
  sub_1B7801EF8();
  v14 = 4;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderCustomer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B769FB2C();
  sub_1B78023C8();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1B7801D78();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1B7801D78();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1B7801D78();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1B7801D78();
    v18 = v17;
    v49 = 4;
    v19 = sub_1B7801D78();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1B769FB80(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1B76961E4(&v40);
}

unint64_t sub_1B769FB2C()
{
  result = qword_1EB99B110;
  if (!qword_1EB99B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B110);
  }

  return result;
}

unint64_t sub_1B769FBDC()
{
  result = qword_1EB99B120;
  if (!qword_1EB99B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B120);
  }

  return result;
}

unint64_t sub_1B769FC34()
{
  result = qword_1EB99B128;
  if (!qword_1EB99B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B128);
  }

  return result;
}

unint64_t sub_1B769FC8C()
{
  result = qword_1EB99B130[0];
  if (!qword_1EB99B130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB99B130);
  }

  return result;
}

id ManagedAccountActions.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B76A07E8(a1, a2);

  return v3;
}

{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  _s10FinanceKit21ManagedAccountActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(v5, a1);

  sub_1B76A0C18(a1, type metadata accessor for RawBankConnectData.Actions);
  return v5;
}

void sub_1B76A0138(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7228664(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedAccountActions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAccountActions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAccountActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s10FinanceKit21ManagedAccountActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(void *a1, uint64_t a2)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  sub_1B7228664(a2, &v29 - v15);
  v17 = sub_1B77FF4F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = 0;
  if (v19(v16, 1, v17) != 1)
  {
    v20 = sub_1B77FF3F8();
    (*(v18 + 8))(v16, v17);
  }

  [v30 setTransferFunds_];

  v21 = type metadata accessor for RawBankConnectData.Actions();
  sub_1B7228664(a2 + v21[5], v14);
  v22 = 0;
  if (v19(v14, 1, v17) != 1)
  {
    v22 = sub_1B77FF3F8();
    (*(v18 + 8))(v14, v17);
  }

  v23 = v30;
  [v30 setPayNow_];

  sub_1B7228664(a2 + v21[6], v11);
  if (v19(v11, 1, v17) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B77FF3F8();
    (*(v18 + 8))(v11, v17);
  }

  [v23 setDigitalServicing_];

  sub_1B7228664(a2 + v21[7], v8);
  if (v19(v8, 1, v17) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1B77FF3F8();
    (*(v18 + 8))(v8, v17);
  }

  [v23 setPostInstallment_];

  v26 = a2 + v21[8];
  v27 = v29;
  sub_1B7228664(v26, v29);
  if (v19(v27, 1, v17) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1B77FF3F8();
    (*(v18 + 8))(v27, v17);
  }

  [v23 setRedeemRewards_];
}

id sub_1B76A07E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v35 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = [objc_allocWithZone(v3) initWithContext_];
  v38 = a1;
  sub_1B7228664(a1, v18);
  v20 = sub_1B77FF4F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v19;
  v25 = 0;
  if (v23 != 1)
  {
    v25 = sub_1B77FF3F8();
    (*(v21 + 8))(v18, v20);
  }

  [v24 setTransferFunds_];

  v26 = type metadata accessor for Actions();
  v27 = v38;
  sub_1B7228664(v38 + v26[5], v16);
  v28 = 0;
  if (v22(v16, 1, v20) != 1)
  {
    v28 = sub_1B77FF3F8();
    (*(v21 + 8))(v16, v20);
  }

  [v24 setPayNow_];

  sub_1B7228664(v27 + v26[6], v13);
  if (v22(v13, 1, v20) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1B77FF3F8();
    (*(v21 + 8))(v13, v20);
  }

  v31 = v36;
  v30 = v37;
  [v24 setDigitalServicing_];

  sub_1B7228664(v27 + v26[7], v31);
  if (v22(v31, 1, v20) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1B77FF3F8();
    (*(v21 + 8))(v31, v20);
  }

  [v24 setPostInstallment_];

  sub_1B7228664(v27 + v26[8], v30);
  if (v22(v30, 1, v20) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_1B77FF3F8();
    (*(v21 + 8))(v30, v20);
  }

  [v24 setRedeemRewards_];

  sub_1B76A0C18(v27, type metadata accessor for Actions);
  return v24;
}

uint64_t sub_1B76A0C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FinanceAppExtensionConfiguration.init(connectionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FinanceAppExtensionConfiguration.connectionHandler.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Bool __swiftcall FinanceAppExtensionConfiguration.accept(connection:)(NSXPCConnection connection)
{
  v3 = *v1;
  type metadata accessor for ServiceToClientXPCConnection();
  sub_1B7341354(v7);
  v4 = connection.super.isa;
  v5 = sub_1B741BBBC(v4, v7);

  v3(v5);

  return 1;
}

uint64_t sub_1B76A0D68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Void __swiftcall FinancialDataTCC.setGranted(_:forBundleID:)(Swift::Bool _, FinanceKit::BundleIdentifier forBundleID)
{
  if (*MEMORY[0x1E69D5558])
  {
    v4 = *forBundleID.rawValue._countAndFlagsBits;
    v3 = *(forBundleID.rawValue._countAndFlagsBits + 8);
    v5 = qword_1EDAF6588;
    v6 = *MEMORY[0x1E69D5558];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1B78000B8();
    __swift_project_value_buffer(v7, qword_1EDAF6590);

    v8 = sub_1B7800098();
    v9 = sub_1B78011D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      if (_)
      {
        v12 = 0x676E696C62616E45;
      }

      else
      {
        v12 = 0x6E696C6261736944;
      }

      if (_)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE900000000000067;
      }

      v14 = sub_1B71A3EF8(v12, v13, &v17);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1B71A3EF8(v4, v3, &v17);
      _os_log_impl(&dword_1B7198000, v8, v9, "%s access for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v11, -1, -1);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
    }

    v15 = v6;
    v16 = sub_1B7800838();
    TCCAccessSetForBundleId();
  }

  else
  {
    __break(1u);
  }
}

FinanceKit::PrivacySettingsTCCInfo_optional __swiftcall FinancialDataTCC.tccInfo(forBundleID:)(FinanceKit::BundleIdentifier forBundleID)
{
  v2 = v1;
  v4 = *forBundleID.rawValue._countAndFlagsBits;
  v3 = *(forBundleID.rawValue._countAndFlagsBits + 8);
  v5 = sub_1B7800838();
  v6 = TCCAccessCopyInformationForBundleId();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v19 = 0;
      sub_1B76A1EF4();
      sub_1B7800C28();
    }
  }

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAF6590);

  v9 = sub_1B7800098();
  v10 = sub_1B78011D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v4;
    v14 = v12;
    *&v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B71A3EF8(v13, v3, &v19);
    _os_log_impl(&dword_1B7198000, v9, v10, "Unable to retrieve financialData for %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  else
  {
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result.value.bundleID.rawValue._object = v16;
  result.value.bundleID.rawValue._countAndFlagsBits = v15;
  result.is_nil = v18;
  result.value.granted = v17;
  return result;
}

FinanceKit::PrivacySettingsTCCInfo __swiftcall PrivacySettingsTCCInfo.init(bundleID:granted:)(FinanceKit::PrivacySettingsTCCInfo bundleID, Swift::Bool granted)
{
  v3 = *(bundleID.bundleID.rawValue._countAndFlagsBits + 8);
  *v2 = *bundleID.bundleID.rawValue._countAndFlagsBits;
  *(v2 + 8) = v3;
  *(v2 + 16) = bundleID.bundleID.rawValue._object;
  bundleID.granted = granted;
  return bundleID;
}

uint64_t PrivacySettingsTCCInfo.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void FinancialDataTCC.allFinancialDataTCCInfos()()
{
  if (*MEMORY[0x1E69D5558])
  {
    v0 = *MEMORY[0x1E69D5558];
    v1 = TCCAccessCopyInformation();
    if (v1)
    {
      v2 = v1;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v7 = 0;
        sub_1B76A1EF4();
        sub_1B7800C28();
      }
    }

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v3 = sub_1B78000B8();
    __swift_project_value_buffer(v3, qword_1EDAF6590);
    v4 = sub_1B7800098();
    v5 = sub_1B78011D8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B7198000, v4, v5, "Unable to retrieve financial data TCC info.", v6, 2u);
      MEMORY[0x1B8CA7A40](v6, -1, -1);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

void sub_1B76A1898(uint64_t *a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  if (!*MEMORY[0x1E69D54E0])
  {
    __break(1u);
    return;
  }

  v13 = *MEMORY[0x1E69D54E0];
  v14 = [v1 __swift_objectForKeyedSubscript_];

  if (!v14)
  {
    goto LABEL_13;
  }

  sub_1B7801848();
  swift_unknownObjectRelease();
  sub_1B72051F0(v28, v29);
  sub_1B719BDE4(v29, v28);
  type metadata accessor for CFBundle(0);
  swift_dynamicCast();
  v15 = v27[1];
  v16 = CFBundleCopyBundleURL(v15);
  if (!v16)
  {
    v19 = CFBundleGetIdentifier(v15);

    if (v19)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v28[0] = 0uLL;
        sub_1B7800858();

        __swift_destroy_boxed_opaque_existential_1(v29);
        v20 = *(&v28[0] + 1);
        if (*(&v28[0] + 1))
        {
          *a1 = *&v28[0];
          a1[1] = v20;
          return;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

LABEL_13:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v17 = v16;
  sub_1B77FF478();

  (*(v4 + 32))(v12, v10, v3);
  (*(v4 + 16))(v7, v12, v3);
  v18 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v21 = sub_1B76A1DA0(v7, 0);

  v22 = [v21 bundleIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B7800868();
    v26 = v25;

    (*(v4 + 8))(v12, v3);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {

    (*(v4 + 8))(v12, v3);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v24 = 0;
    v26 = 0;
  }

  *a1 = v24;
  a1[1] = v26;
}

void sub_1B76A1C7C()
{
  if (*MEMORY[0x1E69D54E8])
  {
    v1 = *MEMORY[0x1E69D54E8];
    v2 = [v0 __swift_objectForKeyedSubscript_];

    if (v2)
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5[0] = v3;
    v5[1] = v4;
    if (*(&v4 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1B726990C(v5);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1B76A1DA0(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B77FF3F8();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1B77FF4F8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1B77FF318();

    swift_willThrow();
    v13 = sub_1B77FF4F8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

unint64_t sub_1B76A1EF4()
{
  result = qword_1EB994458;
  if (!qword_1EB994458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB994458);
  }

  return result;
}

uint64_t sub_1B76A1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B7205588(a3, v22 - v9, &unk_1EB99C280);
  v11 = sub_1B7800DF8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B7205418(v10, &unk_1EB99C280);
  }

  else
  {
    sub_1B7800DE8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B7800CD8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B7800948() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1B7205418(a3, &unk_1EB99C280);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7205418(a3, &unk_1EB99C280);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B76A2248(uint64_t a1, int *a2)
{
  *(v3 + 16) = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B76A234C;

  return v7(a1);
}

uint64_t sub_1B76A234C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B76A2630;
  }

  else
  {
    v2 = sub_1B76A2460;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B76A2460()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B76A2534;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A802C, v2, v3);
}

uint64_t sub_1B76A2534()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7238388, 0, 0);
}

uint64_t sub_1B76A2630()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B76A2704;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A802C, v2, v3);
}

uint64_t sub_1B76A2704()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76A8028, 0, 0);
}

uint64_t sub_1B76A2800(uint64_t a1, int *a2)
{
  *(v3 + 16) = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B76A2904;

  return v7(a1);
}

uint64_t sub_1B76A2904()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B76A2AEC;
  }

  else
  {
    v2 = sub_1B76A2A18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B76A2A18()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B743BE9C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A802C, v2, v3);
}

uint64_t sub_1B76A2AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B743C06C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A802C, v2, v3);
}

uint64_t sub_1B76A2BC0(uint64_t a1, int *a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v3[8] = v4;
  *v4 = v3;
  v4[1] = sub_1B76A2CBC;

  return v6(v3 + 2);
}

uint64_t sub_1B76A2CBC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B76A2FC4;
  }

  else
  {
    v2 = sub_1B76A2DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B76A2DD0()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B76A2EA4;
  v2 = *(v0 + 56);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A802C, v2, v3);
}

uint64_t sub_1B76A2EA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76A2FA0, 0, 0);
}

uint64_t sub_1B76A2FA0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1B76A2FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B76A3098;
  v2 = *(v0 + 56);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A8000, v2, v3);
}

uint64_t sub_1B76A3098()
{

  return MEMORY[0x1EEE6DFA0](sub_1B76A3194, 0, 0);
}

uint64_t sub_1B76A3194()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectInstitutionAssetManagerError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t BankConnectInstitutionAssetManager.__allocating_init(store:webServiceClientProvider:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 160) = sub_1B7204BBC(MEMORY[0x1E69E7CC0]);
  *(v4 + 112) = a1;
  sub_1B71E4C44(a2, v4 + 120);
  return v4;
}

uint64_t BankConnectInstitutionAssetManager.init(store:webServiceClientProvider:)(uint64_t a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  *(v2 + 160) = sub_1B7204BBC(MEMORY[0x1E69E7CC0]);
  *(v2 + 112) = a1;
  sub_1B71E4C44(a2, v2 + 120);
  return v2;
}

uint64_t BankConnectInstitutionAssetManager.requestAsset(assetURL:institutionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  v4[17] = swift_task_alloc();
  v5 = sub_1B77FF4F8();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v4[20] = *(v6 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76A3450, v3, 0);
}

uint64_t sub_1B76A3450()
{
  v75 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[13];
  v5 = sub_1B78000B8();
  v0[24] = __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v73 = *(v3 + 16);
  v73(v1, v4, v2);

  v6 = sub_1B7800098();
  v7 = sub_1B78011B8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  v11 = v0[18];
  v10 = v0[19];
  if (v8)
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1B71A3EF8(v13, v12, &v74);
    *(v14 + 12) = 2080;
    sub_1B76A7B68(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
    v16 = sub_1B7802068();
    v18 = v17;
    v71 = *(v10 + 8);
    v71(v9, v11);
    v19 = sub_1B71A3EF8(v16, v18, &v74);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1B7198000, v6, v7, "Asset requested for institution id: %s url: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v15, -1, -1);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  else
  {

    v71 = *(v10 + 8);
    v71(v9, v11);
  }

  v20 = v0[16];
  swift_beginAccess();
  if (*(*(v20 + 160) + 16) && (sub_1B724548C(v0[14], v0[15]), (v21 & 1) != 0))
  {
    v22 = v0[21];
    v23 = v0[18];
    v24 = v0[13];
    swift_endAccess();
    v73(v22, v24, v23);

    v25 = sub_1B7800098();
    v26 = sub_1B78011B8();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[21];
    v29 = v0[18];
    if (v27)
    {
      v31 = v0[14];
      v30 = v0[15];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v74 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_1B71A3EF8(v31, v30, &v74);
      *(v32 + 12) = 2080;
      sub_1B76A7B68(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
      v34 = sub_1B7802068();
      v36 = v35;
      v71(v28, v29);
      v37 = sub_1B71A3EF8(v34, v36, &v74);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_1B7198000, v25, v26, "Already downloading asset for: %s url: %s. Returning.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v33, -1, -1);
      MEMORY[0x1B8CA7A40](v32, -1, -1);
    }

    else
    {

      v71(v28, v29);
    }

    v64 = v0[1];

    return v64();
  }

  else
  {
    v38 = v0[15];
    v39 = v0[14];
    swift_endAccess();
    v40 = sub_1B76A3E84(v39, v38);
    v70 = v41;
    v72 = v40;
    if (v41)
    {
      sub_1B76A41A4();
    }

    v42 = v0[22];
    v43 = v0[19];
    v44 = v0[20];
    v45 = v0[17];
    v46 = v0[18];
    v66 = v46;
    v47 = v0[16];
    v48 = v0[13];
    v68 = v0[14];
    v69 = v0[15];
    v0[25] = os_transaction_create();
    v67 = v45;
    sub_1B7800DD8();
    v49 = sub_1B7800DF8();
    (*(*(v49 - 8) + 56))(v45, 0, 1, v49);
    v73(v42, v48, v46);
    v51 = sub_1B76A7B68(&qword_1EB99B1B8, v50, type metadata accessor for BankConnectInstitutionAssetManager);
    v52 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v53 = (v44 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 2) = v47;
    *(v55 + 3) = v51;
    *(v55 + 4) = v47;
    (*(v43 + 32))(&v55[v52], v42, v66);
    v56 = &v55[v53];
    *v56 = v72;
    v56[1] = v70;
    *&v55[v54] = 0x4014000000000000;
    v57 = &v55[(v54 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v57 = v68;
    v57[1] = v69;
    swift_retain_n();

    v58 = sub_1B76A1F9C(0, 0, v67, &unk_1B7858E18, v55);
    v0[26] = v58;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v20 + 160);
    *(v20 + 160) = 0x8000000000000000;
    sub_1B7393CB0(v58, v68, v69, isUniquelyReferenced_nonNull_native);

    *(v20 + 160) = v74;
    swift_endAccess();
    v60 = swift_task_alloc();
    v0[27] = v60;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    *v60 = v0;
    v60[1] = sub_1B76A3BF0;
    v62 = MEMORY[0x1E69E7288];
    v63 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 11, v58, v63, v61, v62);
  }
}

uint64_t sub_1B76A3BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  sub_1B76A7B5C(*(v1 + 88), *(v1 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1B76A3D24, v2, 0);
}

uint64_t sub_1B76A3D24()
{
  v1 = v0[15];
  v2 = v0[14];
  swift_beginAccess();
  sub_1B7391800(v2, v1);
  swift_endAccess();

  v3 = sub_1B7800098();
  v4 = sub_1B78011B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7198000, v3, v4, "Releasing transaction for institution logo download.", v5, 2u);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B76A3E84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAF65B0);

  v7 = sub_1B7800098();
  v8 = sub_1B78011B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B71A3EF8(a1, a2, &v23);
    _os_log_impl(&dword_1B7198000, v7, v8, "Asset data store etag request for id: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  v11 = [*(*(v3 + 112) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
  sub_1B7801468();
  v13 = v23;
  v12 = v24;

  v14 = sub_1B7800098();
  v15 = sub_1B78011B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1B71A3EF8(a1, a2, v22);
    *(v16 + 12) = 2080;
    v23 = v13;
    v24 = v12;

    v18 = sub_1B7800908();
    v20 = sub_1B71A3EF8(v18, v19, v22);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1B7198000, v14, v15, "Asset data store etag request for id: %s returning %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v17, -1, -1);
    MEMORY[0x1B8CA7A40](v16, -1, -1);
  }

  return v13;
}

void sub_1B76A41A4()
{
  v1 = [*(*(v0 + 112) + 16) newBackgroundContext];
  sub_1B7801468();
}

uint64_t BankConnectInstitutionAssetManager.downloadAssetIfNecessary(fromAssetURL:institutionID:etag:timeoutSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v30 = a4;
  v31 = a5;
  v32 = a2;
  v33 = a3;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  sub_1B7800DD8();
  v15 = sub_1B7800DF8();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v17 = sub_1B76A7B68(&qword_1EB99B1B8, v16, type metadata accessor for BankConnectInstitutionAssetManager);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 2) = v29;
  *(v21 + 3) = v17;
  *(v21 + 4) = v22;
  (*(v9 + 32))(&v21[v18], v11, v8);
  v23 = &v21[v19];
  v24 = v31;
  *v23 = v30;
  *(v23 + 1) = v24;
  *&v21[v20] = a6;
  v25 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;

  swift_retain_n();
  return sub_1B76A1F9C(0, 0, v14, &unk_1B7858E28, v21);
}

uint64_t BankConnectInstitutionAssetManager.assetData(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B76A4698, v2, 0);
}

uint64_t sub_1B76A4698()
{
  v23 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v22);
    _os_log_impl(&dword_1B7198000, v2, v3, "Asset data request for institution id: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[7];
  swift_beginAccess();
  v9 = *(v8 + 160);
  if (*(v9 + 16) && (v10 = sub_1B724548C(v0[5], v0[6]), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v0[8] = v12;
    swift_endAccess();

    v13 = swift_task_alloc();
    v0[9] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    *v13 = v0;
    v13[1] = sub_1B76A499C;
    v15 = MEMORY[0x1E69E7288];
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v14, v12, v16, v14, v15);
  }

  else
  {
    swift_endAccess();
    v17 = sub_1B76A4BB8(v0[5], v0[6]);
    if (v18 >> 60 == 15)
    {
      sub_1B76A7CB8();
      swift_allocError();
      swift_willThrow();
      v19 = v0[1];

      return v19();
    }

    else
    {
      v20 = v0[1];

      return v20(v17);
    }
  }
}

uint64_t sub_1B76A499C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);

    v4 = sub_1B76A4BA0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 56);
    v4 = sub_1B76A4AC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B76A4AC0()
{

  v1 = sub_1B76A4BB8(v0[5], v0[6]);
  if (v2 >> 60 == 15)
  {
    sub_1B76A7CB8();
    swift_allocError();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[1];

    return v5(v1);
  }
}

uint64_t sub_1B76A4BB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAF65B0);

  v7 = sub_1B7800098();
  v8 = sub_1B78011B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B71A3EF8(a1, a2, v28);
    _os_log_impl(&dword_1B7198000, v7, v8, "Asset data store request data for id: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  v11 = [*(*(v3 + 112) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993940);
  sub_1B7801468();
  v12 = v28[0];
  v13 = v28[1];

  if (v13 >> 60 == 15)
  {
    v14 = sub_1B7800098();
    v15 = sub_1B78011B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B71A3EF8(a1, a2, v28);
      _os_log_impl(&dword_1B7198000, v14, v15, "No asset data for id: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    return 0;
  }

  sub_1B7228588(v12, v13);
  v18 = sub_1B7800098();
  v19 = sub_1B78011B8();

  if (!os_log_type_enabled(v18, v19))
  {

    sub_1B72380B8(v12, v13);
    return v12;
  }

  v20 = swift_slowAlloc();
  result = swift_slowAlloc();
  v22 = result;
  v28[0] = result;
  *v20 = 134218242;
  v23 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_21;
    }

    v26 = *(v12 + 16);
    v25 = *(v12 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(v13);
LABEL_21:
    *(v20 + 4) = v24;
    sub_1B72380B8(v12, v13);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1B71A3EF8(a1, a2, v28);
    _os_log_impl(&dword_1B7198000, v18, v19, "Returning %ld bytes from asset store for : %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B8CA7A40](v22, -1, -1);
    MEMORY[0x1B8CA7A40](v20, -1, -1);

    return v12;
  }

  LODWORD(v24) = HIDWORD(v12) - v12;
  if (!__OFSUB__(HIDWORD(v12), v12))
  {
    v24 = v24;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t BankConnectInstitutionAssetManager.deleteAsset(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B76A5000, v2, 0);
}

uint64_t sub_1B76A5000()
{
  v16 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v15);
    _os_log_impl(&dword_1B7198000, v2, v3, "Asset deletion requested for institution id: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[3];
  v9 = v0[2];
  v10 = [*(*(v0[4] + 112) + 16) newBackgroundContext];
  v11 = swift_task_alloc();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v10;
  v12 = swift_task_alloc();
  v12[2] = sub_1B76A7D0C;
  v12[3] = v11;
  v12[4] = v10;
  sub_1B7801468();

  v13 = v0[1];

  return v13();
}

void sub_1B76A537C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInstitutionAsset();
  static ManagedInstitutionAsset.deleteAsset(institutionID:context:)(a1, a2, a3);
  if (!v3)
  {
    v9[0] = 0;
    if ([a3 save_])
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B76A5478(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 104) = a9;
  *(v9 + 112) = v14;
  *(v9 + 96) = a1;
  *(v9 + 80) = a7;
  *(v9 + 88) = a8;
  *(v9 + 64) = a5;
  *(v9 + 72) = a6;
  *(v9 + 120) = type metadata accessor for BankConnectWebServiceInstitutionLogoRequest();
  *(v9 + 128) = swift_task_alloc();
  v11 = sub_1B77FF4F8();
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76A5580, a5, 0);
}

uint64_t sub_1B76A5580()
{
  v43 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[9];
  v5 = sub_1B78000B8();
  v0[20] = __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);

  v7 = sub_1B7800098();
  v8 = sub_1B78011B8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  if (v9)
  {
    v13 = v0[12];
    v38 = v0[10];
    v39 = v0[11];
    v40 = v8;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v14 = 136315650;
    sub_1B76A7B68(&qword_1EB99E0D0, 255, MEMORY[0x1E6968FB0]);
    v15 = v6;
    v16 = sub_1B7802068();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = v16;
    v6 = v15;
    v20 = sub_1B71A3EF8(v19, v18, &v42);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v0[6] = v38;
    v0[7] = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
    v21 = sub_1B7800908();
    v23 = sub_1B71A3EF8(v21, v22, &v42);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v13;
    _os_log_impl(&dword_1B7198000, v7, v40, "downloadAssetIfNecessary called for url: %s etag: %s timeoutSeconds: %f).", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v41, -1, -1);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v24 = v0[16];
  v25 = v0[15];
  v26 = v0[12];
  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[8];
  v6(v24, v0[9], v0[17]);
  v30 = (v24 + *(v25 + 20));
  *v30 = v28;
  v30[1] = v27;
  *(v24 + *(v25 + 24)) = v26;
  v31 = v29[18];
  v32 = v29[19];
  __swift_project_boxed_opaque_existential_1(v29 + 15, v31);
  v33 = *(v32 + 8);

  v34 = v33(v31, v32);
  v0[21] = v34;
  v35 = swift_task_alloc();
  v0[22] = v35;
  *(v35 + 16) = v34;
  *(v35 + 24) = v24;
  v36 = swift_task_alloc();
  v0[23] = v36;
  *v36 = v0;
  v36[1] = sub_1B76A5968;

  return sub_1B76A2BC0((v0 + 2), &unk_1B7858FC8);
}

uint64_t sub_1B76A5968()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1B76A5D64;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1B76A5A90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B76A5A90()
{
  v20 = v0;
  v1 = v0[5];
  if (v1 == 1)
  {

    v2 = sub_1B7800098();
    v3 = sub_1B78011B8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[13];
      v4 = v0[14];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v19);
      _os_log_impl(&dword_1B7198000, v2, v3, "downloadAssetIfNecessary: asset is unchanged for institution id: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
      MEMORY[0x1B8CA7A40](v6, -1, -1);
    }
  }

  else
  {
    v8 = v0[2];
    v9 = v0[3];
    v10 = v0[4];
    sub_1B7465A9C(v8, v9, v10, v0[5]);

    v11 = sub_1B7800098();
    v12 = sub_1B78011B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[13];
      v18 = v0[14];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B71A3EF8(v13, v18, &v19);
      _os_log_impl(&dword_1B7198000, v11, v12, "downloadAssetIfNecessary: received modified data for institution id: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    sub_1B76A5EC0(v8, v9, v10, v1, v0[13], v0[14]);

    sub_1B7465AE0(v8, v9, v10, v1);

    sub_1B720A388(v8, v9);
  }

  sub_1B76A7F78(v0[16], type metadata accessor for BankConnectWebServiceInstitutionLogoRequest);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B76A5D64()
{
  v1 = *(v0 + 128);

  sub_1B76A7F78(v1, type metadata accessor for BankConnectWebServiceInstitutionLogoRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B76A5E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B7201BB0;

  return BankConnectWebServiceClient.institutionLogo(for:)(a1, a3);
}

void sub_1B76A5EC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAF65B0);
  sub_1B720ABEC(a1, a2);

  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();

  if (os_log_type_enabled(v15, v16))
  {
    v33 = a3;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v17 = 136315650;
    *(v17 + 4) = sub_1B71A3EF8(a5, a6, v36);
    *(v17 + 12) = 2048;
    v18 = a2 >> 62;
    v34 = v7;
    if ((a2 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(a2);
LABEL_15:
      *(v17 + 14) = v19;
      sub_1B720A388(a1, a2);
      *(v17 + 22) = 2080;
      v35[0] = v33;
      v35[1] = a4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
      v23 = sub_1B7800908();
      v25 = sub_1B71A3EF8(v23, v24, v36);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_1B7198000, v15, v16, "Asset data store insertOrUpdate for id: %s %ld bytes etag: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v32, -1, -1);
      MEMORY[0x1B8CA7A40](v17, -1, -1);

      v7 = v34;
      goto LABEL_16;
    }

    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v19 = v19;
    goto LABEL_15;
  }

  sub_1B720A388(a1, a2);

LABEL_16:
  v26 = [*(*(v7 + 112) + 16) newBackgroundContext];
  v31 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v31);
  sub_1B7801468();

  v27 = sub_1B7800098();
  v28 = sub_1B78011B8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1B71A3EF8(a5, a6, v35);
    _os_log_impl(&dword_1B7198000, v27, v28, "Asset saved for id: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1B8CA7A40](v30, -1, -1);
    MEMORY[0x1B8CA7A40](v29, -1, -1);
  }
}

uint64_t BankConnectInstitutionAssetManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BankConnectInstitutionAssetManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t BankConnectInstitutionAssetManager.requestInstitutionLogo(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B8);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for RawBankConnectData.Institution(0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76A660C, v2, 0);
}

uint64_t sub_1B76A660C()
{
  v50 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[3];
  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAF65B0);
  sub_1B76A7D90(v2, v1, type metadata accessor for RawBankConnectData.Institution);
  v4 = sub_1B7800098();
  v5 = sub_1B78011B8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_1B76A7F78(v7, type metadata accessor for RawBankConnectData.Institution);
    v12 = sub_1B71A3EF8(v10, v11, &v49);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B7198000, v4, v5, "requestInstitutionLogo for institution ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {

    sub_1B76A7F78(v7, type metadata accessor for RawBankConnectData.Institution);
  }

  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[6];
  sub_1B7205588(v0[3] + *(v0[12] + 24), v15, &qword_1EB9956B8);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1B7205418(v0[6], &qword_1EB9956B8);
    v16 = sub_1B7800098();
    v17 = sub_1B78011B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7198000, v16, v17, "requestInstitutionLogo: No icon payload.", v18, 2u);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
    }

    v19 = v0[2];

    v20 = sub_1B77FF4F8();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_23;
  }

  sub_1B76A7D2C(v0[6], v0[11]);
  result = GSMainScreenScaleFactor();
  if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v22 <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v22 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v23 = v0[11];
  if (v22 != 2)
  {
    v23 += *(v0[7] + 20);
  }

  v24 = v0[5];
  sub_1B7205588(v23, v24, &unk_1EB994C70);
  v25 = sub_1B77FF4F8();
  v0[14] = v25;
  v26 = *(v25 - 8);
  v0[15] = v26;
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = v0[10];
    v27 = v0[11];
    sub_1B7205418(v0[5], &unk_1EB994C70);
    sub_1B76A7D90(v27, v28, type metadata accessor for RawBankConnectData.Institution.Icons);
    v29 = sub_1B7800098();
    v30 = sub_1B78011D8();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[10];
    v32 = v0[11];
    if (v31)
    {
      v34 = v0[9];
      v48 = v0[11];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315138;
      sub_1B76A7D90(v33, v34, type metadata accessor for RawBankConnectData.Institution.Icons);
      v37 = sub_1B7800908();
      v39 = v38;
      sub_1B76A7F78(v33, type metadata accessor for RawBankConnectData.Institution.Icons);
      v40 = sub_1B71A3EF8(v37, v39, &v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B7198000, v29, v30, "icon URL for screen scale is required in icons: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1B8CA7A40](v36, -1, -1);
      MEMORY[0x1B8CA7A40](v35, -1, -1);

      v41 = v48;
    }

    else
    {

      sub_1B76A7F78(v33, type metadata accessor for RawBankConnectData.Institution.Icons);
      v41 = v32;
    }

    sub_1B76A7F78(v41, type metadata accessor for RawBankConnectData.Institution.Icons);
    (*(v26 + 56))(v0[2], 1, 1, v25);
LABEL_23:

    v47 = v0[1];

    return v47();
  }

  v42 = v0[3];
  (*(v26 + 32))(v0[2], v0[5], v25);
  v44 = *v42;
  v43 = v42[1];
  v45 = swift_task_alloc();
  v0[16] = v45;
  *v45 = v0;
  v45[1] = sub_1B76A6CAC;
  v46 = v0[2];

  return BankConnectInstitutionAssetManager.requestAsset(assetURL:institutionID:)(v46, v44, v43);
}

uint64_t sub_1B76A6CAC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B76A6DBC, v1, 0);
}

uint64_t sub_1B76A6DBC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[2];
  sub_1B76A7F78(v0[11], type metadata accessor for RawBankConnectData.Institution.Icons);
  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

void sub_1B76A6EA4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ManagedInstitutionAsset();
  v7 = static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(a1, a2);
  if (v3)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B78000B8();
    __swift_project_value_buffer(v8, qword_1EDAF65B0);

    v9 = v3;
    v10 = sub_1B7800098();
    v11 = sub_1B78011D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B71A3EF8(a1, a2, &v22);
      *(v12 + 12) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_1B7198000, v10, v11, "Error obtaining asset data for id: %s: %@", v12, 0x16u);
      sub_1B7205418(v13, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }

    else
    {
    }

    v19 = 0;
    goto LABEL_10;
  }

  if (!v7)
  {
    v19 = 0;
LABEL_10:
    v21 = 0xF000000000000000;
    goto LABEL_11;
  }

  v17 = v7;
  v18 = [v7 data];
  v19 = sub_1B77FF5B8();
  v21 = v20;

LABEL_11:
  *a3 = v19;
  a3[1] = v21;
}

void sub_1B76A7100(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ManagedInstitutionAsset();
  v7 = static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(a1, a2);
  if (v3)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B78000B8();
    __swift_project_value_buffer(v8, qword_1EDAF65B0);

    v9 = v3;
    v10 = sub_1B7800098();
    v11 = sub_1B78011D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B71A3EF8(a1, a2, &v23);
      *(v12 + 12) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_1B7198000, v10, v11, "Error obtaining etag for id: %s: %@", v12, 0x16u);
      sub_1B7205418(v13, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }

    else
    {
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else if (v7)
  {
    v17 = v7;
    v18 = [v7 etag];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B7800868();
      v22 = v21;
    }

    else
    {

      v20 = 0;
      v22 = 0;
    }

    *a3 = v20;
    a3[1] = v22;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B76A736C(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInstitutionAsset();
  v11 = static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(a1, a2);
  if (!v3)
  {
    v12 = v11;
    if (v11)
    {
      sub_1B77FF938();
      v13 = sub_1B77FF8B8();
      (*(v8 + 8))(v10, v7);
      [v12 setLastRequestDate_];

      v16[0] = 0;
      if ([a3 save_])
      {
        v14 = v16[0];
      }

      else
      {
        v15 = v16[0];
        sub_1B77FF318();

        swift_willThrow();
      }
    }
  }
}

void sub_1B76A7530(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v51 = a6;
  v47 = a5;
  v52[1] = *MEMORY[0x1E69E9840];
  v14 = sub_1B77FF988();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v48 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ManagedInstitutionAsset();
  v17 = a1;
  v18 = static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(a1, a2);
  if (v8)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B78000B8();
    __swift_project_value_buffer(v19, qword_1EDAF65B0);

    v20 = v8;
    v21 = sub_1B7800098();
    v22 = sub_1B78011D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45[1] = a8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v46 = a3;
      v26 = v25;
      v27 = swift_slowAlloc();
      v45[0] = a7;
      v28 = v27;
      v52[0] = v27;
      *v24 = 136315394;
      *(v24 + 4) = sub_1B71A3EF8(v17, a2, v52);
      *(v24 + 12) = 2112;
      v29 = v8;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v30;
      *v26 = v30;
      _os_log_impl(&dword_1B7198000, v21, v22, "Query for existing asset failed for id: %s. Error: %@", v24, 0x16u);
      sub_1B7205418(v26, &qword_1EB9910D0);
      v31 = v26;
      a3 = v46;
      MEMORY[0x1B8CA7A40](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B8CA7A40](v28, -1, -1);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v32 = v18;
  if (!v18)
  {
LABEL_10:
    v35 = [objc_allocWithZone(v16) initWithContext_];
    v36 = sub_1B7800838();
    [v35 setInstitutionID_];

    if (v51)
    {
      v37 = sub_1B7800838();
    }

    else
    {
      v37 = 0;
    }

    [v35 setEtag_];

    v38 = sub_1B77FF598();
    [v35 setData_];

    v39 = v48;
    sub_1B77FF938();
    v40 = sub_1B77FF8B8();
    (*(v49 + 8))(v39, v50);
    [v35 setLastRequestDate_];

    v32 = 0;
    goto LABEL_16;
  }

  v33 = v51;
  if (v51)
  {
    v34 = v18;
    v33 = sub_1B7800838();
  }

  else
  {
    v41 = v18;
  }

  [v32 setEtag_];

  v42 = sub_1B77FF598();
  [v32 setData_];

LABEL_16:
  v52[0] = 0;
  if ([a3 save_])
  {
    v43 = v52[0];
  }

  else
  {
    v44 = v52[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B76A79E4(uint64_t a1)
{
  v3 = *(sub_1B77FF4F8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *(v1 + v6);
  v12 = *v10;
  v13 = v10[1];
  v14 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1B723838C;

  return sub_1B76A5478(v11, a1, v7, v8, v9, v1 + v4, v12, v13, v14);
}

void sub_1B76A7B5C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1B76A7B68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

unint64_t sub_1B76A7CB8()
{
  result = qword_1EB99B1C0;
  if (!qword_1EB99B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B1C0);
  }

  return result;
}

uint64_t sub_1B76A7D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Institution.Icons(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76A7D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B76A7DFC()
{
  result = qword_1EB99B1C8;
  if (!qword_1EB99B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B1C8);
  }

  return result;
}

uint64_t sub_1B76A7ECC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B76A5E0C(a1, v5, v4);
}

uint64_t sub_1B76A7F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InternalAccountBalanceAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  sub_1B7227AFC(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_accountID, &v44 - v6);
  v8 = *(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken);
  LOBYTE(v9) = *(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken + 8);
  LOBYTE(v10) = *(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_isMonitoring);
  sub_1B719B06C(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyProvider, v55);
  v11 = *(v1 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_coreDataStore);
  v46 = v7;
  sub_1B7227AFC(v7, v5);
  sub_1B719B06C(v55, v53);
  sub_1B72274E8(v8, v9);
  v12 = sub_1B72020F4(&unk_1F2F425A0);
  sub_1B7205418(&unk_1F2F425C0, &qword_1EB98F4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B1D0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + qword_1EDB08720) = 0;
  v14 = v13 + qword_1EDB086F0;
  *v14 = 0;
  *(v14 + 8) = -1;
  v15 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_23:
    swift_once();
  }

  v16 = sub_1B78000B8();
  v17 = __swift_project_value_buffer(v16, qword_1EDAF6590);
  (*(*(v16 - 8) + 16))(v13 + v15, v17, v16);
  sub_1B7227AFC(v5, v13 + qword_1EDB086F8);
  *(v13 + 32) = v10;
  *(v13 + qword_1EDB08748) = v11;
  v18 = (v13 + qword_1EDB08740);
  *v18 = sub_1B76A8B3C;
  v18[1] = 0;
  v19 = *v14;
  *v14 = v8;
  v20 = *(v14 + 8);
  *(v14 + 8) = v9;

  sub_1B7201CF8(v19, v20);
  v21 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v22 = type metadata accessor for FinanceStore();
  v10 = &off_1F2F66960;
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v21;
  sub_1B719B06C(v50, v49);
  v9 = swift_allocObject();
  sub_1B71E4C44(v49, v9 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v23 = (v13 + qword_1EDB08708);
  *v23 = &unk_1B7810520;
  v23[1] = v9;
  v24 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v24;
  sub_1B719B06C(v50, v49);
  v25 = swift_allocObject();
  sub_1B71E4C44(v49, v25 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v26 = (v13 + qword_1EDB08718);
  *v26 = &unk_1B7824A70;
  v26[1] = v25;
  *(v13 + qword_1EDB08710) = v12;
  v27 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  sub_1B78013C8();
  v28 = [*(v11 + 16) persistentStoreCoordinator];
  v29 = [v28 persistentStores];

  sub_1B72BB97C();
  v12 = sub_1B7800C38();

  v45 = v5;
  v44 = v13;
  if (!(v12 >> 62))
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_25:

    v38 = 0;
    v40 = 0;
    v36 = v45;
    v37 = v44;
    goto LABEL_26;
  }

  v11 = sub_1B7801958();
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
  v14 = 0x6C61636F4CLL;
  v48 = v12 & 0xC000000000000001;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v30 = MEMORY[0x1B8CA5DC0](v8, v12);
    }

    else
    {
      if (v8 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v30 = *(v12 + 8 * v8 + 32);
    }

    v5 = v30;
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = [v30 configurationName];
    v31 = sub_1B7800868();
    v13 = v32;

    if (v31 == 0x6C61636F4CLL && v13 == 0xE500000000000000)
    {
      break;
    }

    v34 = sub_1B78020F8();

    if (v34)
    {
      goto LABEL_18;
    }

    ++v8;
    if (v9 == v11)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v35 = [v5 identifier];

  v36 = v45;
  v37 = v44;
  if (v35)
  {
    v38 = sub_1B7800868();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

LABEL_26:
  v41 = (v37 + qword_1EDB08730);
  *v41 = v38;
  v41[1] = v40;
  *(v37 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v42 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);
  sub_1B7205418(v36, &unk_1EB993A10);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1B7205418(v46, &unk_1EB993A10);
  result = __swift_destroy_boxed_opaque_existential_1(v53);
  *(v37 + qword_1EDB08738) = v42;
  *v47 = v37;
  return result;
}

uint64_t InternalAccountBalanceAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return (sub_1B73E4558)(a1);
}

uint64_t sub_1B76A87EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return (sub_1B73E4558)(a1);
}

uint64_t sub_1B76A88A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B76A8938, v6);
}

uint64_t sub_1B76A8938()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B73DE6C4;
  v2 = *(v0 + 24);

  return sub_1B73E4558(v2);
}

uint64_t InternalAccountBalanceAsyncSequence.deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_accountID, &unk_1EB993A10);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyProvider);

  return v0;
}

uint64_t InternalAccountBalanceAsyncSequence.__deallocating_deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_accountID, &unk_1EB993A10);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_1B76A8B04@<X0>(uint64_t *a1@<X8>)
{
  InternalAccountBalanceAsyncSequence.makeAsyncIterator()(a1);
}

unint64_t sub_1B76A8B74()
{
  result = qword_1EB99B1D8;
  if (!qword_1EB99B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B1D8);
  }

  return result;
}

uint64_t type metadata accessor for InternalAccountBalanceAsyncSequence()
{
  result = qword_1EB99B1E0;
  if (!qword_1EB99B1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B76A8C1C()
{
  sub_1B73F170C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B76A8D00()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7475746974736E69;
    if (v1 != 1)
    {
      v5 = 0x4E79616C70736964;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B76A8DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76AB3F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76A8E20(uint64_t a1)
{
  v2 = sub_1B76A9198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76A8E5C(uint64_t a1)
{
  v2 = sub_1B76A9198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B1F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76A9198();
  sub_1B78023F8();
  v11[15] = 0;
  sub_1B77FFA18();
  sub_1B71A69B4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for AccountInfo(0);
    v11[14] = 1;
    sub_1B7801F78();
    v11[13] = 2;
    sub_1B7801F78();
    v11[12] = 3;
    sub_1B7801F88();
    v11[11] = 4;
    sub_1B7801F88();
    v11[10] = *(v3 + *(v9 + 36));
    v11[9] = 5;
    sub_1B7215098();
    sub_1B7801F38();
    v11[8] = 6;
    sub_1B77FF988();
    sub_1B71A69B4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B76A9198()
{
  result = qword_1EB99B1F8;
  if (!qword_1EB99B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B1F8);
  }

  return result;
}

uint64_t AccountInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v30 - v4;
  v5 = sub_1B77FFA18();
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B200);
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = v30 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 36);
  v12[v13] = 2;
  v14 = *(v10 + 40);
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v39 = v12;
  v40 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76A9198();
  v36 = v8;
  v17 = v38;
  sub_1B78023C8();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B71F31EC(&v39[v40]);
  }

  else
  {
    v18 = v13;
    v30[1] = v15;
    v20 = v33;
    v19 = v34;
    v38 = a1;
    v48 = 0;
    sub_1B71A69B4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    sub_1B7801E48();
    v21 = v39;
    (*(v19 + 32))(v39, v35, v5);
    v47 = 1;
    v22 = sub_1B7801DF8();
    v23 = (v21 + v9[5]);
    *v23 = v22;
    v23[1] = v24;
    v46 = 2;
    v25 = sub_1B7801DF8();
    v26 = (v21 + v9[6]);
    *v26 = v25;
    v26[1] = v27;
    v45 = 3;
    *(v21 + v9[7]) = sub_1B7801E08() & 1;
    v44 = 4;
    *(v21 + v9[8]) = sub_1B7801E08() & 1;
    v42 = 5;
    sub_1B721544C();
    sub_1B7801DB8();
    *(v21 + v18) = v43;
    v41 = 6;
    sub_1B71A69B4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v28 = v32;
    sub_1B7801DB8();
    (*(v20 + 8))(v36, v37);
    sub_1B72DFF88(v28, v21 + v40);
    sub_1B76AA054(v21, v31, type metadata accessor for AccountInfo);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_1B76AA0BC(v21, type metadata accessor for AccountInfo);
  }
}

uint64_t sub_1B76A9808()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x616470557473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E65736E6F63;
  }
}

uint64_t sub_1B76A9870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76AB640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76A9898(uint64_t a1)
{
  v2 = sub_1B76A9B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76A98D4(uint64_t a1)
{
  v2 = sub_1B76A9B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConsentInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76A9B58();
  sub_1B78023F8();
  v10[15] = 0;
  sub_1B77FFA18();
  sub_1B71A69B4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ConsentInfo(0) + 20));
    v10[13] = 1;
    sub_1B761F714();
    sub_1B7801FC8();
    v10[12] = 2;
    sub_1B77FF988();
    sub_1B71A69B4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B76A9B58()
{
  result = qword_1EB99B210;
  if (!qword_1EB99B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B210);
  }

  return result;
}

uint64_t ConsentInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_1B77FF988();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B77FFA18();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B218);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ConsentInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76A9B58();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v23;
  v18 = v11;
  v30 = 0;
  sub_1B71A69B4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v13 = v24;
  sub_1B7801E48();
  v14 = v18;
  (*(v22 + 32))(v18, v13, v25);
  v28 = 1;
  sub_1B761F768();
  sub_1B7801E48();
  v24 = v9;
  *(v14 + *(v9 + 20)) = v29;
  v27 = 2;
  sub_1B71A69B4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v17 = v5;
  v15 = v21;
  sub_1B7801E48();
  (*(v12 + 8))(v8, v26);
  (*(v19 + 32))(v14 + *(v24 + 6), v17, v15);
  sub_1B76AA054(v14, v20, type metadata accessor for ConsentInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B76AA0BC(v14, type metadata accessor for ConsentInfo);
}

uint64_t sub_1B76AA054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76AA0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B76AA188(void *a1@<X8>)
{
  v3 = type metadata accessor for AccountInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalAccount();
  v26.receiver = swift_getObjCClassFromMetadata();
  v26.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v7 = objc_msgSendSuper2(&v26, sel_fetchRequest);
  v8 = sub_1B7800C18();
  [v7 setRelationshipKeyPathsForPrefetching_];

  v9 = sub_1B7801498();
  if (v1)
  {
  }

  else
  {
    v10 = v9;
    if (v9 >> 62)
    {
      goto LABEL_19;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      while (1)
      {
        v20 = v7;
        v21 = a1;
        v27 = MEMORY[0x1E69E7CC0];
        sub_1B71FE840(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          break;
        }

        v12 = 0;
        v13 = v27;
        v14 = v10;
        v23 = v10;
        v24 = v10 & 0xC000000000000001;
        v22 = v10 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          a1 = v11;
          v15 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v24)
          {
            v16 = MEMORY[0x1B8CA5DC0](v12, v14);
          }

          else
          {
            if (v12 >= *(v22 + 16))
            {
              goto LABEL_18;
            }

            v16 = *(v14 + 8 * v12 + 32);
          }

          v17 = v16;
          v25 = v16;
          sub_1B76AA488(&v25, v6);

          v27 = v13;
          v7 = *(v13 + 16);
          v18 = *(v13 + 24);
          v10 = v7 + 1;
          if (v7 >= v18 >> 1)
          {
            sub_1B71FE840(v18 > 1, v7 + 1, 1);
            v13 = v27;
          }

          *(v13 + 16) = v10;
          sub_1B76AB764(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, type metadata accessor for AccountInfo);
          ++v12;
          v19 = v15 == a1;
          v11 = a1;
          v14 = v23;
          if (v19)
          {

            *v21 = v13;
            return;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v11 = sub_1B7801958();
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:

      *a1 = MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t sub_1B76AA488@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v38 = sub_1B77FFA18();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 publicAccountObject];
  v12 = [v11 id];

  sub_1B77FF9E8();
  v13 = [v10 accountId];
  sub_1B7800868();

  v14 = [v10 institutionId];
  v15 = sub_1B7800868();
  v36 = v16;
  v37 = v15;

  v17 = [v10 publicAccountObject];
  v18 = [v17 displayName];

  v19 = sub_1B7800868();
  v35 = v20;

  v21 = [v10 isAccountEnabled];
  v22 = [v10 isAccountMismatched];
  sub_1B7673840([v10 lastAccountRefreshFailureValue], &v39);
  v23 = v39;
  v24 = [v10 lastAccountRequestAttemptDate];
  if (v24)
  {
    v25 = v24;
    sub_1B77FF928();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_1B77FF988();
  (*(*(v27 - 8) + 56))(v6, v26, 1, v27);
  (*(v7 + 32))(a2, v9, v38);
  v28 = type metadata accessor for AccountInfo(0);
  v29 = (a2 + v28[5]);
  v30 = v36;
  *v29 = v37;
  v29[1] = v30;
  v31 = (a2 + v28[6]);
  v32 = v35;
  *v31 = v19;
  v31[1] = v32;
  *(a2 + v28[7]) = v21;
  *(a2 + v28[8]) = v22;
  *(a2 + v28[9]) = v23;
  return sub_1B7205340(v6, a2 + v28[10]);
}

uint64_t sub_1B76AA7F8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1B7801468();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1B76AA864(uint64_t *a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1B77FFA18();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConsentInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedConsent();
  v38.receiver = swift_getObjCClassFromMetadata();
  v38.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v10 = objc_msgSendSuper2(&v38, sel_fetchRequest);
  v11 = sub_1B7801498();
  if (v1)
  {
  }

  else
  {
    v12 = v25;
    v33 = v10;
    v13 = v11;
    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      while (1)
      {
        v24 = v2;
        v29 = v7;
        v30 = v6;
        v34 = v5;
        v31 = v3;
        v39 = MEMORY[0x1E69E7CC0];
        v12 = &v39;
        sub_1B71FE884(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          break;
        }

        v7 = 0;
        v15 = v13;
        v32 = v13 & 0xC000000000000001;
        v6 = v39;
        v26 = v13 & 0xFFFFFFFFFFFFFF8;
        v27 = v14;
        v2 = (v28 + 32);
        v28 = v13;
        while (1)
        {
          v3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v32)
          {
            v16 = MEMORY[0x1B8CA5DC0](v7, v15);
          }

          else
          {
            if (v7 >= *(v26 + 16))
            {
              goto LABEL_21;
            }

            v16 = *(v15 + 8 * v7 + 32);
          }

          v13 = v16;
          v17 = [v16 id];
          sub_1B77FF9E8();

          v18 = [v13 consentStatusValue];
          if (v18 == 1)
          {
            v19 = 1;
          }

          else
          {
            if (v18)
            {
              goto LABEL_25;
            }

            v19 = 0;
          }

          v20 = [v13 lastUpdatedAt];
          v5 = v30;
          sub_1B77FF928();

          (*v2)(v9, v34, v31);
          v9[*(v5 + 5)] = v19;
          v39 = v6;
          v22 = *(v6 + 16);
          v21 = *(v6 + 24);
          v13 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            sub_1B71FE884(v21 > 1, v22 + 1, 1);
            v6 = v39;
          }

          *(v6 + 16) = v13;
          sub_1B76AB764(v9, v6 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, type metadata accessor for ConsentInfo);
          ++v7;
          v15 = v28;
          v12 = v33;
          if (v3 == v27)
          {

            *v25 = v6;
            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v14 = sub_1B7801958();
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1B7801A78();

      v36 = 0xD000000000000021;
      v37 = 0x80000001B7883960;
      v35 = [v13 consentStatusValue];
      v23 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v23);

      sub_1B7801C88();
      __break(1u);
    }

    else
    {
LABEL_23:

      *v12 = MEMORY[0x1E69E7CC0];
    }
  }
}

void *static FinanceDiagnosticsProvider.getLastAccountRequestAttemptDate(accountID:context:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for ManagedInternalAccount();
  result = static ManagedInternalAccount.existingAccount(withPublicAccountID:in:)();
  if (!v1)
  {
    if (result)
    {
      v7 = result;
      v8 = [result lastAccountRequestAttemptDate];
      if (v8)
      {
        v9 = v8;
        sub_1B77FF928();

        v10 = sub_1B77FF988();
        (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      }

      else
      {

        v12 = sub_1B77FF988();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      }

      return sub_1B7205340(v5, a1);
    }

    else
    {
      v11 = sub_1B77FF988();
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }

  return result;
}

unint64_t static FinanceDiagnosticsProvider.getUserDefaults(suiteName:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  }

  v3 = sub_1B7800838();
  v4 = [v2 persistentDomainForName_];

  if (!v4)
  {
    return sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  }

  v5 = sub_1B7800728();

  v6 = sub_1B7453BEC(v5);

  return v6;
}

void sub_1B76AAFF4()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B76AB0AC();
    if (v1 <= 0x3F)
    {
      sub_1B72F2B80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B76AB0AC()
{
  if (!qword_1EDAFA1C8[0])
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, qword_1EDAFA1C8);
    }
  }
}

uint64_t sub_1B76AB124()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    result = sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B76AB1E4()
{
  result = qword_1EB99B250;
  if (!qword_1EB99B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B250);
  }

  return result;
}

unint64_t sub_1B76AB23C()
{
  result = qword_1EB99B258;
  if (!qword_1EB99B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B258);
  }

  return result;
}

unint64_t sub_1B76AB294()
{
  result = qword_1EB99B260;
  if (!qword_1EB99B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B260);
  }

  return result;
}

unint64_t sub_1B76AB2EC()
{
  result = qword_1EB99B268;
  if (!qword_1EB99B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B268);
  }

  return result;
}

unint64_t sub_1B76AB344()
{
  result = qword_1EB99B270;
  if (!qword_1EB99B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B270);
  }

  return result;
}

unint64_t sub_1B76AB39C()
{
  result = qword_1EB99B278;
  if (!qword_1EB99B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B278);
  }

  return result;
}

uint64_t sub_1B76AB3F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000044496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7875890 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78758B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B78758D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7889520 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B76AB640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65736E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xED00007441646574)
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

uint64_t sub_1B76AB764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FinanceStore.spendingSummary(forAccountID:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B76AB860, 0, 0);
}

uint64_t sub_1B76AB860()
{
  v0[1].opaque[0] = 0;
  v0[1].opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v2 = v0[3].opaque[0];
  v1 = v0[3].opaque[1];
  v4 = v0[2].opaque[0];
  v3 = v0[2].opaque[1];
  v5 = _os_activity_create(&dword_1B7198000, "SpendingSummary", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, v0 + 1);
  sub_1B76AB9B8(v3, v2, v1, v4);
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v6 = v0->opaque[1];

  return v6();
}

void sub_1B76AB9B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v28 - v7;
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v13 = sub_1B78000B8();
  __swift_project_value_buffer(v13, qword_1EDAFAF58);
  v14 = *(v10 + 16);
  v35 = a1;
  v14(v12, a1, v9);
  sub_1B73F1BFC(a2, v8);
  v15 = sub_1B7800098();
  v16 = sub_1B78011F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v4;
    v18 = v17;
    v29 = swift_slowAlloc();
    v38 = v29;
    *v18 = 136315394;
    sub_1B729D260();
    v19 = sub_1B7802068();
    v30 = a2;
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_1B71A3EF8(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B77FF988();
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](3943982, 0xE300000000000000);
    sub_1B7801C48();
    v23 = v36;
    v24 = v37;
    sub_1B73F8010(v8);
    v25 = sub_1B71A3EF8(v23, v24, &v38);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1B7198000, v15, v16, "Generating Spending Summary for accountID: %s with range: %s.", v18, 0x16u);
    v26 = v29;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v26, -1, -1);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  else
  {

    sub_1B73F8010(v8);
    (*(v10 + 8))(v12, v9);
  }

  static DeviceInfo.deviceType.getter(&v36);
  if (v36)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1B74E4DC8();
  }
}

uint64_t FinanceStore.setExcludeTransactionFromSpendingSummary(_:forTransactionID:)(char a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  *(v3 + 128) = a1;
  *(v3 + 96) = type metadata accessor for FinanceStore.Message();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76ABE30, 0, 0);
}

uint64_t sub_1B76ABE30()
{
  v10 = v0;
  static DeviceInfo.deviceType.getter(&v9);
  if (v9)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();

    v2 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 128);
  *(v0 + 112) = *(*(v0 + 88) + 24);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999C38) + 48);
  *v3 = v5;
  v7 = sub_1B77FFA18();
  (*(*(v7 - 8) + 16))(&v3[v6], v4, v7);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B72C6294, 0, 0);
}

void *Array<A>.pickupFulfillments.getter(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderPickupFulfillment();
  v29 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for RawOrderFulfillment();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v18 = *(v13 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B76AC304(v17, v15);
    sub_1B76ADB38(v15, v12, type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v28;
      sub_1B76ADB38(v12, v28, type metadata accessor for RawOrderPickupFulfillment);
      v21 = v20;
      v22 = v27;
      sub_1B76ADB38(v21, v27, type metadata accessor for RawOrderPickupFulfillment);
      sub_1B76ADB38(v22, v8, type metadata accessor for RawOrderPickupFulfillment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B723F710(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_1B723F710(v23 > 1, v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_1B76ADB38(v8, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for RawOrderPickupFulfillment);
    }

    else
    {
      sub_1B748E454(v12, type metadata accessor for RawOrderFulfillment);
    }

    v17 += v18;
    --v16;
  }

  while (v16);
  return v19;
}

uint64_t type metadata accessor for RawOrderFulfillment()
{
  result = qword_1EDAF86B0;
  if (!qword_1EDAF86B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76AC304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderFulfillment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *Array<A>.shippingFulfillments.getter(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderShippingFulfillment();
  v29 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for RawOrderFulfillment();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v18 = *(v13 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B76AC304(v17, v15);
    sub_1B76ADB38(v15, v12, type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B748E454(v12, type metadata accessor for RawOrderFulfillment);
    }

    else
    {
      v20 = v28;
      sub_1B76ADB38(v12, v28, type metadata accessor for RawOrderShippingFulfillment);
      v21 = v20;
      v22 = v27;
      sub_1B76ADB38(v21, v27, type metadata accessor for RawOrderShippingFulfillment);
      sub_1B76ADB38(v22, v8, type metadata accessor for RawOrderShippingFulfillment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B723F738(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_1B723F738(v23 > 1, v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_1B76ADB38(v8, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for RawOrderShippingFulfillment);
    }

    v17 += v18;
    --v16;
  }

  while (v16);
  return v19;
}

uint64_t RawOrderFulfillment.lineItems.getter()
{
  v1 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76AC304(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76ADB38(v9, v3, type metadata accessor for RawOrderPickupFulfillment);
    v10 = *v3;

    v11 = v3;
    v12 = type metadata accessor for RawOrderPickupFulfillment;
  }

  else
  {
    sub_1B76ADB38(v9, v6, type metadata accessor for RawOrderShippingFulfillment);
    v10 = *v6;

    v11 = v6;
    v12 = type metadata accessor for RawOrderShippingFulfillment;
  }

  sub_1B748E454(v11, v12);
  return v10;
}

uint64_t RawOrderFulfillment.DecodingConfiguration.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawOrderFulfillment.fulfillmentIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76AC304(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76ADB38(v10, v4, type metadata accessor for RawOrderPickupFulfillment);
    v11 = *&v4[*(v2 + 60)];

    v12 = v4;
    v13 = type metadata accessor for RawOrderPickupFulfillment;
  }

  else
  {
    sub_1B76ADB38(v10, v7, type metadata accessor for RawOrderShippingFulfillment);
    v11 = *&v7[*(v5 + 64)];

    v12 = v7;
    v13 = type metadata accessor for RawOrderShippingFulfillment;
  }

  sub_1B748E454(v12, v13);
  return v11;
}

uint64_t RawOrderFulfillment.isStatusTerminal.getter()
{
  v1 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76AC304(v0, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B76ADB38(v9, v6, type metadata accessor for RawOrderShippingFulfillment);
    v12 = v6[40];
    sub_1B748E454(v6, type metadata accessor for RawOrderShippingFulfillment);
    if (v12 < 7)
    {
      v11 = 0x24u >> v12;
      return v11 & 1;
    }

LABEL_6:
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  sub_1B76ADB38(v9, v3, type metadata accessor for RawOrderPickupFulfillment);
  v10 = v3[8];
  sub_1B748E454(v3, type metadata accessor for RawOrderPickupFulfillment);
  if (v10 >= 5)
  {
    goto LABEL_6;
  }

  v11 = 8u >> v10;
  return v11 & 1;
}

uint64_t sub_1B76ACBE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756B636970;
  }

  else
  {
    v3 = 0x676E697070696873;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x70756B636970;
  }

  else
  {
    v5 = 0x676E697070696873;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B76ACC8C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76ACD0C()
{
  sub_1B7800798();
}

uint64_t sub_1B76ACD78()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76ACDF4@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B76ACE54(uint64_t *a1@<X8>)
{
  v2 = 0x676E697070696873;
  if (*v1)
  {
    v2 = 0x70756B636970;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B76ACF40()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B76ACFC4()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B76AD020@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B76AD0C0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B76AD118(uint64_t a1)
{
  v2 = sub_1B76ADE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76AD154(uint64_t a1)
{
  v2 = sub_1B76ADE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderFulfillment.DecodingConfiguration.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawOrderFulfillment.DecodingConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RawOrderFulfillment.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v26 = a3;
  v4 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B280);
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B76ADE98();
  v17 = v27;
  sub_1B78023C8();
  if (v17)
  {
  }

  else
  {
    v24 = v15;
    v27 = v13;
    v18 = v28;
    v19 = v25;
    v20 = v26;
    sub_1B76ADEEC();
    sub_1B7801E48();
    v22 = (v19 + 8);
    if (v29[0])
    {
      sub_1B719B06C(v30, v29);
      RawOrderPickupFulfillment.init(from:configuration:)(v29, v18, v6);
      (*v22)(v12, v10);
      v23 = v24;
      sub_1B76ADB38(v6, v24, type metadata accessor for RawOrderPickupFulfillment);
    }

    else
    {
      sub_1B719B06C(v30, v29);
      RawOrderShippingFulfillment.init(from:configuration:)(v29, v18, v9);
      (*v22)(v12, v10);
      v23 = v24;
      sub_1B76ADB38(v9, v24, type metadata accessor for RawOrderShippingFulfillment);
    }

    swift_storeEnumTagMultiPayload();
    sub_1B76ADB38(v23, v20, type metadata accessor for RawOrderFulfillment);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t RawOrderFulfillment.encode(to:)(void *a1)
{
  v2 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B298);
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76ADE98();
  sub_1B78023F8();
  sub_1B76AC304(v20[1], v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v20[0];
    sub_1B76ADB38(v9, v20[0], type metadata accessor for RawOrderPickupFulfillment);
    v24 = 1;
    sub_1B76ADF40();
    v14 = v21;
    v15 = v22;
    sub_1B7801FC8();
    if (!v14)
    {
      RawOrderPickupFulfillment.encode(to:)(a1);
    }

    v16 = type metadata accessor for RawOrderPickupFulfillment;
    v17 = v13;
  }

  else
  {
    sub_1B76ADB38(v9, v6, type metadata accessor for RawOrderShippingFulfillment);
    v23 = 0;
    sub_1B76ADF40();
    v18 = v21;
    v15 = v22;
    sub_1B7801FC8();
    if (!v18)
    {
      RawOrderShippingFulfillment.encode(to:)(a1);
    }

    v16 = type metadata accessor for RawOrderShippingFulfillment;
    v17 = v6;
  }

  sub_1B748E454(v17, v16);
  return (*(v10 + 8))(v12, v15);
}

uint64_t RawOrderFulfillment.pickupFulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76AC304(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76ADB38(v6, a1, type metadata accessor for RawOrderPickupFulfillment);
    v7 = 0;
  }

  else
  {
    sub_1B748E454(v6, type metadata accessor for RawOrderFulfillment);
    v7 = 1;
  }

  v8 = type metadata accessor for RawOrderPickupFulfillment();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t RawOrderFulfillment.shippingFulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76AC304(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B748E454(v6, type metadata accessor for RawOrderFulfillment);
    v7 = 1;
  }

  else
  {
    sub_1B76ADB38(v6, a1, type metadata accessor for RawOrderShippingFulfillment);
    v7 = 0;
  }

  v8 = type metadata accessor for RawOrderShippingFulfillment();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_1B76ADB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s10FinanceKit19RawOrderFulfillmentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawOrderFulfillment();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923E8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B76AC304(a1, &v27 - v18);
  sub_1B76AC304(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76AC304(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B76ADB38(&v19[v20], v6, type metadata accessor for RawOrderPickupFulfillment);
      v21 = _s10FinanceKit25RawOrderPickupFulfillmentV2eeoiySbAC_ACtFZ_0(v13, v6);
      sub_1B748E454(v6, type metadata accessor for RawOrderPickupFulfillment);
      v22 = v13;
      v23 = type metadata accessor for RawOrderPickupFulfillment;
LABEL_9:
      sub_1B748E454(v22, v23);
      sub_1B748E454(v19, type metadata accessor for RawOrderFulfillment);
      return v21;
    }

    v24 = type metadata accessor for RawOrderPickupFulfillment;
    v25 = v13;
  }

  else
  {
    sub_1B76AC304(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B76ADB38(&v19[v20], v9, type metadata accessor for RawOrderShippingFulfillment);
      v21 = _s10FinanceKit27RawOrderShippingFulfillmentV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_1B748E454(v9, type metadata accessor for RawOrderShippingFulfillment);
      v22 = v15;
      v23 = type metadata accessor for RawOrderShippingFulfillment;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawOrderShippingFulfillment;
    v25 = v15;
  }

  sub_1B748E454(v25, v24);
  sub_1B76AE298(v19);
  return 0;
}

unint64_t sub_1B76ADE98()
{
  result = qword_1EB99B288;
  if (!qword_1EB99B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B288);
  }

  return result;
}

unint64_t sub_1B76ADEEC()
{
  result = qword_1EB99B290;
  if (!qword_1EB99B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B290);
  }

  return result;
}

unint64_t sub_1B76ADF40()
{
  result = qword_1EB99B2A0;
  if (!qword_1EB99B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2A0);
  }

  return result;
}

uint64_t sub_1B76ADF94()
{
  result = type metadata accessor for RawOrderShippingFulfillment();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawOrderPickupFulfillment();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B76AE0E8()
{
  result = qword_1EB99B2A8;
  if (!qword_1EB99B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2A8);
  }

  return result;
}

unint64_t sub_1B76AE140()
{
  result = qword_1EB99B2B0;
  if (!qword_1EB99B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2B0);
  }

  return result;
}

unint64_t sub_1B76AE198()
{
  result = qword_1EB99B2B8;
  if (!qword_1EB99B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2B8);
  }

  return result;
}

unint64_t sub_1B76AE1F0()
{
  result = qword_1EB99B2C0;
  if (!qword_1EB99B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2C0);
  }

  return result;
}

unint64_t sub_1B76AE244()
{
  result = qword_1EB99B2C8;
  if (!qword_1EB99B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2C8);
  }

  return result;
}

uint64_t sub_1B76AE298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BankConnectPrivacySettingsController.__allocating_init(bundleID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_authorizationManager;
  type metadata accessor for AppAuthorizationStateManager();
  v7 = swift_allocObject();
  v12 = &type metadata for FinancialDataTCC;
  v13 = &protocol witness table for FinancialDataTCC;
  *(v7 + 16) = sub_1B7202FB0(MEMORY[0x1E69E7CC0]);
  sub_1B71E4C44(&v11, v7 + 24);
  *&v5[v6] = v7;
  v8 = &v5[OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BankConnectPrivacySettingsController.init(bundleID:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_authorizationManager;
  type metadata accessor for AppAuthorizationStateManager();
  v6 = swift_allocObject();
  v11 = &type metadata for FinancialDataTCC;
  v12 = &protocol witness table for FinancialDataTCC;
  *(v6 + 16) = sub_1B7202FB0(MEMORY[0x1E69E7CC0]);
  sub_1B71E4C44(&v10, v6 + 24);
  *&v2[v5] = v6;
  v7 = &v2[OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BankConnectPrivacySettingsController();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1B76AE5B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID + 8);
  v4[0] = *(v0 + OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID);
  v4[1] = v1;

  v2 = AppAuthorizationStateManager.authorizationType(bundleID:)(v4);

  return v2;
}

id BankConnectPrivacySettingsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectPrivacySettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectPrivacySettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B76AE7B8()
{
  sub_1B7800798();
}

uint64_t sub_1B76AE948()
{
  sub_1B7800798();
}

uint64_t sub_1B76AEAA0()
{
  sub_1B7800798();
}

uint64_t sub_1B76AEBE4()
{
  sub_1B7800798();
}

uint64_t sub_1B76AED58()
{
  sub_1B7800798();
}

uint64_t sub_1B76AEE94()
{
  sub_1B7800798();
}

uint64_t sub_1B76AEF70()
{
  sub_1B7800798();
}

uint64_t sub_1B76AF0C8()
{
  sub_1B7800798();
}

uint64_t sub_1B76AF108()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF1F8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF2E8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF3F0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF55C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF65C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF750()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF840()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AF94C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AFA50()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AFB4C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AFC9C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AFE24()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76AFF7C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76B0058()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

__n128 RawOrderLineItem.init(image:quantity:subtitle:title:price:sku:gtin:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a8 + 4);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;

  v15 = *a8;
  *(a9 + 72) = a8[1];
  *(a9 + 56) = v15;
  *(a9 + 88) = v14;
  result = a10;
  *(a9 + 96) = a10;
  *(a9 + 112) = a11;
  *(a9 + 120) = a12;
  return result;
}

uint64_t RawOrderLineItem.image.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderLineItem.image.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderLineItem.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawOrderLineItem.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawOrderLineItem.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawOrderLineItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RawOrderLineItem.price.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 RawOrderLineItem.price.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  *(v1 + 88) = v3;
  return result;
}

uint64_t RawOrderLineItem.sku.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t RawOrderLineItem.sku.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t RawOrderLineItem.gtin.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t RawOrderLineItem.gtin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_1B76B0578()
{
  sub_1B7800798();
}

uint64_t sub_1B76B0674@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76B11B8();
  *a1 = result;
  return result;
}

void sub_1B76B06A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6567616D69;
  v5 = 0xE300000000000000;
  v6 = 7695219;
  if (v2 != 5)
  {
    v6 = 1852404839;
    v5 = 0xE400000000000000;
  }

  v7 = 0x656C746974;
  if (v2 != 3)
  {
    v7 = 0x6563697270;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0x797469746E617571;
  if (v2 != 1)
  {
    v8 = 0x656C746974627573;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B76B0768@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76B11B8();
  *a1 = result;
  return result;
}

uint64_t sub_1B76B0790(uint64_t a1)
{
  v2 = sub_1B76B0D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B07CC(uint64_t a1)
{
  v2 = sub_1B76B0D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderLineItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B2E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B76B0D08();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v47 = v6;
    LOBYTE(v56) = 0;
    v11 = v5;
    v10 = sub_1B7801D78();
    v14 = v13;
    v15 = v10;
    LOBYTE(v56) = 1;
    v16 = sub_1B7801E78();
    v45 = v15;
    LOBYTE(v56) = 2;
    v17 = sub_1B7801D78();
    v19 = v18;
    *(&v44 + 1) = v17;
    LOBYTE(v56) = 3;
    v43 = sub_1B7801DF8();
    v46 = v20;
    LOBYTE(v49[0]) = 4;
    v69 = 1;
    v21 = sub_1B7801EB8();
    *&v44 = v16;
    if (v21)
    {
      v22 = v11;
      v23 = 0;
      v42 = 0;
      v40 = 0;
      v41 = 0uLL;
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }

    else
    {
      sub_1B75276F4();
      sub_1B7801D58();
      v22 = v11;
      v41 = v56;
      v42 = *(&v57 + 1);
      v40 = v57;
      v23 = v58;
    }

    LOBYTE(v56) = 5;
    v24 = sub_1B7801D78();
    v26 = v25;
    v39 = v24;
    v69 = 6;
    v27 = sub_1B7801D78();
    v28 = *(v47 + 8);
    v47 = v27;
    v29 = v8;
    v31 = v30;
    v28(v29, v22);
    *&v49[0] = v45;
    *(&v49[0] + 1) = v14;
    v49[1] = v44;
    *&v50 = v19;
    *(&v50 + 1) = v43;
    *&v51 = v46;
    *(&v51 + 1) = v41;
    v32 = v40;
    *&v52 = *(&v41 + 1);
    *(&v52 + 1) = v40;
    *&v53 = v42;
    *(&v53 + 1) = v23;
    *&v54 = v39;
    *(&v54 + 1) = v26;
    *&v55 = v47;
    *(&v55 + 1) = v31;
    v33 = v49[0];
    v34 = v44;
    v35 = v51;
    a2[2] = v50;
    a2[3] = v35;
    *a2 = v33;
    a2[1] = v34;
    v36 = v52;
    v37 = v53;
    v38 = v55;
    a2[6] = v54;
    a2[7] = v38;
    a2[4] = v36;
    a2[5] = v37;
    sub_1B73261F0(v49, &v56);
    __swift_destroy_boxed_opaque_existential_1(v48);
    *&v56 = v45;
    *(&v56 + 1) = v14;
    v57 = v44;
    v58 = v19;
    v59 = v43;
    v60 = v46;
    v61 = v41;
    v62 = v32;
    v63 = v42;
    v64 = v23;
    v65 = v39;
    v66 = v26;
    v67 = v47;
    v68 = v31;
    return sub_1B732624C(&v56);
  }
}

unint64_t sub_1B76B0D08()
{
  result = qword_1EB99B2E8;
  if (!qword_1EB99B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2E8);
  }

  return result;
}

uint64_t RawOrderLineItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B2F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v8;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v19 = *(v1 + 72);
  v20 = v10;
  v11 = *(v1 + 96);
  v21 = *(v1 + 88);
  v22 = v9;
  v12 = *(v1 + 104);
  v13 = *(v1 + 112);
  v18[2] = v11;
  v18[3] = v12;
  v14 = *(v1 + 120);
  v18[0] = v13;
  v18[1] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B0D08();
  sub_1B78023F8();
  LOBYTE(v28) = 0;
  v15 = v27;
  sub_1B7801EF8();
  if (!v15)
  {
    v16 = v21;
    LOBYTE(v28) = 1;
    sub_1B7801FF8();
    LOBYTE(v28) = 2;
    sub_1B7801EF8();
    LOBYTE(v28) = 3;
    sub_1B7801F78();
    v28 = v20;
    v29 = v19;
    v30 = v16;
    v31 = 4;
    sub_1B7215044();

    sub_1B7801F38();

    LOBYTE(v28) = 5;
    sub_1B7801EF8();
    LOBYTE(v28) = 6;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B76B10B4()
{
  result = qword_1EB99B2F8;
  if (!qword_1EB99B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B2F8);
  }

  return result;
}

unint64_t sub_1B76B110C()
{
  result = qword_1EB99B300;
  if (!qword_1EB99B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B300);
  }

  return result;
}

unint64_t sub_1B76B1164()
{
  result = qword_1EB99B308;
  if (!qword_1EB99B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B308);
  }

  return result;
}

uint64_t sub_1B76B11B8()
{
  v0 = sub_1B7801D18();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B76B1204(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1B7801958();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    result = sub_1B78018F8();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1B7801B98();
  result = sub_1B78018C8();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1B76B5414(v26, v27, v28, a1, &qword_1EB990590);
    v13 = v12;
    v14 = [v12 objectID];

    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    result = sub_1B7801B78();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1B7801918())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B318);
      v7 = sub_1B7800FD8();
      sub_1B78019B8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1B723BB64(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1B723BB64(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1B723BB64(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B76B152C(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1B7800728();

  v74 = sub_1B7800868();
  v75 = v6;
  sub_1B78019E8();
  if (!*(v5 + 16) || (v7 = sub_1B7245898(v76), (v8 & 1) == 0))
  {

    sub_1B720494C(v76);
LABEL_10:
    v77 = 0u;
    v78 = 0u;
    return sub_1B726990C(&v77);
  }

  sub_1B719BDE4(*(v5 + 56) + 32 * v7, &v77);
  sub_1B720494C(v76);

  if (!*(&v78 + 1))
  {
    return sub_1B726990C(&v77);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B310);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v76[0];
    v73 = v3;
    if ((v76[0] & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E69E7CD0];
      v76[0] = MEMORY[0x1E69E7CD0];
      sub_1B7801908();
      v12 = sub_1B7801988();
      if (v12)
      {
        v13 = v12;
        sub_1B7205540(0, &qword_1EB990590);
        v14 = v13;
        do
        {
          v74 = v14;
          swift_dynamicCast();
          v22 = [v77 entity];
          v23 = [v22 name];

          if (v23)
          {
            v24 = sub_1B7800868();
            v26 = v25;
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          type metadata accessor for ManagedTransaction();
          v27 = [swift_getObjCClassFromMetadata() entityName];
          v28 = sub_1B7800868();
          v30 = v29;

          if (v26)
          {
            if (v24 == v28 && v26 == v30)
            {

LABEL_26:
              v32 = v77;
              v33 = *(v11 + 16);
              if (*(v11 + 24) <= v33)
              {
                sub_1B76B499C(v33 + 1, &qword_1EB98FF50);
              }

              v11 = v76[0];
              v15 = v32;
              v16 = sub_1B7801548();
              v17 = v11 + 56;
              v18 = -1 << *(v11 + 32);
              v19 = v16 & ~v18;
              v20 = v19 >> 6;
              if (((-1 << v19) & ~*(v11 + 56 + 8 * (v19 >> 6))) != 0)
              {
                v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v34 = 0;
                v35 = (63 - v18) >> 6;
                do
                {
                  if (++v20 == v35 && (v34 & 1) != 0)
                  {
                    __break(1u);
                    goto LABEL_66;
                  }

                  v36 = v20 == v35;
                  if (v20 == v35)
                  {
                    v20 = 0;
                  }

                  v34 |= v36;
                  v37 = *(v17 + 8 * v20);
                }

                while (v37 == -1);
                v21 = __clz(__rbit64(~v37)) + (v20 << 6);
              }

              *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
              *(*(v11 + 48) + 8 * v21) = v32;
              ++*(v11 + 16);
              goto LABEL_16;
            }

            v31 = sub_1B78020F8();

            if (v31)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }

LABEL_16:
          v14 = sub_1B7801988();
        }

        while (v14);
      }

LABEL_63:
      v15 = sub_1B76B1204(v11);

      if (v15 >> 62)
      {
        goto LABEL_67;
      }

      v62 = v73;
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

      goto LABEL_65;
    }

    v38 = *(v76[0] + 32);
    v68 = ((1 << v38) + 63) >> 6;
    if ((v38 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v66 = swift_slowAlloc();
        v11 = sub_1B76B50EC(v66, v68, v10, sub_1B76B1CBC);

        MEMORY[0x1B8CA7A40](v66, -1, -1);
        goto LABEL_63;
      }
    }

    v67[1] = v67;
    MEMORY[0x1EEE9AC00](result);
    v69 = v67 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v69, v39);
    v70 = 0;
    v40 = 0;
    v15 = v10 + 56;
    v41 = 1 << *(v10 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v10 + 56);
    v44 = (v41 + 63) >> 6;
    v72 = v10;
    while (1)
    {
      while (1)
      {
        if (!v43)
        {
          v46 = v40;
          while (1)
          {
            v40 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v40 >= v44)
            {
              goto LABEL_62;
            }

            v47 = *(v15 + 8 * v40);
            ++v46;
            if (v47)
            {
              v45 = __clz(__rbit64(v47));
              v43 = (v47 - 1) & v47;
              goto LABEL_50;
            }
          }

LABEL_66:
          __break(1u);
LABEL_67:
          v65 = sub_1B7801958();
          v62 = v73;
          if (!v65)
          {
          }

LABEL_65:
          v63 = *(v62 + 16);

          v64 = sub_1B748916C(v15, v63);

          *(v62 + 16) = v64;
        }

        v45 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_50:
        v48 = v45 | (v40 << 6);
        v49 = *(v10 + 48);
        v71 = v48;
        v50 = *(v49 + 8 * v48);
        v51 = [v50 entity];
        v52 = [v51 name];

        if (v52)
        {
          v53 = sub_1B7800868();
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        type metadata accessor for ManagedTransaction();
        v56 = [swift_getObjCClassFromMetadata() entityName];
        v57 = sub_1B7800868();
        v59 = v58;

        if (v55)
        {
          break;
        }

        v10 = v72;
      }

      if (v53 == v57 && v55 == v59)
      {

        v10 = v72;
LABEL_59:
        *&v69[(v71 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v71;
        if (__OFADD__(v70++, 1))
        {
          __break(1u);
LABEL_62:
          v11 = sub_1B723AA8C(v69, v68, v70, v10);
          goto LABEL_63;
        }
      }

      else
      {
        v60 = sub_1B78020F8();

        v10 = v72;
        if (v60)
        {
          goto LABEL_59;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B76B1CBC(id *a1)
{
  v1 = [*a1 entity];
  v2 = [v1 name];

  if (v2)
  {
    v3 = sub_1B7800868();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  type metadata accessor for ManagedTransaction();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_1B7800868();
  v9 = v8;

  if (v5)
  {
    if (v3 == v7 && v5 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1B78020F8();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1B76B1E70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B76B1ED4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B78022F8();
      sub_1B7800798();
      result = sub_1B7802368();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}