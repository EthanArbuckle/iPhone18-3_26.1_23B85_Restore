unint64_t sub_23856428C()
{
  result = qword_27DF0E338;
  if (!qword_27DF0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E338);
  }

  return result;
}

uint64_t type metadata accessor for OrderReturnLabel()
{
  result = qword_27DF0E340;
  if (!qword_27DF0E340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238564334()
{
  result = sub_23875B940();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetAccount.ActivationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetAccount.ActivationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238564548(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OrderWidgetMerchantTitleModifier()
{
  result = qword_27DF0E358;
  if (!qword_27DF0E358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238564618()
{
  sub_2384BEA74();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2385646A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E368, &qword_23876F7B8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2384D5138(v11);
  (*(v5 + 104))(v8, *MEMORY[0x277CDFA00], v4);
  sub_23848987C();
  v17 = sub_23875E9B0();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v11, v4);
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E370, &qword_23876F7F0);
  (*(*(v21 - 8) + 16))(v16, a1, v21);
  v22 = &v16[*(v13 + 44)];
  *v22 = KeyPath;
  *(v22 + 1) = v19;
  v22[16] = 0;
  v23 = swift_getKeyPath();
  sub_238564904(v16, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E378, &qword_23876F828);
  v25 = a2 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = 1;
  return result;
}

uint64_t sub_238564904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E368, &qword_23876F7B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238564974()
{
  result = qword_27DF0E380;
  if (!qword_27DF0E380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E378, &qword_23876F828);
    sub_238564A2C();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E380);
  }

  return result;
}

unint64_t sub_238564A2C()
{
  result = qword_27DF0E388;
  if (!qword_27DF0E388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E368, &qword_23876F7B8);
    sub_23843A3E8(&qword_27DF0E390, &qword_27DF0E370, &qword_23876F7F0);
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E388);
  }

  return result;
}

uint64_t sub_238564B78()
{
  result = type metadata accessor for OrderDetailsFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238564C2C()
{
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385662D0(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238564CE8()
{
  result = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_238564D5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_238564D8C@<X0>(uint64_t a1@<X8>)
{
  sub_2385667D8(v1, a1, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  v3 = type metadata accessor for OrderDetailsFulfillment_iOS(0);
  v4 = a1 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = *(v3 + 24);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238564E40@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3E8, &qword_23876F9E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3F0, &qword_23876F9E8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3F8, &qword_23876F9F0);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E400, &qword_23876F9F8);
  sub_238566358();
  sub_23875D9C0();
  v20 = sub_23843A3E8(&qword_27DF0E470, &qword_27DF0E3E8, &qword_23876F9E0);
  sub_23875DB70();
  (*(v3 + 8))(v6, v2);
  v32 = v2;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_23875DD80();
  (*(v29 + 8))(v11, v21);
  v22 = *(v27 + *(type metadata accessor for OrderDetailsFulfillment.ViewModel(0) + 20));
  v23 = v13[2];
  v23(v16, v19, v12);
  v24 = v30;
  v23(v30, v16, v12);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E478, &qword_23876FA30) + 48)] = v22;
  v25 = v13[1];
  swift_bridgeObjectRetain_n();
  v25(v19, v12);

  return (v25)(v16, v12);
}

uint64_t sub_2385651E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_23875C880();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = v43 - v7;
  v8 = sub_23875CEA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E428, &qword_23876FA08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E418, &qword_23876FA00);
  v17 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = v43 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E400, &qword_23876F9F8);
  v19 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v43 - v20;
  sub_23875ED50();
  v43[2] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v43[1] = v43;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v43[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E458, &unk_23876FA20);
  sub_23856669C();
  sub_23875E3D0();
  sub_23875CE90();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E438, &qword_23876FA10) + 36);
  (*(v9 + 16))(&v16[v22], v12, v8);
  v23 = *(v9 + 56);
  v23(&v16[v22], 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v25 = *(v13 + 36);
  v26 = a1;
  v27 = &v16[v25];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v9 + 32))(v27 + v28, v12, v8);
  v23(v27 + v28, 0, 1, v8);
  *v27 = KeyPath;
  v29 = v26 + *(type metadata accessor for OrderDetailsFulfillment_iOS(0) + 24);
  v30 = v48;
  sub_2384D5138(v48);
  v31 = v49;
  v32 = v50;
  v33 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CDF9D8], v51);
  LOBYTE(v29) = sub_23875C870();
  v34 = *(v32 + 8);
  v34(v31, v33);
  v34(v30, v33);
  if (v29)
  {
    v35 = 0x4028000000000000;
  }

  else
  {
    v35 = 0x4030000000000000;
  }

  v36 = v47;
  sub_2384396E4(v16, v47, &qword_27DF0E428, &qword_23876FA08);
  v37 = v36 + *(v46 + 36);
  *v37 = 0x4028000000000000;
  *(v37 + 8) = v35;
  *(v37 + 16) = 0x4028000000000000;
  *(v37 + 24) = v35;
  *(v37 + 32) = 0;
  v38 = sub_23875D000();
  v39 = v36;
  v40 = v44;
  sub_2384396E4(v39, v44, &qword_27DF0E418, &qword_23876FA00);
  v41 = (v40 + *(v45 + 36));
  *v41 = v38;
  v41[1] = sub_23843480C;
  v41[2] = 0;
  sub_2384396E4(v40, v52, &qword_27DF0E400, &qword_23876F9F8);
}

uint64_t sub_238565734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for OrderDetailsPickupFulfillment(0);
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E480, &qword_23876FA68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for OrderDetailsShippingFulfillment(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385667D8(a1, v25, type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238566840(v25, v9, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
    sub_2385667D8(v9, v5, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
    sub_2385667D8(v5, v13, type metadata accessor for OrderDetailsPickupFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment);
    sub_23875D1B0();
    sub_2385668A8(v5, type metadata accessor for OrderDetailsPickupFulfillment);
    v26 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel;
    v27 = v9;
  }

  else
  {
    sub_238566840(v25, v21, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
    sub_2385667D8(v21, v17, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
    sub_2385667D8(v17, v13, type metadata accessor for OrderDetailsShippingFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment);
    sub_23875D1B0();
    sub_2385668A8(v17, type metadata accessor for OrderDetailsShippingFulfillment);
    v26 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel;
    v27 = v21;
  }

  return sub_2385668A8(v27, v26);
}

uint64_t sub_238565BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for ProductImage.ViewModel(0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v53 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v47 - v11;
  v52 = sub_23875AF90();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v52);
  v65 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v47 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = sub_238758940();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v25;
  v26 = *(v25 + 16);
  v56 = v27;
  v26(v24, a1, v22);
  sub_238759AB0();
  sub_23845C998(a2, v64);
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_238758920();
  v51 = sub_23875A360();
  v29 = v28;

  sub_238758910();
  v50 = sub_238758930();
  v48 = sub_238758900();
  v49 = v30;
  v57 = v12;
  v31 = *(v12 + 16);
  v32 = v61;
  v55 = v19;
  v33 = v52;
  v31(v61, v19, v52);
  v34 = v62;
  v35 = *(v62 + 20);
  v36 = sub_238758090();
  v37 = v53;
  (*(*(v36 - 8) + 56))(v53 + v35, 1, 1, v36);
  *v37 = v51;
  v37[1] = v29;
  v38 = v37;
  sub_23853098C(v63, v37 + v35);
  *(v37 + *(v34 + 24)) = v50;
  v39 = v32;
  v40 = v49;
  v31(v65, v39, v33);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2387632F0;
    *(v41 + 32) = v48;
    *(v41 + 40) = v40;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = v58;
  v31(v58, v65, v33);
  if (*(v41 + 16) >= 5uLL)
  {
    sub_23852EE64(v41, v41 + 32, 0, 9uLL);
    v44 = v43;

    v41 = v44;
  }

  v45 = *(v57 + 8);
  v45(v55, v33);
  (*(v54 + 8))(v24, v56);
  v45(v65, v33);
  v45(v61, v33);
  sub_238566104(v63);
  *(v42 + *(v59 + 20)) = v41;
  sub_238566840(v42, v38 + *(v62 + 28), type metadata accessor for ProductImage.ViewModel);
  sub_238566840(v38, v60, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_238566104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385661B4()
{
  type metadata accessor for OrderDetailsFulfillment.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238566280();
    if (v1 <= 0x3F)
    {
      sub_2385662D0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238566280()
{
  if (!qword_2814F09A0)
  {
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F09A0);
    }
  }
}

void sub_2385662D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_238566358()
{
  result = qword_27DF0E408;
  if (!qword_27DF0E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E400, &qword_23876F9F8);
    sub_2385663E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E408);
  }

  return result;
}

unint64_t sub_2385663E4()
{
  result = qword_27DF0E410;
  if (!qword_27DF0E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E418, &qword_23876FA00);
    sub_23856649C();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E410);
  }

  return result;
}

unint64_t sub_23856649C()
{
  result = qword_27DF0E420;
  if (!qword_27DF0E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E428, &qword_23876FA08);
    sub_238566554();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E420);
  }

  return result;
}

unint64_t sub_238566554()
{
  result = qword_27DF0E430;
  if (!qword_27DF0E430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E438, &qword_23876FA10);
    sub_23856660C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E430);
  }

  return result;
}

unint64_t sub_23856660C()
{
  result = qword_27DF0E440;
  if (!qword_27DF0E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E448, &qword_23876FA18);
    sub_23856669C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E440);
  }

  return result;
}

unint64_t sub_23856669C()
{
  result = qword_27DF0E450;
  if (!qword_27DF0E450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E458, &unk_23876FA20);
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E450);
  }

  return result;
}

uint64_t sub_238566788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385667D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238566840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385668A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238566950()
{
  result = type metadata accessor for MerchantImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_23875BC40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385669E4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23875F630() & 1) == 0 || (sub_2384C7CB8((a1 + *(a3 + 20)), (a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return sub_23875BBD0();
}

uint64_t sub_238566AB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D0, &qword_23876FB88);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D8, &qword_23876FB90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  *v6 = sub_23875D020();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4E0, &qword_23876FB98);
  sub_238566D78(v1, &v6[*(v11 + 44)]);
  v12 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4E8, &unk_23876FBA0) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v14 = sub_23875DA40();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4F0, &qword_23876FC10) + 36)];
  *v16 = KeyPath;
  v16[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v17 = &v6[*(v3 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_238567864(v6, v10);
  v22 = &v10[*(v7 + 36)];
  v23 = v27[5];
  *(v22 + 4) = v27[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v27[6];
  v24 = v27[1];
  *v22 = v27[0];
  *(v22 + 1) = v24;
  v25 = v27[3];
  *(v22 + 2) = v27[2];
  *(v22 + 3) = v25;
  sub_2385678D4();
  sub_23875DE00();
  return sub_238439884(v10, &qword_27DF0E4D8, &qword_23876FB90);
}

uint64_t sub_238566D78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_23875BE40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2387595E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_238759290();
  v15 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875BC40();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x28223BE20](v17);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875DFD0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v93 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  sub_23875ED50();
  v92 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v82 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  sub_238567B88(&a1[*(v82 + 20)], v30, type metadata accessor for MerchantImage.ViewModel);
  v31 = type metadata accessor for MerchantImage(0);
  v30[*(v31 + 20)] = 1;
  v32 = a1;
  v33 = *(v31 + 24);
  *&v30[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v21 + 104))(v24, *MEMORY[0x277CE0EE0], v20);
  v34 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v36 = &v30[*(v25 + 36)];
  v37 = type metadata accessor for OrderImageStyleModifier();
  *&v36[*(v37 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v36[*(v37 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v36 = xmmword_2387643A0;
  *(v36 + 2) = 0;
  v36[24] = 1;
  *(v36 + 4) = v34;
  v36[40] = 0;
  v77 = v32;
  v38 = *(v32 + 1);
  v95 = *v32;
  v96 = v38;
  sub_2384397A8();

  v39 = sub_23875DAA0();
  v41 = v40;
  LOBYTE(v37) = v42;
  sub_23875D830();
  v43 = sub_23875DA60();
  v45 = v44;
  LOBYTE(v33) = v46;

  sub_2384397FC(v39, v41, v37 & 1);

  sub_23875D890();
  v47 = sub_23875D9E0();
  v49 = v48;
  LOBYTE(v41) = v50;
  sub_2384397FC(v43, v45, v33 & 1);

  sub_23875E070();
  v80 = sub_23875DA10();
  v79 = v51;
  v78 = v52;
  v81 = v53;

  sub_2384397FC(v47, v49, v41 & 1);

  (*(v83 + 16))(v85, &v77[*(v82 + 24)], v84);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759270();
  sub_238567BF0(&qword_27DF0E528, MEMORY[0x277CC7808]);
  sub_238567BF0(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v54 = sub_23875DA80();
  v56 = v55;
  LOBYTE(v41) = v57;
  sub_23875D7F0();
  v58 = sub_23875DA60();
  v60 = v59;
  LOBYTE(v43) = v61;

  sub_2384397FC(v54, v56, v41 & 1);

  sub_23875E080();
  v62 = sub_23875DA10();
  v64 = v63;
  LOBYTE(v37) = v65;
  v67 = v66;

  sub_2384397FC(v58, v60, v43 & 1);

  v68 = v93;
  sub_238567C38(v30, v93);
  LOBYTE(v43) = v78 & 1;
  LOBYTE(v95) = v78 & 1;
  v69 = v94;
  sub_238567C38(v68, v94);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E530, &qword_23876FC90);
  v71 = v69 + *(v70 + 48);
  v72 = v80;
  v73 = v79;
  *v71 = v80;
  *(v71 + 8) = v73;
  *(v71 + 16) = v43;
  *(v71 + 24) = v81;
  v74 = v69 + *(v70 + 64);
  *v74 = v62;
  *(v74 + 8) = v64;
  LOBYTE(v69) = v37 & 1;
  *(v74 + 16) = v37 & 1;
  *(v74 + 24) = v67;
  v75 = v73;
  sub_23843980C(v72, v73, v43);

  sub_23843980C(v62, v64, v69);

  sub_238439884(v30, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_2384397FC(v62, v64, v69);

  sub_2384397FC(v72, v75, v95);

  sub_238439884(v68, &qword_27DF0C7D0, &unk_23876B3E0);
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2385677DC()
{
  result = type metadata accessor for OrderDetailsHeader.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238567864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D0, &qword_23876FB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385678D4()
{
  result = qword_27DF0E4F8;
  if (!qword_27DF0E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4D8, &qword_23876FB90);
    sub_238567960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E4F8);
  }

  return result;
}

unint64_t sub_238567960()
{
  result = qword_27DF0E500;
  if (!qword_27DF0E500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4D0, &qword_23876FB88);
    sub_2385679EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E500);
  }

  return result;
}

unint64_t sub_2385679EC()
{
  result = qword_27DF0E508;
  if (!qword_27DF0E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4F0, &qword_23876FC10);
    sub_238567AA4();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E508);
  }

  return result;
}

unint64_t sub_238567AA4()
{
  result = qword_27DF0E510;
  if (!qword_27DF0E510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4E8, &unk_23876FBA0);
    sub_23843A3E8(&qword_27DF0E518, &qword_27DF0E520, &qword_23876FC18);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E510);
  }

  return result;
}

uint64_t sub_238567B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238567BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238567C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238567CA8()
{
  result = qword_27DF0E538;
  if (!qword_27DF0E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E540, &unk_23876FC98);
    sub_2385678D4();
    sub_238567BF0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E538);
  }

  return result;
}

uint64_t sub_238567E68()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_238567EC8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_238567F60;
}

void sub_238567F60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id PrivacyAppSpecifierProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrivacyAppSpecifierProvider.init()()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager;
  v12[3] = sub_2387588D0();
  v12[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2387588C0();
  v2 = sub_23875A460();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_23875A420();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers] = MEMORY[0x277D84F90];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PrivacyAppSpecifierProvider();
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = *MEMORY[0x277D38568];
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 reporterForSubject_];
  if (v9)
  {
  }

  else
  {
    [v7 beginSubjectReporting_];
  }

  return v8;
}

