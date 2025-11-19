unint64_t sub_192C9D7DC()
{
  result = qword_1EAE14E50;
  if (!qword_1EAE14E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14E50);
  }

  return result;
}

unint64_t sub_192C9D834()
{
  result = qword_1EAE14E58;
  if (!qword_1EAE14E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14E58);
  }

  return result;
}

unint64_t sub_192C9D88C()
{
  result = qword_1EAE14E60;
  if (!qword_1EAE14E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14E60);
  }

  return result;
}

uint64_t sub_192C9D94C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_192C9D9A0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_192C9DA50()
{
  v0 = sub_192F9750C();

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

uint64_t sub_192C9DAA4(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x655265676150746DLL;
  }
}

uint64_t sub_192C9DB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9DA50();
  *a1 = result;
  return result;
}

uint64_t sub_192C9DB34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192C9DAA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C9DB68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9DA50();
  *a1 = result;
  return result;
}

uint64_t sub_192C9DB90(uint64_t a1)
{
  v2 = sub_192C9E298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C9DBCC(uint64_t a1)
{
  v2 = sub_192C9E298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192C9DC18(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_mtPageRef;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_192F9679C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_192F9679C();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = v1 + OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_context;
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  if (*(v6 + 8))
  {

    v7 = sub_192F9679C();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_192F9679C();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id ExpressCheckoutManagePaymentParams.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_mtPageRef];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_context];
  sub_192BAAF38();
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_192F96FAC();
  v13 = 0;
  v14 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v4 = 0;
  *(v4 + 1) = 0;

  v7 = sub_192F96FAC();
  v11 = 0;
  v12 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 1) = 0;

  v10.receiver = v2;
  v10.super_class = type metadata accessor for ExpressCheckoutManagePaymentParams();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id ExpressCheckoutManagePaymentParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressCheckoutManagePaymentParams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressCheckoutManagePaymentParams();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C9E0C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14E88);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C9E298();
  sub_192F9799C();
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v11[16] = 0;

  sub_192F9764C();
  if (!v1)
  {

    OUTLINED_FUNCTION_0_1();
    swift_beginAccess();
    v11[15] = 1;

    sub_192F9764C();
  }

  (*(v5 + 8))(v9, v3);
}

unint64_t sub_192C9E298()
{
  result = qword_1EAE14E90;
  if (!qword_1EAE14E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14E90);
  }

  return result;
}

id ExpressCheckoutManagePaymentParams.init(from:)(void *a1)
{
  v3 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14E98);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = &v1[OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_mtPageRef];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC18AppleMediaServices34ExpressCheckoutManagePaymentParams_context];
  *v8 = 0;
  v8[1] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C9E298();
  sub_192F9797C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);

    type metadata accessor for ExpressCheckoutManagePaymentParams();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v9 = sub_192F9755C();
    v11 = v10;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v7 = v9;
    v7[1] = v11;

    v20 = 1;
    v13 = sub_192F9755C();
    v15 = v14;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v8 = v13;
    v8[1] = v15;

    v16 = type metadata accessor for ExpressCheckoutManagePaymentParams();
    v19.receiver = v3;
    v19.super_class = v16;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    v17 = OUTLINED_FUNCTION_3_45();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_192C9E56C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ExpressCheckoutManagePaymentParams.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExpressCheckoutManagePaymentParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192C9E8A4()
{
  result = qword_1EAE14EA8;
  if (!qword_1EAE14EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14EA8);
  }

  return result;
}

unint64_t sub_192C9E8FC()
{
  result = qword_1EAE14EB0;
  if (!qword_1EAE14EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14EB0);
  }

  return result;
}

unint64_t sub_192C9E954()
{
  result = qword_1EAE14EB8;
  if (!qword_1EAE14EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14EB8);
  }

  return result;
}

unint64_t ExpressCheckoutMode.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192C9E9BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ExpressCheckoutMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ExpressCheckoutModel.init(mode:paymentChoices:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___AMSExpressCheckoutModel_mode] = a1;
  *&v2[OBJC_IVAR___AMSExpressCheckoutModel_paymentChoices] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExpressCheckoutModel();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_192C9EB08(void *a1)
{
  v2 = v1;
  sub_192C3F6E4();
  v4 = sub_192F96FFC();
  v5 = sub_192F9679C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___AMSExpressCheckoutModel_paymentChoices);
  v7 = sub_192F9679C();
  [a1 encodeObject:v6 forKey:v7];
}

uint64_t ExpressCheckoutModel.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ExpressCheckoutPaymentChoices();
  result = sub_192F96FAC();
  if (result)
  {
    *&v2[OBJC_IVAR___AMSExpressCheckoutModel_paymentChoices] = result;
    sub_192C3F6E4();
    v5 = sub_192F96FAC();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 integerValue];

      v8 = ExpressCheckoutMode.init(rawValue:)(v7);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      v10 = 0;
    }

    *&v2[OBJC_IVAR___AMSExpressCheckoutModel_mode] = v10;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for ExpressCheckoutModel();
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ExpressCheckoutModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressCheckoutModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressCheckoutModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192C9EE5C()
{
  result = qword_1EAE14ED8;
  if (!qword_1EAE14ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14ED8);
  }

  return result;
}

uint64_t sub_192C9EFA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_192C9F0EC()
{
  v1 = v0 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_192C9F134(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum;
  OUTLINED_FUNCTION_3_44();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void sub_192C9F2D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_192C9F348(v1);
}

void *sub_192C9F300()
{
  v1 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_192C9F348(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_192C9F460()
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
}

uint64_t sub_192C9F52C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *(v2 + v4) = a1;
}

BOOL sub_192C9F61C()
{
  v1 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 1;
  }

  if (v2 >> 62)
  {
    v3 = sub_192F971FC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 0;
}

uint64_t sub_192C9F6B4()
{
  v1 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    return sub_192F971FC();
  }

  return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_192C9F720()
{
  v0 = sub_192F9750C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_192C9F774(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000024;
      break;
    case 5:
      result = 0x656C626967696C65;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192C9F8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9F720();
  *a1 = result;
  return result;
}

unint64_t sub_192C9F8D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192C9F774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C9F920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9F76C();
  *a1 = result;
  return result;
}

uint64_t sub_192C9F954(uint64_t a1)
{
  v2 = sub_192CA0870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C9F990(uint64_t a1)
{
  v2 = sub_192CA0870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ExpressCheckoutPaymentChoices.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressCheckoutPaymentChoices.init()()
{
  OUTLINED_FUNCTION_15_23(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_title);
  OUTLINED_FUNCTION_15_23(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_details);
  OUTLINED_FUNCTION_15_23(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonTitle);
  v1 = &v0[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum];
  *v1 = 0;
  v1[8] = 1;
  OUTLINED_FUNCTION_15_23(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useDifferentPaymentMethodButtonTitle);
  *&v0[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards] = 0;
  *&v0[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams] = 0;
  *&v0[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_metrics] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ExpressCheckoutPaymentChoices();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_192C9FAF8(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_title;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  if (*(v3 + 8))
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_192F9679C();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = v1 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_details;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v6 = *(v5 + 8);
  if (v6)
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_23();
  }

  v7 = sub_192F9679C();
  OUTLINED_FUNCTION_1_49(v7);
  swift_unknownObjectRelease();

  v8 = v1 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonTitle;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v9 = *(v8 + 8);
  if (v9)
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_23();
  }

  v10 = sub_192F9679C();
  OUTLINED_FUNCTION_1_49(v10);
  swift_unknownObjectRelease();

  v11 = v1 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useDifferentPaymentMethodButtonTitle;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v12 = *(v11 + 8);
  if (v12)
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_23();
  }

  v13 = sub_192F9679C();
  OUTLINED_FUNCTION_1_49(v13);
  swift_unknownObjectRelease();

  v14 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    type metadata accessor for ExpressCheckoutCard();
    OUTLINED_FUNCTION_12_23();

    sub_192F96AFC();
    OUTLINED_FUNCTION_12_23();
  }

  v16 = sub_192F9679C();
  OUTLINED_FUNCTION_1_49(v16);
  swift_unknownObjectRelease();

  v17 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = sub_192F9679C();
  OUTLINED_FUNCTION_1_49(v19);

  v20 = v1 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum;
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  if ((*(v20 + 8) & 1) == 0)
  {
    sub_192874CD0(0, &qword_1ED6DDBB0);
    v21 = sub_192F96FFC();
    v22 = sub_192F9679C();
    [a1 encodeObject:v21 forKey:v22];
  }
}

id ExpressCheckoutPaymentChoices.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_details];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useDifferentPaymentMethodButtonTitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
  *&v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards] = 0;
  v27 = v7;
  v28 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
  *&v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams] = 0;
  *&v2[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_metrics] = 0;
  sub_192874CD0(0, &qword_1ED6DE9F0);
  v10 = sub_192F96FAC();
  if (v10)
  {
    OUTLINED_FUNCTION_16_23();
    sub_192F967BC();

    v10 = v32;
    if (v32)
    {
      v11 = v31;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v4 = v11;
  *(v4 + 1) = v10;

  v12 = sub_192F96FAC();
  if (v12)
  {
    OUTLINED_FUNCTION_16_23();
    sub_192F967BC();

    v13 = v32;
    if (v32)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v5 = v12;
  *(v5 + 1) = v13;

  v14 = sub_192F96FAC();
  if (v14)
  {
    OUTLINED_FUNCTION_16_23();
    sub_192F967BC();

    v14 = v32;
    if (v32)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v6 = v15;
  *(v6 + 1) = v14;

  v16 = sub_192F96FAC();
  if (v16)
  {
    OUTLINED_FUNCTION_16_23();
    sub_192F967BC();

    v16 = v32;
    if (v32)
    {
      v17 = v31;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v8 = v17;
  *(v8 + 1) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12ED0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_192FBCD90;
  *(v18 + 32) = sub_192874CD0(0, &qword_1ED6DE7D8);
  *(v18 + 40) = type metadata accessor for ExpressCheckoutCard();
  sub_192F96FBC();

  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14F28);
    if (swift_dynamicCast())
    {
      v19 = v30;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_192907DE8(&v31);
    v19 = 0;
  }

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *&v2[v9] = v19;

  type metadata accessor for ExpressCheckoutManagePaymentParams();
  v20 = sub_192F96FAC();
  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  v21 = *&v2[v28];
  *&v2[v28] = v20;

  sub_192874CD0(0, &qword_1ED6DDBB0);
  v22 = sub_192F96FAC();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 integerValue];

    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v27 = v24;
    v27[8] = 0;
  }

  v29.receiver = v2;
  v29.super_class = type metadata accessor for ExpressCheckoutPaymentChoices();
  v25 = objc_msgSendSuper2(&v29, sel_init);

  return v25;
}

id ExpressCheckoutPaymentChoices.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressCheckoutPaymentChoices();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CA0434(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14F30);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25[-v9];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CA0870();
  sub_192F9799C();
  v11 = (v2 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_title);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v12 = *v11;
  v32 = 0;

  OUTLINED_FUNCTION_1_5();
  if (v12 || (, v13 = (v2 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_details), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v14 = *v13, v31 = 1, , OUTLINED_FUNCTION_1_5(), v14) || (, v15 = (v2 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonTitle), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v16 = *v15, v30 = 2, , OUTLINED_FUNCTION_1_5(), v16) || (, OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v29 = 3, OUTLINED_FUNCTION_7_3(), sub_192F9767C(), v18 = (v2 + OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useDifferentPaymentMethodButtonTitle), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v19 = *v18, v28 = 4, , OUTLINED_FUNCTION_1_5(), v19))
  {
    (*(v6 + 8))(v10, v4);
  }

  else
  {

    v20 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v27 = *(v2 + v20);
    LOBYTE(v26) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14F28);
    sub_192CA0F58(&qword_1EAE14F40, &qword_1EAE14F48);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
    v21 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v26 = *(v2 + v21);
    LOBYTE(v33) = 6;
    type metadata accessor for ExpressCheckoutManagePaymentParams();
    OUTLINED_FUNCTION_6_37();
    sub_192CA0FF4(v22, v23);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
    v24 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_metrics;
    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v33 = *(v2 + v24);
    v25[15] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13B70);
    sub_192CA103C(&qword_1EAE14F60);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
    return (*(v6 + 8))(v10, v4);
  }
}

unint64_t sub_192CA0870()
{
  result = qword_1EAE14F38;
  if (!qword_1EAE14F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14F38);
  }

  return result;
}

char *ExpressCheckoutPaymentChoices.init(from:)(void *a1)
{
  v3 = v1;
  v49[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14F68);
  OUTLINED_FUNCTION_4_0();
  v49[0] = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v49 - v8;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_title);
  v11 = v10;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_details);
  v13 = v12;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonTitle);
  v55 = v14;
  v15 = &v3[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useApplePayButtonEnum];
  *v15 = 0;
  v15[8] = 1;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR___AMSExpressCheckoutPaymentChoices_useDifferentPaymentMethodButtonTitle);
  v50 = v16;
  v54 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards;
  *&v3[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_eligibleCards] = 0;
  v51 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams;
  *&v3[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_managePaymentsParams] = 0;
  v52 = OBJC_IVAR___AMSExpressCheckoutPaymentChoices_metrics;
  *&v3[OBJC_IVAR___AMSExpressCheckoutPaymentChoices_metrics] = 0;
  v17 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_192CA0870();
  v49[1] = v9;
  sub_192F9797C();
  if (v2)
  {
    v25 = v51;
    __swift_destroy_boxed_opaque_existential_0(v53);

    type metadata accessor for ExpressCheckoutPaymentChoices();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v64 = 0;
    v18 = sub_192F9755C();
    v20 = v19;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v11 = v18;
    v11[1] = v20;

    v63 = 1;
    v21 = sub_192F9755C();
    v23 = v22;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v13 = v21;
    v13[1] = v23;

    v62 = 2;
    v24 = sub_192F9755C();
    v28 = v27;
    v29 = v55;
    v30 = v24;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v29 = v30;
    v29[1] = v28;

    v61 = 3;
    v31 = sub_192F9758C();
    LOBYTE(v28) = v32;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v15 = v31;
    v15[8] = v28 & 1;
    v60 = 4;
    v33 = sub_192F9755C();
    v35 = v34;
    v36 = v50;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v36 = v33;
    v36[1] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14F28);
    v59 = 5;
    sub_192CA0F58(&qword_1EAE14F70, &qword_1EAE14F78);
    sub_192F9759C();
    v37 = v51;
    v38 = v58;
    v39 = v54;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *&v3[v39] = v38;

    type metadata accessor for ExpressCheckoutManagePaymentParams();
    LOBYTE(v58) = 6;
    OUTLINED_FUNCTION_6_37();
    sub_192CA0FF4(v40, v41);
    OUTLINED_FUNCTION_11_29();
    v42 = v57;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    v43 = *&v3[v37];
    *&v3[v37] = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13B70);
    LOBYTE(v57) = 7;
    sub_192CA103C(&qword_1ED6DE3A0);
    OUTLINED_FUNCTION_11_29();
    v44 = v65;
    v45 = v52;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *&v3[v45] = v44;

    v46 = type metadata accessor for ExpressCheckoutPaymentChoices();
    v56.receiver = v3;
    v56.super_class = v46;
    v3 = objc_msgSendSuper2(&v56, sel_init);
    v47 = OUTLINED_FUNCTION_13_19();
    v48(v47);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  return v3;
}

uint64_t sub_192CA0F58(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE14F28);
    sub_192CA0FF4(a2, type metadata accessor for ExpressCheckoutCard);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_192CA0FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_192CA103C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE13B70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_192CA10A8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = ExpressCheckoutPaymentChoices.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpressCheckoutPaymentChoices.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExpressCheckoutPaymentChoices.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CA190C()
{
  result = qword_1EAE14F88;
  if (!qword_1EAE14F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14F88);
  }

  return result;
}

unint64_t sub_192CA1964()
{
  result = qword_1EAE14F90;
  if (!qword_1EAE14F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14F90);
  }

  return result;
}

unint64_t sub_192CA19BC()
{
  result = qword_1EAE14F98;
  if (!qword_1EAE14F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14F98);
  }

  return result;
}

unint64_t ExpressCheckoutPath.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_192CA1A28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ExpressCheckoutPath.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AMSEngagementResult.init(path:)()
{
  OUTLINED_FUNCTION_22_0();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 initWithPath_];
}

id AMSEngagementResult.init(path:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for AMSEngagementResult.ResultModel());
  v5 = AMSEngagementResult.ResultModel.init(path:selection:)(a1, 0);
  v6 = [v2 initWithModel_];

  return v6;
}

void __swiftcall AMSEngagementResult.init(selection:)(AMSEngagementResult *__return_ptr retstr, AMSCardSingleSelection selection)
{
  OUTLINED_FUNCTION_22_0();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSelection_];
}

id AMSEngagementResult.init(selection:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for AMSEngagementResult.ResultModel());
  v5 = a1;
  v6 = AMSEngagementResult.ResultModel.init(path:selection:)(3, a1);
  v7 = [v2 initWithModel_];

  return v7;
}

uint64_t AMSEngagementResult.expressCheckoutPath()()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for AMSEngagementResult.ResultModel();
  v11[0] = 0;
  v2 = [v0 modelForClass:swift_getObjCClassFromMetadata() error:v11];
  v3 = v11[0];
  if (!v2)
  {
    v7 = v11[0];
    OUTLINED_FUNCTION_22_0();
    v8 = sub_192F958DC();

    swift_willThrow();
    return 0;
  }

  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v9 = v3;
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = *(v4 + OBJC_IVAR___AMSExpressCheckoutResultModel_path);
  v6 = v3;
  swift_unknownObjectRelease();
  return v5;
}

