uint64_t sub_23BA2E174(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_13_0(v6);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_8_10(v11);
  *v12 = v13;
  v12[1] = sub_23BA027BC;

  return sub_23BA2D010(a1, v9, v10, v1 + v8, v3, v4, v5);
}

unint64_t sub_23BA2E284()
{
  result = qword_27E19BEC8;
  if (!qword_27E19BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE78);
    sub_23B97B518(&qword_27E19BED0, &qword_27E19BE80);
    sub_23B97B518(qword_27E19A738, &qword_27E19A690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BEC8);
  }

  return result;
}

uint64_t sub_23BA2E368()
{
  OUTLINED_FUNCTION_18_1();
  _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_28_1();
  swift_getWitnessTable();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_18_1();
  _s6TaskIDOMa();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDAAE8();
  sub_23BBDA358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_12()
{
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_23BA25D24(v0, _s16TaskViewModifierVMa);
}

void OUTLINED_FUNCTION_34_1()
{
  v6 = (v3 + *(v1 + 20));
  *v6 = v5;
  v6[1] = v2;
  v7 = (v3 + *(v1 + 24));
  *v7 = v4;
  v7[1] = v0;
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v7 = v0 + *(v3 + 44);
  *v7 = v1;
  *(v7 + 8) = v4;
  *(v7 + 16) = 1;
  v8 = (v0 + *(v3 + 48));
  *v8 = v5;
  v8[1] = v2;
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_57_0()
{
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x23EEB43C0);
}

void OUTLINED_FUNCTION_59_0()
{

  JUMPOUT(0x23EEB43C0);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_allocError();
}

uint64_t sub_23BA2E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.subscription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCDB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.subscriptionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8) + 36);
  v4 = sub_23BBDCB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.currentOption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EE0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_23BA2EC24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA2EC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionStorePickerStyleItemConfiguration()
{
  result = qword_27E19BEE0;
  if (!qword_27E19BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA2ED30()
{
  sub_23BA2ED9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BA2ED9C()
{
  if (!qword_27E19BEF0)
  {
    sub_23BA2EDF8();
    v0 = type metadata accessor for SubscriptionItemBaseConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19BEF0);
    }
  }
}

unint64_t sub_23BA2EDF8()
{
  result = qword_27E19BEF8;
  if (!qword_27E19BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BEF8);
  }

  return result;
}

_BYTE *sub_23BA2EE80(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA2EF1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BA2EF6C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995828();
  *v0 = result;
  return result;
}

__n128 CompactPickerSubscriptionStoreControlStyle.Placement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static CompactPickerSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E5C940;
  result = sub_23BA2F010();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BA2F010()
{
  result = qword_27E19BF00;
  if (!qword_27E19BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF00);
  }

  return result;
}

double static CompactPickerSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static CompactPickerSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static CompactPickerSubscriptionStoreControlStyle.Placement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void CompactPickerSubscriptionStoreControlStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  sub_23BA30108(a1, &v35 - v9, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BA30108(a1, v7, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_23BA2F6CC(v7, v12 + v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF08);
  v14 = v13[14];
  v15 = v13[15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  __swift_storeEnumTagSinglePayload(a2 + v15, 1, 1, v16);
  v17 = a2 + v13[16];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = a2 + v13[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a2 + v13[18];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  sub_23BA2F6CC(v10, a2);
  *v20 = sub_23BA2F730;
  v20[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF10);
  swift_storeEnumTagMultiPayload();
  v21 = (a2 + v13[13]);
  *v21 = sub_23BA2F7B0;
  v21[1] = 0;
  *(a2 + v14) = 0;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF18);
  OUTLINED_FUNCTION_1_25();
  *v23 = KeyPath;
  *(v23 + 8) = 0;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF20);
  OUTLINED_FUNCTION_1_25();
  *v26 = v24;
  v26[1] = sub_23BA2F9C8;
  v26[2] = v25;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF28);
  OUTLINED_FUNCTION_1_25();
  *v29 = v27;
  v29[1] = sub_23BA2F9D0;
  v29[2] = v28;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF30);
  OUTLINED_FUNCTION_1_25();
  *v32 = v30;
  v32[1] = sub_23B99B524;
  v32[2] = v31;
  v33 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF38);
  OUTLINED_FUNCTION_1_25();
  *v34 = v33;
  *(v34 + 8) = 0;
}

uint64_t sub_23BA2F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BA30108(a2, v11, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BA30108(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  return sub_23BB8DC90(v11, v8, a3);
}

uint64_t sub_23BA2F590()
{
  v1 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  if (*(v2 + 48))
  {
  }

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0) + 60);
  v4 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    v5 = sub_23BBDCDB8();
    (*(*(v5 - 8) + 8))(v2 + v3, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_23BA2F6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA2F730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23BA2F47C(a1, v6, a2);
}

uint64_t sub_23BA2F7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BA30108(a1, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v3 = type metadata accessor for SubscriptionStoreButton();
  v4 = a2 + v3[5];
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  *(v6 + 73) = 0;
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a2 + v3[9];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_23BA2F8D0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAF2460();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F8F8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAF2460();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F968()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995828();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F9E0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB3E9EC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23BA2FA0C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB3E9EC();
  *v0 = result & 1;
  return result;
}

unint64_t sub_23BA2FA80(uint64_t a1)
{
  result = sub_23BA2FAA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA2FAA8()
{
  result = qword_27E19BF40;
  if (!qword_27E19BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF40);
  }

  return result;
}

unint64_t sub_23BA2FB1C()
{
  result = qword_27E19BF48;
  if (!qword_27E19BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompactPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA2FC0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BA2FC50()
{
  result = qword_27E19BF50;
  if (!qword_27E19BF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF38);
    sub_23BA2FD08();
    sub_23B97B518(&qword_27E19BF90, &qword_27E19BF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF50);
  }

  return result;
}

unint64_t sub_23BA2FD08()
{
  result = qword_27E19BF58;
  if (!qword_27E19BF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF30);
    sub_23BA2FDC0();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF58);
  }

  return result;
}

unint64_t sub_23BA2FDC0()
{
  result = qword_27E19BF60;
  if (!qword_27E19BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF28);
    sub_23BA2FE78();
    sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF60);
  }

  return result;
}

unint64_t sub_23BA2FE78()
{
  result = qword_27E19BF68;
  if (!qword_27E19BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF20);
    sub_23BA2FF30();
    sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF68);
  }

  return result;
}

unint64_t sub_23BA2FF30()
{
  result = qword_27E19BF70;
  if (!qword_27E19BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF18);
    sub_23B97B518(&qword_27E19BF78, &qword_27E19BF08);
    sub_23B97B518(&qword_27E19BF80, &qword_27E19BF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF70);
  }

  return result;
}

unint64_t sub_23BA30024()
{
  result = qword_27E19BFA0;
  if (!qword_27E19BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFA0);
  }

  return result;
}

unint64_t sub_23BA30078(uint64_t a1)
{
  result = sub_23BA300A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA300A0()
{
  result = qword_27E19BFA8;
  if (!qword_27E19BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFA8);
  }

  return result;
}

uint64_t sub_23BA30108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.appStoreMerchandising(isPresented:kind:onDismiss:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v25 = a7;
  v14 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 24);
  sub_23BBDC4E8();
  OUTLINED_FUNCTION_4_1();
  (*(v20 + 16))(&v17[v19], a4);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *(v17 + 2) = sub_23BA30340;
  *(v17 + 3) = 0;
  v17[32] = 0;
  v21 = &v17[*(v14 + 28)];
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = a3;
  v22 = &v17[*(v14 + 32)];
  *v22 = a5;
  v22[1] = a6;

  sub_23B9794F0(a5);
  MEMORY[0x23EEB43C0](v17, v25, v14, v26);
  return sub_23BA30378(v17);
}

uint64_t type metadata accessor for AppStoreMerchandisingSheetModifier()
{
  result = qword_27E19BFB8;
  if (!qword_27E19BFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA30340()
{
  type metadata accessor for AppStoreMerchandisingCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23BA30378(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA303D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v2 + *(v8 + 36);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v9) = *(v9 + 16);
  v22 = v10;
  v23 = v11;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v12 = v20[0];
  v13 = v20[1];
  v14 = v21;
  sub_23BA328BC(v2, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreMerchandisingSheetModifier);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_23BA327EC(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFD8);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFE0);
  v19 = a2 + *(result + 36);
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(v19 + 24) = sub_23BA32850;
  *(v19 + 32) = v16;
  return result;
}

uint64_t sub_23BA305A4(unsigned __int8 *a1, uint64_t a2)
{
  v43 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  v41 = *(v43 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  v45 = a2;
  if (*(a2 + 8) == 1)
  {
    v16 = v15;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    v40 = v8;
    v18 = v17;
    sub_23BBD9978();

    v8 = v40;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA1D4(v15, 0);
    (*(v11 + 8))(v13, v10);
    v15 = v47;
    if (!v47)
    {
      goto LABEL_10;
    }
  }

  v19 = [v15 scene];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      if (v14)
      {
        v21 = v20;
        v22 = sub_23BBDD368();
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v22);
        v23 = v42;
        sub_23BA328BC(v45, v42, type metadata accessor for AppStoreMerchandisingSheetModifier);
        sub_23BBDD308();
        v24 = v19;
        v25 = sub_23BBDD2F8();
        v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v27 = swift_allocObject();
        v28 = MEMORY[0x277D85700];
        *(v27 + 16) = v25;
        *(v27 + 24) = v28;
        sub_23BA327EC(v23, v27 + v26);
        *(v27 + ((v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
        sub_23BB142C0();

        sub_23B979910(v7, &qword_27E198320);
      }

      else
      {
      }

      return sub_23BA30B54(v45);
    }
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23BBE7F10;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 32) = 0xD000000000000050;
  *(v29 + 40) = 0x800000023BBE0DB0;
  sub_23BBDDB98();

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v8, qword_27E1BFC88);
  v31 = v44;
  sub_23BA328BC(v30, v44, type metadata accessor for SKLogger);
  v32 = sub_23BBD9988();
  v33 = sub_23BBD99A8();
  (*(*(v33 - 8) + 8))(v31, v33);
  v34 = sub_23BBDD598();
  if (os_log_type_enabled(v32, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_23B970000, v32, v34, "Attempting to present an App Store merchandising without being in the hierarchy.", v35, 2u);
    MEMORY[0x23EEB6DC0](v35, -1, -1);
  }

  v36 = v45 + *(v43 + 28);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v36) = *(v36 + 16);
  v47 = v37;
  v48 = v38;
  v49 = v36;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC0F8();
  return sub_23BA30B54(v45);
}

uint64_t sub_23BA30B54(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_23BA328BC(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreMerchandisingSheetModifier);
  sub_23BBDD308();
  v9 = sub_23BBDD2F8();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_23BA327EC(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_23BB142C0();

  return sub_23B979910(v7, &qword_27E198320);
}

uint64_t sub_23BA30D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23BA30DB4, v7, v6);
}

uint64_t sub_23BA30DB4()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 16);
  *(v0 + 64) = *(v1 + 24);
  *(v0 + 132) = *(v1 + 32);
  *(v0 + 72) = type metadata accessor for AppStoreMerchandisingCoordinator();
  OUTLINED_FUNCTION_4_15();
  *(v0 + 80) = sub_23BA32644(v2, v3);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23BA30E7C, v4, 0);
}

uint64_t sub_23BA30E7C()
{
  OUTLINED_FUNCTION_3_13();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23BA30EE4, v1, v2);
}

uint64_t sub_23BA30EE4()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  if (v1)
  {

    OUTLINED_FUNCTION_1_16();

    return v2();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = sub_23BBD9C48();
    *(v0 + 104) = v5;
    v6 = type metadata accessor for AppStoreMerchandisingSheetModifier();
    *(v0 + 128) = *(v6 + 24);
    v7 = (v4 + *(v6 + 32));
    *(v0 + 112) = *v7;
    *(v0 + 120) = v7[1];

    return MEMORY[0x2822009F8](sub_23BA30FD0, v5, 0);
  }
}

uint64_t sub_23BA30FD0()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BA31048(*(v0 + 16) + *(v0 + 128), *(v0 + 24), *(v0 + 112), *(v0 + 120));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v1, v2);
}

uint64_t sub_23BA31048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v10 = sub_23BBDC4E8();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a1, v10);
  sub_23BBDD308();

  v29 = a2;
  v18 = a4;
  sub_23B9794F0(a3);
  v19 = sub_23BBDD2F8();
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 2) = v19;
  *(v22 + 3) = v23;
  *(v22 + 4) = v5;
  (*(v11 + 32))(&v22[v20], v13, v30);
  v24 = v28;
  *&v22[v21] = v29;
  v25 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v24;
  v25[1] = v18;
  sub_23BB142C0();

  return sub_23B979910(v16, &qword_27E198320);
}

uint64_t sub_23BA3129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_23BBDD308();
  v8[3] = sub_23BBDD2F8();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_23BA31378;

  return sub_23BA314A4(a5, a6, a7, a8);
}

uint64_t sub_23BA31378()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BA314A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFE8);
  v5[19] = swift_task_alloc();
  v6 = sub_23BBDC4D8();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA315A8, v4, 0);
}

uint64_t sub_23BA315A8()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDD308();
  *(v0 + 184) = sub_23BBDD2F8();
  v2 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA31638, v2, v1);
}

uint64_t sub_23BA31638()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[17];
  v2 = v0[14];

  v0[24] = [v2 _persistenceIdentifier];

  return MEMORY[0x2822009F8](sub_23BA316C0, v1, 0);
}

uint64_t sub_23BA316C0()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = sub_23BBDD018();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[25] = v4;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_23BA31798;
  v6 = v0[22];
  v7 = v0[13];

  return MEMORY[0x28212C3B8](v6, v7, v2, v4);
}

uint64_t sub_23BA31798()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = *(v3 + 136);
    v7 = sub_23BA31D88;
  }

  else
  {
    v8 = *(v3 + 136);

    v7 = sub_23BA318B0;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_23BA318B0()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 128);
    *(v0 + 40) = *(v1 + 112);
    *(v0 + 48) = v2;
    *(v0 + 56) = v3 & 1;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  OUTLINED_FUNCTION_15_12();
  sub_23BBDD768();
  *(v0 + 80) = v21;
  *(v0 + 88) = v23;
  MEMORY[0x23EEB5890](0xD00000000000002BLL, 0x800000023BBE0E40);
  sub_23BBDD8B8();
  v5 = sub_23BBDD588();

  v6 = sub_23BBD9988();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_21_6(4.8752e-34, v22, v8);
    v12 = OUTLINED_FUNCTION_11_13(v9, v10, v11);

    *(v7 + 14) = v12;
    OUTLINED_FUNCTION_19_7(&dword_23B970000, v13, v14, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v15 = *(v0 + 168);
  if (*(v0 + 120))
  {
    (*(v15 + 16))(*(v0 + 152), *(v0 + 176), *(v0 + 160));
    swift_storeEnumTagMultiPayload();
    v16 = swift_task_alloc();
    *(v0 + 224) = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_13_13(v16);
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X1, X16 }
  }

  (*(v15 + 8))(*(v0 + 176), *(v0 + 160));
  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_22_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BA31BF0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19BFE8);
  v5 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA31D14()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0[21] + 8))(v0[22], v0[20]);
  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