uint64_t sub_23856831C()
{
  v1 = v0;
  v2 = sub_238758850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v8 = *&v0[OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager];
  sub_23875A450();
  v9 = sub_23875A440();
  v10 = v9[2];
  if (v10)
  {
    v52 = v1;
    v11 = MEMORY[0x277CC7098];
    v12 = sub_238569FD4(v10, 0, &qword_27DF0E578, &unk_238777420, MEMORY[0x277CC7098]);
    v13 = sub_23856BD5C(v55, &v12[(*(v3 + 80) + 32) & ~*(v3 + 80)], v10, v9, v11);
    v14 = v55[1];
    v15 = v55[2];
    v53 = v55[4];
    v54 = v13;

    sub_238434840();
    if (v54 != v10)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_14;
    }

    v7 = MEMORY[0x277D84F90];
    v1 = v52;
  }

  else
  {
    v12 = v7;
  }

  v55[0] = v12;
  sub_238569DEC(v55);
  v52 = 0;

  v16 = v55[0];
  v53 = v7;
  v55[0] = v7;
  v17 = v16[2];
  v18 = (v3 + 16);
  v54 = v1;
  v14 = 0;
  while (v17 != v14)
  {
    if (v14 >= v16[2])
    {
      __break(1u);
      goto LABEL_26;
    }

    (*(v3 + 16))(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14++, v2);
    sub_238568B8C();
    v20 = v19;
    v21 = (*(v3 + 8))(v6, v2);
    if (v20)
    {
      MEMORY[0x23EE63730](v21);
      if (*((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23875EC90();
      }

      sub_23875ECB0();
      v53 = v55[0];
    }
  }

  v22 = v54;

  v14 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers;
  v23 = *(v22 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers);
  *(v22 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers) = v53;

  v3 = objc_opt_self();
  v24 = [v3 emptyGroupSpecifier];
  v2 = 0x2814F0000uLL;
  v6 = &unk_2814F1000;
  v15 = MEMORY[0x277D3FF88];
  v10 = &unk_278A55000;
  if (!v24)
  {
    goto LABEL_19;
  }

  v9 = v24;
  if (qword_2814F0880 != -1)
  {
    goto LABEL_34;
  }

LABEL_14:
  v25 = *(v6 + 370);
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

  if (!v29)
  {
    sub_23875EA80();
    v29 = sub_23875EA50();
  }

  [v9 v10[332]];

  v30 = v9;
  MEMORY[0x23EE63730]();
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v50 = v15;
    v51 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23875EC90();
    v15 = v50;
  }

  sub_23875ECB0();

  v6 = &unk_2814F1000;
LABEL_19:
  v18 = v15;
  if (*(v2 + 2176) != -1)
  {
LABEL_26:
    swift_once();
  }

  v31 = *(v6 + 370);
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v34 = sub_23875EA50();
  v35 = [v31 localizedStringForKey:v32 value:v33 table:v34];

  if (!v35)
  {
    sub_23875EA80();
    v35 = sub_23875EA50();
  }

  v36 = [v3 preferenceSpecifierNamed:v35 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (v36)
  {
    v37 = v18;
    v38 = *(v54 + v14);
    if (v38 >> 62)
    {
      if (v38 < 0)
      {
        v39 = *(v54 + v14);
      }

      sub_23875F3A0();
    }

    else
    {
      *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = sub_23875EA50();
    v41 = sub_23875EA50();
    v42 = sub_23875EA50();
    v43 = [v31 localizedStringForKey:v40 value:v41 table:v42];

    sub_23875EA80();
    v44 = sub_23875EA50();

    [v36 setProperty:v44 forKey:*v37];

    v45 = v36;
    MEMORY[0x23EE63730]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v49 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23875EC90();
    }

    sub_23875ECB0();
    v46 = *(v54 + v14);

    sub_238569CEC(v47, sub_2386CFF20, sub_2384913DC);

    return v56;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_238568A88()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_238758840();
  v2 = v1;
  if (v0 == sub_238758840() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_23875F630();
  }

  return v4 & 1;
}

void sub_238568B8C()
{
  v1 = v0;
  v2 = sub_238758850();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_23875C1E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_238758840();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v10 = sub_2386CB5C4(v6, v8, 0);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 localizedName];
    if (!v12)
    {
      sub_23875EA80();
      v12 = sub_23875EA50();
    }

    v13 = objc_opt_self();
    type metadata accessor for AppSettingsController();
    v14 = [v13 preferenceSpecifierNamed:v12 target:v1 set:sel_authChanged:: get:sel_getAuthWithSpecifier_ detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

    if (v14)
    {
      sub_238758840();
      v15 = sub_23875EA50();

      v16 = sub_23875EA50();
      [v14 setProperty:v15 forKey:v16];

      sub_238758840();
      v17 = sub_23875EA50();

      [v14 setProperty:v17 forKey:*MEMORY[0x277D40008]];

      v18 = sub_23875ECD0();
      v19 = *MEMORY[0x277D40020];
      [v14 setProperty:v18 forKey:v19];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_238569084()
{
  v1 = v0;
  v24 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers);
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EE63F70](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = sub_23875EA50();
      v9 = [v7 propertyForKey_];

      if (v9)
      {
        sub_23875F2E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      v23[0] = v21;
      v23[1] = v22;
      if (*(&v22 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v20 == 1)
        {
          v10 = v7;
          MEMORY[0x23EE63730]();
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v13 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23875EC90();
          }

          sub_23875ECB0();
          v5 = v24;
          v11 = sub_23875ECD0();
          v12 = sub_23875EA50();
          [v10 setProperty:v11 forKey:v12];
        }

        else
        {
        }
      }

      else
      {

        sub_238439884(v23, &qword_27DF0A4A8, &qword_238767840);
      }

      ++v4;
    }

    while (v3 != v4);

    if (v5 >> 62)
    {
      while (1)
      {
        v2 = sub_23875F3A0();
        if (!v2)
        {
          break;
        }

LABEL_22:
        v14 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager);
        sub_23875A450();
        swift_beginAccess();
        v15 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x23EE63F70](v15, v5);
          }

          else
          {
            if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v16 = *(v5 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong provider:v1 specifierDidChange:v17];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          ++v15;
          if (v18 == v2)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v3 = sub_23875F3A0();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_35:
        v5 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_22;
      }
    }

LABEL_37:
  }
}

id PrivacyAppSpecifierProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyAppSpecifierProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23856953C(void *a1)
{
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2387591F0();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238758850();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875EA50();
  v18 = [a1 propertyForKey_];

  if (v18)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    if (swift_dynamicCast())
    {
      v19 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager);
      sub_238758830();
      sub_23875A430();
      (*(v13 + 8))(v16, v12);
      v21 = v27;
      v20 = v28;
      (*(v27 + 104))(v11, *MEMORY[0x277CC77B8], v28);
      v25 = sub_238758A40();
      (*(v21 + 8))(v11, v20);
      return v25;
    }
  }

  else
  {
    sub_238439884(v31, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v22 = sub_23875C1B0();
  v23 = sub_23875EFE0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2383F8000, v22, v23, "Expected bundleID property on specifier", v24, 2u);
    MEMORY[0x23EE64DF0](v24, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t sub_238569B7C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
  v10 = *v3;
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
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_238569CEC(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_23875F3A0();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_23875F3A0();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_238569DEC(void **a1)
{
  v2 = *(sub_238758850() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491580(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23856A0D0(v5);
  *a1 = v3;
}

void *sub_238569E94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
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

void *sub_238569F1C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E560, &qword_23876FD00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_238569FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
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

void sub_23856A0D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238758850();
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_238758850() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23856A570(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23856A1FC(0, v2, 1, a1);
  }
}

void sub_23856A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v37 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v37 - v15;
  v39 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = sub_23875ED50();
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v48 = v19;
    v49 = v17;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v50 = v18;
    v22 = (v16 + v20 * (a3 - 1));
    v44 = -v20;
    v45 = (v18 + 16);
    v23 = a1 - a3;
    v46 = v16;
    v38 = v20;
    v24 = v16 + v20 * a3;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      v48(v51, v24, v8);
      v27(v52, v26, v8);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v28 = sub_238758840();
      v30 = v29;
      if (v28 == sub_238758840() && v30 == v31)
      {

        v25 = *v21;
        (*v21)(v52, v8);
        v25(v51, v8);
LABEL_5:
        a3 = v43 + 1;
        v22 = &v42[v38];
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_6;
      }

      v32 = sub_23875F630();

      v33 = *v21;
      (*v21)(v52, v8);
      v33(v51, v8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v34(v26, v35, v8);
      v26 += v44;
      v24 += v44;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_23856A570(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v126 = a1;
  v9 = sub_238758850();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v130 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v142 = &v122 - v14;
  MEMORY[0x28223BE20](v15);
  v148 = &v122 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v122 - v18;
  MEMORY[0x28223BE20](v19);
  v139 = &v122 - v20;
  MEMORY[0x28223BE20](v21);
  v138 = &v122 - v22;
  MEMORY[0x28223BE20](v23);
  v122 = &v122 - v24;
  v26.n128_f64[0] = MEMORY[0x28223BE20](v25);
  v124 = &v122 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_105:
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_145;
    }

    v4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = v4;
      goto LABEL_108;
    }

LABEL_139:
    v116 = sub_238490ED4(v4);
LABEL_108:
    v149 = v116;
    v4 = *(v116 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v117 = *&v116[16 * v4];
        v118 = v116;
        v119 = *&v116[16 * v4 + 24];
        sub_23856B1BC(*a3 + v10[9] * v117, *a3 + v10[9] * *&v116[16 * v4 + 16], *a3 + v10[9] * v119, a4);
        if (v6)
        {
          goto LABEL_116;
        }

        if (v119 < v117)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_238490ED4(v118);
        }

        if (v4 - 2 >= *(v118 + 2))
        {
          goto LABEL_133;
        }

        v120 = &v118[16 * v4];
        *v120 = v117;
        *(v120 + 1) = v119;
        v149 = v118;
        sub_238490E48(v4 - 1);
        v116 = v149;
        v4 = *(v149 + 2);
        if (v4 <= 1)
        {
          goto LABEL_116;
        }
      }

      goto LABEL_143;
    }

    goto LABEL_116;
  }

  v29 = 0;
  v144 = v10 + 2;
  v145 = v10 + 1;
  v143 = v10 + 4;
  v30 = MEMORY[0x277D84F90];
  v127 = a3;
  v136 = v10;
  v146 = v9;
  v125 = a4;
  while (1)
  {
    v131 = v30;
    if (v29 + 1 >= v28)
    {
      v44 = v29 + 1;
    }

    else
    {
      v137 = v28;
      v31 = *a3;
      v32 = v10[9];
      v33 = v29;
      v34 = v31 + v32 * (v29 + 1);
      v35 = v10[2];
      v35(v124, v34, v9, v26);
      v141 = v31;
      v36 = v31 + v32 * v33;
      v4 = v122;
      v135 = v35;
      (v35)(v122, v36, v9);
      v37 = v124;
      LODWORD(v140) = sub_238568A88();
      if (v6)
      {
        v121 = *v145;
        (*v145)(v4, v9);
        v121(v37, v9);
LABEL_116:

        return;
      }

      v128 = 0;
      v38 = *v145;
      (*v145)(v4, v9);
      v38(v37, v9);
      v123 = v33;
      v39 = v33 + 2;
      v40 = v141 + v32 * v39;
      v41 = v32;
      v141 = v32;
      while (1)
      {
        v44 = v137;
        if (v137 == v39)
        {
          break;
        }

        v45 = v135;
        (v135)(v138, v40, v9);
        v45(v139, v34, v9);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46 = sub_238758840();
        v48 = v47;
        if (v46 == sub_238758840() && v48 == v49)
        {
          v42 = 0;
        }

        else
        {
          v42 = sub_23875F630();
        }

        v4 = v145;
        v9 = v146;
        v38(v139, v146);
        v38(v138, v9);
        v43 = v140 ^ v42;
        ++v39;
        v41 = v141;
        v40 += v141;
        v34 += v141;
        v10 = v136;
        if (v43)
        {
          v44 = v39 - 1;
          break;
        }
      }

      v6 = v128;
      a3 = v127;
      v50 = v131;
      a4 = v125;
      v29 = v123;
      if (v140)
      {
        if (v44 < v123)
        {
          goto LABEL_138;
        }

        if (v123 < v44)
        {
          v4 = v41 * (v44 - 1);
          v51 = v44 * v41;
          v137 = v44;
          v52 = v123;
          v53 = v123 * v41;
          do
          {
            if (v52 != --v44)
            {
              v55 = *a3;
              if (!v55)
              {
                goto LABEL_142;
              }

              v56 = *v143;
              (*v143)(v130, v55 + v53, v146, v50);
              if (v53 < v4 || v55 + v53 >= (v55 + v51))
              {
                v54 = v146;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v54 = v146;
                if (v53 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v56(v55 + v4, v130, v54);
              a3 = v127;
              v10 = v136;
              v50 = v131;
              v6 = v128;
              v41 = v141;
            }

            ++v52;
            v4 -= v41;
            v51 -= v41;
            v53 += v41;
          }

          while (v52 < v44);
          v9 = v146;
          a4 = v125;
          v29 = v123;
          v44 = v137;
        }
      }
    }

    v57 = a3[1];
    if (v44 < v57)
    {
      if (__OFSUB__(v44, v29))
      {
        goto LABEL_135;
      }

      if (v44 - v29 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v44 < v29)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v131;
    }

    else
    {
      v30 = sub_238490EE8(0, *(v131 + 2) + 1, 1, v131);
    }

    a4 = *(v30 + 2);
    v72 = *(v30 + 3);
    v4 = a4 + 1;
    if (a4 >= v72 >> 1)
    {
      v30 = sub_238490EE8((v72 > 1), a4 + 1, 1, v30);
    }

    *(v30 + 2) = v4;
    v73 = &v30[16 * a4];
    *(v73 + 4) = v29;
    *(v73 + 5) = v44;
    v74 = *v126;
    if (!*v126)
    {
      goto LABEL_144;
    }

    v132 = v44;
    if (a4)
    {
      while (1)
      {
        v75 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v76 = *(v30 + 4);
          v77 = *(v30 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_73:
          if (v79)
          {
            goto LABEL_123;
          }

          v92 = &v30[16 * v4];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_126;
          }

          v98 = &v30[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_130;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v4 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v102 = &v30[16 * v4];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_87:
        if (v97)
        {
          goto LABEL_125;
        }

        v105 = &v30[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_128;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v75 - 1;
        if (v75 - 1 >= v4)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v113 = v30;
        v4 = *&v30[16 * a4 + 32];
        v114 = *&v30[16 * v75 + 40];
        sub_23856B1BC(*a3 + v10[9] * v4, *a3 + v10[9] * *&v30[16 * v75 + 32], *a3 + v10[9] * v114, v74);
        if (v6)
        {
          goto LABEL_116;
        }

        if (v114 < v4)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_238490ED4(v113);
        }

        if (a4 >= *(v113 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v113[16 * a4];
        *(v115 + 4) = v4;
        *(v115 + 5) = v114;
        v149 = v113;
        sub_238490E48(v75);
        v30 = v149;
        v4 = *(v149 + 2);
        v9 = v146;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v30[16 * v4 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_121;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_122;
      }

      v87 = &v30[16 * v4];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_124;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_127;
      }

      if (v91 >= v83)
      {
        v109 = &v30[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_131;
        }

        if (v78 < v112)
        {
          v75 = v4 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v132;
    a4 = v125;
    if (v132 >= v28)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v29, a4))
  {
    goto LABEL_136;
  }

  if ((v29 + a4) < v57)
  {
    v57 = v29 + a4;
  }

  if (v57 < v29)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v132 = v57;
  if (v44 == v57)
  {
    goto LABEL_53;
  }

  v128 = v6;
  v58 = *a3;
  sub_23875ED50();
  v59 = v10[9];
  v60 = v10[2];
  v61 = (v58 + v59 * (v44 - 1));
  v140 = -v59;
  v123 = v29;
  v62 = v29 - v44;
  v141 = v58;
  v129 = v59;
  v63 = v58 + v44 * v59;
LABEL_42:
  v137 = v44;
  v133 = v63;
  v134 = v62;
  v64 = v63;
  v135 = v61;
  a4 = v61;
  while (1)
  {
    v60(v147, v64, v9);
    v60(v148, a4, v9);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 = sub_238758840();
    v67 = v66;
    if (v65 == sub_238758840() && v67 == v68)
    {

      v4 = v145;
      v9 = v146;
      a4 = *v145;
      (*v145)(v148, v146);
      (a4)(v147, v9);
LABEL_41:
      v44 = v137 + 1;
      v61 = &v135[v129];
      v62 = v134 - 1;
      v63 = v133 + v129;
      if (v137 + 1 == v132)
      {
        v6 = v128;
        a3 = v127;
        v10 = v136;
        v44 = v132;
        v29 = v123;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v69 = sub_23875F630();

    v9 = v146;
    v4 = *v145;
    (*v145)(v148, v146);
    (v4)(v147, v9);
    if ((v69 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v141)
    {
      break;
    }

    v70 = v142;
    v4 = *v143;
    (*v143)(v142, v64, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(a4, v70, v9);
    a4 += v140;
    v64 += v140;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_23856B1BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v55 - v13;
  MEMORY[0x28223BE20](v14);
  v65 = &v55 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v55 - v17;
  v61 = *(v18 + 72);
  if (!v61)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v61 == -1)
  {
    goto LABEL_73;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v61 == -1)
  {
    goto LABEL_74;
  }

  v20 = (a2 - a1) / v61;
  v68 = a1;
  v67 = a4;
  if (v20 >= v19 / v61)
  {
    v22 = v19 / v61 * v61;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v22 < 1)
    {
      v41 = a4 + v22;
    }

    else
    {
      v39 = -v61;
      v58 = a4;
      v59 = (v9 + 16);
      v57 = (v9 + 8);
      v40 = a4 + v22;
      v41 = a4 + v22;
      v65 = -v61;
      do
      {
        v56 = v41;
        v42 = a2;
        v43 = (a2 + v39);
        v64 = v43;
        v61 = v42;
        while (1)
        {
          if (v42 <= a1)
          {
            v68 = v42;
            v66 = v56;
            goto LABEL_71;
          }

          v44 = a3;
          v60 = v41;
          v45 = v40 + v39;
          v46 = *v59;
          (*v59)(v62, v40 + v39, v8);
          v46(v63, v43, v8);
          sub_23875ED50();
          sub_23875ED40();
          sub_23875ECE0();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v47 = sub_238758840();
          v49 = v48;
          if (v47 == sub_238758840() && v49 == v50)
          {
            v51 = 0;
          }

          else
          {
            v51 = sub_23875F630();
          }

          a3 += v65;
          v52 = *v57;
          (*v57)(v63, v8);
          v52(v62, v8);
          if (v51)
          {
            break;
          }

          v41 = v45;
          v43 = v64;
          v53 = v58;
          if (v44 < v40 || a3 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v40 = v45;
          v39 = v65;
          v42 = v61;
          if (v45 <= v53)
          {
            a2 = v61;
            goto LABEL_70;
          }
        }

        a2 = v64;
        v54 = v58;
        if (v44 < v61 || a3 >= v61)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v60;
        }

        else
        {
          v41 = v60;
          if (v44 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v65;
      }

      while (v40 > v54);
    }

LABEL_70:
    v68 = a2;
    v66 = v41;
  }

  else
  {
    v21 = v20 * v61;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = (a4 + v21);
    v66 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v59 = *(v9 + 16);
      v60 = a3;
      v62 = (v9 + 16);
      v24 = (v9 + 8);
      do
      {
        v25 = a2;
        v26 = a2;
        v27 = v59;
        (v59)(v64, v26, v8);
        v28 = a4;
        (v27)(v65, a4, v8);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v29 = sub_238758840();
        v31 = v30;
        if (v29 == sub_238758840() && v31 == v32)
        {

          v33 = *v24;
          (*v24)(v65, v8);
          v33(v64, v8);
        }

        else
        {
          v34 = sub_23875F630();

          v35 = *v24;
          (*v24)(v65, v8);
          v35(v64, v8);
          if (v34)
          {
            a2 = v25 + v61;
            a4 = v28;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v36 = v60;
            }

            else
            {
              v36 = v60;
              if (a1 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v38 = v61;
            goto LABEL_39;
          }
        }

        v37 = v28;
        v38 = v61;
        a4 = v37 + v61;
        a2 = v25;
        if (a1 < v37 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v36 = v60;
        }

        else
        {
          v36 = v60;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
            v67 = a4;
            goto LABEL_39;
          }
        }

        v67 = a4;
LABEL_39:
        a1 += v38;
        v68 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_71:
  sub_238708FF0(&v68, &v67, &v66);
}

void (*sub_23856B91C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23856B99C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23856B9A4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_23856BA24;
  }

  __break(1u);
  return result;
}

void (*sub_23856BA2C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23856C35C;
  }

  __break(1u);
  return result;
}

void *sub_23856BAAC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23856BD5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_23856C004(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758850();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875EA50();
  v15 = [a1 propertyForKey_];

  if (v15)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager);
      sub_238758830();
      sub_23875A410();
      (*(v10 + 8))(v13, v9);
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a1];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_238439884(v24, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v18 = sub_23875C1B0();
  v19 = sub_23875EFE0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2383F8000, v18, v19, "Expected bundleID property on specifier", v20, 2u);
    MEMORY[0x23EE64DF0](v20, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23856C304()
{
  result = qword_27DF0E570;
  if (!qword_27DF0E570)
  {
    sub_238758850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E570);
  }

  return result;
}

uint64_t sub_23856C364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v12 = *(v0 + *(type metadata accessor for LineItemView.ViewModel(0) + 28));
  sub_23856F608();
  v2 = sub_23875F2C0();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_23856C518()
{
  v32 = sub_23875BD20();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - v7;
  v9 = sub_238758090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23843981C(v0 + *(v14 + 24), v8, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_238439884(v8, &unk_27DF0B080, &unk_2387662A0);
    return sub_23856C364();
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v31[1] = "FinanceKitUI/LineItemView.swift";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_238763B60;
    v33 = *(v0 + *(v14 + 28));
    sub_23856F608();
    v17 = sub_23875F2C0();
    v19 = v18;
    v20 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v21 = sub_238448C58();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_23875BCC0();
    v22 = sub_238758080();
    v24 = v23;
    (*(v1 + 8))(v4, v32);
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v24;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v25 = qword_2814F1B90;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

    sub_23875EA80();
    v30 = sub_23875EAA0();

    (*(v10 + 8))(v13, v9);
    return v30;
  }
}

uint64_t LineItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for LineItemView(0) + 20));
  sub_23856F5A0(v1, a1, type metadata accessor for LineItemView.ViewModel);
  v4 = type metadata accessor for LineItemView_iOS(0);
  *(a1 + *(v4 + 20)) = v3;
  v5 = *(v4 + 24);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23856C9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_23856F5A0(v2, a2, type metadata accessor for LineItemView.ViewModel);
  v5 = type metadata accessor for LineItemView_iOS(0);
  *(a2 + *(v5 + 20)) = v4;
  v6 = *(v5 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23856CA5C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5B8, &qword_23876FE78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5C0, &qword_23876FE80);
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v49 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5C8, &qword_23876FE88);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5D0, &qword_23876FE90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5D8, &qword_23876FE98);
  v16 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v49 - v20;
  v21 = sub_23875C880();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v49 - v27;
  v29 = v1;
  v30 = v1 + *(type metadata accessor for LineItemView_iOS(0) + 24);
  sub_2384D5138(v28);
  (*(v22 + 104))(v25, *MEMORY[0x277CDF9F0], v21);
  sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v30) = sub_23875E9C0();
  v31 = *(v22 + 8);
  v31(v25, v21);
  v31(v28, v21);
  if (v30)
  {
    *v15 = sub_23875CE50();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E608, &qword_23876FEA8);
    sub_23856D0AC(v29, &v15[*(v32 + 44)]);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2384396E4(v15, v18, &qword_27DF0E5D0, &qword_23876FE90);
    v33 = &v18[*(v53 + 36)];
    v34 = v63;
    *(v33 + 4) = v62;
    *(v33 + 5) = v34;
    *(v33 + 6) = v64;
    v35 = v59;
    *v33 = v58;
    *(v33 + 1) = v35;
    v36 = v61;
    *(v33 + 2) = v60;
    *(v33 + 3) = v36;
    v37 = v50;
    sub_2384396E4(v18, v50, &qword_27DF0E5D8, &qword_23876FE98);
    sub_23843981C(v37, v55, &qword_27DF0E5D8, &qword_23876FE98);
    swift_storeEnumTagMultiPayload();
    sub_23856F430();
    sub_23856F4E8();
    sub_23875D1B0();
    v38 = v37;
    v39 = &qword_27DF0E5D8;
    v40 = &qword_23876FE98;
  }

  else
  {
    *v5 = sub_23875D030();
    *(v5 + 1) = 0x4010000000000000;
    v5[16] = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5E0, &qword_23876FEA0);
    sub_23856E0B0(v29, &v5[*(v41 + 44)]);
    sub_23875E4B0();
    sub_23875C9C0();
    v42 = v51;
    sub_2384396E4(v5, v51, &qword_27DF0E5B8, &qword_23876FE78);
    v43 = (v42 + *(v56 + 36));
    v44 = v63;
    v43[4] = v62;
    v43[5] = v44;
    v43[6] = v64;
    v45 = v59;
    *v43 = v58;
    v43[1] = v45;
    v46 = v61;
    v43[2] = v60;
    v43[3] = v46;
    v47 = v52;
    sub_2384396E4(v42, v52, &qword_27DF0E5C0, &qword_23876FE80);
    sub_23843981C(v47, v55, &qword_27DF0E5C0, &qword_23876FE80);
    swift_storeEnumTagMultiPayload();
    sub_23856F430();
    sub_23856F4E8();
    sub_23875D1B0();
    v38 = v47;
    v39 = &qword_27DF0E5C0;
    v40 = &qword_23876FE80;
  }

  return sub_238439884(v38, v39, v40);
}

uint64_t sub_23856D0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E610, &unk_23876FEB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = sub_23875DFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23856F5A0(v32 + *(v20 + 32), v19, type metadata accessor for ProductImage.ViewModel);
  v21 = *(type metadata accessor for ProductImage(0) + 20);
  *&v19[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0EE0], v8);
  v22 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v24 = &v19[*(v13 + 36)];
  v25 = type metadata accessor for OrderImageStyleModifier();
  *&v24[*(v25 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v24[*(v25 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v24 = xmmword_23876FD10;
  *(v24 + 2) = 0;
  v24[24] = 1;
  *(v24 + 4) = v22;
  v24[40] = 0;
  *v7 = sub_23875D030();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E620, &qword_23876FEF8);
  sub_23856D518(&v7[*(v26 + 44)]);
  sub_23843981C(v19, v16, &qword_27DF0E618, &unk_2387766D0);
  v27 = v34;
  sub_23843981C(v7, v34, &qword_27DF0E610, &unk_23876FEB0);
  v28 = v33;
  sub_23843981C(v16, v33, &qword_27DF0E618, &unk_2387766D0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E628, &qword_23876FF00);
  sub_23843981C(v27, v28 + *(v29 + 48), &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v7, &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v19, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v27, &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v16, &qword_27DF0E618, &unk_2387766D0);
}

uint64_t sub_23856D518@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E630, &unk_23876FF08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v40[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23856D8E8(v12);
  sub_23856DBE8(v6);
  v48 = sub_23856C518();
  v49 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v42 = v12;
  v43 = v6;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  LODWORD(v48) = sub_23875D440();
  v24 = sub_23875DA20();
  v26 = v25;
  v41 = v27;
  v29 = v28;
  sub_2384397FC(v19, v21, v23 & 1);

  v30 = v42;
  v31 = v45;
  sub_23843981C(v42, v45, &qword_27DF0A028, &qword_238764FC0);
  v32 = v43;
  v33 = v47;
  sub_23843981C(v43, v47, &qword_27DF0E630, &unk_23876FF08);
  v34 = v46;
  sub_23843981C(v31, v46, &qword_27DF0A028, &qword_238764FC0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E638, &unk_23876FF18);
  sub_23843981C(v33, v34 + *(v35 + 48), &qword_27DF0E630, &unk_23876FF08);
  v36 = v34 + *(v35 + 64);
  *v36 = v24;
  *(v36 + 8) = v26;
  v37 = v41;
  v38 = v41 & 1;
  *(v36 + 16) = v41 & 1;
  *(v36 + 24) = v29;
  sub_23843980C(v24, v26, v37 & 1);

  sub_238439884(v32, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v30, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v24, v26, v38);

  sub_238439884(v33, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v31, &qword_27DF0A028, &qword_238764FC0);
}

uint64_t sub_23856D8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v33[-v9];
  v11 = v1[1];
  v38 = *v1;
  v39 = v11;
  sub_2384397A8();

  v12 = sub_23875DAA0();
  v14 = v13;
  v16 = v15;
  sub_23875D890();
  v17 = sub_23875D9E0();
  v35 = v18;
  v36 = v17;
  v34 = v19;
  v37 = v20;
  sub_2384397FC(v12, v14, v16 & 1);

  v21 = type metadata accessor for LineItemView_iOS(0);
  v22 = 0;
  v23 = *(v1 + *(v21 + 20));
  if (v23 == 1)
  {
    v24 = v1 + *(v21 + 24);
    sub_2384D5138(v10);
    (*(v4 + 104))(v7, *MEMORY[0x277CDF9D8], v3);
    sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
    LOBYTE(v24) = sub_23875E9C0();
    v25 = *(v4 + 8);
    v25(v7, v3);
    v25(v10, v3);
    if (v24)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }
  }

  KeyPath = swift_getKeyPath();
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v29 = *MEMORY[0x277CE0B28];
  v30 = sub_23875DA00();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  result = swift_getKeyPath();
  *v27 = result;
  v32 = v35;
  *a1 = v36;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v22;
  *(a1 + 48) = v23 ^ 1;
  return result;
}

uint64_t sub_23856DBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v20 = *(v1 + 24);
  if (v20)
  {
    v60 = v10;
    v61 = v7;
    v62 = v4;
    v63 = v3;
    v67 = &v59 - v18;
    v68 = v17;
    v69 = v16;
    v70 = a1;
    v71 = *(v1 + 16);
    v72 = v20;
    sub_2384397A8();

    v21 = sub_23875DAA0();
    v23 = v22;
    v25 = v24;
    sub_23875D7F0();
    v26 = sub_23875DA60();
    v66 = v1;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_2384397FC(v21, v23, v25 & 1);

    LODWORD(v71) = sub_23875D440();
    v32 = sub_23875DA20();
    v34 = v33;
    v64 = v35;
    v65 = v36;
    v37 = v66;
    sub_2384397FC(v27, v29, v31 & 1);

    v38 = type metadata accessor for LineItemView_iOS(0);
    v39 = 0;
    v40 = *(v37 + *(v38 + 20));
    if (v40 == 1)
    {
      v41 = v37 + *(v38 + 24);
      v42 = v60;
      sub_2384D5138(v60);
      v44 = v61;
      v43 = v62;
      v45 = v63;
      (*(v62 + 104))(v61, *MEMORY[0x277CDF9D8], v63);
      sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
      v46 = sub_23875E9C0();
      v47 = *(v43 + 8);
      v47(v44, v45);
      v47(v42, v45);
      if (v46)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }
    }

    KeyPath = swift_getKeyPath();
    v49 = v69;
    v50 = &v14[*(v69 + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
    v52 = *MEMORY[0x277CE0B28];
    v53 = sub_23875DA00();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    *v14 = v32;
    *(v14 + 1) = v34;
    v14[16] = v64 & 1;
    *(v14 + 3) = v65;
    *(v14 + 4) = KeyPath;
    *(v14 + 5) = v39;
    v14[48] = v40 ^ 1;
    v54 = v67;
    sub_2384396E4(v14, v67, &qword_27DF0A028, &qword_238764FC0);
    v55 = v54;
    v56 = v70;
    sub_2384396E4(v55, v70, &qword_27DF0A028, &qword_238764FC0);
    return (*(v68 + 56))(v56, 0, 1, v49);
  }

  else
  {
    v58 = *(v17 + 56);

    return v58(a1, 1, 1, v19);
  }
}

uint64_t sub_23856E0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E630, &unk_23876FF08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - v13;
  v14 = sub_23875DFD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23856F5A0(a1 + *(v25 + 32), v24, type metadata accessor for ProductImage.ViewModel);
  v26 = v24;
  v27 = *(type metadata accessor for ProductImage(0) + 20);
  *(v26 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v65 = v26;
  swift_storeEnumTagMultiPayload();
  (*(v15 + 104))(v18, *MEMORY[0x277CE0EE0], v14);
  v28 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v30 = v26 + *(v19 + 36);
  v31 = type metadata accessor for OrderImageStyleModifier();
  *(v30 + *(v31 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v30 + *(v31 + 40)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v30 = xmmword_23876FD10;
  *(v30 + 16) = 0;
  *(v30 + 24) = 1;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  sub_23856D8E8(v66);
  sub_23856DBE8(v8);
  v67 = sub_23856C518();
  v68 = v32;
  sub_2384397A8();
  v33 = sub_23875DAA0();
  v35 = v34;
  LOBYTE(v28) = v36;
  sub_23875D7F0();
  v37 = sub_23875DA60();
  v39 = v38;
  v57 = v8;
  v41 = v40;

  sub_2384397FC(v33, v35, v28 & 1);

  LODWORD(v67) = sub_23875D440();
  v42 = sub_23875DA20();
  v44 = v43;
  v58 = v45;
  v59 = v46;
  sub_2384397FC(v37, v39, v41 & 1);

  v47 = v61;
  sub_23843981C(v65, v61, &qword_27DF0E618, &unk_2387766D0);
  v48 = v66;
  v49 = v63;
  sub_23843981C(v66, v63, &qword_27DF0A028, &qword_238764FC0);
  v50 = v57;
  v51 = v64;
  sub_23843981C(v57, v64, &qword_27DF0E630, &unk_23876FF08);
  v52 = v62;
  sub_23843981C(v47, v62, &qword_27DF0E618, &unk_2387766D0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E648, &qword_23876FF90);
  sub_23843981C(v49, v52 + v53[12], &qword_27DF0A028, &qword_238764FC0);
  sub_23843981C(v51, v52 + v53[16], &qword_27DF0E630, &unk_23876FF08);
  v54 = v52 + v53[20];
  *v54 = v42;
  *(v54 + 8) = v44;
  v55 = v58;
  LOBYTE(v52) = v58 & 1;
  *(v54 + 16) = v58 & 1;
  *(v54 + 24) = v59;
  sub_23843980C(v42, v44, v55 & 1);

  sub_238439884(v50, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v48, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v65, &qword_27DF0E618, &unk_2387766D0);
  sub_2384397FC(v42, v44, v52);

  sub_238439884(v51, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v49, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v47, &qword_27DF0E618, &unk_2387766D0);
}

uint64_t sub_23856E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = type metadata accessor for ProductImage.ViewModel(0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875AF90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  v19 = sub_23875B210();
  v45 = v20;
  v46 = v19;
  v41 = sub_23875B230();
  v22 = v21;
  sub_23875B200();
  v40 = sub_23875B220();
  v42 = a1;
  v39 = sub_23875B1F0();
  v24 = v23;
  v44 = v9;
  v25 = *(v9 + 16);
  v47 = a2;
  v25(v14, a2, v8);
  v26 = type metadata accessor for LineItemView.ViewModel(0);
  v27 = *(v26 + 24);
  v28 = sub_238758090();
  (*(*(v28 - 8) + 56))(&a3[v27], 1, 1, v28);
  v29 = v45;
  *a3 = v46;
  *(a3 + 1) = v29;
  *(a3 + 2) = v41;
  *(a3 + 3) = v22;
  v30 = v43;
  v46 = v18;
  sub_23853098C(v18, &a3[v27]);
  v45 = v26;
  *&a3[*(v26 + 28)] = v40;
  v25(v30, v14, v8);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2387632F0;
    *(v31 + 32) = v39;
    *(v31 + 40) = v24;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = v48;
  v25(v48, v30, v8);
  if (*(v31 + 16) >= 5uLL)
  {
    sub_23852EE64(v31, v31 + 32, 0, 9uLL);
    v34 = v33;

    v31 = v34;
  }

  v35 = *(v44 + 8);
  v35(v47, v8);
  v36 = sub_23875B240();
  (*(*(v36 - 8) + 8))(v42, v36);
  v35(v30, v8);
  v35(v14, v8);
  sub_238439884(v46, &unk_27DF0B080, &unk_2387662A0);
  *(v32 + *(v49 + 20)) = v31;
  return sub_23856F65C(v32, &a3[*(v45 + 32)]);
}

uint64_t sub_23856EB10@<X0>(uint64_t a1@<X8>)
{
  result = sub_23875CD60();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23856EB44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23875CD70();
}

uint64_t sub_23856EB98(uint64_t a1)
{
  v2 = sub_23875DA00();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CAB0();
}

uint64_t _s12FinanceKitUI12LineItemViewV0F5ModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v31 = v8;
  v32 = type metadata accessor for LineItemView.ViewModel(0);
  v19 = v32[6];
  v20 = *(v13 + 48);
  sub_23843981C(a1 + v19, v16, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v19, &v16[v20], &unk_27DF0B080, &unk_2387662A0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_23843981C(v16, v12, &unk_27DF0B080, &unk_2387662A0);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      v22 = &v16[v20];
      v23 = v31;
      (*(v5 + 32))(v31, v22, v4);
      sub_23856F3E8(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
      v24 = sub_23875E9E0();
      v25 = *(v5 + 8);
      v25(v23, v4);
      v25(v12, v4);
      sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_238439884(v16, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
LABEL_18:
  if (*(a1 + v32[7]) == *(a2 + v32[7]))
  {
    v26 = v32[8];
    v27 = a1 + v26;
    v28 = a2 + v26;
    if (MEMORY[0x23EE5FA60](a1 + v26, v28))
    {
      v29 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v27[*(v29 + 20)], *&v28[*(v29 + 20)]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23856F104()
{
  result = type metadata accessor for LineItemView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23856F1A0()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_23856F368(319, &qword_27DF0BB88, MEMORY[0x277CC6DC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23856F2AC()
{
  type metadata accessor for LineItemView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23856F368(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23856F368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23856F3E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23856F430()
{
  result = qword_27DF0E5E8;
  if (!qword_27DF0E5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E5D8, &qword_23876FE98);
    sub_23843A3E8(&qword_27DF0E5F0, &qword_27DF0E5D0, &qword_23876FE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E5E8);
  }

  return result;
}

unint64_t sub_23856F4E8()
{
  result = qword_27DF0E5F8;
  if (!qword_27DF0E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E5C0, &qword_23876FE80);
    sub_23843A3E8(&qword_27DF0E600, &qword_27DF0E5B8, &qword_23876FE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E5F8);
  }

  return result;
}

uint64_t sub_23856F5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23856F608()
{
  result = qword_27DF0E640;
  if (!qword_27DF0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E640);
  }

  return result;
}

uint64_t sub_23856F65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23856F6C0()
{
  result = qword_27DF0E650;
  if (!qword_27DF0E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E658, &qword_23876FF98);
    sub_23856F430();
    sub_23856F4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E650);
  }

  return result;
}

uint64_t sub_23856F74C(uint64_t a1)
{
  v2 = sub_2387587A0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  v5 = 0;
  if (v4 != *MEMORY[0x277CC7028])
  {
    if (v4 == *MEMORY[0x277CC6FC0])
    {
      return 1;
    }

    else if (v4 == *MEMORY[0x277CC6FF8])
    {
      return 2;
    }

    else if (v4 == *MEMORY[0x277CC6FD0])
    {
      return 3;
    }

    else if (v4 == *MEMORY[0x277CC7010])
    {
      return 4;
    }

    else if (v4 == *MEMORY[0x277CC7020])
    {
      return 5;
    }

    else if (v4 == *MEMORY[0x277CC6FE8])
    {
      return 7;
    }

    else if (v4 == *MEMORY[0x277CC7030])
    {
      return 8;
    }

    else if (v4 == *MEMORY[0x277CC7000])
    {
      return 9;
    }

    else if (v4 == *MEMORY[0x277CC7038])
    {
      return 10;
    }

    else if (v4 == *MEMORY[0x277CC6FE0])
    {
      return 11;
    }

    else if (v4 == *MEMORY[0x277CC7040])
    {
      return 13;
    }

    else if (v4 == *MEMORY[0x277CC6FC8])
    {
      return 14;
    }

    else if (v4 == *MEMORY[0x277CC6FF0])
    {
      return 12;
    }

    else if (v4 == *MEMORY[0x277CC6FD8])
    {
      return 6;
    }

    else if (v4 == *MEMORY[0x277CC7008])
    {
      return 15;
    }

    else if (v4 == *MEMORY[0x277CC7018])
    {
      return 16;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  return v5;
}

uint64_t type metadata accessor for FetchedOrderDetails()
{
  result = qword_27DF0E668;
  if (!qword_27DF0E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23856FA48()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_23856FACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23856FACC()
{
  if (!qword_27DF0E678)
  {
    sub_238757DF0();
    v0 = sub_23875C520();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0E678);
    }
  }
}

uint64_t sub_23856FB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E680, &qword_238770018);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - v7;
  v9 = *(type metadata accessor for FetchedOrderDetails() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E660, &unk_23876FFA0);
  sub_23875C500();
  sub_23856FD20();
  sub_23875EED0();
  sub_23875EF00();
  if (v18[4] == v18[0])
  {
    result = (*(v5 + 8))(v8, v4);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    KeyPath = 0;
  }

  else
  {
    v15 = sub_23875EF20();
    v11 = *v16;
    v15(v18, 0);
    (*(v5 + 8))(v8, v4);
    v12 = *v2;
    v13 = v2[1];
    KeyPath = swift_getKeyPath();
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_23856FD20()
{
  result = qword_27DF0E688;
  if (!qword_27DF0E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E680, &qword_238770018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E688);
  }

  return result;
}

unint64_t sub_23856FD84()
{
  result = qword_27DF0E690;
  if (!qword_27DF0E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E698, &qword_238770048);
    sub_23856FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E690);
  }

  return result;
}

unint64_t sub_23856FE08()
{
  result = qword_27DF0E6A0;
  if (!qword_27DF0E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6A0);
  }

  return result;
}

uint64_t sub_23856FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v49 = a5;
  v48 = type metadata accessor for OrderLargeBlackButtonStyle();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387591F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v40 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6A8, &unk_2387700F8);
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v43 = &v40 - v24;
  (*(v12 + 104))(v15, *MEMORY[0x277CC77C8], v11, v23);
  v25 = sub_238758A40();
  v27 = v26;
  (*(v12 + 8))(v15, v11);
  v50 = v25;
  v51 = v27;
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v42;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  sub_2384397A8();

  sub_23875E230();
  v54 = a3;
  v55 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6B0, &qword_238770108);
  v38 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v39 = sub_23843A3E8(&qword_27DF0E6B8, &qword_27DF0E6B0, &qword_238770108);
  v32 = v43;
  v33 = v44;
  v34 = v41;
  sub_23875DED0();

  (*(v45 + 8))(v34, v33);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v35 = *(v48 + 20);
  *&v10[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v50 = v33;
  v51 = v31;
  v52 = v38;
  v53 = v39;
  swift_getOpaqueTypeConformance2();
  sub_23857131C(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle);
  v36 = v46;
  sub_23875DB40();
  sub_23855A540(v10);
  return (*(v47 + 8))(v32, v36);
}

uint64_t sub_2385703E0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

uint64_t sub_2385704B8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238571044();
  sub_23875C8F0();
}

uint64_t sub_2385705C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = a1;
  *(a3 + 8) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6C8, &qword_238770BA0);
  sub_23875E1A0();
  *(a3 + 16) = v7;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 72) = 0;
}

uint64_t sub_2385706C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_2385703E0();
}

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238570714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_2385704B8();
}