AMSCardSingleSelection_optional __swiftcall AMSEngagementResult.expressCheckoutCardSelection()()
{
  v14[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for AMSEngagementResult.ResultModel();
  v14[0] = 0;
  v1 = [v0 modelForClass:swift_getObjCClassFromMetadata() error:v14];
  v2 = v14[0];
  if (!v1)
  {
    v10 = v14[0];
    v11 = sub_192F958DC();

    swift_willThrow();
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    v12 = v2;
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v4 = *(v3 + OBJC_IVAR___AMSExpressCheckoutResultModel_selection);
  v5 = v4;
  v6 = v2;
  swift_unknownObjectRelease();
LABEL_7:
  v13 = v4;
  result.value._passSerialNumber = v8;
  result.value._passTypeIdentifier = v7;
  result.value.super.isa = v13;
  result.is_nil = v9;
  return result;
}

id AMSEngagementResult.ResultModel.init(path:selection:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___AMSExpressCheckoutResultModel_path] = a1;
  *&v2[OBJC_IVAR___AMSExpressCheckoutResultModel_selection] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AMSEngagementResult.ResultModel();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_192CA1F44(void *a1)
{
  v2 = v1;
  sub_192874CD0(0, &qword_1ED6DDBB0);
  v4 = sub_192F96FFC();
  v5 = sub_192F9679C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___AMSExpressCheckoutResultModel_selection);
  v7 = sub_192F9679C();
  [a1 encodeObject:v6 forKey:v7];
}

id AMSEngagementResult.ResultModel.init(coder:)(void *a1)
{
  v2 = v1;
  sub_192874CD0(0, &qword_1ED6DDBB0);
  v4 = sub_192F96FAC();
  v5 = v4;
  if (v4)
  {
    v4 = [v4 integerValue];
  }

  v6 = ExpressCheckoutPath.init(rawValue:)(v4);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *&v2[OBJC_IVAR___AMSExpressCheckoutResultModel_path] = v8;
  sub_192874CD0(0, &qword_1EAE14FB8);
  v9 = sub_192F96FAC();

  *&v2[OBJC_IVAR___AMSExpressCheckoutResultModel_selection] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for AMSEngagementResult.ResultModel();
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id AMSEngagementResult.ResultModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSEngagementResult.ResultModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSEngagementResult.ResultModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192CA22A4()
{
  result = qword_1EAE14FC0;
  if (!qword_1EAE14FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14FC0);
  }

  return result;
}

uint64_t FailingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, void *a3)
{

  return swift_allocObject();
}

uint64_t FailingMockAuthenticateTask.init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, void *a3)
{

  return v3;
}

uint64_t sub_192CA2468()
{
  AMSError(100, 0, 0, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192CA2520@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = FailingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(a1, *a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_192CA254C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192BCCED4;

  return FailingMockAuthenticateTask.performAuthentication()();
}

id sub_192CA2628@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_192CA2654(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_192CA269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_192CA26C8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_192CA273C()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [v0 creationDataWithError_];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_192F95B7C();
  }

  else
  {
    v3 = v2;
    sub_192F958DC();

    swift_willThrow();
  }

  return v3;
}

id sub_192CA2854()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = sub_192F95B5C();
  v5[0] = 0;
  v2 = [v0 setupSessionWithInitializationResponseData:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_192F958DC();

  return swift_willThrow();
}

void *sub_192CA293C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192F95B5C();
  v10[0] = 0;
  v6 = [v3 *a3];

  v7 = v10[0];
  if (v6)
  {
    v8 = sub_192F95B7C();
  }

  else
  {
    v8 = v7;
    sub_192F958DC();

    swift_willThrow();
  }

  return v8;
}

void sub_192CA2A6C()
{
  v1 = [v0 creationDate];
  sub_192F95CAC();
}

uint64_t FairPlayDeviceIdentity.cachedSessions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_192CA2B94()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  *(v1 + 320) = v4;
  *(v1 + 328) = v0;
  *(v1 + 304) = v5;
  *(v1 + 312) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  *(v1 + 336) = OUTLINED_FUNCTION_102_4();
  *(v1 + 344) = swift_task_alloc();
  v7 = sub_192F95A8C();
  *(v1 + 352) = v7;
  OUTLINED_FUNCTION_26(v7);
  *(v1 + 360) = v8;
  *(v1 + 368) = OUTLINED_FUNCTION_102_4();
  v9 = swift_task_alloc();
  v10 = *v3;
  *(v1 + 376) = v9;
  *(v1 + 384) = v10;
  *(v1 + 392) = *(v3 + 1);
  *(v1 + 408) = v3[3];
  v11 = OUTLINED_FUNCTION_27_18();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_192CA2CA8()
{
  OUTLINED_FUNCTION_178();
  __swift_project_boxed_opaque_existential_0(*(v0 + 304), *(*(v0 + 304) + 24));
  v1 = OUTLINED_FUNCTION_40_11();
  v3 = v2(v1);
  *(v0 + 416) = 0;
  *(v0 + 424) = v3;
  *(v0 + 432) = v4;
  v5 = v3;
  v6 = v4;
  if (!sub_192CABC70(v3, v4))
  {
    sub_192F95A3C();
    OUTLINED_FUNCTION_73_7();
    if (!v16)
    {
      v21 = v0 + 144;
      v23 = *(v0 + 312);
      v22 = *(v0 + 320);
      v24 = OUTLINED_FUNCTION_87_4();
      v25(v24);
      v26 = sub_192F9596C();
      *(v0 + 440) = v26;
      v27 = sub_192F95B5C();
      *(v0 + 448) = v27;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_192CA3198;
      v28 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14FE0);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_192CA3A60;
      *(v0 + 168) = &block_descriptor_22;
      *(v0 + 176) = v28;
      goto LABEL_12;
    }

    sub_19292E1F0(*(v0 + 344), &unk_1EAE144B0);
    v17 = OUTLINED_FUNCTION_6_38();
    v18 = sub_192F9679C();
    AMSError(204, v17, v18, 0);

    swift_willThrow();
LABEL_7:
    v15 = v5;
    goto LABEL_8;
  }

  *(v0 + 464) = xmmword_192FBED30;
  v7 = *(v0 + 416);
  OUTLINED_FUNCTION_60_3();
  v8 = OUTLINED_FUNCTION_41_11();
  v10 = v9(v8);
  *(v0 + 480) = v7;
  *(v0 + 488) = v10;
  *(v0 + 496) = v11;
  if (v7)
  {
    v12 = *(v0 + 424);
    v6 = *(v0 + 432);
    v13 = OUTLINED_FUNCTION_41_11();
    sub_19290CA6C(v13, v14);
    v15 = v12;
LABEL_8:
    sub_19290CA6C(v15, v6);
    OUTLINED_FUNCTION_101_3();

    OUTLINED_FUNCTION_43();
    goto LABEL_9;
  }

  v5 = v10;
  v6 = v11;
  if (sub_192CABC70(v10, v11))
  {
    OUTLINED_FUNCTION_60_3();
    v31 = OUTLINED_FUNCTION_41_11();
    v32(v31);
    v33 = OUTLINED_FUNCTION_88_4();
    sub_19290CA6C(v33, v44);
    OUTLINED_FUNCTION_84_2();
    v45 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v45, v46);
    v47 = OUTLINED_FUNCTION_41_11();
    sub_19290CA6C(v47, v48);

    OUTLINED_FUNCTION_7();
LABEL_9:
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_100_5();
  OUTLINED_FUNCTION_73_7();
  if (v16)
  {
    v35 = *(v0 + 424);
    v34 = *(v0 + 432);
    sub_19292E1F0(*(v0 + 336), &unk_1EAE144B0);
    v36 = OUTLINED_FUNCTION_6_38();
    v37 = sub_192F9679C();
    AMSError(204, v36, v37, 0);

    swift_willThrow();
    v38 = OUTLINED_FUNCTION_41_11();
    sub_19290CA6C(v38, v39);
    sub_19290CA6C(v35, v34);
    goto LABEL_7;
  }

  v21 = v0 + 208;
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v40 = OUTLINED_FUNCTION_87_4();
  v41(v40);
  v26 = sub_192F9596C();
  *(v0 + 504) = v26;
  v27 = sub_192F95B5C();
  *(v0 + 512) = v27;
  *(v0 + 80) = v0;
  OUTLINED_FUNCTION_32_12();
  v42 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14FE0);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  OUTLINED_FUNCTION_39_14();
  *(v0 + 232) = v43;
  *(v0 + 240) = v42;
LABEL_12:
  [v23 fpdiNetworkResponseFor:v26 data:v27 bag:v22 completionHandler:v21];
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DEC8](v29);
}

uint64_t sub_192CA3198()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  v5 = *(v3 + 328);
  if (v4)
  {
    v6 = sub_192CA389C;
  }

  else
  {
    v6 = sub_192CA32A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CA32A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v14 = *(v12 + 440);
  v13 = *(v12 + 448);
  (*(*(v12 + 360) + 8))(*(v12 + 376), *(v12 + 352));
  v15 = *(v12 + 272);
  v16 = *(v12 + 280);

  *(v12 + 464) = v15;
  *(v12 + 472) = v16;
  v17 = *(v12 + 416);
  v18 = __swift_project_boxed_opaque_existential_0(*(v12 + 304), *(*(v12 + 304) + 24));
  v19 = OUTLINED_FUNCTION_40_11();
  v21 = v20(v19);
  *(v12 + 480) = v17;
  *(v12 + 488) = v21;
  *(v12 + 496) = v22;
  if (v17)
  {
    v24 = *(v12 + 424);
    v23 = *(v12 + 432);
    v25 = OUTLINED_FUNCTION_40_11();
    sub_19290CA6C(v25, v26);
    v27 = v24;
    v28 = v23;
    goto LABEL_3;
  }

  v38 = v21;
  v39 = v22;
  if (sub_192CABC70(v21, v22))
  {
    OUTLINED_FUNCTION_60_3();
    v40 = OUTLINED_FUNCTION_41_11();
    v41(v40);
    v42 = OUTLINED_FUNCTION_88_4();
    if (!v18)
    {
      sub_19290CA6C(v42, v43);
      OUTLINED_FUNCTION_84_2();
      v63 = OUTLINED_FUNCTION_91();
      sub_19290CA6C(v63, v64);
      v65 = OUTLINED_FUNCTION_41_11();
      sub_19290CA6C(v65, v66);

      OUTLINED_FUNCTION_7();
      goto LABEL_4;
    }

    sub_19290CA6C(v42, v43);
    OUTLINED_FUNCTION_84_2();
    v44 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v44, v45);
    v27 = OUTLINED_FUNCTION_41_11();
LABEL_3:
    sub_19290CA6C(v27, v28);
    OUTLINED_FUNCTION_101_3();

    OUTLINED_FUNCTION_43();
LABEL_4:
    OUTLINED_FUNCTION_183();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_100_5();
  OUTLINED_FUNCTION_73_7();
  if (v46)
  {
    v48 = *(v12 + 424);
    v47 = *(v12 + 432);
    sub_19292E1F0(*(v12 + 336), &unk_1EAE144B0);
    v49 = OUTLINED_FUNCTION_6_38();
    v50 = sub_192F9679C();
    AMSError(204, v49, v50, 0);

    swift_willThrow();
    v51 = OUTLINED_FUNCTION_40_11();
    sub_19290CA6C(v51, v52);
    sub_19290CA6C(v48, v47);
    v27 = v38;
    v28 = v39;
    goto LABEL_3;
  }

  v54 = *(v12 + 312);
  v53 = *(v12 + 320);
  v55 = OUTLINED_FUNCTION_87_4();
  v56(v55);
  v57 = sub_192F9596C();
  *(v12 + 504) = v57;
  v58 = sub_192F95B5C();
  *(v12 + 512) = v58;
  *(v12 + 80) = v12;
  OUTLINED_FUNCTION_32_12();
  v59 = swift_continuation_init();
  *(v12 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14FE0);
  *(v12 + 208) = MEMORY[0x1E69E9820];
  *(v12 + 216) = 1107296256;
  OUTLINED_FUNCTION_39_14();
  *(v12 + 232) = v60;
  *(v12 + 240) = v59;
  [v54 fpdiNetworkResponseFor:v57 data:v58 bag:v53 completionHandler:v12 + 208];
  OUTLINED_FUNCTION_183();

  return MEMORY[0x1EEE6DEC8](v61);
}

