uint64_t sub_238415714()
{
  v1 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C8A0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C450();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875CFF0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238415934(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F698, &qword_238773028);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_238415AC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F698, &qword_238773028);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_238415C58()
{
  v1 = type metadata accessor for MoreButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C8A0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C450();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875CFF0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238415E78()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_238415EC0()
{
  v1 = sub_23875C650();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238415F98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7D8, &qword_238773388);
  sub_23875D510();
  sub_2385B2CFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238416018(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2384160D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238416188()
{
  v1 = (type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C600();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384162AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F868, &qword_238773548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA20, &unk_238771150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F860, &qword_238773540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F858, &qword_238773538);
  sub_23843A3E8(&qword_27DF0F870, &qword_27DF0F858, &qword_238773538);
  sub_2384397A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238416464()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2384164AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F880, &qword_2387735D8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2384165E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F880, &qword_2387735D8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238416724()
{
  v1 = type metadata accessor for OrderDetailsStatusLabel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v0 + v3 + v1[7];
  v9 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v8 + 8);

      v14 = *(v8 + 24);

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v16 = sub_23875AD80();
      (*(*(v16 - 8) + 8))(v8 + v15, v16);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v11 = *(v8 + 8);

      v12 = *(v8 + 24);
    }
  }

  v17 = *(v5 + v1[9] + 8);

  sub_2384348B8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v18 = v1[11];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F880, &qword_2387735D8);
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[12], v19);
  v20(v5 + v1[13], v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841696C()
{
  v1 = *(type metadata accessor for OrderDetailsNote(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = *(v5 + 8);

    v10 = *(v5 + 24);

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v12 = sub_23875AD80();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(v5 + 8);

    v8 = *(v5 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238416AE0()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238416B1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238416B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB08, &qword_238773D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238416BD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_238416C3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238416C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238416CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238416D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238416E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238416EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238416F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238416FB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23841706C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841711C()
{
  v1 = (type metadata accessor for FetchedExtractedOrderDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238417234()
{
  v1 = v0;
  v2 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v49 = *(*(v2 - 8) + 80);
  v47 = *(*(v2 - 8) + 64);
  v48 = (v49 + 16) & ~v49;
  v3 = v0 + v48;
  v4 = *(v3 + 8);

  v5 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v6 = v3 + v5[5];
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v10 = sub_238757F50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v14 = *(*(v13 - 8) + 8);
  v14(v3 + v12, v13);
  v15 = v3 + v5[7];
  v16 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if (!(*(*(v16 - 1) + 48))(v15, 1, v16))
  {
    v46 = v1;
    v17 = sub_2387581B0();
    (*(*(v17 - 8) + 8))(v15, v17);
    v18 = v15 + v16[5];
    v14(v18, v13);
    v19 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v20 = v19[5];
    v21 = sub_238757FA0();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v18 + v20, 1, v21))
    {
      (*(v22 + 8))(v18 + v20, v21);
    }

    v23 = v19[6];
    v24 = sub_238757F70();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v18 + v23, 1, v24))
    {
      (*(v25 + 8))(v18 + v23, v24);
    }

    v26 = v19[7];
    v27 = sub_238757F90();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v18 + v26, 1, v27))
    {
      (*(v28 + 8))(v18 + v26, v27);
    }

    v29 = *(v15 + v16[6] + 8);

    v30 = *(v15 + v16[7] + 8);

    v1 = v46;
  }

  v31 = *(v3 + v5[8]);

  v32 = v3 + v5[9];
  v33 = *(v32 + 8);

  v34 = *(v32 + 24);

  v35 = *(v32 + 40);

  v36 = *(v32 + 56);

  v37 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v38 = sub_238758090();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(v32 + v37, 1, v38))
  {
    (*(v39 + 8))(v32 + v37, v38);
  }

  v40 = *(v3 + v5[10]);

  v41 = v3 + *(v2 + 20);
  v42 = *(v41 + 16);

  v43 = *(v41 + 32);

  v44 = *(v3 + *(v2 + 24));

  return MEMORY[0x2821FE8E8](v1, v48 + v47, v49 | 7);
}