uint64_t sub_238570724@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = type metadata accessor for OrderFileAttachmentPreview(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D0, &qword_238770290);
  sub_23875E1B0();
  v12 = v26;
  if (v26)
  {
    v13 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
    v14 = sub_23875B940();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, v12 + v13, v14);

    (*(v15 + 56))(v7, 0, 1, v14);
  }

  else
  {
    v16 = sub_23875B940();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  sub_23853B5CC(v7, v11);
  v17 = *(v8 + 20);
  *&v11[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_2385710D0(v2, v24);
  v18 = swift_allocObject();
  v19 = v25[0];
  v18[3] = v24[2];
  v18[4] = v19;
  *(v18 + 73) = *(v25 + 9);
  v20 = v24[1];
  v18[1] = v24[0];
  v18[2] = v20;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D8, &unk_2387702E0) + 36));
  v22 = v21 + *(sub_23875C6E0() + 20);
  sub_23875ED60();
  *v21 = &unk_2387702D8;
  v21[1] = v18;
  return sub_23857119C(v11, a1);
}

uint64_t sub_2385709EC(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23875C1E0();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_23875ED50();
  v1[24] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x2822009F8](sub_238570AE0, v6, v5);
}

uint64_t sub_238570AE0()
{
  v1 = v0[20];
  sub_2384D55B0((v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v3 + 24);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_238570C28;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_238570C28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_238570E04;
  }

  else
  {
    v4[29] = a1;
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_238570D50;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_238570D50()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  *(v0 + 136) = *(v3 + 16);
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D0, &qword_238770290);
  sub_23875E1C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238570E04()
{
  v27 = v0;
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_23875C180();
  sub_2385710D0(v4, (v0 + 2));
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[21];
  if (v8)
  {
    v25 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    v24 = v11;
    v17 = v0[2];
    v16 = v0[3];

    sub_238571200((v0 + 2));
    v18 = sub_2384615AC(v17, v16, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2383F8000, v6, v7, "Error loading returnLabel %s: %@", v13, 0x16u);
    sub_238455DD4(v14);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    sub_238571200((v0 + 2));
    (*(v10 + 8))(v11, v12);
  }

  v21 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_238571034@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_2385705C4(*(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_238571044()
{
  result = qword_27DF0E6C0;
  if (!qword_27DF0E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6C0);
  }

  return result;
}

uint64_t sub_238571108()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2385709EC(v0 + 16);
}

uint64_t sub_23857119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderFileAttachmentPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238571230()
{
  result = qword_27DF0E6E0;
  if (!qword_27DF0E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E6D8, &unk_2387702E0);
    sub_23857131C(&qword_27DF0E6E8, type metadata accessor for OrderFileAttachmentPreview);
    sub_23857131C(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6E0);
  }

  return result;
}

uint64_t sub_23857131C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2385713AC()
{
  sub_238571480();
  if (v0 <= 0x3F)
  {
    sub_2384561E8();
    if (v1 <= 0x3F)
    {
      sub_2385662D0(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238571480()
{
  if (!qword_27DF0E700)
  {
    sub_238757C30();
    sub_238573D2C(&qword_27DF0E708, MEMORY[0x277CC6BB0]);
    v0 = sub_23875ACC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0E700);
    }
  }
}

size_t sub_238571530@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v96 = type metadata accessor for ProductImage.ViewModel(0);
  v6 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v82 - v11;
  v12 = sub_23875AF90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v95 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v82 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v106 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v94 = *(v106 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  v26 = a1;
  v27 = a2;
  v97 = v26;
  sub_23875ACB0();
  v28 = [v27 merchant];
  v29 = [v28 displayName];

  v30 = sub_2387586A0();
  v32 = v31;

  v84 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v33 = (a3 + v84[5]);
  *v33 = v30;
  v33[1] = v32;
  v85 = v27;
  v34 = [v27 statusDescription];
  if (v34)
  {
    v35 = v34;
    v36 = sub_2387586A0();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = (a3 + v84[6]);
  *v39 = v36;
  v39[1] = v38;
  v40 = sub_23875A5A0();
  v41 = v40;
  if (v40 >> 62)
  {
    v42 = sub_23875F3A0();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = a3;
  if (!v42)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_28:
    *(v83 + v84[7]) = v45;
    return result;
  }

  v109 = MEMORY[0x277D84F90];
  result = sub_2385FEB6C(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v109;
    v46 = v41;
    v88 = v41 & 0xC000000000000001;
    v103 = (v13 + 16);
    v87 = (v13 + 8);
    v86 = xmmword_2387632F0;
    v92 = v20;
    v93 = v8;
    v90 = v41;
    v91 = v25;
    v104 = v12;
    v89 = v42;
    do
    {
      v102 = v45;
      if (v88)
      {
        v47 = MEMORY[0x23EE63F70](v44, v46);
      }

      else
      {
        v47 = *(v46 + 8 * v44 + 32);
      }

      v48 = v47;
      sub_238757DA0();
      v49 = [v48 title];
      v50 = sub_2387586A0();
      v99 = v51;
      v100 = v50;

      sub_238759200();
      v52 = [v48 quantity];
      v53 = [v48 image];
      v101 = v44;
      if (v53)
      {
        v54 = v53;
        v98 = sub_23875EA80();
        v56 = v55;
      }

      else
      {
        v98 = 0;
        v56 = 0;
      }

      v57 = *v103;
      v58 = v107;
      v59 = v20;
      v60 = v104;
      (*v103)(v107, v59, v104);
      v61 = v106;
      v62 = *(v106 + 20);
      v63 = sub_238758090();
      v64 = v105;
      (*(*(v63 - 8) + 56))(&v105[v62], 1, 1, v63);
      v65 = v99;
      *v64 = v100;
      v64[1] = v65;
      sub_23853098C(v108, v64 + v62);
      *(v64 + *(v61 + 24)) = v52;
      v66 = v95;
      v57(v95, v58, v60);
      if (v56)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
        v67 = swift_allocObject();
        *(v67 + 16) = v86;
        *(v67 + 32) = v98;
        *(v67 + 40) = v56;
      }

      else
      {
        v67 = MEMORY[0x277D84F90];
      }

      v68 = v93;
      v69 = v89;
      v70 = v104;
      v57(v93, v66, v104);
      v71 = v101;
      if (*(v67 + 16) <= 4uLL)
      {

        v77 = *v87;
        (*v87)(v66, v70);
        v77(v107, v70);
        sub_238566104(v108);
        v20 = v92;
        v77(v92, v70);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
        v72 = v66;
        v73 = swift_allocObject();
        v74 = _swift_stdlib_malloc_size(v73);
        v75 = v74 - 32;
        if (v74 < 32)
        {
          v75 = v74 - 17;
        }

        v73[2] = 4;
        v73[3] = 2 * (v75 >> 4);
        swift_arrayInitWithCopy();

        v76 = *v87;
        (*v87)(v72, v70);
        v76(v107, v70);
        sub_238566104(v108);
        v20 = v92;
        v76(v92, v70);

        v67 = v73;
      }

      *(v68 + *(v96 + 20)) = v67;
      v78 = v105;
      sub_2385739BC(v68, &v105[*(v106 + 28)], type metadata accessor for ProductImage.ViewModel);
      v79 = v91;
      sub_2385739BC(v78, v91, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v45 = v102;
      v109 = v102;
      v81 = *(v102 + 16);
      v80 = *(v102 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_2385FEB6C(v80 > 1, v81 + 1, 1);
        v45 = v109;
      }

      v44 = v71 + 1;
      *(v45 + 16) = v81 + 1;
      sub_2385739BC(v79, v45 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v81, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v46 = v90;
    }

    while (v69 != v44);

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_238571D5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_238757CC0();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238759B60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v10;
  v37 = v9;
  (*(v10 + 16))(v13, a1, v9, v16);
  sub_23875AC90();
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_238759B30();
  sub_238757C60();
  (*(v34 + 8))(v8, v35);
  v20 = sub_23875A360();
  v22 = v21;

  v23 = &v18[v14[5]];
  *v23 = v20;
  v23[1] = v22;
  v24 = sub_238759AA0();
  v26 = v25;
  sub_23845C998(a2, v39);
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v24 = sub_23875A360();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = &v18[v14[6]];
  __swift_destroy_boxed_opaque_existential_1(v39);
  *v29 = v24;
  v29[1] = v28;
  v30 = sub_238759B50();
  MEMORY[0x28223BE20](v30);
  *(&v33 - 2) = a1;
  *(&v33 - 1) = a2;
  v31 = sub_23851EF08(sub_23857399C, (&v33 - 4), v30);

  *&v18[v14[7]] = v31;
  sub_238574084(v18, v38, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v36 + 8))(a1, v37);
  return sub_2385740EC(v18, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
}

uint64_t sub_2385720C4()
{
  v1 = v0;
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BC40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  (*(v13 + 16))(&v24 - v16, v1, v12, v15);
  if ((*(v13 + 88))(v17, v12) == *MEMORY[0x277CC83B0])
  {
    (*(v13 + 96))(v17, v12);
    (*(v8 + 32))(v11, v17, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2387632F0;
    v19 = sub_23875B9D0();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_238448C58();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    (*(v3 + 104))(v6, *MEMORY[0x277CC77B0], v2);
    v22 = sub_238758A50();

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
    return v22;
  }

  else
  {
    (*(v13 + 8))(v17, v12);
    return 0;
  }
}

uint64_t sub_23857240C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  v11 = *(v3 + 16);
  v11(v18 - v9, v1, v2, v8);
  v12 = (*(v3 + 88))(v10, v2);
  if (v12 != *MEMORY[0x277CC83B8])
  {
    if (v12 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_11;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  (v11)(v6, v10, v2);
  (*(v3 + 96))(v6, v2);
  v13 = sub_238757C30();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 88))(v6, v13);
  if (v15 == *MEMORY[0x277CC6B98])
  {
    v16 = 3;
LABEL_6:
    (*(v3 + 8))(v10, v2);
    return v16;
  }

  if (v15 == *MEMORY[0x277CC6BA8])
  {
    goto LABEL_5;
  }

  if (v15 == *MEMORY[0x277CC6BA0])
  {
    v16 = 1;
    goto LABEL_6;
  }

  (*(v14 + 8))(v6, v13);
LABEL_11:
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385726F8@<X0>(uint64_t a1@<X8>)
{
  sub_238574084(v1, a1, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
  v3 = *(type metadata accessor for OrderDetailsNoFulfillments_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238572784@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E738, &qword_238770460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E740, &qword_238770468);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E748, &qword_238770470);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E750, &qword_238770478);
  sub_238573D98();
  sub_23875D9C0();
  v20 = sub_23843A3E8(&qword_27DF0E7A0, &qword_27DF0E738, &qword_238770460);
  sub_23875DB70();
  (*(v3 + 8))(v6, v2);
  v32 = v2;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_23875DD80();
  (*(v29 + 8))(v11, v21);
  v22 = *(v27 + *(type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0) + 28));
  v23 = v13[2];
  v23(v16, v19, v12);
  v24 = v30;
  v23(v30, v16, v12);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7A8, &qword_2387704A8) + 48)] = v22;
  v25 = v13[1];
  swift_bridgeObjectRetain_n();
  v25(v19, v12);

  return (v25)(v16, v12);
}

uint64_t sub_238572B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E788, &qword_238770490);
  sub_238573F98();
  sub_23875E3D0();
  sub_23875CE90();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E768, &qword_238770480) + 36);
  (*(v5 + 16))(a2 + v10, v8, v4);
  v11 = *(v5 + 56);
  v11(a2 + v10, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E750, &qword_238770478) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v13 + v14, v8, v4);
  v11(v13 + v14, 0, 1, v4);

  *v13 = KeyPath;
  return result;
}