uint64_t sub_192CA35F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 520) = v4;
  v5 = *(v3 + 328);
  if (v4)
  {
    v6 = sub_192CA3960;
  }

  else
  {
    v6 = sub_192CA3704;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CA3704()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

  __swift_project_boxed_opaque_existential_0(*(v0 + 304), *(*(v0 + 304) + 24));
  v3 = OUTLINED_FUNCTION_40_11();
  v4(v3);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  sub_19290CA6C(*(v0 + 464), *(v0 + 472));
  sub_19290CA6C(v8, v7);
  sub_19290CA6C(v6, v5);
  v9 = OUTLINED_FUNCTION_40_11();
  sub_19290CA6C(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

void sub_192CA389C()
{
  OUTLINED_FUNCTION_178();
  v1 = v0[56];
  v2 = v0[55];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[45];
  swift_willThrow();
  v6 = OUTLINED_FUNCTION_88();
  sub_19290CA6C(v6, v7);
  (*(v5 + 8))(v3, v4);

  OUTLINED_FUNCTION_101_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_192CA3960()
{
  v10 = v0[64];
  v11 = v0[63];
  v1 = v0[61];
  v9 = v0[62];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[44];
  swift_willThrow();
  sub_19290CA6C(v3, v2);
  OUTLINED_FUNCTION_84_2();
  sub_19290CA6C(v1, v9);
  (*(v4 + 8))(v5, v6);

  OUTLINED_FUNCTION_101_3();

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_192CA3A60(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_192921880(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = sub_192F95B7C();
    v11 = v10;

    return sub_192CDB7B4(v5, v9, v11);
  }
}

uint64_t sub_192CA3B04()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v1[61] = v4;
  v1[62] = v0;
  v1[59] = v5;
  v1[60] = v6;
  v1[57] = v7;
  v1[58] = v2;
  v1[56] = v8;
  v9 = sub_192F95CFC();
  v1[63] = v9;
  OUTLINED_FUNCTION_26(v9);
  v1[64] = v10;
  v1[65] = OUTLINED_FUNCTION_44_0();
  v1[66] = type metadata accessor for FairPlayDeviceIdentitySessionInfo();
  v1[67] = OUTLINED_FUNCTION_102_4();
  v1[68] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x48uLL);
  v11 = OUTLINED_FUNCTION_27_18();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_192CA3C04()
{
  v18 = v0;
  swift_beginAccess();
  sub_192BD2DFC();
  if (v0[28])
  {
    v1 = v0[61];
    v2 = v0[62];
    v3 = v0[60];
    v4 = v0[58];
    sub_192BE1524(v0 + 25, v0 + 20);
    swift_endAccess();
    memcpy(v17, v4, sizeof(v17));
    v5 = v0[23];
    v6 = v0[24];
    v7 = __swift_project_boxed_opaque_existential_0(v0 + 20, v5);
    if (sub_192CAA4A4(v7, v17, v3, v1, v2, v5, v6))
    {
      v8 = swift_task_alloc();
      v0[69] = v8;
      *v8 = v0;
      v8[1] = sub_192CA3E20;
      v9 = v0[60];

      return FairPlayDeviceIdentity.resetSession(level:)(v9);
    }

    else
    {
      sub_192BE1524(v0 + 20, v0[56]);
      OUTLINED_FUNCTION_54_9();

      OUTLINED_FUNCTION_7();

      return v16();
    }
  }

  else
  {
    sub_19292E1F0((v0 + 25), &qword_1EAE13298);
    swift_endAccess();
    v0[71] = OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_2_43();
    v0[72] = sub_1928F5AEC(v11, v12);
    sub_192F96B7C();
    v13 = OUTLINED_FUNCTION_25_17();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_192CA3E20()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_27_18();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CA3F18()
{
  OUTLINED_FUNCTION_3();
  __swift_destroy_boxed_opaque_existential_0(v0 + 160);
  *(v0 + 568) = OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_2_43();
  *(v0 + 576) = sub_1928F5AEC(v1, v2);
  sub_192F96B7C();
  v3 = OUTLINED_FUNCTION_25_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CA3FA8()
{
  OUTLINED_FUNCTION_5();
  sub_192CB39CC(*(v0 + 544));
  *(v0 + 584) = 0;
  v1 = *(v0 + 496);

  return MEMORY[0x1EEE6DFA0](sub_192CA403C, v1, 0);
}

uint64_t sub_192CA403C()
{
  v24 = v0;
  v1 = v0[73];
  v2 = v0[68];
  v3 = v0[65];
  v4 = v0[62];
  v5 = *(v4 + 160);
  v6 = *(v4 + 168);
  v7 = *v2;
  (*(v0[64] + 16))(v3, &v2[*(v0[66] + 20)], v0[63]);
  v8 = (v6 + 16);
  v9 = *(v6 + 16);
  v0[48] = v5;
  v0[49] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 45);
  v9(v7, v3, v5, v6);
  if (v1)
  {
    v11 = v1;
    sub_192CAA7A8(v0[68]);
    __swift_deallocate_boxed_opaque_existential_0((v0 + 45));
  }

  else
  {
    v13 = v0[61];
    v12 = v0[62];
    v14 = v0[60];
    OUTLINED_FUNCTION_77_7(v23);
    if ((sub_192CAA4A4(boxed_opaque_existential_0, v23, v14, v13, v12, v5, v6) & 1) == 0)
    {
      sub_192CAA7A8(v0[68]);
      sub_192BE1524(v0 + 45, v0 + 30);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_83_5();
      sub_192BD8390((v0 + 40), v12);
      swift_endAccess();
      sub_192BE1524(v0 + 30, v13);
      OUTLINED_FUNCTION_54_9();

      OUTLINED_FUNCTION_7();
      goto LABEL_11;
    }

    v15 = v0[68];
    OUTLINED_FUNCTION_69_8();
    v16 = OUTLINED_FUNCTION_31_12();
    v17 = sub_192F9679C();
    v11 = AMSError(900, v16, v17, 0);

    v1 = v11;
    swift_willThrow();
    sub_192CAA7A8(v15);
    __swift_destroy_boxed_opaque_existential_0((v0 + 45));
  }

  OUTLINED_FUNCTION_61_8();
  v18 = OUTLINED_FUNCTION_67_8();
  v8(v18);
  if (v1)
  {

    __swift_deallocate_boxed_opaque_existential_0((v0 + 35));
    OUTLINED_FUNCTION_54_9();

    OUTLINED_FUNCTION_16_24();
LABEL_11:

    return v19();
  }

  sub_192BE1524(v0 + 35, v0 + 30);
  OUTLINED_FUNCTION_77_7(v0 + 11);
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[75] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_22_20(v20);

  return sub_192CA2B94();
}

uint64_t sub_192CA42F4()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v1[73];
  OUTLINED_FUNCTION_61_8();
  v4 = OUTLINED_FUNCTION_67_8();
  v2(v4);
  if (v0)
  {

    __swift_deallocate_boxed_opaque_existential_0((v1 + 35));
    OUTLINED_FUNCTION_54_9();

    OUTLINED_FUNCTION_16_24();
    OUTLINED_FUNCTION_85();

    __asm { BRAA            X1, X16 }
  }

  sub_192BE1524(v1 + 35, v1 + 30);
  OUTLINED_FUNCTION_77_7(v1 + 11);
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[75] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_22_20(v7);
  OUTLINED_FUNCTION_85();

  return sub_192CA2B94();
}

uint64_t sub_192CA43F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 608) = v0;

  v7 = *(v3 + 496);
  if (v0)
  {
    v8 = sub_192CA47DC;
  }

  else
  {
    v8 = sub_192CA44F4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_192CA44F4()
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[33];
  v4 = v0[34];
  __swift_project_boxed_opaque_existential_0(v0 + 30, v3);
  v5 = (*(v4 + 56))(v3, v4);
  v6 = v0[33];
  v7 = v0[34];
  __swift_project_boxed_opaque_existential_0(v0 + 30, v6);
  (*(v7 + 64))(v6, v7);
  *v1 = v5;
  v0[77] = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
  OUTLINED_FUNCTION_91();
  sub_192F96B7C();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_183();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CA45FC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[76];
  sub_192CB3C14();
  v0[78] = v1;
  v2 = v0[62];
  if (v1)
  {
    v3 = sub_192CA4744;
  }

  else
  {
    v3 = sub_192CA4690;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_192CA4690()
{
  OUTLINED_FUNCTION_5();
  v3 = *(v2 + 536);

  sub_192CAA7A8(v3);
  OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_83_5();
  sub_192BD8390(v2 + 320, v0);
  swift_endAccess();
  sub_192BE1524(v2 + 240, v1);
  OUTLINED_FUNCTION_54_9();

  OUTLINED_FUNCTION_7();

  return v4();
}

uint64_t sub_192CA4744()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 536);

  sub_192CAA7A8(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 240);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CA47DC()
{
  OUTLINED_FUNCTION_5();

  __swift_destroy_boxed_opaque_existential_0(v0 + 240);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t FairPlayDeviceIdentity.resetSession(level:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_192CA4888, v1, 0);
}

uint64_t sub_192CA4888()
{
  OUTLINED_FUNCTION_47_0();
  v11 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  OUTLINED_FUNCTION_83_5();
  sub_192BD8390(v9, v1);
  swift_endAccess();
  v0[21] = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
  type metadata accessor for FairPlayDeviceIdentitySessionCache();
  OUTLINED_FUNCTION_2_43();
  sub_1928F5AEC(v3, v4);
  sub_192F96B7C();
  OUTLINED_FUNCTION_55_10();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192CA4974()
{
  OUTLINED_FUNCTION_5();
  sub_192CB3DB4();
  *(v0 + 176) = 0;
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CA4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_144();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_178();
  a18 = v20;
  if (qword_1EAE124E8 != -1)
  {
    OUTLINED_FUNCTION_1_50();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_30();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_50(v23, xmmword_192FBCD50);
  sub_19287AEE0();
  a11 = v24;
  OUTLINED_FUNCTION_31_0();
  v25._countAndFlagsBits = 0xD000000000000037;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  swift_getErrorValue();
  v26 = v20[15];
  v20[10] = v20[16];
  __swift_allocate_boxed_opaque_existential_0(v20 + 7);
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_11_18();
  v27();
  sub_192878268((v20 + 7), (v20 + 11));
  OUTLINED_FUNCTION_63_7();
  if ((OUTLINED_FUNCTION_168_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v26 = v55;
    a11 = v55;
  }

  OUTLINED_FUNCTION_24();
  if (v28)
  {
    OUTLINED_FUNCTION_142();
    v26 = v56;
  }

  OUTLINED_FUNCTION_12();
  a11 = v26;
  sub_19292E1F0((v20 + 7), &unk_1EAE131B0);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  v23[2].n128_u64[0] = a11;
  v30 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_14_18(v30))
  {
    v31 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    v32 = OUTLINED_FUNCTION_19();
    *(v32 + 16) = &a11;
    v20[2] = v23;
    v20[3] = sub_1928FA5C4;
    v20[4] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v31);
    v33 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v34 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v34, v35, v36, v37, v38, v39, v40, v41, v42);
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v44);
    OUTLINED_FUNCTION_139();

    objc_autoreleasePoolPop(v33);
  }

  v45 = v20[22];

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_145();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_192CA4CE0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v1[89] = v0;
  v1[88] = v4;
  v1[87] = v5;
  v1[86] = v2;
  v1[85] = v6;
  v1[84] = v7;
  v1[83] = v8;
  v9 = sub_192F95CFC();
  v1[90] = v9;
  OUTLINED_FUNCTION_26(v9);
  v1[91] = v10;
  v1[92] = OUTLINED_FUNCTION_102_4();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x48uLL);
  v11 = OUTLINED_FUNCTION_27_18();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_192CA4DDC()
{
  OUTLINED_FUNCTION_3();
  memcpy((v0 + 88), *(v0 + 688), 0x48uLL);
  sub_192F95CEC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 768) = v1;
  *v1 = v2;
  v1[1] = sub_192CA4E90;
  OUTLINED_FUNCTION_18_22();

  return sub_192CA3B04();
}

uint64_t sub_192CA4E90()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[97] = v0;

  v7 = OUTLINED_FUNCTION_74_5();
  if (v0)
  {
    v3[111] = v8;
  }

  else
  {
    v3[98] = v8;
  }

  v8(v7);
  OUTLINED_FUNCTION_64();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CA4FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (OUTLINED_FUNCTION_103_4())
  {
    OUTLINED_FUNCTION_42_12();
    __swift_destroy_boxed_opaque_existential_0((v12 + 47));
    v13 = OUTLINED_FUNCTION_88();
    sub_192907D90(v13, v14);
    OUTLINED_FUNCTION_42_12();
LABEL_10:
    OUTLINED_FUNCTION_8_36();

    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_145();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  v15 = v12[97];
  OUTLINED_FUNCTION_42_12();
  v16 = v12[51];
  __swift_project_boxed_opaque_existential_0(v12 + 47, v12[50]);
  v17 = OUTLINED_FUNCTION_4_45();
  v18(v17);
  if (!v15)
  {
    OUTLINED_FUNCTION_68_0();
    __swift_destroy_boxed_opaque_existential_0((v12 + 47));
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_0((v12 + 47));
  v12[99] = v12[98];
  v12[73] = v15;
  v19 = v15;
  v12[100] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  type metadata accessor for AMSError(0);
  OUTLINED_FUNCTION_93_4(v20);
  if (swift_dynamicCast())
  {
    v21 = v12[74];
    v12[102] = v21;
    v12[75] = v21;
    OUTLINED_FUNCTION_38_8();
    v24 = sub_1928F5AEC(v22, v23);
    OUTLINED_FUNCTION_94_2(v24);
    OUTLINED_FUNCTION_40_11();
    sub_192F9588C();
    if (v12[76] == 901)
    {

      v25 = swift_task_alloc();
      v12[104] = v25;
      *v25 = v12;
      OUTLINED_FUNCTION_24_18(v25);
      OUTLINED_FUNCTION_145();

      return FairPlayDeviceIdentity.resetSession(level:)(v26);
    }

    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_40_11();
    sub_192F9588C();
    if (*v16 == 905)
    {

      if (qword_1EAE124E8 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_30();
      v37 = swift_allocObject();
      OUTLINED_FUNCTION_50(v37, xmmword_192FBCD50);
      OUTLINED_FUNCTION_21_19("FairPlayDeviceIdentity: Max contexts reached - Reinitializing all FPDI sessions for current app identifier");
      v38 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_14_18(v38))
      {
        v39 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        v40 = OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_33_13(v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v39);
        v41 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v42 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v42, v43, v44, v45, v46, v47, v48, v49, v50);
        *(v51 + 56) = MEMORY[0x1E69E6158];
        v52 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v52);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v41);
      }

      v53 = swift_task_alloc();
      v12[107] = v53;
      *v53 = v12;
      OUTLINED_FUNCTION_29_17(v53);
      OUTLINED_FUNCTION_145();

      return sub_192CA6AFC();
    }
  }

  OUTLINED_FUNCTION_23_19();

  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_145();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t sub_192CA5388()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_27_18();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CA5480()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_77_7((v0 + 232));
  sub_192F95CEC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 840) = v1;
  *v1 = v2;
  v1[1] = sub_192CA552C;
  OUTLINED_FUNCTION_18_22();

  return sub_192CA3B04();
}

uint64_t sub_192CA552C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 848) = v0;

  OUTLINED_FUNCTION_7_33();
  v7();
  OUTLINED_FUNCTION_64();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CA5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_42_12();
  if (v13)
  {
    v14 = *(v12 + 816);
    __swift_destroy_boxed_opaque_existential_0(v12 + 456);

    v15 = *(v12 + 584);
    v16 = OUTLINED_FUNCTION_88();
    sub_192907D90(v16, v17);

    OUTLINED_FUNCTION_42_12();
LABEL_16:
    OUTLINED_FUNCTION_8_36();

    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_145();

    return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }

  v18 = *(v12 + 848);
  __swift_project_boxed_opaque_existential_0((v12 + 456), *(v12 + 480));
  v19 = OUTLINED_FUNCTION_4_45();
  v20(v19);
  if (!v18)
  {
    OUTLINED_FUNCTION_68_0();
    v42 = *(v12 + 816);
    __swift_destroy_boxed_opaque_existential_0(v12 + 456);

    goto LABEL_16;
  }

  __swift_destroy_boxed_opaque_existential_0(v12 + 456);
  *(v12 + 632) = v18;
  v21 = v18;
  if (swift_dynamicCast())
  {
    v22 = *(v12 + 640);
    *(v12 + 896) = v22;
    *(v12 + 648) = v22;
    sub_192F9588C();
    if (*(v12 + 656) == 905)
    {

      if (qword_1EAE124E8 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_30();
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_50(v23, xmmword_192FBCD50);
      OUTLINED_FUNCTION_21_19("FairPlayDeviceIdentity: Max contexts reached - Reinitializing all FPDI sessions for current app identifier");
      v24 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_14_18(v24))
      {
        v25 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        v26 = OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_34_14(v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v25);
        v27 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v28 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v28, v29, v30, v31, v32, v33, v34, v35, v36);
        *(v37 + 56) = MEMORY[0x1E69E6158];
        v38 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v38);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v27);
      }

      v39 = swift_task_alloc();
      *(v12 + 904) = v39;
      *v39 = v12;
      OUTLINED_FUNCTION_28_18(v39);
      OUTLINED_FUNCTION_145();

      return sub_192CA6AFC();
    }
  }

  else
  {
    v22 = *(v12 + 816);
  }

  OUTLINED_FUNCTION_23_19();

  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_145();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_192CA59BC()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 864) = v0;

  v5 = *(v2 + 712);
  if (v0)
  {
    v6 = sub_192CA69D4;
  }

  else
  {
    v6 = sub_192CA5ADC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CA5ADC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_77_7((v0 + 160));
  sub_192F95CEC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 872) = v1;
  *v1 = v2;
  v1[1] = sub_192CA5B88;
  OUTLINED_FUNCTION_18_22();

  return sub_192CA3B04();
}

uint64_t sub_192CA5B88()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 880) = v0;

  OUTLINED_FUNCTION_7_33();
  v7();
  OUTLINED_FUNCTION_64();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CA5CB0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_42_12();
  if (v1)
  {
    v2 = *(v0 + 816);
    __swift_destroy_boxed_opaque_existential_0(v0 + 416);

    v3 = *(v0 + 584);
    v4 = OUTLINED_FUNCTION_88();
    sub_192907D90(v4, v5);

    OUTLINED_FUNCTION_42_12();
LABEL_8:
    OUTLINED_FUNCTION_8_36();

    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_17_0();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  v6 = *(v0 + 880);
  __swift_project_boxed_opaque_existential_0((v0 + 416), *(v0 + 440));
  v7 = OUTLINED_FUNCTION_4_45();
  v8(v7);
  v9 = *(v0 + 816);
  if (!v6)
  {
    OUTLINED_FUNCTION_68_0();
    __swift_destroy_boxed_opaque_existential_0(v0 + 416);

    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 416);

  OUTLINED_FUNCTION_23_19();

  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_17_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_192CA5E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v14 = *(v12 + 776);
  *(v12 + 792) = *(v12 + 888);
  *(v12 + 584) = v14;
  v15 = v14;
  *(v12 + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  type metadata accessor for AMSError(0);
  OUTLINED_FUNCTION_93_4(v16);
  if (swift_dynamicCast())
  {
    v17 = *(v12 + 592);
    *(v12 + 816) = v17;
    *(v12 + 600) = v17;
    OUTLINED_FUNCTION_38_8();
    v20 = sub_1928F5AEC(v18, v19);
    OUTLINED_FUNCTION_94_2(v20);
    sub_192F9588C();
    if (*(v12 + 608) == 901)
    {

      v21 = swift_task_alloc();
      *(v12 + 832) = v21;
      *v21 = v12;
      OUTLINED_FUNCTION_24_18(v21);
      OUTLINED_FUNCTION_145();

      return FairPlayDeviceIdentity.resetSession(level:)(v22);
    }

    OUTLINED_FUNCTION_90_3();
    sub_192F9588C();
    if (*v13 == 905)
    {

      if (qword_1EAE124E8 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_30();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_50(v25, xmmword_192FBCD50);
      OUTLINED_FUNCTION_21_19("FairPlayDeviceIdentity: Max contexts reached - Reinitializing all FPDI sessions for current app identifier");
      v26 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_14_18(v26))
      {
        v27 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        v28 = OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_33_13(v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v27);
        v29 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v30 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v30, v31, v32, v33, v34, v35, v36, v37, v38);
        *(v39 + 56) = MEMORY[0x1E69E6158];
        v40 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v40);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v29);
      }

      v41 = swift_task_alloc();
      *(v12 + 856) = v41;
      *v41 = v12;
      OUTLINED_FUNCTION_29_17(v41);
      OUTLINED_FUNCTION_145();

      return sub_192CA6AFC();
    }
  }

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_145();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_192CA6148()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 912) = v0;

  v5 = *(v2 + 712);
  if (v0)
  {
    v6 = sub_192CA688C;
  }

  else
  {
    v6 = sub_192CA6268;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CA6268()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_77_7((v0 + 304));
  sub_192F95CEC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 920) = v1;
  *v1 = v2;
  v1[1] = sub_192CA6314;
  OUTLINED_FUNCTION_18_22();

  return sub_192CA3B04();
}

uint64_t sub_192CA6314()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 928) = v0;

  OUTLINED_FUNCTION_7_33();
  v7();
  OUTLINED_FUNCTION_64();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CA643C()
{
  OUTLINED_FUNCTION_47_0();
  if (OUTLINED_FUNCTION_103_4())
  {
    v1 = *(v0 + 896);
    v2 = *(v0 + 816);
    OUTLINED_FUNCTION_42_12();
    __swift_destroy_boxed_opaque_existential_0(v0 + 496);

    v3 = *(v0 + 632);
    v4 = OUTLINED_FUNCTION_88();
    sub_192907D90(v4, v5);

    OUTLINED_FUNCTION_42_12();
LABEL_8:
    OUTLINED_FUNCTION_8_36();

    v13 = OUTLINED_FUNCTION_10_26();

    return v14(v13);
  }

  v6 = *(v0 + 928);
  OUTLINED_FUNCTION_42_12();
  __swift_project_boxed_opaque_existential_0((v0 + 496), *(v0 + 520));
  v7 = OUTLINED_FUNCTION_4_45();
  v8(v7);
  v9 = *(v0 + 896);
  v10 = *(v0 + 816);
  if (!v6)
  {
    OUTLINED_FUNCTION_68_0();
    __swift_destroy_boxed_opaque_existential_0(v0 + 496);

    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 496);

  OUTLINED_FUNCTION_23_19();

  OUTLINED_FUNCTION_16_24();

  return v11();
}

