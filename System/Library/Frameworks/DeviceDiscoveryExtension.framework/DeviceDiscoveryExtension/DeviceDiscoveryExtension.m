__CFString *DDErrorCodeToString(uint64_t a1)
{
  if (a1 > 350002)
  {
    if (a1 > 350004)
    {
      if (a1 == 350005)
      {
        return @"DDErrorCodeMissingEntitlement";
      }

      if (a1 == 350006)
      {
        return @"DDErrorCodePermission";
      }

      return @"?";
    }

    if (a1 == 350003)
    {
      return @"DDErrorCodeTimeout";
    }

    else
    {
      return @"DDErrorCodeInternal";
    }
  }

  else
  {
    if (a1 <= 350000)
    {
      if (!a1)
      {
        return @"DDErrorCodeSuccess";
      }

      if (a1 == 350000)
      {
        return @"DDErrorCodeUnknown";
      }

      return @"?";
    }

    if (a1 == 350001)
    {
      return @"DDErrorCodeBadParameter";
    }

    else
    {
      return @"DDErrorCodeUnsupported";
    }
  }
}

id DDErrorF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v17 = @"cuErrorMsg";
  v18[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [v12 initWithDomain:@"DDErrorDomain" code:a1 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id DDNestedErrorF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v12 arguments:&a9];
  v14 = v11;
  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  if (v14)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v27[0] = @"cuErrorMsg";
    v27[1] = v16;
    v28[0] = v13;
    v28[1] = v14;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v28;
    v19 = v27;
    v20 = 2;
  }

  else
  {
    v25 = @"cuErrorMsg";
    v26 = v13;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v26;
    v19 = &v25;
    v20 = 1;
  }

  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  v22 = [v15 initWithDomain:@"DDErrorDomain" code:a2 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

NSString *__cdecl DDEventTypeToString(DDEventType inValue)
{
  if (inValue > DDEventTypeDeviceFound)
  {
    if (inValue != DDEventTypeDeviceLost)
    {
      if (inValue == DDEventTypeDeviceChanged)
      {
        return @"DeviceChanged";
      }

      return @"?";
    }

    return @"DeviceLost";
  }

  else
  {
    if (inValue)
    {
      if (inValue == DDEventTypeDeviceFound)
      {
        return @"DeviceFound";
      }

      return @"?";
    }

    return @"Unknown";
  }
}

NSString *__cdecl DDDeviceProtocolToString(DDDeviceProtocol inValue)
{
  v1 = @"?";
  if (inValue == DDDeviceProtocolDIAL)
  {
    v1 = @"DIAL";
  }

  if (inValue)
  {
    return &v1->isa;
  }

  else
  {
    return @"Invalid";
  }
}

NSString *__cdecl DDDeviceCategoryToString(DDDeviceCategory inValue)
{
  if (inValue > (DDDeviceCategoryLaptopComputer|DDDeviceCategoryTVWithMediaBox))
  {
    return @"?";
  }

  else
  {
    return &off_278A46A18[inValue]->isa;
  }
}

NSString *__cdecl DDDeviceStateToString(DDDeviceState inValue)
{
  if (inValue <= 19)
  {
    if (inValue == DDDeviceStateInvalid)
    {
      return @"Invalid";
    }

    if (inValue == DDDeviceStateActivating)
    {
      return @"Activating";
    }
  }

  else
  {
    switch(inValue)
    {
      case DDDeviceStateActivated:
        return @"Activated";
      case DDDeviceStateAuthorized:
        return @"Authorized";
      case DDDeviceStateInvalidating:
        return @"Invalidating";
    }
  }

  return @"?";
}

NSString *__cdecl DDDeviceMediaPlaybackStateToString(DDDeviceMediaPlaybackState inValue)
{
  if (inValue > DDDeviceMediaPlaybackStatePlaying)
  {
    return @"?";
  }

  else
  {
    return &off_278A46A50[inValue]->isa;
  }
}

uint64_t OUTLINED_FUNCTION_0()
{

  return CUXPCDecodeSInt64RangedEx();
}

uint64_t DDDevice.networkEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 networkEndpoint])
  {

    return sub_23805BEB8();
  }

  else
  {
    v4 = sub_23805BEA8();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t sub_238058494@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 networkEndpoint])
  {

    return sub_23805BEB8();
  }

  else
  {
    v4 = sub_23805BEA8();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }
}

