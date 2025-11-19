uint64_t sub_2386EC6DC()
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
  sub_23875E190();
}

uint64_t sub_2386EC87C()
{
  v1 = *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2384494A4;

  return sub_2386EAFE4();
}

uint64_t sub_2386EC948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386EC9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v2 = *(*(v1 - 1) + 80);
  v30 = *(*(v1 - 1) + 64);
  v31 = (v2 + 16) & ~v2;
  v3 = v0 + v31;
  v4 = sub_2387581B0();
  (*(*(v4 - 8) + 8))(v0 + v31, v4);
  v5 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v6 = v0 + v31 + v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v9 = v8[5];
  v10 = sub_238757FA0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v8[6];
  v13 = sub_238757F70();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v8[7];
  v16 = sub_238757F90();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v3 + v5[6] + 8);

  v19 = *(v3 + v5[7] + 8);

  v20 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_23875C880();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);
  }

  else
  {
    v22 = *(v3 + v20);
  }

  sub_2385A9698(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  v23 = v3 + v1[7];
  v24 = sub_23875B940();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  v26 = (v30 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08) + 28));

  v28 = *(v0 + v26 + 8);

  return MEMORY[0x2821FE8E8](v0, v26 + 16, v2 | 7);
}

void sub_2386ECF14()
{
  v1 = *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  sub_2386EC4C8(v0 + v2);
}

uint64_t sub_2386ECFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386ED008(uint64_t a1, uint64_t a2)
{
  sub_2387581B0();
  sub_2386ED1B4(&qword_27DF149C8, MEMORY[0x277CC6E68]);
  sub_23875EC40();
  sub_23875EC40();
  if (v30 != v29)
  {
    return 0;
  }

  v4 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if (!sub_238601FBC(a1 + v4[5], a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (v15)
    {
      v16 = *v12 == *v14 && v13 == v15;
      if (v16 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_19:
  v17 = v4[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v22 = (a2 + v17);
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 2);
  v26 = v22[24];
  v27 = (v19 == v24) & ~(v18 ^ v23);
  if (v20 != v25)
  {
    v27 = 0;
  }

  return v27 & (v21 ^ v26 ^ 1u);
}

uint64_t sub_2386ED1B4(unint64_t *a1, void (*a2)(uint64_t))
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

UIImage __swiftcall UIImage.init(cgImage:)(CGImageRef cgImage)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage:cgImage scale:0 orientation:1.0];

  return v2;
}

uint64_t static UIImage.downsampledImage(with:size:scale:)(void *a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149E0, &qword_238781550);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277CD3618];
  *(inited + 16) = xmmword_2387632F0;
  v10 = *v9;
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  v11 = v10;
  sub_23854C234(inited);
  swift_setDeallocating();
  sub_2386ED5A8(inited + 32);
  type metadata accessor for CFString(0);
  v12 = sub_2386E6B34();
  v13 = MEMORY[0x277D839B0];
  v14 = sub_23875E910();

  if (a1[2])
  {
    v16 = a1[4];
    v17 = a1[5];
    sub_23844C8EC(v16, v17);
    v18 = sub_23875B980();
    v19 = CGImageSourceCreateWithData(v18, v14);

    if (v19)
    {
      v37 = v16;
      v38 = v14;
      if (a2 > a3)
      {
        v20 = a2;
      }

      else
      {
        v20 = a3;
      }

      v21 = v20 * a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148F8, &unk_2387810E0);
      v22 = swift_initStackObject();
      v23 = *MEMORY[0x277CD3620];
      *(v22 + 32) = *MEMORY[0x277CD3620];
      *(v22 + 16) = xmmword_238763310;
      *(v22 + 40) = 1;
      v24 = *MEMORY[0x277CD3568];
      *(v22 + 64) = v13;
      *(v22 + 72) = v24;
      *(v22 + 80) = 1;
      v25 = *MEMORY[0x277CD3578];
      *(v22 + 104) = v13;
      *(v22 + 112) = v25;
      *(v22 + 120) = 1;
      v26 = *MEMORY[0x277CD3660];
      *(v22 + 144) = v13;
      *(v22 + 152) = v26;
      *(v22 + 184) = MEMORY[0x277D85048];
      *(v22 + 160) = v21;
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = v19;
      sub_23854B8F0(v22);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE68, &qword_23876E858);
      swift_arrayDestroy();
      v32 = sub_23875E910();

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v31, 0, v32);
      if (ThumbnailAtIndex)
      {
        v34 = ThumbnailAtIndex;

        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v34 scale:0 orientation:1.0];
        sub_23844C954(v37, v17);

        return v12;
      }

      sub_2386ED610();
      swift_allocError();
      *v36 = 1;
      swift_willThrow();

      v16 = v37;
      v14 = v38;
    }

    else
    {
      sub_2386ED610();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
    }

    sub_23844C954(v16, v17);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2386ED5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149E8, &qword_238781558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386ED610()
{
  result = qword_27DF149F0;
  if (!qword_27DF149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF149F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2386ED7B8()
{
  result = qword_27DF149F8;
  if (!qword_27DF149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF149F8);
  }

  return result;
}

id sub_2386ED80C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicAccountObject];
  *a2 = result;
  return result;
}

void sub_2386ED848(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = sub_23875EA80();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void *sub_2386ED8A0()
{
  sub_2387582B0();
  v0 = sub_238758290();
  v1 = sub_238758280();
  [v0 setPredicate_];

  [v0 setFetchBatchSize_];
  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath();
  *(v2 + 32) = sub_23875F040();
  v3 = sub_23875EC60();

  [v0 setSortDescriptors_];

  return v0;
}

void *sub_2386ED9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_238759780();
  v6 = sub_238759710();
  v7 = a3(a1, a2);
  [v6 setPredicate_];

  [v6 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath();
  *(v8 + 32) = sub_23875F040();
  v9 = sub_23875EC60();

  [v6 setSortDescriptors_];

  return v6;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2386EDB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2386EDB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2386EDC44@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A00, &unk_238781790);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  sub_2386EDF3C(&v18 - v5);
  v24 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v18 = v21[0];
  v19 = v22;
  v7 = swift_allocObject();
  v8 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = *(v1 + 80);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  v11 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(v1 + 64);
  *(v10 + 96) = *(v1 + 80);
  v12 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v12;
  sub_2384B57EC(v1, v21);
  sub_2384B57EC(v1, v21);
  type metadata accessor for SelectedTransactionsView();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
  v14 = sub_23875CE80();
  v15 = sub_2386EEE2C();
  v16 = sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v21[0] = v13;
  v21[1] = v14;
  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  sub_2386F3860(&qword_27DF14A18, type metadata accessor for SelectedTransactionsView);
  sub_23875DED0();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2386EDF3C@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v24[0] = sub_23875CE80();
  v2 = *(v24[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A08, &qword_2387817A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = sub_2386EE8F4();
  v12 = v11;
  v13 = swift_allocObject();
  v14 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  *(v13 + 96) = *(v1 + 80);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v27[0] = v10;
  v27[1] = v12;
  v24[4] = v27;
  v24[5] = 6650213;
  v24[6] = 0xE300000000000000;
  sub_2384B57EC(v1, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();

  v25 = *v1;
  v26 = *(v1 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v27, v16);
  v17 = *(v27[0] + 16);

  v18 = v17 == 0;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = &v9[*(v6 + 36)];
  *v21 = KeyPath;
  v21[1] = sub_238477BAC;
  v21[2] = v20;
  sub_23875CE70();
  sub_2386EEE2C();
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v22 = v24[0];
  sub_23875DB00();
  (*(v2 + 8))(v5, v22);
  return sub_238439884(v9, &qword_27DF14A08, &qword_2387817A0);
}

uint64_t sub_2386EE26C(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[8];
  v3 = a1[9];
  v24 = v3;
  v25 = v2;
  v17 = v2;
  v18 = v3;
  sub_23843981C(&v25, &v14, &qword_27DF0B558, &qword_238768210);
  sub_23843981C(&v24, &v14, &qword_27DF14A38, &qword_238781818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1B0();
  v4 = v14;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v22 = v7;
  v23 = v5;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  sub_2385B2CA0(&v23, &v14);

  sub_23843981C(&v22, &v14, &qword_27DF0B558, &qword_238768210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v21);
  sub_2386F2880(v4);

  v14 = v5;
  v15 = v6;
  v16 = v7;
  v20 = v21;
  sub_23875E2F0();
  sub_2385BBC90(&v23);

  sub_238439884(&v22, &qword_27DF0B558, &qword_238768210);
  v17 = v2;
  v18 = v3;
  sub_23875E1B0();
  v8 = v14;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v20 = v11;
  v21 = v9;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  sub_2385B2CA0(&v21, &v14);

  sub_23843981C(&v20, &v14, &qword_27DF0B5D0, &qword_23877B640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  MEMORY[0x23EE62DC0](&v13);
  sub_2384DC554(v8);

  v14 = v9;
  v15 = v10;
  v16 = v11;
  sub_23875E2F0();
  sub_2385BBC90(&v21);

  sub_238439884(&v20, &qword_27DF0B5D0, &qword_23877B640);
  v17 = v2;
  v18 = v3;
  sub_23875E1B0();

  v14 = v2;
  v15 = v3;
  sub_23875E1C0();
  sub_238439884(&v25, &qword_27DF0B558, &qword_238768210);
  sub_238439884(&v24, &qword_27DF14A38, &qword_238781818);
}

uint64_t sub_2386EE590@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A20, &qword_2387817A8);
  v18 = *(v4 - 8);
  v19 = v4;
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  sub_23875ED50();
  v17 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *a1;
  v23 = *(a1 + 2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v21, v8);
  v9 = v21;
  v21 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1D0();
  v10 = v22;
  v11 = v23;
  *&v22 = *(a1 + 10);
  v12 = type metadata accessor for SelectedTransactionsView();
  v13 = *(v12 + 24);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *&v21 = v9;
  swift_getKeyPath();
  sub_23843981C(&v22, v20, &qword_27DF0B5C0, &unk_2387683E0);
  sub_2386F3860(&unk_27DF12BC0, MEMORY[0x277CC9578]);

  sub_23875B690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23843A3E8(&qword_27DF14A28, &qword_27DF0B558, &qword_238768210);
  sub_23843A3E8(&qword_27DF14A30, &qword_27DF14A20, &qword_2387817A8);
  v14 = v19;
  v15 = sub_23875EC10();

  (*(v18 + 8))(v7, v14);

  *a2 = v15;
  *(a2 + *(v12 + 28)) = v22;
  return result;
}

uint64_t sub_2386EE8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v13 = *v0;
  v14 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v12, v2);
  v3 = *(v12 + 16);

  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
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

uint64_t sub_2386EEAB0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386F2B24();
  v3 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

uint64_t sub_2386EEB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SelectedTransactionsView();
  sub_23843981C(v1 + *(v12 + 24), v11, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
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

uint64_t sub_2386EED84@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_2386EDC44(a1);
}

uint64_t type metadata accessor for SelectedTransactionsView()
{
  result = qword_27DF14A40;
  if (!qword_27DF14A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2386EEE2C()
{
  result = qword_27DF14A10;
  if (!qword_27DF14A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A10);
  }

  return result;
}

uint64_t sub_2386EEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_2386EEFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for SelectedTransactionsView();
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v5;
  v66 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875CE00();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A98, &qword_2387818F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A90, &qword_2387818E8);
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A88, &qword_2387818E0);
  v54 = *(v58 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x28223BE20](v58);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A78, &qword_2387818D0);
  v59 = *(v21 - 8);
  v60 = v21;
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v21);
  v57 = &v51 - v23;
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v51 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AB0, &qword_2387818F8);
  sub_2386F3250();
  sub_23875D9C0();
  v68 = sub_2386EFA38();
  v69 = v25;
  v26 = sub_23843A3E8(&qword_27DF14AA0, &qword_27DF14A98, &qword_2387818F0);
  v27 = sub_2384397A8();
  v52 = a1;
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v10 + 8))(v13, v9);
  v31 = v61;
  v30 = v62;
  v32 = v53;
  (*(v61 + 104))(v53, *MEMORY[0x277CDDDC0], v62);
  v68 = v9;
  v69 = v29;
  v70 = v26;
  v71 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v56;
  sub_23875DE50();
  (*(v31 + 8))(v32, v30);
  (*(v55 + 8))(v17, v34);
  v68 = v34;
  v69 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v37 = v57;
  v36 = v58;
  sub_23875DE10();
  v38 = (*(v54 + 8))(v20, v36);
  MEMORY[0x28223BE20](v38);
  v39 = v52;
  *(&v51 - 2) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A80, &qword_2387818D8);
  v68 = v36;
  v69 = v35;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF14AA8, &qword_27DF14A80, &qword_2387818D8);
  v40 = v67;
  v41 = v60;
  sub_23875DEF0();
  (*(v59 + 8))(v37, v41);
  v42 = v66;
  sub_2386F32DC(v39, v66);
  v43 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v44 = swift_allocObject();
  sub_2386F399C(v42, v44 + v43, type metadata accessor for SelectedTransactionsView);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2386F3340;
  *(v45 + 24) = v44;
  v46 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A70, &qword_2387818C8) + 36));
  *v46 = sub_2384495F4;
  v46[1] = v45;
  v46[2] = 0;
  v46[3] = 0;
  sub_2386F32DC(v39, v42);
  v47 = swift_allocObject();
  sub_2386F399C(v42, v47 + v43, type metadata accessor for SelectedTransactionsView);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2386F3358;
  *(v48 + 24) = v47;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A58, &qword_2387818C0);
  v50 = (v40 + *(result + 36));
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_2386F3A04;
  v50[3] = v48;
  return result;
}

uint64_t sub_2386EF7D4(void *a1)
{
  v2 = type metadata accessor for SelectedTransactionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *a1;
  swift_getKeyPath();
  sub_2386F32DC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2386F399C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SelectedTransactionsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C588, &unk_23876AAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  sub_23843A3E8(&qword_27DF0C590, &qword_27DF0C588, &unk_23876AAB0);
  sub_2386F3860(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_238665440();
  sub_23875E370();
}

uint64_t sub_2386EFA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = *(*v0 + 16);
  v13[1] = *(v0 + 8);
  v14 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v13, v3);
  v4 = *(v13[0] + 16);

  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v2 - v4;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

uint64_t sub_2386EFBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AC0, &qword_238781910);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AC8, &qword_238781918);
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = v34 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AD0, &qword_238781920);
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v37 = v34 - v8;
  v9 = sub_23875D2A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AD8, &qword_238781928);
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v14 = v34 - v13;
  sub_23875ED50();
  v34[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_23875D240();
  MEMORY[0x28223BE20](v15);
  v34[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AE0, &qword_238781930);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AE8, &qword_238781938);
  v17 = sub_2386F33BC();
  v45 = v16;
  v46 = v17;
  swift_getOpaqueTypeConformance2();
  sub_23875C4D0();
  v18 = sub_23875D260();
  MEMORY[0x28223BE20](v18);
  v34[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AF8, &qword_238781940);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  v20 = sub_23875CE80();
  v21 = sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  v22 = sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v36;
  sub_23875C4D0();
  v24 = sub_23843A3E8(&qword_27DF14B00, &qword_27DF14AC8, &qword_238781918);
  v25 = v37;
  v26 = v40;
  MEMORY[0x23EE61E80](v23, v40, v24);
  (*(v38 + 8))(v23, v26);
  v27 = v42;
  v28 = *(v43 + 48);
  v29 = v35;
  (*(v11 + 16))(v42, v14, v35);
  v30 = v39;
  v31 = &v27[v28];
  v32 = v41;
  (*(v39 + 16))(v31, v25, v41);
  sub_23875D070();
  (*(v30 + 8))(v25, v32);
  (*(v11 + 8))(v14, v29);
}

uint64_t sub_2386F01B4(uint64_t a1)
{
  v2 = type metadata accessor for SelectedTransactionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14AE8, &qword_238781938);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[0] = sub_2386F1968();
  v16[1] = v9;
  sub_2386F32DC(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2386F399C(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SelectedTransactionsView);
  sub_2384397A8();
  sub_23875E230();
  v12 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  v14 = &v8[*(v5 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_23875D870();
  sub_2386F33BC();
  sub_23875DAF0();
  sub_238439884(v8, &qword_27DF14AE8, &qword_238781938);
}

uint64_t sub_2386F0418()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v0, 29, v1);
}

uint64_t sub_2386F048C()
{
  v1 = *(*v0 + 16);
  v2 = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  if (v1 <= 2)
  {
    v5 = sub_23875F600();
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x656C7069746C756DLL;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844CA94(v2, 29, v6);
}

uint64_t sub_2386F05BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v69 = a3;
  v3 = type metadata accessor for SelectedTransactionsView();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = v5;
  v62 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53[-v8];
  v10 = sub_238758F50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = v13;
  v59 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v53[-v15];
  v63 = type metadata accessor for TransactionView();
  v17 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v19 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12988, &qword_23877B700);
  v20 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v53[-v21];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  v22 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v53[-v23];
  sub_23875ED50();
  v64 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(v11 + 16);
  v25 = v16;
  v57 = v16;
  v26 = v71;
  v27 = v24(v25, v71, v10);
  v28 = v70;
  v29 = *(v70 + *(v3 + 28));
  MEMORY[0x28223BE20](v27);
  *&v53[-16] = v26;
  sub_23854CF80(sub_2386F38A8, v30, v9);
  v31 = sub_238758680();
  v32 = v9;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v55 = v32;
  v56 = v31;
  result = v34();
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v73 = *(v28 + 8);
    v74 = *(v28 + 16);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v72, v36);
    v54 = sub_23860E62C(v26, v72);

    v37 = v62;
    sub_2386F32DC(v28, v62);
    v38 = v59;
    v24(v59, v26, v10);
    v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v40 = (v61 + *(v11 + 80) + v39) & ~*(v11 + 80);
    v41 = swift_allocObject();
    sub_2386F399C(v37, v41 + v39, type metadata accessor for SelectedTransactionsView);
    v42 = *(v11 + 32);
    v42(v41 + v40, v38, v10);
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v43 = v63;
    v44 = *(v63 + 20);
    *&v19[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v42(&v19[v43[6]], v57, v10);
    (*(v33 + 32))(&v19[v43[7]], v55, v56);
    v19[v43[8]] = (v54 & 1) == 0;
    v45 = &v19[v43[9]];
    *v45 = sub_2386F38C8;
    v45[1] = v41;
    v46 = v43[10];
    v47 = *MEMORY[0x277CDFA00];
    v48 = sub_23875C880();
    (*(*(v48 - 8) + 104))(&v19[v46], v47, v48);
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v73 = qword_27DF2F920;

    v49 = sub_23875E2D0();
    v50 = v67;
    sub_2386F399C(v19, v67, type metadata accessor for TransactionView);
    *&v50[*(v68 + 36)] = v49;
    v51 = v65;
    sub_2384396E4(v50, v65, &qword_27DF12988, &qword_23877B700);
    v52 = &v51[*(v66 + 36)];
    *v52 = xmmword_23876A640;
    *(v52 + 1) = xmmword_23876A640;
    v52[32] = 0;
    sub_2384396E4(v51, v69, &qword_27DF12978, &unk_238781900);
  }

  return result;
}