double sub_238572DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7B0, &qword_2387704E0);
  sub_238572E24(a1, a2 + *(v4 + 44));
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E788, &qword_238770490) + 36);
  result = 12.0;
  *v5 = xmmword_2387702F0;
  *(v5 + 16) = xmmword_2387702F0;
  *(v5 + 32) = 0;
  return result;
}

uint64_t sub_238572E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for OrderDetailsStatusLabel();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_23875ED50();
  v16 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385731EC(v15);
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v5 + 88))(v8, v4);
  if (v17 == *MEMORY[0x277CC83B8])
  {
    v28 = v16;
    v29 = a2;
    v18 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v19 = (a1 + *(v18 + 24));
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 8);

    v22(v8, v4);
    if (v21)
    {
      v23 = (a1 + *(v18 + 20));
      v24 = *v23;
      v25 = v23[1];
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v20 = 0;
    }

    a2 = v29;
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277CC83B0])
  {
    (*(v5 + 8))(v8, v4);
    v24 = 0;
    v25 = 0;
    v20 = 0;
    v21 = 0;
LABEL_10:
    sub_238574084(v15, v12, type metadata accessor for OrderDetailsStatusLabel);
    sub_238574084(v12, a2, type metadata accessor for OrderDetailsStatusLabel);
    v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7B8, &qword_2387704E8) + 48));
    *v26 = v24;
    v26[1] = v25;
    v26[2] = v20;
    v26[3] = v21;
    sub_2385570E8(v24, v25);
    sub_2385740EC(v15, type metadata accessor for OrderDetailsStatusLabel);
    sub_23855712C(v24, v25);
    sub_2385740EC(v12, type metadata accessor for OrderDetailsStatusLabel);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385731EC@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_23875D990();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875ACA0();
  v8 = v7;
  v9 = sub_2385720C4();
  v11 = v10;
  v12 = sub_23857240C();
  v13 = type metadata accessor for OrderDetailsStatusLabel();
  v14 = v13[7];
  v15 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  v16 = a1 + v13[8];
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = 2;
  *(v16 + 24) = 0;
  v17 = a1 + v13[9];
  v28 = 0;
  sub_23875E1A0();
  v18 = v30;
  *v17 = v29;
  *(v17 + 8) = v18;
  v19 = a1 + v13[10];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v13[11];
  v29 = 0x403F000000000000;
  v21 = *MEMORY[0x277CE0A50];
  v22 = *(v2 + 104);
  v23 = v27;
  v22(v5, v21, v27);
  sub_23857414C();
  sub_23875C540();
  v24 = v13[12];
  v29 = 0x403C000000000000;
  v22(v5, v21, v23);
  sub_23875C540();
  v25 = v13[13];
  v29 = 0x4018000000000000;
  v22(v5, v21, v23);
  return sub_23875C540();
}

uint64_t sub_238573468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for ProductImage.ViewModel(0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v53 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v47 - v11;
  v52 = sub_23875AF90();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v52);
  v65 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v47 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = sub_238758940();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v25;
  v26 = *(v25 + 16);
  v56 = v27;
  v26(v24, a1, v22);
  sub_238759AB0();
  sub_23845C998(a2, v64);
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_238758920();
  v51 = sub_23875A360();
  v29 = v28;

  sub_238758910();
  v50 = sub_238758930();
  v48 = sub_238758900();
  v49 = v30;
  v57 = v12;
  v31 = *(v12 + 16);
  v32 = v61;
  v55 = v19;
  v33 = v52;
  v31(v61, v19, v52);
  v34 = v62;
  v35 = *(v62 + 20);
  v36 = sub_238758090();
  v37 = v53;
  (*(*(v36 - 8) + 56))(v53 + v35, 1, 1, v36);
  *v37 = v51;
  v37[1] = v29;
  v38 = v37;
  sub_23853098C(v63, v37 + v35);
  *(v37 + *(v34 + 24)) = v50;
  v39 = v32;
  v40 = v49;
  v31(v65, v39, v33);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2387632F0;
    *(v41 + 32) = v48;
    *(v41 + 40) = v40;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = v58;
  v31(v58, v65, v33);
  if (*(v41 + 16) >= 5uLL)
  {
    sub_23852EE64(v41, v41 + 32, 0, 9uLL);
    v44 = v43;

    v41 = v44;
  }

  v45 = *(v57 + 8);
  v45(v55, v33);
  (*(v54 + 8))(v24, v56);
  v45(v65, v33);
  v45(v61, v33);
  sub_238566104(v63);
  *(v42 + *(v59 + 20)) = v41;
  sub_2385739BC(v42, v38 + *(v62 + 28), type metadata accessor for ProductImage.ViewModel);
  sub_2385739BC(v38, v60, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_2385739BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238573A24(uint64_t a1, uint64_t a2)
{
  sub_238757C30();
  sub_238573D2C(&qword_27DF0E708, MEMORY[0x277CC6BB0]);
  if ((sub_23875AC60() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (v14)
    {
      v15 = *v11 == *v13 && v12 == v14;
      if (v15 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_14:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_238518CAC(v17, v18);
}

uint64_t sub_238573BA8()
{
  result = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238573C78()
{
  type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385662D0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238573D2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238573D98()
{
  result = qword_27DF0E758;
  if (!qword_27DF0E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E750, &qword_238770478);
    sub_238573E50();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E758);
  }

  return result;
}

unint64_t sub_238573E50()
{
  result = qword_27DF0E760;
  if (!qword_27DF0E760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E768, &qword_238770480);
    sub_238573F08();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E760);
  }

  return result;
}

unint64_t sub_238573F08()
{
  result = qword_27DF0E770;
  if (!qword_27DF0E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E778, &qword_238770488);
    sub_238573F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E770);
  }

  return result;
}

unint64_t sub_238573F98()
{
  result = qword_27DF0E780;
  if (!qword_27DF0E780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E788, &qword_238770490);
    sub_23843A3E8(&qword_27DF0E790, &qword_27DF0E798, &qword_238770498);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E780);
  }

  return result;
}

uint64_t sub_238574084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385740EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23857414C()
{
  result = qword_27DF0E7C0;
  if (!qword_27DF0E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E7C0);
  }

  return result;
}