uint64_t sub_192CA65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = *(v12 + 848);
  *(v12 + 632) = v13;
  v14 = v13;
  if (swift_dynamicCast())
  {
    v15 = *(v12 + 640);
    *(v12 + 896) = v15;
    *(v12 + 648) = v15;
    sub_192F9588C();
    if (*(v12 + 656) == 905)
    {

      if (qword_1EAE124E8 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_30();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_50(v16, xmmword_192FBCD50);
      OUTLINED_FUNCTION_21_19("FairPlayDeviceIdentity: Max contexts reached - Reinitializing all FPDI sessions for current app identifier");
      v17 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_14_18(v17))
      {
        v18 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        v19 = OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_34_14(v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v18);
        v20 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v21 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v21, v22, v23, v24, v25, v26, v27, v28, v29);
        *(v30 + 56) = MEMORY[0x1E69E6158];
        v31 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v31);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v20);
      }

      v32 = swift_task_alloc();
      *(v12 + 904) = v32;
      *v32 = v12;
      OUTLINED_FUNCTION_28_18(v32);
      OUTLINED_FUNCTION_145();

      return sub_192CA6AFC();
    }
  }

  else
  {
    v15 = *(v12 + 816);
  }

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_145();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_192CA688C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 896);

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_192CA6930()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 896);

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_192CA69D4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192CA6A68()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_8_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192CA6AFC()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 184) = v0;
  OUTLINED_FUNCTION_64();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CA6B84()
{
  OUTLINED_FUNCTION_65();
  v1 = objc_opt_self();
  v0[2] = 0;
  v2 = [v1 reset_];
  v3 = v0[2];
  if (v2)
  {
    v4 = v0[23];
    OUTLINED_FUNCTION_83_5();
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14FD8);
    sub_192F966DC();
    swift_endAccess();
    v0[24] = __swift_project_boxed_opaque_existential_0((v4 + 120), *(v4 + 144));
    v0[25] = type metadata accessor for FairPlayDeviceIdentitySessionCache();
    OUTLINED_FUNCTION_2_43();
    v0[26] = sub_1928F5AEC(v6, v7);
    sub_192F96B7C();
    OUTLINED_FUNCTION_55_10();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = v3;
    OUTLINED_FUNCTION_22_0();
    sub_192F958DC();

    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v12();
  }
}

uint64_t sub_192CA6D40()
{
  OUTLINED_FUNCTION_5();
  sub_192CB3DB4();
  *(v0 + 216) = 0;
  v1 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_192CA6DFC, v1, 0);
}

uint64_t sub_192CA6DFC()
{
  OUTLINED_FUNCTION_5();
  v0[28] = v0[27];
  v0[29] = __swift_project_boxed_opaque_existential_0((v0[23] + 120), *(v0[23] + 144));
  OUTLINED_FUNCTION_91();
  sub_192F96B7C();
  OUTLINED_FUNCTION_55_10();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_192CA6EBC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[28];
  sub_192CB3DB4();
  v0[30] = v1;
  if (v1)
  {
    v2 = v0[23];

    return MEMORY[0x1EEE6DFA0](sub_192CA7338, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v3();
  }
}

uint64_t sub_192CA6FB0()
{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  if (qword_1EAE124E8 != -1)
  {
    OUTLINED_FUNCTION_1_50();
  }

  v1 = qword_1EAE15458;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_30();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_50(v2, xmmword_192FBCD50);
  sub_19287AEE0();
  v25[0] = v3;
  OUTLINED_FUNCTION_31_0();
  v4._countAndFlagsBits = 0xD000000000000040;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v0[15];
  v0[10] = v0[16];
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_11_18();
  v6();
  sub_192878268((v0 + 7), (v0 + 11));
  OUTLINED_FUNCTION_63_7();
  if ((OUTLINED_FUNCTION_168_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v5 = v21;
    v25[0] = v21;
  }

  OUTLINED_FUNCTION_24();
  if (v7)
  {
    OUTLINED_FUNCTION_142();
    v5 = v22;
  }

  OUTLINED_FUNCTION_12();
  v25[0] = v5;
  sub_19292E1F0((v0 + 7), &unk_1EAE131B0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v2[2].n128_u64[0] = v5;
  v9 = sub_192F96E5C();
  if (os_log_type_enabled(v1, v9))
  {
    v10 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = v0[27];
    OUTLINED_FUNCTION_72();
    v12 = OUTLINED_FUNCTION_19();
    *(v12 + 16) = v25;
    v0[2] = v2;
    v0[3] = sub_192BB97CC;
    v0[4] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v13 = sub_192F9674C();
    v15 = v14;

    objc_autoreleasePoolPop(v10);
    v16 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v17 = OUTLINED_FUNCTION_90();
    *(v17 + 16) = v24;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1928FDB30();
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
    sub_192F9622C();

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v11 = v0[27];
  }

  v0[28] = 0;
  v0[29] = __swift_project_boxed_opaque_existential_0((v0[23] + 120), *(v0[23] + 144));
  OUTLINED_FUNCTION_91();
  sub_192F96B7C();
  OUTLINED_FUNCTION_55_10();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_192CA7338()
{
  v29 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  if (qword_1EAE124E8 != -1)
  {
    OUTLINED_FUNCTION_1_50();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_30();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_50(v1, xmmword_192FBCD50);
  sub_19287AEE0();
  v28[0] = v2;
  OUTLINED_FUNCTION_31_0();
  v3._countAndFlagsBits = 0xD000000000000041;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  *(v0 + 80) = *(v0 + 152);
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_11_18();
  v4();
  sub_192878268(v0 + 56, v0 + 88);
  OUTLINED_FUNCTION_63_7();
  *(v0 + 48) = 3;
  v5 = v28[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v5 = v26;
    v28[0] = v26;
  }

  OUTLINED_FUNCTION_24();
  if (v6)
  {
    OUTLINED_FUNCTION_142();
    v5 = v27;
  }

  OUTLINED_FUNCTION_12();
  v28[0] = v5;
  sub_19292E1F0(v0 + 56, &unk_1EAE131B0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  v1[2].n128_u64[0] = v5;
  v8 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_14_18(v8))
  {
    v9 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    v10 = OUTLINED_FUNCTION_19();
    *(v10 + 16) = v28;
    *(v0 + 16) = v1;
    *(v0 + 24) = sub_192BB97CC;
    *(v0 + 32) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v9);
    v11 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v12 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v22);
    OUTLINED_FUNCTION_139();

    objc_autoreleasePoolPop(v11);
  }

  v23 = *(v0 + 240);

  OUTLINED_FUNCTION_43();

  return v24();
}

uint64_t FairPlayDeviceIdentity.reinitializeSession(level:)()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C44;
  v3 = OUTLINED_FUNCTION_49_0();

  return FairPlayDeviceIdentity.resetSession(level:)(v3);
}

uint64_t sub_192CA76F0(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_192CAA808;

  return FairPlayDeviceIdentity.reinitializeSession(level:)();
}

uint64_t sub_192CA77CC(uint64_t a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;

  v8 = OUTLINED_FUNCTION_88();

  return sub_1928FB3BC(v8, v9);
}

uint64_t sub_192CA7848(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_192CA7904;

  return FairPlayDeviceIdentity.resetSession(level:)(a1);
}

uint64_t sub_192CA7904()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t FairPlayDeviceIdentity.resetSession(for:buyParams:bag:)()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CA7AD8;

  return FairPlayDeviceIdentity.fpdiLevel(for:bag:buyParams:)();
}

uint64_t sub_192CA7AD8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 32) = v9;
    *v9 = v5;
    v9[1] = sub_19293E6EC;
    v10 = OUTLINED_FUNCTION_49_0();

    return FairPlayDeviceIdentity.resetSession(level:)(v10);
  }
}

uint64_t FairPlayDeviceIdentity.fpdiLevel(for:bag:buyParams:)()
{
  OUTLINED_FUNCTION_3();
  v2[34] = v3;
  v2[35] = v1;
  v2[33] = v4;
  v6 = v5;
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v2[36] = v7;
  *v7 = v8;
  v7[1] = sub_192CA7CD8;

  return FairPlayDeviceIdentityBag.init(from:)((v2 + 15), v0);
}

uint64_t sub_192CA7CD8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  *(v8 + 296) = v0;

  if (v0)
  {
    v9 = sub_192CA8068;
  }

  else
  {
    v9 = sub_192CA7DE8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_192CA7DE8()
{
  v14 = v0;
  memcpy((v0 + 192), (v0 + 120), 0x48uLL);
  if (!*(v0 + 200))
  {
    v5 = OUTLINED_FUNCTION_6_38();
    v6 = sub_192F9679C();
    v7 = OUTLINED_FUNCTION_80_6(903);
    goto LABEL_13;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  sub_1929475F0(sub_1929478FC, v3, __src);
  sub_19292E1F0(v0 + 192, &qword_1EAE14FC8);

  memcpy((v0 + 16), __src, 0x61uLL);
  if (*(v0 + 24) == 1)
  {
    v5 = OUTLINED_FUNCTION_6_38();
    v6 = sub_192F9679C();
    v7 = OUTLINED_FUNCTION_80_6(904);
LABEL_13:
    v7;

    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v12();
  }

  v8 = *(v0 + 112);
  if (v8)
  {
    sub_19292E1F0(v0 + 16, &qword_1EAE14FD0);
  }

  else
  {
    v9 = sub_192F9775C();
    sub_19292E1F0(v0 + 16, &qword_1EAE14FD0);

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((DeviceIdentityIsSupported() & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_6_38();
    v6 = sub_192F9679C();
    v7 = OUTLINED_FUNCTION_80_6(902);
    goto LABEL_13;
  }

LABEL_9:
  v10 = *(v0 + 8);

  return v10(v8 & 1);
}

uint64_t sub_192CA8134(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v9 = sub_192F95A8C();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  sub_192F959AC();
  if (a2)
  {
    a2 = sub_192F9669C();
  }

  v5[8] = a2;
  v10 = a3;

  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_192CA82A8;

  return FairPlayDeviceIdentity.resetSession(for:buyParams:bag:)();
}

uint64_t sub_192CA82A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v14 = v12;
  v15 = *v13;
  v16 = *v13;
  OUTLINED_FUNCTION_6();
  *v17 = v16;
  v38 = v15[8];
  v18 = v15[6];
  v19 = v15[5];
  v20 = v15[4];
  v21 = v15[2];
  v22 = *v13;
  OUTLINED_FUNCTION_6();
  *v23 = v22;

  (*(v19 + 8))(v18, v20);

  if (v14)
  {
    v24 = sub_192F958CC();

    v25 = OUTLINED_FUNCTION_9_20();
    v26(v25, v24);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_9_20();
    v28(v27, 0);
  }

  _Block_release(v16[7]);

  OUTLINED_FUNCTION_183();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t FairPlayDeviceIdentity.initializeSession(for:buyParams:networkProvider:bag:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v4;
  v1[46] = v5;
  v1[43] = v6;
  v1[44] = v7;
  v8 = sub_192F95CFC();
  v1[49] = v8;
  OUTLINED_FUNCTION_26(v8);
  v1[50] = v9;
  v1[51] = OUTLINED_FUNCTION_44_0();
  v10 = v3;
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[52] = v11;
  *v11 = v12;
  v11[1] = sub_192CA8594;

  return FairPlayDeviceIdentityBag.init(from:)((v1 + 2), v3);
}

uint64_t sub_192CA8594()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 424) = v0;

  v7 = *(v3 + 384);
  if (v0)
  {
    v8 = sub_192CA8D00;
  }

  else
  {
    v8 = sub_192CA8694;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_192CA8694()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_77_7((v0 + 88));
  v1 = *(v0 + 96);
  *(v0 + 432) = *(v0 + 88);
  *(v0 + 440) = v1;
  *(v0 + 328) = *(v0 + 32);
  *(v0 + 448) = *(v0 + 120);
  v2 = *(v0 + 72);
  *(v0 + 272) = *(v0 + 56);
  *(v0 + 288) = v2;
  if (v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    *v3 = v0;
    v3[1] = sub_192CA8810;

    return FairPlayDeviceIdentity.fpdiLevel(for:bag:buyParams:)();
  }

  else
  {
    v5 = sub_192F9679C();
    OUTLINED_FUNCTION_31_0();
    v6 = sub_192F9679C();
    OUTLINED_FUNCTION_79_6(900);

    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v7();
  }
}

uint64_t sub_192CA8810()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 464) = v3;
  *(v5 + 472) = v0;

  if (v0)
  {
    v9 = *(v5 + 384);

    return MEMORY[0x1EEE6DFA0](sub_192CA8D5C, v9, 0);
  }

  else
  {
    *(v5 + 160) = *(v5 + 432);
    v10 = v5 + 160;
    v11 = *(v10 + 288);
    *(v10 + 16) = *(v10 + 168);
    *(v10 + 32) = v11;
    v12 = *(v10 + 128);
    *(v10 + 40) = *(v10 + 112);
    *(v10 + 56) = v12;
    v13 = swift_task_alloc();
    *(v10 + 320) = v13;
    *v13 = v7;
    v13[1] = sub_192CA89A8;
    OUTLINED_FUNCTION_41_11();

    return sub_192CA4CE0();
  }
}

uint64_t sub_192CA89A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_40_11();
    sub_19290CA6C(v7, v8);
  }

  OUTLINED_FUNCTION_17_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CA8AD0()
{
  OUTLINED_FUNCTION_178();
  swift_beginAccess();
  sub_192BD2DFC();
  v1 = v0[32];
  if (v1)
  {
    v3 = v0[50];
    v2 = v0[51];
    v4 = v0[49];
    v5 = v0[33];
    __swift_project_boxed_opaque_existential_0(v0 + 29, v0[32]);
    v6 = *(v1 - 8);
    v7 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_11_18();
    v8();
    sub_19292E1F0((v0 + 29), &qword_1EAE13298);
    swift_endAccess();
    (*(v5 + 64))(v1, v5);
    (*(v6 + 8))(v7, v1);
    sub_192F95C3C();
    sub_19292E1F0((v0 + 11), &qword_1EAE14FC8);
    (*(v3 + 8))(v2, v4);

    v9 = 0;
  }

  else
  {
    sub_19292E1F0((v0 + 29), &qword_1EAE13298);
    swift_endAccess();
    sub_19292E1F0((v0 + 11), &qword_1EAE14FC8);
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0[43], v9, 1, v0[49]);

  OUTLINED_FUNCTION_7();

  return v10();
}

uint64_t sub_192CA8D00()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CA8D5C()
{
  OUTLINED_FUNCTION_3();
  sub_19292E1F0(v0 + 88, &qword_1EAE14FC8);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CA8DD0()
{
  OUTLINED_FUNCTION_3();
  sub_19292E1F0(v0 + 88, &qword_1EAE14FC8);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CA8F00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a3;
  v10 = sub_192F95A8C();
  v6[5] = v10;
  v6[6] = *(v10 - 8);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = _Block_copy(a5);
  sub_192F959AC();
  if (a2)
  {
    a2 = sub_192F9669C();
  }

  v6[11] = a2;
  swift_unknownObjectRetain();
  v11 = a4;

  v12 = swift_task_alloc();
  v6[12] = v12;
  *v12 = v6;
  v12[1] = sub_192CA90E0;

  return FairPlayDeviceIdentity.initializeSession(for:buyParams:networkProvider:bag:)();
}

uint64_t sub_192CA90E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_5_0();
  *v16 = v15;
  v18 = v17[7];
  v19 = v17[6];
  v20 = v17[5];
  v21 = v17[3];
  v43 = *v13;

  (*(v19 + 8))(v18, v20);
  swift_unknownObjectRelease();

  if (v12)
  {
    v22 = v15[10];
    v23 = sub_192F958CC();

    v24 = OUTLINED_FUNCTION_9_20();
    v25(v24, 0, v23);

    _Block_release(v22);
  }

  else
  {
    v26 = v15[8];
    sub_192C2ACE8(v15[9], v26);
    v27 = sub_192F95CFC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
    v29 = 0;
    if (EnumTagSinglePayload != 1)
    {
      v30 = v15[8];
      v29 = sub_192F95C4C();
      OUTLINED_FUNCTION_28_2();
      (*(v31 + 8))(v30, v27);
    }

    v32 = v15[10];
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_64();
    v33();
    _Block_release(v32);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_183();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12);
}

uint64_t sub_192CA9418(uint64_t a1, void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v9 = sub_192F95A8C();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  sub_192F959AC();
  if (a3)
  {
    a3 = sub_192F9669C();
  }

  v5[8] = a3;
  v10 = a2;

  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_192CA958C;

  return FairPlayDeviceIdentity.fpdiLevel(for:bag:buyParams:)();
}