void sub_23BA31D88()
{

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_27E1BFC88);
  OUTLINED_FUNCTION_15_12();
  sub_23BBDD768();
  *(v0 + 64) = v22;
  *(v0 + 72) = v24;
  MEMORY[0x23EEB5890](0xD000000000000024, 0x800000023BBE0E10);
  *(v0 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  sub_23BBDD8B8();
  LOBYTE(v1) = sub_23BBDD588();

  v3 = sub_23BBD9988();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_21_6(4.8752e-34, v23, v5);
    v9 = OUTLINED_FUNCTION_11_13(v6, v7, v8);

    *(v4 + 14) = v9;
    OUTLINED_FUNCTION_19_7(&dword_23B970000, v10, v11, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v12 = *(v0 + 136);
  v13 = *(v12 + 120);
  if (v13)
  {
    v14 = *(v12 + 128);
    *(v0 + 16) = *(v12 + 112);
    *(v0 + 24) = v13;
    *(v0 + 32) = v14 & 1;
    *(v0 + 33) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  v15 = *(v0 + 216);
  if (*(v0 + 120))
  {
    **(v0 + 152) = v15;
    swift_storeEnumTagMultiPayload();
    v16 = v15;
    v17 = swift_task_alloc();
    *(v0 + 232) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_13_13(v17);
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_22_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BA320BC()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19BFE8);
  v5 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA321E0()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BA32268()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier();
  sub_23BBDA358();
  sub_23BA32644(&qword_27E19BFB0, type metadata accessor for AppStoreMerchandisingSheetModifier);
  return swift_getWitnessTable();
}

uint64_t sub_23BA32318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_8();
  v6 = sub_23BBDC4E8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23BA323DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDC4E8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23BA3248C()
{
  sub_23BA3268C(319, &qword_27E19ACD8, &qword_27E19ACE0, &unk_23BBEB418, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23BA325B0();
    if (v1 <= 0x3F)
    {
      sub_23BBDC4E8();
      if (v2 <= 0x3F)
      {
        sub_23BA017D4();
        if (v3 <= 0x3F)
        {
          sub_23BA3268C(319, &qword_27E197B10, &qword_27E197B18, &unk_23BBE3DF0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BA325B0()
{
  if (!qword_27E19BFC8)
  {
    type metadata accessor for AppStoreMerchandisingCoordinator();
    sub_23BA32644(&qword_27E19BFD0, type metadata accessor for AppStoreMerchandisingCoordinator);
    v0 = sub_23BBD9C58();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19BFC8);
    }
  }
}

uint64_t sub_23BA32644(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23BA3268C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23BA3270C()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA327EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreMerchandisingSheetModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA32850()
{
  OUTLINED_FUNCTION_15_8();
  v2 = *(type metadata accessor for AppStoreMerchandisingSheetModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_23BA305A4(v0, v3);
}

uint64_t sub_23BA328BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA3291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23BA329B4, v6, v5);
}

uint64_t sub_23BA329B4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 64);
  type metadata accessor for AppStoreMerchandisingCoordinator();
  OUTLINED_FUNCTION_4_15();
  sub_23BA32644(v2, v3);
  *(v0 + 96) = OUTLINED_FUNCTION_17_7();
  v4 = (v1 + *(type metadata accessor for AppStoreMerchandisingSheetModifier() + 28));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v7 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v7;
  *(v0 + 33) = *(v0 + 56);
  v8 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23BA32AB8()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier();
  OUTLINED_FUNCTION_8_3();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v7 + 8))(v1 + v2);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v8)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32BB4()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_15_8();
  v2 = *(type metadata accessor for AppStoreMerchandisingSheetModifier() - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA30D1C(v5, v6, v7, v8, v3);
}

uint64_t sub_23BA32CC4()
{
  v1 = sub_23BBDC4E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32DC4()
{
  v2 = *(sub_23BBDC4E8() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 32);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23B9F3414;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA3129C(v10, v11, v12, v6, v13, v5, v7, v8);
}

uint64_t sub_23BA32F10()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier();
  OUTLINED_FUNCTION_8_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32FF8()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_15_8();
  type metadata accessor for AppStoreMerchandisingSheetModifier();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA3291C(v2, v3, v4, v5);
}

unint64_t sub_23BA330DC()
{
  result = qword_27E19BFF0;
  if (!qword_27E19BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BFE0);
    sub_23B97B518(qword_27E19BFF8, &qword_27E19BFD8);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  sub_23B9EA1D4(*(v0 + v1), *(v0 + v1 + 8));
  sub_23B9EA1E0();

  return sub_23BBDC4E8();
}

unint64_t OUTLINED_FUNCTION_11_13(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 + 4) = a1;
  *(v4 + 12) = 2082;

  return sub_23BA5AB90(v5, v3, va);
}

uint64_t OUTLINED_FUNCTION_14_11()
{
}

void OUTLINED_FUNCTION_19_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_21_6(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

uint64_t sub_23BA33338@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProductViewIconWrapper();
  v5 = *(v4 + 36);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 40);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B0);
  v7 = swift_storeEnumTagMultiPayload();
  return a1(v7);
}

uint64_t sub_23BA33418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3(v87 - v5);
  v99 = *(a1 + 16);
  v6 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
  v7 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v96 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_3(v87 - v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C088);
  v100 = v7;
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_3(v87 - v16);
  v17 = sub_23BBDA438();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v23 = v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v87 - v25;
  v105 = v11;
  v104 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v103 = v27;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_3(v87 - v29);
  v101 = *(v6 - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  v34 = v87 - v33;
  v35 = *(a1 + 24);
  sub_23BBDB718();
  v95 = a1;
  v99 = v2;
  sub_23B9B75DC();
  sub_23BBDA428();
  sub_23B9E10FC();
  v36 = sub_23BBDD6A8();
  v90 = v19;
  v37 = *(v19 + 8);
  v37(v23, v17);
  v37(v26, v17);
  if (v36)
  {
    v88 = v37;
    v92 = v35;
    v113 = v35;
    v114 = MEMORY[0x277CE01B0];
    WitnessTable = swift_getWitnessTable();
    sub_23B9AD794();
    v39 = v93;
    v91 = v6;
    sub_23BBDB8A8();
    swift_getKeyPath();
    v40 = v107;
    sub_23B9B767C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v17);
    v42 = v39;
    v89 = v34;
    if (EnumTagSinglePayload == 1)
    {
      v112 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
      sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
      v43 = v94;
      sub_23BBDD6C8();
      v44 = __swift_getEnumTagSinglePayload(v107, 1, v17);
      v45 = v100;
      if (v44 != 1)
      {
        sub_23BA3473C(v107);
      }
    }

    else
    {
      v43 = v94;
      (*(v90 + 32))(v94, v107, v17);
      v45 = v100;
    }

    OUTLINED_FUNCTION_0_24();
    v62 = sub_23B97B518(v60, v61);
    v87[1] = WitnessTable;
    v110 = WitnessTable;
    v111 = v62;
    OUTLINED_FUNCTION_8_2();
    v63 = swift_getWitnessTable();
    sub_23BBDB748();

    v88(v43, v17);
    (*(v96 + 8))(v42, v45);
    OUTLINED_FUNCTION_1_15();
    v66 = sub_23B97B518(v64, v65);
    v108 = v63;
    v109 = v66;
    v67 = v105;
    v68 = swift_getWitnessTable();
    v69 = v97;
    v70 = OUTLINED_FUNCTION_9_12();
    sub_23B9D2D88(v70, v71, v68);
    v72 = *(v98 + 8);
    v73 = OUTLINED_FUNCTION_9_12();
    v72(v73);
    sub_23B9D2D88(v69, v67, v68);
    v59 = v102;
    OUTLINED_FUNCTION_9_12();
    v74 = v91;
    sub_23BA82D64();
    v75 = OUTLINED_FUNCTION_9_12();
    v72(v75);
    (v72)(v69, v67);
    (*(v101 + 8))(v89, v74);
    v35 = v92;
    v58 = MEMORY[0x277CE01B0];
  }

  else
  {
    v127 = v35;
    v128 = MEMORY[0x277CE01B0];
    OUTLINED_FUNCTION_8_2();
    v46 = swift_getWitnessTable();
    v47 = v91;
    sub_23B9D2D88(v34, v6, v46);
    v48 = v92;
    sub_23B9D2D88(v47, v6, v46);
    OUTLINED_FUNCTION_0_24();
    v51 = sub_23B97B518(v49, v50);
    v125 = v46;
    v126 = v51;
    v52 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_15();
    v55 = sub_23B97B518(v53, v54);
    v123 = v52;
    v124 = v55;
    swift_getWitnessTable();
    v56 = v102;
    sub_23BA82E14();
    v57 = *(v101 + 8);
    v57(v48, v6);
    v57(v47, v6);
    v57(v34, v6);
    v58 = MEMORY[0x277CE01B0];
    v59 = v56;
  }

  v121 = v35;
  v122 = v58;
  OUTLINED_FUNCTION_8_2();
  v76 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_24();
  v79 = sub_23B97B518(v77, v78);
  v119 = v76;
  v120 = v79;
  v80 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v83 = sub_23B97B518(v81, v82);
  v117 = v80;
  v118 = v83;
  v115 = swift_getWitnessTable();
  v116 = v76;
  OUTLINED_FUNCTION_2_7();
  v84 = v104;
  v85 = swift_getWitnessTable();
  sub_23B9D2D88(v59, v84, v85);
  return (*(v103 + 8))(v59, v84);
}

uint64_t sub_23BA33E90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_23BA33F20(a1, &v6 - v3);
  return sub_23BBBE2B0(v4);
}

uint64_t sub_23BA33F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BA33F90()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BA3463C();
    if (v1 <= 0x3F)
    {
      sub_23BA34694();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA34030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_23BBDA438() - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v7;
  }

  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_32;
  }

  v15 = v10 + ((v11 + v13 + (v14 & ~v13) + 1) & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (v19 < 2)
    {
LABEL_32:
      if (v7 < 0xFE)
      {
        v23 = *(((a1 + v14) & ~v13) + v11);
        if (v23 >= 2)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_32;
  }

LABEL_22:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23BA342A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_23BBDA438() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  if (v9 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v11 + 84) == 0;
  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = *(v8 + 64) + v16;
  v18 = v13 + 1;
  if (v15)
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v19 = v12 + ((v13 + 1 + v16 + (v17 & ~v16)) & ~v16) + 1;
  v20 = 8 * v19;
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 < a2)
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        return;
      case 2:
        *&a1[v19] = v23;
        return;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v19] = v23;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_62:
      __break(1u);
      JUMPOUT(0x23BA34604);
    case 4:
      *&a1[v19] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (a2)
      {
LABEL_34:
        if (v9 < 0xFE)
        {
          v27 = (&a1[v17] & ~v16);
          if (a2 > 0xFE)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (a2 - 255);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }
          }

          else
          {
            v27[v13] = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }
      }

      return;
  }
}

void sub_23BA3463C()
{
  if (!qword_27E198D28)
  {
    sub_23BBDA438();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198D28);
    }
  }
}

void sub_23BA34694()
{
  if (!qword_27E19C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1997B8);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19C080);
    }
  }
}

uint64_t sub_23BA3473C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA347A4()
{
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C088);
  sub_23BBDA358();
  sub_23BBDACE8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_24();
  sub_23B97B518(v0, &qword_27E1991D0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v1, &qword_27E19C088);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t sub_23BA34960(uint64_t a1)
{
  sub_23BBD9848();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA858();
}

double sub_23BA34A18()
{
  v0.n128_f64[0] = sub_23BAC7C28(&v11);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

uint64_t sub_23BA34A50()
{

  sub_23B979510();
  return sub_23BAC7C7C();
}

uint64_t sub_23BA34AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Subscription();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = sub_23BA373CC();
    MEMORY[0x23EEB50B0](v13);
    sub_23BA3A4B8(v12, type metadata accessor for Subscription);
    v14 = 0;
  }

  else
  {
    (*(v6 + 8))(v8, a1);
    v14 = 1;
  }

  v15 = sub_23BBD9848();
  return __swift_storeEnumTagSinglePayload(a2, v14, 1, v15);
}

uint64_t sub_23BA34C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 40);
  v17 = v11;
  if (v9 == 1)
  {

    v15 = v17;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v10, v17, *(&v17 + 1), v12, v13, 0);
    result = (*(v6 + 8))(v8, v5);
    v10 = v18;
    v15 = v19;
    v12 = v20;
    v13 = v21;
  }

  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

void SubscriptionOfferView.init(id:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v25 = v24;
  v61 = v27;
  v62 = v26;
  v64 = v28;
  v65 = v29;
  v59 = v30;
  v60 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_3_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_6();
  v63 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v56 - v39;
  v66 = v41;
  v67 = v42;
  v68 = a21;
  v69 = a22;
  OUTLINED_FUNCTION_9_13();
  v43 = type metadata accessor for SubscriptionOfferView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v45 = v60;
  *v33 = v59;
  v33[1] = v45;
  v66 = v25;
  v67 = v23;
  v57 = v25;
  v58 = a22;
  v68 = a21;
  v69 = a22;
  OUTLINED_FUNCTION_8_16();
  v46 = swift_storeEnumTagMultiPayload();
  v62(v46);
  v47 = swift_allocObject();
  *(v47 + 2) = v25;
  *(v47 + 3) = v23;
  *(v47 + 4) = a21;
  *(v47 + 5) = a22;
  v48 = v65;
  *(v47 + 6) = v64;
  *(v47 + 7) = v48;
  v49 = (v33 + v43[13]);
  *v49 = sub_23BA35314;
  v49[1] = v47;
  v50 = *(v35 + 32);
  v51 = v63;
  v50(v63, v40, v23);
  v52 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v53 = swift_allocObject();
  v54 = v58;
  v53[2] = v57;
  v53[3] = v23;
  v53[4] = a21;
  v53[5] = v54;
  v50(v53 + v52, v51, v23);
  v55 = (v33 + v43[14]);
  *v55 = sub_23BA3A8A8;
  v55[1] = v53;
  OUTLINED_FUNCTION_19_8(v43[15]);
  OUTLINED_FUNCTION_9_1();
}