void sub_2385741E8()
{
  sub_23875BC40();
  if (v0 <= 0x3F)
  {
    sub_238574460(319, qword_2814F0E80, type metadata accessor for WidgetAccount);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385742D0()
{
  sub_23875BCB0();
  if (v0 <= 0x3F)
  {
    sub_2384561E8();
    if (v1 <= 0x3F)
    {
      sub_238574460(319, &unk_2814F1168, MEMORY[0x277CC7258]);
      if (v2 <= 0x3F)
      {
        sub_238574460(319, &qword_2814F1158, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_238574460(319, &unk_2814F0890, type metadata accessor for CGImage);
          if (v4 <= 0x3F)
          {
            sub_238574460(319, &qword_2814F1160, MEMORY[0x277CC9260]);
            if (v5 <= 0x3F)
            {
              sub_238574460(319, &unk_2814F1180, MEMORY[0x277CC6B60]);
              if (v6 <= 0x3F)
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

void sub_238574460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2385744C8()
{
  result = qword_27DF0E7E8;
  if (!qword_27DF0E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E7E8);
  }

  return result;
}

unint64_t sub_23857453C()
{
  result = qword_27DF0A200;
  if (!qword_27DF0A200)
  {
    sub_23875BCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A200);
  }

  return result;
}

uint64_t sub_2385745AC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_238574658(uint64_t a1)
{
  sub_23845C998(a1, v3);
  sub_23845C998(v3, &v2);
  sub_23849557C();
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_2385746F8(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2, v8);
  (v11)(v6, v10, v2);
  sub_2384C6478();
  sub_23875CDD0();
  return (*(v3 + 8))(v10, v2);
}

uint64_t AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v7 = sub_23875BCB0();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875A9F0();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccountConsentManagementView();
  v15 = a5 + v14[7];
  v49 = 0;
  sub_23875E1A0();
  v16 = v51;
  *v15 = v50;
  *(v15 + 8) = v16;
  v17 = a5 + v14[8];
  v49 = 0;
  sub_23875E1A0();
  v18 = v51;
  *v17 = v50;
  *(v17 + 8) = v18;
  v19 = a5 + v14[10];
  *v19 = swift_getKeyPath();
  *(v19 + 40) = 0;
  v20 = v14[11];
  *(a5 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v21 = sub_238758680();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v42 = v21;
  v23(a5, a1);
  v24 = sub_238758560();
  v25 = a5 + v14[6];
  *v25 = v24 & 1;
  *(v25 + 8) = 0;
  v26 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  sub_238758570();
  if (v27)
  {
    v28 = sub_23875EA50();
  }

  else
  {
    v28 = 0;
  }

  v29 = v14[5];
  v30 = [v26 passWithFPANIdentifier_];

  *(a5 + v29) = v30;
  sub_238758CF0();
  v31 = sub_238758CE0();
  sub_238758530();
  sub_23875A9B0();
  (*(v10 + 8))(v13, v41);
  v32 = sub_238758CD0();

  [v31 setPredicate_];

  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v33 = sub_23875EC60();
  [v31 setSortDescriptors_];

  v34 = v31;
  sub_23875E500();
  v35 = a5 + v14[12];
  sub_23875C4F0();
  v36 = v43;
  sub_238758640();
  sub_23857BDA4();
  (*(v44 + 8))(v36, v45);
  v37 = v14[13];
  sub_238759780();
  sub_23875C4F0();

  result = (*(v22 + 8))(a1, v42);
  v39 = a5 + v14[9];
  v40 = v47;
  *v39 = v46;
  *(v39 + 8) = v40;
  *(v39 + 16) = v48 & 1;
  return result;
}

uint64_t type metadata accessor for AccountConsentManagementView()
{
  result = qword_27DF0E818;
  if (!qword_27DF0E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238574CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountConsentManagementView();
  sub_23843981C(v1 + *(v8 + 40), v11, &qword_27DF0B7B0, &unk_238768A40);
  if (v12 == 1)
  {
    return sub_2384347C0(v11, a1);
  }

  sub_23875EFF0();
  v10 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238574E58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AccountConsentManagementView();
  sub_23843981C(v1 + *(v12 + 44), v11, &qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C1E0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238575060@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_238757B60();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8B8, &qword_238770858);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *(type metadata accessor for AccountConsentManagementView() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E810, &qword_238770738);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0E8C0, &qword_27DF0E8B8, &qword_238770858);
  v12 = sub_23875EEE0();
  if (v12)
  {
    v13 = v12;
    v24 = v7;
    v28 = MEMORY[0x277D84F90];
    sub_2385FEDEC(0, v12 & ~(v12 >> 63), 0);
    v14 = v28;
    result = sub_23875EED0();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = a1;
    v25 = v2 + 32;
    do
    {
      v16 = sub_23875EF20();
      v18 = *v17;
      v16(v27, 0);
      sub_238757B70();
      v28 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2385FEDEC(v19 > 1, v20 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v20 + 1;
      (*(v2 + 32))(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v5, v26);
      sub_23875EF10();
      --v13;
    }

    while (v13);
    (*(v24 + 8))(v10, v6);
    a1 = v23;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v14 = MEMORY[0x277D84F90];
  }

  v21 = v26;
  if (*(v14 + 16))
  {
    (*(v2 + 16))(a1, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v26);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v2 + 56))(a1, v22, 1, v21);
}

BOOL sub_2385753EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-1] - v3;
  v5 = *(type metadata accessor for AccountConsentManagementView() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  sub_23875EED0();
  sub_23875EF00();
  v6 = v14;
  v7 = v13[0];
  if (v14 == v13[0])
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = sub_23875EF20();
    v10 = *v9;
    v8(v13, 0);
    (*(v1 + 8))(v4, v0);
  }

  return v6 != v7;
}

uint64_t AccountConsentManagementView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F0, &qword_2387706C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-v4];
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F8, &qword_2387706D0);
  sub_23843A3E8(&qword_27DF0E800, &qword_27DF0E7F8, &qword_2387706D0);
  sub_23875D9C0();
  v10 = sub_2387585B0();
  v11 = v6;
  sub_23843A3E8(&qword_27DF0E808, &qword_27DF0E7F0, &qword_2387706C8);
  sub_2384397A8();
  sub_23875DC70();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_238575780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E848, &qword_238770800);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E850, &qword_238770808);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E858, &qword_238770810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v76 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E860, &qword_238770818);
  v83 = *(v90 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v76 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E868, &unk_238770820);
  v20 = *(v79 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v76 - v25;
  v27 = sub_238757B60();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E870, &qword_238770830);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v87 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v94 = &v76 - v36;
  sub_23875ED50();
  v80 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = type metadata accessor for AccountConsentManagementView();
  v38 = *(a1 + *(v37 + 20));
  if (!v38)
  {
    goto LABEL_10;
  }

  v39 = v37;
  v40 = v38;
  sub_238575060(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

    sub_238439884(v26, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_10:
    v46 = (*(v20 + 56))(v94, 1, 1, v79);
    goto LABEL_11;
  }

  (*(v28 + 32))(v31, v26, v27);
  if ((sub_238758550() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((sub_238758560() & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = (a1 + *(v39 + 36));
  v42 = *v41;
  v43 = v41[1];
  LOBYTE(v41) = *(v41 + 16);
  v97[0] = v42;
  v97[1] = v43;
  v98 = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  v45 = MEMORY[0x23EE62DC0](&v96, v44);
  if (v96)
  {
LABEL_9:

    (*(v28 + 8))(v31, v27);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v45);
  *(&v76 - 4) = v40;
  *(&v76 - 3) = v31;
  *(&v76 - 2) = a1;
  type metadata accessor for AccountMismatchedTileView();
  sub_23857CBB0(&qword_27DF0E8B0, type metadata accessor for AccountMismatchedTileView);
  v73 = v77;
  sub_23875E3D0();

  v74 = v94;
  v75 = v79;
  (*(v20 + 32))(v94, v73, v79);
  (*(v20 + 56))(v74, 0, 1, v75);
  v46 = (*(v28 + 8))(v31, v27);
LABEL_11:
  MEMORY[0x28223BE20](v46);
  *(&v76 - 2) = a1;
  sub_2385792B8(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E878, &qword_238770838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E880, &qword_238770840);
  sub_23843A3E8(&qword_27DF0E888, &qword_27DF0E878, &qword_238770838);
  sub_23857C2C8();
  sub_23875E3E0();
  v47 = sub_2385753EC();
  if (v47)
  {
    MEMORY[0x28223BE20](v47);
    *(&v76 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8A0, &qword_238770850);
    sub_23843A3E8(&qword_27DF0E8A8, &qword_27DF0E8A0, &qword_238770850);
    v48 = v78;
    sub_23875E3D0();
    v49 = v81;
    v50 = v88;
    v51 = v48;
    v52 = v82;
    (*(v81 + 32))(v88, v51, v82);
    v53 = 0;
  }

  else
  {
    v53 = 1;
    v50 = v88;
    v49 = v81;
    v52 = v82;
  }

  (*(v49 + 56))(v50, v53, 1, v52);
  v54 = v92;
  sub_238579948(v92);
  v55 = v87;
  sub_23843981C(v94, v87, &qword_27DF0E870, &qword_238770830);
  v56 = v83;
  v82 = *(v83 + 16);
  v57 = v89;
  v82(v89, v95, v90);
  v58 = v91;
  sub_23843981C(v50, v91, &qword_27DF0E858, &qword_238770810);
  v59 = v85;
  v60 = *(v85 + 16);
  v61 = v54;
  v62 = v86;
  v60(v93, v61, v86);
  v63 = v55;
  v64 = v84;
  sub_23843981C(v63, v84, &qword_27DF0E870, &qword_238770830);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E898, &qword_238770848);
  v66 = v57;
  v67 = v90;
  v82(v64 + v65[12], v66, v90);
  sub_23843981C(v58, v64 + v65[16], &qword_27DF0E858, &qword_238770810);
  v68 = v64 + v65[20];
  v69 = v93;
  v60(v68, v93, v62);
  v70 = *(v59 + 8);
  v70(v92, v62);
  sub_238439884(v88, &qword_27DF0E858, &qword_238770810);
  v71 = *(v56 + 8);
  v71(v95, v67);
  sub_238439884(v94, &qword_27DF0E870, &qword_238770830);
  v70(v69, v62);
  sub_238439884(v91, &qword_27DF0E858, &qword_238770810);
  v71(v89, v67);
  sub_238439884(v87, &qword_27DF0E870, &qword_238770830);
}

uint64_t sub_238576254@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for AccountMismatchedTileView();
  v9 = v8[5];
  v10 = sub_238757B60();
  (*(*(v10 - 8) + 16))(&a4[v9], a2, v10);
  v11 = v8[6];
  v12 = sub_238758680();
  (*(*(v12 - 8) + 16))(&a4[v11], a3, v12);
  v13 = (a3 + *(type metadata accessor for AccountConsentManagementView() + 36));
  v21 = *v13;
  v22 = v13[1];
  v23 = *(v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E310();
  v14 = &a4[v8[7]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5F8, &qword_23876ACD0);
  sub_23875E1A0();
  *v14 = v21;
  *(v14 + 1) = v22;
  v15 = a1;

  *a4 = v15;
  v17 = &a4[v8[8]];
  *v17 = v18;
  *(v17 + 1) = v19;
  v17[16] = v20;
  return result;
}

uint64_t sub_238576438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = v116 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D0, &qword_23876F590);
  v6 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v120 = v116 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E908, &qword_2387708B0);
  v8 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v140 = v116 - v9;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E910, &qword_2387708B8);
  v141 = *(v147 - 8);
  v10 = *(v141 + 64);
  MEMORY[0x28223BE20](v147);
  v123 = v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E918, &unk_2387708C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v142 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v148 = v116 - v16;
  v17 = type metadata accessor for AccountConsentManagementView();
  v126 = *(v17 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v17);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E920, &qword_23877E0E0);
  v139 = *(v128 - 8);
  v19 = *(v139 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = v116 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E928, &qword_2387708D0);
  v129 = *(v131 - 8);
  v21 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v149 = v116 - v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E930, &qword_2387708D8);
  v132 = *(v133 - 8);
  v23 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v130 = v116 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E938, &unk_2387708E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v150 = v116 - v29;
  sub_23875ED50();
  v137 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v145 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v30 = qword_2814F1B90;
  v146 = qword_2814F1B90;
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_23875EA80();
  v37 = v36;

  v161 = v35;
  v162 = v37;
  v38 = a1 + *(v17 + 24);
  v40 = *(v38 + 8);
  v159 = *v38;
  v39 = v159;
  v160 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v144 = v17;
  v42 = a1;
  v43 = v41;
  sub_23875E1D0();
  v125 = sub_2384397A8();
  v44 = v127;
  sub_23875E2A0();
  v135 = v39;
  LOBYTE(v151) = v39;
  v136 = v40;
  v152 = v40;
  sub_23875E1B0();
  LOBYTE(v151) = v161;
  v45 = v145;
  sub_23857C5C8(v42, v145);
  v46 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v116[1] = *(v126 + 80);
  v116[0] = v46 + v18;
  v47 = swift_allocObject();
  v117 = v46;
  sub_23857C62C(v45, v47 + v46);
  v126 = sub_23843A3E8(&qword_27DF0E940, &qword_27DF0E920, &qword_23877E0E0);
  v48 = v128;
  sub_23875DF10();

  (*(v139 + 8))(v44, v48);
  v49 = sub_23875EA50();
  v50 = sub_23875EA50();
  v118 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v51 = sub_23875EA50();
  v52 = [v146 localizedStringForKey:v49 value:v50 table:v51];

  v53 = sub_23875EA80();
  v55 = v54;
  v127 = v54;

  v161 = v53;
  v162 = v55;
  v56 = v42 + *(v144 + 28);
  v57 = *v56;
  v58 = *(v56 + 8);
  v159 = v57;
  v160 = v58;
  v134 = v43;
  v59 = sub_23875E1D0();
  v124 = v116;
  MEMORY[0x28223BE20](v59);
  v139 = v42;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
  v151 = v48;
  v152 = MEMORY[0x277D839B0];
  v153 = v126;
  v154 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = sub_23843A3E8(&qword_27DF0C728, &qword_27DF0C718, &qword_2387708F0);
  v62 = v125;
  v63 = v131;
  v64 = v130;
  v65 = v149;
  sub_23875DEC0();

  (*(v129 + 8))(v65, v63);
  v151 = v63;
  v152 = MEMORY[0x277D837D0];
  v153 = v60;
  v154 = MEMORY[0x277CE0BD8];
  v155 = OpaqueTypeConformance2;
  v66 = v139;
  v156 = v62;
  v157 = v115;
  v158 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v67 = v133;
  sub_23875DE00();
  (*(v132 + 8))(v64, v67);
  v68 = sub_2385753EC();
  v69 = 1;
  if (v68)
  {
    v70 = sub_23875EA50();
    v71 = sub_23875EA50();
    v72 = sub_23875EA50();
    v73 = v146;
    v74 = [v146 localizedStringForKey:v70 value:v71 table:v72];

    v75 = sub_23875EA80();
    v77 = v76;

    v151 = v75;
    v152 = v77;
    v78 = v119;
    sub_23875C390();
    v79 = sub_23875C3C0();
    (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
    v80 = v145;
    sub_23857C5C8(v66, v145);
    v81 = swift_allocObject();
    sub_23857C62C(v80, v81 + v117);
    v82 = v66;
    v83 = v120;
    sub_23875E220();
    LOBYTE(v151) = v135;
    v152 = v136;
    sub_23875E1B0();
    LOBYTE(v80) = v161;
    KeyPath = swift_getKeyPath();
    v85 = swift_allocObject();
    *(v85 + 16) = v80;
    v86 = (v83 + *(v121 + 36));
    *v86 = KeyPath;
    v86[1] = sub_238477BAC;
    v86[2] = v85;
    sub_238561FA0();
    sub_23875DE00();
    sub_238439884(v83, &qword_27DF0E2D0, &qword_23876F590);
    v87 = sub_23875EA50();
    v88 = sub_23875EA50();
    v89 = sub_23875EA50();
    v90 = [v73 localizedStringForKey:v87 value:v88 table:v89];

    v91 = sub_23875EA80();
    v93 = v92;

    v151 = v91;
    v152 = v93;
    v94 = sub_23875DAA0();
    v96 = v95;
    LOBYTE(v90) = v97;
    v98 = v82 + *(v144 + 32);
    v99 = *v98;
    v100 = *(v98 + 8);
    LOBYTE(v161) = v99;
    v162 = v100;
    v101 = sub_23875E1D0();
    v149 = v116;
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
    sub_23857C994();
    sub_23857CA50();
    v102 = v123;
    v103 = v140;
    sub_23875DCE0();

    sub_2384397FC(v94, v96, v90 & 1);

    sub_238439884(v103, &qword_27DF0E908, &qword_2387708B0);
    LOBYTE(v151) = v135;
    v152 = v136;
    sub_23875E1B0();
    LOBYTE(v103) = v161;
    v104 = swift_getKeyPath();
    v105 = swift_allocObject();
    *(v105 + 16) = v103;
    v106 = v148;
    v107 = (v102 + *(v147 + 36));
    *v107 = v104;
    v107[1] = sub_238562718;
    v107[2] = v105;
    sub_23840F90C(v102, v106);
    v69 = 0;
  }

  v108 = v148;
  (*(v141 + 56))(v148, v69, 1, v147);
  v109 = v150;
  v110 = v138;
  sub_23843981C(v150, v138, &qword_27DF0E938, &unk_2387708E0);
  v111 = v142;
  sub_23843981C(v108, v142, &qword_27DF0E918, &unk_2387708C0);
  v112 = v143;
  sub_23843981C(v110, v143, &qword_27DF0E938, &unk_2387708E0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E948, &qword_2387708F8);
  sub_23843981C(v111, v112 + *(v113 + 48), &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v108, &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v109, &qword_27DF0E938, &unk_2387708E0);
  sub_238439884(v111, &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v110, &qword_27DF0E938, &unk_2387708E0);
}

uint64_t sub_23857755C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
    sub_2385776B4(1);
  }

  else
  {
    v6 = (a3 + *(type metadata accessor for AccountConsentManagementView() + 28));
    v7 = *v6;
    v8 = *(v6 + 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    sub_23875E1C0();
  }
}

void sub_2385776B4(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_23875A9F0();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AccountConsentManagementView();
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = sub_23875C1E0();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v13);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v39 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  sub_238574E58(&v39 - v19);
  sub_23857C5C8(v1, v12);
  v21 = sub_23875C1B0();
  v22 = sub_23875EFC0();
  v23 = os_log_type_enabled(v21, v22);
  v49 = v3;
  v41 = v7;
  v42 = v4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v44 = v13;
    v25 = v24;
    v3 = swift_slowAlloc();
    v51[0] = v3;
    *v25 = 136315394;
    sub_238758530();
    sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058]);
    v26 = sub_23875F600();
    v27 = v4;
    v29 = v28;
    (*(v45 + 8))(v7, v27);
    sub_23845D5D8(v12);
    v30 = sub_2384615AC(v26, v29, v51);

    *(v25 + 4) = v30;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v49 & 1;
    _os_log_impl(&dword_2383F8000, v21, v22, "Toggling isEnabled for %s to state %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v31 = v3;
    LOBYTE(v3) = v49;
    MEMORY[0x23EE64DF0](v31, -1, -1);
    v32 = v25;
    v13 = v44;
    MEMORY[0x23EE64DF0](v32, -1, -1);
  }

  else
  {

    sub_23845D5D8(v12);
  }

  v33 = *(v47 + 8);
  v33(v20, v13);
  sub_238574CE0(v51);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  sub_238758A20();
  v34 = sub_238758010();

  __swift_destroy_boxed_opaque_existential_1(v51);
  v35 = v48;
  v36 = sub_238574E58(v48);
  MEMORY[0x28223BE20](v36);
  *(&v39 - 4) = v2;
  *(&v39 - 3) = v34;
  *(&v39 - 2) = v35;
  *(&v39 - 8) = v3 & 1;
  sub_23875F110();
  v33(v35, v13);
  if ((v51[0] & 1) == 0)
  {
    v37 = v2 + *(v40 + 24);
    v38 = *(v37 + 8);
    LOBYTE(v51[0]) = *v37;
    v51[1] = v38;
    v50 = (v3 & 1) == 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
  }
}

uint64_t sub_238577E00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for AccountConsentManagementView();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = v5;
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v52 - v15;
  MEMORY[0x28223BE20](v16);
  v56 = &v52 - v17;
  MEMORY[0x28223BE20](v18);
  v62 = &v52 - v19;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  v25 = sub_23875EA80();
  v27 = v26;

  v64 = v25;
  v65 = v27;
  sub_23875C390();
  v28 = sub_23875C3C0();
  v29 = *(v28 - 8);
  v53 = *(v29 + 56);
  v54 = v29 + 56;
  v53(v10, 0, 1, v28);
  sub_23857C5C8(a1, v6);
  v30 = v6;
  v31 = *(v55 + 80);
  v55 = a1;
  v32 = (v31 + 16) & ~v31;
  v33 = swift_allocObject();
  sub_23857C62C(v30, v33 + v32);
  v52 = sub_2384397A8();
  sub_23875E220();
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v20 localizedStringForKey:v34 value:v35 table:v36];

  v38 = sub_23875EA80();
  v40 = v39;

  v64 = v38;
  v65 = v40;
  sub_23875C3B0();
  v53(v10, 0, 1, v28);
  sub_23857C5C8(v55, v30);
  v41 = swift_allocObject();
  sub_23857C62C(v30, v41 + v32);
  v42 = v56;
  sub_23875E220();
  v43 = v60;
  v44 = *(v60 + 16);
  v45 = v58;
  v46 = v62;
  v44(v58, v62, v11);
  v47 = v59;
  v44(v59, v42, v11);
  v48 = v61;
  v44(v61, v45, v11);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C740, &unk_238770930);
  v44(&v48[*(v49 + 48)], v47, v11);
  v50 = *(v43 + 8);
  v50(v42, v11);
  v50(v46, v11);
  v50(v47, v11);
  v50(v45, v11);
}

uint64_t sub_238578424()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385776B4(0);
}

uint64_t sub_2385784C8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for AccountConsentManagementView();
  v3 = (a1 + *(v2 + 24));
  v6 = *v3;
  v8 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v4 = (a1 + *(v2 + 28));
  v7 = *v4;
  v9 = *(v4 + 1);
  sub_23875E1C0();
}

uint64_t sub_2385785E4@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23857878C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AccountConsentManagementView() + 32));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

uint64_t sub_23857886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for AccountConsentManagementView();
  v25[0] = *(v2 - 8);
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  sub_23875ED50();
  v25[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v20 = v19;

  v28 = v18;
  v29 = v20;
  sub_23875C390();
  v21 = sub_23875C3C0();
  (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
  sub_23857C5C8(v26, v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v25[0] + 80) + 16) & ~*(v25[0] + 80);
  v23 = swift_allocObject();
  sub_23857C62C(v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_2384397A8();
  sub_23875E220();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  sub_23875DE00();
  (*(v9 + 8))(v12, v8);
}

void sub_238578C64()
{
  v1 = sub_23875A9F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountConsentManagementView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = sub_23875C1E0();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v35 - v16;
  sub_238574E58(v35 - v16);
  v38 = v0;
  sub_23857C5C8(v0, v11);
  v18 = sub_23875C1B0();
  v19 = sub_23875EFC0();
  v20 = os_log_type_enabled(v18, v19);
  v35[3] = v2;
  v35[4] = v1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v12;
    v23 = v37;
    v35[2] = v8;
    v24 = v22;
    v41[0] = v22;
    *v21 = 136315138;
    sub_238758530();
    sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058]);
    v25 = sub_23875F600();
    v26 = v1;
    v28 = v27;
    (*(v2 + 8))(v23, v26);
    sub_23845D5D8(v11);
    v29 = sub_2384615AC(v25, v28, v41);
    v30 = v40;

    *(v21 + 4) = v29;
    _os_log_impl(&dword_2383F8000, v18, v19, "Deleting removable data for %s.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v12 = v36;
    MEMORY[0x23EE64DF0](v24, -1, -1);
    MEMORY[0x23EE64DF0](v21, -1, -1);

    v31 = v30;
  }

  else
  {

    sub_23845D5D8(v11);
    v31 = v40;
  }

  (*(v31 + 8))(v17, v12);
  v32 = v38;
  sub_238574CE0(v41);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_238758A20();
  v33 = sub_238758010();

  v34 = __swift_destroy_boxed_opaque_existential_1(v41);
  MEMORY[0x28223BE20](v34);
  v35[-2] = v32;
  v35[-1] = v33;
  sub_23875F110();
}