uint64_t sub_192CA958C()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = v5[7];
  v10 = v5[2];
  (*(v5[5] + 8))(v5[6], v5[4]);

  if (v2)
  {
    sub_192F958CC();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, v4, 0);
  }

  _Block_release(v6[7]);

  v11 = v8[1];

  return v11();
}

uint64_t sub_192CA97A0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v1;
  v3[82] = v5;
  v3[83] = v6;
  v3[84] = v0;

  if (v0)
  {
    v7 = v3[71];
    v8 = sub_192CA9B7C;
  }

  else
  {
    v9 = v3[71];
    sub_19292E1F0((v3 + 35), &qword_1EAE14FC8);
    v8 = sub_192CA98D0;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_192CA98D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBCD50;
  *(inited + 32) = sub_192F967CC();
  *(inited + 40) = v2;
  *(inited + 48) = sub_192F95B6C();
  *(inited + 56) = v3;
  v4 = sub_192F966CC();
  has_internal_content = os_variant_has_internal_content();
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[74];
  if (has_internal_content)
  {
    v11 = v0[75];
    v12 = v0[73];
    sub_192F967CC();

    MEMORY[0x193B10CE0](0x442D6C6576654C2DLL, 0xEC00000067756265);

    OUTLINED_FUNCTION_66_8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_192C9A100();
    OUTLINED_FUNCTION_66_8();
    sub_19290CA6C(v7, v6);

    (*(v8 + 8))(v11, v12);
  }

  else
  {
    (*(v8 + 8))(v0[75], v0[73]);
    OUTLINED_FUNCTION_66_8();
    sub_19290CA6C(v7, v6);
    OUTLINED_FUNCTION_66_8();
  }

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_192CA9B14()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CA9B7C()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = OUTLINED_FUNCTION_91();
  sub_192CA9F74(v4, v5);
  v6 = OUTLINED_FUNCTION_91();
  sub_192CA9F74(v6, v7);
  (*(v2 + 8))(v1, v3);
  sub_19292E1F0((v0 + 35), &qword_1EAE14FC8);

  OUTLINED_FUNCTION_43();

  return v8();
}

void FairPlayDeviceIdentity.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void FairPlayDeviceIdentity.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t FairPlayDeviceIdentity.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 120);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t FairPlayDeviceIdentity.__deallocating_deinit()
{
  FairPlayDeviceIdentity.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_192CA9D6C(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithLevel:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v2;
}

id sub_192CA9E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_192F95C4C();
  v15[0] = 0;
  v7 = [v3 initWithExistingSession:a1 creationDate:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_192F95CFC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a2, v9);
  }

  else
  {
    v12 = v15[0];
    sub_192F958DC();

    swift_willThrow();
    v13 = sub_192F95CFC();
    (*(*(v13 - 8) + 8))(a2, v13);
  }

  return v7;
}

uint64_t sub_192CA9F74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_192915F68();
  }

  return result;
}

uint64_t sub_192CAA0B8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_95_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  v3 = OUTLINED_FUNCTION_11_30();

  return v4(v3);
}

void sub_192CAA164()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_95_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_85();

  __asm { BR              X6 }
}

uint64_t objectdestroy_22Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_192CAA26C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_95_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C44;
  v3 = OUTLINED_FUNCTION_11_30();

  return v4(v3);
}

uint64_t sub_192CAA318()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  v4[1] = sub_192919C40;
  v6 = OUTLINED_FUNCTION_49_0();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_37Tm()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_192CAA3FC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  v4[1] = sub_192919C40;
  v6 = OUTLINED_FUNCTION_49_0();

  return v7(v6, v1, v2);
}

uint64_t sub_192CAA4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35[1] = a4;
  v11 = sub_192F95CFC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v35 - v19;
  v21 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a1, a6);
  v25 = *(a2 + 32);
  if ((*(a2 + 48) & 1) != 0 || ((v29 = *(a2 + 40), v29 >= 0.0) ? (v30 = v29 > 1.0) : (v30 = 1), v30 || v25 <= 0.0))
  {
    (*(a7 + 64))(a6, a7);
    sub_192F95C3C();
    v26 = *(v12 + 8);
    v26(v16, v11);
    sub_1928F5AEC(&qword_1EAE121D8, MEMORY[0x1E6969530]);
    v27 = sub_192F9675C();
    v26(v20, v11);
    v28 = v27 ^ 1;
  }

  else
  {
    (*(a7 + 64))(a6, a7);
    sub_192F95C3C();
    v31 = *(v12 + 8);
    v31(v16, v11);
    sub_192F95C2C();
    v33 = v32;
    v31(v20, v11);
    v28 = v33 / v25 < v29;
  }

  (*(v21 + 8))(v24, a6);
  return v28 & 1;
}

uint64_t sub_192CAA7A8(uint64_t a1)
{
  v2 = type metadata accessor for FairPlayDeviceIdentitySessionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *OUTLINED_FUNCTION_77_7(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_1928F6068(v0 + 240, v0 + 320);
}

BOOL OUTLINED_FUNCTION_103_4()
{
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);

  return sub_192CABC70(v3, v2);
}

uint64_t sub_192CAA884(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_13_20();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAA948()
{
  OUTLINED_FUNCTION_62_0();
  sub_192F968BC();
}

uint64_t sub_192CAA9AC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  sub_192F968BC();
}

uint64_t sub_192CAAA38()
{
  sub_192F968BC();
}

uint64_t sub_192CAAAB4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  sub_192F968BC();
}

uint64_t sub_192CAAB58(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      break;
    default:
      OUTLINED_FUNCTION_13_20();
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAAC18()
{
  sub_192F968BC();
}

uint64_t sub_192CAAC88()
{
  sub_192F968BC();
}

uint64_t sub_192CAAD80()
{
  sub_192F968BC();
}

uint64_t sub_192CAAE3C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_67_9();
      break;
    case 4:
      OUTLINED_FUNCTION_65_6();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAAED8()
{
  OUTLINED_FUNCTION_67_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_65_6();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAAF78()
{
  sub_192F968BC();
}

uint64_t sub_192CAAFD8()
{
  sub_192F968BC();
}

uint64_t sub_192CAB05C()
{
  sub_192F968BC();
}

uint64_t sub_192CAB0B4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_13_20();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAB198()
{
  sub_192F968BC();
}

uint64_t sub_192CAB234()
{
  sub_192F968BC();
}

uint64_t sub_192CAB29C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_20();
  }

  sub_192F968BC();
}

uint64_t sub_192CAB334()
{
  sub_192F968BC();
}

uint64_t sub_192CAB3CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_192F968BC();
}

uint64_t sub_192CAB424(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_13_20();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAB50C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_13_20();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAB604()
{
  sub_192F968BC();
}

uint64_t sub_192CAB680()
{
  sub_192F968BC();
}

uint64_t sub_192CAB754()
{
  OUTLINED_FUNCTION_62_0();
  sub_192F968BC();
}

uint64_t sub_192CAB7CC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_69_0();
  }

  sub_192F968BC();
}

uint64_t sub_192CAB880(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_13_20();
      break;
    default:
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CAB938(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_13_20();
      break;
  }

  sub_192F968BC();
}

uint64_t sub_192CABA14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8);
    --v5;
  }

  while (!v3);
  return result;
}

uint64_t sub_192CABA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_192CACC30(v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
      }
    }
  }
}

uint64_t sub_192CABB18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    if (*(a2 + 16))
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = sub_1929225DC(v5, v6);
      if (v8)
      {
        v9 = (*(a2 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];

        MEMORY[0x193B10CE0](v10, v11);
      }
    }

    i += 2;
  }
}

uint64_t sub_192CABBDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_192CABC70(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_192CABCC4(char a1)
{
  if (a1)
  {
    return 1819047270;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_192CABCF0(char a1)
{
  result = 0x73726564616568;
  switch(a1)
  {
    case 1:
      result = 0x736D61726170;
      break;
    case 2:
      result = 0x7365696B6F6F63;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 1752457584;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192CABD74(char a1)
{
  if (a1)
  {
    return 0x3231352D414853;
  }

  else
  {
    return 0x3635322D414853;
  }
}

uint64_t sub_192CABDC8()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_192CABCC4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CABE64()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_192CABCF0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CABF00()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_192CABD74(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

void sub_192CABF7C()
{
  OUTLINED_FUNCTION_168();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F06F0B18[v2++ + 32];
    v5 = 0xE700000000000000;
    v6 = 2036625250;
    v7 = 0x7365696B6F6F63;
    switch(v4)
    {
      case 1:
        v6 = 1752457584;
        goto LABEL_4;
      case 2:
        goto LABEL_11;
      case 3:
        v7 = 0x73726564616568;
        goto LABEL_11;
      case 4:
        v5 = 0xE600000000000000;
        v7 = 0x736D61726170;
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v3 = v11;
        }

        OUTLINED_FUNCTION_8_3();
        if (v8)
        {
          OUTLINED_FUNCTION_1_0();
          v3 = v12;
        }

        v9 = 0;
        v6 = v7;
        break;
      default:
LABEL_4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v3 = v13;
        }

        OUTLINED_FUNCTION_8_3();
        v9 = 1;
        if (v8)
        {
          sub_1928F6488();
          v3 = v14;
        }

        v5 = 0xE400000000000000;
        break;
    }

    *(v3 + 16) = v0;
    v10 = v3 + 24 * v1;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    *(v10 + 48) = v9;
  }

  while (v2 != 5);
  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CAC0DC()
{
  OUTLINED_FUNCTION_18_9();
  sub_192F9750C();
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_8();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CAC13C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAC0DC();
  *a1 = result;
  return result;
}

uint64_t sub_192CAC16C()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_192943ACC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CAC194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAC0DC();
  *a1 = result;
  return result;
}

uint64_t sub_192CAC1D0(uint64_t a1)
{
  v2 = sub_1929438C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CAC20C(uint64_t a1)
{
  v2 = sub_1929438C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192CAC248()
{
  OUTLINED_FUNCTION_168();
  v108 = v3;
  v109 = v2;
  v106 = v4;
  v104 = v5;
  v103 = v6;
  v101 = v7;
  v110 = v8;
  v10 = v9;
  v11 = sub_192F9665C();
  OUTLINED_FUNCTION_4_0();
  v100 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_15();
  v99 = v16 - v15;
  OUTLINED_FUNCTION_35_1();
  v17 = sub_192F9651C();
  v18 = OUTLINED_FUNCTION_142_0(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_15();
  v98 = v21 - v20;
  OUTLINED_FUNCTION_35_1();
  sub_192F9664C();
  OUTLINED_FUNCTION_4_0();
  v96 = v23;
  v97 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  OUTLINED_FUNCTION_15();
  v95 = v26 - v25;
  OUTLINED_FUNCTION_35_1();
  v27 = sub_192F9650C();
  v28 = OUTLINED_FUNCTION_142_0(v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_15();
  v94 = v31 - v30;
  OUTLINED_FUNCTION_35_1();
  v32 = sub_192F9681C();
  OUTLINED_FUNCTION_4_0();
  v102 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0);
  OUTLINED_FUNCTION_142_0(v39);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_34();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  OUTLINED_FUNCTION_142_0(v42);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_22_17();
  v45 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_15();
  v52 = v51 - v50;
  sub_192F953CC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v45) == 1)
  {
    sub_1928FC07C(v1, &unk_1EAE144B0);
  }

  else
  {
    v92 = v11;
    v93 = v47;
    (*(v47 + 32))(v52, v1, v45);
    v53 = sub_192F959EC();
    v55 = v54;
    v105 = sub_192F953FC();
    v107 = v56;
    sub_192F9558C();
    v57 = sub_192F955BC();
    if (__swift_getEnumTagSinglePayload(v0, 1, v57) == 1)
    {
      v58 = sub_1928FC07C(v0, &qword_1EAE142B0);
      v60 = 0;
    }

    else
    {
      v60 = sub_192F9556C();
      v58 = (*(*(v57 - 8) + 8))(v0, v57);
    }

    v111 = 0;
    v112 = 0xE000000000000000;
    MEMORY[0x1EEE9AC00](v58, v59);
    *(&v91 - 96) = v61;
    *(&v91 - 95) = v62;
    v63 = v106;
    *(&v91 - 11) = v104;
    *(&v91 - 10) = v63;
    v64 = v107;
    v65 = v105;
    *(&v91 - 9) = v108;
    *(&v91 - 8) = v65;
    *(&v91 - 7) = v64;
    *(&v91 - 6) = &v111;
    *(&v91 - 5) = v10;
    *(&v91 - 4) = v60;
    v66 = v110;
    *(&v91 - 3) = v109;
    *(&v91 - 2) = v53;
    *(&v91 - 1) = v55;
    sub_192CABA14(sub_192CB0F20, (&v91 - 14), v66);

    v67 = HIBYTE(v112) & 0xF;
    if ((v112 & 0x2000000000000000) == 0)
    {
      v67 = v111 & 0xFFFFFFFFFFFFLL;
    }

    if (v67 && (sub_192F9680C(), sub_192F967DC(), v69 = v68, (*(v102 + 8))(v38, v32), v69 >> 60 != 15))
    {
      if (v101)
      {
        sub_192CB0F64(&qword_1EAE15100);
        v70 = v99;
        v71 = v92;
        OUTLINED_FUNCTION_73();
        sub_192F964FC();
        v72 = OUTLINED_FUNCTION_22_21();
        sub_192907D90(v72, v73);
        v74 = OUTLINED_FUNCTION_22_21();
        sub_192CC4530(v74, v75, v70);
        v76 = OUTLINED_FUNCTION_22_21();
        sub_192915F68(v76, v77);
        v78 = v98;
        OUTLINED_FUNCTION_73();
        sub_192F964EC();
        (*(v100 + 8))(v70, v71);
        sub_192BDFA7C(v78);
      }

      else
      {
        sub_192CB0F64(&qword_1ED6DE308);
        v79 = v95;
        v80 = v97;
        OUTLINED_FUNCTION_73();
        sub_192F964FC();
        v81 = OUTLINED_FUNCTION_22_21();
        sub_192907D90(v81, v82);
        v83 = OUTLINED_FUNCTION_22_21();
        sub_192CC458C(v83, v84, v79);
        v85 = OUTLINED_FUNCTION_22_21();
        sub_192915F68(v85, v86);
        v87 = v94;
        OUTLINED_FUNCTION_73();
        sub_192F964EC();
        (*(v96 + 8))(v79, v80);
        sub_192BDFA34(v87);
      }

      v88 = v93;
      sub_192915F68(v105, v107);
      v89 = OUTLINED_FUNCTION_22_21();
      sub_192915F68(v89, v90);
      (*(v88 + 8))(v52, v45);
    }

    else
    {
      (*(v93 + 8))(v52, v45);
      sub_192915F68(v105, v107);
    }
  }

  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CAC904(_BYTE *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v29 = a12;
  v30 = a13;
  v31 = a9;
  v32 = a6;
  v18 = HIBYTE(a2);
  v19 = sub_192F9681C();
  result = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  switch(*a1)
  {
    case 1:
      if (a5 && *(a5 + 16) && a10)
      {
        if (*(a10 + 16))
        {

          result = sub_192CABA70(a5, a10, v34);
        }
      }

      break;
    case 2:
      if (a3 && *(a3 + 16) && a11 && *(a11 + 16))
      {

        result = sub_192CABB18(a3, a11);
      }

      break;
    case 3:
      if (a2 != 2 && (a2 & 1) != 0 && v33 >> 60 != 15)
      {
        switch(v33 >> 62)
        {
          case 1uLL:
            v25 = v32;
            v26 = v32 >> 32;
            goto LABEL_29;
          case 2uLL:
            v25 = *(v32 + 16);
            v26 = *(v32 + 24);
LABEL_29:
            if (v25 == v26)
            {
              return result;
            }

            sub_192915F80(v32, v33);
LABEL_31:
            sub_192F9680C();
            v27 = sub_192F967EC();
            if (v28)
            {
              MEMORY[0x193B10CE0](v27);
              sub_192915F68(v32, v33);
            }

            else
            {
LABEL_33:
              result = sub_192915F68(v32, v33);
            }

            break;
          case 3uLL:
            goto LABEL_33;
          default:
            if ((v33 & 0xFF000000000000) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
        }
      }

      break;
    case 4:
      if (v18 != 2 && (a2 & 0x100) != 0)
      {
        result = v29;
        v24 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v24 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          result = MEMORY[0x193B10CE0]();
        }
      }

      break;
    default:
      if (a4 && *(a4 + 16))
      {
        MEMORY[0x1EEE9AC00](result, v22);
        v23 = v34;
        *(&v29 - 2) = v31;
        *(&v29 - 1) = v23;
        result = sub_192CABBDC(sub_192CB0FA8, (&v29 - 4), a4);
      }

      break;
  }

  return result;
}

uint64_t sub_192CACBD8()
{
  result = sub_192F953DC();
  if (v1)
  {
    MEMORY[0x193B10CE0](result);
  }

  return result;
}

uint64_t sub_192CACC30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v58 = sub_192F9550C();
  v5 = *(v58 - 8);
  v7 = MEMORY[0x1EEE9AC00](v58, v6);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v53 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v48 - v13;
  v15 = 0;
  v16 = *a1;
  v17 = a1[1];
  v18 = *(a2 + 16);
  v54 = a2;
  v55 = v18;
  v56 = (v5 + 8);
  v57 = v5 + 16;
  v50 = (v5 + 32);
  v52 = MEMORY[0x1E69E7CC0];
  while (v55 != v15)
  {
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = *(v5 + 72);
    (*(v5 + 16))(v14, v54 + v19 + v20 * v15, v58);
    if (sub_192F954EC() == v16 && v21 == v17)
    {
      v23 = v16;

LABEL_10:
      v49 = *v50;
      v49(v51, v14, v58);
      v25 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_192875310(0, *(v25 + 16) + 1, 1);
        v25 = v59;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v52 = v28 + 1;
        sub_192875310(v27 > 1, v28 + 1, 1);
        v29 = v52;
        v25 = v59;
      }

      ++v15;
      *(v25 + 16) = v29;
      v52 = v25;
      v49((v25 + v19 + v28 * v20), v51, v58);
      v16 = v23;
    }

    else
    {
      v23 = v16;
      v24 = sub_192F9775C();

      if (v24)
      {
        goto LABEL_10;
      }

      (*v56)(v14, v58);
      ++v15;
      v16 = v23;
    }
  }

  v30 = *(v52 + 16);
  if (v30)
  {
    v31 = v52 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v32 = *(v5 + 72);
    v33 = *(v5 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      v35 = v53;
      v36 = v58;
      v33(v53, v31, v58);
      v37 = sub_192F954FC();
      v39 = v38;
      (*v56)(v35, v36);
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1928FE290();
          v34 = v42;
        }

        v40 = *(v34 + 16);
        if (v40 >= *(v34 + 24) >> 1)
        {
          sub_1928FE290();
          v34 = v43;
        }

        *(v34 + 16) = v40 + 1;
        v41 = v34 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v39;
      }

      v31 += v32;
      --v30;
    }

    while (v30);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v59 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  sub_19294844C(&unk_1ED6DEEC0);
  v44 = sub_192F9674C();
  v46 = v45;

  MEMORY[0x193B10CE0](v44, v46);
}

BOOL sub_192CAD07C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 2)
  {
    if (a5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a5 == 2 || ((a5 ^ a1) & 1) != 0)
    {
      return result;
    }
  }

  if (BYTE1(a1) == 2)
  {
    if (BYTE1(a5) != 2)
    {
      return 0;
    }

LABEL_11:
    if (a2)
    {
      if (!a6 || (sub_192C1C680(a2, a6) & 1) == 0)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }

    if (a3)
    {
      if (!a7 || (sub_192C1C680(a3, a7) & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (!a8)
      {
        return 0;
      }

      v14 = OUTLINED_FUNCTION_48();
      return (sub_192C1C680(v14, v15) & 1) != 0;
    }

    return !a8;
  }

  result = 0;
  if (BYTE1(a5) != 2 && ((BYTE1(a5) ^ BYTE1(a1)) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_192CAD17C()
{
  OUTLINED_FUNCTION_165_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE150A0);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_40_12(v3, v3[3]);
  sub_1929438C4();
  sub_192F9799C();
  OUTLINED_FUNCTION_11_1();
  sub_192F9765C();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_192F9765C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
    sub_192CB00A0(&qword_1EAE133F8);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_11_31();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_167();
}

void sub_192CAD34C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = HIBYTE(a2);
  if (a2 != 2)
  {
    sub_192F978BC();
  }

  sub_192F978BC();
  if (v8 != 2)
  {
    sub_192F978BC();
  }

  sub_192F978BC();
  if (a3)
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_5_16();
    sub_192C1E504();
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_192F978BC();
    if (a5)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_192F978BC();
    return;
  }

  sub_192F978BC();
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_192F978BC();
  sub_192C1E504();
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_192F978BC();
  OUTLINED_FUNCTION_48();

  sub_192C1E504();
}

uint64_t sub_192CAD454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_12();
  v8 = v7;
  OUTLINED_FUNCTION_24_0();
  sub_192CAD34C(v10, v8, v5, v4, a4);
  return sub_192F978DC();
}

uint64_t sub_192CAD4F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_192F9789C();
  sub_192CAD34C(v6, v4, v1, v2, v3);
  return sub_192F978DC();
}