uint64_t sub_23841774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841780C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384178FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OrderImage();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = v3[9];
  v10 = sub_23875AF90();
  (*(*(v10 - 8) + 8))(v0 + v5 + v9, v10);
  v11 = *(v0 + v5 + v3[12] + 8);

  v12 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
    v14 = *(v7 + v12);
  }

  v15 = v3[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C8A0();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

  else
  {
    v17 = *(v7 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_238417AEC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_238417C70(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_238417DF4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23875C450();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_23875C8A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_238417F60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23875C450();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_23875C8A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2384180CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for OrderImageInternalContainer();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23875C610();
  type metadata accessor for OrderImageModel();
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel);
  sub_23875E270();
  swift_getWitnessTable();
  sub_23875C730();
  return swift_getWitnessTable();
}

uint64_t sub_23841821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderImageModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384182D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderImageModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384183D4@<X0>(_BYTE *a1@<X8>)
{
  sub_2385CA78C();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_238418424(char *a1)
{
  v2 = *a1;
  sub_2385CA78C();
  return sub_23875CDD0();
}

uint64_t sub_238418478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderImageModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238418538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderImageModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384185F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for OrderImageInternal();

  return swift_getWitnessTable();
}

uint64_t sub_238418640()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for OrderImageInternal();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v40 = *(*(v3 - 1) + 64);
  v6 = sub_238758960();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 80);
  v39 = *(v44 + 64);
  v8 = sub_238758970();
  v42 = *(v8 - 8);
  v43 = v8;
  v38 = *(v42 + 80);
  v37 = *(v42 + 64);
  v41 = sub_2387589C0();
  v9 = *(v41 - 8);
  v10 = *(v9 + 80);
  v36 = *(v9 + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = &v0[v5];
  v13 = *&v0[v5 + 16];

  v14 = type metadata accessor for OrderImageModel();
  v15 = v14[6];
  v16 = sub_23875AF90();
  (*(*(v16 - 8) + 8))(&v0[v5 + v15], v16);
  v17 = v14[9];
  v18 = sub_23875C450();
  (*(*(v18 - 8) + 8))(&v0[v5 + v17], v18);
  v19 = v14[10];
  v20 = sub_23875C8A0();
  (*(*(v20 - 8) + 8))(&v0[v5 + v19], v20);
  __swift_destroy_boxed_opaque_existential_1(&v0[v5 + v3[9]]);
  v21 = *&v0[v5 + 8 + v3[10]];

  v22 = &v0[v5 + v3[11]];
  if (*v22 >= 2uLL)
  {
  }

  v23 = *(v22 + 1);

  v24 = &v12[v3[12]];
  if (*v24 >= 2uLL)
  {
  }

  v25 = *(v24 + 1);

  v26 = &v12[v3[13]];
  if (v26[40])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v27 = *v26;
  }

  v28 = v4 | v7 | v38 | v10;
  v29 = (v40 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v7 + ((((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  v31 = (v30 + v39 + v38) & ~v38;
  v32 = (v31 + v37 + v10) & ~v10;
  v33 = (v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2384348B8(*&v12[v3[14]], v12[v3[14] + 8]);
  v34 = *&v0[v29];

  (*(v44 + 8))(&v0[v30], v45);
  (*(v42 + 8))(&v0[v31], v43);
  (*(v9 + 8))(&v0[v32], v41);
  __swift_destroy_boxed_opaque_existential_1(&v0[v33]);

  return MEMORY[0x2821FE8E8](v0, v33 + 40, v28 | 7);
}

uint64_t sub_238418A30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238418A68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  sub_23875D1C0();
  sub_23875D1C0();
  sub_23875D6E0();
  sub_23875C8C0();
  sub_23875C6E0();
  sub_23875C8C0();
  sub_23875C8C0();
  sub_2385CADE4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23875E2C0();
  return swift_getWitnessTable();
}

uint64_t sub_238418C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_23875C880();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_238418DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875C880();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238418F2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_238418FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238419098()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 8);
  v8 = *(v0 + v3 + 16);
  v9 = *(v0 + v3 + 24);
  sub_2383FC164();
  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = (v6 + *(v1 + 28));
  v14 = *v13;

  v15 = v13[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384191F4@<X0>(void *a1@<X8>)
{
  result = sub_23875CB90();
  *a1 = v3;
  return result;
}

uint64_t sub_238419248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CB20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2384192B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2384192F8()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v3 + 16);
  sub_2383FC164();
  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 64);

  v13 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  v16 = *(v1 + 36);
  v17 = sub_23875C880();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841948C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E48, &qword_238761CD0);
  sub_2385D5938();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841950C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_238419558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384195C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238419634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23875AD80();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_238419780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23875B940();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23875AD80();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2384198D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238419A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238419B40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23875B940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23875AF90();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238419C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875B940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875AF90();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238419D88()
{
  v1 = (type metadata accessor for OrderProviderLogoButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v9 = *(v8 + 24);
  v10 = sub_23875B940();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v8 + 28);
  v12 = sub_23875AF90();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v0 + v3 + v1[9];
  v14 = *v13;

  v15 = *(v13 + 8);

  v16 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875C6D0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238419F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23841A0B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23841A1E4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_23841A368(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841A534()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10490, &qword_2387755F8);
  sub_23875C950();
  sub_23843A3E8(&qword_27DF104A0, &qword_27DF10490, &qword_2387755F8);
  sub_2385DEEA8(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841A614()
{
  v1 = type metadata accessor for OrderProviderLogo(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v0 + v3 + v1[9];
  v11 = *v10;

  v12 = *(v10 + 8);

  v13 = v0 + v3 + v1[10];
  if (*(v13 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v14 = *v13;
  }

  v15 = v5 + v1[11];
  if (*(v15 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v16 = *v15;
  }

  v17 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_23875C450();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  v20 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_23875C8A0();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841A850()
{
  v1 = (type metadata accessor for OrderImageModel() - 8);
  v38 = *(*v1 + 80);
  v2 = (v38 + 32) & ~v38;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for OrderProviderLogo(0);
  v37 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v37) & ~v37;
  v36 = *(*(v4 - 1) + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = *(v0 + v2 + 16);

  v9 = v1[8];
  v10 = sub_23875AF90();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v12 = v1[11];
  v13 = sub_23875C450();
  v35 = *(*(v13 - 8) + 8);
  v35(v7 + v12, v13);
  v14 = v1[12];
  v15 = sub_23875C8A0();
  v16 = v7 + v14;
  v17 = v5;
  v18 = *(*(v15 - 8) + 8);
  v18(v16, v15);
  v19 = v0 + v17;
  v20 = *(v0 + v17 + 8);

  v21 = *(v0 + v17 + 24);

  v11(v0 + v17 + v4[6], v10);
  v22 = (v0 + v17 + v4[9]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v0 + v17 + v4[10];
  if (*(v25 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v26 = *v25;
  }

  v27 = v19 + v4[11];
  if (*(v27 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v28 = *v27;
  }

  v29 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35(v19 + v29, v13);
  }

  else
  {
    v30 = *(v19 + v29);
  }

  v31 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18(v19 + v31, v15);
  }

  else
  {
    v32 = *(v19 + v31);
  }

  v33 = (v36 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + v33));

  return MEMORY[0x2821FE8E8](v0, v33 + 40, v38 | v37 | 7);
}

uint64_t sub_23841ABB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_23875AD80();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_23841AD14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875B940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23875AD80();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841AEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10610, &qword_2387759B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10608, &qword_2387759B0);
  sub_23875D2E0();
  sub_23843A3E8(&qword_27DF10618, &qword_27DF10608, &qword_2387759B0);
  sub_2385DEEA8(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841B044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CBD0();
  *a1 = result;
  return result;
}

uint64_t sub_23841B0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CA50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23841B0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10630, &qword_238775A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23841B148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2385DFD00(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_23841B184(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2385DFD9C(&v4);
}

uint64_t sub_23841B1C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_2385E3634(v4);
}

uint64_t sub_23841B208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841B280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841B2FC()
{
  v1 = *(type metadata accessor for OrderListDoneButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23875C600();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841B408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23841B454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841B510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875B940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23841B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23841B6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23841B7E4()
{
  v1 = type metadata accessor for OrderFileAttachmentPreview(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C600();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841B9A0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841BB18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841BC90(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841BDFC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841BF68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875BC40();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = type metadata accessor for MerchantImage.ViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = type metadata accessor for OrderActionsMenuContext(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v16 = sub_23875B0A0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v18 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_15;
  }

  v20 = *(a1 + a3[12]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

uint64_t sub_23841C1E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875A710();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23875BC40();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for MerchantImage.ViewModel(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for OrderActionsMenuContext(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = sub_23875B0A0();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[9];
          }

          else
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
            if (*(*(v19 - 8) + 84) == a3)
            {
              v10 = v19;
              v14 = *(v19 - 8);
              v15 = a4[10];
            }

            else
            {
              result = type metadata accessor for ProductImage.ViewModel(0);
              if (*(*(result - 8) + 84) != a3)
              {
                *(a1 + a4[12]) = (a2 - 1);
                return result;
              }

              v10 = result;
              v14 = *(result - 8);
              v15 = a4[11];
            }
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23841C5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23841C704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875B0A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for ProductImage.ViewModel(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for OrderNavigationDestination(0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return v17 - 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_23841C8A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875B0A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ProductImage.ViewModel(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for OrderNavigationDestination(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841CA5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23875DA00();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23841CB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875DA00();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23841CCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B0A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841CD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B0A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23841CDD0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23875BB40();
  [v2 setStoredArchiveDate_];
}

id sub_23841CE4C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

uint64_t sub_23841CE9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 40);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_23841D0D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 40) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23841D31C()
{
  v1 = type metadata accessor for OrderListContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v6 + v1[5]);
  if (v9[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v10 = *v9;
  }

  sub_2384B4E98(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C880();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
    v13 = *(v6 + v11);
  }

  v14 = v1[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v16 = *(*(v15 - 8) + 8);
  v16(v6 + v14, v15);
  v16(v6 + v1[9], v15);
  v17 = v1[10];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  (*(*(v18 - 8) + 8))(v6 + v17, v18);
  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_23875C6D0();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
    v21 = *(v6 + v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841D608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C48, &qword_238776AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23841D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OrderListRow.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23841D7D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875A710();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for OrderListRow.ViewModel(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23841D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23841DA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_23841DAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841DB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23841DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderPaymentViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23875A710();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23841DD2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderPaymentViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23875A710();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23841DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841DE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841DF08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23841DFB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_238757B60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841E074(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_23841E22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23841E460()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  else
  {
    v4 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_23841E4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238759510();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23841E534(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_238759510();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23841E5B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_23841E670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841E7B4()
{
  v1 = *(type metadata accessor for AccountListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841E8D4()
{
  v1 = (type metadata accessor for SelectAccountsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[9];
  v10 = sub_23875D530();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940) + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238758680();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23841EB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238758680();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841EC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115D0, &qword_238778A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115C8, &qword_238778A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115C0, &qword_238778A60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115B8, &qword_238778A58);
  sub_23875D310();
  sub_23843A3E8(&qword_27DF11600, &qword_27DF115B8, &qword_238778A58);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841EE34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11770, &qword_238778D30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11780, &unk_238778D48);
  sub_23861F244();
  type metadata accessor for AccountInfoView(255);
  sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841EF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841EFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841F03C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2387590B0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23875B0A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841F1A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2387590B0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23875B0A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841F338@<X0>(void *a1@<X8>)
{
  sub_23844ACFC();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

__n128 sub_23841F3F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_23841F404()
{
  v165 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v168 = *(*(v165 - 1) + 80);
  v166 = *(*(v165 - 1) + 64);
  v167 = (v168 + 16) & ~v168;
  v169 = v0;
  v1 = v0 + v167;
  v2 = *(v0 + v167 + 8);

  v3 = type metadata accessor for MerchantImage.ViewModel(0);
  v4 = *(v3 + 20);
  v5 = sub_23875AF90();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v7 = *(v1 + *(v3 + 24) + 8);

  v8 = type metadata accessor for OrderDetails.ViewModel(0);
  v9 = v1 + v8[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v164 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      v162 = v6;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_23875AF00();
        (*(*(v11 - 8) + 8))(v9, v11);
        v12 = v9 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v13 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {
            v37 = *(v12 + 8);

            v38 = *(v12 + 24);

            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v40 = sub_23875AD80();
            (*(*(v40 - 8) + 8))(v12 + v39, v40);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            v15 = *(v12 + 8);

            v16 = *(v12 + 24);
          }
        }

        v41 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
        v42 = *(v9 + v41[5] + 8);

        v43 = *(v9 + v41[6] + 8);

        v44 = *(v9 + v41[7] + 8);

        v45 = *(v9 + v41[8] + 8);

        v46 = v41[10];
        v47 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v47 - 8) + 48))(v9 + v46, 1, v47))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v48 = sub_23875B940();
            (*(*(v48 - 8) + 8))(v9 + v46, v48);
          }

          else
          {
          }
        }

        v49 = v9 + v41[11];
        v50 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v50 - 1) + 48))(v49, 1, v50))
        {
          v51 = *(v49 + 8);

          v52 = v50[5];
          v53 = sub_23875B290();
          (*(*(v53 - 8) + 8))(v49 + v52, v53);

          v54 = v50[7];
          v55 = sub_23875AEB0();
          v56 = *(v55 - 8);
          if (!(*(v56 + 48))(v49 + v54, 1, v55))
          {
            (*(v56 + 8))(v49 + v54, v55);
          }

          v57 = v50[8];
          v58 = sub_23875B1D0();
          v59 = *(v58 - 8);
          if (!(*(v59 + 48))(v49 + v57, 1, v58))
          {
            (*(v59 + 8))(v49 + v57, v58);
          }

          v60 = *(v49 + v50[9] + 8);

          v61 = *(v49 + v50[10] + 8);

          v62 = v49 + v50[11];
          v63 = *(v62 + 8);

          v162(v62 + *(v3 + 20), v164);
          v64 = *(v62 + *(v3 + 24) + 8);
        }
      }

      else
      {
        v172 = v3;
        v174 = v10;
        v22 = sub_23875AE10();
        (*(*(v22 - 8) + 8))(v9, v22);
        v23 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v24 = v9 + v23[5];
        v25 = sub_23875B120();
        (*(*(v25 - 8) + 8))(v24, v25);
        v26 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v27 = *(v26 + 20);
        v28 = sub_23875AD80();
        v29 = *(*(v28 - 8) + 8);
        v30 = v24 + v27;
        v31 = v28;
        v29(v30, v28);
        v32 = v24 + *(v26 + 24);
        v33 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
        {
          v34 = swift_getEnumCaseMultiPayload();
          if (v34 == 2)
          {
            v65 = *(v32 + 8);

            v66 = *(v32 + 24);

            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v29(v32 + *(v67 + 64), v31);
          }

          else if (v34 <= 1)
          {
            v35 = *(v32 + 8);

            v36 = *(v32 + 24);
          }
        }

        v170 = v31;
        v161 = v29;
        v29(v9 + v23[6], v31);
        v68 = *(v9 + v23[7] + 8);

        v69 = *(v9 + v23[8] + 8);

        v70 = v23[9];
        v71 = sub_23875B940();
        v72 = *(v71 - 8);
        if (!(*(v72 + 48))(v9 + v70, 1, v71))
        {
          (*(v72 + 8))(v9 + v70, v71);
        }

        v160 = v71;
        v73 = *(v9 + v23[10] + 8);

        v74 = *(v9 + v23[11] + 8);

        v75 = *(v9 + v23[12] + 8);

        v76 = v9 + v23[13];
        v77 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        v3 = v172;
        v10 = v174;
        if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
        {
          v78 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v78 - 8) + 48))(v76, 1, v78))
          {
            (*(v72 + 8))(v76 + *(v77 + 20), v160);
          }

          else
          {
            v79 = *(v76 + 8);

            v80 = *(v76 + 24);

            v159 = *(v72 + 8);
            v159(v76 + *(v78 + 24), v160);
            v162(v76 + *(v78 + 28), v164);
            v159(v76 + *(v77 + 20), v160);
          }

          v161(v76 + *(v77 + 24), v170);
        }
      }

      v81 = *(v9 + *(v10 + 20));

      v82 = *(v9 + *(v10 + 24) + 8);

      v6 = v162;
      v5 = v164;
    }

    v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v17 - 8) + 8))(v9, v17);
    v18 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v19 = *(v9 + *(v18 + 20) + 8);

    v20 = *(v9 + *(v18 + 24) + 8);

    v21 = (v18 + 28);
  }

  v83 = *(v9 + *v21);

  v84 = v1 + v8[6];
  v85 = *(v84 + 8);

  v86 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v87 = v84 + *(v86 + 20);
  v88 = *(v87 + 8);

  v6(v87 + *(v3 + 20), v5);
  v89 = *(v87 + *(v3 + 24) + 8);

  v90 = *(v86 + 24);
  v91 = sub_23875BC40();
  v92 = *(v91 - 8);
  v173 = *(v92 + 8);
  v175 = v91;
  v173(v84 + v90);
  v93 = *(v1 + v8[7]);

  v94 = v1 + v8[8];
  v95 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v171 = v8;
  if (!(*(*(v95 - 1) + 48))(v94, 1, v95))
  {
    v163 = v6;
    v96 = sub_23875B940();
    v97 = *(v96 - 8);
    v98 = *(v97 + 8);
    v98(v94, v96);
    v99 = *(v94 + v95[5] + 8);

    v100 = v95[6];
    if (!(*(v97 + 48))(v94 + v100, 1, v96))
    {
      v98(v94 + v100, v96);
    }

    v101 = v95[7];
    v8 = v171;
    v6 = v163;
    if (!(*(v92 + 48))(v94 + v101, 1, v175))
    {
      (v173)(v94 + v101, v175);
    }
  }

  v102 = *(v1 + v8[9]);

  v103 = v1 + v8[10];
  v104 = *(v103 + 8);

  v105 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v106 = v105[5];
  v107 = sub_238758090();
  v108 = *(v107 - 8);
  if (!(*(v108 + 48))(v103 + v106, 1, v107))
  {
    (*(v108 + 8))(v103 + v106, v107);
  }

  v109 = *(v103 + v105[6] + 8);

  v110 = v103 + v105[7];
  v111 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
  {
    (v173)(v110, v175);
    v112 = type metadata accessor for OrderPaymentViewModel(0);
    v113 = v6;
    v114 = v112;
    v113(v110 + *(v112 + 20), v164);
    v115 = *(v110 + v114[6] + 8);

    v116 = *(v110 + v114[7]);

    v117 = *(v110 + v114[8]);

    (*(v108 + 8))(v110 + v114[9], v107);
    v118 = v114[10];
    v119 = sub_238758D30();
    v120 = *(v119 - 8);
    if (!(*(v120 + 48))(v110 + v118, 1, v119))
    {
      (*(v120 + 8))(v110 + v118, v119);
    }

    v121 = *(v110 + v114[11]);

    v122 = *(v110 + v114[12]);

    v123 = v114[13];
    v124 = sub_23875B290();
    v125 = *(v124 - 8);
    if (!(*(v125 + 48))(v110 + v123, 1, v124))
    {
      (*(v125 + 8))(v110 + v123, v124);
    }

    v126 = *(v111 + 20);
    v127 = sub_23875A710();
    (*(*(v127 - 8) + 8))(v110 + v126, v127);
  }

  v128 = v103 + v105[8];
  v129 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v129 - 8) + 48))(v128, 1, v129))
  {
    v130 = *(v128 + 8);

    v131 = *(v129 + 20);
    v132 = sub_23875AD80();
    (*(*(v132 - 8) + 8))(v128 + v131, v132);
  }

  v133 = v103 + v105[9];
  v134 = *(v133 + 8);

  v135 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v136 = v135[5];
  v137 = sub_23875B940();
  v138 = *(v137 - 8);
  v139 = *(v138 + 8);
  v139(v133 + v136, v137);
  v139(v133 + v135[6], v137);
  v140 = *(v133 + v135[7] + 8);

  v141 = v135[8];
  v142 = *(v138 + 48);
  if (!v142(v133 + v141, 1, v137))
  {
    v139(v133 + v141, v137);
  }

  v143 = v135[9];
  if (!v142(v133 + v143, 1, v137))
  {
    v139(v133 + v143, v137);
  }

  v144 = *(v133 + v135[10] + 8);

  v145 = v171[12];
  v146 = sub_23875A710();
  v147 = *(*(v146 - 8) + 8);
  v147(v1 + v145, v146);
  v148 = *(v1 + v171[14]);

  v149 = v1 + v165[5];
  v147(v149, v146);
  v150 = type metadata accessor for OrderShareLink.ViewModel(0);
  v151 = *(v149 + v150[5] + 8);

  v152 = *(v149 + v150[6] + 8);

  v153 = v150[7];
  v154 = sub_2387590B0();
  (*(*(v154 - 8) + 8))(v149 + v153, v154);
  (v173)(v149 + v150[8], v175);
  v155 = *(v1 + v165[6]);

  v156 = v165[7];
  v157 = type metadata accessor for OrderActionsMenuContext(0);
  v147(v1 + v156 + *(v157 + 20), v146);

  return MEMORY[0x2821FE8E8](v169, v167 + v166, v168 | 7);
}