double sub_23BA35018()
{
  v0.n128_f64[0] = sub_23BAC7C28(&v11);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

uint64_t sub_23BA3506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[0] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  v26[2] = a4;
  v26[3] = a5;
  v26[1] = a6;
  v26[4] = a6;
  v26[5] = a7;
  v18 = type metadata accessor for PromotionalIconLoadingView();
  MEMORY[0x28223BE20](v18);
  v20 = v26 - v19;
  sub_23BBDCD58();
  v21 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_23B9846E8(v14, &qword_27E19C300);
    v22 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();

  sub_23BBB10AC(v17, v26[0], a3, KeyPath, v24, v20);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA352DC()
{

  return swift_deallocObject();
}

void SubscriptionOfferView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v81 = v25;
  v82 = v24;
  v77 = v27;
  v78 = v26;
  v83 = v28;
  v73 = v29;
  v74 = v30;
  v32 = v31;
  v87 = a22;
  OUTLINED_FUNCTION_3_2();
  v79 = v33;
  v80 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_6();
  v76 = v36;
  MEMORY[0x28223BE20](v37);
  v85 = &v71 - v38;
  OUTLINED_FUNCTION_3_2();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v71 = &v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v71 - v45;
  v88 = v47;
  v89 = a21;
  v90 = a22;
  v91 = v48;
  v49 = v48;
  v86 = v48;
  OUTLINED_FUNCTION_21_7();
  v75 = type metadata accessor for SubscriptionOfferView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v51 = v74;
  *v32 = v73;
  v32[1] = v51;
  v72 = v32;
  v84 = v23;
  v88 = v23;
  v89 = a21;
  v90 = a22;
  v91 = v49;
  OUTLINED_FUNCTION_21_7();
  type metadata accessor for SubscriptionOfferView.Storage();
  OUTLINED_FUNCTION_14_12();
  v52 = swift_storeEnumTagMultiPayload();
  v53 = v78(v52);
  v54 = v85;
  v82(v53);
  v82 = *(v40 + 32);
  (v82)(&v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v23);
  v55 = v79;
  v56 = v76;
  (*(v79 + 16))(v76, v54, a21);
  v57 = (*(v40 + 80) + 49) & ~*(v40 + 80);
  v58 = *(v55 + 80);
  v59 = (v42 + v57 + v58) & ~v58;
  v60 = swift_allocObject();
  *(v60 + 16) = v84;
  *(v60 + 24) = a21;
  v61 = v86;
  *(v60 + 32) = v87;
  *(v60 + 40) = v61;
  *(v60 + 48) = v83;
  (v82)(v60 + v57, v71);
  v62 = *(v55 + 32);
  v63 = v60 + v59;
  v64 = v56;
  v62(v63, v56, a21);
  v65 = v75;
  v66 = v72;
  v67 = (v72 + *(v75 + 52));
  *v67 = sub_23BA35B20;
  v67[1] = v60;
  v62(v64, v85, a21);
  v68 = swift_allocObject();
  v68[2] = v84;
  v68[3] = a21;
  v69 = v86;
  v68[4] = v87;
  v68[5] = v69;
  v62(v68 + ((v58 + 48) & ~v58), v64, a21);
  v70 = (v66 + *(v65 + 56));
  *v70 = sub_23BA35BB8;
  v70[1] = v68;
  *(v66 + *(v65 + 60)) = 0;
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA35698(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v12 = sub_23BBDD648();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_23BBDD648();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v32 - v22;
  v38 = a5;
  v39 = a6;
  v36 = a8;
  v37 = a7;
  v40 = a7;
  v41 = a8;
  v24 = type metadata accessor for PromotionalIconLoadingView();
  MEMORY[0x28223BE20](v24);
  v26 = &v32 - v25;
  sub_23BBDCD58();
  v27 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {
    sub_23B9846E8(v20, &qword_27E19C300);
    v28 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v28);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v27 - 8) + 8))(v20, v27);
  }

  (*(*(a5 - 8) + 16))(v17, v33, a5);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  (*(*(a6 - 8) + 16))(v14, v34, a6);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a6);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_23BBB1200(v35 & 1, v23, v17, v14, KeyPath, v30, a5, a6, v26, v37, v36);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA35A2C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_4();
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BA35B20(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(*(*(v1 + 16) - 8) + 80);
  return sub_23BA35698(a1, *(v1 + 48), v1 + ((v3 + 49) & ~v3), v1 + ((((v3 + 49) & ~v3) + *(*(*(v1 + 16) - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), *(v1 + 16), v2, *(v1 + 32), *(v1 + 40));
}

void SubscriptionOfferView.init<>(id:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_22_7();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LOBYTE(v13) = v4;
  v10 = sub_23B9AD84C();
  SubscriptionOfferView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(v9, v7, v5, v3, v2, sub_23BA35CB0, v12, v1, &type metadata for AutomaticProductPlaceholderIcon, v0, v10, v11, v12[0], v12[1], v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t SubscriptionOfferView.init<>(id:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  *a4 = a1;
  a4[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0);
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_24_7();
  *(result + 16) = a3;
  v11 = (a4 + v8[13]);
  *v11 = sub_23BA35DB0;
  v11[1] = result;
  v12 = (a4 + v8[14]);
  *v12 = sub_23BA39B28;
  v12[1] = 0;
  *(a4 + v8[15]) = a3;
  return result;
}

void sub_23BA35DCC(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CE1410];
  *(a1 + 24) = MEMORY[0x277CE1428];
  *(a1 + 32) = v1;
}

void SubscriptionOfferView.init<>(_:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v29 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v30 = v3;
  v31 = MEMORY[0x277CE1428];
  v16 = MEMORY[0x277CE1410];
  v32 = v1;
  v33 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_9_13();
  v17 = type metadata accessor for SubscriptionOfferView();
  v18 = v9 + v17[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 0;
  sub_23BB4E690(v7, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9846E8(v13, qword_27E197A68);
    v19 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v21 = v20;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v22 + 8))(v7);
    *v9 = v19;
    v9[1] = v21;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v23 + 8))(v7);
    OUTLINED_FUNCTION_7_20();
    sub_23BA373CC();
    sub_23BA373CC();
  }

  v30 = v3;
  v31 = MEMORY[0x277CE1428];
  v32 = v1;
  v33 = v16;
  OUTLINED_FUNCTION_8_16();
  swift_storeEnumTagMultiPayload();
  v24 = swift_allocObject();
  *(v24 + 2) = v3;
  *(v24 + 3) = v1;
  v25 = v29;
  *(v24 + 4) = v28;
  *(v24 + 5) = v25;
  v26 = (v9 + v17[13]);
  *v26 = sub_23BA36314;
  v26[1] = v24;
  v27 = (v9 + v17[14]);
  *v27 = sub_23BA39B28;
  v27[1] = 0;
  OUTLINED_FUNCTION_19_8(v17[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA36060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v24 = a4;
  v25 = MEMORY[0x277CE1428];
  v26 = a5;
  v27 = MEMORY[0x277CE1410];
  v14 = type metadata accessor for PromotionalIconLoadingView();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_23BBDCD58();
  v17 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_23B9846E8(v10, &qword_27E19C300);
    v18 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v17 - 8) + 8))(v10, v17);
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();

  sub_23BBB10AC(v13, v23, a3, KeyPath, v20, v16);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA362DC()
{

  return swift_deallocObject();
}

void SubscriptionOfferView.init<>(_:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v39 = v5;
  v40 = v4;
  v42 = v6;
  v37 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_6();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  v38 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v43 = v3;
  v44 = MEMORY[0x277CE1428];
  v22 = v1;
  v45 = v1;
  v46 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_9_13();
  v23 = type metadata accessor for SubscriptionOfferView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  v25 = v37;
  sub_23BB4E690(v37, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_23B9846E8(v19, qword_27E197A68);
    *v9 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v9[1] = v26;
  }

  else
  {
    sub_23BA373CC();
    sub_23BA373CC();
  }

  v43 = v3;
  v44 = MEMORY[0x277CE1428];
  v45 = v22;
  v27 = v22;
  v46 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_8_16();
  v28 = swift_storeEnumTagMultiPayload();
  v29 = v38;
  v40(v28);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v30 + 8))(v25);
  v31 = *(v11 + 32);
  v32 = v41;
  v31(v41, v29, v3);
  v33 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  *(v34 + 24) = v27;
  *(v34 + 32) = v42 & 1;
  v31(v34 + v33, v32, v3);
  v35 = (v9 + v23[13]);
  *v35 = sub_23BA369FC;
  v35[1] = v34;
  v36 = (v9 + v23[14]);
  *v36 = sub_23BA39B28;
  v36[1] = 0;
  OUTLINED_FUNCTION_19_8(v23[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA36678(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v8 = sub_23BBDD648();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25[-v15];
  v27[0] = a4;
  v27[1] = MEMORY[0x277CE1428];
  v27[2] = a5;
  v27[3] = MEMORY[0x277CE1410];
  v17 = type metadata accessor for PromotionalIconLoadingView();
  MEMORY[0x28223BE20](v17);
  v19 = &v25[-v18];
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
  {
    sub_23B9846E8(v13, &qword_27E19C300);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v13, v20);
  }

  (*(*(a4 - 8) + 16))(v10, a3, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  LOBYTE(v27[0]) = 1;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_23BBB1200(v26 & 1, v16, v10, v27, KeyPath, v23, a4, MEMORY[0x277CE1428], v19, a5, MEMORY[0x277CE1410]);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA36988()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

uint64_t SubscriptionOfferView.init<>(_:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098);
  v13 = a3 + v12[16];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 0;
  sub_23BB4E690(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B9846E8(v9, qword_27E197A68);
    v14 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v16 = v15;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v17 + 8))(a1);
    *a3 = v14;
    a3[1] = v16;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v18 + 8))(a1);
    OUTLINED_FUNCTION_7_20();
    sub_23BA373CC();
    sub_23BA373CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_24_7();
  *(result + 16) = a2 & 1;
  v20 = (a3 + v12[13]);
  *v20 = sub_23BA3A8AC;
  v20[1] = result;
  v21 = (a3 + v12[14]);
  *v21 = sub_23BA39B28;
  v21[1] = 0;
  *(a3 + v12[15]) = 0;
  return result;
}

uint64_t sub_23BA36C88(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C320);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_23BBDCD58();
  v16 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_23B9846E8(v6, &qword_27E19C300);
    v17 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  }

  else
  {
    sub_23BBDCD38();
    OUTLINED_FUNCTION_1_4();
    (*(v18 + 8))(v6, v16);
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = &v14[v11[16]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v14[v11[13]];
  if (a2)
  {
    *v22 = 257;
    v23 = 1;
  }

  else
  {
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = -1;
  }

  v22[16] = v23;
  v24 = v11[14];
  v25 = v11[15];
  sub_23B979688();
  *&v14[v24] = KeyPath;
  *&v14[v25] = v20;
  sub_23B979688();
  sub_23B97B518(&qword_27E19C328, &qword_27E19C320);
  return sub_23BBDC0D8();
}

void SubscriptionOfferView.init<>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A8);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  sub_23BA3A574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0B0);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  sub_23BA3A574();
  v5 = swift_allocObject();
  sub_23BA373CC();
  v6 = (v1 + v3[13]);
  *v6 = sub_23BA37424;
  v6[1] = v5;
  sub_23BA373CC();
  v7 = swift_allocObject();
  sub_23BA373CC();
  v8 = (v1 + v3[14]);
  *v8 = sub_23BA37780;
  v8[1] = v7;
  OUTLINED_FUNCTION_19_8(v3[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA3712C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C310);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_23BBDCD58();
  v12 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_23B9846E8(v5, &qword_27E19C300);
    v13 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a2 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 36));
  v15 = v9[14];
  *&v11[v15] = swift_getKeyPath();
  v16 = v9[15];
  *&v11[v16] = swift_getKeyPath();
  v17 = &v11[v9[16]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v11[v9[13]];
  *v18 = v14;
  *(v18 + 1) = 0;
  v18[16] = 3;
  sub_23B979688();
  sub_23B97B518(&qword_27E19C318, &qword_27E19C310);

  return sub_23BBDC0D8();
}

uint64_t sub_23BA373CC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA37424(uint64_t a1)
{
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  OUTLINED_FUNCTION_13_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23BA3712C(a1, v5);
}

uint64_t sub_23BA37490@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 36));
  a2[3] = &type metadata for SubscriptionOfferViewStyleConfiguration.Icon;
  a2[4] = sub_23BA3A828();
  *a2 = v3;
}

uint64_t objectdestroy_23Tm()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = v3 + v1[5];
  v7 = type metadata accessor for SubscriptionComparator.Compared();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v8 + 8))(v6);
    v9 = *(v7 + 20);
    v10 = sub_23BBDCC88();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  if (*(v3 + v1[6]))
  {
  }

  if (*(v3 + v1[7]))
  {
  }

  v12 = v1[8];
  v13 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v3 + v12, 1, v13))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(v3 + v12, v13);
  }

  sub_23B99A808(*(v3 + v1[10]), *(v3 + v1[10] + 8), *(v3 + v1[10] + 16));

  v15 = v1[12];
  v16 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v3 + v15, 1, v16))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v17 + 8))(v3 + v15, v16);
  }

  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BA37780@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  OUTLINED_FUNCTION_13_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23BA37490(v5, a1);
}

void SubscriptionOfferView.init(groupID:visibleRelationship:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v82 = v25;
  v83 = v24;
  v80 = v27;
  v81 = v26;
  v77 = v28;
  v78 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_3_2();
  v86 = v32;
  v85 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_6();
  v84 = v35;
  MEMORY[0x28223BE20](v36);
  v79 = &v71 - v37;
  OUTLINED_FUNCTION_3_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_6();
  v75 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v71 - v43;
  v46 = *v45;
  v88 = v47;
  v89 = a21;
  v73 = a21;
  v74 = a22;
  v90 = a22;
  v91 = v48;
  v49 = v48;
  v87 = v48;
  OUTLINED_FUNCTION_21_7();
  v76 = type metadata accessor for SubscriptionOfferView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  v51 = v78;
  *v31 = v77;
  v31[1] = v51;
  v31[2] = v46;
  v88 = v23;
  v89 = a21;
  v90 = a22;
  v91 = v49;
  OUTLINED_FUNCTION_21_7();
  type metadata accessor for SubscriptionOfferView.Storage();
  OUTLINED_FUNCTION_14_12();
  v52 = swift_storeEnumTagMultiPayload();
  v53 = v81(v52);
  v54 = v79;
  v83(v53);
  v55 = *(v39 + 32);
  v56 = v75;
  v55(v75, v44, v23);
  v57 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v58 = swift_allocObject();
  v72 = v23;
  v59 = v73;
  v60 = v74;
  *(v58 + 2) = v23;
  *(v58 + 3) = v59;
  v61 = v87;
  *(v58 + 4) = v60;
  *(v58 + 5) = v61;
  v55(v58 + v57, v56, v23);
  v62 = v76;
  v63 = (v31 + *(v76 + 52));
  *v63 = sub_23BA37C44;
  v63[1] = v58;
  v64 = v86 + 32;
  v65 = *(v86 + 32);
  v66 = v84;
  v65(v84, v54, v59);
  v67 = (*(v64 + 48) + 48) & ~*(v64 + 48);
  v68 = swift_allocObject();
  v68[2] = v72;
  v68[3] = v59;
  v69 = v87;
  v68[4] = v60;
  v68[5] = v69;
  v65(v68 + v67, v66, v59);
  v70 = (v31 + *(v62 + 56));
  *v70 = sub_23BA3A8A8;
  v70[1] = v68;
  OUTLINED_FUNCTION_19_8(*(v62 + 60));
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA37B10(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_23BBDC0D8();
}

uint64_t sub_23BA37BD0()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

uint64_t sub_23BA37C84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_1_4();
  v4 = *(v3 + 16);

  return v4();
}

uint64_t objectdestroy_2Tm()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

void SubscriptionOfferView.init<>(groupID:visibleRelationship:icon:)()
{
  OUTLINED_FUNCTION_22_7();
  v5 = v4;
  v7 = v6;
  var48[0] = *v8;
  v9 = sub_23B9AD84C();
  SubscriptionOfferView.init(groupID:visibleRelationship:icon:placeholderIcon:)(v7, v5, var48, v3, v2, sub_23B9D2750, 0, v1, &type metadata for AutomaticProductPlaceholderIcon, v0, v9, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
}

uint64_t SubscriptionOfferView.init<>(groupID:visibleRelationship:)()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v5 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  *v3 = v1;
  v3[1] = v0;
  v3[2] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0);
  result = swift_storeEnumTagMultiPayload();
  v9 = (v3 + v6[13]);
  *v9 = sub_23BA39B24;
  v9[1] = 0;
  v10 = (v3 + v6[14]);
  *v10 = sub_23BA39B28;
  v10[1] = 0;
  *(v3 + v6[15]) = 0;
  return result;
}

uint64_t SubscriptionOfferView.init<>(groupID:visibleRelationship:useAppIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v9 = *a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_24_7();
  *(v12 + 16) = a4;
  v13 = (a5 + v10[13]);
  *v13 = sub_23BA39B2C;
  v13[1] = v12;
  result = OUTLINED_FUNCTION_24_7();
  *(result + 16) = a4;
  v15 = (a5 + v10[14]);
  *v15 = sub_23BA39B34;
  v15[1] = result;
  *(a5 + v10[15]) = 0;
  return result;
}

uint64_t sub_23BA37FD4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_23BB6F948(0, 0, &v3, 80.0, 80.0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2D0);
  sub_23BA3A6CC();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA3807C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2B0);
  sub_23BA3A5CC(&qword_27E19C2B8, &qword_27E19C2B0, &unk_23BBEEF68, sub_23BA3A648);
  result = sub_23BBDC0D8();
  v3 = MEMORY[0x277CE11C0];
  a1[3] = MEMORY[0x277CE11C8];
  a1[4] = v3;
  *a1 = result;
  return result;
}