uint64_t sub_2385792B8@<X0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_opt_self();
  v3 = sub_23875EA50();
  v4 = [v2 modelSpecificLocalizedStringKeyForKey_];

  if (v4)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v5 = qword_2814F1B90;
    v6 = sub_23875EA50();
    v7 = sub_23875EA50();
    v8 = [v5 localizedStringForKey:v4 value:v6 table:v7];

    sub_23875EA80();
    sub_2384397A8();
    v4 = sub_23875DAA0();
    v10 = v9;
    LOBYTE(v7) = v11;
    v13 = v12;

    v15 = v7 & 1;
  }

  else
  {

    v10 = 0;
    v15 = 0;
    v13 = 0;
  }

  *a1 = v4;
  a1[1] = v10;
  a1[2] = v15;
  a1[3] = v13;
  return result;
}

uint64_t sub_2385794AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_238758680();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8C8, &qword_238770860);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-1] - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v7, a1, v3);
  sub_2386827A8(v7, v11);
  KeyPath = swift_getKeyPath();
  sub_238574CE0(v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v13 = sub_238758A10();
  v14 = &v11[*(v8 + 36)];
  *v14 = KeyPath;
  v14[1] = v13;
  __swift_destroy_boxed_opaque_existential_1(v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23857C414();
  sub_23875C750();
}

uint64_t sub_238579750()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8 & 1;
  sub_23875DE00();
  sub_2384397FC(v5, v7, v9);
}

uint64_t sub_238579948@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8E8, &qword_238770898);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v19 = v12;
  v20 = v14;
  MEMORY[0x28223BE20](v15);
  v18[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8F0, &unk_2387708A0);
  sub_23843A3E8(&qword_27DF0E8F8, &qword_27DF0E8F0, &unk_2387708A0);
  sub_2384397A8();
  sub_23875E3A0();
  v19 = sub_2387585B0();
  v20 = v16;
  sub_23857C504();
  sub_23875DC70();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238579BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v155 = a2;
  v3 = sub_238758AE0();
  v173 = *(v3 - 8);
  v174 = v3;
  v4 = *(v173 + 64);
  MEMORY[0x28223BE20](v3);
  v172 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v185 = &v147 - v8;
  v9 = sub_23875BC40();
  v161 = *(v9 - 8);
  v10 = *(v161 + 64);
  MEMORY[0x28223BE20](v9);
  v159 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_23875BD20();
  v153 = *(v154 - 8);
  v12 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v169 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v171 = &v147 - v18;
  MEMORY[0x28223BE20](v19);
  v192 = &v147 - v20;
  v21 = sub_238758090();
  v182 = *(v21 - 8);
  v22 = *(v182 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v147 - v26;
  MEMORY[0x28223BE20](v28);
  v184 = &v147 - v29;
  v191 = sub_238757FC0();
  v30 = *(v191 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v191);
  v33 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v170 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v162 = v9;
  v148 = v27;
  v193 = a1;
  v151 = v24;
  v183 = v21;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v34 = qword_2814F1B90;
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

  v168 = sub_23875EA80();
  v181 = v39;

  v167 = sub_23857ADE0();
  v180 = v40;
  v41 = sub_23875EA50();
  v42 = sub_23875EA50();
  v43 = sub_23875EA50();
  v44 = [v34 localizedStringForKey:v41 value:v42 table:v43];

  v166 = sub_23875EA80();
  v179 = v45;

  sub_2387585C0();
  v165 = sub_238757FB0();
  v188 = v46;
  (*(v30 + 8))(v33, v191);
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = sub_23875EA50();
  v50 = [v34 localizedStringForKey:v47 value:v48 table:v49];

  v164 = sub_23875EA80();
  v178 = v51;

  v163 = sub_2387585B0();
  v187 = v52;
  v53 = sub_23875EA50();
  v54 = sub_23875EA50();
  v55 = sub_23875EA50();
  v56 = [v34 localizedStringForKey:v53 value:v54 table:v55];

  v160 = sub_23875EA80();
  v177 = v57;

  v158 = sub_238758660();
  v186 = v58;
  v59 = v192;
  sub_2387585A0();
  v61 = v182;
  v60 = v183;
  v63 = v182 + 48;
  v62 = *(v182 + 48);
  v64 = v62(v59, 1, v183);
  v150 = v34;
  v149 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v157 = v62;
  v156 = v63;
  if (v64 == 1)
  {
    sub_238439884(v59, &unk_27DF0B080, &unk_2387662A0);
    v191 = 0;
    v192 = 0;
    v189 = 0;
    v190 = 0;
  }

  else
  {
    v65 = v184;
    (*(v61 + 32))(v184, v59, v60);
    v66 = sub_23875EA50();
    v67 = sub_23875EA50();
    v68 = sub_23875EA50();
    v69 = [v34 localizedStringForKey:v66 value:v67 table:v68];

    v70 = sub_23875EA80();
    v191 = v71;
    v192 = v70;

    v60 = v183;
    v72 = v152;
    sub_23875BCC0();
    v73 = sub_238758080();
    v189 = v74;
    v190 = v73;
    (*(v153 + 8))(v72, v154);
    (*(v61 + 8))(v65, v60);
  }

  v75 = v171;
  v76 = v185;
  sub_238758600();
  v77 = v161;
  v78 = v162;
  v79 = (*(v161 + 48))(v76, 1, v162);
  v80 = MEMORY[0x277CC7228];
  v81 = v173;
  v82 = v159;
  if (v79 == 1)
  {
    sub_238439884(v76, &qword_27DF12E00, &unk_238763FC0);
    v184 = 0;
    v185 = 0;
    v175 = 0;
    v176 = 0;
  }

  else
  {
    (*(v77 + 32))(v159, v76, v78);
    v83 = v172;
    v84 = v174;
    (*(v81 + 104))(v172, *v80, v174);
    v85 = v77;
    v86 = sub_238759830();
    (*(v81 + 8))(v83, v84);
    if (v86)
    {
      v87 = sub_23875EA50();
      v88 = sub_23875EA50();
      v89 = sub_23875EA50();
      v90 = [v150 localizedStringForKey:v87 value:v88 table:v89];

      v81 = v173;
      v91 = sub_23875EA80();
      v184 = v92;
      v185 = v91;

      v60 = v183;
      v93 = sub_23875BC10();
      v175 = v94;
      v176 = v93;
      (*(v85 + 8))(v82, v78);
    }

    else
    {
      (*(v85 + 8))(v82, v78);
      v184 = 0;
      v185 = 0;
      v175 = 0;
      v176 = 0;
    }

    v75 = v171;
    v61 = v182;
  }

  sub_238758620();
  v95 = v157;
  if (v157(v75, 1, v60) == 1)
  {
    sub_238439884(v75, &unk_27DF0B080, &unk_2387662A0);
  }

  else
  {
    v96 = v148;
    (*(v61 + 32))(v148, v75, v60);
    v97 = v172;
    v98 = v174;
    (*(v81 + 104))(v172, *MEMORY[0x277CC7228], v174);
    v99 = sub_238759830();
    (*(v81 + 8))(v97, v98);
    if (v99)
    {
      v100 = sub_23875EA50();
      v101 = sub_23875EA50();
      v102 = sub_23875EA50();
      v103 = [v150 localizedStringForKey:v100 value:v101 table:v102];

      v171 = sub_23875EA80();
      v162 = v104;

      v61 = v182;
      v105 = v152;
      sub_23875BCC0();
      v161 = sub_238758080();
      v159 = v106;
      v107 = v105;
      v81 = v173;
      (*(v153 + 8))(v107, v154);
      (*(v61 + 8))(v96, v60);
      goto LABEL_20;
    }

    (*(v61 + 8))(v96, v60);
  }

  v171 = 0;
  v162 = 0;
  v161 = 0;
  v159 = 0;
LABEL_20:
  v108 = MEMORY[0x277CC7228];
  v109 = v169;
  sub_238758630();
  if (v95(v109, 1, v60) == 1)
  {
    sub_238439884(v109, &unk_27DF0B080, &unk_2387662A0);
LABEL_27:
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    goto LABEL_28;
  }

  v110 = v151;
  (*(v61 + 32))(v151, v109, v60);
  v111 = v172;
  v112 = v60;
  v113 = *(v81 + 104);
  v114 = v174;
  v113(v172, *v108, v174);
  v115 = sub_238759830();
  v116 = *(v81 + 8);
  v116(v111, v114);
  if ((v115 & 1) == 0)
  {
    (*(v61 + 8))(v110, v112);
    goto LABEL_27;
  }

  v113(v111, *MEMORY[0x277CC7230], v114);
  v117 = sub_238759830();
  v116(v111, v114);
  if ((v117 & 1) == 0)
  {
    (*(v182 + 8))(v151, v183);
    goto LABEL_27;
  }

  v118 = sub_23875EA50();
  v119 = sub_23875EA50();
  v120 = sub_23875EA50();
  v121 = [v150 localizedStringForKey:v118 value:v119 table:v120];

  v122 = sub_23875EA80();
  v124 = v123;

  v125 = v152;
  sub_23875BCC0();
  v126 = v151;
  v127 = sub_238758080();
  v129 = v128;
  (*(v153 + 8))(v125, v154);
  (*(v182 + 8))(v126, v183);
  v130 = v129;
  v131 = v127;
  v132 = v124;
  v133 = v122;
LABEL_28:
  v174 = v132;
  v182 = v133;
  v183 = v131;
  v193 = v130;
  v134 = v155;
  v155[2] = v167;
  v134[4] = v166;
  v134[6] = v165;
  v134[8] = v164;
  v134[10] = v163;
  v134[12] = v160;
  v134[14] = v158;
  *v134 = v168;
  v135 = v180;
  v134[1] = v181;
  v134[3] = v135;
  v136 = v178;
  v134[5] = v179;
  v134[7] = v188;
  v134[9] = v136;
  v134[11] = v187;
  v134[13] = v177;
  v137 = v185;
  v134[15] = v186;
  v134[16] = v192;
  v138 = v134;
  v134[17] = v191;
  v134[18] = v190;
  v134[19] = v189;
  v134[20] = v137;
  v139 = v184;
  v185 = v137;
  v140 = v176;
  v138[21] = v184;
  v138[22] = v140;
  v138[23] = v175;
  v141 = v171;
  v142 = v162;
  v138[24] = v171;
  v138[25] = v142;
  v143 = v159;
  v138[26] = v161;
  v138[27] = v143;
  v138[28] = v133;
  v138[29] = v132;
  v138[30] = v131;
  v138[31] = v130;

  sub_2385570E8(v192, v191);
  sub_2385570E8(v137, v139);
  sub_2385570E8(v141, v142);
  v144 = v182;
  v145 = v174;
  sub_2385570E8(v182, v174);
  sub_23855712C(v144, v145);
  sub_23855712C(v141, v142);
  sub_23855712C(v185, v184);
  sub_23855712C(v192, v191);
}

uint64_t sub_23857ADE0()
{
  v0 = sub_238757AD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238758590();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277CC6B50])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v6 = qword_2814F1B90;
LABEL_9:
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = sub_23875EA50();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    v11 = sub_23875EA80();
    return v11;
  }

  if (v5 == *MEMORY[0x277CC6B58])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v6 = qword_2814F1B90;
    goto LABEL_9;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_23857B04C(uint64_t a1@<X0>, void *a2@<X1>, NSObject *a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v46 = a5;
  v44 = a4;
  v45 = a3;
  v48[1] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for AccountConsentManagementView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875A9F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  sub_238759780();
  sub_238758530();
  v19 = v47;
  v20 = sub_2387596E0();
  if (v19)
  {
    (*(v12 + 8))(v18, v11);
  }

  else
  {
    v21 = v20;
    v47 = 0;
    v43 = v15;
    v22 = *(v12 + 8);
    v22(v18, v11);
    if (v21)
    {
      [v21 setIsAccountEnabled_];
      v48[0] = 0;
      v23 = [a2 save_];
      v24 = v46;
      if (v23)
      {
        v25 = v48[0];

        *v24 = 1;
      }

      else
      {
        v40 = v48[0];
        sub_23875B730();

        swift_willThrow();
      }
    }

    else
    {
      v26 = v11;
      v27 = v10;
      sub_23857C5C8(a1, v10);
      v28 = sub_23875C1B0();
      v29 = sub_23875EFE0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v45 = v28;
        v31 = v30;
        v32 = swift_slowAlloc();
        v48[0] = v32;
        *v31 = 136315394;
        v33 = v43;
        sub_238758530();
        sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058]);
        v34 = sub_23875F600();
        v35 = v26;
        v37 = v36;
        v22(v33, v35);
        sub_23845D5D8(v27);
        v38 = sub_2384615AC(v34, v37, v48);

        *(v31 + 4) = v38;
        *(v31 + 12) = 1024;
        *(v31 + 14) = (v44 & 1) == 0;
        v39 = v45;
        _os_log_impl(&dword_2383F8000, v45, v29, "Unable to find account for %s, reverting toggled value to %{BOOL}d.", v31, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x23EE64DF0](v32, -1, -1);
        MEMORY[0x23EE64DF0](v31, -1, -1);
      }

      else
      {

        sub_23845D5D8(v10);
      }

      *v46 = 0;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

id sub_23857B438(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238759B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B80();
  sub_238758530();
  sub_238759B70();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
    result = (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v17[0] = 0;
    if ([a2 save_])
    {
      result = v17[0];
    }

    else
    {
      v15 = v17[0];
      sub_23875B730();

      result = swift_willThrow();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23857B680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F0, &qword_2387706C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-v4];
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F8, &qword_2387706D0);
  sub_23843A3E8(&qword_27DF0E800, &qword_27DF0E7F8, &qword_2387706D0);
  sub_23875D9C0();
  v10 = sub_2387585B0();
  v11 = v6;
  sub_23843A3E8(&qword_27DF0E808, &qword_27DF0E7F0, &qword_2387706C8);
  sub_2384397A8();
  sub_23875DC70();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_23857B844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v60 = a5;
  v7 = sub_23875B4E0();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v46 - v14;
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = a1;
  v65 = a2;
  sub_2384397A8();

  v15 = sub_23875DAA0();
  v17 = v16;
  v48 = a2;
  v19 = v18;
  v47 = a1;
  sub_23875D7F0();
  v20 = sub_23875DA60();
  v22 = v21;
  v24 = v23;

  sub_2384397FC(v15, v17, v19 & 1);

  LODWORD(v64) = sub_23875D440();
  v25 = sub_23875DA20();
  v49 = v26;
  v50 = v27;
  v51 = v28;
  sub_2384397FC(v20, v22, v24 & 1);

  v64 = v52;
  v65 = v53;

  v29 = sub_23875DAA0();
  v31 = v30;
  v64 = v29;
  v65 = v30;
  LOBYTE(v20) = v32 & 1;
  v66 = v32 & 1;
  v67 = v33;
  strcpy(v63, "Settings.ACM.");
  v63[7] = -4864;
  v61 = v47;
  v62 = v48;
  v34 = v54;
  sub_23875B4C0();
  v35 = sub_23875F220();
  (*(v55 + 8))(v34, v56);
  v61 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0);
  v36 = sub_23875E980();
  v38 = v37;

  MEMORY[0x23EE63650](v36, v38);

  v39 = v57;
  sub_23875DE00();

  sub_2384397FC(v29, v31, v20);

  v40 = v59;
  sub_23843981C(v39, v59, &qword_27DF0E838, &unk_23877A3B0);
  v41 = v60;
  v42 = v49;
  *v60 = v25;
  v41[1] = v42;
  v43 = v50 & 1;
  *(v41 + 16) = v50 & 1;
  v41[3] = v51;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E840, &qword_2387707F8);
  sub_23843981C(v40, v41 + *(v44 + 48), &qword_27DF0E838, &unk_23877A3B0);
  sub_23843980C(v25, v42, v43);

  sub_238439884(v39, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v40, &qword_27DF0E838, &unk_23877A3B0);
  sub_2384397FC(v25, v42, v43);
}