uint64_t sub_2386F0CA4()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758640();
  sub_238758F40();
  v8 = sub_23875BC80();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);

  return v8 & 1;
}

void sub_2386F0E48(char a1, void *a2, uint64_t a3)
{
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v25 - v17;
  if (a1)
  {
    v20 = a2[2];
    v21 = a2[3];
    v29 = a2[1];
    v19 = v29;
    v30 = v20;
    v31 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v32);
    sub_2386F1FAC(a3, v18);
    sub_238439884(v18, &qword_27DF0C598, &unk_23877B770);
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v25 = v32;
    sub_23875E2F0();

    sub_2386F1104();
  }

  else
  {
    (*(v7 + 16))(v10, a3, v6, v16);
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    v29 = v22;
    v30 = v23;
    v31 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v32);
    sub_2387099C0(v13, v10);
    (*(v7 + 8))(v13, v6);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v25 = v32;
    sub_23875E2F0();
  }
}

void sub_2386F1104()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0xD000000000000011;
  v7 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785C50;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002387850C0;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v14 = sub_23875E910();

  [v13 subject:v0 sendEvent:v14];
}

uint64_t sub_2386F1340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v2 = sub_23875CE80();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SelectedTransactionsView();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v26 - v10;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  sub_2386F32DC(v28, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = sub_2386F399C(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SelectedTransactionsView);
  v34[0] = v17;
  v34[1] = v19;
  MEMORY[0x28223BE20](v22);
  *(&v26 - 4) = v34;
  *(&v26 - 3) = 0x72616D6B63656863;
  *(&v26 - 2) = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();

  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v23 = v30;
  v24 = v33;
  sub_23875DB00();
  (*(v32 + 8))(v5, v24);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_2386F1814()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386F1D08(1701736292, 0xE400000000000000);
  sub_2386EEB7C(v4);
  sub_23875C5F0();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_2386F1968()
{
  v10[1] = *(v0 + 8);
  v11 = *(v0 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](v10, v1);
  v2 = *(v10[0] + 16);

  if (v2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

uint64_t sub_2386F1AF8(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v9);
  v6 = *(v9 + 16);

  if (v6)
  {
    v13 = v2;
    v14 = v3;
    v15 = v4;

    MEMORY[0x23EE62DC0](&v12, v5);

    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_23875E2F0();
  }

  else
  {
    v7 = *a1;
    v13 = v2;
    v14 = v3;
    v15 = v4;

    MEMORY[0x23EE62DC0](&v12, v5);
    sub_2386F354C(v7);

    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_23875E2F0();

    sub_2386F1D08(0x7463656C65736564, 0xEB000000006C6C41);
  }
}

void sub_2386F1D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875EA50();
  v5 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = a1;
  v11 = *MEMORY[0x277D384B8];
  *(inited + 72) = a2;
  *(inited + 80) = v11;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002387850C0;
  v12 = v7;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v15;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

  v17 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v18 = sub_23875E910();

  [v17 subject:v4 sendEvent:v18];
}

uint64_t sub_2386F1F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14A58, &qword_2387818C0);
  sub_2386F2F90();
  return sub_23875C8F0();
}