void SubscriptionOfferView.body.getter()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v42 = v3;
  sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v40 = v5;
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v39 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0B8);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0C8);
  OUTLINED_FUNCTION_3_2();
  v37 = v21;
  v38 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v25 = v2[2];
  v26 = v2[3];
  v28 = v2[4];
  v27 = v2[5];
  sub_23BA38588(v0, v25, v26, v28, v27, v15);
  v43 = v25;
  v44 = v26;
  v45 = v28;
  v46 = v27;
  OUTLINED_FUNCTION_9_13();
  v29 = type metadata accessor for SubscriptionOfferView.Storage();
  sub_23BA34AB8(v29, v11);
  v30 = sub_23BBD9848();
  LOBYTE(v27) = __swift_getEnumTagSinglePayload(v11, 1, v30) == 1;
  sub_23B9846E8(v11, qword_27E199D08);
  v31 = &v19[*(v16 + 36)];
  *v31 = v27;
  if (qword_27E1977A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for StorefrontObserver(0);
  sub_23BA3A340(&qword_27E19C0D0, type metadata accessor for StorefrontObserver);

  *(v31 + 1) = sub_23BBDA0E8();
  *(v31 + 2) = v32;
  v33 = *(type metadata accessor for StorefrontLocaleViewModifier(0) + 24);
  *&v31[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  v34 = v39;
  sub_23BBDB138();
  v35 = sub_23BA39B64();
  sub_23BBDB968();
  (*(v40 + 8))(v34, v41);
  sub_23B9846E8(v19, &qword_27E19C0C0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v43 = v16;
  v44 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v38;
  sub_23BBDBA28();

  (*(v37 + 8))(v24, v36);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA38588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a1;
  v144 = a6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C280);
  MEMORY[0x28223BE20](v126);
  v125 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v118 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D20);
  MEMORY[0x28223BE20](v124);
  v123 = &v118 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C288);
  MEMORY[0x28223BE20](v131);
  v133 = (&v118 - v14);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C150);
  MEMORY[0x28223BE20](v132);
  v122 = &v118 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C140);
  MEMORY[0x28223BE20](v137);
  v135 = &v118 - v16;
  v120 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  MEMORY[0x28223BE20](v120);
  v119 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v134 = &v118 - v19;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C290);
  MEMORY[0x28223BE20](v141);
  v136 = (&v118 - v20);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C130);
  MEMORY[0x28223BE20](v148);
  v143 = (&v118 - v21);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C298);
  MEMORY[0x28223BE20](v145);
  v147 = &v118 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2A0);
  MEMORY[0x28223BE20](v138);
  v140 = &v118 - v23;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C100);
  MEMORY[0x28223BE20](v146);
  *&v142 = &v118 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8);
  MEMORY[0x28223BE20](v130);
  v129 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v128 = &v118 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C110);
  MEMORY[0x28223BE20](v139);
  v29 = &v118 - v28;
  v127 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v127);
  v31 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  *__src = a2;
  *&__src[8] = a3;
  v33 = a3;
  v34 = a4;
  *&__src[16] = a4;
  *&__src[24] = a5;
  v35 = a5;
  v36 = type metadata accessor for SubscriptionOfferView.Storage();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v118 - v38;
  (*(v40 + 16))(&v118 - v38, v149, v36, v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = *(v39 + 1);
      v143 = *v39;
      v141 = v91;
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v92 = type metadata accessor for SubscriptionOfferView();
      v93 = v149;
      v94 = (v149 + v92[13]);
      v95 = *v94;
      v96 = v94[1];
      v97 = swift_allocObject();
      *(v97 + 16) = v95;
      *(v97 + 24) = v96;
      v98 = *(v93 + v92[14]);

      v98(__src, v99);
      v100 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v101 = MEMORY[0x28223BE20](v100);
      (*(v103 + 16))(&v118 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0), v101);
      v104 = sub_23BBDC0D8();
      LOBYTE(v92) = *(v93 + v92[15]);
      LOBYTE(v159) = 0;
      v155 = 0;
      LOBYTE(v156) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B720);
      sub_23BBDBF58();
      v105 = v150;
      LOBYTE(v98) = v151;
      v106 = v152;
      v155 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
      sub_23BBDBF58();
      v108 = v150;
      v107 = v151;
      __swift_destroy_boxed_opaque_existential_1(__src);
      *__src = v143;
      *&__src[8] = v141;
      *&__src[16] = 0;
      __src[24] = v159;
      *&__src[32] = sub_23BA3A8A4;
      *&__src[40] = v97;
      *&__src[48] = v104;
      __src[56] = v92;
      *&__src[64] = v105;
      __src[72] = v98;
      *&__src[80] = v106;
      *&__src[88] = v108;
      *&__src[96] = v107;
      memcpy(v140, __src, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      sub_23B979510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120);
      sub_23B97B518(&qword_27E19C108, &qword_27E19C110);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
      v59 = v142;
      sub_23BBDACD8();
      v60 = &qword_27E19C100;
      sub_23B979510();
      goto LABEL_7;
    case 2u:
      v143 = type metadata accessor for Subscription;
      v118 = v31;
      sub_23BA373CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B8);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_23BBE7F10;
      v136 = type metadata accessor for Subscription;
      sub_23BA3A574();
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v61 = type metadata accessor for SubscriptionOfferView();
      v62 = v149;
      v63 = (v149 + v61[13]);
      v64 = *v63;
      v65 = v63[1];
      v66 = swift_allocObject();
      v137 = v66;
      *(v66 + 16) = v64;
      *(v66 + 24) = v65;
      v67 = *(v62 + v61[14]);

      v67(__src, v68);
      v69 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v70 = MEMORY[0x28223BE20](v69);
      (*(v72 + 16))(&v118 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), v70);
      v73 = sub_23BBDC0D8();
      v74 = *(v62 + v61[15]);
      v75 = v139;
      v76 = *(v139 + 64);
      sub_23BA3A574();
      __swift_storeEnumTagSinglePayload(&v29[v76], 0, 1, v127);
      *(v29 + 4) = v73;
      v77 = v75[19];
      *&v29[v77] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
      swift_storeEnumTagMultiPayload();
      v78 = &v29[v75[20]];
      *v78 = swift_getKeyPath();
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
      v78[40] = 0;
      v79 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
      v80 = v128;
      __swift_storeEnumTagSinglePayload(v128, 1, 1, v79);
      sub_23B979510();
      sub_23BBDBF58();
      sub_23B9846E8(v80, qword_27E199BF8);
      *v29 = v141;
      v29[8] = 1;
      v81 = v137;
      *(v29 + 2) = sub_23BA3A8A4;
      *(v29 + 3) = v81;
      v29[40] = v74;
      *&v29[v75[18]] = MEMORY[0x277D84F90];
      v82 = &v29[v75[17]];
      *v82 = 0;
      v82[8] = 1;
      __swift_destroy_boxed_opaque_existential_1(__src);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120);
      sub_23B97B518(&qword_27E19C108, &qword_27E19C110);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
      v83 = v142;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(v83, &qword_27E19C100);
      sub_23B9846E8(v29, &qword_27E19C110);
      v84 = v118;
      v85 = v143;
      goto LABEL_10;
    case 3u:
      v86 = v134;
      sub_23BA373CC();
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v87 = type metadata accessor for SubscriptionOfferView();
      sub_23BA34C54(v87, &v155);
      sub_23BB6BC9C(&v150);

      v159 = v157;
      sub_23B9846E8(&v159, &qword_27E19C2A8);
      if (v150)
      {
        v88 = v153;
        v89 = v150(v86);
        *v133 = v89;
        swift_storeEnumTagMultiPayload();
        sub_23BA39F00();
        swift_retain_n();
        v90 = v135;
        sub_23BBDACD8();

        *__src = v88;
        sub_23B9846E8(__src, &qword_27E19C2A8);
      }

      else
      {
        sub_23BA34C54(v87, __src);

        v158 = *&__src[32];
        sub_23B9846E8(&v158, &qword_27E19C2A8);
        swift_dynamicCastMetatype();
        v110 = v119;
        sub_23BA3A574();
        v111 = v121;
        sub_23B998C6C(v110, v121);
        v112 = *&v86[*(v120 + 36)];

        v113 = v123;
        sub_23BADDBE4(v111, v112, v123);
        v114 = v113 + *(v124 + 36);
        sub_23BA3A574();
        v115 = *(type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier() + 20);
        *(v114 + v115) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
        swift_storeEnumTagMultiPayload();
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        sub_23B97B75C();
        v116 = v122;
        sub_23BBDACD8();
        sub_23B9846E8(v113, &qword_27E197D20);
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        sub_23BA39F00();
        v90 = v135;
        sub_23BBDACD8();
        sub_23B9846E8(v116, &qword_27E19C150);
      }

      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
      sub_23BA39E74();
      v117 = v143;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(v117, &qword_27E19C130);
      sub_23B9846E8(v90, &qword_27E19C140);
      v85 = type metadata accessor for SubscriptionOfferViewStyleConfiguration;
      v84 = v86;
LABEL_10:
      result = sub_23BA3A4B8(v84, v85);
      break;
    default:
      v142 = *v39;
      v41 = v136;
      v140 = *(v39 + 2);
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v42 = type metadata accessor for SubscriptionOfferView();
      v43 = v149;
      v44 = (v149 + v42[13]);
      v45 = *v44;
      v46 = v44[1];
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      v48 = *(v43 + v42[14]);

      v48(__src, v49);
      v50 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v51 = MEMORY[0x28223BE20](v50);
      (*(v53 + 16))(&v118 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
      v54 = sub_23BBDC0D8();
      LOBYTE(v42) = *(v43 + v42[15]);
      LOBYTE(v159) = 1;
      v155 = 0;
      LOBYTE(v156) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B720);
      sub_23BBDBF58();
      v55 = v150;
      LOBYTE(v48) = v151;
      v56 = v152;
      v155 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
      sub_23BBDBF58();
      v57 = v150;
      v58 = v151;
      __swift_destroy_boxed_opaque_existential_1(__src);
      *__src = v142;
      *&__src[16] = v140;
      __src[24] = v159;
      *&__src[32] = sub_23BA3A544;
      *&__src[40] = v47;
      *&__src[48] = v54;
      __src[56] = v42;
      *&__src[64] = v55;
      __src[72] = v48;
      *&__src[80] = v56;
      *&__src[88] = v57;
      *&__src[96] = v58;
      memcpy(v41, __src, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      sub_23B979510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
      sub_23BA39E74();
      v59 = v143;
      sub_23BBDACD8();
      v60 = &qword_27E19C130;
      sub_23B979510();
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(__src, &qword_27E19C120);
      result = sub_23B9846E8(v59, v60);
      break;
  }

  return result;
}

unint64_t sub_23BA39B64()
{
  result = qword_27E19C0D8;
  if (!qword_27E19C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0C0);
    sub_23BA3A5CC(&qword_27E19C0E0, &qword_27E19C0B8, &unk_23BBEED98, sub_23BA39C4C);
    sub_23BA3A340(qword_27E19C158, type metadata accessor for StorefrontLocaleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0D8);
  }

  return result;
}

unint64_t sub_23BA39C4C()
{
  result = qword_27E19C0E8;
  if (!qword_27E19C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0F0);
    sub_23BA39CD8();
    sub_23BA39DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0E8);
  }

  return result;
}

unint64_t sub_23BA39CD8()
{
  result = qword_27E19C0F8;
  if (!qword_27E19C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C100);
    sub_23B97B518(&qword_27E19C108, &qword_27E19C110);
    sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0F8);
  }

  return result;
}

unint64_t sub_23BA39DBC()
{
  result = qword_27E19C128;
  if (!qword_27E19C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C130);
    sub_23B97B518(&qword_27E19C118, &qword_27E19C120);
    sub_23BA39E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C128);
  }

  return result;
}

unint64_t sub_23BA39E74()
{
  result = qword_27E19C138;
  if (!qword_27E19C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C140);
    sub_23BA39F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C138);
  }

  return result;
}

unint64_t sub_23BA39F00()
{
  result = qword_27E19C148;
  if (!qword_27E19C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C150);
    sub_23B97B75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C148);
  }

  return result;
}

void sub_23BA39FC8()
{
  type metadata accessor for SubscriptionOfferView.Storage();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23BA3A1F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA3A094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionOfferView.Storage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  v8 = *(a1 + *(a3 + 52));
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23BA3A150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionOfferView.Storage();
  if (*(*(result - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

void sub_23BA3A1F4()
{
  if (!qword_27E19ACB8)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19ACB8);
    }
  }
}

unint64_t sub_23BA3A248()
{
  result = qword_27E19C1E0;
  if (!qword_27E19C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19C1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0C0);
    sub_23BA39B64();
    swift_getOpaqueTypeConformance2();
    sub_23BA3A340(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C1E0);
  }

  return result;
}

uint64_t sub_23BA3A340(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23BA3A388()
{
  sub_23BA3A424();
  if (v0 <= 0x3F)
  {
    sub_23BA3A488();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Subscription();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SubscriptionOfferViewStyleConfiguration();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_23BA3A424()
{
  if (!qword_27E19C270)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E19C270);
    }
  }
}

uint64_t sub_23BA3A488()
{
  result = qword_27E19C278;
  if (!qword_27E19C278)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E19C278);
  }

  return result;
}

uint64_t sub_23BA3A4B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA3A50C()
{

  return swift_deallocObject();
}

uint64_t sub_23BA3A544@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_23BA3A574()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA3A5CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BA3A648()
{
  result = qword_27E19C2C0;
  if (!qword_27E19C2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2C8);
    sub_23B9AD84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2C0);
  }

  return result;
}

unint64_t sub_23BA3A6CC()
{
  result = qword_27E19C2D8;
  if (!qword_27E19C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2D0);
    sub_23BA3A750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2D8);
  }

  return result;
}

unint64_t sub_23BA3A750()
{
  result = qword_27E19C2E0;
  if (!qword_27E19C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2E8);
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2E0);
  }

  return result;
}

unint64_t sub_23BA3A7D4()
{
  result = qword_27E19C2F0;
  if (!qword_27E19C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2F0);
  }

  return result;
}

unint64_t sub_23BA3A828()
{
  result = qword_27E19C2F8;
  if (!qword_27E19C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2F8);
  }

  return result;
}

double OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_5_17(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_17_10(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return swift_allocObject();
}

uint64_t SubscriptionStoreView.init(groupID:visibleRelationships:marketingContent:)@<X0>(ValueMetadata *a1@<X5>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v9 = *v8;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v15 = v9;
  v16 = 1;
  v12(v10, v11, v8, v12);
  return sub_23BA3B958(&v14, v7, 0, a1, a2);
}

uint64_t sub_23BA3AA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23B99FCE0(v2 + *(a1 + 44), v12, &qword_27E1996C8);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_23BA3ABEC(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 48));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_23BA3AD3C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_23BA3AEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D8);
  sub_23BBDBF68();
  return v1;
}

uint64_t sub_23BA3AF74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  return v1;
}

uint64_t sub_23BA3B038()
{
  type metadata accessor for SubscriptionStoreViewEventConfiguration();
  sub_23BBDBF58();
  return v1;
}

uint64_t sub_23BA3B074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0);
  sub_23BBDBF68();
  return v1;
}

unint64_t sub_23BA3B0CC(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 72);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    LOBYTE(v12) = BYTE1(*v7);
    BYTE1(v12) = BYTE2(v8);
    BYTE2(v12) = BYTE3(v8);
    HIBYTE(v12) = BYTE4(v8);
  }

  else
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[11];
  }

  return v8 | (v12 << 8);
}

void *sub_23BA3B24C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + *(a1 + 76)), sizeof(__dst));
  sub_23BA5DACC(__src);
  return memcpy(a2, __src, 0x51uLL);
}

uint64_t sub_23BA3B2A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Subscription() - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[24] == 2 && *(*v1 + 16))
  {
    v7 = sub_23BA3FDD4(*v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Subscription);
    MEMORY[0x23EEB50B0](v7);
    sub_23BA3FE34(v6, type metadata accessor for Subscription);
    v8 = sub_23BBD9848();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_23BBD9848();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }
}

uint64_t sub_23BA3B400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 72) = 0;
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 88) = 0;
  *(a6 + 96) = swift_getKeyPath();
  *(a6 + 104) = 0;
  *(a6 + 112) = swift_getKeyPath();
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  sub_23BBDBF58();
  *(a6 + 152) = v19;
  sub_23BBDBF58();
  *(a6 + 168) = v19;
  *(a6 + 176) = *(&v19 + 1);
  type metadata accessor for SubscriptionStoreViewEventConfiguration();
  swift_allocObject();
  v18 = sub_23BB15FA0();
  sub_23BBDBF58();
  *(a6 + 184) = v19;
  *(a6 + 200) = swift_getKeyPath();
  *(a6 + 208) = 0;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  LOBYTE(v18) = 0;
  v12 = swift_getKeyPath();
  v23[0] = 0;
  v13 = swift_getKeyPath();
  v22[0] = 0;
  v14 = swift_getKeyPath();
  v21[0] = 0;
  *(a6 + 216) = KeyPath;
  *(a6 + 224) = 0;
  *(a6 + 225) = *v23;
  *(a6 + 228) = *&v23[3];
  *(a6 + 232) = v11;
  *(a6 + 240) = 0;
  *(a6 + 241) = *v22;
  *(a6 + 244) = *&v22[3];
  *(a6 + 248) = v12;
  *(a6 + 256) = 0;
  *(a6 + 257) = *v21;
  *(a6 + 260) = *&v21[3];
  *(a6 + 264) = v13;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  *(a6 + 284) = *&v20[3];
  *(a6 + 281) = *v20;
  *(a6 + 288) = v14;
  *(a6 + 296) = 0;
  *(a6 + 304) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0);
  sub_23BBDBF68();
  *(v18 + 59) = 0;
}

uint64_t sub_23BA3B664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E0);
  v10 = a7 + v9[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(KeyPath);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v12);
  v13 = a7 + v9[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = v9[15];
  sub_23BBDBF58();
  *(a7 + v14) = v31;
  v15 = a7 + v9[16];
  sub_23BBDBF58();
  *v15 = v31;
  *(v15 + 8) = *(&v31 + 1);
  v16 = (a7 + v9[17]);
  type metadata accessor for SubscriptionStoreViewEventConfiguration();
  swift_allocObject();
  v30 = sub_23BB15FA0();
  sub_23BBDBF58();
  *v16 = v31;
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v17);
  v18 = a7 + v9[19];
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  LOBYTE(v30) = 0;
  v21 = swift_getKeyPath();
  v35[0] = 0;
  v22 = swift_getKeyPath();
  v34[0] = 0;
  v23 = swift_getKeyPath();
  v33[0] = 0;
  *v18 = v19;
  *(v18 + 8) = 0;
  *(v18 + 9) = *v35;
  *(v18 + 12) = *&v35[3];
  *(v18 + 16) = v20;
  *(v18 + 24) = 0;
  *(v18 + 25) = *v34;
  *(v18 + 28) = *&v34[3];
  *(v18 + 32) = v21;
  *(v18 + 40) = 0;
  *(v18 + 41) = *v33;
  *(v18 + 44) = *&v33[3];
  *(v18 + 48) = v22;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 68) = *&v32[3];
  *(v18 + 65) = *v32;
  *(v18 + 72) = v23;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_23BA3FDD4(a5, a7 + v9[9], type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent);
  *(a7 + v9[10]) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0);
  sub_23BBDBF68();
  sub_23BA3FE34(a5, type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent);
  *(v30 + 59) = 1;
}