uint64_t sub_2384205D0()
{
  v162 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v165 = *(*(v162 - 1) + 80);
  v163 = *(*(v162 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v166 = v0;
  v164 = (v165 + 81) & ~v165;
  v5 = v0 + v164;
  v6 = *(v0 + v164 + 8);

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_23875AF90();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v11 = *(v5 + *(v7 + 24) + 8);

  v12 = type metadata accessor for OrderDetails.ViewModel(0);
  v13 = v5 + v12[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v168 = v12;
  v160 = v10;
  v161 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_23875AF00();
        (*(*(v15 - 8) + 8))(v13, v15);
        v16 = v13 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v17 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {
            v39 = *(v16 + 8);

            v40 = *(v16 + 24);

            v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v42 = sub_23875AD80();
            (*(*(v42 - 8) + 8))(v16 + v41, v42);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            v19 = *(v16 + 8);

            v20 = *(v16 + 24);
          }
        }

        v43 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
        v44 = *(v13 + v43[5] + 8);

        v45 = *(v13 + v43[6] + 8);

        v46 = *(v13 + v43[7] + 8);

        v47 = *(v13 + v43[8] + 8);

        v48 = v43[10];
        v49 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v49 - 8) + 48))(v13 + v48, 1, v49))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v50 = sub_23875B940();
            (*(*(v50 - 8) + 8))(v13 + v48, v50);
          }

          else
          {
          }
        }

        v51 = v13 + v43[11];
        v52 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v52 - 1) + 48))(v51, 1, v52))
        {
          v53 = *(v51 + 8);

          v54 = v52[5];
          v55 = sub_23875B290();
          (*(*(v55 - 8) + 8))(v51 + v54, v55);

          v56 = v52[7];
          v57 = sub_23875AEB0();
          v58 = *(v57 - 8);
          if (!(*(v58 + 48))(v51 + v56, 1, v57))
          {
            (*(v58 + 8))(v51 + v56, v57);
          }

          v59 = v52[8];
          v60 = sub_23875B1D0();
          v61 = *(v60 - 8);
          if (!(*(v61 + 48))(v51 + v59, 1, v60))
          {
            (*(v61 + 8))(v51 + v59, v60);
          }

          v62 = *(v51 + v52[9] + 8);

          v63 = *(v51 + v52[10] + 8);

          v64 = v51 + v52[11];
          v65 = *(v64 + 8);

          v160(v64 + *(v7 + 20), v161);
          v66 = *(v64 + *(v7 + 24) + 8);
        }
      }

      else
      {
        v26 = sub_23875AE10();
        (*(*(v26 - 8) + 8))(v13, v26);
        v27 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v28 = v13 + v27[5];
        v29 = sub_23875B120();
        (*(*(v29 - 8) + 8))(v28, v29);
        v30 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v31 = *(v30 + 20);
        v32 = sub_23875AD80();
        v33 = *(*(v32 - 8) + 8);
        v33(v28 + v31, v32);
        v34 = v28 + *(v30 + 24);
        v35 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
        {
          v36 = swift_getEnumCaseMultiPayload();
          if (v36 == 2)
          {
            v67 = *(v34 + 8);

            v68 = *(v34 + 24);

            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v33(v34 + *(v69 + 64), v32);
          }

          else if (v36 <= 1)
          {
            v37 = *(v34 + 8);

            v38 = *(v34 + 24);
          }
        }

        v169 = v33;
        v33(v13 + v27[6], v32);
        v70 = *(v13 + v27[7] + 8);

        v71 = *(v13 + v27[8] + 8);

        v72 = v27[9];
        v73 = sub_23875B940();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v13 + v72, 1, v73))
        {
          (*(v74 + 8))(v13 + v72, v73);
        }

        v75 = *(v13 + v27[10] + 8);

        v76 = *(v13 + v27[11] + 8);

        v77 = *(v13 + v27[12] + 8);

        v78 = v13 + v27[13];
        v79 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
        {
          v80 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v80 - 8) + 48))(v78, 1, v80))
          {
            (*(v74 + 8))(v78 + *(v79 + 20), v73);
          }

          else
          {
            v81 = *(v78 + 8);

            v82 = *(v78 + 24);

            v83 = *(v74 + 8);
            v83(v78 + *(v80 + 24), v73);
            v160(v78 + *(v80 + 28), v161);
            v83(v78 + *(v79 + 20), v73);
          }

          v169(v78 + *(v79 + 24), v32);
        }
      }

      v84 = *(v13 + *(v14 + 20));

      v85 = *(v13 + *(v14 + 24) + 8);

      v12 = v168;
      v10 = v160;
      v9 = v161;
    }

    v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v21 - 8) + 8))(v13, v21);
    v22 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v23 = *(v13 + *(v22 + 20) + 8);

    v24 = *(v13 + *(v22 + 24) + 8);

    v25 = (v22 + 28);
  }

  v86 = *(v13 + *v25);

  v87 = v5 + v12[6];
  v88 = *(v87 + 8);

  v89 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v90 = v87 + *(v89 + 20);
  v91 = *(v90 + 8);

  v10(v90 + *(v7 + 20), v9);
  v92 = *(v90 + *(v7 + 24) + 8);

  v93 = *(v89 + 24);
  v94 = sub_23875BC40();
  v95 = *(v94 - 8);
  v170 = v94;
  v167 = *(v95 + 8);
  v167(v87 + v93);
  v96 = *(v5 + v12[7]);

  v97 = v5 + v12[8];
  v98 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  if (!(*(*(v98 - 1) + 48))(v97, 1, v98))
  {
    v99 = sub_23875B940();
    v100 = *(v99 - 8);
    v101 = *(v100 + 8);
    v101(v97, v99);
    v102 = *(v97 + v98[5] + 8);

    v103 = v98[6];
    if (!(*(v100 + 48))(v97 + v103, 1, v99))
    {
      v101(v97 + v103, v99);
    }

    v104 = v98[7];
    v12 = v168;
    if (!(*(v95 + 48))(v97 + v104, 1, v170))
    {
      (v167)(v97 + v104, v170);
    }
  }

  v105 = *(v5 + v12[9]);

  v106 = v5 + v12[10];
  v107 = *(v106 + 8);

  v108 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v109 = v108[5];
  v110 = sub_238758090();
  v111 = *(v110 - 8);
  if (!(*(v111 + 48))(v106 + v109, 1, v110))
  {
    (*(v111 + 8))(v106 + v109, v110);
  }

  v112 = *(v106 + v108[6] + 8);

  v113 = v106 + v108[7];
  v114 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v114 - 8) + 48))(v113, 1, v114))
  {
    (v167)(v113, v170);
    v115 = type metadata accessor for OrderPaymentViewModel(0);
    v160(v113 + v115[5], v161);
    v116 = *(v113 + v115[6] + 8);

    v117 = *(v113 + v115[7]);

    v118 = *(v113 + v115[8]);

    (*(v111 + 8))(v113 + v115[9], v110);
    v119 = v115[10];
    v120 = sub_238758D30();
    v121 = *(v120 - 8);
    if (!(*(v121 + 48))(v113 + v119, 1, v120))
    {
      (*(v121 + 8))(v113 + v119, v120);
    }

    v122 = *(v113 + v115[11]);

    v123 = *(v113 + v115[12]);

    v124 = v115[13];
    v125 = sub_23875B290();
    v126 = *(v125 - 8);
    if (!(*(v126 + 48))(v113 + v124, 1, v125))
    {
      (*(v126 + 8))(v113 + v124, v125);
    }

    v127 = *(v114 + 20);
    v128 = sub_23875A710();
    (*(*(v128 - 8) + 8))(v113 + v127, v128);
  }

  v129 = v106 + v108[8];
  v130 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v130 - 8) + 48))(v129, 1, v130))
  {
    v131 = *(v129 + 8);

    v132 = *(v130 + 20);
    v133 = sub_23875AD80();
    (*(*(v133 - 8) + 8))(v129 + v132, v133);
  }

  v134 = v106 + v108[9];
  v135 = *(v134 + 8);

  v136 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v137 = v136[5];
  v138 = sub_23875B940();
  v139 = *(v138 - 8);
  v140 = *(v139 + 8);
  v140(v134 + v137, v138);
  v140(v134 + v136[6], v138);
  v141 = *(v134 + v136[7] + 8);

  v142 = v136[8];
  v143 = *(v139 + 48);
  if (!v143(v134 + v142, 1, v138))
  {
    v140(v134 + v142, v138);
  }

  v144 = v136[9];
  if (!v143(v134 + v144, 1, v138))
  {
    v140(v134 + v144, v138);
  }

  v145 = *(v134 + v136[10] + 8);

  v146 = v168[12];
  v147 = sub_23875A710();
  v148 = *(*(v147 - 8) + 8);
  v148(v5 + v146, v147);
  v149 = *(v5 + v168[14]);

  v150 = v5 + v162[5];
  v148(v150, v147);
  v151 = type metadata accessor for OrderShareLink.ViewModel(0);
  v152 = *(v150 + v151[5] + 8);

  v153 = *(v150 + v151[6] + 8);

  v154 = v151[7];
  v155 = sub_2387590B0();
  (*(*(v155 - 8) + 8))(v150 + v154, v155);
  (v167)(v150 + v151[8], v170);
  v156 = *(v5 + v162[6]);

  v157 = v162[7];
  v158 = type metadata accessor for OrderActionsMenuContext(0);
  v148(v5 + v157 + *(v158 + 20), v147);

  return MEMORY[0x2821FE8E8](v166, v164 + v163, v165 | 7);
}