uint64_t sub_2386F1FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2386F3860(&qword_27DF11878, MEMORY[0x277CC7678]);
  v35 = a1;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_2386F3860(&qword_27DF0D430, MEMORY[0x277CC7678]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23870CC7C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2386F2584(v16, MEMORY[0x277CC7678], &qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_2386F2298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2386F3860(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
  v35 = a1;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_2386F3860(&qword_27DF09538, MEMORY[0x277CC6F70]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23870CC54();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2386F2584(v16, MEMORY[0x277CC6F70], &qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_2386F2584(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17 = *v5;

    v18 = sub_23875F330();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v41 = (v18 + 1) & v16;
      v40 = v8[2];
      v46 = v8[9];
      v42 = v8 + 2;
      v19 = (v8 + 1);
      v20 = v12;
      v21 = v16;
      while (1)
      {
        v22 = v13;
        v23 = v46 * v15;
        v24 = v21;
        v40(v11, *(v20 + 48) + v46 * v15, v7);
        v25 = v20;
        v26 = *(v20 + 40);
        sub_2386F3860(v43, v44);
        v27 = sub_23875E950();
        (*v19)(v11, v7);
        v21 = v24;
        v28 = v27 & v24;
        if (a1 >= v41)
        {
          if (v28 < v41 || a1 < v28)
          {
LABEL_4:
            v20 = v25;
            goto LABEL_5;
          }
        }

        else if (v28 < v41 && a1 < v28)
        {
          goto LABEL_4;
        }

        v20 = v25;
        v31 = *(v25 + 48);
        v32 = v46 * a1;
        v33 = v31 + v46 * a1;
        v34 = v31 + v23 + v46;
        if (v46 * a1 < v23 || v33 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v21 = v24;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v32 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v21;
        v13 = v22;
        if (((*(v22 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v12;
  }

  v36 = *(v20 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v38;
    ++*(v20 + 36);
  }
}

void sub_2386F2880(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v7 = sub_238758F50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_2386F1FAC(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_238439884(v6, &qword_27DF0C598, &unk_23877B770);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t objectdestroyTm_32()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_2386F2B24()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  strcpy((inited + 64), "showSelected");
  v7 = *MEMORY[0x277D384B8];
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386F3860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v14 = sub_23875E910();

  [v13 subject:v0 sendEvent:v14];
}

void sub_2386F2D90()
{
  sub_2386F2F08(319, &qword_27DF14A50, MEMORY[0x277CC7678], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2386F2EA4();
    if (v1 <= 0x3F)
    {
      sub_2386F2F08(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2384DCD94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2386F2EA4()
{
  if (!qword_27DF0B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B558, &qword_238768210);
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B5A8);
    }
  }
}

void sub_2386F2F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386F2F90()
{
  result = qword_27DF14A60;
  if (!qword_27DF14A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A58, &qword_2387818C0);
    sub_2386F301C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A60);
  }

  return result;
}

unint64_t sub_2386F301C()
{
  result = qword_27DF14A68;
  if (!qword_27DF14A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A70, &qword_2387818C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A78, &qword_2387818D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A80, &qword_2387818D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A88, &qword_2387818E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A90, &qword_2387818E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A98, &qword_2387818F0);
    sub_23843A3E8(&qword_27DF14AA0, &qword_27DF14A98, &qword_2387818F0);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF14AA8, &qword_27DF14A80, &qword_2387818D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14A68);
  }

  return result;
}

unint64_t sub_2386F3250()
{
  result = qword_27DF14AB8;
  if (!qword_27DF14AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AB0, &qword_2387818F8);
    sub_238665440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14AB8);
  }

  return result;
}

uint64_t sub_2386F32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedTransactionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386F3358()
{
  v1 = *(type metadata accessor for SelectedTransactionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2386F048C();
}

unint64_t sub_2386F33BC()
{
  result = qword_27DF14AF0;
  if (!qword_27DF14AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14AE8, &qword_238781938);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14AF0);
  }

  return result;
}

uint64_t sub_2386F34D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelectedTransactionsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2386F354C(uint64_t a1)
{
  v2 = sub_238758F50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2, v8);
      sub_2387099C0(v10, v6);
      (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for SelectedTransactionsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + *(v1 + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386F37E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SelectedTransactionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2386F05BC(a1, v6, a2);
}

uint64_t sub_2386F3860(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2386F38C8(char a1)
{
  v3 = *(type metadata accessor for SelectedTransactionsView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_2386F0E48(a1, (v1 + v4), v7);
}

uint64_t sub_2386F399C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386F3A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v146 = a5;
  v174 = a4;
  v169 = a3;
  v160 = a2;
  v165 = a1;
  v147 = a6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0);
  v167 = *(v173 - 8);
  v6 = *(v167 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v171 = (&v139 - v9);
  MEMORY[0x28223BE20](v10);
  v170 = (&v139 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v145 = &v139 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC90, &qword_238774290);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v151 = &v139 - v17;
  v168 = sub_2387581D0();
  v18 = *(v168 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v168);
  v143 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v144 = &v139 - v22;
  MEMORY[0x28223BE20](v23);
  v157 = &v139 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v139 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v175 = &v139 - v30;
  v155 = sub_238758240();
  v154 = *(v155 - 1);
  v31 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v153 = (&v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_238758520();
  v33 = *(v141 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v141);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_238758270();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v142 = &v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v163 = &v139 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v139 - v44;
  v152 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  v46 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v48 = (&v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v139 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = v53;
  v54 = v53[7];
  v55 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v150 = v54;
  v156 = v55;
  v149 = v57;
  v148 = v56 + 56;
  (v57)(v52 + v54, 1, 1);
  v58 = v165;
  *v52 = sub_2387580C0();
  v52[1] = v59;
  v159 = v52;
  v164 = v38;
  v60 = *(v38 + 16);
  v166 = v37;
  v161 = v60;
  v162 = v38 + 16;
  v60(v45, v58, v37);
  if (*(v160 + 16))
  {
    v61 = v141;
    (*(v33 + 16))(v36, v160 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v141);
    v62 = sub_2387584C0();
    v64 = v63;
    (*(v33 + 8))(v36, v61);
    v65 = v62;
  }

  else
  {
    v65 = 0;
    v64 = 0;
  }

  v66 = *(v152 + 24);
  v67 = sub_238757F50();
  (*(*(v67 - 8) + 56))(v48 + v66, 1, 1, v67);
  v68 = v153;
  sub_238758250();
  v69 = sub_2387580C0();
  v71 = v70;
  (*(v154 + 8))(v68, v155);
  *v48 = v69;
  v48[1] = v71;
  v48[2] = v65;
  v48[3] = v64;
  v72 = v175;
  sub_238758260();
  v73 = *(v164 + 8);
  v74 = v166;
  v164 += 8;
  v155 = v73;
  v73(v45, v166);
  sub_2385309FC(v72, v48 + v66, &qword_27DF09AF8, &qword_238764438);
  v76 = v158;
  v75 = v159;
  sub_2386FAB68(v48, v159 + v158[5], type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel);
  v77 = v163;
  v78 = v165;
  v161(v163, v165, v74);
  sub_238673CC8(v77, v75 + v76[6]);
  result = sub_2387581E0();
  v80 = result;
  v81 = v168;
  v175 = result;
  if (v174)
  {
    v82 = *(result + 16);
    if (v82)
    {
      v83 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v84 = (v18 + 8);

      v85 = 0;
      while (v85 < *(v80 + 2))
      {
        (*(v18 + 16))(v27, v83 + *(v18 + 72) * v85, v81);
        v86 = sub_238758170();
        if (v87)
        {
          if (v86 == v169 && v87 == v174)
          {

            (*v84)(v27, v81);
            v80 = v175;
LABEL_21:
            result = swift_bridgeObjectRelease_n();
            v78 = v165;
            goto LABEL_22;
          }

          v88 = sub_23875F630();

          result = (*v84)(v27, v81);
          v80 = v175;
          if (v88)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = (*v84)(v27, v81);
          v80 = v175;
        }

        if (v82 == ++v85)
        {

          v78 = v165;
          v76 = v158;
          v75 = v159;
          goto LABEL_16;
        }
      }

      goto LABEL_38;
    }

LABEL_16:
  }

  if (!*(v80 + 2))
  {

    v89 = v150;
    sub_238439884(v75 + v150, &qword_27DF14B18, &unk_238781A20);
    v149(v75 + v89, 1, 1, v156);
    *(v75 + v76[8]) = MEMORY[0x277D84F90];
    v90 = v163;
    v161(v163, v78, v166);
    v91 = v151;
    (*(v18 + 56))(v151, 1, 1, v81);
    v92 = v76[9];
    v93 = v160;

    sub_2385BF324(v90, v93, v91, (v75 + v92));
    v94 = v93;
LABEL_36:
    v137 = v75 + v76[10];
    *v137 = sub_23870FED4(v94, 0);
    *(v137 + 8) = v138;
    *(v75 + v76[11]) = v146 & 1;
    sub_2386FB6C4(v75, v147, type metadata accessor for ExtractedOrderDetails.ViewModel);
    v155(v78, v166);
    return sub_2386FBEFC(v75, type metadata accessor for ExtractedOrderDetails.ViewModel);
  }

  v85 = 0;
LABEL_22:
  if (v85 >= *(v80 + 2))
  {
    goto LABEL_39;
  }

  v140 = v18;
  v95 = &v80[(*(v18 + 80) + 32) & ~*(v18 + 80)];
  v169 = *(v18 + 72);
  v96 = v18 + 16;
  v97 = *(v18 + 16);
  v98 = v157;
  v97(v157, &v95[v169 * v85], v81);
  v99 = v161;
  v161(v163, v78, v166);
  v100 = v144;
  v97(v144, v98, v81);
  v174 = v97;
  v154 = v96;
  v101 = v156[7];
  v102 = v145;
  v152 = &v145[v156[6]];
  v153 = &v145[v101];
  sub_2387581C0();
  v103 = v142;
  v99(v142, v163, v166);
  v104 = v143;
  v97(v143, v100, v81);
  v105 = v156;
  sub_238601310(v103, v104, v102 + v156[5]);
  v106 = sub_238758170();
  v107 = v152;
  *v152 = v106;
  *(v107 + 8) = v108;
  v109 = sub_238758140();
  v110 = v153;
  *v153 = v109;
  v110[1] = v111;
  v112 = v163;
  v113 = sub_2387581E0();
  v114 = v140;
  v115 = *(v140 + 8);
  v153 = (v140 + 8);
  v152 = v115;
  v115(v100, v81);
  v116 = v112;
  v117 = v112;
  v118 = v166;
  v155(v116, v166);
  v119 = *(v113 + 16);

  v120 = v102 + v105[8];
  *v120 = 0;
  *(v120 + 8) = v85;
  *(v120 + 16) = v119;
  *(v120 + 24) = 1;
  v149(v102, 0, 1, v105);
  v121 = v159;
  sub_2385309FC(v102, v159 + v150, &qword_27DF14B18, &unk_238781A20);
  v161(v117, v165, v118);
  v122 = v151;
  v174(v151, v157, v81);
  (*(v114 + 56))(v122, 0, 1, v81);
  v123 = v158[9];
  v124 = v160;

  result = sub_2385BF324(v117, v124, v122, (v121 + v123));
  v125 = *(v175 + 2);
  if (!v125)
  {
    v127 = MEMORY[0x277D84F90];
LABEL_35:

    MEMORY[0x28223BE20](v135);
    v78 = v165;
    *(&v139 - 2) = v165;
    v136 = sub_23857FC18(sub_2386FC690, (&v139 - 4), v127);

    (v152)(v157, v81);
    v76 = v158;
    v75 = v159;
    *(v159 + v158[8]) = v136;
    v94 = v160;
    goto LABEL_36;
  }

  v126 = 0;
  v127 = MEMORY[0x277D84F90];
  while (v126 < *(v175 + 2))
  {
    v128 = *(v173 + 48);
    v129 = v171;
    *v171 = v126;
    v174(v129 + v128, v95, v81);
    v130 = v129;
    v131 = v170;
    sub_2384396E4(v130, v170, &qword_27DF0EB10, &qword_2387774C0);
    if (*v131 == v85)
    {
      result = sub_238439884(v131, &qword_27DF0EB10, &qword_2387774C0);
    }

    else
    {
      sub_2384396E4(v131, v172, &qword_27DF0EB10, &qword_2387774C0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v127;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FED8C(0, *(v127 + 16) + 1, 1);
        v127 = v176;
      }

      v134 = *(v127 + 16);
      v133 = *(v127 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_2385FED8C(v133 > 1, v134 + 1, 1);
        v127 = v176;
      }

      *(v127 + 16) = v134 + 1;
      result = sub_2384396E4(v172, v127 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v134, &qword_27DF0EB10, &qword_2387774C0);
      v81 = v168;
    }

    ++v126;
    v95 += v169;
    if (v125 == v126)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_2386F4984(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v137 = a4;
  v150 = a2;
  v8 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v146 = *(v8 - 8);
  v147 = v8;
  v9 = *(v146 + 64);
  MEMORY[0x28223BE20](v8);
  v145 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v144 = v133 - v12;
  MEMORY[0x28223BE20](v13);
  v151 = v133 - v14;
  v15 = sub_23875ABE0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v133[1] = v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v149 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v134 = v133 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v133 - v27;
  v29 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v30 = *(v19 + 56);
  v139 = *(v29 + 28);
  v140 = (v19 + 56);
  v148 = v18;
  v138 = v30;
  v30(a5 + v139, 1, 1, v18);
  v136 = [a1 orderContent];
  v31 = sub_23875A5E0();
  v32 = [a1 trackedOrderIdentifier];
  v33 = sub_23875EA80();
  v35 = v34;

  *a5 = v33;
  a5[1] = v35;
  v142 = v29;
  v143 = a5;
  v36 = (a5 + *(v29 + 20));
  v37 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v38 = sub_238757F50();
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  v39 = a1;
  v40 = [v39 orderContent];
  v41 = [v40 merchantDisplayName];

  v42 = sub_23875EA80();
  v44 = v43;

  *v36 = v42;
  v36[1] = v44;
  v45 = [v39 merchantEmailAddress];
  if (v45)
  {
    v46 = v45;
    v47 = sub_23875EA80();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v36[2] = v47;
  v36[3] = v49;
  v50 = [v39 orderContent];
  sub_23875A600();

  sub_2385309FC(v28, v36 + v37, &qword_27DF09AF8, &qword_238764438);
  v51 = v142;
  v52 = v142[6];
  v53 = v39;
  v54 = v143;
  v141 = v53;
  sub_2386732AC(v53, v143 + v52);
  v55 = v31 >> 62;
  if (!a3)
  {
LABEL_32:
    v67 = v148;
    if (v55)
    {
LABEL_66:
      if (sub_23875F3A0() > 0)
      {
        goto LABEL_34;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
LABEL_34:
      v135 = v55;
      if ((v31 & 0xC000000000000001) != 0)
      {
        goto LABEL_90;
      }

      v57 = 0;
      v51 = v31 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_36;
    }

    v105 = v139;
    sub_238439884(v54 + v139, &qword_27DF14B18, &unk_238781A20);
    v138(v54 + v105, 1, 1, v67);
    *(v54 + *(v51 + 32)) = MEMORY[0x277D84F90];
    sub_2385BEF3C(v141, 0, (v54 + *(v51 + 36)));
    goto LABEL_87;
  }

  if (v55)
  {
    goto LABEL_30;
  }

  v56 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_7:
  v135 = v55;
  v55 = v31 & 0xC000000000000001;
  v51 = v31 & 0xFFFFFFFFFFFFFF8;

  v57 = 0;
  while (1)
  {
    if (v55)
    {
      v58 = MEMORY[0x23EE63F70](v57, v31);
    }

    else
    {
      if (v57 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v58 = *(v31 + 8 * v57 + 32);
    }

    v54 = v58;
    v59 = [v58 trackingNumber];
    if (v59)
    {
      break;
    }

    v66 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v56 = sub_23875F3A0();
      if (!v56)
      {
        goto LABEL_31;
      }

      goto LABEL_7;
    }

LABEL_22:
    ++v57;
    if (v66 == v56)
    {
      swift_bridgeObjectRelease_n();
      v51 = v142;
      v54 = v143;
      v55 = v135;
      goto LABEL_32;
    }
  }

  v60 = v59;
  v61 = sub_23875EA80();
  v63 = v62;

  if (v61 != v150 || v63 != a3)
  {
    v65 = sub_23875F630();

    if (v65)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

    v66 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  swift_bridgeObjectRelease_n();

LABEL_26:
  v67 = v148;
  if (v55)
  {
    goto LABEL_91;
  }

LABEL_36:
  if (v57 >= *(v51 + 16))
  {
    goto LABEL_89;
  }

  v68 = *(v31 + 8 * v57 + 32);
  v69 = 1;
  while (2)
  {
    v70 = v141;
    v71 = v68;
    sub_23875ABF0();
    v72 = v149;
    sub_2387581A0();
    v73 = *(v67 + 20);
    v74 = v70;
    v75 = v71;
    sub_2386006B8(v74, v75, &v72[v73]);
    v76 = [v75 trackingNumber];
    if (v76)
    {
      v77 = v76;
      v78 = sub_23875EA80();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = v143;
    v82 = &v149[*(v67 + 24)];
    *v82 = v78;
    v82[1] = v80;
    v83 = [v75 carrierName];
    if (v83)
    {
      v84 = v83;
      v85 = sub_23875EA80();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0;
    }

    v88 = v134;
    v89 = &v149[*(v67 + 28)];
    *v89 = v85;
    v89[1] = v87;
    v90 = [v74 orderContent];
    v91 = sub_23875A5E0();

    if (v91 >> 62)
    {
      v92 = sub_23875F3A0();
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v149;
    v94 = &v149[*(v67 + 32)];
    *v94 = 0;
    *(v94 + 1) = v57;
    *(v94 + 2) = v92;
    v94[24] = 1;
    sub_2386FAB68(v93, v88, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    v138(v88, 0, 1, v67);
    sub_2385309FC(v88, v81 + v139, &qword_27DF14B18, &unk_238781A20);
    v95 = v142[9];
    v96 = v74;
    v140 = v75;
    v150 = v96;
    sub_2385BEF3C(v96, v75, (v81 + v95));
    if (v135)
    {
      v55 = v31 & 0xFFFFFFFFFFFFFF8;
      v97 = sub_23875F3A0();
      if (v97)
      {
        goto LABEL_48;
      }

      goto LABEL_70;
    }

    v55 = v31 & 0xFFFFFFFFFFFFFF8;
    v97 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v97)
    {
LABEL_70:
      v148 = MEMORY[0x277D84F90];
      goto LABEL_71;
    }

LABEL_48:
    v51 = 0;
    v148 = MEMORY[0x277D84F90];
    do
    {
      v54 = v51;
      while (1)
      {
        if (v69)
        {
          if (v54 >= *(v55 + 16))
          {
            goto LABEL_65;
          }

          v98 = *(v31 + 8 * v54 + 32);
        }

        else
        {
          v98 = MEMORY[0x23EE63F70](v54, v31);
        }

        v99 = v98;
        v51 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v57 != v54)
        {
          break;
        }

        ++v54;
        if (v51 == v97)
        {
          goto LABEL_71;
        }
      }

      v100 = v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v100;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEE30(0, *(v100 + 16) + 1, 1);
        v100 = v152;
      }

      v67 = *(v100 + 16);
      v102 = *(v100 + 24);
      v103 = (v67 + 1);
      if (v67 >= v102 >> 1)
      {
        v149 = (v67 + 1);
        sub_2385FEE30((v102 > 1), v67 + 1, 1);
        v103 = v149;
        v100 = v152;
      }

      *(v100 + 16) = v103;
      v148 = v100;
      v104 = v100 + 16 * v67;
      *(v104 + 32) = v54;
      *(v104 + 40) = v99;
    }

    while (v51 != v97);
LABEL_71:

    v106 = v148;
    v149 = *(v148 + 16);
    if (v149)
    {
      v107 = 0;
      v108 = (v148 + 40);
      v109 = MEMORY[0x277D84F90];
      while (v107 < *(v106 + 16))
      {
        v67 = *(v108 - 1);
        v110 = *v108;
        v111 = v150;
        v112 = v110;
        v113 = [v112 trackingNumber];
        if (v113)
        {
          v114 = v113;
          v115 = sub_23875EA80();
          v31 = v116;

          v117 = [v111 orderContent];
          v118 = sub_23875A5E0();

          if (v118 >> 62)
          {
            v119 = sub_23875F3A0();
          }

          else
          {
            v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v120 = v145;
          *v145 = 0;
          *(v120 + 8) = v67;
          *(v120 + 16) = v119;
          *(v120 + 24) = 1;
          v121 = v147;
          sub_2386006B8(v111, v112, v120 + *(v147 + 20));

          v122 = (v120 + *(v121 + 24));
          *v122 = v115;
          v122[1] = v31;
          v123 = v144;
          sub_2386FAB68(v120, v144, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
          sub_2386FAB68(v123, v151, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_238498684(0, v109[2] + 1, 1, v109);
          }

          v106 = v148;
          v125 = v109[2];
          v124 = v109[3];
          if (v125 >= v124 >> 1)
          {
            v109 = sub_238498684(v124 > 1, v125 + 1, 1, v109);
          }

          v109[2] = v125 + 1;
          sub_2386FAB68(v151, v109 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v125, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        }

        else
        {
        }

        ++v107;
        v108 += 2;
        if (v149 == v107)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v57 = 0;
LABEL_91:
      v68 = MEMORY[0x23EE63F70](v57, v31);
      v69 = 0;
      continue;
    }

    break;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_86:

  v51 = v142;
  v54 = v143;
  *(v143 + v142[8]) = v109;
LABEL_87:
  v126 = (v54 + *(v51 + 40));
  v127 = v141;
  v128 = sub_238759420();
  v129 = sub_238759470();
  v130 = sub_23870E94C(v128, v129, 0);
  v132 = v131;

  *v126 = v130;
  v126[8] = v132;
  *(v54 + *(v51 + 44)) = v137 & 1;
}

uint64_t sub_2386F5604@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v26 = sub_23875CE00();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B50, &qword_238781AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B58, &qword_238781AD8);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v31 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B60, &qword_238781AE0);
  sub_23843A3E8(&qword_27DF14B68, &qword_27DF14B60, &qword_238781AE0);
  sub_23875C410();
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_23875DFB0();
  v17 = sub_23875D780();
  v18 = &v9[*(v6 + 36)];
  *v18 = v16;
  v18[8] = v17;
  v19 = v26;
  (*(v2 + 104))(v5, *MEMORY[0x277CDDDC0], v26);
  v20 = sub_2386FAF38();
  sub_23875DE50();
  (*(v2 + 8))(v5, v19);
  sub_238439884(v9, &qword_27DF14B50, &qword_238781AD0);
  v30 = v25[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B88, &qword_238781AF8);
  v32 = v6;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B90, &qword_238781B00);
  v22 = sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00);
  v32 = v21;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_23875DEF0();
  return (*(v28 + 8))(v14, v23);
}

uint64_t sub_2386F59DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BE8, &unk_238781BC0);
  sub_2386F5AB0(a1, a2 + *(v4 + 44));
}

uint64_t sub_2386F5AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D750, &unk_23876D850);
  v126 = *(v128 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v124 = &v116 - v4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D758, &qword_238781BD0);
  v127 = *(v129 - 8);
  v5 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v125 = &v116 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D928, &qword_23876D998);
  v146 = *(v7 - 8);
  v147 = v7;
  v8 = *(v146 + 64);
  MEMORY[0x28223BE20](v7);
  v123 = &v116 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D760, &qword_23876D860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = &v116 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BF0, &qword_238781BD8);
  v142 = *(v145 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v145);
  v139 = &v116 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BF8, &qword_238781BE0);
  v143 = *(v144 - 8);
  v17 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v140 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C00, &qword_238781BE8);
  v148 = *(v19 - 8);
  v149 = v19;
  v20 = *(v148 + 64);
  MEMORY[0x28223BE20](v19);
  v156 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v161 = &v116 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C08, &qword_238781BF0);
  v119 = *(v121 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v117 = &v116 - v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C10, &qword_238781BF8);
  v120 = *(v122 - 8);
  v26 = *(v120 + 64);
  MEMORY[0x28223BE20](v122);
  v118 = &v116 - v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C18, &qword_238781C00);
  v137 = *(v138 - 8);
  v28 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v116 = &v116 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C20, &qword_238781C08);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v155 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v154 = &v116 - v34;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C28, &qword_238781C10);
  v132 = *(v134 - 8);
  v35 = *(v132 + 64);
  MEMORY[0x28223BE20](v134);
  v37 = &v116 - v36;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C30, &qword_238781C18);
  v133 = *(v135 - 8);
  v38 = *(v133 + 64);
  MEMORY[0x28223BE20](v135);
  v131 = &v116 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C38, &qword_238781C20);
  v152 = *(v40 - 8);
  v153 = v40;
  v41 = v152[8];
  MEMORY[0x28223BE20](v40);
  v160 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v159 = &v116 - v44;
  v45 = type metadata accessor for ExtractedOrderDetails(0);
  v130 = *(v45 - 8);
  v46 = *(v130 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C40, &qword_238781C28);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v151 = &v116 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v162 = &v116 - v52;
  sub_23875ED50();
  v141 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v136 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_2386FB6C4(a1 + *(v136 + 20), v162, type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel);
  v53 = sub_23875E4A0();
  v55 = v54;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386FB6C4(a1, &v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v56 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v57 = swift_allocObject();
  sub_2386FAB68(v47, v57 + v56, type metadata accessor for ExtractedOrderDetails);

  v59 = (v162 + *(v48 + 36));
  *v59 = sub_2386FB72C;
  v59[1] = v57;
  v59[2] = v53;
  v59[3] = v55;
  MEMORY[0x28223BE20](v58);
  *(&v116 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C48, &qword_238781C30);
  sub_2386FB74C();
  sub_23875D9C0();
  v60 = sub_23843A3E8(&qword_27DF14CB8, &qword_27DF14C28, &qword_238781C10);
  v61 = v131;
  v62 = v134;
  sub_23875DB70();
  (*(v132 + 8))(v37, v62);
  v163 = v62;
  v164 = v60;
  v63 = 1;
  swift_getOpaqueTypeConformance2();
  v64 = v135;
  sub_23875DD80();
  v65 = (*(v133 + 8))(v61, v64);
  v66 = v136;
  if (*(*(a1 + *(v136 + 32)) + 16))
  {
    MEMORY[0x28223BE20](v65);
    *(&v116 - 2) = v67;
    *(&v116 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CC0, &qword_238781C68);
    sub_2386FBB84();
    v68 = v117;
    sub_23875D9C0();
    v69 = sub_23843A3E8(&qword_27DF14D10, &qword_27DF14C08, &qword_238781BF0);
    v70 = v118;
    v71 = v121;
    sub_23875DB70();
    (*(v119 + 8))(v68, v71);
    v163 = v71;
    v164 = v69;
    swift_getOpaqueTypeConformance2();
    v72 = v116;
    v73 = v122;
    sub_23875DD80();
    (*(v120 + 8))(v70, v73);
    v74 = v137;
    v75 = v154;
    v76 = v138;
    (*(v137 + 32))(v154, v72, v138);
    v63 = 0;
  }

  else
  {
    v75 = v154;
    v76 = v138;
    v74 = v137;
  }

  v77 = 1;
  v78 = (*(v74 + 56))(v75, v63, 1, v76);
  MEMORY[0x28223BE20](v78);
  *(&v116 - 2) = a1;
  type metadata accessor for ExtractedOrderDetailsInfo(0);
  sub_2386FC648(&qword_27DF14D18, type metadata accessor for ExtractedOrderDetailsInfo);
  v79 = v139;
  sub_23875D9C0();
  v80 = sub_23843A3E8(&qword_27DF14D20, &qword_27DF14BF0, &qword_238781BD8);
  v81 = v140;
  v82 = v145;
  sub_23875DB70();
  (*(v142 + 8))(v79, v82);
  v163 = v82;
  v164 = v80;
  swift_getOpaqueTypeConformance2();
  v83 = v144;
  sub_23875DD80();
  v84 = (*(v143 + 8))(v81, v83);
  v85 = a1 + *(v66 + 40);
  v86 = v75;
  if (*v85)
  {
    v87 = *(v85 + 8);
    MEMORY[0x28223BE20](v84);
    *(&v116 - 2) = v88;
    *(&v116 - 8) = v89 & 1;
    sub_2385328A4();
    v90 = v124;
    sub_23875D9C0();
    v91 = sub_23843A3E8(&qword_27DF0D948, &qword_27DF0D750, &unk_23876D850);
    v92 = v125;
    v93 = v128;
    sub_23875DB70();
    (*(v126 + 8))(v90, v93);
    v163 = v93;
    v164 = v91;
    swift_getOpaqueTypeConformance2();
    v94 = v123;
    v95 = v129;
    sub_23875DD80();
    (*(v127 + 8))(v92, v95);
    v96 = v146;
    v97 = v157;
    v98 = v94;
    v99 = v147;
    (*(v146 + 32))(v157, v98, v147);
    v77 = 0;
  }

  else
  {
    v97 = v157;
    v96 = v146;
    v99 = v147;
  }

  (*(v96 + 56))(v97, v77, 1, v99);
  v100 = v151;
  sub_23843981C(v162, v151, &qword_27DF14C40, &qword_238781C28);
  v101 = v153;
  v102 = v152[2];
  v102(v160, v159, v153);
  v103 = v155;
  sub_23843981C(v86, v155, &qword_27DF14C20, &qword_238781C08);
  v105 = v148;
  v104 = v149;
  v106 = *(v148 + 16);
  v106(v156, v161, v149);
  sub_23843981C(v97, v158, &qword_27DF0D760, &qword_23876D860);
  v107 = v150;
  sub_23843981C(v100, v150, &qword_27DF14C40, &qword_238781C28);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D28, &qword_238781C90);
  v102((v107 + v108[12]), v160, v101);
  v109 = v107 + v108[16];
  *v109 = 0x4028000000000000;
  *(v109 + 8) = 0;
  sub_23843981C(v103, v107 + v108[20], &qword_27DF14C20, &qword_238781C08);
  v110 = v156;
  v106((v107 + v108[24]), v156, v104);
  v111 = v158;
  sub_23843981C(v158, v107 + v108[28], &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v157, &qword_27DF0D760, &qword_23876D860);
  v112 = *(v105 + 8);
  v112(v161, v104);
  sub_238439884(v154, &qword_27DF14C20, &qword_238781C08);
  v113 = v153;
  v114 = v152[1];
  v114(v159, v153);
  sub_238439884(v162, &qword_27DF14C40, &qword_238781C28);
  sub_238439884(v111, &qword_27DF0D760, &qword_23876D860);
  v112(v110, v104);
  sub_238439884(v155, &qword_27DF14C20, &qword_238781C08);
  v114(v160, v113);
  sub_238439884(v151, &qword_27DF14C40, &qword_238781C28);
}