uint64_t sub_23BA3B958@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = *a1;
  v8 = *(a1 + 2);
  v30 = *(a1 + 24);
  v9 = type metadata accessor for SubscriptionStoreView();
  v10 = a5 + v9[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(KeyPath);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v12);
  v13 = a5 + v9[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = (a5 + v9[15]);
  *v14 = sub_23BA3AE90();
  v14[1] = v15;
  v16 = a5 + v9[16];
  *v16 = sub_23B9BE5CC() & 1;
  *(v16 + 8) = v17;
  v18 = (a5 + v9[17]);
  type metadata accessor for SubscriptionStoreViewEventConfiguration();
  swift_allocObject();
  sub_23BB15FA0();
  *v18 = sub_23BA3B038();
  v18[1] = v19;
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v20);
  v21 = a5 + v9[19];
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  *v21 = v22;
  *(v21 + 8) = 0;
  *(v21 + 16) = v23;
  *(v21 + 24) = 0;
  *(v21 + 32) = v24;
  *(v21 + 40) = 0;
  *(v21 + 48) = v25;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = v26;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0;
  *a5 = v31;
  *(a5 + 16) = v8;
  *(a5 + 24) = v30;
  Description = a4[-1].Description;
  Description[2](a5 + v9[9], a2, a4);
  *(a5 + v9[10]) = a3;
  v28 = sub_23BA3B074();
  (Description[1])(a2, a4);
  *(v28 + 59) = a4 != &type metadata for AutomaticSubscriptionStoreMarketingContent;
}

uint64_t SubscriptionStoreView.init<A>(productIDs:marketingContent:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, ValueMetadata *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  (*(v15 + 16))(v18 - v17, a1, v19);
  v22 = 0;
  v21 = sub_23BBDD2B8();
  v23 = 0;
  a2();
  sub_23BA3B958(&v21, v13, 0, a3, a5);
  return (*(v15 + 8))(a1, a4);
}

uint64_t SubscriptionStoreView.init<A>(subscriptions:marketingContent:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, uint64_t, uint64_t, uint64_t)@<X1>, ValueMetadata *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v23 = 0;
  v22 = sub_23BA52E70(v14, 0, 1, v15, v16);
  v24 = 2;
  a2(v22, v17, v18, v19);
  sub_23BA3B958(&v22, v13, 0, a3, a5);
  OUTLINED_FUNCTION_1_4();
  return (*(v20 + 8))(a1, a4);
}

uint64_t SubscriptionStoreView.init<A>(productIDs:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v8 = OUTLINED_FUNCTION_13_14(v7);
  v9(v8);
  sub_23B9B0108();
  v10 = OUTLINED_FUNCTION_19_9();
  SubscriptionStoreView.init<A>(productIDs:marketingContent:)(v10, v11, v12, v13, v14);
  return (*(v5 + 8))(a1, a2);
}

uint64_t SubscriptionStoreView.init<A>(subscriptions:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v8 = OUTLINED_FUNCTION_13_14(v7);
  v9(v8);
  sub_23B9B0108();
  v10 = OUTLINED_FUNCTION_19_9();
  SubscriptionStoreView.init<A>(subscriptions:marketingContent:)(v10, v11, v12, v13, v14);
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_23BA3C064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 24) == 1;
  result = sub_23BA3AEC8();
  v9 = *(v3 + *(a2 + 40));
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = result;
  *(a3 + 24) = v9;
  return result;
}

void sub_23BA3C0C8(uint64_t a1)
{
  if (sub_23BA3AD3C(a1) == 3)
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10.origin.x = v3;
    v10.origin.y = v5;
    v10.size.width = v7;
    v10.size.height = v9;
    CGRectGetWidth(v10);
  }
}

uint64_t sub_23BA3C178(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23BBDA358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = sub_23BA3AEC8();
  v12 = sub_23BB0607C(v11);
  v13 = sub_23BA3AF74();
  v14 = *(v1 + *(a1 + 40));
  v15 = *(a1 + 24);
  sub_23B97AA68(v12 & 1, v13 & 1, (v14 & 1) == 0, v3, v15);
  v16 = sub_23B97B560();
  v20[0] = v15;
  v20[1] = v16;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v7, v4, WitnessTable);
  v18 = *(v5 + 8);
  v18(v7, v4);
  sub_23B9D2D88(v10, v4, WitnessTable);
  return (v18)(v10, v4);
}

uint64_t SubscriptionStoreView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a1;
  v229 = a2;
  sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v227 = v4;
  v228 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v226 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  v225 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  v224 = v12;
  OUTLINED_FUNCTION_3_2();
  v245 = v13;
  v241 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  v240 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = *(a1 + 16);
  sub_23BBDA358();
  v17 = *(a1 + 24);
  v243 = v17;
  v18 = sub_23B97B560();
  v280 = v17;
  v281 = v18;
  v233 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for SubscriptionStoreDynamicView();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for ProductChangeCountTracker();
  v239 = sub_23BBDACE8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_3_2();
  v237 = v20;
  v238 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_2();
  v230 = v22;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v235 = v23;
  OUTLINED_FUNCTION_3_2();
  v211 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_2();
  v232 = v26;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v236 = v27;
  OUTLINED_FUNCTION_3_2();
  v215 = v28;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_2();
  v234 = v30;
  v31 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v217 = v32;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_2();
  v206 = v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8);
  OUTLINED_FUNCTION_22_8();
  v179 = v31;
  v35 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v220 = v36;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_2();
  v210 = v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C330);
  v182 = v35;
  v39 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v219 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_2();
  v212 = v42;
  v183 = v39;
  v43 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v221 = v44;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_2();
  v213 = v46;
  type metadata accessor for StorefrontLocaleViewModifier(255);
  v188 = v43;
  v47 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v222 = v48;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22_2();
  v214 = v50;
  v189 = v47;
  v51 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v223 = v52;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_2();
  v218 = v54;
  v55 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_5_18(v55);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_17();
  v57 = swift_getWitnessTable();
  v278 = WitnessTable;
  v279 = v57;
  v175 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17(v175);
  v174 = swift_getWitnessTable();
  v58 = MEMORY[0x277CDFC60];
  v276 = v174;
  v277 = MEMORY[0x277CDFC60];
  v59 = swift_getWitnessTable();
  v176 = v59;
  v60 = sub_23BA3D728();
  v274 = v59;
  v275 = v60;
  v61 = swift_getWitnessTable();
  v177 = v61;
  v62 = sub_23BA3D77C();
  v272 = v61;
  v273 = v62;
  v63 = swift_getWitnessTable();
  v178 = v63;
  v64 = sub_23BA3E900(&qword_27E199CD0, &qword_27E199CB8);
  v270 = v63;
  v271 = v64;
  v65 = swift_getWitnessTable();
  v180 = v65;
  v66 = sub_23BA3E900(&qword_27E19C348, &qword_27E19C330);
  v268 = v65;
  v269 = v66;
  v67 = swift_getWitnessTable();
  v181 = v67;
  v68 = sub_23BA3D7D0();
  v266 = v67;
  v267 = v68;
  v69 = swift_getWitnessTable();
  v184 = v69;
  OUTLINED_FUNCTION_6_13();
  v72 = sub_23BA3FC18(v70, v71);
  v264 = v69;
  v265 = v72;
  v187 = swift_getWitnessTable();
  v262 = v187;
  v263 = v58;
  v192 = v51;
  v191 = swift_getWitnessTable();
  *&v259 = v51;
  *(&v259 + 1) = v191;
  v194 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v195 = v73;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_22_2();
  v185 = v75;
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_22_8();
  v193 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v198 = v76;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_22_2();
  v186 = v78;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C358);
  OUTLINED_FUNCTION_22_8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v197 = v79;
  OUTLINED_FUNCTION_3_2();
  v202 = v80;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_22_2();
  v231 = v82;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v201 = v83;
  OUTLINED_FUNCTION_3_2();
  v207 = v84;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_22_2();
  v196 = v86;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v203 = v87;
  OUTLINED_FUNCTION_3_2();
  v208 = v88;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_22_2();
  v199 = v90;
  v205 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v209 = v91;
  MEMORY[0x28223BE20](v92);
  v200 = &v174 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v204 = &v174 - v95;
  v96 = v244;
  v246 = v244;
  v247 = v243;
  v97 = v242;
  v248 = v242;
  v98 = v230;
  sub_23BBDBE18();
  sub_23BBDC318();
  v99 = v238;
  sub_23BBDBB18();
  (*(v237 + 8))(v98, v99);
  v100 = v245;
  v101 = *(v245 + 16);
  v239 = v245 + 16;
  v238 = v101;
  v102 = v240;
  v103 = v216;
  v101(v240, v97, v216);
  v237 = *(v100 + 80);
  v104 = (v237 + 32) & ~v237;
  v105 = swift_allocObject();
  *(v105 + 16) = v96;
  v106 = v243;
  *(v105 + 24) = v243;
  v107 = *(v100 + 32);
  v108 = v102;
  v109 = v103;
  v107(v105 + v104, v108, v103);
  v230 = v107;
  v245 = v100 + 32;
  v110 = v235;
  v111 = v232;
  sub_23BB06140(sub_23BA3E188, v105, v235, v176);

  (*(v211 + 8))(v111, v110);
  v112 = v240;
  v113 = v242;
  v238(v240, v242, v109);
  v175 = v104;
  v114 = swift_allocObject();
  *(v114 + 16) = v244;
  *(v114 + 24) = v106;
  v107(v114 + v104, v112, v109);
  v115 = v206;
  v116 = v236;
  v117 = v234;
  sub_23BB2FDBC(sub_23BA3E250, v114, v236);

  (*(v215 + 8))(v117, v116);
  v118 = sub_23BA3AEC8();
  sub_23BB0607C(v118);
  v119 = v113;
  sub_23BA3AF74();
  v120 = v210;
  v121 = v179;
  sub_23B97AB94();
  (*(v217 + 8))(v115, v121);
  swift_getKeyPath();
  v122 = v109;
  sub_23BA3AA74(v109, &v259);
  sub_23BA3AEC8();
  sub_23BA3ABEC(v109);
  v123 = v224;
  sub_23BACC004();

  sub_23B97ADDC(&v259);
  v124 = v212;
  v125 = v182;
  sub_23BBDB748();

  sub_23B979910(v123, &qword_27E199810);
  (*(v220 + 8))(v120, v125);
  v126 = v213;
  v127 = v183;
  sub_23BA02F24(v183, v181);
  (*(v219 + 8))(v124, v127);
  v128 = *(v119 + 2);
  v129 = *(v119 + 24);
  v130 = v119;
  v259 = *v119;
  v260 = v128;
  v261 = v129;
  v131 = v225;
  sub_23BA3B2A4(v225);
  v132 = sub_23BBD9848();
  LOBYTE(v117) = __swift_getEnumTagSinglePayload(v131, 1, v132) == 1;
  sub_23B979910(v131, qword_27E199D08);
  v133 = v214;
  v134 = v188;
  sub_23BA98F9C(v117, v188, v184);
  (*(v221 + 8))(v126, v134);
  sub_23BA3C0C8(v122);
  sub_23BBDC318();
  v135 = v189;
  v136 = v218;
  sub_23BBDBB18();
  (*(v222 + 8))(v133, v135);
  v137 = v226;
  sub_23BBDB138();
  v138 = v185;
  v140 = v191;
  v139 = v192;
  sub_23BBDB968();
  (*(v227 + 8))(v137, v228);
  (*(v223 + 8))(v136, v139);
  swift_getKeyPath();
  *&v259 = v139;
  *(&v259 + 1) = v140;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v142 = v186;
  v143 = OpaqueTypeMetadata2;
  sub_23B9968C4();

  (*(v195 + 8))(v138, v143);
  v144 = v122;
  sub_23BA3B074();
  OUTLINED_FUNCTION_7_21();
  v147 = sub_23BA3FC18(v145, v146);
  v257 = OpaqueTypeConformance2;
  v258 = v147;
  v148 = v193;
  v149 = swift_getWitnessTable();
  sub_23BB14550();

  (*(v198 + 8))(v142, v148);
  v150 = v240;
  v238(v240, v130, v144);
  v151 = OUTLINED_FUNCTION_25_4();
  v152 = OUTLINED_FUNCTION_20_7(v151);
  v153 = v144;
  (v230)(v152);
  v154 = sub_23BA3E900(&qword_27E19C360, &qword_27E19C358);
  v255 = v149;
  v256 = v154;
  v155 = v197;
  v156 = swift_getWitnessTable();
  v157 = v196;
  v158 = v231;
  sub_23BBDBBF8();

  (*(v202 + 8))(v158, v155);
  v238(v150, v242, v153);
  v159 = OUTLINED_FUNCTION_25_4();
  v160 = OUTLINED_FUNCTION_20_7(v159);
  (v230)(v160);
  v161 = MEMORY[0x277CE0790];
  v253 = v156;
  v254 = MEMORY[0x277CE0790];
  v162 = v201;
  v163 = swift_getWitnessTable();
  v164 = v199;
  sub_23BBDB778();

  (*(v207 + 8))(v157, v162);
  v251 = v163;
  v252 = v161;
  v165 = v203;
  v166 = swift_getWitnessTable();
  v167 = v200;
  sub_23BB6FA24(v165, v166);
  (*(v208 + 8))(v164, v165);
  v168 = sub_23BA3EBE0();
  v249 = v166;
  v250 = v168;
  v169 = v205;
  v170 = swift_getWitnessTable();
  v171 = v204;
  sub_23B9D2D88(v167, v169, v170);
  v172 = *(v209 + 8);
  v172(v167, v169);
  sub_23B9D2D88(v171, v169, v170);
  return (v172)(v171, v169);
}

unint64_t sub_23BA3D728()
{
  result = qword_27E19C338;
  if (!qword_27E19C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C338);
  }

  return result;
}

unint64_t sub_23BA3D77C()
{
  result = qword_27E19C340;
  if (!qword_27E19C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C340);
  }

  return result;
}

unint64_t sub_23BA3D7D0()
{
  result = qword_27E19C350;
  if (!qword_27E19C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C350);
  }

  return result;
}

uint64_t sub_23BA3D824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_23BBDA358();
  v52 = a2;
  v77 = a2;
  v78 = sub_23B97B560();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for ProductChangeCountTracker();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v46 - v11;
  v53 = WitnessTable;
  v12 = type metadata accessor for SubscriptionStoreDynamicView();
  v13 = sub_23BBDACE8();
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v46 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v48 = &v46 - v22;
  v57 = v23;
  v56 = sub_23BBDACE8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v46 - v24;
  v25 = *a1;
  v26 = *(a1 + 8);
  v27 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) != 1)
    {
      v69 = 15;
      sub_23BA3FD38(v25, v26, v27, 2);
      v37 = type metadata accessor for SubscriptionStoreView();
      sub_23BA3C064(&v69, v37, &v73);
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = v76;
      sub_23BA3C178(v37);
      sub_23BACB3B0(v25, &v69, v17, v5, v9);
      v38 = swift_getWitnessTable();
      v39 = v46;
      sub_23B9D2D88(v9, v7, v38);
      v40 = *(v47 + 8);
      v40(v9, v7);
      sub_23B9D2D88(v39, v7, v38);
      v67 = swift_getWitnessTable();
      v68 = v67;
      swift_getWitnessTable();
      v36 = v54;
      sub_23BA82E14();
      v40(v9, v7);
      v40(v39, v7);
      goto LABEL_7;
    }

    v69 = *(a1 + 16);
    v28 = type metadata accessor for SubscriptionStoreView();

    sub_23BA3C064(&v69, v28, &v73);
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = v76;
    sub_23BA3C178(v28);
    sub_23BA97CC4(v25, v26, 1, &v69, v17, v5, v20);
    v29 = swift_getWitnessTable();
    v30 = v48;
    sub_23B9D2D88(v20, v12, v29);
    v31 = *(v50 + 8);
    v31(v20, v12);
    sub_23B9D2D88(v30, v12, v29);
    v32 = v49;
    sub_23BA82D64();
    v59 = v29;
    v60 = v29;
  }

  else
  {
    v69 = 15;
    sub_23BA3FD38(v25, v26, v27, 0);
    v33 = type metadata accessor for SubscriptionStoreView();
    sub_23BA3C064(&v69, v33, &v73);
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = v76;
    sub_23BA3C178(v33);
    sub_23BA97CC4(v25, 0, 0, &v69, v17, v5, v20);
    v34 = swift_getWitnessTable();
    v30 = v48;
    sub_23B9D2D88(v20, v12, v34);
    v31 = *(v50 + 8);
    v31(v20, v12);
    sub_23B9D2D88(v30, v12, v34);
    v32 = v49;
    sub_23BA82E14();
    v61 = v34;
    v62 = v34;
  }

  v35 = v57;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = v54;
  sub_23BA82D64();
  (*(v51 + 8))(v32, v35);
  v31(v20, v12);
  v31(v30, v12);