uint64_t sub_2384217C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E78, &unk_238761D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238421844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842187C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238421920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MerchantImage.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2387590B0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_238421A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MerchantImage.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2387590B0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23875B0A0();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_238421BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderListRow.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238421CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderListRow.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238421DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238421EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_238421F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_238422098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2384221D0()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v12 = v0 + v8;
  v11(v0 + v8, v1);
  v13 = *(v0 + v8 + v6[7] + 8);

  v14 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C1E0();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  else
  {
    v16 = *(v12 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_23842239C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CD80();
  *a1 = result;
  return result;
}

uint64_t sub_2384223C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_23875CD90();
}

uint64_t sub_2384223F4()
{
  v1 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_23875A710();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7] + 8);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C1E0();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238422558()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BD8, &qword_238779820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE0, &qword_238779828);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE8, &qword_238779830);
  sub_23843A3E8(&qword_27DF11BF0, &qword_27DF11BE0, &qword_238779828);
  sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830);
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238422708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238422830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842295C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2384229AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CC10();
  *a1 = result;
  return result;
}

uint64_t sub_238422A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF0, &qword_238779B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238422A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238422ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C88, &qword_238779AA0);
  type metadata accessor for MenuButton.SharingStartDate(255);
  sub_23863B3B0();
  sub_23863A85C(&qword_27DF11C60, type metadata accessor for MenuButton.SharingStartDate);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238422B98(void *a1)
{
  v1 = a1;

  return sub_238757B70();
}