void sub_192CAD574()
{
  OUTLINED_FUNCTION_168();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = &unk_1F06F0BD8 + v2++;
    v5 = 0xE900000000000073;
    v6 = 0xE400000000000000;
    v7 = 1953722216;
    v8 = 0x6D61726150797562;
    switch(v4[32])
    {
      case 1:
        v6 = 0xE800000000000000;
        v7 = 0x78656765526C7275;
        goto LABEL_11;
      case 2:
        v7 = 1752457584;
        goto LABEL_11;
      case 3:
        goto LABEL_5;
      case 4:
        v5 = 0xE600000000000000;
        v8 = 0x6E6F69746361;
LABEL_5:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v3 = v14;
        }

        OUTLINED_FUNCTION_8_3();
        if (v9)
        {
          OUTLINED_FUNCTION_1_0();
          v3 = v15;
        }

        v10 = 6;
        v7 = v8;
        v6 = v5;
        break;
      default:
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v3 = v12;
        }

        OUTLINED_FUNCTION_8_3();
        if (v9)
        {
          OUTLINED_FUNCTION_1_0();
          v3 = v13;
        }

        v10 = 4;
        break;
    }

    *(v3 + 16) = v0;
    v11 = v3 + 24 * v1;
    *(v11 + 32) = v7;
    *(v11 + 40) = v6;
    *(v11 + 48) = v10;
  }

  while (v2 != 5);
  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CAD6C8()
{
  OUTLINED_FUNCTION_18_9();
  sub_192F9750C();
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_8();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CAD728@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAD6C8();
  *a1 = result;
  return result;
}

uint64_t sub_192CAD758()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_1929426C4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CAD780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAD6C8();
  *a1 = result;
  return result;
}

uint64_t sub_192CAD7BC(uint64_t a1)
{
  v2 = sub_192942494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CAD7F8(uint64_t a1)
{
  v2 = sub_192942494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192CAD834()
{
  OUTLINED_FUNCTION_168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15118);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v0, v1);

  while (1)
  {

    sub_192F95ECC();
    sub_1929483F8();
    OUTLINED_FUNCTION_3_46();
    sub_19294844C(&unk_1EAE121D0);
    v2 = sub_192F9672C();
    v3 = OUTLINED_FUNCTION_73();
    v4(v3);

    if (!*(v2 + 16))
    {
      break;
    }

    sub_192F969EC();
    v5 = sub_192F9705C();
    v7 = v6;

    MEMORY[0x193B10CE0](v5, v7);

    sub_192CB0FC4();
    sub_192F9689C();
  }

  OUTLINED_FUNCTION_166();
}

void sub_192CADA40()
{
  OUTLINED_FUNCTION_168();
  v35 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15108);
  OUTLINED_FUNCTION_142_0(v3);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v30 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15110);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v30 - v9;
  v31 = v2 + 64;
  OUTLINED_FUNCTION_0_29();
  v12 = v11 & v10;
  v32 = (v13 + 63) >> 6;
  v33 = (v14 + 32);
  v34 = (v14 + 8);
  v36 = v2;

  v15 = 0;
  v16 = v38;
  while (v12)
  {
LABEL_7:
    v18 = (*(v36 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();

    sub_192F95EDC();
    v21 = v39;
    v22 = v40;
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
    (*v33)(v38, v22, v21);
    v23 = v35;
    if (!*(v35 + 16) || (v24 = sub_1929225DC(v19, v20), (v25 & 1) == 0))
    {
      (*v34)(v38, v39);

      goto LABEL_13;
    }

    v12 &= v12 - 1;
    v26 = (*(v23 + 56) + 16 * v24);
    v27 = v26[1];
    v41 = *v26;
    v42 = v27;
    v37 = sub_1929483F8();
    OUTLINED_FUNCTION_3_46();
    sub_19294844C(&unk_1ED6DE480);

    v28 = v39;
    v29 = sub_192F9673C();
    (*v34)(v16, v28);

    if ((v29 & 1) == 0)
    {
LABEL_10:

LABEL_13:
      OUTLINED_FUNCTION_166();
      return;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v32)
    {
      goto LABEL_10;
    }

    v12 = *(v31 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_192CADD90(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a1[4] == a2[4] && v10 == v11;
    if (!v12 && (sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a2[6];
  if (a1[6])
  {
    if (!v13)
    {
      return 0;
    }

    sub_192CB026C();
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v16 = a2[7];
  if (a1[7])
  {
    if (v16)
    {

      v17 = OUTLINED_FUNCTION_48();
      v19 = sub_192CB0D78(v17, v18);

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_192CADEE0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15088);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_40_12(a1, a1[3]);
  sub_192942494();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_7_3();
  sub_192F9764C();
  if (!v1)
  {
    OUTLINED_FUNCTION_7_3();
    sub_192F9764C();
    OUTLINED_FUNCTION_7_3();
    sub_192F9764C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13B70);
    sub_192CB003C(&qword_1EAE14F60);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15090);
    sub_192CAFF90();
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
  }

  v5 = OUTLINED_FUNCTION_28_5();
  return v6(v5);
}

uint64_t sub_192CAE0F0(const void *a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_5_16();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  if (v2[3])
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_5_16();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  if (v2[5])
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_5_16();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  v4 = v2[6];
  sub_192F978BC();
  if (v4)
  {
    sub_192C1F458(a1, v4);
  }

  if (!v2[7])
  {
    return sub_192F978BC();
  }

  sub_192F978BC();
  v5 = OUTLINED_FUNCTION_48();

  return sub_192C1F594(v5, v6);
}

uint64_t sub_192CAE204()
{
  OUTLINED_FUNCTION_24_0();
  sub_192CAE0F0(v1);
  return sub_192F978DC();
}

uint64_t sub_192CAE25C()
{
  sub_192F9789C();
  sub_192CAE0F0(v1);
  return sub_192F978DC();
}

uint64_t sub_192CAE29C()
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    if (byte_1F06F0C98[v2 + 32])
    {
      v4 = xmmword_192FCA830;
      if (byte_1F06F0C98[v2 + 32] != 1)
      {
        v4 = xmmword_192FCA840;
      }

      v14 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_11();
        v3 = v9;
      }

      OUTLINED_FUNCTION_8_3();
      v5 = v14;
      if (v6)
      {
        OUTLINED_FUNCTION_1_0();
        v5 = v14;
        v3 = v10;
      }

      v7 = 6;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_11();
        v3 = v11;
      }

      OUTLINED_FUNCTION_8_3();
      if (v6)
      {
        OUTLINED_FUNCTION_1_0();
        v3 = v12;
      }

      v7 = 4;
      v5 = xmmword_192FCA850;
    }

    ++v2;
    *(v3 + 16) = v0;
    v8 = v3 + 24 * v1;
    *(v8 + 32) = v5;
    *(v8 + 48) = v7;
  }

  while (v2 != 3);
  return v3;
}

uint64_t sub_192CAE3C0()
{
  OUTLINED_FUNCTION_18_9();
  sub_192F9750C();
  OUTLINED_FUNCTION_35_0();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CAE424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAE3C0();
  *a1 = result;
  return result;
}

uint64_t sub_192CAE454()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_192941900(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CAE47C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAE3C0();
  *a1 = result;
  return result;
}

uint64_t sub_192CAE4B8(uint64_t a1)
{
  v2 = sub_192941668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CAE4F4(uint64_t a1)
{
  v2 = sub_192941668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static FairPlayDeviceIdentityBag.SignedActions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_75_6();
  v1 = *(v0 + 64);
  v2 = *(v0 + 65);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v6 + 64);
  v8 = *(v6 + 65);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  if ((sub_192CADD90(v0, v6) & 1) != 0 && sub_192CAD07C(v1 | (v2 << 8), v3, v4, v5, v7 | (v8 << 8), v9, v10, v11))
  {
    OUTLINED_FUNCTION_38_9();

    sub_192BBD1C0(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }
}

void FairPlayDeviceIdentityBag.SignedActions.encode(to:)()
{
  OUTLINED_FUNCTION_165_0();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14FE8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_7();
  v6 = v0[1];
  v17 = *v0;
  v18 = v6;
  v7 = v0[3];
  v19 = v0[2];
  v20 = v7;
  v8 = *(v0 + 96);
  OUTLINED_FUNCTION_40_12(v3, v3[3]);
  sub_192941668();
  OUTLINED_FUNCTION_21_0();
  LOBYTE(v13) = v8;
  LOBYTE(v11) = 0;
  sub_192CAE82C();
  sub_192F976CC();
  if (!v1)
  {
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v12 = 1;
    sub_1929430CC(&v17, &v11);
    sub_192CAE880();
    OUTLINED_FUNCTION_7_3();
    sub_192F976CC();
    OUTLINED_FUNCTION_18_23();
    sub_192CAE8D4();
    OUTLINED_FUNCTION_7_3();
    sub_192F976CC();
  }

  v9 = OUTLINED_FUNCTION_28_5();
  v10(v9);
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_167();
}

unint64_t sub_192CAE82C()
{
  result = qword_1EAE14FF0;
  if (!qword_1EAE14FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14FF0);
  }

  return result;
}

unint64_t sub_192CAE880()
{
  result = qword_1EAE14FF8;
  if (!qword_1EAE14FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14FF8);
  }

  return result;
}

unint64_t sub_192CAE8D4()
{
  result = qword_1EAE15000;
  if (!qword_1EAE15000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15000);
  }

  return result;
}

uint64_t FairPlayDeviceIdentityBag.SignedActions.hash(into:)(const void *a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 64);
  sub_192CAE0F0(a1);
  sub_192CAD34C(a1, v6, v3, v4, v5);
  sub_192F968BC();
}

uint64_t FairPlayDeviceIdentityBag.SignedActions.hashValue.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  OUTLINED_FUNCTION_24_0();
  sub_192CAE0F0(v6);
  sub_192CAD34C(v6, v4, v1, v2, v3);
  sub_192F968BC();

  return sub_192F978DC();
}

uint64_t sub_192CAEAA0()
{
  sub_192F9789C();
  FairPlayDeviceIdentityBag.SignedActions.hash(into:)(v1);
  return sub_192F978DC();
}

void sub_192CAEAE0()
{
  OUTLINED_FUNCTION_75_6();
  v2 = 0;
  OUTLINED_FUNCTION_62_0();
  v19 = v3;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = byte_1F06F0D50[v2++ + 32];
    v6 = 0xE500000000000000;
    v7 = 0x726564726FLL;
    switch(v5)
    {
      case 1:
        goto LABEL_14;
      case 2:
        v7 = 0x612D64656E676973;
        v6 = 0xEE00736E6F697463;
LABEL_14:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v4 = v11;
        }

        OUTLINED_FUNCTION_19_18();
        if (v8)
        {
          OUTLINED_FUNCTION_1_0();
          v4 = v12;
        }

        v9 = 0;
        break;
      case 3:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v4 = v15;
        }

        OUTLINED_FUNCTION_19_18();
        if (v8)
        {
          OUTLINED_FUNCTION_1_0();
          v4 = v16;
        }

        v9 = 2;
        v7 = 0xD000000000000010;
        v6 = 0x8000000193017C90;
        break;
      case 4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v4 = v13;
        }

        v1 = *(v4 + 16);
        v0 = v1 + 1;
        v7 = 0xD00000000000001ALL;
        if (v1 >= *(v4 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_0();
          v4 = v14;
        }

        v9 = 2;
        v6 = v19;
        break;
      default:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_11();
          v4 = v17;
        }

        OUTLINED_FUNCTION_19_18();
        if (v8)
        {
          OUTLINED_FUNCTION_1_0();
          v4 = v18;
        }

        v9 = 4;
        v7 = 0x676C612D68736168;
        v6 = 0xE90000000000006FLL;
        break;
    }

    *(v4 + 16) = v0;
    v10 = v4 + 24 * v1;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
    *(v10 + 48) = v9;
  }

  while (v2 != 5);
  OUTLINED_FUNCTION_38_9();
}

uint64_t sub_192CAECCC()
{
  OUTLINED_FUNCTION_18_9();
  sub_192F9750C();
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_8();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CAED0C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 17);
  if (*(a1 + 17) == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || (sub_192BBD334() & 1) == 0)
  {
    return 0;
  }

  if ((sub_192C1C70C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);

  return sub_192C1C8C0(v6, v7);
}

uint64_t sub_192CAEDD4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE150B8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_40_12(a1, a1[3]);
  sub_19293FB30();
  OUTLINED_FUNCTION_21_0();
  sub_192CB0104();
  OUTLINED_FUNCTION_33_14();
  OUTLINED_FUNCTION_11_1();
  sub_192F9768C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE150C8);
    sub_1929408F0(&unk_1EAE150D0);
    OUTLINED_FUNCTION_33_14();
    OUTLINED_FUNCTION_11_1();
    sub_192F976CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE150E0);
    sub_192CB01AC(&unk_1EAE150E8);
    OUTLINED_FUNCTION_33_14();
    OUTLINED_FUNCTION_11_1();
    sub_192F976CC();
    OUTLINED_FUNCTION_11_1();
    sub_192F976AC();
    OUTLINED_FUNCTION_11_1();
    sub_192F9766C();
  }

  v5 = OUTLINED_FUNCTION_28_5();
  return v6(v5);
}

void sub_192CAF024()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B11CB0](*&v1);
  if (*(v0 + 16) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_192F978BC();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193B11CB0](v3);
  }

  if (*(v0 + 17) == 2)
  {
    sub_192F978BC();
  }

  else
  {
    sub_192F978BC();
    sub_192F968BC();
  }

  sub_192C1E874();

  sub_192C1E568();
}