LABEL_7:
  v65 = swift_getWitnessTable();
  v66 = v65;
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v63 = v41;
  v64 = v42;
  v43 = v56;
  v44 = swift_getWitnessTable();
  sub_23B9D2D88(v36, v43, v44);
  return (*(v55 + 8))(v36, v43);
}

uint64_t sub_23BA3E158(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2 || a4 == 1)
  {
  }

  return result;
}

uint64_t sub_23BA3E17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23BA3E188()
{
  v0 = type metadata accessor for SubscriptionStoreView();
  OUTLINED_FUNCTION_13_0(v0);

  return sub_23BA3E0FC();
}

uint64_t sub_23BA3E250()
{
  v0 = type metadata accessor for SubscriptionStoreView();
  OUTLINED_FUNCTION_13_0(v0);

  return sub_23BA3E210();
}

uint64_t sub_23BA3E374(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreView();
  sub_23BA3B074();
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_23BA3FD38(*a1, v8, v9, v10);
  sub_23BA3B24C(v2, v11);
  sub_23BA3B0CC(v2);
  sub_23BB145C4();
  sub_23B979500(v11[0]);
  sub_23B979500(v11[2]);
  sub_23B979500(v11[4]);
  sub_23B979500(v11[6]);
  v14 = v12;
  v15 = v13;
  sub_23B979910(&v14, &qword_27E19B400);

  sub_23BA3E158(v7, v8, v9, v10);
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  v4 = __swift_project_value_buffer(v3, qword_27E1BFC88);
  v5 = sub_23BBDD5B8();
  return sub_23B9D395C(1, v5, v4);
}

uint64_t sub_23BA3E4D4()
{
  v0 = type metadata accessor for SubscriptionStoreView();
  sub_23BA3B074();
  sub_23BA3B24C(v0, v2);
  sub_23BA3B0CC(v0);
  sub_23BB14788();
  sub_23B979500(v2[0]);
  sub_23B979500(v2[2]);
  sub_23B979500(v2[4]);
  sub_23B979500(v2[6]);
  v5 = v3;
  v6 = v4;
  sub_23B979910(&v5, &qword_27E19B400);

  sub_23BA3B074();
  sub_23BB148CC();
}

uint64_t AutomaticSubscriptionStoreMarketingContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(type metadata accessor for SubscriptionStoreDefaultMarketingView() + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BA3E708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Product.SubscriptionRelationship.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BA3E748@<X0>(uint64_t *a1@<X8>)
{
  result = Product.SubscriptionRelationship.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23BA3E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_23B99FCE0(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_23BA3E864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA1E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BA3E900(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SubscriptionStoreView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  sub_23BA3E158(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  (*(*(v1 - 8) + 8))(v3 + v2[9], v1);
  v4 = v3 + v2[11];
  if (*(v4 + 40))
  {
    if (*(v4 + 24) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
  }

  v5 = OUTLINED_FUNCTION_7_9(v2[12]);
  j__swift_release(v5, v6);
  v7 = OUTLINED_FUNCTION_7_9(v2[13]);
  sub_23B97B450(v7, v8);
  v9 = v3 + v2[14];
  sub_23BA3E17C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

  v10 = OUTLINED_FUNCTION_7_9(v2[18]);
  sub_23B97B450(v10, v11);
  v12 = v3 + v2[19];
  j__swift_release(*v12, *(v12 + 8));
  j__swift_release(*(v12 + 16), *(v12 + 24));
  j__swift_release(*(v12 + 32), *(v12 + 40));
  sub_23BA15630(*(v12 + 48), *(v12 + 56), *(v12 + 64));
  sub_23BA15630(*(v12 + 72), *(v12 + 80), *(v12 + 88));

  return swift_deallocObject();
}

uint64_t sub_23BA3EB4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for SubscriptionStoreView();
  OUTLINED_FUNCTION_13_0(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

unint64_t sub_23BA3EBE0()
{
  result = qword_27E19C368;
  if (!qword_27E19C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C368);
  }

  return result;
}

uint64_t sub_23BA3EC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA1E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23BA3ED18()
{
  result = qword_27E19C370;
  if (!qword_27E19C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C370);
  }

  return result;
}

unint64_t sub_23BA3ED70()
{
  result = qword_27E19C378;
  if (!qword_27E19C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C378);
  }

  return result;
}

unint64_t sub_23BA3EDC8()
{
  result = qword_27E19C380;
  if (!qword_27E19C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C380);
  }

  return result;
}

unint64_t sub_23BA3EE20()
{
  result = qword_27E19C388[0];
  if (!qword_27E19C388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19C388);
  }

  return result;
}

void sub_23BA3EE74()
{
  type metadata accessor for SubscriptionStoreView.Storage();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23BA3F5AC(319, &qword_27E19C410, &type metadata for SubscriptionStoreControlBackgroundStyleInternal, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23BA3F4E4();
        if (v3 <= 0x3F)
        {
          sub_23BA3F5AC(319, &qword_27E198D38, &type metadata for InterfaceIdiom, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23BA3F548(319, &qword_27E19C428, type metadata accessor for CGRect, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_23BA3F5AC(319, &qword_27E19C430, &type metadata for SubscriptionStoreBackgroundState, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_23BA3F5AC(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_23BA3F548(319, &qword_27E19C438, type metadata accessor for SubscriptionStoreViewEventConfiguration, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_23BA3F5AC(319, &qword_27E19C440, &_s26AuxiliaryButtonsVisibilityVN, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BA3F0E8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 < a2)
  {
    v10 = ((((((((((v7 + 25) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
    v11 = (a2 - v9 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = a1[v10];
        if (!a1[v10])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *&a1[v10];
        if (*&a1[v10])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA3F27CLL);
      case 4:
        v15 = *&a1[v10];
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = (v15 - 1) << (8 * (((((((((((v7 + 25) & ~v7) + v8) & 0xF8) - 105) & 0xF8) + 23) & 0xF8) + 39) & 0xF8) + 89));
        if (v10 <= 3)
        {
          v18 = *a1;
        }

        else
        {
          v17 = 0;
          v18 = *a1;
        }

        return v9 + (v18 | v17) + 1;
      default:
        break;
    }
  }

  v19 = &a1[v7 + 25] & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((((((v19 + v8) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_23BA3F290(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = ((((((((((v10 + 25) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = (a3 - v9 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 < a2)
  {
    v17 = ~v9 + a2;
    bzero(a1, ((((((((((v10 + 25) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89);
    if (v12 <= 3)
    {
      v18 = (v17 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v12 > 3)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        return;
      case 2:
        *&a1[v12] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v12] = v18;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BA3F4BCLL);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        v19 = &a1[v10 + 25] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((((((v19 + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

void sub_23BA3F4E4()
{
  if (!qword_27E19C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C420);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19C418);
    }
  }
}

void sub_23BA3F548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23BA3F5AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionStoreMarketingContent(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA3F698);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s24SubscriptionRelationshipVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24SubscriptionRelationshipVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23BA3F728()
{
  sub_23BBDA358();
  sub_23B97B560();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for SubscriptionStoreDynamicView();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for ProductChangeCountTracker();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDBE28();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C330);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for StorefrontLocaleViewModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  v0 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_5_18(v0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_17();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17(WitnessTable);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BA3D728();
  swift_getWitnessTable();
  sub_23BA3D77C();
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E199CD0, &qword_27E199CB8);
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E19C348, &qword_27E19C330);
  swift_getWitnessTable();
  sub_23BA3D7D0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_13();
  sub_23BA3FC18(v2, v3);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C358);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_21();
  sub_23BA3FC18(v4, v5);
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E19C360, &qword_27E19C358);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BA3EBE0();
  return swift_getWitnessTable();
}

uint64_t sub_23BA3FC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA3FC60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BA3FCA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA3FCE8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23BA3FD38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2 || a4 == 1)
  {
  }

  return result;
}

void sub_23BA3FD70(uint64_t a1@<X8>)
{
  *a1 = sub_23BADA598();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_23BA3FDD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA3FE34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 - 120) = result;
  *(v1 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{
  v3 = *(v1 + 552);
  *(a1 + 16) = *(v1 + 560);
  *(a1 + 24) = v3;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_23BBDACE8();
}

double sub_23BA40034@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_23BBDCD08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_23BA160B0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199660);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v9 + 32))(v14, v7, v8);
    sub_23BACBE14(v11);
    sub_23BB72A48();
    v15 = *(v9 + 8);
    v15(v11, v8);
    *&v22 = sub_23BBDB668();
    *(&v22 + 1) = v16;
    *&v23 = v17 & 1;
    *(&v23 + 1) = v18;
    v24 = 0;
    sub_23BA40B30();
    sub_23BBDACD8();
    v15(v14, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_23B9EA92C(v7, &qword_27E198848);
    v22 = 0u;
    v23 = 0u;
    v24 = 1;
    sub_23BA40B30();
    sub_23BBDACD8();
  }

  result = *v25;
  v20 = v25[1];
  v21 = v26;
  *a2 = v25[0];
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_23BA40344()
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](0);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA40390()
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](0);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA403D0()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_23BBDD5A8();
    v6 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

double AutomaticSubscriptionOptionGroupLabel.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (sub_23BA403D0() == 1)
  {
    v3 = sub_23BA408C4(v1, &v104);
    if (*(&v105 + 1))
    {
      OUTLINED_FUNCTION_1_26(v3, v4, v5, v6, v7, v8, v9, v10, v72, v76, v80, v84, v88, v92, v96, v100, v104, v105, v106, v107, v108, v109);
      OUTLINED_FUNCTION_2_19(v11, v12, v13, v14, v15, v16, v17, v18, v73, v77, v81, v85, v89, v93, v97, v101, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F8);
      sub_23BA40AA4();
      sub_23BA40B84();
      sub_23BBDACD8();
      sub_23B9EA92C(&v108, &qword_27E19C538);
      v19 = v104;
      v20 = v105;
      v21 = v106;
      v22 = BYTE1(v106);
    }

    else
    {
      sub_23B9EA92C(&v104, &qword_27E19C4E8);
      *&v104 = sub_23BA40934;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      LOWORD(v106) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F8);
      sub_23BA40AA4();
      v43 = sub_23BA40B84();
      OUTLINED_FUNCTION_0_25(v43, v44, v45, v46, v43, v47, v48, v49, v72, v76, v80, v84, v88, v92, v96, v100, v104);
      sub_23BBDACD8();
      v19 = v108;
      v20 = v109;
      v21 = v110;
      v22 = HIBYTE(v110);
    }

    if (v22)
    {
      v50 = 256;
    }

    else
    {
      v50 = 0;
    }

    v104 = v19;
    v105 = v20;
    LOWORD(v106) = v50 | v21;
    BYTE2(v106) = 1;
  }

  else
  {
    v23 = sub_23BA408C4(v1, &v104);
    if (*(&v105 + 1))
    {
      OUTLINED_FUNCTION_1_26(v23, v24, v25, v26, v27, v28, v29, v30, v72, v76, v80, v84, v88, v92, v96, v100, v104, v105, v106, v107, v108, v109);
      OUTLINED_FUNCTION_2_19(v31, v32, v33, v34, v35, v36, v37, v38, v75, v79, v83, v87, v91, v95, v99, v103, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0);
      sub_23BA40AA4();
      sub_23BBDACD8();
      sub_23B9EA92C(&v108, &qword_27E19C538);
      v39 = v104;
      v40 = v105;
      v41 = v106;
      v42 = BYTE1(v106);
    }

    else
    {
      sub_23B9EA92C(&v104, &qword_27E19C4E8);
      sub_23BBDAA48();
      if (qword_27E197628 != -1)
      {
        swift_once();
      }

      v51 = qword_27E1BF840;
      LOWORD(v76) = 256;
      *&v104 = sub_23BBDB648();
      *(&v104 + 1) = v52;
      *&v105 = v53 & 1;
      *(&v105 + 1) = v54;
      LOWORD(v106) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0);
      v55 = sub_23BA40AA4();
      OUTLINED_FUNCTION_0_25(v55, v56, MEMORY[0x277CE0BD8], v55, MEMORY[0x277CE0BC8], v57, v58, v59, 0, v76, v80, v84, v88, v92, v96, v100, v104);
      sub_23BBDACD8();
      v39 = v108;
      v40 = v109;
      v41 = v110;
      v42 = HIBYTE(v110);
    }

    if (v42)
    {
      v60 = 256;
    }

    else
    {
      v60 = 0;
    }

    v104 = v39;
    v105 = v40;
    LOWORD(v106) = v60 | v41;
    BYTE2(v106) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C520);
  sub_23BA40C10();
  v61 = sub_23BA40C9C();
  OUTLINED_FUNCTION_0_25(v61, v62, v63, v64, v61, v65, v66, v67, v74, v78, v82, v86, v90, v94, v98, v102, v104);
  sub_23BBDACD8();
  result = *&v108;
  v69 = v109;
  v70 = v110;
  v71 = v111;
  *a1 = v108;
  *(a1 + 16) = v69;
  *(a1 + 32) = v70;
  *(a1 + 34) = v71;
  return result;
}

uint64_t sub_23BA408C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BA40934()
{
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v0, qword_27E1BFC88);
  v1 = sub_23BBDD5A8();
  log = sub_23BBD9988();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446466;
    *(v2 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v5);
    *(v2 + 12) = 2082;
    *(v2 + 14) = sub_23BA5AB90(0xD00000000000003ALL, 0x800000023BBE0ED0, &v5);
    _os_log_impl(&dword_23B970000, log, v1, "%{public}s%{public}s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v3, -1, -1);
    MEMORY[0x23EEB6DC0](v2, -1, -1);
  }
}

unint64_t sub_23BA40AA4()
{
  result = qword_27E19C500;
  if (!qword_27E19C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C4F0);
    sub_23BA40B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C500);
  }

  return result;
}

unint64_t sub_23BA40B30()
{
  result = qword_27E19C508;
  if (!qword_27E19C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C508);
  }

  return result;
}

unint64_t sub_23BA40B84()
{
  result = qword_27E19C510;
  if (!qword_27E19C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C4F8);
    sub_23BA40B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C510);
  }

  return result;
}

unint64_t sub_23BA40C10()
{
  result = qword_27E19C528;
  if (!qword_27E19C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C518);
    sub_23BA40AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C528);
  }

  return result;
}

unint64_t sub_23BA40C9C()
{
  result = qword_27E19C530;
  if (!qword_27E19C530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C520);
    sub_23BA40AA4();
    sub_23BA40B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C530);
  }

  return result;
}

uint64_t sub_23BA40D44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDBE38();
  v3 = sub_23BBDBD48();
  v4 = sub_23BBDBCE8();
  result = sub_23BBDB398();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI37AutomaticSubscriptionOptionGroupLabelV08StandardI0O5label_SH_p13representedIDtSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_23BA40DF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_23BA40E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_23BA40EC0()
{
  result = qword_27E19C540;
  if (!qword_27E19C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C548);
    sub_23BA40C10();
    sub_23BA40C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionOptionGroupLabel.StandardLabel(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA40FF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BA41034()
{
  result = qword_27E19C550;
  if (!qword_27E19C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C550);
  }

  return result;
}

unint64_t sub_23BA410A8()
{
  result = qword_27E19C558;
  if (!qword_27E19C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C560);
    sub_23BA41160();
    sub_23B97B518(&qword_27E19C578, &qword_27E19C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C558);
  }

  return result;
}

unint64_t sub_23BA41160()
{
  result = qword_27E19C568;
  if (!qword_27E19C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C570);
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C568);
  }

  return result;
}

double OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22)
{
  a21 = a17;
  a22 = a18;
  *(v22 + 32) = a19;

  return sub_23BA40034(&a21, &a17);
}

uint64_t sub_23BA41268@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v48 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v46[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46[-v15];
  v17 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v2 + *(type metadata accessor for SubscriptionPickerSubscribeButtonModel() + 20);
  v24 = *(v23 + 16);
  switch(v24)
  {
    case 0:
    case 2:
      v25 = type metadata accessor for SubscriptionStoreCopyWriter(0);
      sub_23BA41848(v2 + *(v25 + 40), v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        sub_23B9C8F9C(v16);
      }

      else
      {
        (*(v19 + 32))(v22, v16, v17);
        sub_23BBDCBF8();
        sub_23BBDCBD8();
        v47 = sub_23B9A0684(v13, v11);
        v5 = (v48 + 8);
        v34 = *(v48 + 8);
        v34(v11, v6);
        v34(v13, v6);
        if (v47)
        {
          sub_23BBDAA48();
          OUTLINED_FUNCTION_1_27();
          (*(v19 + 8))(v22, v17);
          v35 = v49;
LABEL_17:
          *v35 = v5;
          v35[1] = v2;
          *(v35 + 16) = v6 & 1;
          v35[3] = v11;
          goto LABEL_20;
        }

        (*(v19 + 8))(v22, v17);
      }

      v35 = v49;
      sub_23BBDAA48();
      OUTLINED_FUNCTION_1_27();
      goto LABEL_17;
    case 1:
      v26 = *(v2 + *(type metadata accessor for SubscriptionStoreCopyWriter(0) + 36));
      if ((v26 & 8) != 0)
      {
        sub_23BBDAA28();
        sub_23BBDAA18();
        sub_23BBDAA08();
        sub_23BBDAA18();
        v27 = sub_23BBDAA58();
      }

      else if ((v26 & 6) != 0)
      {
        v27 = sub_23BB747BC();
      }

      else
      {

        v27 = sub_23BBDAA48();
      }

      v45 = v49;
      *v49 = v27;
      v45[1] = v28;
      *(v45 + 16) = v29 & 1;
      v45[3] = v30;
LABEL_20:
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      return swift_storeEnumTagMultiPayload();
    case 3:
      v31 = v49;
      sub_23BB95108();
      v32 = *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
      sub_23BB95108();
      v33 = _s11PriceStringOMa(0);
      __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v33);
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      goto LABEL_11;
    default:
      v36 = *(v23 + 24);
      v37 = *(v23 + 32);
      v38 = *(v23 + 8);

      v39 = OUTLINED_FUNCTION_0_26();
      sub_23B9E711C(v39, v40);
      v41 = OUTLINED_FUNCTION_0_26();
      sub_23B9E67A8(v41, v42);
      v43 = v49;
      *v49 = v38;
      v43[1] = v24;
      *(v43 + 16) = v36 & 1;
      v43[3] = v37;
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_11:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t type metadata accessor for SubscriptionPickerSubscribeButtonModel()
{
  result = qword_27E19C588;
  if (!qword_27E19C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA41848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA418CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 4;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BA4199C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 + 3);
  }

  return result;
}

uint64_t sub_23BA41A48()
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA41AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0);
  sub_23BBDC118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A8);
  sub_23BA425C8();
  sub_23BBDBC88();
}

id sub_23BA41BAC()
{
  v9 = *v0;
  v10 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0);
  sub_23BBDC118();
  v1 = v8;
  v2 = type metadata accessor for UIKitIndexView.Coordinator();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_C3D66C71BBD115CD7E02F3EACA7B285614UIKitIndexView11Coordinator__value];
  *v4 = v7;
  *(v4 + 2) = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_23BA41C48()
{
  v0 = sub_23BBDA928();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v7 setAllowsContinuousInteraction_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5C8);
  sub_23BBDB158();
  v8 = v17;
  [v7 addTarget:v17 action:sel_valueChanged_ forControlEvents:4096];

  v9 = sub_23BBDAF18();
  sub_23BBDB168();
  LODWORD(v17) = v9;
  sub_23BA42800();
  if (!sub_23BBD9B68())
  {
    v10 = [objc_opt_self() tertiaryLabelColor];
    sub_23BBDBCA8();
  }

  v11 = sub_23BBDD5D8();
  v12 = *(v1 + 8);
  v12(v6, v0);
  [v7 setPageIndicatorTintColor_];

  v13 = sub_23BBDAEF8();
  sub_23BBDB168();
  LODWORD(v17) = v13;
  if (!sub_23BBD9B68())
  {
    sub_23BBDBD68();
  }

  v14 = sub_23BBDD5D8();
  v12(v3, v0);
  [v7 setCurrentPageIndicatorTintColor_];

  return v7;
}

id sub_23BA41ECC(void *a1)
{
  v6 = *v1;
  v7 = *(v1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0);
  MEMORY[0x23EEB48C0](&v5, v3);
  [a1 setCurrentPage_];
  [a1 setNumberOfPages_];
  return [a1 setBackgroundStyle_];
}

uint64_t sub_23BA42008(void *a1)
{
  swift_getKeyPath();
  [a1 interactionState];
  sub_23BA420D0();
}

uint64_t sub_23BA420D0()
{
  swift_setAtWritableKeyPath();

  sub_23BBDA3B8();
}

uint64_t sub_23BA42290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBD9C88();
  *a1 = result & 1;
  return result;
}

id sub_23BA42368@<X0>(void *a1@<X8>)
{
  result = sub_23BA41BAC();
  *a1 = result;
  return result;
}

uint64_t sub_23BA42410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA427AC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BA42474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA427AC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BA424D8()
{
  sub_23BA427AC();
  sub_23BBDAC88();
  __break(1u);
}

uint64_t sub_23BA4251C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23BA4255C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23BA425C8()
{
  result = qword_27E19C5B0;
  if (!qword_27E19C5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5A8);
    sub_23BA4264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5B0);
  }

  return result;
}

unint64_t sub_23BA4264C()
{
  result = qword_27E19C5B8;
  if (!qword_27E19C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5B8);
  }

  return result;
}

uint64_t sub_23BA426A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23BA426E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23BA42738()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5A8);
  sub_23BA425C8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BA427AC()
{
  result = qword_27E19C5C0;
  if (!qword_27E19C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5C0);
  }

  return result;
}

unint64_t sub_23BA42800()
{
  result = qword_27E19C5D0;
  if (!qword_27E19C5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19C5D0);
  }

  return result;
}

uint64_t View.offerCodeRedemption(isPresented:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  v16 = 0;
  v15[0] = swift_getKeyPath();
  LOBYTE(v15[1]) = 0;
  v15[2] = a1;
  v15[3] = a2;
  LOBYTE(v15[4]) = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = sub_23BA4293C;
  v15[8] = 0;
  LOBYTE(v15[9]) = 0;

  MEMORY[0x23EEB43C0](v15, a6, &type metadata for OfferCodeRedeemSheetModifier, a7);
  memcpy(__dst, v15, 0x49uLL);
  return sub_23BA42974(__dst);
}

uint64_t sub_23BA4293C()
{
  type metadata accessor for OfferCodeRedeemCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23BA429A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v12 = *(v2 + 16);
  v13 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v6 = v15;
  v7 = v16;
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x49uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5E0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5E8) + 36);
  *v10 = v14;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = sub_23BA44318;
  *(v10 + 32) = v8;
  return sub_23BA44320(v3, &v12);
}

uint64_t sub_23BA42AD8(unsigned __int8 *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for SKLogger();
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v44 = *a2;
  v45 = a2[8];
  if (v45 == 1)
  {
    v17 = v16;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = v12;

    sub_23BBDD5A8();
    v18 = v9;
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    v9 = v18;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v44, &unk_27E19B5D0);
    (*(v11 + 8))(v14, v40);
    v16 = v41;
    if (!v41)
    {
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23BBE7F10;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 32) = 0xD00000000000004DLL;
      *(v28 + 40) = 0x800000023BBE1020;
      sub_23BBDDB98();

      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v7, qword_27E1BFC88);
      sub_23B9EA228(v29, v9);
      v30 = sub_23BBD9988();
      v31 = sub_23BBD99A8();
      (*(*(v31 - 8) + 8))(v9, v31);
      v32 = sub_23BBDD598();
      if (os_log_type_enabled(v30, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_23B970000, v30, v32, "Attempting to present offer code redeem sheet without being in the hierarchy.", v33, 2u);
        MEMORY[0x23EEB6DC0](v33, -1, -1);
      }

      v34 = *(a2 + 5);
      v35 = sub_23BBDC608();
      sub_23BA44600(&qword_27E19BE90, MEMORY[0x277CDD0D0]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277CDD0C8], v35);
      v34(v36, 1);

      v41 = *(a2 + 1);
      v42 = a2[32];
      v43 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
      sub_23BBDC0F8();
      return sub_23BA4306C(a2);
    }
  }

  v20 = [v16 scene];

  if (!v20)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_11;
  }

  if (v15)
  {
    v22 = v21;
    v23 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    sub_23BBDD308();
    sub_23BA44320(a2, &v41);
    v24 = v20;
    v25 = sub_23BBDD2F8();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    memcpy(v26 + 4, a2, 0x49uLL);
    v26[14] = v22;
    sub_23BB5D2B8();
  }

  return sub_23BA4306C(a2);
}