uint64_t sub_238422BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CD40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_238422C28()
{
  v1 = (type metadata accessor for InstitutionConsentManagementView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C1E0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238422D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238422E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238422FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238423188(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238423370(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_23875AAF0();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[11]];

  return v16(v17, a2, v15);
}

char *sub_238423548(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_23875AAF0();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238423720()
{
  v1 = sub_238757B60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for InstitutionConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);

  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v8 + 16);

  v14 = *(v0 + v8 + 24);

  v15 = v6[6];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v16 - 8) + 8))(v0 + v8 + v15, v16);
  v17 = v0 + v8 + v6[7];
  if (*(v17 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v18 = *v17;
  }

  v19 = *(v10 + v6[8]);

  v20 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_23875C1E0();
    (*(*(v21 - 8) + 8))(v10 + v20, v21);
  }

  else
  {
    v22 = *(v10 + v20);
  }

  v23 = v10 + v6[10];
  v24 = sub_238758BB0();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  v26 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10) + 28));

  v27 = v6[11];
  v28 = sub_23875AAF0();
  (*(*(v28 - 8) + 8))(v10 + v27, v28);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_238423A44()
{
  v1 = type metadata accessor for InstitutionConsentManagementListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = v1[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v0 + v3 + v1[7];
  if (*(v12 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13 = *v12;
  }

  v14 = *(v5 + v1[8]);

  v15 = v1[9];
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

  v18 = v5 + v1[10];
  v19 = sub_238758BB0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10) + 28));

  v22 = v1[11];
  v23 = sub_23875AAF0();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238423CF8()
{
  v1 = sub_238758BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for InstitutionConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v28 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v27 = *(v2 + 8);
  v27(v0 + v4, v1);
  v9 = v0 + v8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v8 + 16);

  v13 = *(v0 + v8 + 24);

  v14 = v6[6];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  v16 = v0 + v8 + v6[7];
  if (*(v16 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v17 = *v16;
  }

  v18 = *(v9 + v6[8]);

  v19 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_23875C1E0();
    (*(*(v20 - 8) + 8))(v9 + v19, v20);
  }

  else
  {
    v21 = *(v9 + v19);
  }

  v22 = v9 + v6[10];
  if (!(*(v2 + 48))(v22, 1, v1))
  {
    v27(v22, v1);
  }

  v23 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10) + 28));

  v24 = v6[11];
  v25 = sub_23875AAF0();
  (*(*(v25 - 8) + 8))(v9 + v24, v25);

  return MEMORY[0x2821FE8E8](v0, v8 + v28, v3 | v7 | 7);
}