uint64_t sub_23857BD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_23875D030();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E830, &qword_2387707F0);
  return sub_23857B844(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

void *sub_23857BDA4()
{
  sub_238759780();
  v0 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763E60;
  *(v1 + 32) = sub_2387596A0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E60;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v2 + 32) = sub_23875EF80();
  *(v2 + 40) = sub_23875EF80();
  v3 = sub_23875EC60();

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  *(v1 + 40) = v5;
  v6 = sub_23875EC60();

  v7 = [v4 andPredicateWithSubpredicates_];

  [v0 setPredicate_];
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v8 = sub_23875EC60();
  [v0 setSortDescriptors_];

  return v0;
}

void sub_23857BFF8()
{
  sub_238758680();
  if (v0 <= 0x3F)
  {
    sub_2385107E0();
    if (v1 <= 0x3F)
    {
      sub_23857C1DC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_23857C1DC(319, &qword_27DF0C678, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_238464EC8();
          if (v4 <= 0x3F)
          {
            sub_23857C230(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_23857C230(319, &qword_27DF0E828, MEMORY[0x277CC7478], MEMORY[0x277CDD7C8]);
              if (v6 <= 0x3F)
              {
                sub_23857C230(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
                if (v7 <= 0x3F)
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

void sub_23857C1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23857C230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23857C2C8()
{
  result = qword_27DF0E890;
  if (!qword_27DF0E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E880, &qword_238770840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E890);
  }

  return result;
}

unint64_t sub_23857C358()
{
  result = qword_27DF0E8D0;
  if (!qword_27DF0E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E838, &unk_23877A3B0);
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E8D0);
  }

  return result;
}

unint64_t sub_23857C414()
{
  result = qword_27DF0E8D8;
  if (!qword_27DF0E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E8C8, &qword_238770860);
    sub_23857CBB0(&qword_27DF0E8E0, type metadata accessor for AccountConsentManagementAllDataView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E8D8);
  }

  return result;
}

unint64_t sub_23857C504()
{
  result = qword_27DF0E900;
  if (!qword_27DF0E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E8E8, &qword_238770898);
    sub_23843A3E8(&qword_27DF0E8F8, &qword_27DF0E8F0, &unk_2387708A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E900);
  }

  return result;
}

uint64_t sub_23857C5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23857C62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23857C690(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for AccountConsentManagementView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23857755C(a1, a2, v6);
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for AccountConsentManagementView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_238758680();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v0 + v3 + v1[6] + 8);

  v8 = *(v0 + v3 + v1[7] + 8);

  v9 = *(v0 + v3 + v1[8] + 8);

  v10 = (v0 + v3 + v1[9]);
  v11 = *v10;

  v12 = v10[1];

  v13 = v0 + v3 + v1[10];
  if (*(v13 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v14 = *v13;
  }

  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C1E0();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = v1[12];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E810, &qword_238770738);
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  v20 = v1[13];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v21 - 8) + 8))(v5 + v20, v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23857C994()
{
  result = qword_27DF0E950;
  if (!qword_27DF0E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E908, &qword_2387708B0);
    sub_238561FA0();
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E950);
  }

  return result;
}

unint64_t sub_23857CA50()
{
  result = qword_27DF0E958;
  if (!qword_27DF0E958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A330, &qword_2387655F0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E958);
  }

  return result;
}

void sub_23857CB38()
{
  v1 = *(type metadata accessor for AccountConsentManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_238578C64();
}

uint64_t sub_23857CBB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23857CC28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountConsentManagementView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_23857CCE4()
{
  sub_23857CD58();
  if (v0 <= 0x3F)
  {
    sub_23857CDB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23857CD58()
{
  if (!qword_27DF0E988)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF0E988);
    }
  }
}

void sub_23857CDB8()
{
  if (!qword_27DF0E990)
  {
    sub_23875AD80();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DF0E990);
    }
  }
}

uint64_t sub_23857CE28()
{
  v1 = v0;
  v2 = sub_23875AD80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_2387591F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderDetailsNote(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23857F634(v1, v18, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23857F198(v18);
    (*(v11 + 104))(v14, *MEMORY[0x277CC77C8], v10);
    v25 = sub_238758A40();
    (*(v11 + 8))(v14, v10);
    return v25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23857F198(v18);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v20 = qword_2814F1B90;
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = sub_23875EA50();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    v25 = sub_23875EA80();
    return v25;
  }

  v26 = *(v18 + 1);

  v27 = *(v18 + 3);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
  (*(v3 + 32))(v9, &v18[*(v28 + 64)], v2);
  (*(v3 + 16))(v6, v9, v2);
  v29 = (*(v3 + 88))(v6, v2);
  if (v29 == *MEMORY[0x277CC8440])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v29 == *MEMORY[0x277CC8438])
  {
    if (qword_2814F0880 == -1)
    {
LABEL_12:
      v30 = qword_2814F1B90;
      v31 = sub_23875EA50();
      v32 = sub_23875EA50();
      v33 = sub_23875EA50();
      v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

      v25 = sub_23875EA80();
      (*(v3 + 8))(v9, v2);
      return v25;
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23857D404()
{
  v1 = type metadata accessor for OrderDetailsNote(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  sub_23875F770();
  sub_23857F634(v0, v7, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v9 = *(v7 + 1);
  v11 = *(v7 + 3);

  if (EnumCaseMultiPayload >= 2)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v13 = sub_23875AD80();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
  }

  sub_23875EB30();

  sub_23857F634(v0, v4, type metadata accessor for OrderDetailsNote);
  v14 = swift_getEnumCaseMultiPayload();
  v15 = *(v4 + 1);
  if (v14 > 1)
  {

    v18 = *(v4 + 2);
    v19 = *(v4 + 3);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v21 = sub_23875AD80();
    (*(*(v21 - 8) + 8))(&v4[v20], v21);
  }

  else
  {
    v16 = *(v4 + 2);
    v17 = *(v4 + 3);
  }

  sub_23875EB30();

  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = v24;
  v30 = v25;
  v23 = sub_23875F750();
  return sub_23875F600();
}

uint64_t sub_23857D664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23857D404();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23857D68C@<X0>(uint64_t a1@<X8>)
{
  sub_23857F634(v1, a1, type metadata accessor for OrderDetailsNote);
  v3 = *(type metadata accessor for OrderDetailsNotes_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23857D718@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9C8, &qword_238770AE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D0, &qword_238770AF0);
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v25 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D8, &qword_238770AF8);
  sub_23857F494(&qword_27DF0E9E0, &qword_27DF0E9D8, &qword_238770AF8, sub_23857F464);
  sub_23875C410();
  v26 = sub_23857CE28();
  v27 = v12;
  v13 = sub_23843A3E8(&qword_27DF0EA18, &qword_27DF0E9C8, &qword_238770AE8);
  v14 = sub_2384397A8();
  v15 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v3 + 8))(v6, v2);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  v26 = v2;
  v27 = v15;
  v28 = v13;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v17 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_23875DEF0();
  return (*(v22 + 8))(v11, v18);
}

uint64_t sub_23857DA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA10, &unk_238770B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA00, &qword_238770B08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9F0, &qword_238770B00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D8, &qword_238770AF8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_23875D030();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA40, &qword_238770B28);
  sub_23857DDD0(v28, &v5[*(v18 + 44)]);
  sub_23875E480();
  sub_23875C9C0();
  sub_2384396E4(v5, v9, &qword_27DF0EA10, &unk_238770B10);
  v19 = &v9[*(v6 + 36)];
  v20 = v35;
  *(v19 + 4) = v34;
  *(v19 + 5) = v20;
  *(v19 + 6) = v36;
  v21 = v31;
  *v19 = v30;
  *(v19 + 1) = v21;
  v22 = v33;
  *(v19 + 2) = v32;
  *(v19 + 3) = v22;
  v23 = sub_23875D770();
  sub_2384396E4(v9, v13, &qword_27DF0EA00, &qword_238770B08);
  v24 = &v13[*(v10 + 36)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_23875D790();
  sub_2384396E4(v13, v17, &qword_27DF0E9F0, &qword_238770B00);
  v26 = &v17[*(v14 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_2384396E4(v17, v29, &qword_27DF0E9D8, &qword_238770AF8);
}

uint64_t sub_23857DDD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v83 = sub_23875D510();
  v79 = *(v83 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v83);
  v77 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA48, &qword_238770B30);
  v81 = *(v84 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v84);
  v80 = &v70[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA50, &unk_238770B38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v82 = &v70[-v11];
  v12 = type metadata accessor for OrderDetailsNote(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v70[-v17];
  sub_23875ED50();
  v78 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2387632F0;
  v76 = a1;
  sub_23857F634(a1, v18, type metadata accessor for OrderDetailsNote);
  v75 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v18;
  v22 = *(v18 + 1);
  v23 = *(v18 + 3);

  if (EnumCaseMultiPayload >= 2)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v25 = sub_23875AD80();
    (*(*(v25 - 8) + 8))(&v18[v24], v25);
  }

  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_238448C58();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v26 = qword_2814F1B90;
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  sub_23875EA80();
  v31 = sub_23875EAA0();
  v33 = v32;

  v87 = v31;
  v88 = v33;
  sub_2384397A8();
  v34 = sub_23875DAA0();
  v36 = v35;
  v38 = v37;
  sub_23875D980();
  v39 = sub_23875DA60();
  v41 = v40;
  v71 = v42;
  v44 = v43;

  sub_2384397FC(v34, v36, v38 & 1);

  sub_23857F634(v76, v15, type metadata accessor for OrderDetailsNote);
  v45 = swift_getEnumCaseMultiPayload();
  v46 = *(v15 + 1);
  v73 = v39;
  v74 = v44;
  v72 = v41;
  if (v45 > 1)
  {

    v47 = *(v15 + 2);
    v48 = *(v15 + 3);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v50 = sub_23875AD80();
    (*(*(v50 - 8) + 8))(&v15[v49], v50);
  }

  else
  {
    v47 = *(v15 + 2);
    v48 = *(v15 + 3);
  }

  v87 = v47;
  v88 = v48;
  v51 = sub_23875DAA0();
  v53 = v52;
  v87 = v51;
  v88 = v52;
  v55 = v54 & 1;
  LOBYTE(v89) = v54 & 1;
  v90 = v56;
  v57 = v77;
  sub_23875D500();
  v58 = MEMORY[0x277CE0BD8];
  v59 = MEMORY[0x277CE0BC8];
  v60 = v80;
  v61 = v83;
  sub_23875DC10();
  (*(v79 + 8))(v57, v61);
  sub_2384397FC(v51, v53, v55);

  v87 = v58;
  v88 = v61;
  v89 = v59;
  v90 = MEMORY[0x277CE06D0];
  swift_getOpaqueTypeConformance2();
  v62 = v82;
  v63 = v84;
  sub_23875DE00();
  (*(v81 + 8))(v60, v63);
  v64 = v85;
  sub_23840FE78(v62, v85);
  v65 = v86;
  v67 = v72;
  v66 = v73;
  *v86 = v73;
  v65[1] = v67;
  LOBYTE(v63) = v71 & 1;
  *(v65 + 16) = v71 & 1;
  v65[3] = v74;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA58, &qword_238770B48);
  sub_23840FE78(v64, v65 + *(v68 + 48));
  sub_23843980C(v66, v67, v63);

  sub_23840FEE8(v62);
  sub_23840FEE8(v64);
  sub_2384397FC(v66, v67, v63);
}

uint64_t sub_23857E538(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D250();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  sub_23857F5E0();
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_23857E768@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsNotes_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23857F634(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsNotes_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23857F69C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_23857F700;
  a2[1] = v8;
  return result;
}

uint64_t sub_23857E8DC(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_23875C600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderDetailsNotes_iOS(0);
  sub_23857F760(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_23875EFF0();
    v18 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_23875C5F0();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23857EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875AD80();
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v69 - v8;
  v9 = type metadata accessor for OrderDetailsNote(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v69 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E998, &unk_2387709D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - v21;
  v24 = (&v69 + *(v23 + 56) - v21);
  sub_23857F634(a1, &v69 - v21, type metadata accessor for OrderDetailsNote);
  sub_23857F634(a2, v24, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23857F634(v22, v15, type metadata accessor for OrderDetailsNote);
      v27 = *v15;
      v26 = v15[1];
      v29 = v15[2];
      v28 = v15[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v24[2];
        v30 = v24[3];
        if (v27 == *v24 && v26 == v24[1])
        {
          v58 = v24[1];

          goto LABEL_27;
        }

        v33 = v24[1];
        v34 = sub_23875F630();

        if (v34)
        {
LABEL_27:
          if (v29 != v31 || v28 != v30)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        goto LABEL_16;
      }

      goto LABEL_25;
    }

    sub_23857F634(v22, v12, type metadata accessor for OrderDetailsNote);
    v44 = *(v12 + 1);
    v73 = *v12;
    v46 = *(v12 + 2);
    v45 = *(v12 + 3);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v76 + 8))(&v12[v47], v4);
      goto LABEL_25;
    }

    v48 = *v24;
    v49 = v24[1];
    v70 = v46;
    v71 = v48;
    v50 = v24[3];
    v69 = v24[2];
    v72 = v50;
    v51 = *(v76 + 32);
    v52 = &v12[v47];
    v53 = v75;
    v51(v75, v52, v4);
    v54 = v24 + v47;
    v55 = v74;
    v51(v74, v54, v4);
    if (v73 == v71 && v44 == v49)
    {
    }

    else
    {
      v57 = sub_23875F630();

      if ((v57 & 1) == 0)
      {

LABEL_38:
        v62 = *(v76 + 8);
        v62(v55, v4);
        v62(v53, v4);
        goto LABEL_45;
      }
    }

    if (v70 == v69 && v45 == v72)
    {
    }

    else
    {
      v61 = sub_23875F630();

      if ((v61 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v66 = sub_23875AD70();
    v68 = *(v76 + 8);
    v68(v55, v4);
    v68(v53, v4);
    sub_23857F198(v22);
    return v66 & 1;
  }

  sub_23857F634(v22, v18, type metadata accessor for OrderDetailsNote);
  v36 = *v18;
  v35 = v18[1];
  v38 = v18[2];
  v37 = v18[3];
  if (!swift_getEnumCaseMultiPayload())
  {
    v40 = v24[2];
    v39 = v24[3];
    if (v36 == *v24 && v35 == v24[1])
    {
      v63 = v24[1];
    }

    else
    {
      v42 = v24[1];
      v43 = sub_23875F630();

      if ((v43 & 1) == 0)
      {
LABEL_16:

LABEL_45:
        sub_23857F198(v22);
        goto LABEL_46;
      }
    }

    if (v38 != v40 || v37 != v39)
    {
LABEL_44:
      v65 = sub_23875F630();

      if ((v65 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      sub_23857F198(v22);
      v66 = 1;
      return v66 & 1;
    }

LABEL_48:

    goto LABEL_49;
  }

LABEL_25:

  sub_23857F130(v22);
LABEL_46:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_23857F130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E998, &unk_2387709D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23857F198(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23857F23C()
{
  result = type metadata accessor for OrderDetailsNote(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23857F30C()
{
  type metadata accessor for OrderDetailsNote(319);
  if (v0 <= 0x3F)
  {
    sub_23857F390();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23857F390()
{
  if (!qword_27DF0DA10)
  {
    sub_23875C600();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0DA10);
    }
  }
}

unint64_t sub_23857F3E8()
{
  result = qword_27DF0E9C0;
  if (!qword_27DF0E9C0)
  {
    type metadata accessor for OrderDetailsNotes_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E9C0);
  }

  return result;
}

uint64_t sub_23857F494(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23857F518()
{
  result = qword_27DF0E9F8;
  if (!qword_27DF0E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA00, &qword_238770B08);
    sub_23843A3E8(&qword_27DF0EA08, &qword_27DF0EA10, &unk_238770B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E9F8);
  }

  return result;
}

unint64_t sub_23857F5E0()
{
  result = qword_27DF0EA38;
  if (!qword_27DF0EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EA38);
  }

  return result;
}

uint64_t sub_23857F634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23857F69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNotes_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23857F700()
{
  v1 = *(type metadata accessor for OrderDetailsNotes_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23857E8DC(v2);
}

uint64_t sub_23857F760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_23857F7D0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v38 - v13;
  v14 = sub_238758470();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_238439884(v8, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_23858600C(v8, v41, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23858600C(v29, v43, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_238498610(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_238498610(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_23858600C(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_23857FC18(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB08, &unk_238770F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v27 = &v24 - v15;
  v28 = *(a3 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = 0;
  v25 = v14;
  v17 = (v14 + 48);
  v18 = MEMORY[0x277D84F90];
  v26 = a1;
  while (1)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0) - 8);
    a1(a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_238439884(v9, &qword_27DF0EB08, &unk_238770F40);
    }

    else
    {
      v20 = v27;
      sub_23858600C(v9, v27, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      sub_23858600C(v20, v29, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_238498684(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_238498684(v21 > 1, v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_23858600C(v29, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      a1 = v26;
    }

    if (v28 == ++v16)
    {
      return v18;
    }
  }

  return v18;
}