uint64_t sub_238058538(uint64_t a1, void **a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98B8, &qword_23805D0D0) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_238059050(a1, &v15 - v8, &qword_27DEE98B8, &qword_23805D0D0);
  v10 = *a2;
  sub_238059050(v9, v7, &qword_27DEE98B8, &qword_23805D0D0);
  v11 = sub_23805BEA8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_2380590B8(v7, &qword_27DEE98B8, &qword_23805D0D0);
    v13 = 0;
  }

  else
  {
    v13 = sub_23805BE98();
    (*(v12 + 8))(v7, v11);
  }

  [v10 setNetworkEndpoint_];
  swift_unknownObjectRelease();
  return sub_2380590B8(v9, &qword_27DEE98B8, &qword_23805D0D0);
}

uint64_t DDDevice.networkEndpoint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98B8, &qword_23805D0D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_238059050(a1, &v12 - v6, &qword_27DEE98B8, &qword_23805D0D0);
  v8 = sub_23805BEA8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2380590B8(v7, &qword_27DEE98B8, &qword_23805D0D0);
    v10 = 0;
  }

  else
  {
    v10 = sub_23805BE98();
    (*(v9 + 8))(v7, v8);
  }

  [v2 setNetworkEndpoint_];
  swift_unknownObjectRelease();
  return sub_2380590B8(a1, &qword_27DEE98B8, &qword_23805D0D0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void (*DDDevice.networkEndpoint.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98B8, &qword_23805D0D0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  if ([v1 networkEndpoint])
  {
    sub_23805BEB8();
  }

  else
  {
    v9 = sub_23805BEA8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  return sub_238058A14;
}

void sub_238058A14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_238059050(v3, v4, &qword_27DEE98B8, &qword_23805D0D0);
    sub_238059050(v4, v5, &qword_27DEE98B8, &qword_23805D0D0);
    v6 = sub_23805BEA8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v2 + 8);
    if (v8 == 1)
    {
      sub_2380590B8(*(v2 + 8), &qword_27DEE98B8, &qword_23805D0D0);
      v10 = 0;
    }

    else
    {
      v10 = sub_23805BE98();
      (*(v7 + 8))(v9, v6);
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    v20 = *(v2 + 8);
    v19 = *(v2 + 16);
    [*v2 setNetworkEndpoint_];
    swift_unknownObjectRelease();
    sub_2380590B8(v19, &qword_27DEE98B8, &qword_23805D0D0);
  }

  else
  {
    v11 = *(v2 + 24);
    sub_238059050(v3, v11, &qword_27DEE98B8, &qword_23805D0D0);
    v12 = sub_23805BEA8();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v2 + 24);
    if (v14 == 1)
    {
      sub_2380590B8(*(v2 + 24), &qword_27DEE98B8, &qword_23805D0D0);
      v16 = 0;
    }

    else
    {
      v16 = sub_23805BE98();
      (*(v13 + 8))(v15, v12);
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    v20 = *(v2 + 8);
    v19 = *(v2 + 16);
    [*v2 setNetworkEndpoint_];
    swift_unknownObjectRelease();
  }

  sub_2380590B8(v17, &qword_27DEE98B8, &qword_23805D0D0);
  free(v17);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t DDDevice.txtRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 txtRecordData];
  if (v3)
  {
    v4 = v3;
    sub_23805BDF8();

    sub_23805BEE8();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23805BED8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_238058D50@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 txtRecordData];
  if (v3)
  {
    v4 = v3;
    sub_23805BDF8();

    sub_23805BEE8();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23805BED8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_238058E10(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98C0, &qword_23805D0D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_238059050(a1, &v10 - v6, &qword_27DEE98C0, &qword_23805D0D8);
  v8 = *a2;
  return DDDevice.txtRecord.setter(v7);
}

uint64_t DDDevice.txtRecord.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98C0, &qword_23805D0D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_238059050(a1, &v15 - v6, &qword_27DEE98C0, &qword_23805D0D8);
  v8 = sub_23805BED8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2380590B8(v7, &qword_27DEE98C0, &qword_23805D0D8);
    v10 = 0;
  }

  else
  {
    v11 = sub_23805BEC8();
    v13 = v12;
    (*(v9 + 8))(v7, v8);
    v10 = sub_23805BDE8();
    sub_238059118(v11, v13);
  }

  [v2 setTxtRecordData_];

  return sub_2380590B8(a1, &qword_27DEE98C0, &qword_23805D0D8);
}