uint64_t sub_238423FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CD40();
  *a1 = result & 1;
  return result;
}

__n128 sub_238424060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238424070()
{
  v1 = type metadata accessor for MultipleConsentManagementListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  else
  {
    v6 = *v5;
  }

  v7 = *(v5 + 6);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[7]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = &v5[v1[8]];
  v15 = sub_238758BB0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10) + 28)];

  v18 = v1[9];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v19 - 8) + 8))(&v5[v18], v19);
  v20 = v1[10];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v21 - 8) + 8))(&v5[v20], v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384242FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_238757B60();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2384244C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_238757B60();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238424688(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_238757B60();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_2384247CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = sub_238757B60();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_238424904(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_238758BB0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_238424AA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_238424C74()
{
  v1 = type metadata accessor for MultipleConsentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v18 = v0;
  v4 = v0 + v3;
  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[5];
  v7 = sub_238758BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30) + 32);
  if (!(*(v8 + 48))(&v10[v13], 1, v7))
  {
    v9(&v10[v13], v7);
  }

  v14 = v1[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v15 - 8) + 8))(v4 + v14, v15);

  return MEMORY[0x2821FE8E8](v18, v3 + v17, v2 | 7);
}

uint64_t sub_238424E84()
{
  v1 = type metadata accessor for RevokeConsentSection(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[6] + 8);

  v12 = v1[7];
  v13 = sub_238757B60();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238425068()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238425098()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384250D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425110()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2384251E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238425234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();

  return swift_getWitnessTable();
}