uint64_t sub_23BA4306C(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  v5 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_23BBDD308();
  sub_23BA44320(a1, v10);
  v6 = sub_23BBDD2F8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x49uLL);
  sub_23BB5D2B8();
}

uint64_t sub_23BA43184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23BA4321C, v7, v6);
}

uint64_t sub_23BA4321C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 56);
  *(v0 + 64) = *(v1 + 64);
  *(v0 + 128) = *(v1 + 72);
  *(v0 + 72) = type metadata accessor for OfferCodeRedeemCoordinator();
  OUTLINED_FUNCTION_0_27();
  *(v0 + 80) = sub_23BA44600(v2, v3);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23BA432E0, v4, 0);
}

uint64_t sub_23BA432E0()
{
  OUTLINED_FUNCTION_3_13();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23BA43348, v1, v2);
}

uint64_t sub_23BA43348()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  if (v1)
  {

    OUTLINED_FUNCTION_1_16();

    return v2();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = sub_23BBD9C48();
    *(v0 + 104) = v5;
    *(v0 + 112) = *(v4 + 40);
    *(v0 + 120) = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_23BA43418, v5, 0);
  }
}

uint64_t sub_23BA43418()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BA43488(*(v0 + 24), *(v0 + 112), *(v0 + 120));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v1, v2);
}

uint64_t sub_23BA43488(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_23BBDD308();

  v12 = a1;

  v13 = sub_23BBDD2F8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v4;
  v14[5] = v12;
  v14[6] = a2;
  v14[7] = a3;
  sub_23BB5D2B8();
}

uint64_t sub_23BA43610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_23BBDD308();
  v7[3] = sub_23BBDD2F8();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_23BA436E4;

  return sub_23BA43814(a5, a6, a7);
}

uint64_t sub_23BA436E4()
{
  OUTLINED_FUNCTION_3_13();

  sub_23BBDD2D8();
  v0 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23BA43814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = type metadata accessor for SKLogger();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA438C4, v3, 0);
}

uint64_t sub_23BA438C4()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 112);
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 128);
    *(v0 + 16) = *(v1 + 112);
    *(v0 + 24) = v2;
    *(v0 + 32) = v3 & 1;
    *(v0 + 33) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 144);
  v5 = __swift_project_value_buffer(*(v0 + 120), qword_27E1BFC88);
  *(v0 + 152) = v5;
  sub_23B9EA228(v5, v4);
  v6 = sub_23BBD9988();
  v7 = sub_23BBD99A8();
  *(v0 + 160) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v7);
  v10 = sub_23BBDD5B8();
  if (os_log_type_enabled(v6, v10))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v11, v12, "Presenting offer code redeem sheet.");
    OUTLINED_FUNCTION_15_3();
  }

  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_23BA43ACC;
  v14 = *(v0 + 88);

  return MEMORY[0x28212C3E0](v14);
}

uint64_t sub_23BA43ACC()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_23BA43E08;
  }

  else
  {
    v4 = sub_23BA43BF4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23BA43BF4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  sub_23B9EA228(*(v0 + 152), v3);
  v4 = sub_23BBD9988();
  v1(v3, v2);
  v5 = sub_23BBDD5B8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v6, v7, "Presenting overlay completed for redeem sheet.");
    OUTLINED_FUNCTION_15_3();
  }

  v8 = *(v0 + 112);

  v9 = *(v8 + 120);
  if (v9)
  {
    v10 = *(v0 + 112);
    v11 = *(v10 + 128);
    *(v0 + 64) = *(v10 + 112);
    *(v0 + 72) = v9;
    *(v0 + 80) = v11 & 1;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  swift_unknownObjectWeakAssign();
  sub_23BBDD308();
  *(v0 + 200) = sub_23BBDD2F8();
  sub_23BBDD2D8();
  v12 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23BA43D80()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  v1(0, 0);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23BA43E08()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  sub_23B9EA228(*(v0 + 152), v4);
  v5 = v1;
  v6 = sub_23BBD9988();
  v2(v4, v3);
  v7 = sub_23BBDD598();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = sub_23BBD9658();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_23B970000, v6, v7, "Error presenting offer code sheet %{public}@.", v8, 0xCu);
    sub_23B9EA92C(v9, &qword_27E19A458);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  v11 = *(v0 + 112);

  swift_unknownObjectWeakAssign();
  v12 = *(v11 + 120);
  if (v12)
  {
    v13 = *(v0 + 112);
    v14 = *(v13 + 128);
    *(v0 + 40) = *(v13 + 112);
    *(v0 + 48) = v12;
    *(v0 + 56) = v14 & 1;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  v15 = *(v0 + 192);
  sub_23BBDD308();
  v16 = v15;
  *(v0 + 208) = sub_23BBDD2F8();
  sub_23BBDD2D8();
  v17 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_23BA4400C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[12];

  v3(v1, 1);

  return MEMORY[0x2822009F8](sub_23BA4409C, v2, 0);
}

uint64_t sub_23BA4409C()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BA44134()
{
  sub_23BBDA358();
  sub_23BA44198();
  return swift_getWitnessTable();
}

unint64_t sub_23BA44198()
{
  result = qword_27E19C5D8;
  if (!qword_27E19C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5D8);
  }

  return result;
}

uint64_t sub_23BA441F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_23BA44238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA442B8()
{
  sub_23B9EA1D4(*(v0 + 16), *(v0 + 24));

  sub_23B9EA1E0();

  return swift_deallocObject();
}

uint64_t sub_23BA44358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23BA443F0, v6, v5);
}

uint64_t sub_23BA443F0()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 64);
  type metadata accessor for OfferCodeRedeemCoordinator();
  OUTLINED_FUNCTION_0_27();
  sub_23BA44600(v2, v3);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 96) = v4;
  v5 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v6 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v6;
  *(v0 + 33) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_23BA01CF4, v4, 0);
}

uint64_t sub_23BA444E8()
{
  swift_unknownObjectRelease();
  sub_23B9EA1D4(*(v0 + 32), *(v0 + 40));

  sub_23B9EA1E0();

  return swift_deallocObject();
}

uint64_t sub_23BA44558()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 112);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_10(v2);
  *v3 = v4;
  v3[1] = sub_23B9EABA4;
  v5 = OUTLINED_FUNCTION_2_11();

  return sub_23BA43184(v5, v6, v7, v8, v1);
}

uint64_t sub_23BA44600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA44648()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA44698()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_10(v5);
  *v6 = v7;
  v6[1] = sub_23B9EA7A4;
  v8 = OUTLINED_FUNCTION_2_11();

  return sub_23BA43610(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_23BA44758()
{
  swift_unknownObjectRelease();
  sub_23B9EA1D4(*(v0 + 32), *(v0 + 40));

  sub_23B9EA1E0();

  return swift_deallocObject();
}

uint64_t sub_23BA447C0()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23B9EABA4;
  v3 = OUTLINED_FUNCTION_2_11();

  return sub_23BA44358(v3, v4, v5, v6);
}

unint64_t sub_23BA4485C()
{
  result = qword_27E19C5F8;
  if (!qword_27E19C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5E8);
    sub_23B97B518(&qword_27E19C600, &qword_27E19C5E0);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5F8);
  }

  return result;
}

uint64_t sub_23BA44958(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BA46A98(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache);

  *v7 = sub_23BBDA0E8();
  v7[1] = v8;
  v9 = *(IsDisabledModifier + 20);
  *(v7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB43C0](v7, a1, IsDisabledModifier, a2);
  return sub_23BA46414(v7, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
}

uint64_t sub_23BA44AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BBD9A58();

  return v1;
}

uint64_t sub_23BA44B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a1;
  v28 = a2;
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  v25 = *(IsDisabledModifier - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](IsDisabledModifier);
  v6 = sub_23BBD9B28();
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C670);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_23BA44AE8();
  v14 = (v13 != 2) ^ v13;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C678);
  (*(*(v17 - 8) + 16))(v12, v24, v17);
  v18 = &v12[*(v10 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_23B989418;
  v18[2] = v16;
  sub_23B9B7830();
  sub_23BA46758(v3, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_23BA468D0(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_23BA469B4();
  sub_23BA46A98(&qword_27E19C690, MEMORY[0x277CDD6C8]);
  v21 = v26;
  sub_23BBDBC08();

  (*(v27 + 8))(v9, v21);
  return sub_23BA46AE0(v12);
}

void sub_23BA44E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBD9B28();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  LODWORD(a2) = (*(v4 + 88))(v7, v3);
  v8 = *MEMORY[0x277CDD6B8];
  (*(v4 + 8))(v7, v3);
  if (a2 == v8)
  {
    sub_23BA44FB4();
  }
}

void sub_23BA44FB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task;
  if (!*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task))
  {
    sub_23BBDD318();
    v6 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    sub_23BBDD308();

    v7 = sub_23BBDD2F8();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = &unk_23BBF0070;
    v8[5] = v1;
    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = v9;
    v10[4] = &unk_23BBF0078;
    v10[5] = v8;
    swift_unknownObjectRetain();
    sub_23BB5D2B8();
    *(v1 + v5) = v11;
  }
}

