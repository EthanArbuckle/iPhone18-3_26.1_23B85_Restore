__CFString *RKStringFromRoutineSituation(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @".sleep(.wakeup)";
  }

  else
  {
    return off_278B613E0[a1 - 1];
  }
}

uint64_t static RelevantContext.date(_:priority:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v18 - v7;
  v9 = sub_23A85F788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  (*(v10 + 56))(v8, 1, 1, v9);
  if (a2 >= 3)
  {
    v18[1] = a2;
    result = sub_23A85F7F8();
    __break(1u);
  }

  else
  {
    v14 = sub_23A85F778();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_23A85F778();
      (*(v10 + 8))(v8, v9);
    }

    v16 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v14 endDate:v15 priority:a2 + 1];

    result = (*(v10 + 8))(v13, v9);
    *a3 = v16;
  }

  return result;
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

uint64_t static RelevantContext.date(from:to:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v21 - v9;
  v11 = sub_23A85F788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, a1, v11);
  v16(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  if (a3 >= 3)
  {
    v21[1] = a3;
    result = sub_23A85F7F8();
    __break(1u);
  }

  else
  {
    v17 = sub_23A85F778();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_23A85F778();
      (*(v12 + 8))(v10, v11);
    }

    v19 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v17 endDate:v18 priority:a3 + 1];

    result = (*(v12 + 8))(v15, v11);
    *a4 = v19;
  }

  return result;
}

unint64_t RelevantContext.Priority.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23A85D310()
{
  result = qword_27DFAC810;
  if (!qword_27DFAC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC810);
  }

  return result;
}

uint64_t sub_23A85D364()
{
  v1 = *v0;
  sub_23A85F808();
  MEMORY[0x23EE8D970](v1);
  return sub_23A85F828();
}

uint64_t sub_23A85D3D8()
{
  v1 = *v0;
  sub_23A85F808();
  MEMORY[0x23EE8D970](v1);
  return sub_23A85F828();
}

uint64_t *sub_23A85D41C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static RelevantContext.date(_:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v20 - v7;
  v9 = sub_23A85F788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  (*(v10 + 16))(v13, a1, v9);
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = qword_23A860460[v14];
  v16 = sub_23A85F778();
  v17 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v17 = sub_23A85F778();
    (*(v10 + 8))(v8, v9);
  }

  v18 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v16 endDate:v17 priority:v15];

  result = (*(v10 + 8))(v13, v9);
  *a3 = v18;
  return result;
}

uint64_t static RelevantContext.date(interval:kind:)@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v18 - v5;
  v7 = sub_23A85F788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_23A85F768();
  sub_23A85F758();
  (*(v8 + 56))(v6, 0, 1, v7);
  v13 = qword_23A860460[v12];
  v14 = sub_23A85F778();
  v15 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v15 = sub_23A85F778();
    (*(v8 + 8))(v6, v7);
  }

  v16 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v14 endDate:v15 priority:v13];

  result = (*(v8 + 8))(v11, v7);
  *a2 = v16;
  return result;
}

uint64_t static RelevantContext.date(range:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
  v9 = sub_23A85F788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *(v10 + 16);
  v15(v13, a1, v9);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC818, &qword_23A8603B0);
  v15(v8, a1 + *(v16 + 36), v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v17 = qword_23A860460[v14];
  v18 = sub_23A85F778();
  v19 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v19 = sub_23A85F778();
    (*(v10 + 8))(v8, v9);
  }

  v20 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v18 endDate:v19 priority:v17];

  result = (*(v10 + 8))(v13, v9);
  *a3 = v20;
  return result;
}

uint64_t sub_23A85DA94()
{
  v1 = *v0;
  sub_23A85F808();
  MEMORY[0x23EE8D970](v1);
  return sub_23A85F828();
}

uint64_t sub_23A85DADC()
{
  v1 = *v0;
  sub_23A85F808();
  MEMORY[0x23EE8D970](v1);
  return sub_23A85F828();
}

uint64_t sub_23A85DB78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A85DC08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A85DCD0()
{
  result = qword_27DFAC820;
  if (!qword_27DFAC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC820);
  }

  return result;
}

id RelevantContext.lnContext.getter()
{
  v1 = [*v0 toLnContext];

  return v1;
}

void static RelevantContext.date(_:)(void *a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v10 - v3;
  v5 = sub_23A85F788();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = sub_23A85F778();
  v8 = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v8 = sub_23A85F778();
    (*(v6 + 8))(v4, v5);
  }

  v9 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v7 endDate:v8];

  *a1 = v9;
}

void static RelevantContext.date(from:to:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAC808, &qword_23A860490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = sub_23A85F788();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_23A85F778();
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v10 = sub_23A85F778();
    (*(v8 + 8))(v6, v7);
  }

  v11 = [objc_allocWithZone(RKDateRelevantContext) initWithStartDate:v9 endDate:v10];

  *a2 = v11;
}

id static RelevantContext.location(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(RKLocationRelevantContext) initWithRegion_];
  *a2 = result;
  return result;
}

id static RelevantContext.location(inferred:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a2 = result;
  return result;
}

id static RelevantContext.sleep(_:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a2 = result;
  return result;
}

id static RelevantContext.fitness(_:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = 9;
  }

  else
  {
    v3 = 8;
  }

  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a2 = result;
  return result;
}

id static RelevantContext.hardware(headphones:)@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a1 = result;
  return result;
}

id static RelevantContext.ambientAudio(_:)@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a1 = result;
  return result;
}

uint64_t sub_23A85E230()
{
  sub_23A85F808();
  MEMORY[0x23EE8D970](0);
  return sub_23A85F828();
}