uint64_t sub_238425284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2384253C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238425500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384255C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384256F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_23875C880();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238425810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23875C880();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238425938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384259FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_23865E454(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_238425A48()
{
  sub_23865E454(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_238425AA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238425ADC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425B14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238425BD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_238425C80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_238425CBC()
{
  v1 = (type metadata accessor for TransactionUnitList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v1[9]);

  v14 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238425DFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425E34()
{
  v1 = (type metadata accessor for TransactionUnitList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_238758F50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 2);

  v15 = *(v11 + 3);

  v16 = *(v11 + 4);

  v17 = *(v11 + 5);

  v18 = v1[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v20 = *&v11[v1[9]];

  v21 = *&v11[v1[11] + 8];

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_238426008()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12958, qword_23877B6B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12950, &qword_23877B6A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12948, &qword_23877B6A0);
  sub_23843A3E8(&qword_27DF12990, &qword_27DF12948, &qword_23877B6A0);
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842614C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C718, &qword_2387708F0);
  sub_2384397A8();
  sub_2384E2C4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384261F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842625C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2384262E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D0, &qword_23877B890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23842634C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129D0, &qword_23877B890);
  sub_238669C78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384263D8@<X0>(void *a1@<X8>)
{
  sub_238672904();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_238426438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238426488()
{
  v1 = sub_23875B940();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23842655C()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_238426658()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_238426768()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2384267C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384267F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238426830()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238426868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384268E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238426A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238426B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238426C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875B940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_238426CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238426D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238426E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DA0, &qword_23877C0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238426EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CBF0();
  *a1 = result;
  return result;
}

uint64_t sub_238426F14()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238426FC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2387587A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238427074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2387587A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238427118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238427168()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384271A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384271D8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13148, &qword_23877C500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 sub_23842725C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238427268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238427394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238758680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2384274D4()
{
  v1 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_238758680();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v7 = *v6;
  }

  v8 = *(v1 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238427638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384276B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842772C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_238758B60();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23875A9F0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_238757AD0();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_238427898(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_238758B60();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23875A9F0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_238757AD0();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_238427A58(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_238687E14(v2);
}

uint64_t sub_238427A90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238427AD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238427BA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238427BDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238757B60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238427C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238757B60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238427D30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875AD40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_23875A710();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_238427E94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875AD40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_23875A710();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238427FF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238428160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2384282D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238428340(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2384283B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ProductImage.ViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2384284E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ProductImage.ViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238428620()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134F0, &qword_23877D0C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134E8, &qword_23877D0C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134E0, &qword_23877D0B8);
  sub_23875D5F0();
  sub_23843A3E8(&qword_27DF13508, &qword_27DF134E0, &qword_23877D0B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384287C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135B0, &qword_23877D2D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135A8, &qword_23877D2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135A0, &qword_23877D2C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13598, &qword_23877D2C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13590, &qword_23877D2B8);
  sub_23843A3E8(&qword_2814F08E8, &qword_27DF13590, &qword_23877D2B8);
  sub_2384397A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238428978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09338, &unk_23876A0D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238428A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09338, &unk_23876A0D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238428CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875A9F0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238428DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875BCB0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23875A9F0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_238428EF0@<D0>(_OWORD *a1@<X8>)
{
  sub_2384D5B2C();
  sub_23875CDC0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_238428F40(__int128 *a1)
{
  v2 = *a1;
  sub_2384D5B2C();
  return sub_23875CDD0();
}

uint64_t sub_238428F8C()
{
  v1 = *(v0 + 24);

  sub_238530F7C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_238428FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137C8, &qword_23877DE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238429038()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF137C8, &qword_23877DE98);
  sub_23869ABAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875AD40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2384292E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875AD40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_238429448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238429544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842969C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_238429880(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238429A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238429AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238429B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238429C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238429E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238758090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238429F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_238758090();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842A074()
{
  v1 = *(v0 + 24);

  sub_2384348B8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23842A0BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  sub_2385A8F14();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23842A2A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842A498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842A564()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for RoundedButton() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v8 = *(v0 + v5 + v3[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23842A664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  sub_23875CE80();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_2386A7704();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13B68, &qword_23877EA00);
  sub_23843A3E8(&qword_27DF13B70, &qword_27DF13B68, &qword_23877EA00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A7BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842A82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CC30();
  *a1 = result;
  return result;
}

uint64_t sub_23842A858(uint64_t *a1)
{
  v1 = *a1;

  return sub_23875CC40();
}

uint64_t sub_23842A884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875AF90();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_238758090();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[13];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_23842AAA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875BC40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23875AF90();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_238758090();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23842ACC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderPaymentViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842AD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderPaymentViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238758090();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842AE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238758090();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842AF28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238758D30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_238758090();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23842B0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_238758D30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_238758090();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23842B288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_238758090();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23842B3B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875BC40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_238758090();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842B530()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = v7[5];
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v7[6] + 8);

  v11 = *(v0 + v3 + v7[7]);

  v12 = *(v0 + v3 + v7[8]);

  v13 = v7[9];
  v14 = sub_238758090();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v7[10];
  v16 = sub_238758D30();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = *(v5 + v7[11]);

  v19 = *(v5 + v7[12]);

  v20 = v7[13];
  v21 = sub_23875B290();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v5 + v20, 1, v21))
  {
    (*(v22 + 8))(v5 + v20, v21);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23842B7D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842B810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E80, &qword_23877F1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842B8C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842B9D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842BAD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842BBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140A8, &qword_23877F410);
  sub_23843A3E8(&qword_27DF140C0, &qword_27DF140A8, &qword_23877F410);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842BC38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E90, &qword_23877F430);
  sub_23843A3E8(&qword_27DF14158, &qword_27DF08E90, &qword_23877F430);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842BCE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842BD2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842BD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23842BE04()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842BE54()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23842BEA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842BEE8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23842BF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D8, &unk_23877FA98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842C048()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842C080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842C0C4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842C1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842C28C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842C2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842C348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842C3DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_23842C548(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23842C6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842C7B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  v9 = *(active - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, active);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842C8DC@<X0>(void *a1@<X8>)
{
  sub_2386D61C8();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_23842C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectedCardsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842CA2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ConnectedCardsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842CB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14590, &qword_2387804F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for WidgetAccount(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23842CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for WidgetAccount(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23842CCE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C0, &unk_238780740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842CD70()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13148, &qword_23877C500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23842CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842CE5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842CF2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842CF64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842CFAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842CFF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842D038(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23842D0F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842D1A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14698, &qword_238780B78);
  sub_2386E2C84();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842D2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14730, &qword_238780D78);
  sub_23875D310();
  sub_23843A3E8(&qword_27DF14748, &qword_27DF14730, &qword_238780D78);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842D368()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842D3B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842D3F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2383FC164();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23842D430()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842D474()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842D4BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23842D644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23842D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387581B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23842D8EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2387581B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842D9F8()
{
  v1 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v29 = *(*(v1 - 1) + 64);
  v30 = v0;
  v4 = v0 + v3;
  v5 = sub_2387581B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v7 = v0 + v3 + v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v10 = v9[5];
  v11 = sub_238757FA0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v9[6];
  v14 = sub_238757F70();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = v9[7];
  v17 = sub_238757F90();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v7 + v16, 1, v17))
  {
    (*(v18 + 8))(v7 + v16, v17);
  }

  v19 = *(v4 + v6[6] + 8);

  v20 = *(v4 + v6[7] + 8);

  v21 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_23875C880();
    (*(*(v22 - 8) + 8))(v4 + v21, v22);
  }

  else
  {
    v23 = *(v4 + v21);
  }

  sub_2385A9698(*(v4 + v1[6]), *(v4 + v1[6] + 8));
  v24 = v4 + v1[7];
  v25 = sub_23875B940();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v24, 1, v25))
  {
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08) + 28));

  return MEMORY[0x2821FE8E8](v30, v3 + v29, v2 | 7);
}

id sub_23842DE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicAccountObject];
  *a2 = result;
  return result;
}