uint64_t sub_2386F6E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v3 = type metadata accessor for ExtractedOrderDetails(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  v20 = sub_23875E020();
  sub_2386FB6C4(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_2386FAB68(v6, v22 + v21, type metadata accessor for ExtractedOrderDetails);
  v23 = (v22 + ((v21 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v15;
  v23[2] = v17;
  v23[3] = v19;
  v26[7] = v20;
  v26[8] = sub_2386FC4DC;
  v26[9] = v22;
  v26[10] = 0;
  v26[11] = 0;
  v26[3] = v13;
  v26[4] = v15;
  v26[5] = v17;
  v26[6] = v19;
  sub_2386FB6C4(a1, v6, type metadata accessor for ExtractedOrderDetails);
  v24 = swift_allocObject();
  sub_2386FAB68(v6, v24 + v21, type metadata accessor for ExtractedOrderDetails);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2386FC648(&qword_27DF0C7A0, type metadata accessor for CGRect);
  sub_23875DF10();
}

uint64_t sub_2386F71D4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v3 = v2[3];
  v4 = v2[1];
  v18 = v2[2];
  v19 = v3;
  v5 = v2[3];
  v20 = v2[4];
  v6 = v2[1];
  v16 = *v2;
  v17 = v6;
  v14 = v2[4];
  v21 = *(v2 + 10);
  v15 = *(v2 + 10);
  sub_23843981C(&v16, v22, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v8 = v16;
  v9 = v17;
  sub_23875E1C0();
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  sub_238439884(v22, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_2386F73A8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = a2[1];
  v11 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24 = v4[4];
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  v18 = v4[4];
  v25 = *(v4 + 10);
  v19 = *(v4 + 10);
  sub_23843981C(&v20, v26, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  sub_23875E1C0();
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27 = v17;
  v26[0] = v12;
  v26[1] = v13;
  sub_238439884(v26, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_2386F7570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C70, &qword_238781C40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C60, &qword_238781C38);
  v17 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = v43 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C48, &qword_238781C30);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CA0, &unk_238781C58);
  sub_2386FBA90();
  sub_23875E3D0();
  sub_23875CE90();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14C80, &qword_238781C48) + 36);
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
  v29 = v26 + *(type metadata accessor for ExtractedOrderDetails(0) + 24);
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
  sub_2384396E4(v16, v47, &qword_27DF14C70, &qword_238781C40);
  v37 = v36 + *(v46 + 36);
  *v37 = 0x4028000000000000;
  *(v37 + 8) = v35;
  *(v37 + 16) = 0x4028000000000000;
  *(v37 + 24) = v35;
  *(v37 + 32) = 0;
  v38 = sub_23875D000();
  v39 = v36;
  v40 = v44;
  sub_2384396E4(v39, v44, &qword_27DF14C60, &qword_238781C38);
  v41 = (v40 + *(v45 + 36));
  *v41 = v38;
  v41[1] = sub_23843480C;
  v41[2] = 0;
  sub_2384396E4(v40, v52, &qword_27DF14C48, &qword_238781C30);
}

uint64_t sub_2386F7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - v6;
  v41 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D50, &qword_238781D10);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - v11;
  v40 = type metadata accessor for ExtractedOrderDetailsNoFulfillments(0);
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - v17;
  v19 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_23843981C(a1 + *(v24 + 28), v18, &qword_27DF14B18, &unk_238781A20);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_238439884(v18, &qword_27DF14B18, &unk_238781A20);
    sub_2386FB6C4(a1 + *(v24 + 24), v14, type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel);
    v25 = *(v40 + 20);
    *&v14[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386FB6C4(v14, v38, type metadata accessor for ExtractedOrderDetailsNoFulfillments);
    swift_storeEnumTagMultiPayload();
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments);
    sub_23875D1B0();
    v26 = type metadata accessor for ExtractedOrderDetailsNoFulfillments;
    v27 = v14;
  }

  else
  {
    sub_2386FAB68(v18, v23, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    sub_2386FB6C4(v23, v9, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
    v28 = v41;
    v29 = *(v41 + 20);
    *&v9[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v30 = &v9[*(v28 + 24)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = *(v28 + 28);
    v32 = sub_23875B940();
    v33 = v35;
    (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
    sub_23843981C(v33, v36, &qword_27DF0D040, &qword_2387676A0);
    sub_23875E1A0();
    sub_238439884(v33, &qword_27DF0D040, &qword_2387676A0);
    sub_2386FB6C4(v9, v38, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments);
    sub_23875D1B0();
    sub_2386FBEFC(v9, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    v26 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel;
    v27 = v23;
  }

  return sub_2386FBEFC(v27, v26);
}

uint64_t sub_2386F80F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetails(0);
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

  v10[1] = a1;
  swift_getKeyPath();
  sub_2386FB6C4(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2386FAB68(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ExtractedOrderDetails);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D30, &qword_238781CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CD8, &qword_238781C70);
  sub_23843A3E8(&qword_27DF14D38, &qword_27DF14D30, &qword_238781CB8);
  sub_2386FBC08();
  sub_23875E370();
}

uint64_t sub_2386F8344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v18 - 2) = a2;
  *(&v18 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D08, &qword_238781C88);
  sub_23843A3E8(&qword_27DF14D00, &qword_27DF14D08, &qword_238781C88);
  sub_23875E3D0();
  sub_23875CE90();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CE8, &qword_238781C78) + 36);
  (*(v7 + 16))(a3 + v12, v10, v6);
  v13 = *(v7 + 56);
  v13(a3 + v12, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14CD8, &qword_238781C70) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v15 + v16, v10, v6);
  v13(v15 + v16, 0, 1, v6);

  *v15 = KeyPath;
  return result;
}

uint64_t sub_2386F85E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D40, &unk_238781CF0);
  return sub_2386F8648(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_2386F8648@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v47 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment(0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v15;
  v16 = type metadata accessor for OrderNavigationDestination(0);
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D980, &qword_23876DA58);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for ExtractedOrderDetails.ViewModel(0) + 44)))
  {
    (*(v45 + 56))(v26, 1, 1, v13);
    v27 = v48;
  }

  else
  {
    v29 = *a1;
    v28 = a1[1];
    v30 = *(type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0) + 24);
    v42 = v13;
    v27 = v48;
    v31 = (v48 + v30);
    v32 = *v31;
    v33 = v31[1];
    *v19 = v29;
    v19[1] = v28;
    v19[2] = v32;
    v19[3] = v33;
    swift_storeEnumTagMultiPayload();
    sub_2386FB6C4(v19, v12, type metadata accessor for OrderNavigationDestination);
    (*(v43 + 56))(v12, 0, 1, v16);
    sub_2386FC648(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

    v34 = v44;
    sub_23875C760();
    sub_2386FBEFC(v19, type metadata accessor for OrderNavigationDestination);
    v35 = v42;
    *(v34 + *(v42 + 36)) = 0;
    sub_2384396E4(v34, v26, &qword_27DF0BC20, &qword_238769430);
    (*(v45 + 56))(v26, 0, 1, v35);
  }

  sub_2386FB6C4(v27, v8, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
  v36 = *(v47 + 20);
  *&v8[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  sub_23843981C(v26, v23, &qword_27DF0D980, &qword_23876DA58);
  v37 = v50;
  sub_2386FB6C4(v8, v50, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  v38 = v49;
  sub_23843981C(v23, v49, &qword_27DF0D980, &qword_23876DA58);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D48, &unk_238781D00);
  sub_2386FB6C4(v37, v38 + *(v39 + 48), type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_2386FBEFC(v8, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_238439884(v26, &qword_27DF0D980, &qword_23876DA58);
  sub_2386FBEFC(v37, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment);
  sub_238439884(v23, &qword_27DF0D980, &qword_23876DA58);
}

uint64_t sub_2386F8C04()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2386F8C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  sub_2386FB6C4(a1 + *(v4 + 36), a2, type metadata accessor for ExtractedOrderDetailsInfo.ViewModel);
}

uint64_t sub_2386F8D60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_2386F8E3C(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B90, &qword_238781B00);
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

  v9 = sub_23875D290();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BA0, &qword_238781B08);
  sub_2386FB02C();
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_2386F9080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderDetails(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BC0, &qword_238781B20) + 44);
  *v6 = sub_23875CE60();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BC8, &unk_238781B28);
  sub_2386F934C(a1, v6 + *(v7 + 44));

  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386FB6C4(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v11 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v12 = swift_allocObject();
  sub_2386FAB68(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExtractedOrderDetails);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BA0, &qword_238781B08);
  v14 = (a2 + *(result + 36));
  *v14 = sub_2386FB110;
  v14[1] = v12;
  v14[2] = v8;
  v14[3] = v10;
  return result;
}

uint64_t sub_2386F934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v53 = sub_23875DFD0();
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v49 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BD0, &qword_238781B38);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v56 = &v49 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BD8, &qword_238781B40);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v49 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14BE0, &qword_238781B48);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v49 - v14;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = (a1 + *(type metadata accessor for ExtractedOrderDetails.ViewModel(0) + 20));
  v17 = *v15;
  v16 = v15[1];
  v50 = a1;
  v19 = v15[2];
  v18 = v15[3];
  *v71 = 0;
  v71[8] = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v20 = v72[8];
  v21 = *&v72[16];
  *(v8 + 4) = *v72;
  v8[40] = v20;
  *(v8 + 6) = v21;
  *v71 = 0;
  v71[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v22 = v72[8];
  v23 = *&v72[16];
  *(v8 + 7) = *v72;
  v8[64] = v22;
  *(v8 + 9) = v23;
  v24 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) + 32);
  *&v8[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v8 = v17;
  *(v8 + 1) = v16;
  *(v8 + 2) = v19;
  *(v8 + 3) = v18;
  (*(v51 + 104))(v5, *MEMORY[0x277CE0EE0], v53);
  v25 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v27 = &v8[*(v52 + 36)];
  v28 = type metadata accessor for OrderImageStyleModifier();
  *&v27[*(v28 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v27[*(v28 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v27 = xmmword_2387692C0;
  *(v27 + 2) = 0;
  v27[24] = 1;
  *(v27 + 4) = v25;
  v27[40] = 0;
  v29 = v50 + *(type metadata accessor for ExtractedOrderDetails(0) + 20);
  v30 = *(v29 + 48);
  *&v72[32] = *(v29 + 32);
  *&v72[48] = v30;
  *&v72[64] = *(v29 + 64);
  *&v72[80] = *(v29 + 80);
  v31 = *(v29 + 16);
  *v72 = *v29;
  *&v72[16] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  if ((v71[32] & 1) != 0 || (v71[72] & 1) != 0 || (v32 = 1.0, *&v71[48] + *&v71[64] >= *&v71[8] + *&v71[24]))
  {
    v32 = 0.0;
  }

  v33 = v56;
  sub_2384396E4(v8, v56, &qword_27DF09C70, &unk_238769510);
  *(v33 + *(v54 + 36)) = v32;
  v34 = *(v29 + 48);
  *&v72[32] = *(v29 + 32);
  *&v72[48] = v34;
  *&v72[64] = *(v29 + 64);
  *&v72[80] = *(v29 + 80);
  v35 = *(v29 + 16);
  *v72 = *v29;
  *&v72[16] = v35;
  sub_23875E1B0();
  v36 = 0;
  if ((v71[32] & 1) == 0 && ((v71[72] & 1) != 0 || *&v71[48] + *&v71[64] >= *&v71[8] + *&v71[24]))
  {
    v36 = *&v71[24];
  }

  v37 = v58;
  v38 = sub_2384396E4(v33, v58, &qword_27DF14BD0, &qword_238781B38);
  v39 = (v37 + *(v55 + 36));
  *v39 = 0;
  v39[1] = v36;
  v40 = MEMORY[0x23EE62FD0](v38, 0.5, 1.0, 0.0);
  v41 = *(v29 + 48);
  *&v72[32] = *(v29 + 32);
  *&v72[48] = v41;
  *&v72[64] = *(v29 + 64);
  *&v72[80] = *(v29 + 80);
  v42 = *(v29 + 16);
  *v72 = *v29;
  *&v72[16] = v42;
  sub_23875E1B0();
  v66[0] = v70[0];
  *(v66 + 9) = *(v70 + 9);
  v64 = v68;
  v65 = v69;
  v63 = v67;
  *v71 = v40;
  *&v71[40] = v69;
  *&v71[56] = v70[0];
  *&v71[65] = *(v70 + 9);
  *&v71[8] = v67;
  *&v71[24] = v68;
  v43 = v60;
  sub_2384396E4(v37, v60, &qword_27DF14BD8, &qword_238781B40);
  v44 = v43 + *(v57 + 36);
  v45 = *&v71[48];
  *(v44 + 32) = *&v71[32];
  *(v44 + 48) = v45;
  *(v44 + 64) = *&v71[64];
  v46 = *&v71[16];
  *v44 = *v71;
  *(v44 + 16) = v46;
  v47 = v63;
  *&v72[24] = v64;
  *&v72[40] = v65;
  *&v72[56] = v66[0];
  *&v72[65] = *(v66 + 9);
  *(v44 + 80) = v71[80];
  *v72 = v40;
  *&v72[8] = v47;
  sub_23843981C(v71, &v62, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v72, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v43, v61, &qword_27DF14BE0, &qword_238781B48);
}

uint64_t sub_2386F9A90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v3 = type metadata accessor for ExtractedOrderDetails(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  v20 = sub_23875E020();
  sub_2386FB6C4(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetails);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_2386FAB68(v6, v22 + v21, type metadata accessor for ExtractedOrderDetails);
  v23 = (v22 + ((v21 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v15;
  v23[2] = v17;
  v23[3] = v19;
  v26[7] = v20;
  v26[8] = sub_2386FB128;
  v26[9] = v22;
  v26[10] = 0;
  v26[11] = 0;
  v26[3] = v13;
  v26[4] = v15;
  v26[5] = v17;
  v26[6] = v19;
  sub_2386FB6C4(a1, v6, type metadata accessor for ExtractedOrderDetails);
  v24 = swift_allocObject();
  sub_2386FAB68(v6, v24 + v21, type metadata accessor for ExtractedOrderDetails);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2386FC648(&qword_27DF0C7A0, type metadata accessor for CGRect);
  sub_23875DF10();
}

uint64_t sub_2386F9E20(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v3 = v2[3];
  v4 = v2[1];
  v18 = v2[2];
  v19 = v3;
  v5 = v2[3];
  v20 = v2[4];
  v6 = v2[1];
  v16 = *v2;
  v17 = v6;
  v14 = v2[4];
  v21 = *(v2 + 10);
  v15 = *(v2 + 10);
  sub_23843981C(&v16, v22, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v8 = v16;
  v9 = v17;
  sub_23875E1C0();
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  sub_238439884(v22, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_2386F9FF4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = a2[1];
  v11 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ExtractedOrderDetails(0) + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24 = v4[4];
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  v18 = v4[4];
  v25 = *(v4 + 10);
  v19 = *(v4 + 10);
  sub_23843981C(&v20, v26, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  sub_23875E1C0();
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27 = v17;
  v26[0] = v12;
  v26[1] = v13;
  sub_238439884(v26, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_2386FA1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v61 = a2;
  v57 = a1;
  v3 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758270();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = sub_2387581D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v54 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v48 - v27;
  sub_23843981C(v57, v18, &qword_27DF0EB10, &qword_2387774C0);
  v53 = *v18;
  (*(v20 + 32))(v28, &v18[*(v15 + 56)], v19);
  v29 = *(v8 + 16);
  v30 = v61;
  v61 = v7;
  v52 = v29;
  v29(v13, v30, v7);
  v31 = *(v20 + 16);
  v57 = v28;
  v51 = v31;
  v31(v25, v28, v19);
  v32 = sub_238758170();
  if (v33)
  {
    v49 = v32;
    v50 = v33;
    v34 = *(sub_2387581E0() + 16);

    v35 = v55;
    *v55 = 0;
    *(v35 + 8) = v53;
    *(v35 + 16) = v34;
    *(v35 + 24) = 1;
    v36 = v56;
    v53 = v13;
    v52(v56, v13, v61);
    v37 = v54;
    v51(v54, v25, v19);
    v38 = v58;
    sub_238601310(v36, v37, v35 + *(v58 + 20));
    v39 = *(v20 + 8);
    v39(v25, v19);
    (*(v8 + 8))(v53, v61);
    v39(v57, v19);
    v40 = (v35 + *(v38 + 24));
    v41 = v50;
    *v40 = v49;
    v40[1] = v41;
    v42 = v60;
    sub_2386FAB68(v35, v60, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
    v43 = 0;
    v44 = v42;
    v45 = v38;
  }

  else
  {
    v46 = *(v20 + 8);
    v46(v25, v19);
    (*(v8 + 8))(v13, v61);
    v46(v57, v19);
    v43 = 1;
    v44 = v60;
    v45 = v58;
  }

  return (*(v59 + 56))(v44, v43, 1, v45);
}

uint64_t sub_2386FA648(void *a1, void *a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D58, &qword_238781D40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_36;
  }

  v17 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  if (!sub_23845A994((a1 + *(v17 + 20)), (a2 + *(v17 + 20))))
  {
    goto LABEL_36;
  }

  v43 = v5;
  v41 = v8;
  v18 = *(v17 + 24);
  sub_2387580D0();
  sub_2387581B0();
  v42 = v17;
  sub_2386FC648(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
  sub_2386FC648(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);
  if ((sub_23875AC60() & 1) == 0)
  {
    goto LABEL_36;
  }

  v19 = v42;
  v20 = v42[7];
  v21 = *(v13 + 48);
  sub_23843981C(a1 + v20, v16, &qword_27DF14B18, &unk_238781A20);
  sub_23843981C(a2 + v20, &v16[v21], &qword_27DF14B18, &unk_238781A20);
  v22 = *(v43 + 48);
  if (v22(v16, 1, v4) != 1)
  {
    sub_23843981C(v16, v12, &qword_27DF14B18, &unk_238781A20);
    if (v22(&v16[v21], 1, v4) != 1)
    {
      v23 = v41;
      sub_2386FAB68(&v16[v21], v41, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      v24 = sub_2386ED008(v12, v23);
      sub_2386FBEFC(v23, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      sub_2386FBEFC(v12, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
      sub_238439884(v16, &qword_27DF14B18, &unk_238781A20);
      if ((v24 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_13;
    }

    sub_2386FBEFC(v12, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel);
LABEL_11:
    sub_238439884(v16, &qword_27DF14D58, &qword_238781D40);
    goto LABEL_36;
  }

  if (v22(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_238439884(v16, &qword_27DF14B18, &unk_238781A20);
LABEL_13:
  if (sub_23851935C(*(a1 + v19[8]), *(a2 + v19[8])) & 1) != 0 && (sub_2385BFE34((a1 + v19[9]), (a2 + v19[9])))
  {
    v25 = v19[10];
    v26 = a1 + v25;
    v27 = *(a1 + v25);
    v28 = a2 + v25;
    v29 = *v28;
    if (v27)
    {
      if (v29)
      {
        v30 = v26[8];
        v31 = v28[8];
        v32 = *v28;

        if (sub_238518A64(v27, v29))
        {
          if (v30)
          {
            v33 = 0x63697373616C63;
          }

          else
          {
            v33 = 1818845549;
          }

          if (v30)
          {
            v34 = 0xE700000000000000;
          }

          else
          {
            v34 = 0xE400000000000000;
          }

          if (v31)
          {
            v35 = 0x63697373616C63;
          }

          else
          {
            v35 = 1818845549;
          }

          if (v31)
          {
            v36 = 0xE700000000000000;
          }

          else
          {
            v36 = 0xE400000000000000;
          }

          if (v33 == v35 && v34 == v36)
          {

LABEL_39:
            v37 = *(a1 + v19[11]) ^ *(a2 + v19[11]) ^ 1;
            return v37 & 1;
          }

          v39 = sub_23875F630();

          if (v39)
          {
            goto LABEL_39;
          }
        }

        else
        {
        }
      }
    }

    else if (!v29)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_2386FAB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2386FABF8()
{
  type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_2386FAEB0(319, &qword_27DF14B30, type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2386FAEB0(319, &qword_27DF14B38, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(319);
          if (v4 <= 0x3F)
          {
            sub_2384C6178(319, &qword_27DF0D560, &type metadata for OrderDetailsRelatedEmailsSection.ViewModel, MEMORY[0x277D83D88]);
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

void sub_2386FADC0()
{
  type metadata accessor for ExtractedOrderDetails.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2386FAEB0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386FAEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386FAF38()
{
  result = qword_27DF14B70;
  if (!qword_27DF14B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B50, &qword_238781AD0);
    sub_23843A3E8(&qword_27DF14B78, &qword_27DF14B80, &unk_238781AE8);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14B70);
  }

  return result;
}

unint64_t sub_2386FB02C()
{
  result = qword_27DF14BA8;
  if (!qword_27DF14BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14BA0, &qword_238781B08);
    sub_23843A3E8(&qword_27DF14BB0, &qword_27DF14BB8, &unk_238781B10);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14BA8);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{
  v1 = v0;
  v2 = type metadata accessor for ExtractedOrderDetails(0);
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

  v41 = *(v3 + *(v2 + 20) + 80);

  v42 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_23875C880();
    (*(*(v43 - 8) + 8))(v3 + v42, v43);
  }

  else
  {
    v44 = *(v3 + v42);
  }

  return MEMORY[0x2821FE8E8](v1, v48 + v47, v49 | 7);
}

uint64_t sub_2386FB6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2386FB74C()
{
  result = qword_27DF14C50;
  if (!qword_27DF14C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C48, &qword_238781C30);
    sub_2386FB7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C50);
  }

  return result;
}

unint64_t sub_2386FB7D8()
{
  result = qword_27DF14C58;
  if (!qword_27DF14C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C60, &qword_238781C38);
    sub_2386FB890();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C58);
  }

  return result;
}

unint64_t sub_2386FB890()
{
  result = qword_27DF14C68;
  if (!qword_27DF14C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C70, &qword_238781C40);
    sub_2386FB948();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C68);
  }

  return result;
}

unint64_t sub_2386FB948()
{
  result = qword_27DF14C78;
  if (!qword_27DF14C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C80, &qword_238781C48);
    sub_2386FBA00();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C78);
  }

  return result;
}

unint64_t sub_2386FBA00()
{
  result = qword_27DF14C88;
  if (!qword_27DF14C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14C90, &qword_238781C50);
    sub_2386FBA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C88);
  }

  return result;
}

unint64_t sub_2386FBA90()
{
  result = qword_27DF14C98;
  if (!qword_27DF14C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CA0, &unk_238781C58);
    sub_2386FC648(&qword_27DF14CA8, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
    sub_2386FC648(&qword_27DF14CB0, type metadata accessor for ExtractedOrderDetailsNoFulfillments);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14C98);
  }

  return result;
}

unint64_t sub_2386FBB84()
{
  result = qword_27DF14CC8;
  if (!qword_27DF14CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CC0, &qword_238781C68);
    sub_2386FBC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CC8);
  }

  return result;
}

unint64_t sub_2386FBC08()
{
  result = qword_27DF14CD0;
  if (!qword_27DF14CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CD8, &qword_238781C70);
    sub_2386FBCC0();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CD0);
  }

  return result;
}

unint64_t sub_2386FBCC0()
{
  result = qword_27DF14CE0;
  if (!qword_27DF14CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CE8, &qword_238781C78);
    sub_2386FBD78();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CE0);
  }

  return result;
}

unint64_t sub_2386FBD78()
{
  result = qword_27DF14CF0;
  if (!qword_27DF14CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14CF8, &qword_238781C80);
    sub_23843A3E8(&qword_27DF14D00, &qword_27DF14D08, &qword_238781C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14CF0);
  }

  return result;
}

uint64_t sub_2386FBE60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2386FBEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for ExtractedOrderDetails(0);
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

  v41 = *(v3 + *(v2 + 20) + 80);

  v42 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_23875C880();
    (*(*(v43 - 8) + 8))(v3 + v42, v43);
  }

  else
  {
    v44 = *(v3 + v42);
  }

  return MEMORY[0x2821FE8E8](v1, ((v47 + v48 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v49 | 7);
}

uint64_t sub_2386FC4F4(uint64_t (*a1)(unint64_t, __n128, __n128, __n128, __n128))
{
  v2 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5.n128_u64[0] = *v4;
  v6.n128_u64[0] = v4[1];
  v7.n128_u64[0] = v4[2];
  v8.n128_u64[0] = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_2386FC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ExtractedOrderDetails(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2386FC648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OrderReceipt.fileUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
  v4 = sub_23875B940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderReceipt.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name);
  v2 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8);

  return v1;
}

FinanceKitUI::OrderReceipt::MimeType_optional __swiftcall OrderReceipt.MimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23875F590();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OrderReceipt.MimeType.rawValue.getter()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 0x6E702F6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706A2F6567616D69;
  }
}

uint64_t *sub_2386FC864(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v7;
  sub_23875EAE0();
  v15 = sub_23875F590();

  if (v15 > 2)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_23875C1E0();
    __swift_project_value_buffer(v19, qword_27DF2F690);

    v20 = sub_23875C1B0();
    v21 = sub_23875EFE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315394;
      v24 = sub_2384615AC(a4, a5, &v30);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2080;
      v25 = sub_2384615AC(a2, a3, &v30);

      *(v22 + 14) = v25;
      _os_log_impl(&dword_2383F8000, v20, v21, "Receipt %s has unsupported mime type: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v23, -1, -1);
      MEMORY[0x23EE64DF0](v22, -1, -1);
    }

    else
    {
    }

    v26 = sub_23875B940();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = *(*v7 + 48);
    v28 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {

    v16 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
    v17 = sub_23875B940();
    (*(*(v17 - 8) + 32))(v7 + v16, a1, v17);
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) = v15;
    v18 = (v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name);
    *v18 = a4;
    v18[1] = a5;
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) = a6 & 1;
  }

  return v7;
}