uint64_t sub_238059050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2380590B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238059118(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void (*DDDevice.txtRecord.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE98C0, &qword_23805D0D8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = [v1 txtRecordData];
  if (v9)
  {
    v10 = v9;
    sub_23805BDF8();

    sub_23805BEE8();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23805BED8();
  (*(*(v12 - 8) + 56))(v8, v11, 1, v12);
  return sub_23805930C;
}

void sub_23805930C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_238059050(v3, v4, &qword_27DEE98C0, &qword_23805D0D8);
    sub_238059050(v4, v5, &qword_27DEE98C0, &qword_23805D0D8);
    v6 = sub_23805BED8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v2 + 8);
    if (v8 == 1)
    {
      sub_2380590B8(*(v2 + 8), &qword_27DEE98C0, &qword_23805D0D8);
      v10 = 0;
    }

    else
    {
      v17 = sub_23805BEC8();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      v10 = sub_23805BDE8();
      sub_238059118(v17, v19);
    }

    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    v23 = *(v2 + 8);
    v22 = *(v2 + 16);
    [*v2 setTxtRecordData_];

    sub_2380590B8(v22, &qword_27DEE98C0, &qword_23805D0D8);
  }

  else
  {
    v11 = *(v2 + 24);
    sub_238059050(v3, v11, &qword_27DEE98C0, &qword_23805D0D8);
    v12 = sub_23805BED8();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v2 + 24);
    if (v14 == 1)
    {
      sub_2380590B8(*(v2 + 24), &qword_27DEE98C0, &qword_23805D0D8);
      v16 = 0;
    }

    else
    {
      v24 = sub_23805BEC8();
      v26 = v25;
      (*(v13 + 8))(v15, v12);
      v16 = sub_23805BDE8();
      sub_238059118(v24, v26);
    }

    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    v23 = *(v2 + 8);
    v22 = *(v2 + 16);
    [*v2 setTxtRecordData_];
  }

  sub_2380590B8(v20, &qword_27DEE98C0, &qword_23805D0D8);
  free(v20);
  free(v21);
  free(v22);
  free(v23);

  free(v2);
}

uint64_t sub_2380595C0()
{
  v0 = sub_23805BE88();
  __swift_allocate_value_buffer(v0, qword_27DEE9928);
  __swift_project_value_buffer(v0, qword_27DEE9928);
  return sub_23805BE78();
}

char *DDDiscoveryExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DDDiscoveryExtensionConfiguration();
  (*(v5 + 16))(v8, v2, a1);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  result = DDDiscoveryExtensionConfiguration.init(discoveryExtension:)(v8);
  *a2 = v12;
  return result;
}

uint64_t DDDiscoveryExtensionConfiguration.__allocating_init(discoveryExtension:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DDDiscoveryExtensionConfiguration.init(discoveryExtension:)(a1);
  return v5;
}

id sub_2380597C8(uint64_t a1)
{
  v2 = *MEMORY[0x277D85000] & *v1;
  *(v1 + qword_27DEE9A20) = a1;
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DDDiscoveryExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v6, sel_init, v4, v5);
}

void sub_238059878(void *a1)
{
  v1 = a1;
  sub_23805984C();
}

void sub_2380598EC(void *a1)
{
  v1 = a1;
  sub_2380598C0();
}

void sub_23805996C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_238059940(v4);
}

void sub_2380599D4(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_23805B18C();
}