void sub_23842DEB4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_23875EA50();
  [v4 setDisplayName_];
}

uint64_t sub_23842DFA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23842E05C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842E10C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A00, &unk_238781790);
  type metadata accessor for SelectedTransactionsView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
  sub_23875CE80();
  sub_2386EEE2C();
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  swift_getOpaqueTypeConformance2();
  sub_2386F3860(&qword_27DF14A18, type metadata accessor for SelectedTransactionsView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842E250()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842E2F4()
{
  v1 = type metadata accessor for SelectedTransactionsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_238758F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 16);

  v12 = *(v0 + v3 + 24);

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C600();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = (v3 + v19 + v6) & ~v6;
  v17 = *(v8 + *(v1 + 28));

  (*(v5 + 8))(v0 + v16, v4);

  return MEMORY[0x2821FE8E8](v0, v16 + v7, v2 | v6 | 7);
}

uint64_t sub_23842E544(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_23842E704(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23842E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23842EA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 80) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842EB60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B58, &qword_238781AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B88, &qword_238781AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B50, &qword_238781AD0);
  sub_2386FAF38();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B90, &qword_238781B00);
  sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23842ED88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23842EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductImage.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842EF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ProductImage.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842F05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875AF90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842F118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875AF90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842F1D0()
{
  v1 = (type metadata accessor for ProductImage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875AF90();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for ProductImage.ViewModel(0) + 20));

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C450();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23842F344()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842F37C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23875BCB0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23842F4A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875BCB0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23842F5C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238757B60();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_23875BCB0();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_23842F6D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238757B60();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_23875BCB0();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_23842F7D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23842F890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842FB90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842FBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA8, &unk_238761D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842FC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD8, &qword_2387826F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842FCC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F88, &unk_238782668);
  sub_238710774();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842FD2C()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}