uint64_t sub_23BA45138()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23BBD9A68();
}

uint64_t sub_23BA451A8()
{
  type metadata accessor for CanMakePaymentsCache(0);
  swift_allocObject();
  result = sub_23BA451E8();
  qword_27E19C608 = result;
  return result;
}

uint64_t sub_23BA451E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache__canMakePayments;
  v18[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199218);
  sub_23BBD9A48();
  (*(v6 + 32))(v1 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task;
  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;
  sub_23BBD9998();
  v11 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  sub_23BBDD308();

  v12 = sub_23BBDD2F8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = &unk_23BBEFED8;
  v13[5] = v1;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = &unk_23BBF5510;
  v15[5] = v13;
  swift_unknownObjectRetain();
  sub_23BB5D2B8();
  *(v1 + v10) = v16;

  return v1;
}

uint64_t sub_23BA45478()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA45524;

  return sub_23BA45650();
}

uint64_t sub_23BA45524()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA46CCC, v4, v3);
}

uint64_t sub_23BA45650()
{
  v1[5] = v0;
  sub_23BBDD308();
  v1[6] = sub_23BBDD2F8();
  v3 = sub_23BBDD2D8();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23BA456E8, v3, v2);
}

uint64_t sub_23BA456E8()
{
  OUTLINED_FUNCTION_41_0();
  *(v0 + 72) = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_log;
  v1 = sub_23BBDD588();
  v2 = sub_23BBD9988();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_13_15(4.8752e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_8_18(v12);
    *(v3 + 14) = sub_23BA5AB90(0xD000000000000023, v13, v14);
    OUTLINED_FUNCTION_12_13(&dword_23B970000, v15, v16, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_9_15(v17);

  return MEMORY[0x28212C3E8](v18);
}

uint64_t sub_23BA45840(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_23BA45AF0;
  }

  else
  {
    v7 = sub_23BA45988;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23BA45988()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 96);

  v2 = sub_23BA44AE8();
  if (v2 == 2 || ((v1 ^ v2) & 1) != 0)
  {
    v3 = *(v0 + 96);
    sub_23BA45138();
    if ((v3 & 1) == 0)
    {
      v4 = sub_23BBDD5B8();
      v5 = sub_23BBD9988();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v15 = OUTLINED_FUNCTION_13_15(4.8752e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
        OUTLINED_FUNCTION_8_18(v15);
        *(v6 + 14) = sub_23BA5AB90(0xD00000000000002ELL, v16, v17);
        OUTLINED_FUNCTION_12_13(&dword_23B970000, v18, v19, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }
    }
  }

  *(*(v0 + 40) + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;

  OUTLINED_FUNCTION_1_16();

  return v20();
}

uint64_t sub_23BA45AF0()
{
  v13 = v0;
  v1 = v0[11];

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_23BBDD768();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23EEB5890](0xD000000000000026, 0x800000023BBE1140);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  sub_23BBDD8B8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_23BBDD598();

  v5 = sub_23BBD9988();

  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v12);
    *(v8 + 12) = 2082;
    v9 = sub_23BA5AB90(v2, v3, v12);

    *(v8 + 14) = v9;
    _os_log_impl(&dword_23B970000, v5, v4, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  *(v0[5] + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;

  OUTLINED_FUNCTION_1_16();

  return v10();
}

uint64_t sub_23BA45D18()
{
  OUTLINED_FUNCTION_3_13();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_9_15(v2);

  return v5();
}

uint64_t sub_23BA45DF4()
{
  OUTLINED_FUNCTION_3_13();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_9_15(v2);

  return v5();
}

uint64_t sub_23BA45ED0()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA31378;

  return sub_23BA45650();
}

uint64_t sub_23BA45F7C()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache__canMakePayments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C640);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23BA46414(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_log, type metadata accessor for SKLogger);
  return v0;
}

uint64_t sub_23BA4601C()
{
  v0 = sub_23BA45F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BA46098()
{
  sub_23BA4616C();
  if (v0 <= 0x3F)
  {
    sub_23BBD99A8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BA4616C()
{
  if (!qword_27E19C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218);
    v0 = sub_23BBD9A78();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19C638);
    }
  }
}

uint64_t sub_23BA461D0()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_15(v1);

  return sub_23BA45478();
}

uint64_t sub_23BA46258()
{
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_17(v1);

  return v4(v3);
}

uint64_t sub_23BA462F4()
{
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_28(v1);

  return v4(v3);
}

uint64_t sub_23BA46398@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA44AE8();
  *a1 = result;
  return result;
}

uint64_t sub_23BA46414(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA46480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C648);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA46528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C648);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA465B4()
{
  sub_23BA46638();
  if (v0 <= 0x3F)
  {
    sub_23BA466CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA46638()
{
  if (!qword_27E19C660)
  {
    type metadata accessor for CanMakePaymentsCache(255);
    sub_23BA46A98(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache);
    v0 = sub_23BBDA0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19C660);
    }
  }
}

void sub_23BA466CC()
{
  if (!qword_27E19C668)
  {
    sub_23BBD9B28();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19C668);
    }
  }
}

uint64_t sub_23BA46758(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  (*(*(IsDisabledModifier - 8) + 16))(a2, a1, IsDisabledModifier);
  return a2;
}

uint64_t sub_23BA467BC()
{
  v1 = (type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9B28();
    OUTLINED_FUNCTION_4_1();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BA468D0(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  (*(*(IsDisabledModifier - 8) + 32))(a2, a1, IsDisabledModifier);
  return a2;
}

void sub_23BA46934(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);

  sub_23BA44E90(a1, a2);
}

unint64_t sub_23BA469B4()
{
  result = qword_27E19C680;
  if (!qword_27E19C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C670);
    sub_23B97B518(&qword_27E19C688, &qword_27E19C678);
    sub_23B97B518(&qword_27E198308, &qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C680);
  }

  return result;
}

uint64_t sub_23BA46A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA46AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA46B48()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_15(v1);

  return sub_23BA45ED0();
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA46C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C670);
  sub_23BBD9B28();
  sub_23BA469B4();
  sub_23BA46A98(&qword_27E19C690, MEMORY[0x277CDD6C8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_12_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_13_15(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, &a10);
}

void sub_23BA46DB8(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  *a1 = sub_23BA46DE4;
  a1[1] = 0;
  a1[2] = sub_23BA46EC4;
  a1[3] = 0;
}

uint64_t sub_23BA46DE4@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA46EC4@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA46FAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_23BA47000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23BA47094()
{
  result = qword_27E19C698;
  if (!qword_27E19C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C698);
  }

  return result;
}

uint64_t sub_23BA470E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB51588();
  *a1 = result;
  return result;
}

uint64_t sub_23BA47114()
{
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v6 = v1;
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  sub_23BA473B4(v0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6A0);
  type metadata accessor for SubscriptionOfferViewNoCodeControl();
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0);
  sub_23BA47438(&qword_27E19C6B0, type metadata accessor for SubscriptionOfferViewNoCodeControl);
  sub_23BA47438(&qword_27E19C6B8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  return sub_23BBDC198();
}

uint64_t sub_23BA4729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  sub_23BA4807C(a1, a3, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v6 = a3 + *(type metadata accessor for SubscriptionOfferViewNoCodeControl() + 20);
  v7 = v11;
  *v6 = v10;
  *(v6 + 16) = v7;
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  return sub_23BA473B4(a2, v9);
}

uint64_t sub_23BA47374()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SubscriptionOfferViewNoCodeControl()
{
  result = qword_27E19C6C0;
  if (!qword_27E19C6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA47438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA47494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BA47564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23BA47610()
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v0 <= 0x3F)
  {
    sub_23BA47694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA47694()
{
  if (!qword_27E19A3B0)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19A3B0);
    }
  }
}

unint64_t sub_23BA476E8()
{
  result = qword_27E19C6D0;
  if (!qword_27E19C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6D8);
    sub_23BA47438(&qword_27E19C6B0, type metadata accessor for SubscriptionOfferViewNoCodeControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C6D0);
  }

  return result;
}

uint64_t sub_23BA477B8@<X0>(uint64_t a1@<X8>)
{
  if (sub_23BBDC2A8())
  {
    v3 = sub_23BBDAB58();
  }

  else
  {
    v3 = sub_23BBDAB48();
  }

  v4 = v3;
  if (qword_27E197690 != -1)
  {
    swift_once();
  }

  v5 = qword_27E1BFC50;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6E0);
  return sub_23BA4785C(v1, a1 + *(v6 + 44));
}

uint64_t sub_23BA4785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for SubscriptionStoreButton();
  MEMORY[0x28223BE20](v3);
  v5 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6E8);
  MEMORY[0x28223BE20](v6);
  v80 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0);
  MEMORY[0x28223BE20](v10);
  v75 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v72 - v13;
  v14 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  MEMORY[0x28223BE20](v14);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F8);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = v72 - v20;
  MEMORY[0x28223BE20](v21);
  v76 = v72 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v72 - v24;
  v26 = sub_23BBDC2A8();
  v27 = 1;
  v82 = v25;
  if (v26)
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v87 = 0;
    sub_23BBDBF58();
    v28 = v86;
    v16[16] = v85;
    *(v16 + 3) = v28;
    v29 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
    v30 = v14;
    v31 = v6;
    v32 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v29);
    sub_23B99FCE0(v32, v75, &qword_27E19C6F0);
    sub_23BBDBF58();
    v33 = v32;
    v6 = v31;
    v14 = v30;
    sub_23B979910(v33, &qword_27E19C6F0);
    v34 = *(v30 + 28);
    *&v16[v34] = sub_23BBDCFE8();
    v25 = v82;
    sub_23BA48108(v16, v82);
    v27 = 0;
  }

  v72[1] = v10;
  __swift_storeEnumTagSinglePayload(v25, v27, 1, v14);
  sub_23BA4807C(a1, v5, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v35 = a1 + *(type metadata accessor for SubscriptionOfferViewNoCodeControl() + 20);
  v36 = *(v35 + 32);
  v37 = *(v35 + 40);
  v38 = *(v35 + 48);
  v39 = &v5[v3[5]];
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  v39[48] = 0;
  v40 = &v5[v3[6]];
  v41 = *v35;
  v73 = *(v35 + 16);
  v83 = v41;
  *v40 = swift_getKeyPath();
  *(v40 + 1) = 0;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 16) = 0;
  v42 = &v5[v3[7]];
  KeyPath = swift_getKeyPath();
  v87 = 0;
  *v42 = KeyPath;
  v42[73] = 0;
  v44 = &v5[v3[8]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v5[v3[9]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;

  v46 = v73;
  *v39 = v83;
  *(v39 + 1) = v46;
  *(v39 + 4) = v36;
  *(v39 + 5) = v37;
  v39[48] = v38;
  v47 = sub_23BBDAA48();
  v49 = v48;
  v51 = v50;
  v53 = v52 & 1;
  v54 = v77;
  sub_23BA4807C(v5, v77, type metadata accessor for SubscriptionStoreButton);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C700) + 36);
  *v55 = 1;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v53;
  *(v55 + 32) = v51;
  *(v55 + 40) = 0u;
  *(v55 + 56) = 0u;
  *(v55 + 72) = 0;
  sub_23B99B7B8(v5);
  if (qword_27E197688 != -1)
  {
    swift_once();
  }

  v83 = xmmword_27E1BFC30;
  v73 = *&qword_27E1BFC40;
  v56 = sub_23BBDB398();
  v57 = v54 + *(v6 + 36);
  *v57 = v56;
  *(v57 + 24) = v73;
  *(v57 + 8) = v83;
  *(v57 + 40) = 0;
  if (sub_23BBDC2A8())
  {
    v58 = 1;
    v59 = v76;
  }

  else
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v84 = 0;
    sub_23BBDBF58();
    v60 = v86;
    v16[16] = v85;
    *(v16 + 3) = v60;
    v61 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
    v62 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v61);
    sub_23B99FCE0(v62, v75, &qword_27E19C6F0);
    sub_23BBDBF58();
    sub_23B979910(v62, &qword_27E19C6F0);
    v63 = *(v14 + 28);
    *&v16[v63] = sub_23BBDCFE8();
    v59 = v76;
    sub_23BA48108(v16, v76);
    v58 = 0;
  }

  __swift_storeEnumTagSinglePayload(v59, v58, 1, v14);
  v64 = v82;
  v65 = v79;
  sub_23B99FCE0(v82, v79, &qword_27E19C6F8);
  v66 = v80;
  sub_23B99FCE0(v54, v80, &qword_27E19C6E8);
  v67 = v78;
  sub_23B99FCE0(v59, v78, &qword_27E19C6F8);
  v68 = v54;
  v69 = v81;
  sub_23B99FCE0(v65, v81, &qword_27E19C6F8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C708);
  sub_23B99FCE0(v66, v69 + *(v70 + 48), &qword_27E19C6E8);
  sub_23B99FCE0(v67, v69 + *(v70 + 64), &qword_27E19C6F8);
  sub_23B979910(v59, &qword_27E19C6F8);
  sub_23B979910(v68, &qword_27E19C6E8);
  sub_23B979910(v64, &qword_27E19C6F8);
  sub_23B979910(v67, &qword_27E19C6F8);
  sub_23B979910(v66, &qword_27E19C6E8);
  return sub_23B979910(v65, &qword_27E19C6F8);
}

uint64_t sub_23BA4807C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA480DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB51588();
  *a1 = result;
  return result;
}

uint64_t sub_23BA48108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23BA481B0()
{
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v0 <= 0x3F)
  {
    sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23B9CE218(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA482D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v7;
  v12 = v10 | v7 | 7;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  if (v16 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  if (v17 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v19 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v19 + 84);
  }

  v23 = *(v19 + 80);
  v24 = *(v19 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = ((v20 + 1 + v12) & ~v12) + v20 + 1;
  v26 = v23 + 19;
  if (v22 < a2)
  {
    v27 = ((((v26 + ((v25 + ((v11 + 32) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v24) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v27 <= 3)
    {
      v28 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    switch(v30)
    {
      case 1:
        v31 = a1[v27];
        if (!a1[v27])
        {
          break;
        }

        goto LABEL_32;
      case 2:
        v31 = *&a1[v27];
        if (*&a1[v27])
        {
          goto LABEL_32;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA485D4);
      case 4:
        v31 = *&a1[v27];
        if (!v31)
        {
          break;
        }

LABEL_32:
        v33 = (v31 - 1) << (8 * v27);
        if (v27 <= 3)
        {
          v34 = *a1;
        }

        else
        {
          v33 = 0;
          v34 = *a1;
        }

        return v22 + (v34 | v33) + 1;
      default:
        break;
    }
  }

  if ((v21 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v26 + ((v25 + (&a1[v12 + 32] & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23, v21, v18);
  }

  else
  {
    v35 = *(a1 + 1);
    if (v35 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void sub_23BA485E8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v9;
  v14 = v12 | v9 | 7;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  if (v18 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = 16;
  if (v19 > 0x10)
  {
    v20 = v19;
  }

  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = (v13 + 32) & ~v14;
  v26 = ((v20 + 1 + v14) & ~v14) + v20 + 1;
  v27 = *(v22 + 80);
  v28 = ((((v27 + 19 + ((v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v27) + *(v22 + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v24 >= a3)
  {
    v31 = 0;
  }

  else
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  if (v24 < a2)
  {
    v32 = ~v24 + a2;
    bzero(a1, v28);
    if (v28 <= 3)
    {
      v33 = (v32 >> 8) + 1;
    }

    else
    {
      v33 = 1;
    }

    if (v28 > 3)
    {
      *a1 = v32;
    }

    else
    {
      *a1 = v32;
    }

    switch(v31)
    {
      case 1:
        *(a1 + v28) = v33;
        return;
      case 2:
        *(a1 + v28) = v33;
        return;
      case 3:
        goto LABEL_52;
      case 4:
        *(a1 + v28) = v33;
        return;
      default:
        return;
    }
  }

  switch(v31)
  {
    case 1:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_52:
      __break(1u);
      JUMPOUT(0x23BA4894CLL);
    case 4:
      *(a1 + v28) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (a2)
      {
LABEL_40:
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v27 + 19 + ((v26 + ((a1 + v14 + 32) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v27, a2, v23, v21);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[2] = 0;
          a1[3] = 0;
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }
      }

      return;
  }
}