id sub_238059A3C()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DDDiscoveryExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_238059AD4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_238059AF4(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

char *DDDiscoveryExtensionConfiguration.init(discoveryExtension:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  *&v1[*(*v1 + 112)] = 0;
  *&v1[*(*v1 + 120)] = 0;
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v5 = sub_23805BE88();
  __swift_project_value_buffer(v5, qword_27DEE9928);
  v6 = sub_23805BE68();
  v7 = sub_23805BEF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238054000, v6, v7, "DD config init", v8, 2u);
    MEMORY[0x2383E6AB0](v8, -1, -1);
  }

  *(v2 + 2) = -1;
  (*(*(*(v4 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238059CE4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v5 = sub_23805BE88();
  __swift_project_value_buffer(v5, qword_27DEE9928);
  v6 = a1;
  v7 = sub_23805BE68();
  v8 = sub_23805BF18();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&dword_238054000, v7, v8, "XPC connection started: PID %d", v9, 8u);
    MEMORY[0x2383E6AB0](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v10 = *(v1 + *(*v1 + 120));
  if (v10)
  {
    v11 = v6;
    v12 = v10;
    v13 = sub_23805BE68();
    v14 = sub_23805BF18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = [v12 processIdentifier];
      *(v15 + 8) = 1024;
      *(v15 + 10) = [v11 processIdentifier];

      _os_log_impl(&dword_238054000, v13, v14, "XPC connection replacing: PID %d -> PID %d", v15, 0xEu);
      MEMORY[0x2383E6AB0](v15, -1, -1);
    }

    else
    {

      v13 = v11;
    }

    [v12 invalidate];
    v16 = *(*v2 + 120);
    v17 = *(v2 + v16);
    *(v2 + v16) = 0;
  }

  v18 = *(*v2 + 120);
  v19 = *(v2 + v18);
  *(v2 + v18) = v6;
  v20 = v6;

  v21 = objc_opt_self();
  v22 = [v21 interfaceWithProtocol_];
  [v20 setExportedInterface:v22];

  v33.val[0] = *(v4 + 80);
  v33.val[1] = v33.val[0];
  v23 = v32;
  vst2q_f64(v23, v33);
  v24 = type metadata accessor for DDDiscoveryExtensionConfiguration.ExportedObject();

  v25 = objc_allocWithZone(v24);
  v26 = sub_2380597C8(v2);
  [v20 setExportedObject:v26];

  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v20;
  v32[4] = sub_23805B214;
  v32[5] = v27;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_23805A118;
  v32[3] = &block_descriptor;
  v28 = _Block_copy(v32);
  v29 = v20;

  [v29 setInvalidationHandler:v28];
  _Block_release(v28);
  v30 = [v21 interfaceWithProtocol_];
  [v29 setRemoteObjectInterface:v30];

  [v29 resume];
  return 1;
}

uint64_t sub_23805A118(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23805A15C(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v5 = sub_23805BE88();
  __swift_project_value_buffer(v5, qword_27DEE9928);
  v6 = a1;
  v7 = sub_23805BE68();
  v8 = sub_23805BF18();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&dword_238054000, v7, v8, "XPC connection ended: PID %d", v9, 8u);
    MEMORY[0x2383E6AB0](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v10 = *v2;
  v11 = *(v2 + *(*v2 + 112));
  if (v11)
  {
    v12 = *(*v2 + 104);
    v14 = v4 + 80;
    v13 = *(v4 + 80);
    v15 = *(*(v14 + 8) + 24);
    v16 = v11;
    v15();
    [v16 invalidate];

    v10 = *v2;
  }

  v17 = *(v10 + 112);
  v18 = *(v2 + v17);
  *(v2 + v17) = 0;

  v19 = *(*v2 + 120);
  v20 = *(v2 + v19);
  *(v2 + v19) = 0;

  result = v2[2];
  if (result != -1)
  {

    return MEMORY[0x282204FA0]();
  }

  return result;
}

void sub_23805A3B0()
{
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v1 = sub_23805BE88();
  __swift_project_value_buffer(v1, qword_27DEE9928);
  v2 = sub_23805BE68();
  v3 = sub_23805BF18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238054000, v2, v3, "XPC consume sandbox extension token", v4, 2u);
    MEMORY[0x2383E6AB0](v4, -1, -1);
  }

  v5 = sandbox_extension_consume();
  *(v0 + 16) = v5;
  oslog = sub_23805BE68();
  if (v5 == -1)
  {
    v6 = sub_23805BF08();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "XPC consume sandbox token failed";
  }

  else
  {
    v6 = sub_23805BF18();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "XPC consume sandbox token success";
  }

  _os_log_impl(&dword_238054000, oslog, v6, v8, v7, 2u);
  MEMORY[0x2383E6AB0](v7, -1, -1);
LABEL_11:
}

void sub_23805A574()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v3 = sub_23805BE88();
  __swift_project_value_buffer(v3, qword_27DEE9928);
  v4 = sub_23805BE68();
  v5 = sub_23805BF18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238054000, v4, v5, "XPC start discovery", v6, 2u);
    MEMORY[0x2383E6AB0](v6, -1, -1);
  }

  [*(v1 + *(*v1 + 112)) invalidate];
  v7 = [objc_allocWithZone(DDDiscoverySession) init];
  v8 = *(*v1 + 112);
  v9 = *(v1 + v8);
  *(v1 + v8) = v7;
  v10 = v7;

  v13[4] = sub_23805B4C8;
  v13[5] = v1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23805A9AC;
  v13[3] = &block_descriptor_6;
  v11 = _Block_copy(v13);

  [v10 setEventHandler_];
  _Block_release(v11);
  v12 = *(*v1 + 104);
  (*(*(v2 + 88) + 16))(v10, *(v2 + 80));
}

