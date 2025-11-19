uint64_t sub_1B7318244(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B73182C4()
{
  result = qword_1EB9920F8;
  if (!qword_1EB9920F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9920F8);
  }

  return result;
}

uint64_t sub_1B7318338(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1B73183A8(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v13[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  sub_1B730D314(v13, &v14);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if (!v1)
  {
    v6 = v15;
    if (v15)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&v14, v15);
      v8 = *(v6 - 8);
      MEMORY[0x1EEE9AC00](v7);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_1B78020D8();
      (*(v8 + 8))(v10, v6);
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B73185C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7318600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B7318654(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit19QueryPredicateError03_B6F28FDD4CBD974CB54D986639E8AAD00LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B73186AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B73186F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B7318738(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1B731876C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B73187B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t Transaction.XPCArray.value.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___XPCTransactions_value;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id Transaction.XPCArray.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCTransactions_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id Transaction.XPCArray.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___XPCTransactions_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id Transaction.XPCArray.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B72082B4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id Transaction.XPCArray.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B72082B4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id Transaction.XPCArray.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Transaction.XPCArray.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7318C20@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___XPCTransactions_value;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

id sub_1B7318C78(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCTransactions_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t AccountNumber.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountNumber.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FinanceKit::AccountNumber __swiftcall AccountNumber.init(value:schemeType:)(FinanceKit::AccountNumber value, FinanceKit::AccountNumberSchemeType schemeType)
{
  v3 = *schemeType;
  *v2 = value.value;
  *(v2 + 16) = v3;
  value.schemeType = schemeType;
  return value;
}

BOOL static AccountNumber.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B7318EB0()
{
  if (*v0)
  {
    return 0x7954656D65686373;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1B7318EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954656D65686373 && a2 == 0xEA00000000006570)
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

uint64_t sub_1B7318FCC(uint64_t a1)
{
  v2 = sub_1B7319620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7319008(uint64_t a1)
{
  v2 = sub_1B7319620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992168);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7319620();
  sub_1B78023F8();
  v13 = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1B7319674();
    sub_1B7801FC8();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t AccountNumber.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t AccountNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7319620();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1B7319778();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7319498()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B7319534()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802328();
  return sub_1B7802368();
}

BOOL sub_1B7319594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

FinanceKit::AccountNumberSchemeType_optional __swiftcall AccountNumberSchemeType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B7319620()
{
  result = qword_1EB992170;
  if (!qword_1EB992170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992170);
  }

  return result;
}

unint64_t sub_1B7319674()
{
  result = qword_1EB992178;
  if (!qword_1EB992178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992178);
  }

  return result;
}

unint64_t sub_1B7319778()
{
  result = qword_1EB992188;
  if (!qword_1EB992188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992188);
  }

  return result;
}

unint64_t sub_1B73197D0()
{
  result = qword_1EB992190;
  if (!qword_1EB992190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992190);
  }

  return result;
}

unint64_t sub_1B7319828()
{
  result = qword_1EB992198;
  if (!qword_1EB992198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992198);
  }

  return result;
}

unint64_t sub_1B7319880()
{
  result = qword_1EB9921A0;
  if (!qword_1EB9921A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9921A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921A0);
  }

  return result;
}

uint64_t sub_1B73198F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B731993C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B73199B0()
{
  result = qword_1EB9921B0;
  if (!qword_1EB9921B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921B0);
  }

  return result;
}

unint64_t sub_1B7319A08()
{
  result = qword_1EB9921B8;
  if (!qword_1EB9921B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921B8);
  }

  return result;
}

unint64_t sub_1B7319A60()
{
  result = qword_1EB9921C0;
  if (!qword_1EB9921C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921C0);
  }

  return result;
}

unint64_t sub_1B7319AB4()
{
  result = qword_1EB9921C8;
  if (!qword_1EB9921C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921C8);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.orderCountForSignout()()
{
  v0 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B72A8B90(v2);
  v4 = v3;
  sub_1B72A820C(v2);
  return v4;
}

uint64_t sub_1B7319BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_1B7319C64(uint64_t a1)
{
  v2 = sub_1B7319FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7319CA0(uint64_t a1)
{
  v2 = sub_1B7319FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.ErrorResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9921D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7319FD0();
  sub_1B78023F8();
  v10 = v7;
  sub_1B731A024();
  sub_1B7801FC8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.ErrorResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9921E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7319FD0();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B731A078();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B7319FD0()
{
  result = qword_1EB9921D8;
  if (!qword_1EB9921D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921D8);
  }

  return result;
}

unint64_t sub_1B731A024()
{
  result = qword_1EB9921E0;
  if (!qword_1EB9921E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921E0);
  }

  return result;
}

unint64_t sub_1B731A078()
{
  result = qword_1EB9921F0;
  if (!qword_1EB9921F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9921F0);
  }

  return result;
}

uint64_t sub_1B731A0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_1B731A164(uint64_t a1)
{
  v2 = sub_1B731A328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B731A1A0(uint64_t a1)
{
  v2 = sub_1B731A328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9921F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B731A328();
  sub_1B78023F8();
  v10 = v7;
  sub_1B731A37C();
  sub_1B7801FC8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B731A328()
{
  result = qword_1EB992200;
  if (!qword_1EB992200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992200);
  }

  return result;
}

unint64_t sub_1B731A37C()
{
  result = qword_1EB992208;
  if (!qword_1EB992208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992208);
  }

  return result;
}

uint64_t RawBankConnectData.Error.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B731A328();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B731A53C();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B731A53C()
{
  result = qword_1EB992218;
  if (!qword_1EB992218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992218);
  }

  return result;
}

uint64_t RawBankConnectData.ErrorCode.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (v2)
  {

    v5 = 4;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1B7802118();
    __swift_destroy_boxed_opaque_existential_1(v7);
    RawBankConnectData.ErrorCode.init(rawValue:)(v7);
    v5 = v7[0];
    if (LOBYTE(v7[0]) == 5)
    {
      v5 = 4;
    }
  }

  *a2 = v5;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.ErrorCode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RawBankConnectData.ErrorCode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x524F485455414E55;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

unint64_t sub_1B731A7C8()
{
  result = qword_1EB992220;
  if (!qword_1EB992220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992220);
  }

  return result;
}

uint64_t sub_1B731A81C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B731A90C()
{
  sub_1B7800798();
}

uint64_t sub_1B731A9E8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B731AAE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000044455A49;
  v4 = 0x524F485455414E55;
  v5 = 0x80000001B7873470;
  v6 = 0x80000001B7873490;
  v7 = 0xD000000000000018;
  if (v2 != 3)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B7873450;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1B731AC48()
{
  result = qword_1EB992228;
  if (!qword_1EB992228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992228);
  }

  return result;
}

unint64_t sub_1B731ACA0()
{
  result = qword_1EB992230;
  if (!qword_1EB992230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992230);
  }

  return result;
}

unint64_t sub_1B731ACF8()
{
  result = qword_1EB992238;
  if (!qword_1EB992238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992238);
  }

  return result;
}

unint64_t sub_1B731AD50()
{
  result = qword_1EB992240;
  if (!qword_1EB992240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992240);
  }

  return result;
}

unint64_t sub_1B731ADA8()
{
  result = qword_1EB992248;
  if (!qword_1EB992248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992248);
  }

  return result;
}

unint64_t sub_1B731AE00()
{
  result = qword_1EB992250;
  if (!qword_1EB992250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992250);
  }

  return result;
}

unint64_t sub_1B731AE54()
{
  result = qword_1EB992258;
  if (!qword_1EB992258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992258);
  }

  return result;
}

uint64_t CloudOrder.updatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CloudOrder.fullyQualifiedOrderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CloudOrder() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t type metadata accessor for CloudOrder()
{
  result = qword_1EB992290;
  if (!qword_1EB992290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B731AFC8()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x4464657461647075;
  }
}

uint64_t sub_1B731B010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4464657461647075 && a2 == 0xEB00000000657461;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7879EB0 == a2)
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

uint64_t sub_1B731B0F8(uint64_t a1)
{
  v2 = sub_1B731BB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B731B134(uint64_t a1)
{
  v2 = sub_1B731BB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudOrder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992260);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B731BB48();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CloudOrder() + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v15 = *v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14[15] = 1;
    sub_1B731BB9C();

    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CloudOrder.hash(into:)()
{
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  type metadata accessor for CloudOrder();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t CloudOrder.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  type metadata accessor for CloudOrder();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t CloudOrder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1B77FF988();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992278);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CloudOrder();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B731BB48();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v13 = v12;
  v14 = v27;
  LOBYTE(v31) = 0;
  sub_1B71A6F98(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v15 = v30;
  v16 = v28;
  sub_1B7801E48();
  v17 = *(v14 + 32);
  v24 = v13;
  v17(v13, v5, v15);
  v34 = 1;
  sub_1B731BBF0();
  sub_1B7801E48();
  (*(v29 + 8))(v9, v16);
  v18 = v32;
  v19 = v33;
  v20 = v24;
  v21 = v24 + *(v25 + 20);
  *v21 = v31;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  sub_1B731BC44(v20, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B731BCA8(v20);
}

uint64_t sub_1B731B87C()
{
  sub_1B78022F8();
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B731B938()
{
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B731B9E8()
{
  sub_1B78022F8();
  sub_1B77FF988();
  sub_1B71A6F98(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

BOOL _s10FinanceKit10CloudOrderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_1B77FF918())
  {
    v4 = *(type metadata accessor for CloudOrder() + 20);
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v7 = *(a1 + v4 + 8);
    v8 = *(a1 + v4 + 16);
    v9 = *(v5 + 24);
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

unint64_t sub_1B731BB48()
{
  result = qword_1EB992268;
  if (!qword_1EB992268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992268);
  }

  return result;
}

unint64_t sub_1B731BB9C()
{
  result = qword_1EB992270;
  if (!qword_1EB992270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992270);
  }

  return result;
}

unint64_t sub_1B731BBF0()
{
  result = qword_1EB992280;
  if (!qword_1EB992280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992280);
  }

  return result;
}

uint64_t sub_1B731BC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudOrder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B731BCA8(uint64_t a1)
{
  v2 = type metadata accessor for CloudOrder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B731BD74()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B731BDFC()
{
  result = qword_1EB9922A0;
  if (!qword_1EB9922A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922A0);
  }

  return result;
}

unint64_t sub_1B731BE54()
{
  result = qword_1EB9922A8;
  if (!qword_1EB9922A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922A8);
  }

  return result;
}

unint64_t sub_1B731BEAC()
{
  result = qword_1EB9922B0;
  if (!qword_1EB9922B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922B0);
  }

  return result;
}

uint64_t FinanceStore.setOrderMarkedAsComplete(with:newValue:modificationDate:)(uint64_t *a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 96) = a2;
  *(v4 + 32) = type metadata accessor for FinanceStore.Message();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v4 + 40) = v6;
  *(v4 + 48) = v7;
  *(v4 + 56) = *(a1 + 1);
  *(v4 + 72) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B731BFB0, 0, 0);
}

uint64_t sub_1B731BFB0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922B8) + 64);
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v7;
  sub_1B7280900(v6, v5 + v8);
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_1B731C0E4;
  v10 = *(v0 + 40);

  return sub_1B7267E08(v10);
}

uint64_t sub_1B731C0E4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B731C248, 0, 0);
}

uint64_t sub_1B731C248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.setOrderMarkedAsCompleteSync(with:newValue:modificationDate:)(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922B8) + 64);
  *v8 = v10;
  *(v8 + 1) = v9;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  v8[32] = a2;
  sub_1B7280900(a3, &v8[v13]);
  swift_storeEnumTagMultiPayload();

  sub_1B72C9D94(v8);
  return sub_1B72A820C(v8);
}