uint64_t OrderReceipt.deinit()
{
  v1 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp))
  {
    v7 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl, v2);
    v8 = sub_23875B860();
    v9 = *(v3 + 8);
    v9(v6, v2);
    v18[0] = 0;
    v10 = [v7 removeItemAtURL:v8 error:v18];

    if (v10)
    {
      v11 = v18[0];
    }

    else
    {
      v12 = v18[0];
      v13 = sub_23875B730();

      swift_willThrow();
    }

    v9((v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl), v2);
  }

  else
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl, v2);
  }

  v14 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8);

  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t OrderReceipt.__deallocating_deinit()
{
  OrderReceipt.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s12FinanceKitUI12OrderReceiptC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23875B890() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = 0xEA00000000006765;
  v5 = 0x706A2F6567616D69;
  if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
  {
    if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) == 1)
    {
      v6 = 0x746163696C707061;
      v7 = 0xEF6664702F6E6F69;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0x6E702F6567616D69;
      v7 = 0xE900000000000067;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0x706A2F6567616D69;
    v7 = 0xEA00000000006765;
    if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType))
    {
LABEL_11:
      if (v6 != v5)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if (*(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_mimeType) == 1)
  {
    v5 = 0x746163696C707061;
    v4 = 0xEF6664702F6E6F69;
    goto LABEL_11;
  }

  v4 = 0xE900000000000067;
  if (v6 != 0x6E702F6567616D69)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 == v4)
  {

    goto LABEL_17;
  }

LABEL_16:
  v8 = sub_23875F630();

  if ((v8 & 1) == 0)
  {
LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

LABEL_17:
  v9 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name) && *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_name + 8);
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) ^ *(a2 + OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_shouldCleanUp) ^ 1;
  return v10 & 1;
}

uint64_t *_s12FinanceKitUI12OrderReceiptC4data8mimeType4nameACSg10Foundation4DataV_S2StcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v87 = a2;
  v88 = a6;
  v82 = a5;
  v85 = a4;
  v86 = a1;
  v78 = a3;
  v90[1] = *MEMORY[0x277D85DE8];
  v89 = sub_23875B810();
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v89);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23875BCB0();
  v10 = *(v84 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v84);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875B940();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v81 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v27 = NSTemporaryDirectory();
  sub_23875EA80();

  sub_23875B840();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_238763B60;
  *(v28 + 32) = 0x7374706965636572;
  *(v28 + 40) = 0xE800000000000000;
  sub_23875BCA0();
  v29 = sub_23875BC50();
  v31 = v30;
  (*(v10 + 8))(v13, v84);
  v32 = v83;
  *(v28 + 48) = v29;
  *(v28 + 56) = v31;
  v33 = v89;
  (*(v6 + 104))(v9, *MEMORY[0x277CC91D8], v89);
  sub_2384397A8();
  sub_23875B920();

  (*(v6 + 8))(v9, v33);
  v34 = *(v32 + 8);
  v89 = v14;
  v34(v23, v14);
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_23875B860();
  v90[0] = 0;
  LODWORD(v14) = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v90];

  if (!v14)
  {
    v44 = v90[0];

    v45 = sub_23875B730();

    swift_willThrow();
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v46 = sub_23875C1E0();
    __swift_project_value_buffer(v46, qword_27DF2F690);
    v47 = v80;
    (*(v32 + 16))(v80, v26, v89);
    v48 = v45;
    v49 = sub_23875C1B0();
    v50 = sub_23875EFE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84 = v26;
      v54 = v53;
      v90[0] = v53;
      *v51 = 136315394;
      v55 = sub_23875B8F0();
      v56 = v47;
      v57 = v55;
      v59 = v58;
      v34(v56, v89);
      v60 = sub_2384615AC(v57, v59, v90);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2112;
      v61 = v45;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v62;
      *v52 = v62;
      _os_log_impl(&dword_2383F8000, v49, v50, "Could not create directory %s with error %@", v51, 0x16u);
      sub_238439884(v52, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x23EE64DF0](v54, -1, -1);
      MEMORY[0x23EE64DF0](v51, -1, -1);
      sub_23844C954(v86, v87);

      v63 = v84;
      v64 = v89;
    }

    else
    {
      sub_23844C954(v86, v87);

      v65 = v47;
      v66 = v89;
      v34(v65, v89);
      v63 = v26;
      v64 = v66;
    }

    v34(v63, v64);
    goto LABEL_11;
  }

  v37 = v85;
  v80 = v34;
  v38 = v90[0];
  v39 = v81;
  sub_23875B870();
  v41 = v86;
  v40 = v87;
  sub_23875B9A0();
  v42 = v40;
  v43 = v39;
  v67 = v89;
  (*(v32 + 16))(v23, v39, v89);
  v68 = type metadata accessor for OrderReceipt();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = v42;
  v72 = v43;
  v73 = sub_2386FC864(v23, v78, v37, v82, v88, 1);
  sub_23844C954(v41, v71);
  v74 = v80;
  (v80)(v72, v67);
  (v74)(v26, v67);
  result = v73;
  if (!v73)
  {
LABEL_11:
    result = 0;
  }

  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *_s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(char *a1)
{
  v51 = sub_23875B940();
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = sub_23875B6C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E350, &unk_23876F730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v17 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v18 = v17;
  sub_23844D11C(inited);
  swift_setDeallocating();
  sub_238564548(inited + 32);
  sub_23875B830();

  sub_23875B6B0();
  (*(v8 + 8))(v11, v7);
  v19 = sub_23875C0D0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_238439884(v15, &qword_27DF0DBB8, &qword_23876E0B8);
    v21 = v50;
LABEL_3:
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v22 = sub_23875C1E0();
    __swift_project_value_buffer(v22, qword_27DF2F690);
    v23 = v49;
    v24 = v51;
    (*(v49 + 16))(v21, a1, v51);
    v25 = sub_23875C1B0();
    v26 = sub_23875EFE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      v29 = sub_23875B8F0();
      v30 = v21;
      v32 = v31;
      v33 = *(v23 + 8);
      v33(v30, v24);
      v34 = sub_2384615AC(v29, v32, &v52);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_2383F8000, v25, v26, "Could not retreive mimeType from %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v27, -1, -1);

      v33(a1, v24);
    }

    else
    {

      v35 = *(v23 + 8);
      v35(a1, v24);
      v35(v21, v24);
    }

    return 0;
  }

  v37 = sub_23875C0C0();
  v39 = v38;
  (*(v20 + 8))(v15, v19);
  v21 = v50;
  if (!v39)
  {
    goto LABEL_3;
  }

  v40 = sub_23875B850();
  v42 = v41;
  v43 = v49;
  v44 = v51;
  (*(v49 + 16))(v6, a1, v51);
  v45 = type metadata accessor for OrderReceipt();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_2386FC864(v6, v37, v39, v40, v42, 0);
  (*(v43 + 8))(a1, v44);
  result = v48;
  if (!v48)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2386FDE68()
{
  result = qword_27DF14D60;
  if (!qword_27DF14D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14D60);
  }

  return result;
}

uint64_t type metadata accessor for OrderReceipt()
{
  result = qword_27DF14D68;
  if (!qword_27DF14D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386FDF10()
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

uint64_t sub_2386FDFE4()
{
  sub_2385CA78C();
  sub_23875CDC0();
  return v1;
}

uint64_t type metadata accessor for OrderImageVignette()
{
  result = qword_27DF14D78;
  if (!qword_27DF14D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386FE0A4()
{
  sub_238438628();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2386FE134@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2386FE504(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2386FE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  KeyPath = swift_getKeyPath();
  if (*(v3 + *(a2 + 20)) == 1)
  {
    sub_2386FE134(v14);
    (*(v8 + 104))(v11, *MEMORY[0x277CDF3D0], v7);
    v16 = sub_23875C440();
    v17 = *(v8 + 8);
    v17(v11, v7);
    v17(v14, v7);
  }

  else
  {
    v16 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D88, &qword_238781F88);
  (*(*(v18 - 8) + 16))(a3, a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14D90, &qword_238781F90);
  v20 = a3 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = v16 & 1;
  return result;
}

uint64_t sub_2386FE504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386FE574()
{
  result = qword_27DF14D98;
  if (!qword_27DF14D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14D90, &qword_238781F90);
    sub_23843A3E8(&qword_27DF14DA0, &qword_27DF14D88, &qword_238781F88);
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14D98);
  }

  return result;
}

uint64_t sub_2386FE740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386FE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5FA60]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_238518C1C(v7, v8);
}

uint64_t sub_2386FE854@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DC8, &qword_238782030);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v29 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DD0, &qword_238782038);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v29 - v16);
  v18 = *(v1 + *(type metadata accessor for ProductImage.ViewModel(0) + 20));
  if (*(v18 + 16))
  {
    *v17 = sub_23875E4A0();
    v17[1] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DD8, &qword_238782040);
    sub_2386FEBA4(v1, v18, (v17 + *(v20 + 44)));
    sub_23843981C(v17, v13, &qword_27DF14DD0, &qword_238782038);
    swift_storeEnumTagMultiPayload();
    sub_2386FF20C();
    sub_2386FF270();
    sub_23875D1B0();
    return sub_238439884(v17, &qword_27DF14DD0, &qword_238782038);
  }

  else
  {
    v22 = v1 + *(type metadata accessor for ProductImage(0) + 20);
    sub_2384D4E38(v9);
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v2);
    LOBYTE(v22) = sub_23875C440();
    v23 = *(v3 + 8);
    v23(v6, v2);
    v23(v9, v2);
    v24 = objc_opt_self();
    v25 = &selRef_systemGray4Color;
    if ((v22 & 1) == 0)
    {
      v25 = &selRef_systemGray2Color;
    }

    v26 = [v24 *v25];
    v27 = sub_23875DFB0();
    v28 = sub_23875E040();
    *v13 = v27;
    v13[1] = v28;
    v13[2] = 0x3FD999999999999ALL;
    swift_storeEnumTagMultiPayload();
    sub_2386FF20C();
    sub_2386FF270();
    return sub_23875D1B0();
  }
}

uint64_t sub_2386FEBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v47 = a2;
  v43 = a1;
  v3 = type metadata accessor for ProductImage(0);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DF0, &qword_238782048);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_23875C450();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v43;
  v20 = v43 + *(v3 + 20);
  sub_2384D4E38(v18);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3D0], v11);
  v21 = sub_23875C440();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v18, v11);
  v23 = objc_opt_self();
  v24 = &selRef_systemGray4Color;
  if ((v21 & 1) == 0)
  {
    v24 = &selRef_systemGray2Color;
  }

  v25 = [v23 *v24];
  v26 = sub_23875DFB0();
  v27 = v5[9];
  v28 = sub_23875AF90();
  (*(*(v28 - 8) + 16))(&v10[v27], v19, v28);
  v29 = v42;
  sub_2386FF2C4(v19, v42);
  v30 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v31 = swift_allocObject();
  sub_2386FF328(v29, v31 + v30);
  v32 = v5[10];
  *&v10[v32] = sub_2387588A0();
  v33 = v5[13];
  *&v10[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v34 = v5[14];
  *&v10[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *v10 = v47;
  v10[v5[11]] = 1;
  v35 = &v10[v5[12]];
  *v35 = sub_2386FF38C;
  v35[1] = v31;
  v36 = v45;
  sub_23843981C(v10, v45, &qword_27DF14DF0, &qword_238782048);
  v37 = v46;
  *v46 = v26;
  *(v37 + 4) = 256;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14DF8, &qword_2387820B0);
  sub_23843981C(v36, v37 + *(v38 + 48), &qword_27DF14DF0, &qword_238782048);

  sub_238439884(v10, &qword_27DF14DF0, &qword_238782048);
  sub_238439884(v36, &qword_27DF14DF0, &qword_238782048);
}

uint64_t sub_2386FF064@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23875C450();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = v1 + *(type metadata accessor for ProductImage(0) + 20);
  sub_2384D4E38(v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3D0], v3);
  LOBYTE(v11) = sub_23875C440();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v10, v3);
  v13 = objc_opt_self();
  v14 = &selRef_systemGray4Color;
  if ((v11 & 1) == 0)
  {
    v14 = &selRef_systemGray2Color;
  }

  v15 = [v13 *v14];
  v16 = sub_23875DFB0();
  result = sub_23875E040();
  *a1 = v16;
  a1[1] = result;
  a1[2] = 0x3FD999999999999ALL;
  return result;
}