uint64_t sub_23A85E274()
{
  sub_23A85F808();
  MEMORY[0x23EE8D970](0);
  return sub_23A85F828();
}

id static RelevantContext.home(_:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a2 = result;
  return result;
}

void static RelevantContext.nearbyAudioDevice(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (v5 != 2)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_23A85F798();
LABEL_6:
  v8 = [objc_allocWithZone(RKNearbyAudioDeviceRelevantContext) initWithDeviceIdentifier:v7 isPlaying:v6];

  *a2 = v8;
}

AppIntents::RelevantContext::NearbyAudioDeviceCondition __swiftcall RelevantContext.NearbyAudioDeviceCondition.init(deviceIdentifier:isPlaying:)(AppIntents::RelevantContext::NearbyAudioDeviceCondition deviceIdentifier, Swift::Bool_optional isPlaying)
{
  *v2 = deviceIdentifier.deviceIdentifier;
  *(v2 + 16) = isPlaying;
  deviceIdentifier.isPlaying = isPlaying;
  return deviceIdentifier;
}

uint64_t RelevantContext.NearbyAudioDeviceCondition.deviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id static RelevantContext.solar(_:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = 15;
  }

  else
  {
    v3 = 14;
  }

  result = [objc_allocWithZone(RKDailyRoutineRelevantContext) initWithSituation_];
  *a2 = result;
  return result;
}

void static RelevantContext.regulatoryDomain(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4, v4);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A85F7C8();
  v8 = objc_allocWithZone(RKRegulatoryDomainRelevantContext);
  v9 = sub_23A85F7B8();

  v10 = [v8 initWithCountryCodes_];

  *a2 = v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void static RelevantContext.group(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    v4 = a1[1];

    v5 = sub_23A85F798();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(RKMutualExclusionGroupRelevantContext) initWithGroupIdentifier_];

  *a2 = v6;
}

uint64_t static RelevantContext.Group.named(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

id static RelevantContext.fallback.getter@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(RKFallbackRelevantContext) init];
  *a1 = result;
  return result;
}

uint64_t _s10AppIntents15RelevantContextV12RelevanceKitE16LocationCategoryV2eeoiySbAF_AFtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "GEOPOICategoryBeach";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v2 == 1)
  {
    v6 = "GEOPOICategoryBeach";
  }

  else
  {
    v6 = "GEOPOICategoryCafe";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "(.sunrise)";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "GEOPOICategoryCafe";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "(.sunrise)";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23A85F7E8();
  }

  return v11 & 1;
}

uint64_t sub_23A85E778()
{
  v1 = *v0;
  sub_23A85F808();
  sub_23A85F7A8();

  return sub_23A85F828();
}

uint64_t sub_23A85E814()
{
  *v0;
  *v0;
  sub_23A85F7A8();
}

uint64_t sub_23A85E89C()
{
  v1 = *v0;
  sub_23A85F808();
  sub_23A85F7A8();

  return sub_23A85F828();
}

uint64_t sub_23A85E934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A85F698();
  *a2 = result;
  return result;
}

void sub_23A85E964(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "GEOPOICategoryBeach";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000018;
    v3 = "GEOPOICategoryCafe";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000013;
    v4 = "(.sunrise)";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void static RelevantContext.location(category:)(_BYTE *a1@<X0>, void *a2@<X8>)
{
  *a1;
  v3 = objc_allocWithZone(RKLocationCategoryRelevantContext);
  v4 = sub_23A85F798();

  v5 = [v3 initWithRawCategory_];

  *a2 = v5;
}

void static RelevantContext.location(rawCategory:)(void *a1@<X8>)
{
  v2 = objc_allocWithZone(RKLocationCategoryRelevantContext);
  v3 = sub_23A85F798();
  v4 = [v2 initWithRawCategory_];

  *a1 = v4;
}

uint64_t sub_23A85EB24(uint64_t *a1, int a2)
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

uint64_t sub_23A85EB6C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A85EC30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A85EC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23A85ED0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A85ED68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23A85EDE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A85EE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23A85EE8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_23A85EEA4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A85EEE4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23A85EF74(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A85F04C(unsigned int *a1, int a2)
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

_WORD *sub_23A85F09C(_WORD *result, int a2, int a3)
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

uint64_t sub_23A85F138(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23A85F1C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A85F288(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23A85F318(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A85F3DC()
{
  result = qword_27DFAC828;
  if (!qword_27DFAC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC828);
  }

  return result;
}

unint64_t sub_23A85F434()
{
  result = qword_27DFAC830;
  if (!qword_27DFAC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC830);
  }

  return result;
}

unint64_t sub_23A85F48C()
{
  result = qword_27DFAC838;
  if (!qword_27DFAC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC838);
  }

  return result;
}

unint64_t sub_23A85F4E4()
{
  result = qword_27DFAC840;
  if (!qword_27DFAC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC840);
  }

  return result;
}

unint64_t sub_23A85F53C()
{
  result = qword_27DFAC848;
  if (!qword_27DFAC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC848);
  }

  return result;
}

unint64_t sub_23A85F594()
{
  result = qword_27DFAC850;
  if (!qword_27DFAC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC850);
  }

  return result;
}

unint64_t sub_23A85F5EC()
{
  result = qword_27DFAC858;
  if (!qword_27DFAC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC858);
  }

  return result;
}

unint64_t sub_23A85F644()
{
  result = qword_27DFAC860;
  if (!qword_27DFAC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAC860);
  }

  return result;
}

uint64_t sub_23A85F698()
{
  v0 = sub_23A85F7D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}