uint64_t sub_1B731C400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_27:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B732670C(v13, v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
      sub_1B732670C(v14, v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v18 = v10[5];
      v19 = v7[5];
      if (v18)
      {
        if (!v19 || (v10[4] != v7[4] || v18 != v19) && (sub_1B78020F8() & 1) == 0)
        {
          break;
        }
      }

      else if (v19)
      {
        break;
      }

      v20 = static RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails.== infix(_:_:)(v10 + *(v4 + 28), v7 + *(v4 + 28));
      sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
      sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    goto LABEL_27;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B731C674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v47 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v51 = a2 + v13;
  v15 = *(v8 + 72);
  v50 = v7;
  v49 = v4;
  v53 = v11;
  v48 = a1 + v13;
  v47 = v15;
  while (1)
  {
    v16 = v12;
    v17 = v15 * v12;
    result = sub_1B732670C(v14 + v17, v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    v52 = v16;
    if (v16 == v53)
    {
      break;
    }

    sub_1B732670C(v51 + v17, v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    v19 = *v10 == *v7 && *(v10 + 1) == v7[1];
    if (!v19 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_36;
    }

    if ((sub_1B731CBA0(*(v10 + 2), v7[2]) & 1) == 0)
    {
      goto LABEL_36;
    }

    v20 = *(v10 + 3);
    v21 = v7[3];
    v22 = *(v20 + 16);
    if (v22 != *(v21 + 16))
    {
      goto LABEL_36;
    }

    if (v22)
    {
      v23 = v20 == v21;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v31 = (v20 + 32);
      v32 = (v21 + 32);
      for (i = v22 - 1; ; --i)
      {
        v35 = v31[1];
        v34 = v31[2];
        v36 = *v31;
        v57[2] = *(v31 + 6);
        v56 = v35;
        *v57 = v34;
        v55 = v36;
        v38 = v32[1];
        v37 = v32[2];
        v39 = *(v32 + 6);
        v58 = *v32;
        *&v59[32] = v39;
        *v59 = v38;
        *&v59[16] = v37;
        if (v36 != v58 && (sub_1B78020F8() & 1) == 0)
        {
          break;
        }

        v40 = v56;
        v41 = LODWORD(v57[0]);
        v42 = *v59;
        v43 = *&v59[8];
        v44 = *&v59[16];
        sub_1B72DA010(&v55, v54);
        sub_1B72DA010(&v58, v54);
        sub_1B7215720(&v56, v54);
        sub_1B7215720(v59, v54);
        if ((MEMORY[0x1B8CA5970](v40, *(&v40 + 1), v41, v42, v43, v44) & 1) == 0)
        {
          sub_1B721722C(v59);
          sub_1B721722C(&v56);
          sub_1B72DA06C(&v58);
          sub_1B72DA06C(&v55);
          break;
        }

        if (*&v57[1] == *&v59[24])
        {
          sub_1B721722C(v59);
          sub_1B721722C(&v56);
          sub_1B72DA06C(&v58);
          sub_1B72DA06C(&v55);
        }

        else
        {
          v45 = sub_1B78020F8();
          sub_1B721722C(v59);
          sub_1B721722C(&v56);
          sub_1B72DA06C(&v58);
          sub_1B72DA06C(&v55);
          if ((v45 & 1) == 0)
          {
            break;
          }
        }

        if (!i)
        {
          goto LABEL_18;
        }

        v32 = (v32 + 56);
        v31 = (v31 + 56);
      }

      v7 = v50;
      goto LABEL_36;
    }

LABEL_18:
    v24 = *(v10 + 3);
    v55 = *(v10 + 2);
    v56 = v24;
    v7 = v50;
    v25 = *(v50 + 3);
    v58 = *(v50 + 2);
    v57[0] = *(v10 + 8);
    *v59 = v25;
    *&v59[16] = v50[8];
    v26 = v56;
    v27 = v25;
    v28 = v55;
    v29 = v58;
    sub_1B7215720(&v55, v54);
    sub_1B7215720(&v58, v54);
    if ((MEMORY[0x1B8CA5970](v28, *(&v28 + 1), v26, v29, *(&v29 + 1), v27) & 1) == 0)
    {
      sub_1B721722C(&v58);
      sub_1B721722C(&v55);
LABEL_36:
      sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
      sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
      return 0;
    }

    if (__PAIR128__(v57[0], *(&v56 + 1)) == *&v59[8])
    {
      sub_1B721722C(&v58);
      sub_1B721722C(&v55);
      v30 = v49;
    }

    else
    {
      v46 = sub_1B78020F8();
      sub_1B721722C(&v58);
      sub_1B721722C(&v55);
      v30 = v49;
      if ((v46 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if ((MEMORY[0x1B8CA2F10](&v10[*(v30 + 32)], v7 + *(v30 + 32)) & 1) == 0)
    {
      goto LABEL_36;
    }

    v12 = v52 + 1;
    sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    result = 1;
    v14 = v48;
    v15 = v47;
    if (v12 == v53)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B731CBA0(uint64_t a1, uint64_t a2)
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

  v27 = v2;
  v28 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v19 = *v5;
    v20 = v8;
    v9 = v5[3];
    v21 = v5[2];
    v22[0] = v9;
    *&v22[1] = *(v5 + 8);
    v10 = v6[3];
    v25 = v6[2];
    *v26 = v10;
    *&v26[16] = *(v6 + 8);
    v11 = v6[1];
    v23 = *v6;
    v24 = v11;
    if (v19 != v23 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }

    if (*(&v20 + 1))
    {
      if (!*(&v24 + 1) || v20 != v24 && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v24 + 1))
    {
      return 0;
    }

    v12 = LODWORD(v22[0]);
    v13 = *v26;
    v14 = v21;
    v15 = v25;
    sub_1B72D9F60(&v19, v18);
    sub_1B72D9F60(&v23, v18);
    sub_1B7215720(&v21, v18);
    sub_1B7215720(&v25, v18);
    if ((MEMORY[0x1B8CA5970](v14, *(&v14 + 1), v12, v15, *(&v15 + 1), v13) & 1) == 0)
    {
      sub_1B721722C(&v25);
      sub_1B721722C(&v21);
      sub_1B72D9FBC(&v23);
      sub_1B72D9FBC(&v19);
      return 0;
    }

    if (*(v22 + 8) == *&v26[8])
    {
      sub_1B721722C(&v25);
      sub_1B721722C(&v21);
      sub_1B72D9FBC(&v23);
      sub_1B72D9FBC(&v19);
    }

    else
    {
      v16 = sub_1B78020F8();
      sub_1B721722C(&v25);
      sub_1B721722C(&v21);
      sub_1B72D9FBC(&v23);
      sub_1B72D9FBC(&v19);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

uint64_t sub_1B731CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_25;
  }

  if (!v11 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v30 = &v29 - v9;
  v31 = v15;
  v35 = v7;
  v29 = v4;
  while (1)
  {
    sub_1B732670C(v13, v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    sub_1B732670C(v14, v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    v16 = *(v10 + 4);
    v17 = *(v7 + 4);
    if (!v16)
    {
      break;
    }

    v18 = v10;
    v21 = v10 + 16;
    v20 = *(v10 + 2);
    v19 = *(v21 + 1);
    v22 = *v18;
    v23 = v18[1];
    if (!v17)
    {
      v36 = *v18;
      v37 = v23;
      v38 = v20;
      v39 = v19;
      v40 = v16;
      swift_bridgeObjectRetain_n();
      sub_1B721722C(&v36);
      v7 = v35;
      v10 = v30;
      goto LABEL_23;
    }

    v24 = *v35;
    v33 = *(v35 + 1);
    v34 = v24;
    v25 = *(v35 + 3);
    v32 = *(v35 + 2);
    swift_bridgeObjectRetain_n();

    if ((MEMORY[0x1B8CA5970](v22, v23, v20, v34, v33, v32) & 1) == 0)
    {

LABEL_21:
      v36 = v22;
      v37 = v23;
      v38 = v20;
      v39 = v19;
      v40 = v16;
      sub_1B721722C(&v36);

      v7 = v35;
      v10 = v30;
      goto LABEL_24;
    }

    if (v19 == v25 && v16 == v17)
    {
    }

    else
    {
      v26 = sub_1B78020F8();

      if ((v26 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v36 = v22;
    v37 = v23;
    v38 = v20;
    v39 = v19;
    v40 = v16;
    sub_1B721722C(&v36);

    v7 = v35;
    v4 = v29;
    v10 = v30;
LABEL_15:
    v27 = MEMORY[0x1B8CA2F10](&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
    sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    if (v27)
    {
      v14 += v31;
      v13 += v31;
      if (--v11)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  if (!v17)
  {

    goto LABEL_15;
  }

LABEL_23:

LABEL_24:
  sub_1B7326774(v7, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
  sub_1B7326774(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
LABEL_25:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1B731D168(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1B78020F8() & 1) == 0)
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

uint64_t sub_1B731D24C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1B7326610();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B8CA5DC0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1B8CA5DC0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1B7801558();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1B7801558();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B7801958();
  }

  result = sub_1B7801958();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1B731D4CC(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v57 = v5;
  v58 = v6;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v7 - 1; ; --i)
  {
    v14 = v11[5];
    v44 = v11[4];
    v45 = v14;
    v15 = v11[7];
    v46 = v11[6];
    v47 = v15;
    v16 = v11[1];
    v41[0] = *v11;
    v41[1] = v16;
    v17 = v11[3];
    v42 = v11[2];
    v43 = v17;
    v33 = v41[0];
    v34 = v16;
    v35 = v42;
    v36 = v17;
    v37 = v44;
    v38 = v14;
    v39 = v46;
    v40 = v15;
    v18 = v12[5];
    v51 = v12[4];
    v52 = v18;
    v19 = v12[7];
    v53 = v12[6];
    v54 = v19;
    v20 = v12[1];
    v48[0] = *v12;
    v48[1] = v20;
    v21 = v12[3];
    v49 = v12[2];
    v50 = v21;
    v25 = v48[0];
    v26 = v20;
    v27 = v49;
    v28 = v21;
    v29 = v51;
    v30 = v18;
    v31 = v53;
    v32 = v19;
    a3(v41, v24);
    a3(v48, v24);
    v22 = a4(&v33, &v25);
    v55[4] = v29;
    v55[5] = v30;
    v55[6] = v31;
    v55[7] = v32;
    v55[0] = v25;
    v55[1] = v26;
    v55[2] = v27;
    v55[3] = v28;
    a5(v55);
    v56[4] = v37;
    v56[5] = v38;
    v56[6] = v39;
    v56[7] = v40;
    v56[0] = v33;
    v56[1] = v34;
    v56[2] = v35;
    v56[3] = v36;
    a5(v56);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 += 8;
    v11 += 8;
  }

  return 1;
}

uint64_t sub_1B731D6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1B732670C(v20, v17, a4);
        sub_1B732670C(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1B7326774(v14, a6);
        sub_1B7326774(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1B731D854(uint64_t a1, uint64_t a2)
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
    sub_1B7326560(v24, v15);
    sub_1B7326560(v27, v15);
    v13 = _s10FinanceKit23ExtractedOrderAllowListV5EntryV2eeoiySbAE_AEtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1B73265BC(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1B73265BC(v31);
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

uint64_t sub_1B731DA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 11)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v8 = i[1];
      v10 = i[2];
      v11 = i[4];
      v39 = i[7];
      v12 = *(v3 - 2);
      v13 = *(v3 - 1);
      v15 = *v3;
      v14 = v3[1];
      v16 = v3[2];
      v17 = v3[3];
      v18 = v3[4];
      v35 = v3[6];
      v36 = i[6];
      v37 = i[3];
      v38 = v3[7];
      v40 = *(v3 + 40);
      v41 = *(i + 40);
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(i - 3) != *(v3 - 3) || v6 != v12)
        {
          v31 = *(v3 - 1);
          v32 = i[1];
          v33 = v3[4];
          v34 = v3[3];
          v19 = i[4];
          v20 = i[2];
          v21 = v3[2];
          v22 = sub_1B78020F8();
          v13 = v31;
          v8 = v32;
          v16 = v21;
          v10 = v20;
          v11 = v19;
          v18 = v33;
          v17 = v34;
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9)
      {
        if (!v15)
        {
          return 0;
        }

        if (v7 != v13 || v9 != v15)
        {
          v23 = v11;
          v24 = v10;
          v25 = v8;
          v26 = v16;
          v27 = sub_1B78020F8();
          v16 = v26;
          v8 = v25;
          v10 = v24;
          v11 = v23;
          if ((v27 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v15)
      {
        return 0;
      }

      if (v10)
      {
        if (!v16)
        {
          return 0;
        }

        if (v8 != v14 || v10 != v16)
        {
          v28 = v11;
          v29 = sub_1B78020F8();
          v11 = v28;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v11)
      {
        if (!v18)
        {
          return 0;
        }

        if (v37 == v17 && v11 == v18)
        {
          if (v41 != v40)
          {
            return 0;
          }

          goto LABEL_39;
        }

        v30 = sub_1B78020F8();
        result = 0;
        if ((v30 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v18)
        {
          return result;
        }
      }

      if ((v41 ^ v40))
      {
        return result;
      }

LABEL_39:
      if (v39)
      {
        if (!v38 || (v36 != v35 || v39 != v38) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v38)
      {
        return 0;
      }

      v3 += 11;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1B731DC88(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for RawBankConnectData.InstitutionForPassResponse(0);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v28 = *(v7 + 72);
  v29 = &v27 - v8;
  while (1)
  {
    sub_1B732670C(v12, v9, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
    sub_1B732670C(v13, v6, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
    if ((static RawBankConnectData.Institution.== infix(_:_:)(v9, v6) & 1) == 0)
    {
      sub_1B7326774(v6, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
      sub_1B7326774(v9, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
      return 0;
    }

    v14 = *(v30 + 20);
    v15 = &v9[v14];
    v16 = *&v9[v14];
    v17 = *&v9[v14 + 8];
    v19 = *&v9[v14 + 16];
    v18 = *(v15 + 3);
    v20 = &v6[v14];
    v21 = *(v20 + 2);
    v22 = *(v20 + 3);
    v23 = v16 == *v20 && v17 == *(v20 + 1);
    if (!v23 && (sub_1B78020F8() & 1) == 0)
    {
      break;
    }

    if (v19 == v21 && v18 == v22)
    {

      sub_1B7326774(v6, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
      v9 = v29;
      sub_1B7326774(v29, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
    }

    else
    {
      v25 = sub_1B78020F8();

      sub_1B7326774(v6, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
      v9 = v29;
      sub_1B7326774(v29, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);

      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    v13 += v28;
    v12 += v28;
    if (!--v10)
    {
      return 1;
    }
  }

  sub_1B7326774(v6, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
  sub_1B7326774(v29, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);

  return 0;
}

uint64_t sub_1B731E014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x5F544E45534E4F43;
      }

      else
      {
        v8 = 0x5F544E554F434341;
      }

      if (v6 == 1)
      {
        v9 = 0xEF44454B4F564552;
      }

      else
      {
        v9 = 0xEF4445474E414843;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x4E574F4E4B4E55;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 == 1)
      {
        v12 = 0x5F544E45534E4F43;
      }

      else
      {
        v12 = 0x5F544E554F434341;
      }

      if (v7 == 1)
      {
        v13 = 0xEF44454B4F564552;
      }

      else
      {
        v13 = 0xEF4445474E414843;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x4E574F4E4B4E55;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1B78020F8();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B731E188(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v22 = a2 + 32;
    v23 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_48;
      }

      v4 = (v23 + 80 * v3);
      v5 = *v4;
      v6 = (v22 + 80 * v3);
      v7 = *v6;
      v8 = *(*v4 + 16);
      if (v8 != *(*v6 + 16))
      {
        return 0;
      }

      v10 = v4[1];
      v9 = v4[2];
      v35 = v4[4];
      v36 = v4[3];
      v30 = v4[7];
      v31 = v4[6];
      v26 = v4[9];
      v27 = v4[8];
      v12 = v6[1];
      v11 = v6[2];
      v13 = v6[3];
      v33 = v6[4];
      v34 = v4[5];
      v32 = v6[5];
      v29 = v6[6];
      v28 = v6[7];
      v24 = v6[9];
      v25 = v6[8];
      if (v8)
      {
        v14 = v5 == v7;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v19 = (v5 + 40);
        v20 = (v7 + 40);
        while (v8)
        {
          result = *(v19 - 1);
          if (result != *(v20 - 1) || *v19 != *v20)
          {
            result = sub_1B78020F8();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v19 += 2;
          v20 += 2;
          if (!--v8)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

LABEL_15:
      v15 = *(v10 + 16);
      if (v15 != *(v12 + 16))
      {
        return 0;
      }

      if (v15 && v10 != v12)
      {
        break;
      }

LABEL_26:
      if ((v9 != v11 || v36 != v13) && (sub_1B78020F8() & 1) == 0 || (v35 != v33 || v34 != v32) && (sub_1B78020F8() & 1) == 0 || (v31 != v29 || v30 != v28) && (sub_1B78020F8() & 1) == 0 || (v27 != v25 || v26 != v24) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v16 = (v10 + 40);
    v17 = (v12 + 40);
    while (1)
    {
      v18 = *(v16 - 1) == *(v17 - 1) && *v16 == *v17;
      if (!v18 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v16 += 2;
      v17 += 2;
      if (!--v15)
      {
        goto LABEL_26;
      }
    }
  }

  return 0;
}

uint64_t sub_1B731E3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F0);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v33 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v33 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v34 = v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v38 = *(v18 + 72);
  v39 = v10;
  while (1)
  {
    sub_1B732670C(v24, v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B732670C(v25, v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v26 = *(v40 + 48);
    sub_1B732670C(v21, v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B732670C(v17, &v9[v26], type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B732670C(v9, v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      sub_1B7326774(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      v32 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand;
      goto LABEL_16;
    }

    v29 = v35;
    sub_1B73264F8(&v9[v26], v35, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    v30 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV5BrandV2eeoiySbAG_AGtFZ_0(v14, v29);
    sub_1B7326774(v29, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B7326774(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B7326774(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    sub_1B7326774(v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v25 += v38;
    v24 += v38;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v14;
  v14 = v34;
  sub_1B732670C(v9, v34, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v36;
    sub_1B73264F8(&v9[v26], v36, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    v37 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV8MerchantV2eeoiySbAG_AGtFZ_0(v14, v28);
    sub_1B7326774(v28, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B7326774(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    sub_1B7326774(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    sub_1B7326774(v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v14 = v27;
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  sub_1B7326774(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  v32 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant;
LABEL_16:
  sub_1B7326774(v14, v32);
  sub_1B7205418(v9, &qword_1EB9923F0);
  return 0;
}

uint64_t sub_1B731E934(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B731E9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v22 = 0;
    return v22 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B732670C(v13, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
      sub_1B732670C(v14, v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
      if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 20);
      v17 = &v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = *(v19 + 1);
      if (v18)
      {
        if (!v20)
        {
          break;
        }

        v21 = *v17 == *v19 && v18 == v20;
        if (!v21 && (sub_1B78020F8() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      v22 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV7OutcomeO2eeoiySbAG_AGtFZ_0(&v10[*(v4 + 24)], &v7[*(v4 + 24)]);
      sub_1B7326774(v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
      sub_1B7326774(v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
      if (v22)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1B7326774(v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
    sub_1B7326774(v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
    goto LABEL_20;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1B731EBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v32 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v32 - v9;
  v11 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v32 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_23:
    v30 = 0;
    return v30 & 1;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v40 = (v5 + 48);
    v41 = v4;
    v33 = (v5 + 32);
    v34 = v14;
    v35 = (v5 + 8);
    v37 = *(v15 + 72);
    v38 = v11;
    while (1)
    {
      sub_1B732670C(v20, v17, type metadata accessor for RawBankConnectData.TermsAndConditions);
      sub_1B732670C(v21, v14, type metadata accessor for RawBankConnectData.TermsAndConditions);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v23 = *(v11 + 20);
      v24 = *(v43 + 48);
      sub_1B7228664(v17 + v23, v10);
      sub_1B7228664(v14 + v23, &v10[v24]);
      v25 = v41;
      v26 = *v40;
      if ((*v40)(v10, 1, v41) == 1)
      {
        if (v26(&v10[v24], 1, v25) != 1)
        {
          goto LABEL_21;
        }

        sub_1B7205418(v10, &unk_1EB994C70);
        v11 = v38;
      }

      else
      {
        sub_1B7228664(v10, v42);
        if (v26(&v10[v24], 1, v25) == 1)
        {
          (*v35)(v42, v25);
LABEL_21:
          sub_1B7205418(v10, &qword_1EB991C30);
          break;
        }

        v27 = v42;
        v28 = v39;
        (*v33)(v39, &v10[v24], v25);
        sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
        v36 = sub_1B7800828();
        v29 = *v35;
        (*v35)(v28, v25);
        v29(v27, v25);
        v14 = v34;
        sub_1B7205418(v10, &unk_1EB994C70);
        v11 = v38;
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      if ((sub_1B77FF918() & 1) == 0)
      {
        break;
      }

      v30 = sub_1B77FF918();
      sub_1B7326774(v14, type metadata accessor for RawBankConnectData.TermsAndConditions);
      sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TermsAndConditions);
      if (v30)
      {
        v21 += v37;
        v20 += v37;
        if (--v18)
        {
          continue;
        }
      }

      return v30 & 1;
    }

    sub_1B7326774(v14, type metadata accessor for RawBankConnectData.TermsAndConditions);
    sub_1B7326774(v17, type metadata accessor for RawBankConnectData.TermsAndConditions);
    goto LABEL_23;
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1B731F140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.NotificationEvent(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B732670C(v13, v10, type metadata accessor for RawBankConnectData.NotificationEvent);
      sub_1B732670C(v14, v7, type metadata accessor for RawBankConnectData.NotificationEvent);
      v17 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v17 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_44;
      }

      v18 = v10[16];
      if (v10[16])
      {
        v19 = 0x5F544E554F434341;
        v20 = v18 == 1 ? 0x5F544E45534E4F43 : 0x5F544E554F434341;
        v21 = 0xEF44454B4F564552;
        v22 = v18 == 1 ? 0xEF44454B4F564552 : 0xEF4445474E414843;
      }

      else
      {
        v22 = 0xE700000000000000;
        v20 = 0x4E574F4E4B4E55;
        v21 = 0xEF44454B4F564552;
        v19 = 0x5F544E554F434341;
      }

      if (v7[16] == 1)
      {
        v19 = 0x5F544E45534E4F43;
      }

      else
      {
        v21 = 0xEF4445474E414843;
      }

      v23 = v7[16] ? v19 : 0x4E574F4E4B4E55;
      v24 = v7[16] ? v21 : 0xE700000000000000;
      if (v20 == v23 && v22 == v24)
      {
      }

      else
      {
        v25 = sub_1B78020F8();

        if ((v25 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      if ((sub_1B77FF918() & 1) == 0 || ((v26 = *(v4 + 28), v27 = *&v10[v26], v28 = *&v10[v26 + 8], v29 = &v7[v26], v27 != *v29) || v28 != *(v29 + 1)) && (sub_1B78020F8() & 1) == 0)
      {
LABEL_44:
        sub_1B7326774(v7, type metadata accessor for RawBankConnectData.NotificationEvent);
        sub_1B7326774(v10, type metadata accessor for RawBankConnectData.NotificationEvent);
        return 0;
      }

      v30 = *(v4 + 32);
      v31 = &v10[v30];
      v32 = *&v10[v30 + 8];
      v33 = &v7[v30];
      v34 = *(v33 + 1);
      v16 = v34 == 0;
      if (!v32)
      {
        goto LABEL_6;
      }

      if (!v34)
      {
        goto LABEL_44;
      }

      if (*v31 != *v33 || v32 != v34)
      {
        break;
      }

      sub_1B7326774(v7, type metadata accessor for RawBankConnectData.NotificationEvent);
      sub_1B7326774(v10, type metadata accessor for RawBankConnectData.NotificationEvent);
LABEL_7:
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    v16 = sub_1B78020F8();
LABEL_6:
    sub_1B7326774(v7, type metadata accessor for RawBankConnectData.NotificationEvent);
    sub_1B7326774(v10, type metadata accessor for RawBankConnectData.NotificationEvent);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1B731F5C4(uint64_t a1, uint64_t a2)
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

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_1B73030D4(v31, v16);
    sub_1B73030D4(v37, v16);
    v14 = _s10FinanceKit18RawBankConnectDataO12AccountPartyV2eeoiySbAE_AEtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1B730310C(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1B730310C(v45);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t sub_1B731F734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B731F800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B731F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923E0);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v33 - v8;
  v10 = type metadata accessor for RawBankConnectData.Account(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v33 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v34 = v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v38 = *(v18 + 72);
  v39 = v10;
  while (1)
  {
    sub_1B732670C(v24, v21, type metadata accessor for RawBankConnectData.Account);
    sub_1B732670C(v25, v17, type metadata accessor for RawBankConnectData.Account);
    v26 = *(v40 + 48);
    sub_1B732670C(v21, v9, type metadata accessor for RawBankConnectData.Account);
    sub_1B732670C(v17, &v9[v26], type metadata accessor for RawBankConnectData.Account);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B732670C(v9, v14, type metadata accessor for RawBankConnectData.Account);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7326774(v17, type metadata accessor for RawBankConnectData.Account);
      sub_1B7326774(v21, type metadata accessor for RawBankConnectData.Account);
      v32 = type metadata accessor for RawBankConnectData.AssetAccount;
      goto LABEL_16;
    }

    v29 = v35;
    sub_1B73264F8(&v9[v26], v35, type metadata accessor for RawBankConnectData.AssetAccount);
    v30 = static RawBankConnectData.AssetAccount.== infix(_:_:)(v14, v29);
    sub_1B7326774(v29, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7326774(v17, type metadata accessor for RawBankConnectData.Account);
    sub_1B7326774(v21, type metadata accessor for RawBankConnectData.Account);
    sub_1B7326774(v14, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7326774(v9, type metadata accessor for RawBankConnectData.Account);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v25 += v38;
    v24 += v38;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v14;
  v14 = v34;
  sub_1B732670C(v9, v34, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v36;
    sub_1B73264F8(&v9[v26], v36, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v37 = _s10FinanceKit18RawBankConnectDataO16LiabilityAccountV2eeoiySbAE_AEtFZ_0(v14, v28);
    sub_1B7326774(v28, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7326774(v17, type metadata accessor for RawBankConnectData.Account);
    sub_1B7326774(v21, type metadata accessor for RawBankConnectData.Account);
    sub_1B7326774(v14, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7326774(v9, type metadata accessor for RawBankConnectData.Account);
    v14 = v27;
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1B7326774(v17, type metadata accessor for RawBankConnectData.Account);
  sub_1B7326774(v21, type metadata accessor for RawBankConnectData.Account);
  v32 = type metadata accessor for RawBankConnectData.LiabilityAccount;
LABEL_16:
  sub_1B7326774(v14, v32);
  sub_1B7205418(v9, &qword_1EB9923E0);
  return 0;
}

uint64_t sub_1B731FEC0(uint64_t a1, uint64_t a2)
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

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    v14 = _s10FinanceKit18RawBankConnectDataO12PartyAddressV2eeoiySbAE_AEtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1B732665C(v31, v16);
    sub_1B732665C(v37, v16);
    sub_1B73266B8(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1B73266B8(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t sub_1B7320030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0xE900000000000050;
      if (v6 == 1)
      {
        v9 = 0x50415F485455414FLL;
      }

      else
      {
        v9 = 0x45575F485455414FLL;
      }

      if (v6 == 1)
      {
        v10 = 0xE900000000000050;
      }

      else
      {
        v10 = 0xE900000000000042;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x455458455F505041;
      }

      if (*v3)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xED00004E4F49534ELL;
      }

      if (v7 == 1)
      {
        v13 = 0x50415F485455414FLL;
      }

      else
      {
        v13 = 0x45575F485455414FLL;
      }

      if (v7 != 1)
      {
        v8 = 0xE900000000000042;
      }

      if (*v4)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x455458455F505041;
      }

      if (*v4)
      {
        v15 = v8;
      }

      else
      {
        v15 = 0xED00004E4F49534ELL;
      }

      if (v11 == v14 && v12 == v15)
      {
      }

      else
      {
        v5 = sub_1B78020F8();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B7320190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v8 = 0xE700000000000000;
            v7 = 0x53445241574552;
          }

          else
          {
            v7 = 0x4E454D4554415453;
            v8 = 0xEA00000000005354;
          }
        }

        else
        {
          v7 = 0x544341534E415254;
          v8 = 0xEC000000534E4F49;
          if (v6 == 4)
          {
            v7 = 0xD00000000000001ALL;
            v8 = 0x80000001B7873D00;
          }
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001B7873CC0;
        }

        else
        {
          v7 = 0xD000000000000017;
          v8 = 0x80000001B7873CE0;
        }
      }

      else if (*v3)
      {
        v7 = 0xD000000000000010;
        v8 = 0x80000001B7873CA0;
      }

      else
      {
        v7 = 0xD000000000000013;
        v8 = 0x80000001B7873C80;
      }

      v9 = *i;
      if (v9 <= 3)
      {
        break;
      }

      if (*i <= 5u)
      {
        v11 = 0x544341534E415254;
        v10 = 0xEC000000534E4F49;
        if (v9 == 4)
        {
          v10 = 0x80000001B7873D00;
          if (v7 != 0xD00000000000001ALL)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }

LABEL_39:
        if (v7 != v11)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      if (v9 == 6)
      {
        v10 = 0xE700000000000000;
        if (v7 != 0x53445241574552)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xEA00000000005354;
        if (v7 != 0x4E454D4554415453)
        {
LABEL_5:
          v5 = sub_1B78020F8();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

LABEL_40:
      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i <= 1u)
    {
      if (*i)
      {
        v10 = 0x80000001B7873CA0;
        if (v7 != 0xD000000000000010)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0x80000001B7873C80;
        if (v7 != 0xD000000000000013)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_40;
    }

    if (v9 == 2)
    {
      v10 = 0x80000001B7873CC0;
      if (v7 != 0xD00000000000001BLL)
      {
        goto LABEL_5;
      }

      goto LABEL_40;
    }

    v11 = 0xD000000000000017;
    v10 = 0x80000001B7873CE0;
    goto LABEL_39;
  }

  return 1;
}

uint64_t sub_1B7320480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v28 = *(v8 + 72);
    while (1)
    {
      sub_1B732670C(v13, v10, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
      v30 = v14;
      sub_1B732670C(v14, v7, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
      if ((sub_1B77FF918() & 1) == 0)
      {
        break;
      }

      v29 = v13;
      v15 = &v10[v4[5]];
      *&v33[1] = *(v15 + 4);
      v16 = *(v15 + 1);
      v32 = *v15;
      v33[0] = v16;
      v17 = v4;
      v18 = &v7[v4[5]];
      v19 = *(v18 + 1);
      v34 = *v18;
      v35[0] = v19;
      *&v35[1] = *(v18 + 4);
      v20 = v16;
      v21 = v19;
      v22 = v32;
      v23 = v34;
      sub_1B7215720(&v32, v31);
      sub_1B7215720(&v34, v31);
      if ((MEMORY[0x1B8CA5970](v22, *(&v22 + 1), v20, v23, *(&v23 + 1), v21) & 1) == 0)
      {
        sub_1B721722C(&v34);
        sub_1B721722C(&v32);
        break;
      }

      if (*(v33 + 8) == *(v35 + 8))
      {
        sub_1B721722C(&v34);
        sub_1B721722C(&v32);
        v4 = v17;
      }

      else
      {
        v24 = sub_1B78020F8();
        sub_1B721722C(&v34);
        sub_1B721722C(&v32);
        v4 = v17;
        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      if ((sub_1B72F48EC(*&v10[v4[6]], *&v7[v4[6]]) & 1) == 0)
      {
        break;
      }

      if ((sub_1B72210A8(*&v10[v4[7]], *&v7[v4[7]]) & 1) == 0)
      {
        break;
      }

      v25 = sub_1B722138C(*&v10[v4[8]], *&v7[v4[8]]);
      v26 = v29;
      if ((v25 & 1) == 0)
      {
        break;
      }

      sub_1B7326774(v7, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
      sub_1B7326774(v10, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
      v14 = v30 + v28;
      v13 = v26 + v28;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1B7326774(v7, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
    sub_1B7326774(v10, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
  }

  return 0;
}

uint64_t sub_1B73207C4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, _BYTE *), void (*a4)(__int128 *))
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v6 = (a1 + 32);
    v7 = (a2 + 32);
    for (i = v4 - 1; ; --i)
    {
      v9 = v6[1];
      v20 = *v6;
      v21 = v9;
      v22[0] = v6[2];
      *&v22[1] = *(v6 + 6);
      v10 = v7[1];
      v23 = *v7;
      v11 = v7[2];
      v24 = v10;
      *v25 = v11;
      *&v25[16] = *(v7 + 6);
      if (v20 != v23 && (sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v12 = LODWORD(v22[0]);
      v13 = *v25;
      v14 = v21;
      v15 = v24;
      a3(&v20, v19);
      a3(&v23, v19);
      sub_1B7215720(&v21, v19);
      sub_1B7215720(&v24, v19);
      if ((MEMORY[0x1B8CA5970](v14, *(&v14 + 1), v12, v15, *(&v15 + 1), v13) & 1) == 0)
      {
        sub_1B721722C(&v24);
        sub_1B721722C(&v21);
        a4(&v23);
        a4(&v20);
        return 0;
      }

      if (*(v22 + 8) == *&v25[8])
      {
        sub_1B721722C(&v24);
        sub_1B721722C(&v21);
        a4(&v23);
        a4(&v20);
      }

      else
      {
        v16 = sub_1B78020F8();
        sub_1B721722C(&v24);
        sub_1B721722C(&v21);
        a4(&v23);
        a4(&v20);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      if (!i)
      {
        return 1;
      }

      v7 = (v7 + 56);
      v6 = (v6 + 56);
    }
  }

  return 0;
}

uint64_t sub_1B7320A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923E8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v33 - v8;
  v10 = type metadata accessor for RawOrderFulfillment();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v33 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v34 = v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v38 = *(v18 + 72);
  v39 = v10;
  while (1)
  {
    sub_1B732670C(v24, v21, type metadata accessor for RawOrderFulfillment);
    sub_1B732670C(v25, v17, type metadata accessor for RawOrderFulfillment);
    v26 = *(v40 + 48);
    sub_1B732670C(v21, v9, type metadata accessor for RawOrderFulfillment);
    sub_1B732670C(v17, &v9[v26], type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B732670C(v9, v14, type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7326774(v17, type metadata accessor for RawOrderFulfillment);
      sub_1B7326774(v21, type metadata accessor for RawOrderFulfillment);
      v32 = type metadata accessor for RawOrderShippingFulfillment;
      goto LABEL_16;
    }

    v29 = v35;
    sub_1B73264F8(&v9[v26], v35, type metadata accessor for RawOrderShippingFulfillment);
    v30 = static RawOrderShippingFulfillment.== infix(_:_:)(v14, v29);
    sub_1B7326774(v29, type metadata accessor for RawOrderShippingFulfillment);
    sub_1B7326774(v17, type metadata accessor for RawOrderFulfillment);
    sub_1B7326774(v21, type metadata accessor for RawOrderFulfillment);
    sub_1B7326774(v14, type metadata accessor for RawOrderShippingFulfillment);
    sub_1B7326774(v9, type metadata accessor for RawOrderFulfillment);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v25 += v38;
    v24 += v38;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v14;
  v14 = v34;
  sub_1B732670C(v9, v34, type metadata accessor for RawOrderFulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v36;
    sub_1B73264F8(&v9[v26], v36, type metadata accessor for RawOrderPickupFulfillment);
    v37 = static RawOrderPickupFulfillment.== infix(_:_:)(v14, v28);
    sub_1B7326774(v28, type metadata accessor for RawOrderPickupFulfillment);
    sub_1B7326774(v17, type metadata accessor for RawOrderFulfillment);
    sub_1B7326774(v21, type metadata accessor for RawOrderFulfillment);
    sub_1B7326774(v14, type metadata accessor for RawOrderPickupFulfillment);
    sub_1B7326774(v9, type metadata accessor for RawOrderFulfillment);
    v14 = v27;
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1B7326774(v17, type metadata accessor for RawOrderFulfillment);
  sub_1B7326774(v21, type metadata accessor for RawOrderFulfillment);
  v32 = type metadata accessor for RawOrderPickupFulfillment;
LABEL_16:
  sub_1B7326774(v14, v32);
  sub_1B7205418(v9, &qword_1EB9923E8);
  return 0;
}

uint64_t sub_1B7320FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v46 = type metadata accessor for RawOrderApplication();
  v13 = MEMORY[0x1EEE9AC00](v46);
  v47 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v38 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v38 = (v5 + 32);
    v39 = v10;
    v40 = v7;
    v41 = (v5 + 8);
    v43 = *(v15 + 72);
    v44 = (v5 + 48);
    while (1)
    {
      sub_1B732670C(v20, v17, type metadata accessor for RawOrderApplication);
      v23 = v47;
      sub_1B732670C(v21, v47, type metadata accessor for RawOrderApplication);
      if (*v17 != *v23)
      {
LABEL_22:
        sub_1B7326774(v47, type metadata accessor for RawOrderApplication);
        sub_1B7326774(v17, type metadata accessor for RawOrderApplication);
        return 0;
      }

      v24 = *(v46 + 20);
      v25 = *(v10 + 48);
      sub_1B7228664(v17 + v24, v12);
      sub_1B7228664(v47 + v24, &v12[v25]);
      v26 = *v44;
      if ((*v44)(v12, 1, v4) == 1)
      {
        if (v26(&v12[v25], 1, v4) != 1)
        {
          goto LABEL_21;
        }

        sub_1B7205418(v12, &unk_1EB994C70);
      }

      else
      {
        sub_1B7228664(v12, v45);
        if (v26(&v12[v25], 1, v4) == 1)
        {
          (*v41)(v45, v4);
LABEL_21:
          sub_1B7205418(v12, &qword_1EB991C30);
          goto LABEL_22;
        }

        v27 = v45;
        v28 = v40;
        (*v38)(v40, &v12[v25], v4);
        sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
        v42 = sub_1B7800828();
        v29 = *v41;
        v30 = v28;
        v31 = v27;
        v10 = v39;
        (*v41)(v30, v4);
        v29(v31, v4);
        sub_1B7205418(v12, &unk_1EB994C70);
        if ((v42 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v32 = *(v46 + 24);
      v33 = (v17 + v32);
      v34 = *(v17 + v32 + 8);
      v35 = (v47 + v32);
      v36 = v35[1];
      v22 = v36 == 0;
      if (!v34)
      {
        goto LABEL_6;
      }

      if (!v36)
      {
        goto LABEL_22;
      }

      if (*v33 != *v35 || v34 != v36)
      {
        break;
      }

      sub_1B7326774(v47, type metadata accessor for RawOrderApplication);
      sub_1B7326774(v17, type metadata accessor for RawOrderApplication);
LABEL_7:
      v21 += v43;
      v20 += v43;
      if (!--v18)
      {
        return 1;
      }
    }

    v22 = sub_1B78020F8();
LABEL_6:
    sub_1B7326774(v47, type metadata accessor for RawOrderApplication);
    sub_1B7326774(v17, type metadata accessor for RawOrderApplication);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1B732159C(uint64_t a1, uint64_t a2)
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

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v30 = v5[2];
    v31 = v8;
    v9 = v5[5];
    v32 = v5[4];
    v33 = v9;
    v10 = v5[1];
    v29[0] = *v5;
    v29[1] = v10;
    v25 = v30;
    v26 = v8;
    v27 = v32;
    v28 = v9;
    v23 = v29[0];
    v24 = v10;
    v11 = v6[3];
    v35 = v6[2];
    v36 = v11;
    v12 = v6[5];
    v37 = v6[4];
    v38 = v12;
    v13 = v6[1];
    v34[0] = *v6;
    v34[1] = v13;
    v19 = v35;
    v20 = v11;
    v21 = v37;
    v22 = v12;
    v17 = v34[0];
    v18 = v13;
    sub_1B7326448(v29, v16);
    sub_1B7326448(v34, v16);
    v14 = _s10FinanceKit14ExtractedOrderV7PaymentV11TransactionV2eeoiySbAG_AGtFZ_0(&v23, &v17);
    v39[2] = v19;
    v39[3] = v20;
    v39[4] = v21;
    v39[5] = v22;
    v39[0] = v17;
    v39[1] = v18;
    sub_1B73264A4(v39);
    v40[2] = v25;
    v40[3] = v26;
    v40[4] = v27;
    v40[5] = v28;
    v40[0] = v23;
    v40[1] = v24;
    sub_1B73264A4(v40);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

uint64_t sub_1B73216E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1B7326350(&qword_1EB99DBE0, MEMORY[0x1E69695A8]);
    v21 = sub_1B7800828();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7321948(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 RawBankConnectData.MonetaryAmount.decimalRepresentation.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v1[1].n128_u32[0];
  return result;
}

__n128 RawBankConnectData.MonetaryAmount.decimalRepresentation.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

uint64_t RawBankConnectData.MonetaryAmount.currency.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = *(v1 + 72);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1B7321A3C(v7, v6);
}

__n128 RawBankConnectData.MonetaryAmount.currency.setter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v6[2] = *(v1 + 56);
  v7 = *(v1 + 72);
  sub_1B7321ADC(v6);
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  *(v1 + 72) = *(a1 + 48);
  return result;
}

__n128 RawBankConnectData.MonetaryAmount.init(decimalRepresentation:currency:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v3 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 40) = v3;
  result = *(a2 + 32);
  *(a3 + 56) = result;
  *(a3 + 72) = *(a2 + 48);
  return result;
}

uint64_t sub_1B7321B60()
{
  if (*v0)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1B7321BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001B7879ED0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000)
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

uint64_t sub_1B7321C88(uint64_t a1)
{
  v2 = sub_1B7324860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7321CC4(uint64_t a1)
{
  v2 = sub_1B7324860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.MonetaryAmount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  v9 = *(v3 + 40);
  v17 = *(v3 + 24);
  v18 = v9;
  v19 = *(v3 + 56);
  v20 = *(v3 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7324860();
  sub_1B78023F8();
  v13 = *v3;
  LODWORD(v14) = *(v3 + 4);
  LOBYTE(v11[0]) = 0;
  sub_1B73248B4();
  sub_1B7801FC8();
  if (!v2)
  {
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v21 = 1;
    sub_1B7321A3C(&v17, v11);
    sub_1B7324908();
    sub_1B7801FC8();
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v12 = v16;
    sub_1B7321ADC(v11);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.MonetaryAmount.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7324860();
  sub_1B78023C8();
  if (!v2)
  {
    v18 = 0;
    sub_1B732495C();
    sub_1B7801E48();
    v21 = v19;
    *v22 = v20;
    v13[15] = 1;
    sub_1B73249B0();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *&v22[8] = v14;
    *&v22[24] = v15;
    *&v22[40] = v16;
    *&v22[56] = v17;
    v9 = *v22;
    *a2 = v21;
    a2[1] = v9;
    v10 = *&v22[32];
    v11 = *&v22[48];
    a2[2] = *&v22[16];
    a2[3] = v10;
    a2[4] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 RawBankConnectData.Currency.currencyRate.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = v3;
  return result;
}

__n128 RawBankConnectData.Currency.currencyRate.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u8[4];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v2;
  v1[1].n128_u8[4] = v3;
  return result;
}

uint64_t RawBankConnectData.Currency.currencyCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawBankConnectData.Currency.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawBankConnectData.Currency.originalCurrencyCode.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawBankConnectData.Currency.originalCurrencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 RawBankConnectData.Currency.init(currencyRate:currencyCode:originalCurrencyCode:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u32[0];
  v7 = a1[1].n128_u8[4];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u32[0] = v6;
  a6[1].n128_u8[4] = v7;
  a6[1].n128_u64[1] = a2;
  a6[2].n128_u64[0] = a3;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  return result;
}

uint64_t sub_1B73222FC()
{
  v1 = 0xD000000000000014;
  if (*v0 == 1)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

uint64_t sub_1B732235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7325E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7322384(uint64_t a1)
{
  v2 = sub_1B7324A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73223C0(uint64_t a1)
{
  v2 = sub_1B7324A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Currency.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922F8);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = *(v1 + 4);
  v21 = *(v1 + 20);
  v9 = v1[3];
  v14[3] = v1[4];
  v14[4] = v9;
  v10 = v1[5];
  v14[1] = v1[6];
  v14[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7324A04();
  sub_1B78023F8();
  v17 = v7;
  v18 = v6;
  v19 = v8;
  v20 = v21;
  v22 = 0;
  sub_1B73248B4();
  v11 = v16;
  sub_1B7801F38();
  if (v11)
  {
    return (*(v15 + 8))(v5, v3);
  }

  v13 = v15;
  LOBYTE(v17) = 1;
  sub_1B7801F78();
  LOBYTE(v17) = 2;
  sub_1B7801EF8();
  return (*(v13 + 8))(v5, v3);
}

uint64_t RawBankConnectData.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992308);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7324A04();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_1B732495C();
  sub_1B7801DB8();
  v9 = v34;
  v28 = v33;
  v10 = v35;
  v42 = v36;
  LOBYTE(v33) = 1;
  v11 = sub_1B7801DF8();
  v41 = v10;
  v26 = v11;
  v27 = v12;
  v25 = v9;
  v43 = 2;
  v13 = sub_1B7801D78();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  v19 = v25;
  v18 = v26;
  *&v29 = v28;
  *(&v29 + 1) = v25;
  v20 = v41;
  LODWORD(v30) = v41;
  v24 = v42;
  BYTE4(v30) = v42;
  *(&v30 + 1) = v26;
  *&v31 = v27;
  *(&v31 + 1) = v16;
  v32 = v15;
  *(a2 + 48) = v15;
  v21 = v31;
  *(a2 + 16) = v30;
  *(a2 + 32) = v21;
  *a2 = v29;
  sub_1B7321A3C(&v29, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v28;
  v34 = v19;
  v35 = v20;
  v36 = v24;
  v37 = v18;
  v38 = v17;
  v39 = v16;
  v40 = v15;
  return sub_1B7321ADC(&v33);
}

uint64_t RawBankConnectData.AssetLiabilityIndicator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x54494C494241494CLL;
  }

  else
  {
    return 0x5445535341;
  }
}

uint64_t sub_1B7322928()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73229AC()
{
  sub_1B7800798();
}

uint64_t sub_1B7322A1C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7322AA8(uint64_t *a1@<X8>)
{
  v2 = 0x5445535341;
  if (*v1)
  {
    v2 = 0x54494C494241494CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000059;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B7322B98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54494C494241494CLL;
  }

  else
  {
    v3 = 0x5445535341;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000059;
  }

  if (*a2)
  {
    v5 = 0x54494C494241494CLL;
  }

  else
  {
    v5 = 0x5445535341;
  }

  if (*a2)
  {
    v6 = 0xE900000000000059;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1B7322C4C()
{
  v0 = sub_1B7801D18();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t RawBankConnectData.CreditDebitIndicator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x544944455243;
  }

  else
  {
    return 0x5449424544;
  }
}

uint64_t sub_1B7322CD8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7322D54()
{
  sub_1B7800798();
}

uint64_t sub_1B7322DBC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7322E40@<X0>(char *a1@<X8>)
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

void sub_1B7322E9C(uint64_t *a1@<X8>)
{
  v2 = 0x5449424544;
  if (*v1)
  {
    v2 = 0x544944455243;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B7322F94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544944455243;
  }

  else
  {
    v3 = 0x5449424544;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x544944455243;
  }

  else
  {
    v5 = 0x5449424544;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t RawBankConnectData.Actions.payNow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 20);

  return sub_1B7228664(v3, a1);
}

uint64_t RawBankConnectData.Actions.payNow.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawBankConnectData.Actions.digitalServicing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 24);

  return sub_1B7228664(v3, a1);
}

uint64_t RawBankConnectData.Actions.digitalServicing.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 24);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawBankConnectData.Actions.postInstallment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 28);

  return sub_1B7228664(v3, a1);
}

uint64_t RawBankConnectData.Actions.postInstallment.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 28);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawBankConnectData.Actions.redeemRewards.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 32);

  return sub_1B7228664(v3, a1);
}

uint64_t RawBankConnectData.Actions.redeemRewards.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Actions() + 32);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawBankConnectData.Actions.init(transferFunds:payNow:digitalServicing:postInstallment:redeemRewards:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = sub_1B77FF4F8();
  v10 = *(*(v9 - 8) + 56);
  v10(a6, 1, 1, v9);
  v11 = type metadata accessor for RawBankConnectData.Actions();
  v12 = v11[5];
  v10(a6 + v12, 1, 1, v9);
  v13 = v11[6];
  v10(a6 + v13, 1, 1, v9);
  v14 = v11[7];
  v10(a6 + v14, 1, 1, v9);
  v15 = v11[8];
  v10(a6 + v15, 1, 1, v9);
  sub_1B727CBBC(a1, a6);
  sub_1B727CBBC(a2, a6 + v12);
  sub_1B727CBBC(a3, a6 + v13);
  sub_1B727CBBC(a4, a6 + v14);

  return sub_1B727CBBC(a5, a6 + v15);
}

uint64_t sub_1B7323518()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v3;
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v24 - v5;
  v26 = &v24 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v27 = &v24 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = type metadata accessor for RawBankConnectData.Actions();
  __swift_allocate_value_buffer(v15, qword_1EBA45918);
  v16 = __swift_project_value_buffer(v15, qword_1EBA45918);
  v17 = sub_1B77FF4F8();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  v18(v12, 1, 1, v17);
  v18(v9, 1, 1, v17);
  v18(v6, 1, 1, v17);
  v18(v3, 1, 1, v17);
  v18(v16, 1, 1, v17);
  v19 = v15[5];
  v18((v16 + v19), 1, 1, v17);
  v20 = v15[6];
  v18((v16 + v20), 1, 1, v17);
  v21 = v15[7];
  v18((v16 + v21), 1, 1, v17);
  v22 = v15[8];
  v18((v16 + v22), 1, 1, v17);
  sub_1B727CBBC(v14, v16);
  sub_1B727CBBC(v12, v16 + v19);
  sub_1B727CBBC(v27, v16 + v20);
  sub_1B727CBBC(v26, v16 + v21);
  return sub_1B727CBBC(v25, v16 + v22);
}

unint64_t sub_1B73237F4()
{
  v1 = *v0;
  v2 = 0x726566736E617274;
  v3 = 0xD000000000000010;
  v4 = 0x74736E4974736F70;
  if (v1 != 3)
  {
    v4 = 0x65526D6565646572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x776F4E796170;
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

uint64_t sub_1B73238B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7325F7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73238DC(uint64_t a1)
{
  v2 = sub_1B73255A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7323918(uint64_t a1)
{
  v2 = sub_1B73255A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Actions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992310);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73255A0();
  sub_1B78023F8();
  v13 = 0;
  sub_1B77FF4F8();
  sub_1B7326350(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.Actions();
    v12 = 1;
    sub_1B7801F38();
    v11 = 2;
    sub_1B7801F38();
    v10 = 3;
    sub_1B7801F38();
    v9 = 4;
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.Actions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v34 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v34 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992320);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v34 - v12;
  v14 = type metadata accessor for RawBankConnectData.Actions();
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FF4F8();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v40 = v15[7];
  v19(&v17[v40], 1, 1, v18);
  v20 = v15[8];
  v19(&v17[v20], 1, 1, v18);
  v21 = v15[9];
  v19(&v17[v21], 1, 1, v18);
  v22 = v15[10];
  v47 = v17;
  v19(&v17[v22], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_1B73255A0();
  v45 = v13;
  v23 = v48;
  sub_1B78023C8();
  if (v23)
  {
    v24 = v47;
  }

  else
  {
    v48 = v20;
    v35 = v22;
    v36 = v21;
    v25 = v42;
    v26 = v43;
    v27 = v41;
    v54 = 0;
    v28 = sub_1B7326350(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v29 = v44;
    sub_1B7801DB8();
    v24 = v47;
    sub_1B727CBBC(v46, v47);
    v53 = 1;
    v46 = v28;
    sub_1B7801DB8();
    sub_1B727CBBC(v25, v24 + v40);
    v52 = 2;
    sub_1B7801DB8();
    sub_1B727CBBC(v26, v24 + v48);
    v51 = 3;
    v31 = v39;
    v32 = v45;
    sub_1B7801DB8();
    sub_1B727CBBC(v31, v24 + v36);
    v50 = 4;
    v33 = v38;
    sub_1B7801DB8();
    (*(v27 + 8))(v32, v29);
    sub_1B727CBBC(v33, v24 + v35);
    sub_1B732670C(v24, v37, type metadata accessor for RawBankConnectData.Actions);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1B7326774(v24, type metadata accessor for RawBankConnectData.Actions);
}

uint64_t RawBankConnectData.PIIRedactionConfiguration.countryCodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B73241C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x437972746E756F63 && a2 == 0xEC0000007365646FLL)
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

uint64_t sub_1B7324254(uint64_t a1)
{
  v2 = sub_1B73255F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7324290(uint64_t a1)
{
  v2 = sub_1B73255F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PIIRedactionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992328);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73255F4();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B721523C(&qword_1EB98F960);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.PIIRedactionConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992338);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73255F4();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 1) != 0 || (MEMORY[0x1B8CA5970](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v3 != v7) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    return v8 && (v4 == v9 && v5 == v8 || (sub_1B78020F8() & 1) != 0);
  }

  return !v8;
}

BOOL _s10FinanceKit18RawBankConnectDataO14MonetaryAmountV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v32[0] = *(a1 + 3);
  v32[1] = v5;
  v32[2] = *(a1 + 7);
  v33 = a1[9];
  v6 = *(a2 + 4);
  v7 = *(a2 + 3);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  v10 = a2[9];
  v11 = *a1;
  v12 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  v35 = v10;
  v34[1] = v8;
  v34[2] = v9;
  v34[0] = v7;
  if (MEMORY[0x1B8CA5970](v11, v12, v4, v14, v15, v6))
  {
    v16 = *(a1 + 5);
    v24 = *(a1 + 3);
    v25 = v16;
    v26 = *(a1 + 7);
    v27 = a1[9];
    v17 = *(a2 + 5);
    v20 = *(a2 + 3);
    v21 = v17;
    v22 = *(a2 + 7);
    v23 = a2[9];
    sub_1B7321A3C(v32, v30);
    sub_1B7321A3C(v34, v30);
    v18 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(&v24, &v20);
    v28[0] = v20;
    v28[1] = v21;
    v28[2] = v22;
    v29 = v23;
    sub_1B7321ADC(v28);
    v30[0] = v24;
    v30[1] = v25;
    v30[2] = v26;
    v31 = v27;
    sub_1B7321ADC(v30);
  }

  else
  {
    return 0;
  }

  return v18;
}

unint64_t sub_1B7324860()
{
  result = qword_1EB9922C8;
  if (!qword_1EB9922C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922C8);
  }

  return result;
}

unint64_t sub_1B73248B4()
{
  result = qword_1EB9922D0;
  if (!qword_1EB9922D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922D0);
  }

  return result;
}

unint64_t sub_1B7324908()
{
  result = qword_1EB9922D8;
  if (!qword_1EB9922D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922D8);
  }

  return result;
}

unint64_t sub_1B732495C()
{
  result = qword_1EB9922E8;
  if (!qword_1EB9922E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922E8);
  }

  return result;
}

unint64_t sub_1B73249B0()
{
  result = qword_1EB9922F0;
  if (!qword_1EB9922F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9922F0);
  }

  return result;
}

unint64_t sub_1B7324A04()
{
  result = qword_1EB992300;
  if (!qword_1EB992300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992300);
  }

  return result;
}

uint64_t type metadata accessor for RawBankConnectData.Actions()
{
  result = qword_1EB992360;
  if (!qword_1EB992360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO7ActionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v78 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v78 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v78 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v78 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v78 - v31;
  v87 = a1;
  v88 = v30;
  v33 = *(v30 + 48);
  sub_1B7228664(a1, &v78 - v31);
  v89 = a2;
  sub_1B7228664(a2, &v32[v33]);
  v34 = *(v5 + 48);
  if (v34(v32, 1, v4) == 1)
  {
    if (v34(&v32[v33], 1, v4) == 1)
    {
      v85 = v34;
      v78 = v10;
      v79 = v22;
      sub_1B7205418(v32, &unk_1EB994C70);
      goto LABEL_8;
    }

LABEL_6:
    v35 = v32;
LABEL_28:
    sub_1B7205418(v35, &qword_1EB991C30);
    return 0;
  }

  sub_1B7228664(v32, v18);
  if (v34(&v32[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v18, v4);
    goto LABEL_6;
  }

  v85 = v34;
  v78 = v10;
  v79 = v22;
  v36 = v86;
  (*(v5 + 32))(v86, &v32[v33], v4);
  sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v37 = sub_1B7800828();
  v38 = *(v5 + 8);
  v38(v36, v4);
  v38(v18, v4);
  sub_1B7205418(v32, &unk_1EB994C70);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v39 = type metadata accessor for RawBankConnectData.Actions();
  v40 = v39[5];
  v41 = v87;
  v42 = *(v88 + 48);
  sub_1B7228664(v87 + v40, v29);
  sub_1B7228664(v89 + v40, &v29[v42]);
  v43 = v85;
  if (v85(v29, 1, v4) == 1)
  {
    v85 = v43;
    if (v43(&v29[v42], 1, v4) == 1)
    {
      sub_1B7205418(v29, &unk_1EB994C70);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v84;
  sub_1B7228664(v29, v84);
  if (v43(&v29[v42], 1, v4) == 1)
  {
    (*(v5 + 8))(v44, v4);
LABEL_13:
    v35 = v29;
    goto LABEL_28;
  }

  v85 = v43;
  v45 = v86;
  (*(v5 + 32))(v86, &v29[v42], v4);
  sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v46 = sub_1B7800828();
  v47 = v39;
  v48 = *(v5 + 8);
  v48(v45, v4);
  v48(v44, v4);
  v39 = v47;
  v41 = v87;
  sub_1B7205418(v29, &unk_1EB994C70);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v49 = v39[6];
  v50 = *(v88 + 48);
  v51 = v83;
  sub_1B7228664(v41 + v49, v83);
  sub_1B7228664(v89 + v49, v51 + v50);
  v52 = v85;
  if (v85(v51, 1, v4) == 1)
  {
    v53 = v52;
    if (v52(v51 + v50, 1, v4) == 1)
    {
      sub_1B7205418(v51, &unk_1EB994C70);
      goto LABEL_22;
    }

LABEL_20:
    v35 = v51;
    goto LABEL_28;
  }

  v54 = v82;
  sub_1B7228664(v51, v82);
  v53 = v52;
  if (v52(v51 + v50, 1, v4) == 1)
  {
    (*(v5 + 8))(v54, v4);
    goto LABEL_20;
  }

  v55 = *(v5 + 32);
  v87 = v39;
  v56 = v86;
  v55(v86, v51 + v50, v4);
  sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  LODWORD(v84) = sub_1B7800828();
  v57 = v51;
  v58 = *(v5 + 8);
  v59 = v56;
  v39 = v87;
  v58(v59, v4);
  v58(v54, v4);
  sub_1B7205418(v57, &unk_1EB994C70);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v60 = v39[7];
  v61 = *(v88 + 48);
  v62 = v81;
  sub_1B7228664(v41 + v60, v81);
  sub_1B7228664(v89 + v60, v62 + v61);
  v63 = v53(v62, 1, v4);
  v85 = v53;
  if (v63 != 1)
  {
    v64 = v80;
    sub_1B7228664(v62, v80);
    if (v53(v62 + v61, 1, v4) != 1)
    {
      v66 = *(v5 + 32);
      v87 = v39;
      v67 = v86;
      v66(v86, v62 + v61, v4);
      sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
      v68 = sub_1B7800828();
      v69 = *(v5 + 8);
      v70 = v67;
      v39 = v87;
      v69(v70, v4);
      v69(v64, v4);
      sub_1B7205418(v62, &unk_1EB994C70);
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    (*(v5 + 8))(v64, v4);
LABEL_27:
    v35 = v62;
    goto LABEL_28;
  }

  if (v53(v62 + v61, 1, v4) != 1)
  {
    goto LABEL_27;
  }

  sub_1B7205418(v62, &unk_1EB994C70);
LABEL_32:
  v71 = v39[8];
  v72 = *(v88 + 48);
  v51 = v79;
  sub_1B7228664(v41 + v71, v79);
  sub_1B7228664(v89 + v71, v51 + v72);
  v73 = v85;
  if (v85(v51, 1, v4) == 1)
  {
    if (v73(v51 + v72, 1, v4) == 1)
    {
      sub_1B7205418(v51, &unk_1EB994C70);
      return 1;
    }

    goto LABEL_20;
  }

  v74 = v78;
  sub_1B7228664(v51, v78);
  if (v73(v51 + v72, 1, v4) == 1)
  {
    (*(v5 + 8))(v74, v4);
    goto LABEL_20;
  }

  v75 = v86;
  (*(v5 + 32))(v86, v51 + v72, v4);
  sub_1B7326350(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v76 = sub_1B7800828();
  v77 = *(v5 + 8);
  v77(v75, v4);
  v77(v74, v4);
  sub_1B7205418(v51, &unk_1EB994C70);
  return (v76 & 1) != 0;
}

unint64_t sub_1B73255A0()
{
  result = qword_1EB992318;
  if (!qword_1EB992318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992318);
  }

  return result;
}

unint64_t sub_1B73255F4()
{
  result = qword_1EB992330;
  if (!qword_1EB992330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992330);
  }

  return result;
}

unint64_t sub_1B732564C()
{
  result = qword_1EB992340;
  if (!qword_1EB992340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992340);
  }

  return result;
}

unint64_t sub_1B73256A4()
{
  result = qword_1EB992348;
  if (!qword_1EB992348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992348);
  }

  return result;
}

unint64_t sub_1B73256FC()
{
  result = qword_1EB992350;
  if (!qword_1EB992350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992350);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B732578C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B73257D4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_1B7325890()
{
  sub_1B7325908();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7325908()
{
  if (!qword_1EDAFC648)
  {
    sub_1B77FF4F8();
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFC648);
    }
  }
}

uint64_t getEnumTagSinglePayload for TaskPriorityQueue(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TaskPriorityQueue(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7325A38()
{
  result = qword_1EB992370;
  if (!qword_1EB992370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992370);
  }

  return result;
}

unint64_t sub_1B7325A90()
{
  result = qword_1EB992378;
  if (!qword_1EB992378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992378);
  }

  return result;
}

unint64_t sub_1B7325AE8()
{
  result = qword_1EB992380;
  if (!qword_1EB992380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992380);
  }

  return result;
}

unint64_t sub_1B7325B40()
{
  result = qword_1EB992388;
  if (!qword_1EB992388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992388);
  }

  return result;
}

unint64_t sub_1B7325B98()
{
  result = qword_1EB992390;
  if (!qword_1EB992390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992390);
  }

  return result;
}

unint64_t sub_1B7325BF0()
{
  result = qword_1EB992398;
  if (!qword_1EB992398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992398);
  }

  return result;
}

unint64_t sub_1B7325C48()
{
  result = qword_1EB9923A0;
  if (!qword_1EB9923A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923A0);
  }

  return result;
}

unint64_t sub_1B7325CA0()
{
  result = qword_1EB9923A8;
  if (!qword_1EB9923A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923A8);
  }

  return result;
}

unint64_t sub_1B7325CF8()
{
  result = qword_1EB9923B0;
  if (!qword_1EB9923B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923B0);
  }

  return result;
}

unint64_t sub_1B7325D50()
{
  result = qword_1EB9923B8;
  if (!qword_1EB9923B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923B8);
  }

  return result;
}

unint64_t sub_1B7325DA8()
{
  result = qword_1EB9923C0;
  if (!qword_1EB9923C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923C0);
  }

  return result;
}

unint64_t sub_1B7325E00()
{
  result = qword_1EB9923C8;
  if (!qword_1EB9923C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923C8);
  }

  return result;
}

uint64_t sub_1B7325E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79636E6572727563 && a2 == 0xEC00000065746152;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7879EF0 == a2)
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

uint64_t sub_1B7325F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726566736E617274 && a2 == 0xED000073646E7546;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F4E796170 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7879F10 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736E4974736F70 && a2 == 0xEF746E656D6C6C61 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526D6565646572 && a2 == 0xED00007364726177)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

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

unint64_t sub_1B7326148()
{
  result = qword_1EB9923D0;
  if (!qword_1EB9923D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923D0);
  }

  return result;
}

unint64_t sub_1B732619C()
{
  result = qword_1EB9923D8;
  if (!qword_1EB9923D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9923D8);
  }

  return result;
}

uint64_t sub_1B7326350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B73264F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7326610()
{
  result = qword_1EDAF6470;
  if (!qword_1EDAF6470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF6470);
  }

  return result;
}

uint64_t sub_1B732670C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7326774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B73267D4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedRecurringPreauthorizedPayment.__allocating_init(id:paymentIdentifier:statusValue:typeValue:paymentDescription:isVariable:firstAmountValue:firstPaymentCurrency:firstPaymentDate:lastAmountValue:lastPaymentCurrency:lastPaymentDate:mostRecentAmountValue:mostRecentPaymentCurrency:mostRecentPaymentDate:upcomingAmountValue:upcomingPaymentCurrency:upcomingPaymentDate:dailyInterval:weeklyInterval:monthlyInterval:yearlyInterval:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, __int128 a10, uint64_t a11, void *a12, __int128 a13, uint64_t a14, void *a15, __int128 a16, uint64_t a17, void *a18, __int128 a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, __int128 a25, __int128 a26, __int128 a27, uint64_t a28, uint64_t a29, void *a30, void *a31)
{
  v32 = objc_allocWithZone(v31);
  v33 = sub_1B7328F30(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, *(&a10 + 1), a11, a12, a13, *(&a13 + 1), a14, a15, a16, *(&a16 + 1), a17, a18, a19, *(&a19 + 1), a20, a21, a22, a23, a24, a25, *(&a25 + 1), a26, *(&a26 + 1), a27, *(&a27 + 1), a28, a29, a30, a31);

  return v33;
}

id ManagedRecurringPreauthorizedPayment.init(id:paymentIdentifier:statusValue:typeValue:paymentDescription:isVariable:firstAmountValue:firstPaymentCurrency:firstPaymentDate:lastAmountValue:lastPaymentCurrency:lastPaymentDate:mostRecentAmountValue:mostRecentPaymentCurrency:mostRecentPaymentDate:upcomingAmountValue:upcomingPaymentCurrency:upcomingPaymentDate:dailyInterval:weeklyInterval:monthlyInterval:yearlyInterval:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v39 = sub_1B7328F30(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);

  return v39;
}

id ManagedRecurringPreauthorizedPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedRecurringPreauthorizedPayment.__allocating_init(_:account:context:)(int *a1, void *a2, void *a3)
{
  v176 = a2;
  v177 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v187 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v186 = &v157 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v185 = &v157 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v157 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v157 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v157 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v157 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v180 = &v157 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v161 = &v157 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v157 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v179 = &v157 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v157 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v157 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v157 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v157 - v41;
  v43 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v46 + 16);
  v174 = v45;
  v47();
  v48 = type metadata accessor for RecurringPayment(0);
  v49 = (a1 + v48[5]);
  v50 = v49[1];
  v172 = *v49;
  v190 = v48;
  v51 = *(a1 + v48[9]);
  v171 = v50;

  if (v51 == 6)
  {
    v183 = 0;
  }

  else
  {
    v183 = sub_1B7801008();
  }

  v52 = *(a1 + v190[10]);
  v181 = v18;
  v160 = v29;
  if (v52 == 2)
  {
    v173 = 0;
  }

  else
  {
    v173 = sub_1B7801008();
  }

  v53 = (a1 + v190[7]);
  v54 = v53[1];
  v170 = *v53;
  v55 = v190[12];
  v168 = *(a1 + v190[11]);
  sub_1B7205588(a1 + v55, v42, &qword_1EB9923F8);
  v56 = type metadata accessor for RecurringPayment.Payment(0);
  v57 = (*(v56 - 8) + 48);
  v188 = *v57;
  v58 = v188(v42, 1, v56);
  v169 = v54;
  v178 = v15;
  v189 = v57;
  if (v58 == 1)
  {

    sub_1B7205418(v42, &qword_1EB9923F8);
    v182 = 0;
  }

  else
  {
    v167 = v34;
    v59 = &v42[*(v56 + 20)];
    v61 = *v59;
    v60 = *(v59 + 1);
    v182 = *(v59 + 2);
    v62 = *(v59 + 4);

    sub_1B732C060(v42, type metadata accessor for RecurringPayment.Payment);
    if (v62)
    {

      v159 = v60 >> 16;
      v162 = HIDWORD(v60);
      v166 = HIWORD(v60);
      v63 = v182;
      v163 = (v182 >> 16);
      v64 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v191 = v61;
      LOWORD(v192) = v60;
      HIWORD(v192) = v159;
      v193 = v162;
      v194 = v166;
      v195 = v63;
      v196 = v163;
      v182 = [v64 initWithDecimal_];
    }

    else
    {
      v182 = 0;
    }

    v15 = v178;
    v34 = v167;
  }

  sub_1B7205588(a1 + v55, v40, &qword_1EB9923F8);
  v65 = v188;
  if (v188(v40, 1, v56) == 1)
  {
    sub_1B7205418(v40, &qword_1EB9923F8);
    v166 = 0;
    v167 = 0;
  }

  else
  {
    v66 = &v40[*(v56 + 20)];
    v67 = *(v66 + 3);
    v68 = *(v66 + 4);

    sub_1B732C060(v40, type metadata accessor for RecurringPayment.Payment);
    v167 = v68;
    if (v68)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0;
    }

    v166 = v69;
  }

  sub_1B7205588(a1 + v55, v37, &qword_1EB9923F8);
  if (v65(v37, 1, v56) == 1)
  {
    sub_1B7205418(v37, &qword_1EB9923F8);
    v70 = sub_1B77FF988();
    (*(*(v70 - 8) + 56))(v184, 1, 1, v70);
  }

  else
  {
    v71 = sub_1B77FF988();
    v72 = *(v71 - 8);
    v73 = v184;
    (*(v72 + 16))(v184, v37, v71);
    sub_1B732C060(v37, type metadata accessor for RecurringPayment.Payment);
    (*(v72 + 56))(v73, 0, 1, v71);
  }

  v74 = v160;
  v75 = v179;
  v76 = v190[13];
  sub_1B7205588(a1 + v76, v34, &qword_1EB9923F8);
  if (v65(v34, 1, v56) == 1)
  {
    sub_1B7205418(v34, &qword_1EB9923F8);
    v163 = 0;
  }

  else
  {
    v77 = &v34[*(v56 + 20)];
    v79 = *v77;
    v78 = *(v77 + 1);
    v80 = *(v77 + 2);
    v81 = *(v77 + 4);

    sub_1B732C060(v34, type metadata accessor for RecurringPayment.Payment);
    if (v81)
    {

      v158 = v78 >> 16;
      v159 = HIDWORD(v78);
      v163 = HIWORD(v78);
      v162 = v80 >> 16;
      v82 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v191 = v79;
      LOWORD(v192) = v78;
      HIWORD(v192) = v158;
      v15 = v178;
      v193 = v159;
      v194 = v163;
      v195 = v80;
      v196 = v162;
      v163 = [v82 initWithDecimal_];
    }

    else
    {
      v163 = 0;
    }

    v65 = v188;
    v75 = v179;
  }

  sub_1B7205588(a1 + v76, v75, &qword_1EB9923F8);
  if (v65(v75, 1, v56) == 1)
  {
    sub_1B7205418(v75, &qword_1EB9923F8);
    v162 = 0;
    v179 = 0;
  }

  else
  {
    v83 = v75 + *(v56 + 20);
    v84 = v15;
    v86 = *(v83 + 24);
    v85 = *(v83 + 32);

    sub_1B732C060(v75, type metadata accessor for RecurringPayment.Payment);
    v179 = v85;
    if (v85)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    v15 = v84;
    v162 = v87;
  }

  sub_1B7205588(a1 + v76, v74, &qword_1EB9923F8);
  if (v65(v74, 1, v56) == 1)
  {
    sub_1B7205418(v74, &qword_1EB9923F8);
    v88 = sub_1B77FF988();
    (*(*(v88 - 8) + 56))(v185, 1, 1, v88);
  }

  else
  {
    v89 = sub_1B77FF988();
    v90 = *(v89 - 8);
    v91 = v185;
    (*(v90 + 16))(v185, v74, v89);
    sub_1B732C060(v74, type metadata accessor for RecurringPayment.Payment);
    (*(v90 + 56))(v91, 0, 1, v89);
  }

  v92 = v180;
  v93 = v161;
  v94 = v190[14];
  sub_1B7205588(a1 + v94, v161, &qword_1EB9923F8);
  if (v65(v93, 1, v56) == 1)
  {
    sub_1B7205418(v93, &qword_1EB9923F8);
    v161 = 0;
  }

  else
  {
    v95 = &v93[*(v56 + 20)];
    v97 = *v95;
    v96 = *(v95 + 1);
    v98 = *(v95 + 2);
    v99 = *(v95 + 4);

    sub_1B732C060(v93, type metadata accessor for RecurringPayment.Payment);
    if (v99)
    {

      v160 = HIDWORD(v96);
      v161 = (v98 >> 16);
      v100 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v191 = v97;
      v192 = v96;
      v15 = v178;
      v193 = v160;
      v194 = HIWORD(v96);
      v195 = v98;
      v196 = v161;
      v161 = [v100 initWithDecimal_];
    }

    else
    {
      v161 = 0;
    }

    v65 = v188;
    v92 = v180;
  }

  sub_1B7205588(a1 + v94, v92, &qword_1EB9923F8);
  if (v65(v92, 1, v56) == 1)
  {
    sub_1B7205418(v92, &qword_1EB9923F8);
    v160 = 0;
    v180 = 0;
  }

  else
  {
    v101 = v92 + *(v56 + 20);
    v102 = *(v101 + 24);
    v103 = *(v101 + 32);

    sub_1B732C060(v92, type metadata accessor for RecurringPayment.Payment);
    v180 = v103;
    if (v103)
    {
      v104 = v102;
    }

    else
    {
      v104 = 0;
    }

    v160 = v104;
  }

  v105 = v164;
  sub_1B7205588(a1 + v94, v164, &qword_1EB9923F8);
  if (v65(v105, 1, v56) == 1)
  {
    sub_1B7205418(v105, &qword_1EB9923F8);
    v106 = sub_1B77FF988();
    (*(*(v106 - 8) + 56))(v186, 1, 1, v106);
  }

  else
  {
    v107 = sub_1B77FF988();
    v108 = *(v107 - 8);
    v109 = v186;
    (*(v108 + 16))(v186, v105, v107);
    sub_1B732C060(v105, type metadata accessor for RecurringPayment.Payment);
    (*(v108 + 56))(v109, 0, 1, v107);
  }

  v110 = v181;
  v111 = v165;
  v112 = v190[15];
  sub_1B7205588(a1 + v112, v165, &qword_1EB9923F8);
  if (v65(v111, 1, v56) == 1)
  {
    sub_1B7205418(v111, &qword_1EB9923F8);
    v165 = 0;
  }

  else
  {
    v113 = &v111[*(v56 + 20)];
    v115 = *v113;
    v114 = *(v113 + 1);
    v116 = *(v113 + 2);
    v117 = *(v113 + 4);

    sub_1B732C060(v111, type metadata accessor for RecurringPayment.Payment);
    if (v117)
    {

      v164 = HIDWORD(v114);
      v165 = (v116 >> 16);
      v118 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v191 = v115;
      v192 = v114;
      v15 = v178;
      v193 = v164;
      v194 = HIWORD(v114);
      v195 = v116;
      v196 = v165;
      v165 = [v118 initWithDecimal_];
    }

    else
    {
      v165 = 0;
    }

    v110 = v181;
    v65 = v188;
  }

  sub_1B7205588(a1 + v112, v110, &qword_1EB9923F8);
  if (v65(v110, 1, v56) == 1)
  {
    sub_1B7205418(v110, &qword_1EB9923F8);
    v188 = 0;
    v189 = 0;
  }

  else
  {
    v119 = &v110[*(v56 + 20)];
    v120 = *(v119 + 3);
    v121 = *(v119 + 4);

    sub_1B732C060(v110, type metadata accessor for RecurringPayment.Payment);
    if (v121)
    {
      v122 = v120;
    }

    else
    {
      v122 = 0;
    }

    v188 = v121;
    v189 = v122;
  }

  sub_1B7205588(a1 + v112, v15, &qword_1EB9923F8);
  if (v65(v15, 1, v56) == 1)
  {
    sub_1B7205418(v15, &qword_1EB9923F8);
    v123 = sub_1B77FF988();
    (*(*(v123 - 8) + 56))(v187, 1, 1, v123);
  }

  else
  {
    v124 = sub_1B77FF988();
    v125 = *(v124 - 8);
    v126 = v187;
    (*(v125 + 16))(v187, v15, v124);
    sub_1B732C060(v15, type metadata accessor for RecurringPayment.Payment);
    (*(v125 + 56))(v126, 0, 1, v124);
  }

  v127 = (a1 + v190[8]);
  if (v127[1])
  {
    v181 = 0;
    if ((v127[3] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v181 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    if ((v127[3] & 1) == 0)
    {
LABEL_69:
      v178 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      if ((v127[5] & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_74:
      v128 = 0;
      if ((v127[7] & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_75:
      v129 = 0;
      goto LABEL_76;
    }
  }

  v178 = 0;
  if (v127[5])
  {
    goto LABEL_74;
  }

LABEL_70:
  v128 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  if (v127[7])
  {
    goto LABEL_75;
  }

LABEL_71:
  v129 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
LABEL_76:
  v164 = v129;
  v130 = (a1 + v190[16]);
  v131 = *v130;
  v132 = v130[1];
  v190 = a1;
  v133 = v130[2];
  v134 = v130[3];
  v136 = v130[6];
  v135 = v130[7];
  v138 = v130[4];
  v137 = v130[5];
  v175 = objc_allocWithZone(v175);

  v156 = v138;
  v154 = v136;
  v155 = v135;
  v152 = v133;
  v153 = v134;
  v150 = v131;
  v151 = v132;
  v139 = v177;
  v140 = v176;
  v149 = v129;
  v141 = v178;
  v142 = v181;
  v143 = v165;
  v144 = v161;
  v145 = v163;
  v146 = v173;
  v147 = sub_1B7328F30(v174, v172, v171, v183, v173, v170, v169, v168, v182, v166, v167, v184, v163, v162, v179, v185, v161, v160, v180, v186, v165, v189, v188, v187, v181, v178, v128, v149, v150, v151, v152, v153, v154, v155, v156, v137, v176, v177);

  sub_1B732C060(v190, type metadata accessor for RecurringPayment);
  return v147;
}

void RecurringPayment.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v172 = *(v4 - 8);
  v173 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v170 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v171 = &v163 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v168 = &v163 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v169 = &v163 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v166 = &v163 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v167 = &v163 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v164 = &v163 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v163 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v177 = &v163 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v175 = &v163 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v163 - v28;
  v29 = a1;
  v30 = [v29 id];
  sub_1B77FF9E8();

  v31 = [v29 paymentIdentifier];
  v32 = sub_1B7800868();
  v34 = v33;

  v35 = type metadata accessor for RecurringPayment(0);
  v36 = (a2 + *(v35 + 20));
  *v36 = v32;
  v36[1] = v34;
  v37 = [v29 accountObject];
  v38 = [v37 publicAccountObject];
  v39 = [v38 id];

  sub_1B77FF9E8();
  v40 = [v29 paymentDescription];
  v41 = sub_1B7800868();
  v43 = v42;

  v178 = v35;
  v44 = (a2 + *(v35 + 28));
  *v44 = v41;
  v44[1] = v43;
  v45 = [v29 dailyInterval];
  v46 = v45;
  if (v45)
  {
    v47 = [v45 shortValue];
  }

  else
  {
    v47 = 0;
  }

  v48 = [v29 weeklyInterval];
  v49 = v48;
  v179 = a2;
  if (v48)
  {
    v50 = [v48 shortValue];
  }

  else
  {
    v50 = 0;
  }

  v51 = [v29 monthlyInterval];
  v52 = v51;
  if (v51)
  {
    v53 = [v51 shortValue];
  }

  else
  {
    v53 = 0;
  }

  v54 = [v29 yearlyInterval];
  v55 = v54;
  if (v54)
  {
    v56 = [v54 shortValue];
  }

  else
  {
    v56 = 0;
  }

  v57 = v52 == 0;
  v58 = v49 == 0;
  LOBYTE(v180) = v46 == 0;
  v185 = v49 == 0;
  v184 = v52 == 0;
  v183 = v55 == 0;
  v60 = v178;
  v59 = v179;
  v61 = v179 + v178[8];
  *v61 = v47;
  *(v61 + 2) = v46 == 0;
  *(v61 + 4) = v50;
  *(v61 + 6) = v58;
  *(v61 + 8) = v53;
  *(v61 + 10) = v57;
  *(v61 + 12) = v56;
  *(v61 + 14) = v55 == 0;
  v62 = [v29 schedulingTypeValue];
  v176 = v23;
  if (v62)
  {
    v63 = v62;
    v64 = [v62 integerValue];

    if (v64 == 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = 2;
    }

    if (!v64)
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 2;
  }

  v67 = v172;
  v66 = v173;
  *(v59 + v60[10]) = v65;
  v68 = [v29 statusValue];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 integerValue];

    RecurringPayment.Status.init(rawValue:)(v70, &v180);
    v71 = v180;
  }

  else
  {
    v71 = 6;
  }

  v73 = v174;
  v72 = v175;
  *(v59 + v60[9]) = v71;
  v74 = [v29 firstPaymentDate];
  if (v74)
  {
    v75 = v164;
    v76 = v74;
    sub_1B77FF928();

    v77 = v165;
    (*(v67 + 32))(v165, v75, v66);
    v78 = [v29 firstAmountValue];
    if (v78)
    {
      v79 = v78;
      v80 = [v29 firstPaymentCurrency];
      if (v80)
      {
        v81 = v80;
        v82 = sub_1B7800868();
        v84 = v83;

        (*(v67 + 16))(v174, v77, v66);
        [v79 decimalValue];
        v85 = v82;
        v86 = v84;
        v73 = v174;
        v72 = v175;
        CurrencyAmount.init(_:currencyCode:)(v180, *(&v180 + 1), v181, v85, v86, &v180);

        (*(v67 + 8))(v77, v66);
        v87 = v182;
        v88 = type metadata accessor for RecurringPayment.Payment(0);
        v89 = v73 + *(v88 + 20);
        v90 = v181;
        *v89 = v180;
        *(v89 + 16) = v90;
        *(v89 + 32) = v87;
        (*(*(v88 - 8) + 56))(v73, 0, 1, v88);
        goto LABEL_31;
      }

      (*(v67 + 8))(v77, v66);
    }

    else
    {
      (*(v67 + 8))(v77, v66);
    }
  }

  v91 = type metadata accessor for RecurringPayment.Payment(0);
  (*(*(v91 - 8) + 56))(v73, 1, 1, v91);
LABEL_31:
  sub_1B732BE4C(v73, v59 + v60[12]);
  v92 = [v29 lastPaymentDate];
  if (v92)
  {
    v93 = v166;
    v94 = v92;
    sub_1B77FF928();

    v95 = v167;
    (*(v67 + 32))(v167, v93, v66);
    v96 = [v29 lastAmountValue];
    if (v96)
    {
      v97 = v96;
      v98 = [v29 lastPaymentCurrency];
      if (v98)
      {
        v99 = v98;
        v100 = sub_1B7800868();
        v102 = v101;

        (*(v67 + 16))(v175, v95, v66);
        [v97 decimalValue];
        v103 = v100;
        v72 = v175;
        CurrencyAmount.init(_:currencyCode:)(v180, *(&v180 + 1), v181, v103, v102, &v180);

        (*(v67 + 8))(v95, v66);
        v104 = v182;
        v105 = type metadata accessor for RecurringPayment.Payment(0);
        v106 = v72 + *(v105 + 20);
        v107 = v181;
        *v106 = v180;
        *(v106 + 16) = v107;
        *(v106 + 32) = v104;
        (*(*(v105 - 8) + 56))(v72, 0, 1, v105);
        goto LABEL_38;
      }

      (*(v67 + 8))(v95, v66);
    }

    else
    {
      (*(v67 + 8))(v95, v66);
    }
  }

  v108 = type metadata accessor for RecurringPayment.Payment(0);
  (*(*(v108 - 8) + 56))(v72, 1, 1, v108);
LABEL_38:
  sub_1B732BE4C(v72, v59 + v60[13]);
  v109 = [v29 upcomingPaymentDate];
  if (v109)
  {
    v110 = v168;
    v111 = v109;
    sub_1B77FF928();

    v112 = v169;
    (*(v67 + 32))(v169, v110, v66);
    v113 = [v29 upcomingAmountValue];
    if (v113)
    {
      v114 = v113;
      v115 = [v29 upcomingPaymentCurrency];
      if (v115)
      {
        v116 = v177;
        v117 = v115;
        v175 = sub_1B7800868();
        v119 = v118;

        (*(v67 + 16))(v116, v112, v66);
        [v114 decimalValue];
        CurrencyAmount.init(_:currencyCode:)(v180, *(&v180 + 1), v181, v175, v119, &v180);

        (*(v67 + 8))(v112, v66);
        v120 = v182;
        v121 = type metadata accessor for RecurringPayment.Payment(0);
        v122 = v116 + *(v121 + 20);
        v123 = v181;
        *v122 = v180;
        *(v122 + 16) = v123;
        *(v122 + 32) = v120;
        (*(*(v121 - 8) + 56))(v116, 0, 1, v121);
        goto LABEL_45;
      }

      (*(v67 + 8))(v112, v66);
    }

    else
    {
      (*(v67 + 8))(v112, v66);
    }
  }

  v124 = type metadata accessor for RecurringPayment.Payment(0);
  (*(*(v124 - 8) + 56))(v177, 1, 1, v124);
LABEL_45:
  sub_1B732BE4C(v177, v59 + v60[15]);
  v125 = [v29 mostRecentPaymentDate];
  if (v125)
  {
    v126 = v170;
    v127 = v125;
    sub_1B77FF928();

    v128 = v171;
    (*(v67 + 32))(v171, v126, v66);
    v129 = [v29 mostRecentAmountValue];
    if (v129)
    {
      v130 = v129;
      v131 = [v29 mostRecentPaymentCurrency];
      if (v131)
      {
        v132 = v176;
        v133 = v131;
        v177 = sub_1B7800868();
        v135 = v134;

        (*(v67 + 16))(v132, v128, v66);
        [v130 decimalValue];
        CurrencyAmount.init(_:currencyCode:)(v180, *(&v180 + 1), v181, v177, v135, &v180);

        (*(v67 + 8))(v128, v66);
        v136 = v182;
        v137 = type metadata accessor for RecurringPayment.Payment(0);
        v138 = v132 + *(v137 + 20);
        v139 = v181;
        *v138 = v180;
        *(v138 + 16) = v139;
        *(v138 + 32) = v136;
        (*(*(v137 - 8) + 56))(v132, 0, 1, v137);
        goto LABEL_52;
      }

      (*(v67 + 8))(v128, v66);
    }

    else
    {
      (*(v67 + 8))(v128, v66);
    }
  }

  v140 = type metadata accessor for RecurringPayment.Payment(0);
  (*(*(v140 - 8) + 56))(v176, 1, 1, v140);
LABEL_52:
  sub_1B732BE4C(v176, v59 + v60[14]);
  v141 = [v29 mandateName];
  if (v141)
  {
    v142 = v141;
    v177 = sub_1B7800868();
    v144 = v143;
  }

  else
  {
    v177 = 0;
    v144 = 0;
  }

  v145 = [v29 mandateReason];
  if (v145)
  {
    v146 = v145;
    v147 = sub_1B7800868();
    v149 = v148;
  }

  else
  {
    v147 = 0;
    v149 = 0;
  }

  v150 = [v29 purposeCode];
  if (v150)
  {
    v151 = v150;
    v152 = sub_1B7800868();
    v154 = v153;
  }

  else
  {
    v152 = 0;
    v154 = 0;
  }

  v155 = [v29 classificationCode];

  if (v155)
  {
    v156 = sub_1B7800868();
    v158 = v157;
  }

  else
  {
    v156 = 0;
    v158 = 0;
  }

  v160 = v178;
  v159 = v179;
  v161 = (v179 + v178[16]);
  *v161 = v177;
  v161[1] = v144;
  v161[2] = v147;
  v161[3] = v149;
  v161[4] = v152;
  v161[5] = v154;
  v161[6] = v156;
  v161[7] = v158;
  v162 = [v29 isVariable];

  *(v159 + v160[11]) = v162;
}

id sub_1B7328F30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v39 = v38;
  LODWORD(v99) = a8;
  v95 = a6;
  v96 = a7;
  v94 = a2;
  v97 = a32;
  swift_getObjectType();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v101 = &v94 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v100 = &v94 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v103 = &v94 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v104 = &v94 - v50;
  v51 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v94 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v54;
  v106 = v55;
  v56 = *(v55 + 16);
  v102 = a1;
  v56(v53, a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = a5;
  v98 = a37;
  v59 = a38;
  v60 = a4;
  v61 = [ObjCClassFromMetadata entity];
  v62 = type metadata accessor for ManagedPreauthorizedPayment();
  v107.receiver = v39;
  v107.super_class = v62;
  v63 = objc_msgSendSuper2(&v107, sel_initWithEntity_insertIntoManagedObjectContext_, v61, v59);

  v64 = v63;
  v65 = sub_1B77FF9B8();
  [v64 setId_];

  v66 = sub_1B7800838();

  [v64 setPaymentIdentifier_];

  v67 = v58;
  [v64 setStatusValue_];
  [v64 setSchedulingTypeValue_];
  v68 = sub_1B7800838();

  [v64 setPaymentDescription_];

  if (a30)
  {
    v69 = sub_1B7800838();
  }

  else
  {
    v69 = 0;
  }

  [v64 setMandateName_];

  if (v97)
  {
    v70 = sub_1B7800838();
  }

  else
  {
    v70 = 0;
  }

  [v64 setMandateReason_];

  if (a34)
  {
    v71 = sub_1B7800838();
  }

  else
  {
    v71 = 0;
  }

  [v64 setClassificationCode_];

  if (a36)
  {
    v72 = sub_1B7800838();
  }

  else
  {
    v72 = 0;
  }

  [v64 setPurposeCode_];

  v73 = v98;
  [v64 setAccountObject_];

  v74 = *(v106 + 8);
  v106 += 8;
  v98 = v74;
  v74(v53, v105);
  v75 = v64;
  [v75 setIsVariable_];
  [v75 setFirstAmountValue_];
  if (a11)
  {
    v76 = sub_1B7800838();
  }

  else
  {
    v76 = 0;
  }

  [v75 setFirstPaymentCurrency_];

  v99 = a12;
  v77 = v104;
  sub_1B7205588(a12, v104, &qword_1EB98EBD0);
  v78 = sub_1B77FF988();
  v79 = *(v78 - 8);
  v80 = *(v79 + 48);
  v81 = 0;
  if (v80(v77, 1, v78) != 1)
  {
    v81 = sub_1B77FF8B8();
    (*(v79 + 8))(v77, v78);
  }

  [v75 setFirstPaymentDate_];

  [v75 setLastAmountValue_];
  if (a15)
  {
    v82 = sub_1B7800838();
  }

  else
  {
    v82 = 0;
  }

  v104 = a20;
  [v75 setLastPaymentCurrency_];

  v83 = v103;
  sub_1B7205588(a16, v103, &qword_1EB98EBD0);
  if (v80(v83, 1, v78) == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_1B77FF8B8();
    (*(v79 + 8))(v83, v78);
  }

  [v75 setLastPaymentDate_];

  [v75 setMostRecentAmountValue_];
  if (a19)
  {
    v85 = sub_1B7800838();
  }

  else
  {
    v85 = 0;
  }

  v103 = a24;
  [v75 setMostRecentPaymentCurrency_];

  v86 = v100;
  sub_1B7205588(v104, v100, &qword_1EB98EBD0);
  v87 = v80(v86, 1, v78);
  v97 = a16;
  if (v87 == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_1B77FF8B8();
    (*(v79 + 8))(v86, v78);
  }

  v100 = a28;
  v96 = a27;
  [v75 setMostRecentPaymentDate_];

  [v75 setUpcomingAmountValue_];
  if (a23)
  {
    v89 = sub_1B7800838();
  }

  else
  {
    v89 = 0;
  }

  v90 = v101;
  v91 = v99;
  [v75 setUpcomingPaymentCurrency_];

  sub_1B7205588(v103, v90, &qword_1EB98EBD0);
  if (v80(v90, 1, v78) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_1B77FF8B8();
    (*(v79 + 8))(v90, v78);
  }

  [v75 setUpcomingPaymentDate_];

  [v75 setDailyInterval_];
  [v75 setWeeklyInterval_];
  [v75 setMonthlyInterval_];
  [v75 setYearlyInterval_];

  sub_1B7205418(v103, &qword_1EB98EBD0);
  sub_1B7205418(v104, &qword_1EB98EBD0);
  sub_1B7205418(v97, &qword_1EB98EBD0);
  sub_1B7205418(v91, &qword_1EB98EBD0);
  (v98)(v102, v105);
  return v75;
}

id _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC_7account7contextAcA18RawBankConnectDataO0dF0V_AA0C15InternalAccountCSo22NSManagedObjectContextCtcfC_0(uint64_t a1, void *a2, void *a3)
{
  v167 = a3;
  v166 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  *&v165 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v170 = &v146 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v169 = &v146 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v168 = &v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992400);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v146 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v153 = &v146 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v151 = &v146 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  *&v150 = &v146 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v146 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v147 = &v146 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  *(&v152 + 1) = &v146 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v146 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v146 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v146 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v146 - v40;
  v42 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v163 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA08();
  v44 = *(a1 + 8);
  v162 = *a1;
  v171 = a1;
  v45 = *(a1 + 33);
  v161 = v44;
  v160 = v15;
  v149 = v26;

  if (v45 == 6)
  {
    v164 = 0;
  }

  else
  {
    v164 = sub_1B7801008();
  }

  v46 = v171;
  v47 = *(v171 + 24);
  v159 = *(v171 + 16);
  v157 = *(v171 + 32);
  *&v156 = type metadata accessor for RawBankConnectData.RecurringPayment(0);
  v48 = *(v156 + 32);
  sub_1B7205588(v46 + v48, v41, &qword_1EB992400);
  v49 = type metadata accessor for RawBankConnectData.Payment(0);
  v50 = *(*(v49 - 8) + 48);
  v51 = v50(v41, 1, v49);
  v158 = v47;
  if (v51 == 1)
  {

    sub_1B7205418(v41, &qword_1EB992400);
  }

  else
  {
    v52 = &v41[*(v49 + 20)];
    v53 = *(v52 + 3);
    v175 = *(v52 + 2);
    v176 = v53;
    v177 = *(v52 + 4);
    v54 = *(v52 + 1);
    *v174 = *v52;
    *&v174[16] = v54;

    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v41, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v55 = *v174;
      v154 = *&v174[4];
      sub_1B7205418(v174, &qword_1EB990780);
      v56 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v172 = v55;
      v173 = v154;
      *&v154 = [v56 initWithDecimal_];
      goto LABEL_9;
    }
  }

  *&v154 = 0;
LABEL_9:
  v57 = *(&v152 + 1);
  sub_1B7205588(v171 + v48, v39, &qword_1EB992400);
  if (v50(v39, 1, v49) == 1)
  {
    sub_1B7205418(v39, &qword_1EB992400);
  }

  else
  {
    v58 = &v39[*(v49 + 20)];
    v59 = *(v58 + 3);
    v175 = *(v58 + 2);
    v176 = v59;
    v177 = *(v58 + 4);
    v60 = *(v58 + 1);
    *v174 = *v58;
    *&v174[16] = v60;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v39, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v152 = v176;

      sub_1B7205418(v174, &qword_1EB990780);
      goto LABEL_14;
    }
  }

  v152 = 0uLL;
LABEL_14:
  sub_1B7205588(v171 + v48, v36, &qword_1EB992400);
  if (v50(v36, 1, v49) == 1)
  {
    sub_1B7205418(v36, &qword_1EB992400);
    v61 = sub_1B77FF988();
    (*(*(v61 - 8) + 56))(v168, 1, 1, v61);
  }

  else
  {
    v62 = sub_1B77FF988();
    v63 = *(v62 - 8);
    v64 = v168;
    (*(v63 + 16))(v168, v36, v62);
    sub_1B732C060(v36, type metadata accessor for RawBankConnectData.Payment);
    (*(v63 + 56))(v64, 0, 1, v62);
  }

  v65 = v156;
  v66 = *(v156 + 36);
  sub_1B7205588(v171 + v66, v33, &qword_1EB992400);
  v67 = v50(v33, 1, v49);
  v68 = v151;
  if (v67 == 1)
  {
    sub_1B7205418(v33, &qword_1EB992400);
  }

  else
  {
    v69 = &v33[*(v49 + 20)];
    v70 = *(v69 + 3);
    v175 = *(v69 + 2);
    v176 = v70;
    v177 = *(v69 + 4);
    v71 = *(v69 + 1);
    *v174 = *v69;
    *&v174[16] = v71;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v33, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v72 = *v174;
      v156 = *&v174[4];
      sub_1B7205418(v174, &qword_1EB990780);
      v73 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v172 = v72;
      v173 = v156;
      *&v156 = [v73 initWithDecimal_];
      goto LABEL_22;
    }
  }

  *&v156 = 0;
LABEL_22:
  v74 = v155;
  sub_1B7205588(v171 + v66, v57, &qword_1EB992400);
  if (v50(v57, 1, v49) == 1)
  {
    sub_1B7205418(v57, &qword_1EB992400);
  }

  else
  {
    v75 = (v57 + *(v49 + 20));
    v76 = v75[3];
    v175 = v75[2];
    v176 = v76;
    v177 = v75[4];
    v77 = v75[1];
    *v174 = *v75;
    *&v174[16] = v77;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v57, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v155 = *(&v176 + 1);
      v148 = v176;

      sub_1B7205418(v174, &qword_1EB990780);
      goto LABEL_27;
    }
  }

  v148 = 0;
  v155 = 0;
LABEL_27:
  v78 = v171 + v66;
  v79 = v147;
  sub_1B7205588(v78, v147, &qword_1EB992400);
  if (v50(v79, 1, v49) == 1)
  {
    sub_1B7205418(v79, &qword_1EB992400);
    v80 = sub_1B77FF988();
    (*(*(v80 - 8) + 56))(v169, 1, 1, v80);
  }

  else
  {
    v81 = v50;
    v82 = v68;
    v83 = v74;
    v84 = v65;
    v85 = v79;
    v86 = sub_1B77FF988();
    v87 = *(v86 - 8);
    v88 = v169;
    (*(v87 + 16))(v169, v85, v86);
    v89 = v85;
    v65 = v84;
    v74 = v83;
    v68 = v82;
    v50 = v81;
    sub_1B732C060(v89, type metadata accessor for RawBankConnectData.Payment);
    (*(v87 + 56))(v88, 0, 1, v86);
  }

  v90 = v150;
  v91 = v149;
  v92 = v65[10];
  sub_1B7205588(v171 + v92, v149, &qword_1EB992400);
  if (v50(v91, 1, v49) == 1)
  {
    sub_1B7205418(v91, &qword_1EB992400);
  }

  else
  {
    v93 = (v91 + *(v49 + 20));
    v94 = v93[3];
    v175 = v93[2];
    v176 = v94;
    v177 = v93[4];
    v95 = v93[1];
    *v174 = *v93;
    *&v174[16] = v95;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v91, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v96 = *v174;
      v150 = *&v174[4];
      sub_1B7205418(v174, &qword_1EB990780);
      v97 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v172 = v96;
      v173 = v150;
      *&v150 = [v97 initWithDecimal_];
      goto LABEL_35;
    }
  }

  *&v150 = 0;
LABEL_35:
  sub_1B7205588(v171 + v92, v90, &qword_1EB992400);
  if (v50(v90, 1, v49) == 1)
  {
    sub_1B7205418(v90, &qword_1EB992400);
  }

  else
  {
    v98 = (v90 + *(v49 + 20));
    v99 = v98[3];
    v175 = v98[2];
    v176 = v99;
    v177 = v98[4];
    v100 = v98[1];
    *v174 = *v98;
    *&v174[16] = v100;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v90, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v149 = *(&v176 + 1);
      v147 = v176;

      sub_1B7205418(v174, &qword_1EB990780);
      goto LABEL_40;
    }
  }

  v147 = 0;
  v149 = 0;
LABEL_40:
  sub_1B7205588(v171 + v92, v68, &qword_1EB992400);
  if (v50(v68, 1, v49) == 1)
  {
    sub_1B7205418(v68, &qword_1EB992400);
    v101 = sub_1B77FF988();
    (*(*(v101 - 8) + 56))(v170, 1, 1, v101);
  }

  else
  {
    v102 = sub_1B77FF988();
    v103 = *(v102 - 8);
    v104 = v170;
    (*(v103 + 16))(v170, v68, v102);
    sub_1B732C060(v68, type metadata accessor for RawBankConnectData.Payment);
    (*(v103 + 56))(v104, 0, 1, v102);
  }

  v105 = v165;
  v106 = v160;
  v107 = v153;
  v108 = v65[11];
  sub_1B7205588(v171 + v108, v153, &qword_1EB992400);
  if (v50(v107, 1, v49) == 1)
  {
    sub_1B7205418(v107, &qword_1EB992400);
  }

  else
  {
    v109 = (v107 + *(v49 + 20));
    v110 = v109[3];
    v175 = v109[2];
    v176 = v110;
    v177 = v109[4];
    v111 = v109[1];
    *v174 = *v109;
    *&v174[16] = v111;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v107, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v112 = *v174;
      v165 = *&v174[4];
      sub_1B7205418(v174, &qword_1EB990780);
      v113 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v172 = v112;
      v173 = v165;
      *&v165 = [v113 initWithDecimal_];
      goto LABEL_48;
    }
  }

  *&v165 = 0;
LABEL_48:
  sub_1B7205588(v171 + v108, v74, &qword_1EB992400);
  if (v50(v74, 1, v49) == 1)
  {
    sub_1B7205418(v74, &qword_1EB992400);
  }

  else
  {
    v114 = (v74 + *(v49 + 20));
    v115 = v114[3];
    v175 = v114[2];
    v176 = v115;
    v177 = v114[4];
    v116 = v114[1];
    *v174 = *v114;
    *&v174[16] = v116;
    sub_1B7205588(v174, &v172, &qword_1EB990780);
    sub_1B732C060(v74, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v176 + 1))
    {
      v153 = *(&v176 + 1);
      v151 = v176;

      sub_1B7205418(v174, &qword_1EB990780);
      goto LABEL_53;
    }
  }

  v151 = 0;
  v153 = 0;
LABEL_53:
  sub_1B7205588(v171 + v108, v106, &qword_1EB992400);
  if (v50(v106, 1, v49) == 1)
  {
    sub_1B7205418(v106, &qword_1EB992400);
    v117 = sub_1B77FF988();
    (*(*(v117 - 8) + 56))(v105, 1, 1, v117);
  }

  else
  {
    v118 = sub_1B77FF988();
    v119 = *(v118 - 8);
    (*(v119 + 16))(v105, v106, v118);
    sub_1B732C060(v106, type metadata accessor for RawBankConnectData.Payment);
    (*(v119 + 56))(v105, 0, 1, v118);
  }

  v120 = v105;
  v121 = (v171 + v65[12]);
  v122 = *v121;
  v123 = v121[1];
  v124 = v121[2];
  v125 = v121[3];
  v126 = v121[6];
  v127 = v121[7];
  v128 = v121[4];
  v129 = v121[5];
  objc_allocWithZone(type metadata accessor for ManagedRecurringPreauthorizedPayment());

  v145 = v128;
  v143 = v126;
  v144 = v127;
  v141 = v124;
  v142 = v125;
  v139 = v122;
  v140 = v123;
  v130 = v167;
  v131 = v166;
  v132 = v165;
  v133 = v150;
  v134 = v156;
  v135 = v154;
  v136 = v164;
  v137 = sub_1B7328F30(v163, v162, v161, v164, 0, v159, v158, v157, v154, v152, *(&v152 + 1), v168, v156, v148, v155, v169, v150, v147, v149, v170, v165, v151, v153, v120, 0, 0, 0, 0, v139, v140, v141, v142, v143, v144, v145, v129, v166, v167);

  sub_1B732C060(v171, type metadata accessor for RawBankConnectData.RecurringPayment);
  return v137;
}

void _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC6update_07withRawF0yAC_AA0I15BankConnectDataO0dF0VtFZ_0(void *a1, uint64_t a2)
{
  *&v130 = sub_1B77FF988();
  v131 = *(v130 - 8);
  v4 = MEMORY[0x1EEE9AC00](v130);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v118 = &v116 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v117 = &v116 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v116 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992400);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v129 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = &v116 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v126 = &v116 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v116 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v116 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v123 = &v116 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v122 = &v116 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v121 = &v116 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v120 = &v116 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v116 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v116 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v116 - v37;
  v39 = 0;
  if (*(a2 + 33) != 6)
  {
    v39 = sub_1B7801008();
  }

  [a1 setStatusValue_];

  v40 = sub_1B7800838();
  [a1 setPaymentDescription_];

  [a1 setIsVariable_];
  v128 = type metadata accessor for RawBankConnectData.RecurringPayment(0);
  v41 = *(v128 + 32);
  sub_1B7205588(a2 + v41, v38, &qword_1EB992400);
  v42 = type metadata accessor for RawBankConnectData.Payment(0);
  v43 = *(*(v42 - 8) + 48);
  if (v43(v38, 1, v42) == 1)
  {
    sub_1B7205418(v38, &qword_1EB992400);
  }

  else
  {
    v44 = &v38[*(v42 + 20)];
    v45 = *(v44 + 3);
    v135 = *(v44 + 2);
    v136 = v45;
    v137 = *(v44 + 4);
    v46 = *(v44 + 1);
    *v134 = *v44;
    *&v134[16] = v46;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v38, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {
      v47 = *v134;
      v116 = *&v134[4];
      sub_1B7205418(v134, &qword_1EB990780);
      v48 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v132 = v47;
      v133 = v116;
      v49 = [v48 initWithDecimal_];
      goto LABEL_8;
    }
  }

  v49 = 0;
LABEL_8:
  [a1 setFirstAmountValue_];

  sub_1B7205588(a2 + v41, v36, &qword_1EB992400);
  if (v43(v36, 1, v42) == 1)
  {
    sub_1B7205418(v36, &qword_1EB992400);
  }

  else
  {
    v50 = &v36[*(v42 + 20)];
    v51 = *(v50 + 3);
    v135 = *(v50 + 2);
    v136 = v51;
    v137 = *(v50 + 4);
    v52 = *(v50 + 1);
    *v134 = *v50;
    *&v134[16] = v52;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v36, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {

      sub_1B7205418(v134, &qword_1EB990780);
      v53 = sub_1B7800838();

      goto LABEL_13;
    }
  }

  v53 = 0;
LABEL_13:
  [a1 setFirstPaymentCurrency_];

  sub_1B7205588(a2 + v41, v33, &qword_1EB992400);
  if (v43(v33, 1, v42) == 1)
  {
    sub_1B7205418(v33, &qword_1EB992400);
    v54 = 0;
    v55 = v130;
  }

  else
  {
    v56 = v131;
    v57 = v43;
    v58 = v130;
    (*(v131 + 16))(v11, v33, v130);
    sub_1B732C060(v33, type metadata accessor for RawBankConnectData.Payment);
    v54 = sub_1B77FF8B8();
    v55 = v58;
    v59 = v58;
    v43 = v57;
    (*(v56 + 8))(v11, v59);
  }

  v60 = v128;
  v61 = v120;
  [a1 setFirstPaymentDate_];

  v62 = v60[9];
  sub_1B7205588(a2 + v62, v61, &qword_1EB992400);
  if (v43(v61, 1, v42) == 1)
  {
    sub_1B7205418(v61, &qword_1EB992400);
  }

  else
  {
    v63 = (v61 + *(v42 + 20));
    v64 = v63[3];
    v135 = v63[2];
    v136 = v64;
    v137 = v63[4];
    v65 = v63[1];
    *v134 = *v63;
    *&v134[16] = v65;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v61, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {
      v66 = *v134;
      v130 = *&v134[4];
      sub_1B7205418(v134, &qword_1EB990780);
      v67 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v132 = v66;
      v133 = v130;
      v68 = [v67 initWithDecimal_];
      goto LABEL_21;
    }
  }

  v68 = 0;
LABEL_21:
  [a1 setLastAmountValue_];

  v69 = v121;
  sub_1B7205588(a2 + v62, v121, &qword_1EB992400);
  if (v43(v69, 1, v42) == 1)
  {
    sub_1B7205418(v69, &qword_1EB992400);
  }

  else
  {
    v70 = (v69 + *(v42 + 20));
    v71 = v70[3];
    v135 = v70[2];
    v136 = v71;
    v137 = v70[4];
    v72 = v70[1];
    *v134 = *v70;
    *&v134[16] = v72;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v69, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {

      sub_1B7205418(v134, &qword_1EB990780);
      v73 = sub_1B7800838();

      goto LABEL_26;
    }
  }

  v73 = 0;
LABEL_26:
  [a1 setLastPaymentCurrency_];

  v74 = v122;
  sub_1B7205588(a2 + v62, v122, &qword_1EB992400);
  if (v43(v74, 1, v42) == 1)
  {
    sub_1B7205418(v74, &qword_1EB992400);
    v75 = 0;
  }

  else
  {
    v76 = v131;
    v77 = v117;
    (*(v131 + 16))(v117, v74, v55);
    sub_1B732C060(v74, type metadata accessor for RawBankConnectData.Payment);
    v75 = sub_1B77FF8B8();
    (*(v76 + 8))(v77, v55);
  }

  [a1 setLastPaymentDate_];

  v78 = v60[10];
  v79 = v123;
  sub_1B7205588(a2 + v78, v123, &qword_1EB992400);
  if (v43(v79, 1, v42) == 1)
  {
    sub_1B7205418(v79, &qword_1EB992400);
  }

  else
  {
    v80 = (v79 + *(v42 + 20));
    v81 = v80[3];
    v135 = v80[2];
    v136 = v81;
    v137 = v80[4];
    v82 = v80[1];
    *v134 = *v80;
    *&v134[16] = v82;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v79, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {
      v83 = *v134;
      v130 = *&v134[4];
      sub_1B7205418(v134, &qword_1EB990780);
      v84 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v132 = v83;
      v133 = v130;
      v85 = [v84 initWithDecimal_];
      goto LABEL_34;
    }
  }

  v85 = 0;
LABEL_34:
  [a1 setMostRecentAmountValue_];

  v86 = v124;
  sub_1B7205588(a2 + v78, v124, &qword_1EB992400);
  if (v43(v86, 1, v42) == 1)
  {
    sub_1B7205418(v86, &qword_1EB992400);
  }

  else
  {
    v87 = (v86 + *(v42 + 20));
    v88 = v87[3];
    v135 = v87[2];
    v136 = v88;
    v137 = v87[4];
    v89 = v87[1];
    *v134 = *v87;
    *&v134[16] = v89;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v86, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {

      sub_1B7205418(v134, &qword_1EB990780);
      v90 = sub_1B7800838();

      goto LABEL_39;
    }
  }

  v90 = 0;
LABEL_39:
  [a1 setMostRecentPaymentCurrency_];

  v91 = v125;
  sub_1B7205588(a2 + v78, v125, &qword_1EB992400);
  if (v43(v91, 1, v42) == 1)
  {
    sub_1B7205418(v91, &qword_1EB992400);
    v92 = 0;
  }

  else
  {
    v93 = v131;
    v94 = v118;
    (*(v131 + 16))(v118, v91, v55);
    sub_1B732C060(v91, type metadata accessor for RawBankConnectData.Payment);
    v92 = sub_1B77FF8B8();
    (*(v93 + 8))(v94, v55);
  }

  [a1 setMostRecentPaymentDate_];

  v95 = v60[11];
  v96 = v126;
  sub_1B7205588(a2 + v95, v126, &qword_1EB992400);
  if (v43(v96, 1, v42) == 1)
  {
    sub_1B7205418(v96, &qword_1EB992400);
  }

  else
  {
    v97 = (v96 + *(v42 + 20));
    v98 = v97[3];
    v135 = v97[2];
    v136 = v98;
    v137 = v97[4];
    v99 = v97[1];
    *v134 = *v97;
    *&v134[16] = v99;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v96, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {
      v100 = *v134;
      v130 = *&v134[4];
      sub_1B7205418(v134, &qword_1EB990780);
      v101 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v132 = v100;
      v133 = v130;
      v102 = [v101 initWithDecimal_];
      goto LABEL_47;
    }
  }

  v102 = 0;
LABEL_47:
  [a1 setUpcomingAmountValue_];

  v103 = v127;
  sub_1B7205588(a2 + v95, v127, &qword_1EB992400);
  if (v43(v103, 1, v42) == 1)
  {
    sub_1B7205418(v103, &qword_1EB992400);
  }

  else
  {
    v104 = (v103 + *(v42 + 20));
    v105 = v104[3];
    v135 = v104[2];
    v136 = v105;
    v137 = v104[4];
    v106 = v104[1];
    *v134 = *v104;
    *&v134[16] = v106;
    sub_1B7205588(v134, &v132, &qword_1EB990780);
    sub_1B732C060(v103, type metadata accessor for RawBankConnectData.Payment);
    if (*(&v136 + 1))
    {

      sub_1B7205418(v134, &qword_1EB990780);
      v107 = sub_1B7800838();

      goto LABEL_52;
    }
  }

  v107 = 0;
LABEL_52:
  [a1 setUpcomingPaymentCurrency_];

  v108 = v129;
  sub_1B7205588(a2 + v95, v129, &qword_1EB992400);
  if (v43(v108, 1, v42) == 1)
  {
    sub_1B7205418(v108, &qword_1EB992400);
    v109 = 0;
  }

  else
  {
    v110 = v131;
    v111 = v119;
    (*(v131 + 16))(v119, v108, v55);
    sub_1B732C060(v108, type metadata accessor for RawBankConnectData.Payment);
    v109 = sub_1B77FF8B8();
    (*(v110 + 8))(v111, v55);
  }

  [a1 setUpcomingPaymentDate_];

  v112 = (a2 + v60[12]);
  if (v112[3])
  {
    v113 = sub_1B7800838();
  }

  else
  {
    v113 = 0;
  }

  [a1 setMandateReason_];

  if (v112[7])
  {
    v114 = sub_1B7800838();
  }

  else
  {
    v114 = 0;
  }

  [a1 setClassificationCode_];

  if (v112[5])
  {
    v115 = sub_1B7800838();
  }

  else
  {
    v115 = 0;
  }

  [a1 setPurposeCode_];
}

uint64_t sub_1B732BE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B732C060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawBankConnectData.PassLinkUpdatingBody.passDetailsList.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B732C178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174654473736170 && a2 == 0xEF7473694C736C69)
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

uint64_t sub_1B732C208(uint64_t a1)
{
  v2 = sub_1B732C424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B732C244(uint64_t a1)
{
  v2 = sub_1B732C424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PassLinkUpdatingBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992408);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B732C424();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992418);
  sub_1B732C67C(&qword_1EB992420, sub_1B732C478);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B732C424()
{
  result = qword_1EB992410;
  if (!qword_1EB992410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992410);
  }

  return result;
}

unint64_t sub_1B732C478()
{
  result = qword_1EB992428;
  if (!qword_1EB992428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992428);
  }

  return result;
}

uint64_t RawBankConnectData.PassLinkUpdatingBody.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992430);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B732C424();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992418);
    sub_1B732C67C(&qword_1EB992438, sub_1B732C6F4);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B732C67C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992418);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B732C6F4()
{
  result = qword_1EB992440;
  if (!qword_1EB992440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992440);
  }

  return result;
}

uint64_t RawBankConnectData.PassDetails.fpanId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.PassDetails.fpanId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.PassDetails.accountIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.PassDetails.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.PassDetails.init(fpanId:accountIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static RawBankConnectData.PassDetails.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1B732C944()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x64496E617066;
  }
}

uint64_t sub_1B732C980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496E617066 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787A1F0 == a2)
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

uint64_t sub_1B732CA60(uint64_t a1)
{
  v2 = sub_1B732CC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B732CA9C(uint64_t a1)
{
  v2 = sub_1B732CC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PassDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992448);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B732CC6C();
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

unint64_t sub_1B732CC6C()
{
  result = qword_1EB992450;
  if (!qword_1EB992450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992450);
  }

  return result;
}

uint64_t RawBankConnectData.PassDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992458);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B732CC6C();
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

unint64_t sub_1B732CF34()
{
  result = qword_1EB992460;
  if (!qword_1EB992460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992460);
  }

  return result;
}

unint64_t sub_1B732CF8C()
{
  result = qword_1EB992468;
  if (!qword_1EB992468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992468);
  }

  return result;
}

unint64_t sub_1B732CFE4()
{
  result = qword_1EB992470;
  if (!qword_1EB992470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992470);
  }

  return result;
}

unint64_t sub_1B732D03C()
{
  result = qword_1EB992478;
  if (!qword_1EB992478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992478);
  }

  return result;
}

unint64_t sub_1B732D094()
{
  result = qword_1EB992480;
  if (!qword_1EB992480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992480);
  }

  return result;
}

unint64_t sub_1B732D0EC()
{
  result = qword_1EB992488;
  if (!qword_1EB992488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992488);
  }

  return result;
}

uint64_t *BackgroundDeliveryService.__allocating_init<A, B, C>(extensionFinder:terminator:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = sub_1B7334CE4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v17;
}

uint64_t *BackgroundDeliveryService.init<A, B, C>(extensionFinder:terminator:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1B7334CE4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v13;
}

uint64_t BackgroundDeliveryService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  return v0;
}

uint64_t BackgroundDeliveryService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t BackgroundDeliveryService.initiateDelivery(with:frequency:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  *(v3 + 256) = *(type metadata accessor for BackgroundDeliveryRegistration() - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 58) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B732D444, 0, 0);
}

uint64_t sub_1B732D444()
{
  v58 = v0;
  *(v0 + 200) = MEMORY[0x1E69E7CC0];

  v2 = sub_1B71F2B74(v1);
  *(v0 + 272) = v2;

  v3 = *(v2 + 32);
  *(v0 + 59) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  v8 = 0x1EB98E000uLL;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = *(v0 + 272);
        if (v10 >= (((1 << *(v0 + 59)) + 63) >> 6))
        {

          goto LABEL_35;
        }

        v6 = *(v9 + 8 * v10 + 64);
        ++v7;
        if (v6)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v0 + 272);
LABEL_13:
    *(v0 + 280) = v6;
    *(v0 + 288) = v7;
    v11 = (*(v9 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v11;
    *(v0 + 296) = *v11;
    v13 = v11[1];
    *(v0 + 304) = v13;

    if (sub_1B7800E98())
    {
      break;
    }

    if (*(*(v0 + 272) + 16))
    {
      v14 = sub_1B724548C(v12, v13);
      if (v15)
      {
        v46 = *(*(*(v0 + 272) + 56) + 8 * v14);
        v47 = *(v46 + 16);
        v48 = MEMORY[0x1E69E7CC0];
        if (v47)
        {
          v49 = *(v0 + 256);
          *(v0 + 216) = MEMORY[0x1E69E7CC0];

          sub_1B71FDBC8(0, v47, 0);
          v48 = *(v0 + 216);
          v50 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
          v56 = *(v49 + 72);
          do
          {
            v51 = *(v0 + 264);
            sub_1B71F28A4(v50, v51);
            v52 = *v51;
            sub_1B71F2908(v51);
            *(v0 + 216) = v48;
            v54 = *(v48 + 16);
            v53 = *(v48 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1B71FDBC8((v53 > 1), v54 + 1, 1);
              v48 = *(v0 + 216);
            }

            *(v48 + 16) = v54 + 1;
            *(v48 + v54 + 32) = v52;
            v50 += v56;
            --v47;
          }

          while (v47);
        }

        *(v0 + 312) = v48;
        *(v0 + 184) = v12;
        *(v0 + 192) = v13;
        v55 = swift_task_alloc();
        *(v0 + 320) = v55;
        *v55 = v0;
        v55[1] = sub_1B732DADC;

        return sub_1B73302DC((v0 + 184));
      }
    }

    if (*(v8 + 2704) != -1)
    {
      swift_once();
    }

    v16 = sub_1B78000B8();
    __swift_project_value_buffer(v16, qword_1EB994930);

    v17 = sub_1B7800098();
    v18 = sub_1B78011D8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 58);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *(v0 + 208) = v21;
      *v20 = 136315394;
      v22 = 0x796C696164;
      if (v19 != 2)
      {
        v22 = 0x796C6B656577;
      }

      v23 = 0xE500000000000000;
      if (v19 != 2)
      {
        v23 = 0xE600000000000000;
      }

      v24 = 0x74616964656D6D69;
      if (v19)
      {
        v24 = 0x796C72756F68;
      }

      v25 = 0xE900000000000065;
      if (v19)
      {
        v25 = 0xE600000000000000;
      }

      if (v19 <= 1)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v19 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      v28 = sub_1B71A3EF8(v26, v27, (v0 + 208));

      *(v20 + 4) = v28;
      *(v20 + 12) = 2080;
      v29 = sub_1B71A3EF8(v12, v13, (v0 + 208));

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1B7198000, v17, v18, "Delivery for %s to %s had no registrations", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v21, -1, -1);
      MEMORY[0x1B8CA7A40](v20, -1, -1);

      v8 = 0x1EB98E000;
    }

    else
    {
    }

    v7 = *(v0 + 288);
    v6 = (*(v0 + 280) - 1) & *(v0 + 280);
  }

  if (*(v8 + 2704) == -1)
  {
    goto LABEL_39;
  }

LABEL_62:
  swift_once();
LABEL_39:
  v33 = sub_1B78000B8();
  __swift_project_value_buffer(v33, qword_1EB994930);
  v34 = sub_1B7800098();
  v35 = sub_1B78011D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 58);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57 = v38;
    *v37 = 136315138;
    v39 = 0xE500000000000000;
    v40 = 0x796C696164;
    v41 = 0xE600000000000000;
    if (v36 != 2)
    {
      v40 = 0x796C6B656577;
      v39 = 0xE600000000000000;
    }

    v42 = 0x796C72756F68;
    if (!v36)
    {
      v42 = 0x74616964656D6D69;
      v41 = 0xE900000000000065;
    }

    if (v36 <= 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = v40;
    }

    if (v36 <= 1)
    {
      v44 = v41;
    }

    else
    {
      v44 = v39;
    }

    v45 = sub_1B71A3EF8(v43, v44, &v57);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_1B7198000, v34, v35, "Delivery task for %s cancelled, stopping", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

LABEL_35:
  v30 = *(v0 + 200);

  v31 = *(v0 + 8);

  return v31(v30);
}