unint64_t sub_2386FF20C()
{
  result = qword_27DF14DE0;
  if (!qword_27DF14DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14DD0, &qword_238782038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14DE0);
  }

  return result;
}

unint64_t sub_2386FF270()
{
  result = qword_27DF14DE8;
  if (!qword_27DF14DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14DE8);
  }

  return result;
}

uint64_t sub_2386FF2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386FF328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386FF38C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ProductImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_2386FF064(a1);
}

unint64_t sub_2386FF3F0()
{
  result = qword_27DF14E00;
  if (!qword_27DF14E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14E08, &qword_2387820B8);
    sub_2386FF20C();
    sub_2386FF270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14E00);
  }

  return result;
}

id sub_2386FF47C()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  if (!v5)
  {
    sub_23875EA80();
    v5 = sub_23875EA50();
  }

  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v1 localizedStringForKey:v6 value:v7 table:v8];

  if (!v9)
  {
    sub_23875EA80();
    v9 = sub_23875EA50();
  }

  v10 = [objc_allocWithZone(v0) initWithTitle:v5 detailText:v9 icon:0 contentLayout:1];

  return v10;
}

uint64_t sub_2386FF65C()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v1 = [v0 headerView];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v6)
  {
    sub_23875EA80();
    v6 = sub_23875EA50();
  }

  [v1 setBadgeText_];

  v7 = [objc_opt_self() boldButton];
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v2 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_23875EA80();
    v11 = sub_23875EA50();
  }

  [v7 setTitle:v11 forState:0];

  v12 = v7;
  [v12 addTarget:v0 action:sel_allowButtonAction forControlEvents:64];
  [v12 setEnabled_];

  v13 = [v0 buttonTray];
  [v13 addButton_];

  v14 = [objc_opt_self() linkButton];
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v2 localizedStringForKey:v15 value:v16 table:v17];

  if (!v18)
  {
    sub_23875EA80();
    v18 = sub_23875EA50();
  }

  [v14 setTitle:v18 forState:0];

  v19 = v14;
  [v19 addTarget:v0 action:sel_denyButtonAction forControlEvents:64];
  [v19 setEnabled_];

  v20 = [v0 buttonTray];
  [v20 addButton_];

  v21 = OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView;
  v22 = *&v0[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView];
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  v23 = [v0 contentView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [objc_allocWithZone(type metadata accessor for OrderWelcomeAnimation()) initWithFrame_];
  [v32 setClipsToBounds_];
  [v32 setAutoresizingMask_];

  v33 = [v0 contentView];
  [v33 addSubview_];

  v34 = *&v0[v21];
  *&v0[v21] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E30, &unk_238782110);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2387632F0;
  v36 = sub_23875C1F0();
  v37 = MEMORY[0x277D74BF0];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_23875F050();

  swift_unknownObjectRelease();
}

uint64_t sub_2386FFBF0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v14 - v9;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1 & 1, v8);
  v15 = 0;
  sub_238757A30();
  v14[3] = sub_23875A820();
  v14[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23875A7E0();
  sub_238757A00();
  v15 = 1;
  swift_beginAccess();
  sub_2387579F0();
  swift_endAccess();
  v11 = *MEMORY[0x277D38548];
  v12 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v11, 31, v12);

  return (*(v6 + 8))(v10, v5);
}

id sub_2386FFE8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_23875ED80();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23875ED50();
  v7 = sub_23875ED40();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_2386C3BA4(0, 0, v5, &unk_238782108, v8);

  v10 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v12 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v13 = *MEMORY[0x277D38428];
  v14 = sub_23875EA80();
  v15 = MEMORY[0x277D38390];
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = *v15;
  *(inited + 56) = *v15;
  *(inited + 64) = 0x6565726761;
  v18 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v18;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000238785100;
  v19 = v12;
  v20 = v17;
  v21 = v18;
  v22 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v22;
  sub_2385C33E4(v10, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v29);

  v24 = *MEMORY[0x277D38548];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v26 = sub_23875E910();

  [v25 subject:v24 sendEvent:v26];

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_238700184()
{
  v1 = sub_238757A80();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_238757A90();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  sub_23875ED50();
  v0[8] = sub_23875ED40();
  v8 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2387002D0, v8, v7);
}

uint64_t sub_2387002D0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_2387579D0();
  sub_2387579A0();
  (*(v4 + 104))(v3, *MEMORY[0x277CC6B10], v5);
  sub_238757890();
  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);
  v12 = v0[7];
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

id sub_238700558()
{
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  v5 = sub_23875EA80();
  v6 = MEMORY[0x277D38390];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  *(inited + 64) = 0x6C65636E6163;
  v9 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000238785100;
  v10 = v3;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v13;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_23870077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView] = 0;
  v12 = sub_23875EA50();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_23875EA50();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_23875EA50();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_symbolName_contentLayout_, v12, v13, v14, a7);

  return v15;
}

id sub_238700B54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_23875EA50();
  [v11 setAccessibilityIdentifier_];

  [v11 setAccessibilityTraits_];
  sub_238700C50();

  return v11;
}

void sub_238700C50()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v35[-v8];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35[-v12];
  v14 = [v1 traitCollection];
  v15 = [v14 userInterfaceStyle];

  if (v15 <= 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v16 = qword_2814F1B90;
    v17 = sub_23875EA50();

    v18 = sub_23875EA50();
    v19 = [v16 URLForResource:v17 withExtension:v18];

    if (v19)
    {
      sub_23875B8B0();

      (*(v3 + 32))(v13, v9, v2);
      sub_238701630();
      (*(v3 + 16))(v6, v13, v2);
      v20 = *MEMORY[0x277CDA7E8];
      v21 = sub_23875EA80();
      v23 = sub_238701258(v6, v21, v22, 0);
      if (v23)
      {
        v24 = v23;
        v25 = [v23 rootLayer];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = &v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
          *v27 = v28;
          *(v27 + 1) = v29;
          [v26 setGeometryFlipped_];
          [v26 setMasksToBounds_];
          [v26 setNeedsDisplayOnBoundsChange_];
          v30 = [objc_opt_self() mainScreen];
          [v30 scale];
          v32 = v31;

          [v26 setContentsScale_];
          v33 = [v1 layer];
          [v33 addSublayer_];

          (*(v3 + 8))(v13, v2);
          v34 = *&v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer];
          *&v1[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer] = v26;
        }

        else
        {
          (*(v3 + 8))(v13, v2);
        }
      }

      else
      {
        (*(v3 + 8))(v13, v2);
      }
    }
  }

  else
  {
    sub_23875F520();
    __break(1u);
  }
}

id sub_238701258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23875B860();
  v7 = sub_23875EA50();

  if (a4)
  {
    v8 = sub_23875E910();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_23875B940();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_23875B730();

    swift_willThrow();
    v15 = sub_23875B940();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_238701420()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  result = [v0 bounds];
  v4 = OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer;
  v5 = *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer];
  if (v5)
  {
    v6 = v2;
    v7 = v3;
    if (v2 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize] > v3 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize + 8])
    {
      v8 = v2 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize];
    }

    else
    {
      v8 = v3 / *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize + 8];
    }

    v9 = v5;
    CATransform3DMakeScale(&v10, v8, v8, 1.0);
    [v9 setTransform_];

    result = *&v0[v4];
    if (result)
    {
      return [result setPosition_];
    }
  }

  return result;
}

void sub_238701530(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

unint64_t sub_238701630()
{
  result = qword_27DF14E28;
  if (!qword_27DF14E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF14E28);
  }

  return result;
}

void sub_23870167C(char *a1, id a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v3 != v5)
  {
    v6 = OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView;
    v7 = *&a1[OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView];
    if (v7)
    {
      [v7 removeFromSuperview];
    }

    v8 = [a1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [objc_allocWithZone(type metadata accessor for OrderWelcomeAnimation()) initWithFrame_];
    [v17 setClipsToBounds_];
    [v17 setAutoresizingMask_];

    v18 = [a1 contentView];
    [v18 addSubview_];

    v19 = *&a1[v6];
    *&a1[v6] = v17;
  }
}

uint64_t sub_238701810()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_238700184();
}

uint64_t sub_238701968(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = a2[5];
  v13 = sub_238757B60();
  (*(*(v13 - 8) + 16))(v11, v2 + v12, v13);
  v14 = v5[8];
  v15 = sub_23875A9A0();
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = v5[9];
  v17 = a2[6];
  v18 = sub_23875BCB0();
  (*(*(v18 - 8) + 16))(&v11[v16], v2 + v17, v18);
  v19 = *MEMORY[0x277CC8268];
  v20 = sub_23875AB40();
  (*(*(v20 - 8) + 104))(&v11[v16], v19, v20);
  *&v11[v5[7]] = 0;
  v11[v5[10]] = 0;
  sub_2387020F8(v11, v8);
  v21 = (v2 + a2[7]);
  v22 = *v21;
  v23 = v21[1];
  objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));

  v24 = sub_2384AC768(v8, v22, v23);

  sub_23870215C(v11);
  return v24;
}

uint64_t sub_238701B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238701C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238701CB0()
{
  sub_2387020B0(&qword_27DF14E60, type metadata accessor for BankConnectAuthorizationReconsentView);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_238701D08(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = a2[5];
  v13 = sub_238757B60();
  (*(*(v13 - 8) + 16))(v11, v2 + v12, v13);
  v14 = *v2;
  v15 = v5[8];
  v16 = sub_23875A9A0();
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  v17 = v5[9];
  v18 = a2[6];
  v19 = sub_23875BCB0();
  (*(*(v19 - 8) + 16))(&v11[v17], v2 + v18, v19);
  v20 = *MEMORY[0x277CC8258];
  v21 = sub_23875AB40();
  (*(*(v21 - 8) + 104))(&v11[v17], v20, v21);
  *&v11[v5[7]] = v14;
  v11[v5[10]] = 0;
  sub_2387020F8(v11, v8);
  v22 = (v2 + a2[7]);
  v23 = *v22;
  v24 = v22[1];
  objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v25 = v14;

  v26 = sub_2384AC768(v8, v23, v24);

  sub_23870215C(v11);
  return v26;
}

uint64_t sub_238701F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238701FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238702058()
{
  sub_2387020B0(&qword_27DF14E48, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_2387020B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2387020F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23870215C(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238702218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_238757B60();
    if (v6 <= 0x3F)
    {
      result = sub_23875BCB0();
      if (v7 <= 0x3F)
      {
        result = sub_23846D0DC();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_238702330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_238702378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AllRelatedEmailsView()
{
  result = qword_27DF14E68;
  if (!qword_27DF14E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23870243C()
{
  sub_238702528(319, &qword_27DF14E78, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_238702528(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238702528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_2387025A8(uint64_t a1, int a2)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v36 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v30 - v12;
  v34 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23875F360();
    sub_23875AB20();
    sub_238710C38(&qword_27DF14E98, MEMORY[0x277CC81E0]);
    result = sub_23875EEA0();
    a1 = v39;
    v14 = v40;
    v15 = v41;
    v16 = v42;
    v17 = v43;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v16 = 0;
  }

  v33 = v15;
  v31 = v8;
  v21 = (v8 + 48);
  v35 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v25 = sub_23875F3D0();
    if (!v25 || (v38 = v25, sub_23875AB20(), swift_dynamicCast(), (v24 = v44) == 0))
    {
LABEL_24:
      sub_238434840();
      return v35;
    }

LABEL_17:
    sub_2384A138C(v24, v37 & 1, 4, v7);
    if ((*v21)(v7, 1, v36) == 1)
    {
      result = sub_238439884(v7, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      v26 = v30;
      sub_23870F6FC(v7, v30, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23870F6FC(v26, v32, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_238498610(0, v35[2] + 1, 1, v35);
      }

      v28 = v35[2];
      v27 = v35[3];
      if (v28 >= v27 >> 1)
      {
        v35 = sub_238498610(v27 > 1, v28 + 1, 1, v35);
      }

      v29 = v35;
      v35[2] = v28 + 1;
      result = sub_23870F6FC(v32, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  v22 = v16;
  v23 = v17;
  if (v17)
  {
LABEL_13:
    v17 = (v23 - 1) & v23;
    v24 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= ((v15 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v23 = *(v14 + 8 * v16);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2387029C0(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v7, 0);
    v8 = v19;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23870F694(v9, v6, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v12 = *(v6 + 8);
      v11 = *(v6 + 9);

      sub_23870F348(v6);
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2385FE468((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v16 = sub_2384A5B40(v8);

  return v16;
}

uint64_t sub_238702B70@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a5;
  v9 = sub_23875C400();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23875CEA0();
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F80, &qword_238782660);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F88, &unk_238782668);
  v23 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v25 = &v39 - v24;
  a2 &= 1u;
  sub_238703034(a1, a2, a3, a4, v22);
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  (*(v16 + 16))(v19, v22, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14ED8, &unk_238782498);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08EA8, &unk_238761D30);
  v27 = sub_23843A3E8(&qword_27DF14F90, &qword_27DF08EA8, &unk_238761D30);
  v51 = v26;
  v52 = v27;
  swift_getOpaqueTypeConformance2();
  sub_23870F4F4();
  sub_23875E3B0();
  v28 = v41;
  sub_23875CE90();
  (*(v16 + 8))(v22, v15);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F98, &qword_238782678) + 36);
  v30 = v42;
  (*(v12 + 16))(&v25[v29], v28, v42);
  v31 = *(v12 + 56);
  v31(&v25[v29], 0, 1, v30);
  KeyPath = swift_getKeyPath();
  v33 = &v25[*(v40 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v12 + 32))(v33 + v34, v28, v30);
  v31(v33 + v34, 0, 1, v30);
  *v33 = KeyPath;
  v36 = v43;
  v35 = v44;
  v37 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDF348], v45);
  sub_238710774();
  sub_23875DC80();
  (*(v35 + 8))(v36, v37);
  return sub_238439884(v25, &qword_27DF14F88, &unk_238782668);
}

uint64_t sub_238703034@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA8, &unk_238761D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  *v13 = sub_23875CE60();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC0, &qword_2387826C8);
  v15 = a2 & 1;
  sub_2387035DC(a1, a2 & 1, a3, a4, &v13[*(v14 + 44)]);
  sub_23875ED50();

  v16 = sub_23875ED40();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a1;
  *(v17 + 40) = v15;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  v19 = sub_23875ED80();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v34 - v22;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = sub_23875C830();
    v38 = &v34;
    v36 = *(v37 - 8);
    v24 = *(v36 + 64);
    MEMORY[0x28223BE20](v37);
    v35 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_23875F470();

    v40 = 0xD000000000000040;
    v41 = 0x8000000238790F80;
    v39 = 72;
    v26 = sub_23875F600();
    MEMORY[0x23EE63650](v26);

    v34 = &v34;
    v28 = MEMORY[0x28223BE20](v27);
    (*(v20 + 16))(&v34 - v22, &v34 - v22, v19, v28);
    v29 = v35;
    sub_23875C820();
    (*(v20 + 8))(v23, v19);
    sub_23842FBD8(v13, a5);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EB0, &qword_2387826E0);
    return (*(v36 + 32))(a5 + *(v30 + 36), v29, v37);
  }

  else
  {
    v32 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF08EB8, &qword_238761D40) + 36));
    v33 = sub_23875C6E0();
    (*(v20 + 32))(&v32[*(v33 + 20)], &v34 - v22, v19);
    *v32 = &unk_2387826D8;
    *(v32 + 1) = v17;
    return sub_23842FBD8(v13, a5);
  }
}

uint64_t sub_238703450(uint64_t a1)
{
  if (*(a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v2 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
    sub_23852EF3C(a1, a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 7uLL);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E88, &qword_238782420);
  type metadata accessor for OrderDetailsRelatedEmailView(0);
  sub_23843A3E8(&qword_27DF14F30, &qword_27DF14E88, &qword_238782420);
  sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView);
  return sub_23875E370();
}

uint64_t sub_2387035DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v50 = a2;
  v51 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD0, &qword_2387826F0);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD8, &qword_2387826F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = v14;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  v20 = sub_23875EA80();
  v22 = v21;

  if (*(a1 + 16) < 4uLL)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE0, &qword_238782700);
    v42 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
  }

  else
  {
    v23 = a1;
    v24 = sub_23875EA50();
    v49 = v22;
    v25 = v24;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v48 = v20;
    v28 = v27;
    v29 = [v15 localizedStringForKey:v25 value:v26 table:v27];

    v30 = sub_23875EA80();
    v32 = v31;

    v58 = v30;
    v59 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    v34 = v51;
    v35 = v50 & 1;
    *(v33 + 24) = v50 & 1;
    LOBYTE(v32) = v34 & 1;
    *(v33 + 32) = v34 & 1;
    v36 = v53;
    *(v33 + 40) = v53;
    sub_2384397A8();

    v37 = v52;
    sub_23875E230();
    v38 = (v37 + *(v54 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v40 = sub_23875DA40();
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *v38 = swift_getKeyPath();
    v60 = v32;
    v61 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v41 = swift_allocObject();
    *(v41 + 16) = v23;
    *(v41 + 24) = v35;
    *(v41 + 32) = v32;
    *(v41 + 40) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FF0, &unk_238782718);
    sub_238710B20();
    sub_23843A3E8(&qword_27DF15000, &qword_27DF14FF0, &unk_238782718);
    v42 = v55;
    sub_23875DED0();
    v20 = v48;

    v22 = v49;

    sub_238439884(v37, &qword_27DF14FD0, &qword_2387826F0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE0, &qword_238782700);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  v45 = v57;
  sub_23842FC48(v42, v57);
  *a5 = v20;
  *(a5 + 8) = v22;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FE8, &unk_238782708);
  sub_23842FC48(v45, a5 + *(v46 + 64));

  sub_238439884(v42, &qword_27DF14FD8, &qword_2387826F8);
  sub_238439884(v45, &qword_27DF14FD8, &qword_2387826F8);
}

uint64_t sub_238703C24(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v7 = 1818845549;
  if (a2)
  {
    v7 = 0x63697373616C63;
  }

  v8 = 0xE400000000000000;
  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = *MEMORY[0x277D38428];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v13;
  v14 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x6565536C69616D65;
  v15 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xEB000000006C6C41;
  *(v10 + 80) = v15;
  strcpy((v10 + 88), "orderDetails");
  *(v10 + 101) = 0;
  *(v10 + 102) = -5120;
  v16 = v11;
  v17 = v14;
  v18 = v15;
  v19 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = v19;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v26);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238710C38(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  LOBYTE(v26[0]) = a3 & 1;
  v26[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

uint64_t sub_238703F98()
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
  type metadata accessor for AllRelatedEmailsView();
  sub_238710C38(&qword_27DF15008, type metadata accessor for AllRelatedEmailsView);
  sub_23875C8F0();
}

uint64_t sub_2387040E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v20[0] = a3;
    v24 = MEMORY[0x277D84F90];
    sub_2385FECC0(0, v12, 0);
    v13 = v24;
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v22;
    v15 = *(v5 + 72);
    do
    {
      sub_23870F694(v14, v8, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8[*(v23 + 48)] = 5;
      sub_23870F6FC(v8, v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);

      v24 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2385FECC0(v16 > 1, v17 + 1, 1);
        v13 = v24;
      }

      *(v13 + 16) = v17 + 1;
      sub_23870F6FC(v11, v13 + v22 + v17 * v15, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v14 += v15;
      --v12;
    }

    while (v12);
    a3 = v20[0];
  }

  *a3 = v13;
  *(a3 + 8) = v21 & 1;
  v18 = *(type metadata accessor for AllRelatedEmailsView() + 24);
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2387043E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 144) = a4;
  *(v4 + 16) = a3;
  v5 = sub_23875C1E0();
  *(v4 + 24) = v5;
  v6 = *(v5 - 8);
  *(v4 + 32) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_238758390();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  sub_23875ED50();
  *(v4 + 88) = sub_23875ED40();
  v12 = sub_23875ECE0();
  *(v4 + 96) = v12;
  *(v4 + 104) = v11;

  return MEMORY[0x2822009F8](sub_23870454C, v12, v11);
}