uint64_t sub_192CAF118()
{
  OUTLINED_FUNCTION_24_0();
  sub_192CAF024();
  return sub_192F978DC();
}

uint64_t sub_192CAF150()
{
  OUTLINED_FUNCTION_18_9();
  sub_192F9750C();
  OUTLINED_FUNCTION_35_0();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CAF1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAECCC();
  *a1 = result;
  return result;
}

unint64_t sub_192CAF1E4()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_19293FEF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CAF20C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAECCC();
  *a1 = result;
  return result;
}

uint64_t sub_192CAF248(uint64_t a1)
{
  v2 = sub_19293FB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CAF284(uint64_t a1)
{
  v2 = sub_19293FB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CAF2E0()
{
  sub_192F9789C();
  sub_192CAF024();
  return sub_192F978DC();
}

uint64_t sub_192CAF344@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAF150();
  *a1 = result;
  return result;
}

uint64_t sub_192CAF374()
{
  v1 = OUTLINED_FUNCTION_24_1();
  result = sub_19293EBCC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_192CAF39C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CAF150();
  *a1 = result;
  return result;
}

uint64_t sub_192CAF3D8(uint64_t a1)
{
  v2 = sub_19293EB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CAF414(uint64_t a1)
{
  v2 = sub_19293EB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static FairPlayDeviceIdentityBag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 49);
  v14 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v20 = *(a2 + 64);
  v21 = *(a1 + 64);
  if (!v14 && (sub_192F9775C() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v8 || v3 != v9)
  {
    OUTLINED_FUNCTION_39();
    if ((sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v10)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v7 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || (sub_192BBD334() & 1) == 0)
  {
    return 0;
  }

  v17 = OUTLINED_FUNCTION_5_16();
  return (sub_192C1C70C(v17, v18) & 1) != 0 && (sub_192C1C8C0(v21, v20) & 1) != 0;
}

void FairPlayDeviceIdentityBag.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15010);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_40_12(v3, v3[3]);
  sub_19293EB70();
  sub_192F9799C();
  sub_192F9769C();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_3();
    sub_192F9769C();
    sub_192CAF74C();
    OUTLINED_FUNCTION_7_3();
    sub_192F976CC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_73_8();
}

unint64_t sub_192CAF74C()
{
  result = qword_1EAE15018;
  if (!qword_1EAE15018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15018);
  }

  return result;
}

void FairPlayDeviceIdentityBag.hash(into:)()
{
  sub_192F968BC();
  sub_192F968BC();
  sub_192CAF024();
}

uint64_t FairPlayDeviceIdentityBag.hashValue.getter()
{
  OUTLINED_FUNCTION_24_0();
  sub_192F968BC();
  sub_192F968BC();
  sub_192CAF024();
  return sub_192F978DC();
}

uint64_t sub_192CAF884()
{
  sub_192F9789C();
  sub_192F968BC();
  sub_192F968BC();
  sub_192CAF024();
  return sub_192F978DC();
}

unint64_t sub_192CAF900()
{
  result = qword_1EAE15028;
  if (!qword_1EAE15028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15028);
  }

  return result;
}

unint64_t sub_192CAF958()
{
  result = qword_1EAE15030;
  if (!qword_1EAE15030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15030);
  }

  return result;
}

uint64_t sub_192CAF9B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_192CAFA08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 97))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CAFA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_192CAFACC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CAFB0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192CAFB60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CAFBB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_192CAFC28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CAFC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_192CAFD40()
{
  result = qword_1EAE15048;
  if (!qword_1EAE15048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15048);
  }

  return result;
}

unint64_t sub_192CAFD98()
{
  result = qword_1EAE15050;
  if (!qword_1EAE15050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15050);
  }

  return result;
}

unint64_t sub_192CAFDF0()
{
  result = qword_1EAE15058;
  if (!qword_1EAE15058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15058);
  }

  return result;
}

unint64_t sub_192CAFE48()
{
  result = qword_1EAE15060;
  if (!qword_1EAE15060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15060);
  }

  return result;
}

unint64_t sub_192CAFEE4()
{
  result = qword_1EAE15078;
  if (!qword_1EAE15078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15078);
  }

  return result;
}

unint64_t sub_192CAFF3C()
{
  result = qword_1EAE15080;
  if (!qword_1EAE15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15080);
  }

  return result;
}

unint64_t sub_192CAFF90()
{
  result = qword_1EAE15098;
  if (!qword_1EAE15098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15090);
    sub_192CB00A0(&qword_1EAE133F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15098);
  }

  return result;
}

unint64_t sub_192CB003C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_47_12();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE13B70);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_192CB00A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_47_12();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAE131F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_192CB0104()
{
  result = qword_1EAE150C0;
  if (!qword_1EAE150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE150C0);
  }

  return result;
}

unint64_t sub_192CB0158()
{
  result = qword_1EAE150D8;
  if (!qword_1EAE150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE150D8);
  }

  return result;
}

unint64_t sub_192CB01AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_47_12();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE150E0);
    v2();
    OUTLINED_FUNCTION_5_16();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_192CB0218()
{
  result = qword_1EAE150F0;
  if (!qword_1EAE150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE150F0);
  }

  return result;
}

void sub_192CB026C()
{
  OUTLINED_FUNCTION_75_6();
  if (v1 != v2 && (OUTLINED_FUNCTION_61_9(), v26))
  {
    v4 = 0;
    v5 = v3 + 64;
    OUTLINED_FUNCTION_0_29();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      OUTLINED_FUNCTION_66_9();
      v28 = v13;
LABEL_12:
      v16 = v6;
      v17 = (*(v6 + 56) + 16 * (v12 | (v4 << 6)));
      v19 = *v17;
      v18 = v17[1];

      v20 = OUTLINED_FUNCTION_39();
      v22 = sub_1929225DC(v20, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {

        goto LABEL_22;
      }

      v25 = (*(v0 + 56) + 16 * v22);
      v26 = *v25 == v19 && v25[1] == v18;
      if (v26)
      {

        v6 = v16;
        v9 = v28;
      }

      else
      {
        v27 = sub_192F9775C();

        v6 = v16;
        v9 = v28;
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        goto LABEL_22;
      }

      v15 = *(v5 + 8 * v4);
      ++v14;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v28 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_38_9();
  }
}

void sub_192CB03C4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  OUTLINED_FUNCTION_61_9();
  if (!v29)
  {
    return;
  }

  v4 = 0;
  v5 = v3 + 64;
  OUTLINED_FUNCTION_0_29();
  v7 = (v6 + 63) >> 6;
  OUTLINED_FUNCTION_62_0();
  v89 = v9;
  v92 = v8;
  v93 = v2;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
    OUTLINED_FUNCTION_66_9();
    v103 = v11;
    v13 = v12 | (v4 << 6);
LABEL_10:
    v16 = (*(v8 + 48) + 16 * v13);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v8 + 56) + 112 * v13);
    memcpy(__dst, v19, 0x6CuLL);
    memcpy(__src, v19, 0x6CuLL);
    *&v108 = v18;
    *(&v108 + 1) = v17;
    memcpy(v109, __src, 0x6CuLL);
    nullsub_3(&v108);

    sub_192BF2798(__dst, v116);
    v20 = *(&v108 + 1);
    v21 = v108;
    memcpy(v118, v109, sizeof(v118));
LABEL_11:
    memcpy(&__src[2], v118, 0x6CuLL);
    __src[0] = v21;
    __src[1] = v20;
    if (sub_192C1F714(__src) == 1)
    {
      return;
    }

    memcpy(__dst, v118, 0x6CuLL);
    v22 = sub_1929225DC(v21, v20);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_89;
    }

    memcpy(v116, (*(v2 + 56) + 112 * v22), 0x6CuLL);
    if (*(&v116[0] + 1))
    {
      if (!*(&__dst[0] + 1) || ((v25 = *&v116[1], v26 = BYTE8(v116[1]), v27 = *&__dst[1], v28 = BYTE8(__dst[1]), *&v116[0] == *&__dst[0]) ? (v29 = *(&v116[0] + 1) == *(&__dst[0] + 1)) : (v29 = 0), !v29 && (sub_192F9775C() & 1) == 0))
      {
LABEL_89:
        v73 = __dst;
        goto LABEL_95;
      }

      if (v26)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if ((v28 & 1) != 0 || v25 != v27)
      {
        goto LABEL_89;
      }
    }

    else if (*(&__dst[0] + 1))
    {
      goto LABEL_89;
    }

    v31 = *(&v116[2] + 1);
    v30 = *&v116[2];
    v32 = *&v116[3];
    v33 = BYTE8(v116[3]);
    v114[0] = *(&v116[3] + 9);
    *(v114 + 3) = HIDWORD(v116[3]);
    v34 = *(&v116[4] + 1);
    v35 = *&v116[4];
    v36 = *(&v116[5] + 1);
    v37 = *&v116[5];
    v38 = *&v116[6];
    v39 = BYTE9(v116[6]);
    v40 = __dst[2];
    *(v113 + 11) = *(&__dst[5] + 11);
    v112 = __dst[4];
    v113[0] = __dst[5];
    v111 = __dst[3];
    if (*(&v116[2] + 1))
    {
      if (!*(&__dst[2] + 1))
      {
        goto LABEL_91;
      }

      v94 = BYTE10(v116[6]);
      v98 = BYTE8(v116[6]);
      v104 = __dst[2];
      *&v107[11] = *(&__dst[5] + 11);
      v106 = __dst[4];
      *v107 = __dst[5];
      v105 = __dst[3];
      v41 = *&__dst[3];
      v42 = BYTE8(__dst[3]);
      v43 = BYTE8(__dst[4]);
      v44 = *&__dst[4];
      v45 = BYTE8(__dst[5]);
      v46 = *&__dst[5];
      *&v47 = *(&__dst[5] + 11) >> 40;
      v48 = BYTE8(__dst[6]);
      v49 = BYTE9(__dst[6]);
      v50 = *&v116[2] == *&__dst[2] && *(&__dst[2] + 1) == *(&v116[2] + 1);
      v91 = v107[26];
      v102 = BYTE9(v116[6]);
      v101 = *&v116[6];
      v99 = v116[5];
      v97 = v116[4];
      v96 = *&v116[3];
      if (!v50)
      {
        v51 = *&v116[2];
        v52 = v7;
        v53 = v107[8];
        v90 = *(&v116[2] + 1);
        v54 = v5;
        v55 = BYTE8(__dst[4]);
        v56 = BYTE8(v116[3]);
        v57 = v107[24];
        v58 = sub_192F9775C();
        v43 = v55;
        v5 = v54;
        v31 = v90;
        v45 = v53;
        v7 = v52;
        v48 = v57;
        v30 = v51;
        v32 = v96;
        v35 = *&v97;
        v33 = v56;
        v34 = *(&v97 + 1);
        v36 = *(&v99 + 1);
        v37 = *&v99;
        v38 = v101;
        v39 = v102;
        if ((v58 & 1) == 0)
        {
          v61 = v90;
          sub_192BF2798(v116, &v108);
          sub_192BF2C4C(&v116[2], &v108);
          sub_192BF2C4C(&__dst[2], &v108);
          sub_1928FC07C(&v104, &qword_1EAE13668);
          v59 = v51;
          v65 = v96;
          v63 = v97;
          v64 = v56;
          v62 = *(&v97 + 1);
LABEL_93:
          *&v108 = v59;
          *(&v108 + 1) = v61;
          *v109 = v65;
          v109[8] = v64;
          *&v109[9] = v114[0];
          *&v109[12] = *(v114 + 3);
          *&v109[16] = v63;
          *&v109[24] = v62;
          OUTLINED_FUNCTION_39_15();
          sub_1928FC07C(&v108, &qword_1EAE13668);
LABEL_94:
          sub_192BF2FC4(__dst);
          v73 = v116;
LABEL_95:
          sub_192BF2FC4(v73);
          return;
        }
      }

      if (v33)
      {
        v2 = v93;
        if ((v42 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v2 = v93;
        if ((v42 & 1) != 0 || v41 != v32)
        {
LABEL_90:
          v74 = v30;
          v75 = v39;
          v76 = v38;
          v77 = v36;
          v78 = v37;
          v79 = v34;
          v80 = v35;
          v81 = v33;
          v82 = v32;
          sub_192BF2C4C(&v116[2], &v108);
          sub_192BF2C4C(&__dst[2], &v108);
          sub_192BF2FC4(__dst);
          sub_1928FC07C(&v104, &qword_1EAE13668);
          *&v108 = v74;
          *(&v108 + 1) = v31;
          *v109 = v82;
          v109[8] = v81;
          OUTLINED_FUNCTION_48_12();
          *&v109[16] = v80;
          *&v109[24] = v79;
          *&v109[32] = v78;
          *&v109[40] = v77;
          *&v109[48] = v76;
          v109[56] = v98;
          v109[57] = v75;
          v109[58] = v94;
          v88 = &qword_1EAE13668;
          goto LABEL_96;
        }
      }

      if (v39)
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v49)
        {
          goto LABEL_90;
        }

        if (v34)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else if (v43 & 1 | (v44 != v35))
        {
          goto LABEL_90;
        }

        if (v36)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else if (v45 & 1 | (v46 != v37))
        {
          goto LABEL_90;
        }

        if (v98)
        {
          if ((v48 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else if ((v48 & 1) != 0 || v47 != v38)
        {
          goto LABEL_90;
        }
      }

      v59 = v30;
      v60 = v33;
      sub_192BF2798(v116, &v108);
      sub_192BF2C4C(&v116[2], &v108);
      sub_192BF2C4C(&__dst[2], &v108);
      v61 = v31;
      sub_1928FC07C(&v104, &qword_1EAE13668);
      if (v94 == 2)
      {
        v62 = *(&v97 + 1);
        v63 = v97;
        v64 = v60;
        v65 = v96;
        if (v91 != 2)
        {
          sub_192BF2FC4(__dst);
          sub_192BF2FC4(v116);
          *&v108 = v59;
          *(&v108 + 1) = v31;
          *v109 = v96;
          v109[8] = v60;
          *&v109[9] = v114[0];
          *&v109[12] = *(v114 + 3);
          *&v109[16] = v97;
          *&v109[32] = v99;
          OUTLINED_FUNCTION_46_10();
          v109[58] = 2;
          v88 = &qword_1EAE13668;
LABEL_96:
          sub_1928FC07C(&v108, v88);
          return;
        }
      }

      else
      {
        v62 = *(&v97 + 1);
        v63 = v97;
        v64 = v60;
        v65 = v96;
        if (v91 == 2 || ((v91 ^ v94) & 1) != 0)
        {
          goto LABEL_93;
        }
      }

      *&v108 = v59;
      *(&v108 + 1) = v31;
      *v109 = v65;
      v109[8] = v64;
      *&v109[9] = v114[0];
      *&v109[12] = *(v114 + 3);
      *&v109[16] = v63;
      *&v109[24] = v62;
      OUTLINED_FUNCTION_39_15();
      sub_1928FC07C(&v108, &qword_1EAE13668);
    }

    else
    {
      if (*(&__dst[2] + 1))
      {
LABEL_91:
        v95 = BYTE10(v116[6]);
        v83 = *&v116[2];
        v100 = v116[5];
        v84 = *(&v116[4] + 1);
        v85 = *&v116[4];
        v86 = BYTE8(v116[3]);
        v87 = *&v116[3];
        sub_192BF2C4C(&v116[2], &v108);
        sub_192BF2C4C(&__dst[2], &v108);
        sub_192BF2FC4(__dst);
        *&v108 = v83;
        *(&v108 + 1) = v31;
        *v109 = v87;
        v109[8] = v86;
        OUTLINED_FUNCTION_48_12();
        *&v109[16] = v85;
        *&v109[24] = v84;
        *&v109[32] = v100;
        OUTLINED_FUNCTION_46_10();
        v109[58] = v95;
        *&v109[64] = v40;
        *(v110 + 11) = *(v113 + 11);
        *&v109[96] = v112;
        v110[0] = v113[0];
        *&v109[80] = v111;
        v88 = &qword_1EAE13670;
        goto LABEL_96;
      }

      v104 = *&v116[2];
      *&v105 = *&v116[3];
      BYTE8(v105) = BYTE8(v116[3]);
      *(&v105 + 9) = *(&v116[3] + 9);
      HIDWORD(v105) = HIDWORD(v116[3]);
      v106 = v116[4];
      *v107 = v116[5];
      *&v107[16] = *&v116[6];
      *&v107[24] = WORD4(v116[6]);
      v107[26] = BYTE10(v116[6]);
      sub_192BF2798(v116, &v108);
      sub_192BF2C4C(&v116[2], &v108);
      sub_192BF2C4C(&__dst[2], &v108);
      sub_1928FC07C(&v104, &qword_1EAE13668);
      v2 = v93;
    }

    v66 = BYTE11(__dst[6]);
    if (BYTE11(v116[6]) == 3)
    {
      sub_192BF2FC4(__dst);
      sub_192BF2FC4(v116);
      if (v66 != 3)
      {
        return;
      }

      goto LABEL_86;
    }

    if (BYTE11(__dst[6]) == 3)
    {
      goto LABEL_94;
    }

    if (BYTE11(v116[6]))
    {
      if (BYTE11(v116[6]) == 1)
      {
        v67 = 0x5364657461647075;
        v68 = 0xEF656C7564656863;
        if (BYTE11(__dst[6]))
        {
          goto LABEL_72;
        }
      }

      else
      {
        v67 = 0xD000000000000010;
        v68 = v89;
        if (BYTE11(__dst[6]))
        {
LABEL_72:
          if (BYTE11(__dst[6]) == 1)
          {
            v69 = 0x5364657461647075;
            v70 = 0xEF656C7564656863;
          }

          else
          {
            v69 = 0xD000000000000010;
            v70 = v89;
          }

          goto LABEL_79;
        }
      }
    }

    else
    {
      v68 = 0xE300000000000000;
      v67 = 7827310;
      if (BYTE11(__dst[6]))
      {
        goto LABEL_72;
      }
    }

    v70 = 0xE300000000000000;
    v69 = 7827310;
LABEL_79:
    if (v67 == v69 && v68 == v70)
    {

      sub_192BF2FC4(__dst);
      sub_192BF2FC4(v116);
    }

    else
    {
      v72 = sub_192F9775C();

      sub_192BF2FC4(__dst);
      sub_192BF2FC4(v116);
      if ((v72 & 1) == 0)
      {
        return;
      }
    }

LABEL_86:
    v8 = v92;
  }

  while (v103);
LABEL_6:
  while (1)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
      sub_192C1F72C(&v108);
      v20 = *(&v108 + 1);
      v21 = v108;
      memcpy(v118, v109, sizeof(v118));
      v103 = 0;
      goto LABEL_11;
    }

    v15 = *(v5 + 8 * v14);
    ++v4;
    if (v15)
    {
      v103 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v14 << 6);
      v4 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_192CB0D78(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v12);

      v17 = sub_1929225DC(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v21 && v20 != v16)
      {
        break;
      }

LABEL_26:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v23 = (v20 + 40);
    v24 = (v16 + 40);
    while (v21)
    {
      result = *(v23 - 1);
      if (result != *(v24 - 1) || *v23 != *v24)
      {
        result = sub_192F9775C();
        if ((result & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v23 += 2;
      v24 += 2;
      if (!--v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_192CB0F64(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_192CB0FC4()
{
  result = qword_1EAE12100;
  if (!qword_1EAE12100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE12100);
  }

  return result;
}

unint64_t sub_192CB1028()
{
  result = qword_1EAE15120;
  if (!qword_1EAE15120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15120);
  }

  return result;
}

unint64_t sub_192CB1080()
{
  result = qword_1EAE15128;
  if (!qword_1EAE15128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15128);
  }

  return result;
}

unint64_t sub_192CB111C()
{
  result = qword_1EAE15140;
  if (!qword_1EAE15140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15140);
  }

  return result;
}

unint64_t sub_192CB11B8()
{
  result = qword_1EAE15158;
  if (!qword_1EAE15158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15158);
  }

  return result;
}

unint64_t sub_192CB1254()
{
  result = qword_1EAE15170;
  if (!qword_1EAE15170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15170);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return sub_192F9714C();
}

BOOL sub_192CB12E8()
{
  v0 = sub_192F9750C();

  return v0 != 0;
}

BOOL sub_192CB133C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CB12E8();
  *a1 = result;
  return result;
}

BOOL sub_192CB1394@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CB12E8();
  *a1 = result;
  return result;
}