void sub_23805A7B8(void *a1, uint64_t a2)
{
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v4 = sub_23805BE88();
  __swift_project_value_buffer(v4, qword_27DEE9928);
  v5 = a1;
  v6 = sub_23805BE68();
  v7 = sub_23805BF18();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_238054000, v6, v7, "XPC report event: %@", v8, 0xCu);
    sub_23805B460(v9);
    MEMORY[0x2383E6AB0](v9, -1, -1);
    MEMORY[0x2383E6AB0](v8, -1, -1);
  }

  v11 = *(a2 + *(*a2 + 120));
  if (v11)
  {
    v12 = [v11 remoteObjectProxy];
    sub_23805BF28();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE9AB0, &qword_23805D258);
    if (swift_dynamicCast())
    {
      v13 = [v5 createDADeviceEvent];
      [v14 reportEvent_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_23805A9AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23805AA14(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27DEE98B0 != -1)
  {
    swift_once();
  }

  v5 = sub_23805BE88();
  __swift_project_value_buffer(v5, qword_27DEE9928);
  v6 = a1;
  v7 = sub_23805BE68();
  v8 = sub_23805BF18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_238054000, v7, v8, "XPC didReceiveDeviceChangedEvent %@", v9, 0xCu);
    sub_23805B460(v10);
    MEMORY[0x2383E6AB0](v10, -1, -1);
    MEMORY[0x2383E6AB0](v9, -1, -1);
  }

  v12 = [v6 device];
  v13 = sub_23805AE18(v12);

  if (v13)
  {
    v21 = [objc_allocWithZone(DDDeviceEvent) initWithEventType:42 device:v13];

    if (v21)
    {
      v14 = v6;
      v15 = sub_23805BE68();
      v16 = sub_23805BF18();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_238054000, v15, v16, "XPC didReceiveDeviceChangedEvent converted to DDEvent %@", v17, 0xCu);
        sub_23805B460(v18);
        MEMORY[0x2383E6AB0](v18, -1, -1);
        MEMORY[0x2383E6AB0](v17, -1, -1);
      }

      v20 = *(*v2 + 104);
      (*(*(v4 + 88) + 32))(v21, *(v4 + 80));
    }
  }
}

uint64_t DDDiscoveryExtensionConfiguration.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t DDDiscoveryExtensionConfiguration.__deallocating_deinit()
{
  DDDiscoveryExtensionConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23805ADF0(void *a1)
{
  v2 = *v1;
  sub_238059CE4(a1);
  return 1;
}

id sub_23805AE18(void *a1)
{
  v2 = sub_23805BE28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23805BE58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 name];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [a1 type];
  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    v27 = v3;
    v28 = v2;
    v17 = [a1 protocolType];
    sub_23805BE48();

    v18 = objc_allocWithZone(DDDevice);
    v19 = sub_23805BE38();
    v20 = [v18 initWithDisplayName:v13 category:v14 protocolType:v19 identifier:v16];

    (*(v8 + 8))(v11, v7);
    v21 = [a1 bluetoothIdentifier];
    if (v21)
    {
      v22 = v21;
      sub_23805BE18();

      v23 = sub_23805BE08();
      (*(v27 + 8))(v6, v28);
    }

    else
    {
      v23 = 0;
    }

    [v20 setBluetoothIdentifier_];

    [v20 setState_];
    [v20 setSupportsGrouping_];
    [v20 setMediaPlaybackState_];
    v24 = [a1 mediaContentTitle];
    [v20 setMediaContentTitle_];

    v25 = [a1 mediaContentArtistName];
    [v20 setMediaContentSubtitle_];
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_23805B1D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23805B214()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_23805A15C(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23805B254(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23805B2CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23805B418(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DDDiscoveryExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_23805B460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE9AA8, &unk_23805D248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}