uint64_t sub_23870454C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_2387579D0();
  v0[14] = sub_2387579A0();
  v5 = sub_2387029C0(v4);
  v0[15] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6EB8], v3);
  v6 = *(MEMORY[0x277CC6720] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_23870464C;
  v8 = v0[10];

  return MEMORY[0x282116E10](v5, v8);
}

uint64_t sub_23870464C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = v1;

  v7 = *(v4 + 120);
  v8 = *(v4 + 112);
  v9 = *(v4 + 80);
  v10 = *(v4 + 72);
  v11 = *(v4 + 64);
  if (v1)
  {
    (*(v10 + 8))(v9, v11);

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_2387049B0;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    (*(v10 + 8))(v9, v11);

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_238704828;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_238704828()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 88);

  if (v1 == 1)
  {
    v4 = (v0 + 56);
    v3 = *(v0 + 56);
    sub_23875C150();
    v5 = sub_23875C1B0();
    v6 = sub_23875F000();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Email spotlight identifiers were pruned from the UI";
  }

  else
  {
    v4 = (v0 + 48);
    v9 = *(v0 + 48);
    sub_23875C150();
    v5 = sub_23875C1B0();
    v6 = sub_23875F000();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "There were no eligible email spotlight identifiers to prune";
  }

  _os_log_impl(&dword_2383F8000, v5, v6, v8, v7, 2u);
  MEMORY[0x23EE64DF0](v7, -1, -1);
LABEL_7:

  v10 = *v4;
  v11 = *(v0 + 80);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = *(v0 + 40);
  (*(*(v0 + 32) + 8))(v10, *(v0 + 24));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2387049B0()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[5];

  sub_23875C150();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to prune email spotlight identifiers: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v15 = v0[6];
  v14 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_238704B78@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for AllRelatedEmailsView();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = v4;
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875CE00();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA8, &qword_238782478);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EB0, &qword_238782480);
  v48 = *(v50 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v14 = &v48 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EB8, &qword_238782488);
  v49 = *(v51 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v17 = &v48 - v16;
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EC0, &qword_238782490);
  sub_23870F45C();
  sub_23875D9C0();
  v18 = &v11[*(v8 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v20 = sub_23875DA40();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  v58 = v1;
  v60 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EE8, &qword_2387824D8);
  v22 = sub_23870F5B0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F08, &unk_2387824E8);
  v24 = sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8);
  v62 = v23;
  v63 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v11, &qword_27DF14EA8, &qword_238782478);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v26 = qword_2814F1B90;
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  v31 = sub_23875EA80();
  v33 = v32;

  v66 = v31;
  v67 = v33;
  v62 = v8;
  v63 = v21;
  v64 = v22;
  v65 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_2384397A8();
  v36 = MEMORY[0x277D837D0];
  v37 = v50;
  sub_23875DC70();

  (*(v48 + 8))(v14, v37);
  v39 = v52;
  v38 = v53;
  v40 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x277CDDDC0], v54);
  v62 = v37;
  v63 = v36;
  v64 = v34;
  v65 = v35;
  swift_getOpaqueTypeConformance2();
  v41 = v59;
  v42 = v51;
  sub_23875DE50();
  (*(v38 + 8))(v39, v40);
  (*(v49 + 8))(v17, v42);
  v43 = v57;
  sub_23870F694(v58, v57, type metadata accessor for AllRelatedEmailsView);
  v44 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v45 = swift_allocObject();
  sub_23870F6FC(v43, v45 + v44, type metadata accessor for AllRelatedEmailsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F18, &qword_2387824F8);
  v47 = (v41 + *(result + 36));
  *v47 = sub_23870F764;
  v47[1] = v45;
  v47[2] = 0;
  v47[3] = 0;
  return result;
}

uint64_t sub_238705258()
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
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14ED8, &unk_238782498);
  sub_23870F4F4();
  sub_2384397A8();
  sub_23875E3A0();
}

uint64_t sub_23870545C(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E88, &qword_238782420);
  type metadata accessor for OrderDetailsRelatedEmailView(0);
  sub_23843A3E8(&qword_27DF14F30, &qword_27DF14E88, &qword_238782420);
  sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView);
  sub_23875E370();
}

uint64_t sub_2387055F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23870F694(a1, a2, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  v4 = type metadata accessor for OrderDetailsRelatedEmailView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_238705734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F08, &unk_2387824E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D250();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F20, &qword_238782500);
  sub_23843A3E8(&qword_27DF14F28, &qword_27DF14F20, &qword_238782500);
  sub_23875C4D0();
  v11 = sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2387059A8(uint64_t a1)
{
  v2 = type metadata accessor for AllRelatedEmailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_23875C3C0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C3A0();
  sub_23870F694(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllRelatedEmailsView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23870F6FC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AllRelatedEmailsView);
  MEMORY[0x23EE62CF0](v8, sub_23870F8A0, v10);
}

uint64_t sub_238705B88(uint64_t a1)
{
  v2 = sub_23875C600();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for AllRelatedEmailsView() + 24);
  sub_2384D53C8(v6);
  sub_23875C5F0();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_238705CD8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x277D38548];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v4 = 1818845549;
  if (*(a1 + 8))
  {
    v4 = 0x63697373616C63;
  }

  v5 = 0xE400000000000000;
  if (*(a1 + 8))
  {
    v5 = 0xE700000000000000;
  }

  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v2, 5, v6);
}