uint64_t sub_192CB13C0(uint64_t a1)
{
  v2 = sub_192CB3188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CB13FC(uint64_t a1)
{
  v2 = sub_192CB3188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CB1438(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15190);
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CB3188();
  sub_192F9799C();
  sub_192F9769C();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_192CB156C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15188);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CB3188();
  sub_192F9797C();
  if (!v1)
  {
    v10 = sub_192F975AC();
    (*(v5 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_192CB16BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CB156C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t FairPlayDeviceIdentityNetworkProvider.fpdiNetworkResponse(for:data:bag:)()
{
  OUTLINED_FUNCTION_65();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38(v8);
  *v9 = v10;
  v9[1] = sub_192CB3394;

  return sub_192CB17B8(v7, v5, v3, v1);
}

uint64_t sub_192CB17B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[35] = a4;
  v5[36] = v4;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v6 = sub_192F95A8C();
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15180);
  v5[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CB18E4, 0, 0);
}

uint64_t sub_192CB18E4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBCD50;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v8 = sub_192F95B6C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_192F966CC();
  v10 = [objc_opt_self() currentProcess];
  *(v0 + 328) = v10;
  (*(v4 + 16))(v2, v6, v3);
  sub_192F953BC();
  v11 = sub_192F9540C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v11);
  objc_allocWithZone(AMSURLRequest);
  v12 = v5;
  v13 = sub_192CB2FEC(v1, v5);
  *(v0 + 336) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = sub_192F9679C();
    [v14 setHTTPMethod_];

    v16 = objc_opt_self();
    v17 = sub_192F9667C();

    *(v0 + 240) = 0;
    v18 = [v16 dataWithJSONObject:v17 options:0 error:v0 + 240];

    v19 = *(v0 + 240);
    if (v18)
    {
      v20 = sub_192F95B7C();
      v22 = v21;

      v23 = sub_192F95B5C();
      sub_19290CA6C(v20, v22);
    }

    else
    {
      v28 = v19;
      v29 = sub_192F958DC();

      swift_willThrow();
      v23 = 0;
    }

    v30 = *(v0 + 288);
    [v14 setHTTPBody_];

    sub_192CB30B0(0xD00000000000001FLL, 0x8000000193021510, @"Content-Type", v14);
    v31 = v14;
    [v31 ams_addIssuingProcessHeader];
    [v31 ams:v10 addRequestingProcessWithClient:?];
    [v31 ams:v10 addUserAgentHeaderFromClient:?];
    v32 = [*(v30 + OBJC_IVAR___AMSFairPlayDeviceIdentityNetworkProvider_session) dataTaskPromiseWithRequest_];
    *(v0 + 344) = v32;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 248;
    *(v0 + 24) = sub_192CB1E08;
    v33 = swift_continuation_init();
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13AE0);
    *(v0 + 160) = MEMORY[0x1E69E9820];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_19293A7A4;
    *(v0 + 184) = &block_descriptor_23;
    *(v0 + 192) = v33;
    [v32 resultWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    v24 = sub_192F9679C();
    v25 = sub_192F9679C();
    OUTLINED_FUNCTION_4_46(v25);

    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v26();
  }
}

uint64_t sub_192CB1E08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_192CB21D0;
  }

  else
  {
    v2 = sub_192CB1F44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CB1F44()
{
  v1 = *(v0 + 248);

  sub_192F9543C();
  swift_allocObject();
  sub_192F9542C();
  v2 = [v1 data];
  v3 = sub_192F95B7C();
  v5 = v4;

  sub_192CB3124();
  sub_192F9541C();
  sub_19290CA6C(v3, v5);

  v6 = *(v0 + 232);
  v7 = sub_192F95AFC();
  v9 = v8;

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  if (v9 >> 60 == 15)
  {
    v12 = sub_192F9679C();
    v13 = sub_192F9679C();
    OUTLINED_FUNCTION_4_46(v13);

    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v14();
  }

  else
  {

    v16 = *(v0 + 8);

    return v16(v7, v9);
  }
}

uint64_t sub_192CB21D0()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192CB232C(uint64_t a1, void *a2, void *a3, const void *a4, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v10 = sub_192F95A8C();
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  sub_192F959AC();
  v11 = a2;
  v12 = a3;
  a5;
  v13 = sub_192F95B7C();
  v15 = v14;

  v5[8] = v13;
  v5[9] = v15;
  v16 = swift_task_alloc();
  v5[10] = v16;
  *v16 = v5;
  v16[1] = sub_192CB249C;

  return FairPlayDeviceIdentityNetworkProvider.fpdiNetworkResponse(for:data:bag:)();
}

uint64_t sub_192CB249C()
{
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[3];
  v8 = v2[2];
  (*(v2[5] + 8))(v2[6], v2[4]);

  sub_19290CA6C(v6, v5);
  if (v0)
  {
    v9 = sub_192F958CC();

    v10 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    v11 = sub_192F95B5C();
    v12 = OUTLINED_FUNCTION_7_35();
    sub_19290CA6C(v12, v13);
    v10 = v11;
  }

  v14 = v2[7];
  v15 = OUTLINED_FUNCTION_3_47();
  v16(v15);

  _Block_release(v14);

  v17 = *(v4 + 8);

  return v17();
}

id FairPlayDeviceIdentityNetworkProvider.__allocating_init(session:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AMSFairPlayDeviceIdentityNetworkProvider_session] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t FairPlayDeviceIdentityNetworkProvider.fpdiNetworkResponse(for:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38(v6);
  *v7 = v8;
  v7[1] = sub_192CB27B0;

  return sub_192CB17B8(a1, a2, a3, 0);
}

uint64_t sub_192CB27B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_192CB2950(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = sub_192F95A8C();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  sub_192F959AC();
  v10 = a2;
  a4;
  v11 = sub_192F95B7C();
  v13 = v12;

  v4[7] = v11;
  v4[8] = v13;
  v14 = swift_task_alloc();
  v4[9] = v14;
  *v14 = v4;
  v14[1] = sub_192CB2AB0;

  return FairPlayDeviceIdentityNetworkProvider.fpdiNetworkResponse(for:data:)(v9, v11, v13);
}

uint64_t sub_192CB2AB0()
{
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;

  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  sub_19290CA6C(v6, v5);
  if (v0)
  {
    v8 = sub_192F958CC();

    v9 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    v10 = sub_192F95B5C();
    v11 = OUTLINED_FUNCTION_7_35();
    sub_19290CA6C(v11, v12);
    v9 = v10;
  }

  v13 = v2[6];
  v14 = OUTLINED_FUNCTION_3_47();
  v15(v14);

  _Block_release(v13);

  v16 = *(v4 + 8);

  return v16();
}

id FairPlayDeviceIdentityNetworkProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayDeviceIdentityNetworkProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CB2DA4()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192CB2E50;
  v3 = OUTLINED_FUNCTION_1();

  return v4(v3);
}

uint64_t sub_192CB2E50()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CB2F38()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192CB3390;
  v3 = OUTLINED_FUNCTION_1();

  return v4(v3);
}

id sub_192CB2FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192F9540C();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_192F9539C();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithRequest:v7 bag:a2];

  swift_unknownObjectRelease();
  return v8;
}

void sub_192CB30B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_192F9679C();

  [a4 setValue:v6 forHTTPHeaderField:a3];
}

unint64_t sub_192CB3124()
{
  result = qword_1EAE11930;
  if (!qword_1EAE11930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11930);
  }

  return result;
}

unint64_t sub_192CB3188()
{
  result = qword_1EAE11938;
  if (!qword_1EAE11938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11938);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FairPlayDeviceIdentityInitSetupData.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_192CB328C()
{
  result = qword_1EAE15198;
  if (!qword_1EAE15198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15198);
  }

  return result;
}

unint64_t sub_192CB32E4()
{
  result = qword_1ED6DE7F8;
  if (!qword_1ED6DE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE7F8);
  }

  return result;
}

unint64_t sub_192CB333C()
{
  result = qword_1ED6DE4B0;
  if (!qword_1ED6DE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE4B0);
  }

  return result;
}

uint64_t sub_192CB3398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_192F9775C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 1;
  }

  else
  {
    v7 = sub_192F9775C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_192CB346C(char a1)
{
  if (a1)
  {
    return 0x6E6F697461657263;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_192CB34B0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151A0);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CB45E8();
  sub_192F9799C();
  sub_192F976DC();
  if (!v1)
  {
    type metadata accessor for FairPlayDeviceIdentitySessionInfo();
    sub_192F95CFC();
    OUTLINED_FUNCTION_3_48();
    sub_1928F5938(v9, v10);
    sub_192F976CC();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_192CB3648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v29 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE151A8);
  OUTLINED_FUNCTION_4_0();
  v31 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for FairPlayDeviceIdentitySessionInfo();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CB45E8();
  sub_192F9797C();
  if (!v2)
  {
    v28 = v15;
    v20 = v31;
    v21 = v32;
    v35 = 0;
    v22 = v33;
    *v19 = sub_192F9760C();
    v34 = 1;
    OUTLINED_FUNCTION_3_48();
    sub_1928F5938(v23, v24);
    v27 = v9;
    sub_192F975EC();
    (*(v20 + 8))(v14, v22);
    (*(v29 + 32))(v19 + *(v28 + 20), v27, v21);
    sub_192CB463C(v19, v30);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_192CB38FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192CB3398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192CB3924(uint64_t a1)
{
  v2 = sub_192CB45E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CB3960(uint64_t a1)
{
  v2 = sub_192CB45E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CB39CC@<X0>(void *a1@<X8>)
{
  sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();
  result = sub_192CB4210();
  if (!v1)
  {
    v8 = sub_192F95ACC();
    v10 = v9;
    sub_192F9543C();
    swift_allocObject();
    sub_192F9542C();
    type metadata accessor for FairPlayDeviceIdentitySessionInfo();
    OUTLINED_FUNCTION_2_45();
    sub_1928F5938(v11, v12);
    sub_192F9541C();

    if (*a1)
    {
      v13 = OUTLINED_FUNCTION_4_47();
      v14(v13);
      return sub_19290CA6C(v8, v10);
    }

    else
    {
      v15 = sub_192F9679C();
      v16 = sub_192F9679C();
      AMSError(900, v15, v16, 0);

      swift_willThrow();
      sub_19290CA6C(v8, v10);
      sub_192CAA7A8(a1);
      v6 = OUTLINED_FUNCTION_4_47();
      return v7(v6);
    }
  }

  return result;
}

uint64_t sub_192CB3C14()
{
  v2 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();
  result = sub_192CB4210();
  if (!v0)
  {
    sub_192F9549C();
    swift_allocObject();
    sub_192F9548C();
    type metadata accessor for FairPlayDeviceIdentitySessionInfo();
    OUTLINED_FUNCTION_2_45();
    sub_1928F5938(v8, v9);
    v10 = sub_192F9547C();
    v12 = v11;

    sub_192F95B9C();
    (*(v4 + 8))(v1, v2);
    return sub_19290CA6C(v10, v12);
  }

  return result;
}

uint64_t sub_192CB3DB4()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  result = sub_192CB4210();
  if (!v0)
  {
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_192F9596C();
    v16[0] = 0;
    v12 = [v10 removeItemAtURL:v11 error:v16];

    if (v12)
    {
      v13 = *(v3 + 8);
      v14 = v16[0];
      return v13(v8, v1);
    }

    else
    {
      v15 = v16[0];
      sub_192F958DC();

      swift_willThrow();
      return (*(v3 + 8))(v8, v1);
    }
  }

  return result;
}

uint64_t sub_192CB3F58@<X0>(uint64_t a1@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v25 - v11;
  v13 = [objc_opt_self() ams_cachesDirectory];
  if (v13)
  {
    v14 = v13;
    sub_192F959AC();

    (*(v4 + 32))(v12, v9, v2);
    sub_192F9597C();
    v15 = [objc_opt_self() defaultManager];
    v16 = sub_192F9596C();
    v25[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v25];

    if (v17)
    {
      v18 = *(v4 + 8);
      v19 = v25[0];
      return v18(v12, v2);
    }

    else
    {
      v23 = v25[0];
      sub_192F958DC();

      swift_willThrow();
      v24 = *(v4 + 8);
      v24(a1, v2);
      return (v24)(v12, v2);
    }
  }

  else
  {
    v21 = sub_192F9679C();
    v22 = sub_192F9679C();
    AMSError(900, v21, v22, 0);

    return swift_willThrow();
  }
}

uint64_t sub_192CB4210()
{
  v1 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  result = sub_192CB3F58(v7 - v6);
  if (!v0)
  {
    v10 = objc_opt_self();
    sub_19287A8E4([v10 currentProcess]);
    if (v11 || (sub_192CB4488([v10 currentProcess]), v12))
    {
      sub_192F972BC();

      MEMORY[0x193B10CE0](0x6E6F69737365732ELL, 0xEF2E65686361632ELL);
      v13 = sub_192F9771C();
      MEMORY[0x193B10CE0](v13);

      sub_192F9597C();
    }

    else
    {
      v14 = sub_192F9679C();
      v15 = sub_192F9679C();
      AMSError(900, v14, v15, 0);

      swift_willThrow();
    }

    return (*(v3 + 8))(v8, v1);
  }

  return result;
}

uint64_t sub_192CB4450()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_192CB4488(void *a1)
{
  v2 = [a1 executableName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_192F967CC();

  return v3;
}

uint64_t type metadata accessor for FairPlayDeviceIdentitySessionInfo()
{
  result = qword_1EAE11BE8;
  if (!qword_1EAE11BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CB456C()
{
  result = sub_192F95CFC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_192CB45E8()
{
  result = qword_1EAE11960;
  if (!qword_1EAE11960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11960);
  }

  return result;
}

uint64_t sub_192CB463C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDeviceIdentitySessionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FairPlayDeviceIdentitySessionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CB4780()
{
  result = qword_1EAE151B0;
  if (!qword_1EAE151B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE151B0);
  }

  return result;
}

unint64_t sub_192CB47D8()
{
  result = qword_1EAE11950;
  if (!qword_1EAE11950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11950);
  }

  return result;
}

unint64_t sub_192CB4830()
{
  result = qword_1EAE11958;
  if (!qword_1EAE11958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11958);
  }

  return result;
}

uint64_t FileStoreProtectionType.hashValue.getter()
{
  v1 = *v0;
  sub_192F9789C();
  MEMORY[0x193B11C90](v1);
  return sub_192F978DC();
}