uint64_t sub_238705E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_23870F694(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_238705F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_238758520();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_238705FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v98 = a4;
  LODWORD(v88) = a3;
  v91 = a1;
  v92 = a2;
  v4 = sub_2387583E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_238758450();
  v99 = *(v95 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x28223BE20](v95);
  v101 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v73 - v10;
  v96 = sub_2387583F0();
  v94 = *(v96 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238758430();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v73 - v20;
  v22 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v97 = *(v22 - 1);
  v23 = *(v97 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_238758520();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_238758470();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v36;
  v37 = *(v36 + 16);
  v89 = v38;
  v37(v35, v91, v33);
  v91 = v27;
  v39 = *(v27 + 16);
  v40 = v92;
  v92 = v26;
  v39(v30, v40, v26);
  v41 = v22[8];
  v42 = sub_23875B940();
  (*(*(v42 - 8) + 56))(&v25[v41], 1, 1, v42);
  *(v25 + 8) = sub_238758510();
  *(v25 + 9) = v43;
  v79 = v43;
  v82 = v22[7];
  sub_238758500();
  sub_2387583A0();
  v83 = v41;
  sub_2384A475C(v21, &v25[v41]);
  v44 = sub_238758490();
  v45 = &v25[v22[9]];
  *v45 = v44;
  v45[1] = v46;
  v81 = v46;
  *(v25 + 10) = sub_2387584C0();
  *(v25 + 11) = v47;
  v78 = v47;
  v48 = sub_2387584D0();
  v49 = v22[10];
  v80 = v48;
  *&v25[v49] = v48;
  v25[v22[11]] = v88 & 1;
  v88 = v22;
  v25[v22[12]] = 4;
  sub_238758440();
  v77 = sub_238758420();
  v84 = v50;
  (*(v86 + 8))(v17, v87);
  v76 = sub_238758410();
  v87 = v51;
  sub_238758400();
  v86 = sub_2387583D0();
  v53 = v52;
  v74 = sub_2387583B0();
  v55 = v54;
  v56 = v90;
  sub_238758460();
  v57 = v93;
  sub_2387583C0();
  LODWORD(v90) = sub_2384A307C(v56, v57);
  v58 = v101;
  sub_238758460();
  v59 = v95;
  if ((*(v99 + 88))(v58, v95) == *MEMORY[0x277CC6F40])
  {
    v60 = v84;
    v75 = v53;
    v61 = v85;
    v62 = v94;
    if (v55)
    {
      if (v75)
      {

        sub_2387583C0();
        v63 = sub_2384A3D28(v57);
        (*(v62 + 8))(v13, v96);
        (*(v91 + 8))(v30, v92);
        (*(v61 + 8))(v35, v89);
        *v25 = v74;
        *(v25 + 1) = v55;
        v64 = v75;
        *(v25 + 2) = v86;
        *(v25 + 3) = v64;
        v25[32] = v63;
        *(v25 + 33) = *v100;
        *(v25 + 6) = *&v100[15];
        v25[56] = 1;
LABEL_13:
        v70 = v98;
        sub_23870F694(v25, v98, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        (*(v97 + 56))(v70, 0, 1, v88);
        return sub_23870F348(v25);
      }
    }

    (*(v62 + 8))(v13, v96);
    (*(v91 + 8))(v30, v92);
    (*(v61 + 8))(v35, v89);
    if (v60)
    {
      v67 = v60;
      v68 = v75;
      v69 = v87;
      if (v87)
      {
        *v25 = v90;
        *(v25 + 1) = v77;
        *(v25 + 2) = v67;
        *(v25 + 3) = v76;
        *(v25 + 4) = v69;
        *(v25 + 5) = v86;
        *(v25 + 6) = v68;
        v25[56] = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {

    (*(v94 + 8))(v13, v96);
    (*(v91 + 8))(v30, v92);
    (*(v85 + 8))(v35, v89);
    v65 = v84;
    if (v84)
    {
      v66 = v87;
      if (v87)
      {
        *v25 = v90;
        *(v25 + 1) = v77;
        *(v25 + 2) = v65;
        *(v25 + 3) = v76;
        *(v25 + 4) = v66;
        *(v25 + 5) = v86;
        *(v25 + 6) = v53;
        v25[56] = 0;
        (*(v99 + 8))(v101, v59);
        goto LABEL_13;
      }
    }

    (*(v99 + 8))(v101, v59);
  }

  v72 = sub_23875BC40();
  (*(*(v72 - 8) + 8))(&v25[v82], v72);
  sub_238439884(&v25[v83], &qword_27DF0D040, &qword_2387676A0);

  return (*(v97 + 56))(v98, 1, 1, v88);
}

void sub_238706978(uint64_t *a1)
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
        type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2387072F4(v8, v9, a1, v4);
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
    sub_238706AA4(0, v2, 1, a1);
  }
}

void sub_238706AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  v71 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v83 = -v19;
    v84 = v18;
    v21 = a1 - a3;
    v70 = v19;
    v22 = v18 + v19 * a3;
    v82 = v8;
    while (1)
    {
      v74 = v20;
      v75 = a3;
      v72 = v22;
      v73 = v21;
      while (1)
      {
        sub_23870F694(v22, v17, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23870F694(v20, v13, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v30 = *(v8 + 28);
        if (sub_23875BBD0())
        {
          break;
        }

        v47 = sub_23875BB50();
LABEL_71:
        sub_23870F348(v13);
        sub_23870F348(v17);
        if ((v47 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_72:
        if (!v84)
        {
          __break(1u);
          return;
        }

        v67 = v85;
        sub_23870F6FC(v22, v85, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        swift_arrayInitWithTakeFrontToBack();
        sub_23870F6FC(v67, v20, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v20 += v83;
        v22 += v83;
        if (__CFADD__(v21++, 1))
        {
          goto LABEL_6;
        }
      }

      v31 = *v13;
      v32 = *(v13 + 1);
      v33 = *(v13 + 3);
      v35 = *(v13 + 4);
      v34 = *(v13 + 5);
      v36 = *(v13 + 6);
      v37 = v13[56];
      v39 = *v17;
      v38 = *(v17 + 1);
      v40 = *(v17 + 2);
      v41 = *(v17 + 3);
      v43 = *(v17 + 4);
      v42 = *(v17 + 5);
      v44 = *(v17 + 6);
      v45 = v17[56];
      if (v13[56])
      {
        break;
      }

      if (!v17[56])
      {
        if (v33 == v41 && v35 == v43)
        {
          goto LABEL_81;
        }

        v48 = *(v13 + 3);
        v80 = *(v17 + 5);
        v81 = v33;
        v76 = v35;
        v77 = v31;
        v78 = v44;
        v79 = v34;
        v49 = v36;
        v50 = sub_23875F630();
        LOBYTE(v31) = v77;
        v42 = v80;
        v44 = v78;
        v34 = v79;
        v36 = v49;
        if (v50)
        {
LABEL_81:
          v51 = 1;
          v52 = 2;
          v53 = 0;
          v54 = v31;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          switch(v54)
          {
            case 1:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v62 = 1;
              v52 = 4;
              break;
            case 2:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v61 = 1;
              v52 = 5;
              break;
            case 3:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v60 = 1;
              v52 = 6;
              break;
            case 4:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v59 = 1;
              v52 = 7;
              break;
            case 5:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v64 = 0;
              v65 = 0;
              v63 = 1;
              v52 = 3;
              break;
            case 6:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v58 = 1;
              v52 = 8;
              break;
            case 7:
            case 13:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v57 = 1;
              v52 = 9;
              break;
            case 8:
            case 14:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v56 = 1;
              v52 = 10;
              break;
            case 9:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v65 = 0;
              v64 = 1;
              v52 = 1;
              break;
            case 11:
              break;
            case 12:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v65 = 0;
              v52 = 1;
              v64 = 1;
              break;
            case 15:
              v53 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v55 = 1;
              v52 = 11;
              break;
            case 16:
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v53 = 1;
              v52 = 12;
              break;
            default:
              v53 = 0;
              v55 = 0;
              v51 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v52 = 0;
              v65 = 1;
              break;
          }

          switch(v39)
          {
            case 1:
              if (v62)
              {
                goto LABEL_63;
              }

              v66 = 4;
              goto LABEL_69;
            case 2:
              if (v61)
              {
                goto LABEL_63;
              }

              v66 = 5;
              goto LABEL_69;
            case 3:
              if (v60)
              {
                goto LABEL_63;
              }

              v66 = 6;
              goto LABEL_69;
            case 4:
              if (v59)
              {
                goto LABEL_63;
              }

              v66 = 7;
              goto LABEL_69;
            case 5:
              if (v63)
              {
                goto LABEL_63;
              }

              v66 = 3;
              goto LABEL_69;
            case 6:
              if (v58)
              {
                goto LABEL_63;
              }

              v66 = 8;
              goto LABEL_69;
            case 7:
            case 13:
              if (v57)
              {
                goto LABEL_63;
              }

              v66 = 9;
              goto LABEL_69;
            case 8:
            case 14:
              if (v56)
              {
                goto LABEL_63;
              }

              v66 = 10;
              goto LABEL_69;
            case 9:
            case 12:
              if (v64)
              {
                goto LABEL_63;
              }

              v66 = 1;
              goto LABEL_69;
            case 11:
              if (v51)
              {
                goto LABEL_63;
              }

              v66 = 2;
              goto LABEL_69;
            case 15:
              if (v55)
              {
                goto LABEL_63;
              }

              v66 = 11;
              goto LABEL_69;
            case 16:
              if (v53)
              {
                goto LABEL_63;
              }

              v66 = 12;
              goto LABEL_69;
            default:
              if (!v65)
              {
                v66 = 0;
LABEL_69:
                v47 = v52 < v66;
                goto LABEL_70;
              }

LABEL_63:
              if (!v36 || !v44 || v34 == v42 && v36 == v44)
              {
                goto LABEL_5;
              }

              break;
          }
        }

LABEL_67:
        v47 = sub_23875F630();
LABEL_70:
        v8 = v82;
        goto LABEL_71;
      }

      if (v45 != 1)
      {
LABEL_4:
        v79 = *(v13 + 2);
        v80 = v42;
        v23 = v39;
        v81 = v33;
        v24 = v35;
        v25 = v43;
        v26 = v34;
        v27 = v36;
        v28 = v31;
        v29 = v32;
        v78 = v38;
        sub_2384A463C(v23, v38, v40, v41, v25, v42, v44, 2);
        sub_2384A463C(v28, v29, v79, v81, v24, v26, v27, v37);

        sub_2384A46CC(v28, v29, v79, v81, v24, v26, v27, v37);
      }

LABEL_5:
      sub_23870F348(v13);
      sub_23870F348(v17);
      v8 = v82;
LABEL_6:
      a3 = v75 + 1;
      v20 = v74 + v70;
      v21 = v73 - 1;
      v22 = v72 + v70;
      if (v75 + 1 == v71)
      {
        return;
      }
    }

    if (v37 != 1 || !v17[56])
    {
      sub_23870F348(v13);
      sub_23870F348(v17);
      v8 = v82;
      goto LABEL_72;
    }

    if (v45 != 1)
    {
      goto LABEL_4;
    }

    if (*(v13 + 2) == v40 && v33 == v41)
    {
      goto LABEL_5;
    }

    v46 = *(v17 + 3);
    goto LABEL_67;
  }
}

void sub_2387072F4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v161 = a1;
  v6 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v175 = *(v6 - 8);
  v7 = *(v175 + 64);
  MEMORY[0x28223BE20](v6);
  v164 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v156 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v156 - v13);
  MEMORY[0x28223BE20](v15);
  v190 = (&v156 - v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v159 = &v156 - v20;
  MEMORY[0x28223BE20](v21);
  v158 = &v156 - v24;
  v177 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_235:
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_273;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v179;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_237:
      v189 = v27;
      v152 = *(v27 + 2);
      if (v152 >= 2)
      {
        while (*v177)
        {
          v153 = *&v27[16 * v152];
          v154 = *&v27[16 * v152 + 24];
          sub_238708B1C(*v177 + *(v175 + 72) * v153, *v177 + *(v175 + 72) * *&v27[16 * v152 + 16], *v177 + *(v175 + 72) * v154, a3);
          if (v28)
          {
            goto LABEL_245;
          }

          if (v154 < v153)
          {
            goto LABEL_260;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_238490ED4(v27);
          }

          if (v152 - 2 >= *(v27 + 2))
          {
            goto LABEL_261;
          }

          v155 = &v27[16 * v152];
          *v155 = v153;
          *(v155 + 1) = v154;
          v189 = v27;
          sub_238490E48(v152 - 1);
          v27 = v189;
          v152 = *(v189 + 2);
          if (v152 <= 1)
          {
            goto LABEL_245;
          }
        }

        goto LABEL_271;
      }

LABEL_245:

      return;
    }

LABEL_267:
    v27 = sub_238490ED4(v27);
    goto LABEL_237;
  }

  v165 = v23;
  v166 = v22;
  v157 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v174 = v11;
  v181 = v14;
LABEL_4:
  v28 = v26;
  v176 = v27;
  if (v26 + 1 >= v25)
  {
    v65 = v26 + 1;
    goto LABEL_95;
  }

  v180 = v25;
  v29 = *v177;
  v30 = *(v175 + 72);
  v31 = *v177 + v30 * (v26 + 1);
  v32 = v158;
  sub_23870F694(v31, v158, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  v33 = v29 + v30 * v28;
  v34 = v28;
  v35 = v159;
  sub_23870F694(v33, v159, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  LODWORD(v183) = sub_2384A3F7C(v35, v32);
  sub_23870F348(v35);
  sub_23870F348(v32);
  v160 = v34;
  v36 = v34 + 2;
  a3 = v29 + v30 * (v34 + 2);
  v37 = v166;
  v27 = v165;
  do
  {
    if (v180 == v36)
    {
      v65 = v180;
      goto LABEL_80;
    }

    sub_23870F694(a3, v27, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    sub_23870F694(v31, v37, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v39 = *(v6 + 28);
    if (sub_23875BBD0())
    {
      v40 = v37[1];
      v185 = *v37;
      *v186 = v40;
      *&v186[16] = v37[2];
      *&v186[25] = *(v37 + 41);
      v41 = *(v27 + 1);
      v187 = *v27;
      *v188 = v41;
      *&v188[16] = *(v27 + 2);
      *&v188[25] = *(v27 + 41);
      if (v186[40])
      {
        if (v186[40] == 1 && v188[40])
        {
          if (v188[40] == 1)
          {
            if (*v186 != *v188)
            {
              v38 = sub_23875F630();
              goto LABEL_7;
            }
          }

          else
          {
            sub_23870F3A4(&v187, v184);
            sub_23870F3A4(&v185, v184);

            v14 = v181;

            sub_23870F400(&v185);
          }

          v38 = 0;
          goto LABEL_7;
        }

        v38 = 1;
LABEL_7:
        v37 = v166;
        v27 = v165;
        goto LABEL_8;
      }

      v43 = *&v188[24];
      if (v188[40])
      {
        if (v188[40] != 1)
        {
          sub_23870F3A4(&v187, v184);
          sub_23870F3A4(&v185, v184);

          sub_23870F400(&v185);
        }

        v38 = 0;
        goto LABEL_23;
      }

      v44 = v185;
      v45 = *&v186[24];
      v46 = *&v186[32];
      v182 = v187;
      v47 = *&v188[32];
      if (*&v186[8] != *&v188[8])
      {
        v172 = *&v186[24];
        v178 = *&v186[16];
        v171 = *&v186[32];
        v170 = *&v188[32];
        v169 = v185;
        v48 = sub_23875F630();
        v44 = v169;
        v47 = v170;
        v45 = v172;
        v46 = v171;
        if ((v48 & 1) == 0)
        {
          v38 = sub_23875F630();
LABEL_23:
          v14 = v181;
          goto LABEL_7;
        }
      }

      v49 = 1;
      v50 = 2;
      v51 = v43;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v14 = v181;
      v37 = v166;
      v27 = v165;
      switch(v44)
      {
        case 1:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v60 = 1;
          v50 = 4;
          break;
        case 2:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v59 = 1;
          v50 = 5;
          break;
        case 3:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v58 = 1;
          v50 = 6;
          break;
        case 4:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v57 = 1;
          v50 = 7;
          break;
        case 5:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v62 = 0;
          v63 = 0;
          v61 = 1;
          v50 = 3;
          break;
        case 6:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v56 = 1;
          v50 = 8;
          break;
        case 7:
        case 13:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v55 = 1;
          v50 = 9;
          break;
        case 8:
        case 14:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v54 = 1;
          v50 = 10;
          break;
        case 9:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v63 = 0;
          v62 = 1;
          v50 = 1;
          break;
        case 11:
          break;
        case 12:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v63 = 0;
          v50 = 1;
          v62 = 1;
          break;
        case 15:
          v52 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v53 = 1;
          v50 = 11;
          break;
        case 16:
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v52 = 1;
          v50 = 12;
          break;
        default:
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v50 = 0;
          v63 = 1;
          break;
      }

      switch(v182)
      {
        case 1:
          if (v60)
          {
            goto LABEL_69;
          }

          v64 = 4;
          goto LABEL_76;
        case 2:
          if (v59)
          {
            goto LABEL_69;
          }

          v64 = 5;
          goto LABEL_76;
        case 3:
          if (v58)
          {
            goto LABEL_69;
          }

          v64 = 6;
          goto LABEL_76;
        case 4:
          if (v57)
          {
            goto LABEL_69;
          }

          v64 = 7;
          goto LABEL_76;
        case 5:
          if (v61)
          {
            goto LABEL_69;
          }

          v64 = 3;
          goto LABEL_76;
        case 6:
          if (v56)
          {
            goto LABEL_69;
          }

          v64 = 8;
          goto LABEL_76;
        case 7:
        case 13:
          if (v55)
          {
            goto LABEL_69;
          }

          v64 = 9;
          goto LABEL_76;
        case 8:
        case 14:
          if (v54)
          {
            goto LABEL_69;
          }

          v64 = 10;
          goto LABEL_76;
        case 9:
        case 12:
          if (v62)
          {
            goto LABEL_69;
          }

          v64 = 1;
          goto LABEL_76;
        case 11:
          if (v49)
          {
            goto LABEL_69;
          }

          v64 = 2;
          goto LABEL_76;
        case 15:
          if (v53)
          {
            goto LABEL_69;
          }

          v64 = 11;
          goto LABEL_76;
        case 16:
          if (v52)
          {
            goto LABEL_69;
          }

          v64 = 12;
          goto LABEL_76;
        default:
          if (!v63)
          {
            v64 = 0;
LABEL_76:
            v38 = v50 < v64;
            goto LABEL_8;
          }

LABEL_69:
          if (!v46 || !v47 || v45 == v51 && v46 == v47)
          {
            v38 = 0;
            goto LABEL_8;
          }

          v42 = sub_23875F630();
          break;
      }
    }

    else
    {
      v42 = sub_23875BB50();
    }

    v38 = v42;
LABEL_8:
    sub_23870F348(v37);
    sub_23870F348(v27);
    ++v36;
    a3 += v30;
    v31 += v30;
  }

  while (((v183 ^ v38) & 1) == 0);
  v65 = v36 - 1;
LABEL_80:
  v28 = v160;
  if ((v183 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v65 < v160)
  {
    goto LABEL_264;
  }

  if (v160 < v65)
  {
    v66 = v30 * (v65 - 1);
    v67 = v65;
    v68 = v65 * v30;
    v180 = v65;
    v69 = v160 * v30;
    do
    {
      if (v28 != --v67)
      {
        v70 = *v177;
        if (!*v177)
        {
          goto LABEL_270;
        }

        a3 = v70 + v69;
        sub_23870F6FC(v70 + v69, v164, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        if (v69 < v66 || a3 >= v70 + v68)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v69 != v66)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_23870F6FC(v164, v70 + v66, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      }

      ++v28;
      v66 -= v30;
      v68 -= v30;
      v69 += v30;
    }

    while (v28 < v67);
    v27 = v176;
    v11 = v174;
    v14 = v181;
    v28 = v160;
    v65 = v180;
  }

  else
  {
LABEL_93:
    v27 = v176;
    v11 = v174;
  }

LABEL_95:
  v71 = v177[1];
  if (v65 >= v71)
  {
    goto LABEL_104;
  }

  if (__OFSUB__(v65, v28))
  {
    goto LABEL_263;
  }

  if (v65 - v28 >= v157)
  {
LABEL_104:
    v26 = v65;
    if (v65 < v28)
    {
      goto LABEL_262;
    }

    goto LABEL_105;
  }

  if (__OFADD__(v28, v157))
  {
    goto LABEL_265;
  }

  if (v28 + v157 >= v71)
  {
    v72 = v177[1];
  }

  else
  {
    v72 = v28 + v157;
  }

  if (v72 < v28)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  if (v65 == v72)
  {
    goto LABEL_104;
  }

  v119 = *v177;
  v120 = *(v175 + 72);
  v121 = *v177 + v120 * (v65 - 1);
  v182 = -v120;
  v160 = v28;
  v122 = v28 - v65;
  v183 = v119;
  v162 = v120;
  a3 = v119 + v65 * v120;
  v173 = v6;
  v163 = v72;
  while (2)
  {
    v180 = v65;
    v167 = a3;
    v168 = v122;
    v169 = v121;
LABEL_159:
    v123 = v190;
    sub_23870F694(a3, v190, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    sub_23870F694(v121, v14, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v124 = *(v6 + 28);
    if ((sub_23875BBD0() & 1) == 0)
    {
      v128 = sub_23875BB50();
LABEL_167:
      v127 = v128;
      goto LABEL_168;
    }

    v125 = v14[1];
    v185 = *v14;
    *v186 = v125;
    *&v186[16] = v14[2];
    *&v186[25] = *(v14 + 41);
    v126 = v123[1];
    v187 = *v123;
    *v188 = v126;
    *&v188[16] = v123[2];
    *&v188[25] = *(v123 + 41);
    if (!v186[40])
    {
      v130 = *&v188[24];
      if (!v188[40])
      {
        v131 = v185;
        v132 = *&v186[24];
        v133 = *&v186[32];
        v178 = v187;
        v134 = *&v188[32];
        if (*&v186[8] != *&v188[8])
        {
          v171 = *&v188[24];
          v172 = *&v186[32];
          v170 = v185;
          v135 = sub_23875F630();
          v131 = v170;
          v133 = v172;
          v130 = v171;
          if ((v135 & 1) == 0)
          {
            v127 = sub_23875F630();
            v27 = v176;
            v6 = v173;
            v11 = v174;
            goto LABEL_181;
          }
        }

        v136 = 1;
        v137 = 2;
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v27 = v176;
        v11 = v174;
        v14 = v181;
        switch(v131)
        {
          case 1:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v146 = 1;
            v137 = 4;
            break;
          case 2:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v145 = 1;
            v137 = 5;
            break;
          case 3:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v144 = 1;
            v137 = 6;
            break;
          case 4:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v143 = 1;
            v137 = 7;
            break;
          case 5:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v148 = 0;
            v149 = 0;
            v147 = 1;
            v137 = 3;
            break;
          case 6:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v142 = 1;
            v137 = 8;
            break;
          case 7:
          case 13:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v141 = 1;
            v137 = 9;
            break;
          case 8:
          case 14:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v140 = 1;
            v137 = 10;
            break;
          case 9:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v149 = 0;
            v148 = 1;
            v137 = 1;
            break;
          case 11:
            break;
          case 12:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v149 = 0;
            v137 = 1;
            v148 = 1;
            break;
          case 15:
            v138 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v139 = 1;
            v137 = 11;
            break;
          case 16:
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v138 = 1;
            v137 = 12;
            break;
          default:
            v138 = 0;
            v139 = 0;
            v136 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v137 = 0;
            v149 = 1;
            break;
        }

        v6 = v173;
        v123 = v190;
        switch(v178)
        {
          case 1:
            if (v146)
            {
              goto LABEL_220;
            }

            v150 = 4;
            goto LABEL_226;
          case 2:
            if (v145)
            {
              goto LABEL_220;
            }

            v150 = 5;
            goto LABEL_226;
          case 3:
            if (v144)
            {
              goto LABEL_220;
            }

            v150 = 6;
            goto LABEL_226;
          case 4:
            if (v143)
            {
              goto LABEL_220;
            }

            v150 = 7;
            goto LABEL_226;
          case 5:
            if (v147)
            {
              goto LABEL_220;
            }

            v150 = 3;
            goto LABEL_226;
          case 6:
            if (v142)
            {
              goto LABEL_220;
            }

            v150 = 8;
            goto LABEL_226;
          case 7:
          case 13:
            if (v141)
            {
              goto LABEL_220;
            }

            v150 = 9;
            goto LABEL_226;
          case 8:
          case 14:
            if (v140)
            {
              goto LABEL_220;
            }

            v150 = 10;
            goto LABEL_226;
          case 9:
          case 12:
            if (v148)
            {
              goto LABEL_220;
            }

            v150 = 1;
            goto LABEL_226;
          case 11:
            if (v136)
            {
              goto LABEL_220;
            }

            v150 = 2;
            goto LABEL_226;
          case 15:
            if (v139)
            {
              goto LABEL_220;
            }

            v150 = 11;
            goto LABEL_226;
          case 16:
            if (v138)
            {
              goto LABEL_220;
            }

            v150 = 12;
            goto LABEL_226;
          default:
            if (!v149)
            {
              v150 = 0;
LABEL_226:
              v127 = v137 < v150;
              v123 = v190;
              goto LABEL_168;
            }

LABEL_220:
            if (!v133 || !v134 || v132 == v130 && v133 == v134)
            {
              goto LABEL_156;
            }

            v128 = sub_23875F630();
            break;
        }

        goto LABEL_167;
      }

      if (v188[40] != 1)
      {
        sub_23870F3A4(&v187, v184);
        sub_23870F3A4(&v185, v184);

        sub_23870F400(&v185);
      }

      v27 = v176;
      v11 = v174;
      v14 = v181;
LABEL_156:
      sub_23870F348(v14);
      sub_23870F348(v123);
LABEL_157:
      v65 = v180 + 1;
      v121 = v169 + v162;
      v122 = v168 - 1;
      a3 = v167 + v162;
      v26 = v163;
      if (v180 + 1 != v163)
      {
        continue;
      }

      v28 = v160;
      if (v163 < v160)
      {
        goto LABEL_262;
      }

LABEL_105:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_238490EE8(0, *(v27 + 2) + 1, 1, v27);
      }

      v74 = *(v27 + 2);
      v73 = *(v27 + 3);
      v75 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        v27 = sub_238490EE8((v73 > 1), v74 + 1, 1, v27);
      }

      *(v27 + 2) = v75;
      v76 = &v27[16 * v74];
      *(v76 + 4) = v28;
      *(v76 + 5) = v26;
      a3 = *v161;
      if (!*v161)
      {
        goto LABEL_272;
      }

      if (!v74)
      {
LABEL_3:
        v25 = v177[1];
        v14 = v181;
        if (v26 >= v25)
        {
          goto LABEL_235;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v27 + 4);
          v79 = *(v27 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_124:
          if (v81)
          {
            goto LABEL_251;
          }

          v94 = &v27[16 * v75];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_254;
          }

          v100 = &v27[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_257;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_258;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_145;
          }

          goto LABEL_138;
        }

        v104 = &v27[16 * v75];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_138:
        if (v99)
        {
          goto LABEL_253;
        }

        v107 = &v27[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_256;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_145:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
          goto LABEL_266;
        }

        if (!*v177)
        {
          goto LABEL_269;
        }

        v116 = *&v27[16 * v115 + 32];
        v28 = *&v27[16 * v77 + 40];
        v117 = v179;
        sub_238708B1C(*v177 + *(v175 + 72) * v116, *v177 + *(v175 + 72) * *&v27[16 * v77 + 32], *v177 + *(v175 + 72) * v28, a3);
        v179 = v117;
        if (v117)
        {
          goto LABEL_245;
        }

        if (v28 < v116)
        {
          goto LABEL_247;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_238490ED4(v27);
        }

        if (v115 >= *(v27 + 2))
        {
          goto LABEL_248;
        }

        v118 = &v27[16 * v115];
        *(v118 + 4) = v116;
        *(v118 + 5) = v28;
        v189 = v27;
        sub_238490E48(v77);
        v27 = v189;
        v75 = *(v189 + 2);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v27[16 * v75 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_249;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_250;
      }

      v89 = &v27[16 * v75];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_252;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_255;
      }

      if (v93 >= v85)
      {
        v111 = &v27[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_259;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_145;
      }

      goto LABEL_124;
    }

    break;
  }

  if (v186[40] == 1 && v188[40])
  {
    if (v188[40] != 1)
    {
      sub_23870F3A4(&v187, v184);
      sub_23870F3A4(&v185, v184);

      sub_23870F400(&v185);
LABEL_230:
      v14 = v181;
      v123 = v190;
      goto LABEL_156;
    }

    if (*v186 == *v188)
    {
      goto LABEL_230;
    }

    v127 = sub_23875F630();
LABEL_181:
    v14 = v181;
    v123 = v190;
LABEL_168:
    sub_23870F348(v14);
    sub_23870F348(v123);
    if ((v127 & 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else
  {
    v14 = v181;
    sub_23870F348(v181);
    sub_23870F348(v123);
  }

  if (v183)
  {
    sub_23870F6FC(a3, v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    swift_arrayInitWithTakeFrontToBack();
    sub_23870F6FC(v11, v121, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v121 += v182;
    a3 += v182;
    if (__CFADD__(v122++, 1))
    {
      goto LABEL_157;
    }

    goto LABEL_159;
  }

  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
}